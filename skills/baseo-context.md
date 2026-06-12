# baseo-context

Single source of truth for everything BASEO (TheBaseo) editorial. Every skill in the creation, review, and finalization pipelines reads this file at the start of its execution. This file does NOT define voice or writing rules — those live in `baseo-style-guide`. It defines **who** BASEO content serves, **what** BASEO is and does, and **which** rules are universal across all editorial work.

This file is a reference, not an invocable skill. Other skills `Read` it.

---

## How skills should use this file

- **Creation skills** (brief-enrich, research, outline, draft, self-check) read this to know personas, services, approved claims, banned phrases, funnel rules.
- **Review skills** (content-review, on-page-audit) read this to evaluate against the same standard.
- **Finalize skill** reads this for canonical URLs and CTA conventions.

When in doubt, this file wins over anything else.

---

## What BASEO is

BASEO (TheBaseo) is an SEO + AI Search (AEO) agency that works **exclusively with cash home buyers** — "we buy houses" real estate investors in the USA and Canada who buy, hold, flip, wholesale, and work foreclosures, probate, and inherited properties. BASEO builds the organic lead channel for these operators: technical foundation, programmatic city landing pages, seller-situation content, AI search optimization, editorial backlinks, and lead-focused reporting.

The blog this system feeds is **thebaseo.com's own blog** (the Astro frontend at www.thebaseo.com, backed by the WordPress REST API at cms.thebaseo.com). The reader is the **investor** (BASEO's prospect), NOT the motivated seller. Content that speaks to homeowners trying to sell their house belongs on client sites, never on the BASEO blog. Any article addressed to a seller is automatically out of scope.

BASEO is **NOT**: a lead-selling marketplace (no pay-per-lead), a web design shop, a CRM or follow-up software vendor, a direct mail house, a coaching/guru program, a "full-service digital marketing agency," or an SEO tool. BASEO can write ABOUT those topics (tangential education), but any article claiming BASEO sells those services is fabrication.

BASEO DOES offer PPC management for cash home buyers, positioned as a complement to organic, never as the long-term core. The editorial narrative stays organic-first ("PPC rents attention, SEO builds equity"); PPC content frames BASEO as the team that runs paid efficiently WHILE the organic asset compounds, and that cuts paid spend as organic takes over (the public FAQ position: most clients cut PPC 30–50% by months 6–9).

Positioning anchors (safe to state in editorial):

- Built only for cash home buyers. One niche. No dentists, no plumbers, no generic SMBs.
- Month-to-month. No 12-month contracts, ever. 30 days' written notice.
- Audit-first: free written diagnostic audit before any monthly fee. No call required.
- Deliverables guarantee in writing: miss a SOW deliverable, that month is refunded.
- Market exclusivity: one client per core metro.
- Clients own everything: content, links, data, reports.
- No ranking guarantees, ever. Google itself says no one can guarantee rankings. BASEO guarantees the work, not the position.

---

## Reader profile

The BASEO reader is a real estate investor who runs a cash home buying operation. Demographics: predominantly male (85–90%), age 30–50, full-time operator, team of 1–5 where the owner IS the decision-maker, marketer, and closer. There is no marketing department and no CMO. Heavy concentration in Florida, Texas, Oklahoma, Indiana, California, plus mid-to-large metros across the US and Ontario.

They identify as **investors**, not marketers and not "business owners." They measure everything in deals, leads, cost per lead, and cost per deal. They learn by podcast and YouTube (BiggerPockets, Carrot, REIA groups), not by reading long academic articles. SEO literacy is low-to-moderate: they understand "ranking on Google" and "leads from search" but not domain authority, schema, or content architecture. Most run a Carrot site they believe is an SEO strategy (it isn't — it's a template).

The defining emotional state: **frustration-fueled urgency**. They've been burned by at least one agency. They watch money leave (agencies, rising PPC) while competitors they don't respect outrank them. They're motivated more by what they're losing than by what they could gain.

Empathy framing: assume they're exhausted by agencies and skeptical of every marketing pitch, not unfamiliar with their own business. They know deals. They don't know SEO mechanics, and they don't want to — they want the phone to ring.

---

## Personas

Articles must speak to at least one of the five personas below. Dual-audience is acceptable. None of these → downgrade in review.

### B1 — The Burned Investor

