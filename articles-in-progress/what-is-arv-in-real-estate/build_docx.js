const fs = require('fs');
const D = require('docx');
const md = fs.readFileSync('polished-article.md','utf8');

const FONT = 'Calibri', MONO = 'Consolas';
const PAGE = { size: { width: 12240, height: 15840 }, margin: { top: 1440, bottom: 1440, left: 1440, right: 1440 } };

// ---------- inline markdown -> TextRuns ----------
function runs(text, base={}) {
  const out = [];
  const re = /(\*\*[^*]+\*\*|\*[^*]+\*|\[[^\]]+\]\([^)]+\))/g;
  let last = 0, m;
  while ((m = re.exec(text)) !== null) {
    if (m.index > last) out.push(new D.TextRun({ text: text.slice(last, m.index), font: FONT, ...base }));
    const tok = m[0];
    if (tok.startsWith('**')) out.push(new D.TextRun({ text: tok.slice(2,-2), bold: true, font: FONT, ...base }));
    else if (tok.startsWith('*')) out.push(new D.TextRun({ text: tok.slice(1,-1), italics: true, font: FONT, ...base }));
    else {
      const mm = tok.match(/\[([^\]]+)\]\(([^)]+)\)/);
      out.push(new D.ExternalHyperlink({ link: mm[2], children: [new D.TextRun({ text: mm[1], style: 'Hyperlink', font: FONT, ...base })] }));
    }
    last = m.index + tok.length;
  }
  if (last < text.length) out.push(new D.TextRun({ text: text.slice(last), font: FONT, ...base }));
  return out;
}
const para = (text, opts={}) => new D.Paragraph({ children: runs(text, opts.base||{}), spacing: { after: 160 }, ...opts.p });

// ---------- boxes ----------
function box(text, fill, italicCaption) {
  const lines = text.split('\n');
  return new D.Table({
    width: { size: 9360, type: D.WidthType.DXA }, columnWidths: [9360],
    rows: [ new D.TableRow({ children: [ new D.TableCell({
      width: { size: 9360, type: D.WidthType.DXA },
      shading: { type: D.ShadingType.CLEAR, fill },
      margins: { top: 120, bottom: 120, left: 160, right: 160 },
      children: lines.map(l => new D.Paragraph({ children: [ new D.TextRun({ text: l, font: MONO, size: 18 }) ], spacing: { after: 60 } }))
    }) ] }) ]
  });
}
function mdTable(rows, opts={}) {
  const ncol = rows[0].length, w = Math.floor(9360/ncol);
  return new D.Table({
    width: { size: 9360, type: D.WidthType.DXA }, columnWidths: Array(ncol).fill(w),
    rows: rows.map((r, ri) => new D.TableRow({ children: r.map(c => new D.TableCell({
      width: { size: w, type: D.WidthType.DXA },
      shading: ri===0 ? { type: D.ShadingType.CLEAR, fill: 'D9E2F3' } : undefined,
      margins: { top: 80, bottom: 80, left: 120, right: 120 },
      children: [ new D.Paragraph({ children: runs(c, ri===0 ? { bold: true } : {}) }) ]
    })) }))
  });
}

// ---------- parse article ----------
const lines = md.split('\n');
const body = [];
let i = 0, bullets = [];
const flushBullets = () => { bullets.forEach(b => body.push(new D.Paragraph({ children: runs(b), numbering: { reference: 'bul', level: 0 }, spacing: { after: 80 } }))); bullets = []; };

