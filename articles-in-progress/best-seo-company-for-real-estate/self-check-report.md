# Self-check report

## Veredicto

**Estado**: ✅ Listo para revisión editorial
**Resumen**: 2 auto-fixes aplicados · 1 flag informativo. Sin issues STOP-level.

## Auto-fixes aplicados

| Original | Reemplazo | Ubicación |
|---|---|---|
| `Monthly Lead Report — September 2026` (guion largo) | `Monthly Lead Report, September 2026` | Bloque PROMPT de imagen (checklist de vetting) |
| `Organic — city page` / `Organic — probate page` (guion largo) | `Organic city page` / `Organic probate page` | Bloque PROMPT de imagen (checklist de vetting) |

Nota: los dos únicos guiones largos estaban dentro de bloques `[PROMPT FOR CHATGPT IMAGE GENERATION]` (texto que describe la imagen, no prosa del artículo). Se normalizaron para dejar el conteo determinístico en cero. El cuerpo editorial nunca tuvo guiones largos.

## Flags (requieren atención humana)

### Críticos (arreglar antes de publicar)
- Ninguno.

### Estilo / estructura (conviene revisar)
- Ninguno bloqueante.

### Informativos
- ⚠️ **Conteo de enlaces internos**: 6 URLs internas distintas (7 colocaciones, sin contar el CTA del audit). El target del brief era 8–14. El corpus solo tiene 10 filas y las 6 más relevantes ya están enlazadas; agregar más forzaría enlaces débiles fuera de tema. Aceptable para una pieza BOFU de ~3,300 palabras. Si el editor quiere subir la densidad, puede añadir un enlace a `social-media-marketing-real-estate-investors` en la sección de nichos, pero no es necesario.
- ⚠️ **3 placeholders `[SCREENSHOT: ...]`**: cada uno tiene su bloque `[PROMPT FOR CHATGPT IMAGE GENERATION: ...]` correspondiente (hero, dashboard de leads 3→28, excerpt de reporte mensual). El publisher genera las 3 imágenes antes de publicar y reemplaza ambos bloques. Se quitaron el SERP y el diagrama de nichos por decisión editorial (menos imágenes; se conservan las visuales de prueba que convierten en BOFU).

## Counts (referencia rápida)

| Métrica | Valor | Target | Estado |
|---|---|---|---|
| Palabras totales (prosa) | ~3,300 | 2,600–3,400 | ✅ |
| Cobertura de keyword en H2 | 8/11 (73%) | ≥ 60% | ✅ |
| Menciones BASEO | protagonista, casi todas las secciones | BOFU × protagonista | ✅ |
| Enlaces internos (thebaseo.com) | 6 URLs distintas / 7 colocaciones | 8–14 | ⚠️ (justificado por tamaño del corpus) |
| Citas externas Tier 1/2 | 4 (Google Search Central, First Page Sage, Seer, + Softtrix/SEL Tier 3) | ≥ 3 | ✅ |
| Claims: first-party verbatim / externos con fuente | ✅ / ✅ | todos | ✅ |
| Lenguaje de garantía | 0 | 0 | ✅ |
| Divulgación de precios/paquetes BASEO | 0 | 0 | ✅ |
| Imágenes / listas / tablas | I:3 L:2 T:3 | mín. estilo BOFU 3 / 2 / 1 | ✅ (reducido de 5 a 3 por decisión editorial: hero + dashboard de leads + excerpt de reporte) |
| Placeholders `[SCREENSHOT]` | 5 (todos con prompt) | humano completa | ⚠️ info |
| Detalle propietario (how) | 0 | ninguno en el blog | ✅ |
| Elemento de featured snippet | presente (lista de 7 puntos) | presente | ✅ |
| TOC (>1,500 palabras) | presente (lista de anclas tras la intro) | según regla | ✅ |
| Sección de cierre | "The bottom line" ~150 palabras | 100–200 | ✅ |
| CTA al final + URL válida | presente, `#hero` verificado | audit CTA, URL verificada | ✅ |
| Guiones largos (—) | 0 | 0 | ✅ |
| Uso de "42 leads" | 0 (estandarizado en 3→28) | 0 | ✅ |

## Verificaciones de fidelidad de claims

Todos los claims first-party se cotejaron verbatim contra la Approved claims library de `baseo-context`:
- 3 → 28 leads en 9 meses ✅
- Reversión del 97% de caída de tráfico (10,000 → 284) ✅
- $161 por lead orgánico ✅
- 3 deals / $54K de profit contra factura de $4,500 ✅ (único contexto donde $4,500 es válido)
- Agencia previa: 14 meses, $4,500/mes, 0 números de leads ✅
- 430% más solicitudes de direcciones en GBP ✅
- Mes 5: 12 leads, primeros 3 deals ✅
- 0 clientes en contrato de 12 meses ✅

Estadísticas externas: cada una con URL de fuente original (Google Search Central, First Page Sage, Seer Interactive, Softtrix, Search Engine Land). Ninguna sin fuente.

## Placeholders inventory (para completar antes de publicar)

### Screenshot placeholders (cada uno con su image prompt) — 3 tras la reducción
- `[SCREENSHOT: hero — investor revisando notificación de lead frente a una casa]` — sección: top del artículo — prompt presente: ✅ (Categoría 4, hero/featured)
- `[SCREENSHOT: dashboard de leads 3→28 en 9 meses, CPL bajando]` — sección: "How long does SEO take" — prompt presente: ✅ (Categoría 3, dashboard)
- `[SCREENSHOT: excerpt de reporte mensual con leads y teléfonos]` — sección: "vetting checklist" — prompt presente: ✅ (Categoría 3, reporte)

Quitadas por decisión editorial: SERP (Categoría 1) y diagrama de nichos (Categoría 5).