- Paid $2,000–$6,000/month to one or more SEO agencies with minimal work delivered: no pages created, no tracking installed, reports full of impressions and zero leads.
- Evaluates every new agency through the lens of his worst experience. Demands proof over promises.
- Asks: "What exactly will you do each month?" "Show me results for someone like me." "What happens if it doesn't work?"
- **Reads**: how to audit what your SEO agency actually did, what a real monthly deliverable list looks like, agency red flags, case studies with real numbers, why traffic dropped, what reports should contain (the word "leads").
- **Does not read**: intro-to-SEO explainers, anything that sounds like an agency pitch, jargon-heavy technical content with no translation.

### B2 — The PPC-Dependent Operator

- Spends $1,500–$5,000+/month on Google Ads. CPC for "sell my house fast" keywords rising every year; $25–$120 per click depending on market, $80+ in CA/NY.
- Knows PPC works but sees the math worsening: $250+ per lead, thousands per deal. The moment he stops paying, leads stop.
- **Reads**: deal math comparisons (PPC vs organic cost per deal), how SEO compounds, when and how to shift budget from paid to organic, hybrid PPC+SEO strategies.
- **Does not read**: "kill your PPC today" absolutism (he knows better), branding/awareness content.

### B3 — The Invisible Veteran

- 10–15+ years in the business. Closes 20–50+ deals a year through referrals, direct mail, relationships, hustle. Dominates offline, invisible online.
- Proud, established, has budget. Insecure about exactly one thing: sellers in his own city can't find him on Google, and younger competitors with half his deal volume rank above him.
- **Reads**: competitor-gap content ("they're not smarter, they got there first"), identity-driven angles ("you've closed 200 deals and zero sellers found you online"), what offline dominance is worth online, GBP and reputation content.
- **Does not read**: beginner content, hype, anything that talks down to him.

### B4 — The Scaling Wholesaler / Flipper

- 1–5 years in. Has a Carrot site (or similar template), a few city pages, DIY SEO that's plateaued. Wants to go from 2–3 deals/month to 5–10.
- Active in BiggerPockets, REI Facebook groups, podcasts. Most receptive to education and most likely to try DIY first.
- **Reads**: how investor SEO actually works (city pages → situation pages → authority), Carrot limitations and fixes, content architecture, what to do in months 1–6, build-vs-buy decisions.
- **Does not read**: enterprise-scale content, pure agency pitches without education.

### B5 — The AEO First-Mover

- Any of the above operators, distinguished by the trigger: he heard ChatGPT is sending leads to investors (the "26 of 45 leads in one week" story travels fast in REI circles) and realized he has zero AI search presence.
- Intrigued but wary of "shiny new thing" pitches. Wants to understand the channel before spending.
- **Reads**: how AI search sends motivated seller leads, AI Overviews / ChatGPT / Perplexity citation mechanics, why AI traffic shows as "Direct" in GA4, the first-mover window, intent compression.
- **Does not read**: generic "AI will change everything" think pieces with no mechanism and no numbers.