while (i < lines.length) {
  let l = lines[i];
  if (l.startsWith('- ')) { bullets.push(l.slice(2)); i++; continue; }
  flushBullets();
  if (l.trim() === '') { i++; continue; }
  if (l.startsWith('# ')) body.push(new D.Paragraph({ heading: D.HeadingLevel.HEADING_1, children: runs(l.slice(2)), spacing: { after: 240 } }));
  else if (l.startsWith('## ')) body.push(new D.Paragraph({ heading: D.HeadingLevel.HEADING_2, children: runs(l.slice(3)), spacing: { before: 320, after: 160 } }));
  else if (l.startsWith('### ')) body.push(new D.Paragraph({ heading: D.HeadingLevel.HEADING_3, children: runs(l.slice(4)), spacing: { before: 240, after: 120 } }));
  else if (l.startsWith('[SCREENSHOT:')) {
    let block = l; while (!block.trim().endsWith(']')) { i++; block += '\n' + lines[i]; }
    body.push(box(block, 'FFF2CC'));
    body.push(new D.Paragraph({ children: [], spacing: { after: 80 } }));
  }
  else if (l.startsWith('[PROMPT FOR CHATGPT IMAGE GENERATION:')) {
    let block = [l]; while (lines[i].trim() !== ']') { i++; block.push(lines[i]); }
    body.push(box(block.join('\n'), 'DAE8FC'));
    body.push(new D.Paragraph({ children: [], spacing: { after: 80 } }));
  }
  else if (l.startsWith('|')) {
    const tbl = [];
    while (i < lines.length && lines[i].startsWith('|')) {
      const cells = lines[i].split('|').slice(1,-1).map(c => c.trim());
      if (!cells.every(c => /^-+$/.test(c))) tbl.push(cells);
      i++;
    }
    i--;
    body.push(mdTable(tbl));
    body.push(new D.Paragraph({ children: [], spacing: { after: 120 } }));
  }
  else if (/^\*[^*].*\*$/.test(l.trim())) body.push(new D.Paragraph({ children: [ new D.TextRun({ text: l.trim().slice(1,-1), italics: true, font: FONT, size: 20, color: '595959' }) ], spacing: { after: 200 } }));
  else if (l.trim().startsWith('[Get your free site audit')) {
    const mm = l.match(/\[([^\]]+)\]\(([^)]+)\)/);
    body.push(new D.Table({ width: { size: 9360, type: D.WidthType.DXA }, columnWidths: [9360], rows: [ new D.TableRow({ children: [ new D.TableCell({
      width: { size: 9360, type: D.WidthType.DXA }, shading: { type: D.ShadingType.CLEAR, fill: 'F2F2F2' },
      margins: { top: 160, bottom: 160, left: 200, right: 200 },
      children: [ new D.Paragraph({ children: [ new D.ExternalHyperlink({ link: mm[2], children: [ new D.TextRun({ text: mm[1], bold: true, size: 28, font: FONT, style: 'Hyperlink' }) ] }), new D.TextRun({ text: '   (' + mm[2] + ')', font: FONT, size: 18, color: '595959' }) ] }) ]
    }) ] }) ] }));
  }
  else body.push(para(l));
  i++;
}
flushBullets();

// ---------- CTA callout box (finalize Stage 4) ----------
body.push(new D.Paragraph({ children: [], spacing: { after: 160 } }));
body.push(new D.Table({ width: { size: 9360, type: D.WidthType.DXA }, columnWidths: [9360], rows: [ new D.TableRow({ children: [ new D.TableCell({
  width: { size: 9360, type: D.WidthType.DXA }, shading: { type: D.ShadingType.CLEAR, fill: 'F2F2F2' },
  margins: { top: 200, bottom: 200, left: 240, right: 240 },
  children: [
    new D.Paragraph({ children: [ new D.ExternalHyperlink({ link: 'https://www.thebaseo.com/home-cash-buyers-seo/#hero', children: [ new D.TextRun({ text: 'Get your free site audit \u2192', bold: true, size: 28, font: FONT, style: 'Hyperlink' }) ] }) ], spacing: { after: 80 } }),
    new D.Paragraph({ children: [ new D.TextRun({ text: 'https://www.thebaseo.com/home-cash-buyers-seo/#hero', font: FONT, size: 18, color: '595959' }) ] })
  ]
}) ] }) ] }));

// ---------- metadata header ----------
const today = '2026-07-15';
const metaA = mdTable([
  ['Field','Value'],
  ['Article title (H1)','What Is ARV in Real Estate? The Cash Buyer’s Guide to After Repair Value'],
  ['Date finalized', today],
  ['Primary keyword','what is arv in real estate'],
  ['Persona target','B4 (dial B2 in the marketing-budget section)'],
  ['Funnel stage','TOFU'],
  ['Brief type','Tangential'],
  ['Status','Approved for publication — placeholders need human completion'],
]);
const metaB = mdTable([
  ['SEO field','Value','Check'],
  ['Meta title','What Is ARV in Real Estate? The Cash Buyer’s Formula','53 chars (50–60) OK'],
  ['Meta description','What is ARV in real estate? The after repair value formula, the 70% rule, and a worked $300K example cash buyers can run on their next deal.','140 chars (140–160) OK'],
  ['URL slug','what-is-arv-in-real-estate','6 words OK'],
]);
const header = [
  new D.Paragraph({ children: [ new D.TextRun({ text: 'EDITORIAL CONTEXT', bold: true, font: FONT, size: 22, color: '1F3864' }) ], spacing: { after: 120 } }),
  metaA,
  new D.Paragraph({ children: [], spacing: { after: 160 } }),
  new D.Paragraph({ children: [ new D.TextRun({ text: 'SEO METADATA FOR UPLOAD (copy-paste into the CMS)', bold: true, font: FONT, size: 22, color: '7F6000' }) ], spacing: { after: 120 } }),
  metaB,
  new D.Paragraph({ children: [], spacing: { after: 320 } }),
];

const doc = new D.Document({
  numbering: { config: [ { reference: 'bul', levels: [ { level: 0, format: D.LevelFormat.BULLET, text: '•', alignment: D.AlignmentType.LEFT, style: { paragraph: { indent: { left: 720, hanging: 360 } } } } ] } ] },
  styles: { default: { document: { run: { font: FONT, size: 22 } } } },
  sections: [ { properties: { page: PAGE }, children: [...header, ...body] } ],
});
D.Packer.toBuffer(doc).then(buf => { fs.writeFileSync('what-is-arv-in-real-estate.docx', buf); console.log('docx written:', buf.length, 'bytes'); });