**Editorial weight**: B1 and B2 carry the primary weight (they convert fastest — they're already spending money and unhappy about it). B3 and B4 are secondary. B5 is a framing layer that can attach to any persona; target it explicitly in roughly 15–25% of the calendar while the AI-search window is a differentiator.

---

## Anti-personas

If an article reads like it's written for any of these, downgrade or return for revision:

- **Motivated sellers / homeowners** ("how to sell your inherited house fast") — this is client-site content, never BASEO blog content. Automatic return.
- Real estate agents / Realtors / brokerages doing retail listings.
- iBuyers and corporate players (Opendoor, Offerpad) and franchise corporate teams with in-house marketing departments.
- Generic small businesses (the article would work identically for a dentist or plumber).
- Investors in other niches with no cash-buying operation (pure note investors, syndicators, STR hosts).
- SEO professionals / agencies shopping for techniques (they may read us, but we don't write FOR them).
- Lifetime-deal hunters and $200/month-budget operators looking for a cheap hack instead of a channel.
- DIY-forever investors with zero marketing budget (educating them is fine tangentially; targeting them as the primary reader is not).

---

## Service catalog with aliases

Every service BASEO **currently** offers. Match writer phrases against canonical names using these aliases. If a writer claims a capability NOT on this list, check the "Out-of-scope services" section below — if it lives there, editorial content can discuss the topic but must NEVER claim BASEO delivers it. If it's in neither place, it is service fabrication and an automatic return for revision.

| Canonical name | What it does | Timeline | Aliases |
|---|---|---|---|
| **Diagnostic Audit** | Free written audit of the prospect's site, competitors, and market. The 3 biggest issues, competitor keyword gaps, deal-math projection. Delivered as a document in ~2 business days. No call required. Yours to keep. | Week 1, before any fee | free site audit, free audit, diagnostic, site review, written audit, auditoría gratuita |
| **Technical SEO + Foundation** | Call tracking, form tracking, GA4, Search Console, schema markup, template-content rewrites, Google Business Profile rebuild. The base layer that makes leads measurable and the site readable by Google. | Months 1–2 | foundation phase, technical setup, tracking setup, GBP rebuild, technical SEO |
| **Programmatic City Pages** | Original landing pages for every city/market the investor buys in. Unique local content per market — not template duplicates. | Months 2–6, ongoing | city landing pages, location pages, market pages, programmatic SEO, city page buildout |
| **Seller-Situation Content** | Pillar pages targeting the high-intent searches motivated sellers type under stress: probate, foreclosure, divorce, inherited property, fire damage, problem tenants. | Months 2–6, ongoing | situation pages, pillar pages, probate/foreclosure/divorce/inherited content, distress-situation content |
| **AI Search Optimization (AEO)** | Content formatted for citation by ChatGPT, Perplexity, Claude, and Google AI Overviews: Q&A structure, citation-friendly schema, entity optimization. Includes AI-citation tracking per market, AI referral attribution (recovering "Direct"-mislabeled traffic in GA4), and weekly AI Overview tracking per keyword. | From month 3, ongoing | AEO, AI search optimization, GEO, LLM optimization, ChatGPT optimization, AI Overviews optimization, AI citation tracking |
| **Editorial Backlinks + Local Authority** | Real editorial links and citations from local chambers, REIAs, news outlets, and relevant directories. No link farms, no PBNs. | Ongoing from month 3 | link building, local citations, editorial links, authority building, digital PR |
| **Lead-Focused Reporting** | Monthly report built around business numbers: leads with phone numbers, organic cost per lead trend, pages published, AI citations, next month's plan in plain English. Includes lead-intent classification (scoring form fills against motivated-seller signals). | Monthly, always-on | monthly reporting, lead reporting, lead scoring, lead-intent classification, transparent reporting |
| **PPC Management** | Google Ads management for motivated-seller campaigns, run as a complement to the organic program: campaign structure, keyword/negative management, tracking-integrated lead reporting (same CPL/cost-per-deal lens as organic). Positioned to shrink as organic compounds, not to grow forever. | Optional, alongside the organic engagement | PPC, Google Ads management, paid search, ad management, paid leads, SEM |

**Always-true delivery facts** (safe to state): every account is market-exclusive; every month has a written Scope of Work; reporting counts leads, not impressions; AI tracking runs on accounts by default.

---

## Out-of-scope services (BASEO does NOT sell these — never claim otherwise)

Editorial content may TEACH these topics (they're real parts of the investor's world and great tangential material), but must never state or imply that BASEO provides them:

- Direct mail campaigns
- Cold calling / SMS / skip tracing services
- CRM setup or follow-up automation services (we can educate about speed-to-lead; we don't sell the system)
- Web design / site rebuilds as a standalone service
- Social media management
- Lead selling (pay-per-lead)
- Coaching, courses, or masterminds

If a writer frames any of these as a BASEO deliverable → treat exactly like feature fabrication: automatic return.

---

## Pricing and package disclosure policy

**INTERNAL CONTEXT — DO NOT WRITE ABOUT PACKAGES OR PRICES IN ARTICLES.**

The breakdown below exists so writers and skills understand the commercial structure. It must NEVER appear in editorial output.

| Package (client-facing) | Price | Notes |
|---|---|---|
| Foundation | $2,500/month | Entry package |
| Growth | $4,500/month | Recommended / most common |
| Domination | $7,500/month | Multi-market operators |
| Setup fee | $1,500 one-time | Waived on 6-month commitment |

### Output rules

- NEVER quote a BASEO price in editorial content. ("$4,500/month" may appear ONLY inside an approved case study claim describing what the client was paying — see Approved claims library — never as a price list.)
- NEVER name a package ("Foundation," "Growth," "Domination") in editorial content.
- NEVER say a deliverable "belongs to" or "is included in" a specific package.
- When the article needs to address cost, use the public framing: "pricing is custom to your market and included in your free audit" and the deal-math frame ("one deal typically covers many months of the investment").
- Generic market ranges ARE allowed when sourced ("investor SEO retainers typically run $2,000–$6,000/month across the industry") because they describe the market, not BASEO's price list.

**Enforcement**: one package or price disclosure in a draft → automatic return for revision. Two or more → automatic reject.

---

## Claims and proof policy + Approved claims library

This is the agency-world equivalent of a feature catalog: **what results the writer may claim**. The #1 credibility risk for an agency blog is invented or inflated proof. Rules:

1. **First-party claims** (BASEO client results) may ONLY come from the Approved claims library below. No rounding up, no extrapolating, no inventing composite clients.
2. **External stats** must carry a verifiable source URL found or confirmed by `baseo-research`. The numbers listed under "External stat candidates" are pre-cleared TOPICS, but the draft must cite the actual source.
3. **Never promise outcomes**: no "we'll get you to page 1," no "guaranteed 30 leads," no specific ranking or timeline promises. Describing what happened for a past client is proof; promising it will happen for the reader is a banned guarantee.

### Approved first-party claims (cite as "BASEO client data" / the Florida case study)

| Claim | Detail | Notes |
|---|---|---|
| 3 → 28 motivated seller leads/month in 9 months | Florida cash buyer, same market, no extra ad spend | Flagship case study number |
| 97% organic traffic drop reversed within 9 months | Same client: traffic had fallen 10,000 → 284 under previous agency | |
| $161 per organic lead from Google, declining monthly | Same client, month 9 | |
| 3 organic deals closed in month 9, $54K combined profit | Against a $4,500/month invoice | This is the ONLY context where the $4,500 figure may appear |
| Previous agency: 14 months, $4,500/mo, 0 lead numbers in reports | Same client's before-state | |
| 430% increase in GBP direction requests | Client result | |
| Organic session increases of 102%, 438%, 121% | Across client accounts | |
| 0 clients ever placed on a 12-month contract | Company-wide fact | |
| Month 5: 12 organic leads, first 3 organic deals closed | Florida case study timeline | |

⚠️ The marketing site uses both "3 → 28" and "3 → 42" in different sections. **Standardize on 3 → 28 for the month-9 monthly figure** unless Eddie confirms otherwise; flag any draft using 42.

### External stat candidates (pre-cleared topics — research must attach the source)

- ChatGPT visitors convert at 15.9% vs 1.76% for Google organic (9x) — AI search conversion.
- One Carrot user received 26 of 45 weekly leads from ChatGPT — AI search volume anecdote (Carrot).
- AI referral traffic grew 527% YoY; LLMs cite 2–7 domains per answer; only 16% of brands measure AI search.
- "Sell my house fast" CPC rose ~36% from 2023 to 2024; clicks run $25–$120 by market.
- Google's March 2024 update cut ~45% of low-quality content and introduced the Scaled Content Abuse policy (hits template/duplicate city pages).
- 30%+ of top-ranking "we buy houses" sites use near-identical Carrot template content.
- SEO vs PPC for REI: cost per lead $15–$30 (mature organic) vs $50–$300 (paid); cost per deal $500–$2,000 vs $2,500–$7,500; SEO ROAS ~15.1x vs PPC ~1.4x; real estate SEO ROI ~1,389%.
- Programmatic scale: 19,500+ incorporated US cities, 3,144 counties, 41,552 ZIP codes.
- Deal economics: wholesale assignment fee national average $10,000–$13,000; median flip gross profit $65,981 (2025).
- Conversion/follow-up: multi-step forms convert 86% better; responding within 5 minutes converts up to 900% more; 93.7% of investors don't follow up properly; ~80% of motivated-seller transactions happen after the 5th contact; visitor-to-lead rates of 7–20% on optimized investor sites.

If `baseo-research` cannot find a credible source for an external stat, the draft must drop the stat — never publish it sourceless.

---

## Pain → service → angle map

Every viable BASEO article addresses a real investor pain that maps to a real, currently offered BASEO service. Articles that address pains NOT on this list, or that name a pain without the matching service existing, are misaligned.

### Active

| Pain | BASEO service | Example on-ICP angle |
|---|---|---|
| "Paying $X,000/month for SEO and the reports don't include the word 'leads'" | Lead-Focused Reporting · Diagnostic Audit | "What your SEO agency's report should show you (and what it's hiding)" |
| "My Carrot site looks identical to 30% of my competitors" | Programmatic City Pages · Technical SEO + Foundation | "Why your Carrot site isn't ranking — and what to replace the template with" |
| "A competitor I don't respect outranks me for my main keyword" | Programmatic City Pages · Editorial Backlinks | "Your competitor ranks #1 in your city. They're not smarter — here's what they built" |
| "I'm invisible online despite closing deals every week" | Technical SEO + Foundation · Programmatic City Pages | "Offline dominance, online invisibility: the veteran investor's SEO playbook" |
| "PPC costs keep rising; cost per deal math is breaking" | PPC Management (efficiency now) + full organic program (the long-term fix) | "PPC costs you $7,500 per deal. Organic costs $500. Same leads, different math" |
| "My ads burn budget on junk clicks; my PPC manager doesn't know REI" | PPC Management | "What a motivated-seller PPC account looks like when someone who knows the niche runs it" |
| "ChatGPT is sending leads to competitors and I'm not even in the answer" | AI Search Optimization (AEO) | "How motivated sellers find cash buyers through ChatGPT (and how to be the one cited)" |
| "Motivated sellers in probate/foreclosure/divorce can't find me" | Seller-Situation Content | "The 5 seller-situation pages every cash buyer's site needs" |
| "I don't trust agencies — I've been burned" | Diagnostic Audit · deliverables guarantee · month-to-month | "How to vet an SEO agency after you've been burned: the 7 questions that expose them" |

### Tangential topics (authority / awareness)

Articles can target topics in BASEO's domain where BASEO is NOT the protagonist. These build authority with the ICP, capture awareness traffic, and earn trust through education.

**Criteria — what counts as tangential**:

1. **Topic in domain**: SEO, PPC, AI search, lead generation economics, Carrot ecosystem, Google updates, GBP, motivated-seller search behavior, investor marketing channels (direct mail, cold calling — as education only), follow-up/speed-to-lead, REI deal economics as they relate to marketing.
2. **Persona match exists**: at least one of B1–B5 would naturally read it.
3. **BASEO connection articulable**: the editor can answer "why does this serve our ICP?" with a specific answer. Acceptable: "teaches B2 the deal math that makes our core offer obvious." Unacceptable: "it's marketing content."

**Hard prohibition — applies to ALL tangential articles**: never claim BASEO sells an out-of-scope service. Teaching speed-to-lead follow-up is fine; claiming BASEO sets up your CRM is fabrication.

**The key distinction — protagonist vs. topic**:

- ❌ "How BASEO's follow-up automation converts your leads" — BASEO as protagonist of a service we don't sell. STOP.
- ✅ "93.7% of investors don't follow up properly. Here's the system that fixes it" — topic protagonist, BASEO mentioned once contextually. Valid tangential.

**Examples of valid tangential angles**:

| Tangential topic | BASEO connection |
|---|---|
| "Speed to lead: why answering in 5 minutes converts 900% more sellers" | Serves every persona; positions BASEO as the team that understands the full funnel, not just traffic |
| "What Google's March 2024 update did to 'we buy houses' sites" | Educates B4 on why template content died; primes city pages service |
| "The real cost per deal of every REI marketing channel in 2026" | B2 deal-math education; organic wins the comparison on merit |
| "How the Carrot ecosystem actually works (and where it stops helping)" | B4 education; honest take builds trust; primes foundation + city pages |
| "What is intent compression and why AI search leads close faster" | B5 education; primes AEO |

**Tangential rules summary** (enforced by `baseo-brief-enrich` and `baseo-content-review`):

- BASEO named 1–3 times total, contextually.
- CTA always soft (the free audit, framed low-pressure), regardless of the keyword's normal funnel stage.
- No service-delivery positioning of BASEO.
- Mandatory BASEO connection sentence in the brief.
- All anti-angles still apply. Tangential is NOT a loophole.

**Editorial weight**: 20–40% of the calendar can be tangential, balancing direct conversion (Active briefs, B1/B2) against the long-term authority moat.

---

## Funnel stages

Every article must be tagged TOFU, MOFU, or BOFU. This determines CTA expectations and how heavily BASEO is mentioned.

### TOFU — Top of funnel
- **What**: explainers, channel economics, industry trends, AI search education, problem framing. Written for operators, never academic.
- **BASEO mention frequency**: 2–4 times in body. First mention before the halfway point.
- **CTA**: one soft CTA near the end. The free Diagnostic Audit, framed as zero-pressure ("free, written, no call required, yours to keep").
- **CTA position**: not in the first 200 words.

### MOFU — Middle of funnel
- **What**: how-tos, playbooks, audit checklists, "what your agency should be doing," channel comparisons, build-vs-buy guides.
- **BASEO mention frequency**: 4–8 mentions. The approach described is what BASEO does and why it works — explain the WHAT and WHY, state that BASEO does it, but keep the proprietary HOW (tools, exact counts, internal workflow) off the page (see `baseo-style-guide` § Service integration).
- **CTA**: direct CTA integrated mid-post + one at end. Both point to the free audit (it's the universal next step; there is no "install" equivalent).

### BOFU — Bottom of funnel
- **What**: "SEO agency for real estate investors" evaluations, case study breakdowns, BASEO-vs-alternatives comparisons, "questions to ask before hiring," risk-reversal explainers.
- **BASEO mention frequency**: protagonist. Named in nearly every section.
- **CTA**: hard CTA, multiple touches. Free audit + explicit "the audit includes your market's pricing and deal math."

### Misalignment flags
- BOFU article without a hard CTA → return.
- TOFU article with a hard sell in the first 200 words → return.
- MOFU article that never names a specific BASEO service → return.

---

## Banned clichés and phrases

Three or more in a draft → automatic return for revision. Creation skills must avoid these on output; review skills must flag them on input.

### Banned words and phrases (generic AI/marketing slop)

- unlock, leverage, harness, empower, supercharge
- dive in / dive into / let's dive in
- game-changing, revolutionary, cutting-edge, next-level
- "in today's [digital / fast-paced / competitive / ever-evolving] world/landscape/market"
- "the power of," "the magic of"
- "It's no secret that..."
- robust, seamless, scalable solution (as standalone marketing adjectives)
- "as we mentioned earlier..." / "as we'll see later..."
- "moreover," "furthermore," "additionally" as paragraph openers
- "the truth is...," "the fact of the matter is...," "at the end of the day"
- "in this article, we'll cover..." as the opening sentence
- "without further ado"
- "hopefully this article helped you"
- "if you found this helpful, share it"

### Banned agency-speak (the translation gap — the ICP hears these as obfuscation)

Never use the left column without immediately translating to the right. Better: just use the right column.

| Banned / suspect agency word | Investor word to use instead |
|---|---|
| conversions | leads |
| ROAS | cost per deal |
| organic visibility | ranking / showing up on Google |
| impressions (as a success metric) | leads, calls, deals |
| duplicate content cannibalization | "your site looks like everyone else's, so Google ranks none of you" |
| low domain authority | "Google doesn't trust your site yet" |
| deliverable cadence | "what we do each month" |
| "we're in the foundation phase" (as an excuse) | show the actual work done |

Technical terms (schema, GBP, AI Overviews, etc.) are fine WHEN explained in plain operator language at first use.

### Banned trust-killers (the phrases that sound like the agency that burned them)

- "Guaranteed page 1 / #1 rankings" or any ranking/lead-count guarantee
- "We'll 10x your leads"
- "Just trust the process"
- "We're a full-service digital marketing agency"
- "We work with all industries"
- "Leads in 30 days" (that's PPC or a lie — the FAQ says so publicly)
- Any 12-month-contract framing or pressure tactic
- Arrogant expertise claims: "we're the experts," "you're with the wrong team," "you're doing it wrong, hire us," "investors come to us because we're the best." Authority is proven by specialization and results, never asserted. (The consultative expertise close in `baseo-style-guide` § The expertise close is the allowed alternative.)

### Banned structural patterns

- Articles addressed to motivated sellers / homeowners (client-site content).
- "10 SEO tips" listicles with no implementation depth.
- "What is SEO?" articles that don't go past Wikipedia-level depth.
- Articles that work identically for any small business (no REI specificity).
- Articles promising specific ranking or lead outcomes.
- Articles positioning BASEO as selling an out-of-scope service.
- CTAs in the first 200 words of a TOFU post.

---

## Anti-angles

Default REVISE or REJECT regardless of persona match:

- Content for motivated sellers ("how to sell an inherited house in Florida") — belongs on client sites.
- Generic SEO best practices with no cash-buyer specificity.
- "Best SEO agencies 2026" listicles including 10+ agencies with no depth.
- Get-rich-quick / guru-adjacent framing ("close 10 deals next month with this one trick").
- Pure tool tutorials (Ahrefs how-tos, etc.) with no investor frame.
- Anything that promises rankings, lead counts, or timelines as guarantees.

### Prime angles by persona

**Primary editorial weight (B1, B2 — convert fastest):**

- **Agency accountability content** ("what your agency should deliver monthly," "how to read an SEO report," "7 questions that expose a bad agency") → B1.
- **Deal math comparisons** (PPC vs organic cost per deal, channel-by-channel CPL, "one deal pays for X months") → B2.
- **Case study breakdowns** (the Florida 3→28 story told in operational detail) → B1, B2, B3.
- **Carrot template problem + fix** → B1, B4.

**Secondary weight:**

- **Competitor gap / identity angles** ("they're not smarter, they got there first") → B3.
- **Investor SEO architecture education** (city pages → situation pages → authority; "your homepage isn't your most important page") → B4.
- **AI search channel education** (intent compression, citation mechanics, dark traffic in GA4) → B5 attached to any persona.

---

## Canonical BASEO URLs

Skills must use only URLs verified to exist. Do not fabricate URLs. If unsure, omit the link.

| Purpose | URL | Status |
|---|---|---|
| Marketing site root | `https://www.thebaseo.com` | ✅ verified |
| Cash buyers — pillar (service landing) | `https://www.thebaseo.com/home-cash-buyers-seo/` | ✅ verified |
| Free audit CTA (Pilar contact section) | `https://www.thebaseo.com/home-cash-buyers-seo/#hero` | ✅ verified (homepage anchor) |
| Contact Us Page | `https://www.thebaseo.com/contact/` | ✅ verified |
| Blog root | `https://www.thebaseo.com/home-cash-buyers-seo/resources/` | ✅ verified |
| Case study / results page | `https://www.thebaseo.com/home-cash-buyers-seo/case-studies/` | ✅ verified |

**Eddie maintains this table.** Until a row is marked ✅, skills must not link to it. For internal links inside the body, only use URLs that appear in `baseo-corpus.csv`. If the corpus doesn't have a relevant link, skip it — don't invent.

Default CTA URL: the free audit, `https://www.thebaseo.com/home-cash-buyers-seo/#hero` (the verified pillar hero/contact section).

---

## ICP vocabulary (positive signal)

If an article uses 5+ of these terms correctly in context, that is a positive ICP signal. Creation skills should naturally weave these in; review skills can use them as a sanity check.

**Important**: this is **reader vocabulary** — the investor's day-to-day language. It is NOT a list of BASEO services.

motivated sellers, deal flow, cost per lead (CPL), cost per deal, assignment fee, wholesale, fix and flip, buy and hold, cash offer, close rate, closing table, pipeline, deal math, "sell my house fast", "we buy houses", organic leads, page 1, the phone rings, driving for dollars, cold calling, skip tracing, direct mail, PPC, pay-per-lead, Carrot, BiggerPockets, REIA, Google Business Profile (GBP), probate, foreclosure, pre-foreclosure, divorce leads, inherited property, tired landlord, distressed property, ARV, off-market, dispositions, acquisitions, speed to lead, follow-up, iBuyer, Opendoor, market exclusivity, AI Overviews, ChatGPT leads.

---

## Language and output rules

- **Article output language**: English by default (the audience is US/Canada investors). If a brief explicitly specifies Spanish, match it.
- **Skill evaluation output**: English by default, unless a specific skill overrides this rule.
- **Direct quoting**: when a skill quotes the article (in review reports), preserve the original language verbatim.

---

## Quick reference for creation/review skills

When a skill needs to make a judgment call, check in this order:

1. Is the reader an investor (not a seller, not a generic SMB)? → Personas + Anti-personas.
2. Does it map to a real BASEO service? → Service catalog (and Out-of-scope list).
3. Does the pain match? → Pain → service map.
4. Are all result claims approved or sourced? → Claims and proof policy.
5. Is the funnel stage clear and the CTA appropriate? → Funnel stages.
6. Are there package or price disclosures? → Pricing disclosure policy (automatic return if yes).
7. Are there ranking/lead guarantees? → Banned trust-killers (automatic return if yes).
8. Are there clichés or agency-speak? Count them. → Banned clichés (3+ = return).
9. Does it cover an anti-angle? → Anti-angles section.
10. Are the URLs real? → Canonical URLs.

If a skill cannot resolve a question using this file, it is a context gap. Surface it. Don't guess.
