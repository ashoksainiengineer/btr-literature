# GitHub Repository BTR Extraction — Comprehensive Summary

**Generated:** 2026-05-24
**Purpose:** Consolidated summary of all Birth Time Rectification (BTR) methods, algorithms, and documentation extracted from GitHub repositories.

---

## Repositories Analyzed

| # | Repository | URL | Stars | Primary Language | BTR Relevance |
|---|-----------|-----|-------|-----------------|---------------|
| 1 | qiebo/astro-rectifier | https://github.com/qiebo/astro-rectifier | 0 | Python | **HIGH** — Dedicated BTR engine with Primary Directions |
| 2 | selfhealing4d/SkyAsGround-Engine | https://github.com/selfhealing4d/SkyAsGround-Engine | 0 | Python | **HIGH** — 13-sign True Sidereal BTR engine |
| 3 | prokerala/astrology-api-demo | https://github.com/prokerala/astrology-api-demo | 20 | PHP | **MEDIUM** — Has BTR UI tab in API demo |
| 4 | prokerala/astrology-sdk | https://github.com/prokerala/astrology-sdk | — | PHP | **MEDIUM** — BTR parameter in API calls |
| 5 | diliprk/VedicAstro | https://github.com/diliprk/VedicAstro | 60 | Python | **MEDIUM** — KP system, ABCD significators |
| 6 | katelouie/stellium | https://github.com/katelouie/stellium | 35 | Python | **LOW** — Unknown birth time handling |
| 7 | kunjara/jyotish | https://github.com/kunjara/jyotish | 202 | PHP | **LOW** — Vedic calculation library |
| 8 | VedAstro/VedAstro.Python | https://github.com/VedAstro/VedAstro.Python | 66 | Python | **LOW** — BirthTimeAutoAIFill method |
| 9 | Victordtesla24/Birth-Time-Rectifier | https://github.com/Victordtesla24/Birth-Time-Rectifier | 1 | Python/TS | **HIGH** — AI-driven BTR with Swiss Ephemeris + BPHS |
| 10 | Victordtesla24/jyotish-shastra | https://github.com/Victordtesla24/jyotish-shastra | 0 | JavaScript/TS | **HIGH** — Production BTR, 10+ API endpoints |
| 11 | Victordtesla24/btr-demo | https://github.com/Victordtesla24/btr-demo | 1 | Python | **HIGH** — BPHS verse-based BTR demo |
| 12 | Victordtesla24/containerised-birth-time-rectifier | https://github.com/Victordtesla24/containerised-birth-time-rectifier | 0 | Python | **HIGH** — Containerized BTR (MIT) |
| 13 | Dragonfire94/vedic-ai | https://github.com/Dragonfire94/vedic-ai | — | Python | **HIGH** — Detailed 21-section BTR spec |
| 14 | Gajasurve/Vedic-Jyotish | https://github.com/Gajasurve/Vedic-Jyotish | 0 | Go | **MEDIUM** — Kunda (D-81) BTR method |
| 15 | krazykrackpot/panchang | https://github.com/krazykrackpot/panchang | — | TypeScript | **MEDIUM** — Event-driven BTR spec with scoring |
| 16 | AastikRajan/Astro-brain | https://github.com/AastikRajan/Astro-brain | — | Python | **MEDIUM** — Monte Carlo BTR implementation |
| 17 | Rahul-2202/Astro-llm | https://github.com/Rahul-2202/Astro-llm | — | Python | **LOW** — Contains KP BTR book text |
| 18 | ashoksainiengineer/ai-pandit-app | https://github.com/ashoksainiengineer/ai-pandit-app | — | Python/TS | **REFERENCE** — Current project repo |

---

## Supplementary BTR Methodology Summaries

### BPHS Verse-Based BTR (Victordtesla24 Suite — 4 Repos)

**Author:** Victordtesla24
**URL:** https://github.com/Victordtesla24/Birth-Time-Rectifier, https://github.com/Victordtesla24/jyotish-shastra
**License:** MIT (most comprehensive open-source BTR on GitHub)

**BTR Methods:**
1. **BPHS verse-based rectification** — Direct implementation of Parashara BTR verses
2. **AI verification** — OpenAI GPT-4 chart verification as cross-check
3. **Hora, Shashtiamsa, Conditional Dasha methods** — Three-method BTR verification

**Features:**
- Swiss Ephemeris, Redis, PostgreSQL, WebSockets, D3.js charts
- 10+ dedicated BTR API endpoints
- Production-deployed on Render.com
- 6,992+ lines of tests

---

### Kunda (D-81) BTR Method (Gajasurve/Vedic-Jyotish)

**Author:** Gajasurve
**URL:** https://github.com/Gajasurve/Vedic-Jyotish
**Language:** Go

**Rule:** The Kunda method uses D-81 (Ashtanavamsa) lagna analysis for degree-based birth time rectification. The Kunda calculator computes the corrected birth time by analyzing the ascendant cusp zones in the D-81 chart and adjusting the birth time until the Kunda lagna aligns correctly.

---

### Monte Carlo BTR Method (AastikRajan/Astro-brain)

**Author:** AastikRajan
**URL:** https://github.com/AastikRajan/Astro-brain

**Rule:** Monte Carlo BTR uses random statistical sampling of candidate birth times within the uncertainty window. For each sampled time, the chart is computed and scored against known life events. The distribution of high-scoring times reveals the most probable true birth time. This approach provides confidence intervals rather than a single fixed time.

---

### Adaptive Questionnaire BTR (Dragonfire94/vedic-ai)

**Author:** Dragonfire94
**URL:** https://github.com/Dragonfire94/vedic-ai

**Rule:** The 21-section BTR spec includes:
1. **2-stage candidate generation**: Coarse (5min) → Fine (1min)
2. **Adaptive Question Engine**: Uses Information Gain to select next question
3. **Feature Mapping**: Static Base + Context-Aware features
4. **Scoring Engine**: ln-based confidence scoring
5. **Event Validator**: Vimshottari Dasha matching
6. **Degree Estimator**: Circular Mean computation
7. **Cusp Detector + Tiebreaker**: Resolves boundary cases
8. **4-level Fallback system**: Graceful degradation
9. **Confidence grading**: A+ through C- grades

---

### Event-Driven BTR (krazykrackpot/panchang)

**Author:** krazykrackpot
**URL:** https://github.com/krazykrackpot/panchang

**Rule:** 4-phase BTR algorithm:
1. **Candidate Generation** — Grid around approximate birth time
2. **Event Matching** — Match Dasha periods + transits to life events
3. **Scoring** — Weighted scoring per event type (marriage, children, career, etc.)
4. **Validation** — Cross-validate against remaining events

Supports 10 event types with specific scoring criteria. Includes competitive analysis of Jagannatha Hora, AstroSage, Prokerala, and Drik Panchang approaches.

---

## Repository 1: qiebo/astro-rectifier — Western Astrology BTR Engine

**Author:** qiebo
**URL:** https://github.com/qiebo/astro-rectifier
**License:** MIT
**Language:** Python (82.1%), JavaScript, CSS, HTML

### Core BTR Methodology

#### 1.1 Four-Dimensional Scoring System

**Source:** qiebo/astro-rectifier — README.md, src/rectification.py
**Rule:** The rectification engine uses a weighted, four-dimensional scoring system to evaluate candidate birth times:
- **Transits (25%)** — Major transits at event dates
- **Secondary Progressions (20%)** — Progressed positions
- **Solar Arc Directions (20%)** — Solar arc triggering angles
- **Primary Directions (35%)** — Highest precision contributor (1094 direction arcs per chart)

Each candidate time is scored by summing weighted contributions from all four dimensions.

#### 1.2 Primary Directions Engine — Ptolemy Key

**Source:** qiebo/astro-rectifier — src/primary_directions.py
**Rule:** Primary Directions is the classical technique where 1° of right ascension arc ≈ 1 year of life (Ptolemy Key). The engine computes 1094 direction arcs per chart (promissors × significators × aspects × direct/converse). The core formula:
```
Direction Arc = RA_promissor - RA_significator (adjusted for aspect angle)
Age = Arc / Key (Ptolemy: 1.0, Naibod: 0.9856)
```
Significator weights: Asc/MC = 2.0×, Fixed stars = 1.5×, Conjunction/Opposition = 1.5×, Converse directions = 0.7×.

#### 1.3 Birth Time Sensitivity — 4 Minutes = 1 Year Shift

**Source:** qiebo/astro-rectifier — src/primary_directions.py (docstring)
**Rule:** "4 minutes of birth time difference ≈ 1° direction arc ≈ 1 year of event offset. This makes Primary Directions the highest-precision technique for birth time rectification."

#### 1.4 Event-Astrology Mapping Rules

**Source:** qiebo/astro-rectifier — src/rectification.py (EVENT_ASTROLOGY_RULES)
**Rule:** Each life event category maps to specific planets, houses, aspects, and transit planets:

| Event Category | Key Planets | Key Houses | Weight |
|---------------|------------|-----------|--------|
| Career | MC, Saturn, Jupiter, Sun, Mars | 10, 6, 2 | 1.0 |
| Relationship | Venus, Jupiter, DSC, Moon, Mars | 7, 5 | 1.2 |
| Health | Saturn, Mars, Sun, Moon, Asc | 1, 6, 8, 12 | 1.0 |
| Relocation | Moon, Uranus, Jupiter, MC, Asc | 4, 9, 12 | 0.9 |
| Family | Moon, Cancer, Saturn, Jupiter, Venus | 4, 10 | 0.8 |
| Education | Mercury, Jupiter, Saturn, Sun | 3, 9 | 0.7 |
| Finance | Jupiter, Venus, Saturn, Pluto, MC | 2, 8, 10 | 0.9 |
| Accident | Mars, Uranus, Saturn, Pluto, Asc | 1, 6, 8, 12 | 1.1 |

#### 1.5 ASC Constellation Constraint

**Source:** qiebo/astro-rectifier — README.md
**Rule:** When the Ascendant sign is known, restrict the scan to candidate times producing that Ascendant only. This dramatically improves precision by reducing the search space.

#### 1.6 Confidence Assessment Formula

**Source:** qiebo/astro-rectifier — src/rectification.py
**Rule:** Overall confidence is computed from:
- Score difference between best and next-best candidates
- Number of events used in the analysis
- Average score across all events for the best candidate

#### 1.7 Rectification Algorithm Pipeline

**Source:** qiebo/astro-rectifier — src/rectification.py
**Rule:** The scanning algorithm:
1. Define scan range (default: ±60 minutes, configurable) and step (default: 1 minute)
2. For each candidate time, generate the complete natal chart
3. Score the chart against each life event using the event-astrology mapping rules
4. Aggregate event scores into total score per candidate
5. Rank candidates by total score
6. Return top candidates with supporting evidence

---

## Repository 2: selfhealing4d/SkyAsGround-Engine — 13-Sign True Sidereal BTR

**Author:** Howard North (selfhealing4d)
**URL:** https://github.com/selfhealing4d/SkyAsGround-Engine
**License:** Creative Commons BY-NC-ND 4.0
**Language:** Python

### Core BTR Methodology

#### 2.1 Consciousness-as-Ground Ontology

**Source:** selfhealing4d/SkyAsGround-Engine — rectification.py (docstring)
**Rule:** "Rectification is not 'finding the correct time' but recognizing which temporal aperture allows life events to resonate with astronomical precision." The engine uses a 13-sign zodiac (including Ophiuchus) with IAU boundary calibration.

#### 2.2 Dual-Trigger Boundary Detection Methodology

**Source:** selfhealing4d/SkyAsGround-Engine — rectification.py (docstring)
**Rule:** The rectification uses two types of triggers:
- **HARD TRIGGER:** ±0.01° (±36 arc-seconds) — planetary boundary crossing
- **SOFT PROXIMITY:** ±0.5° (±30 arc-minutes) — proximity to boundary

#### 2.3 Event-Dasha Correlation Scoring

**Source:** selfhealing4d/SkyAsGround-Engine — rectification.py
**Rule:** Each event type has a signature mapping to zodiac signs (not planets in the traditional sense). For example:
- career_launch → Aries, Leo, Sagittarius
- relationship_start → Taurus, Libra, Pisces
- surgery → Aries, Scorpius, Ophiuchus
- spiritual_awakening → Ophiuchus, Pisces, Sagittarius
- disruption → Ophiuchus, Aquarius, Scorpius

#### 2.4 Special Trigger Weights

**Source:** selfhealing4d/SkyAsGround-Engine — rectification.py
**Rule:** Identity-level events have special trigger weights:
- Mercury in Ophiuchus = 20 (Identity Realization)
- Sun at boundary = 15 (Core identity shift)
- Moon at boundary = 12 (Emotional transmutation)
- Transit hits Ascendant = 18 (External manifestation)

#### 2.5 Window Scanning Algorithm

**Source:** selfhealing4d/SkyAsGround-Engine — rectification.py (scan_window method)
**Rule:** The algorithm scans a configurable time window (default: ±2 hours, 5-minute steps) around the approximate birth time. For each increment:
1. Calculate the full natal chart
2. Score based on Dasha-event correlations at each event date
3. Check boundary triggers (planets within ±0.01° of sign boundaries)
4. Apply special pattern recognition (e.g., Mercury in Ophiuchus)
5. Rank candidates by total score

#### 2.6 Scoring: The Triple Play

**Source:** selfhealing4d/SkyAsGround-Engine — rectification.py
**Rule:** The scoring engine uses a "Triple Play" methodology:
- **Dasha Alignment:** Life events synchronized with Dasha transitions of appropriate planetary rulers
- **Boundary Triggers:** Natal planet at 0°/29° of a sign plus transit activating that point
- **Special Patterns:** Unusual configurations (Ophiuchus Mercury, Sun at 0° Aries, etc.)

---

## Repository 3: prokerala/astrology-api — BTR as a Service

**Organization:** prokerala
**URL:** https://github.com/prokerala/astrology-api-demo
**License:** MIT
**Language:** PHP

### BTR Features

#### 3.1 Birth Time Rectification Chart Selection

**Source:** prokerala/astrology-api-demo — templates/common/western-horoscope-form.tpl.php
**Rule:** The API provides two BTR chart types when birth time is unknown:
- **Flat Chart** — Default rectification chart
- **True Sunrise Chart** — Chart calculated for sunrise on the birth date

The UI toggles BTR options when the "birth time unknown" checkbox is checked.

#### 3.2 API Parameter Integration

**Source:** prokerala/astrology-sdk — multiple service files
**Rule:** The `birth_time_rectification` parameter is integrated across all chart types:
- Natal Chart
- Synastry
- Transit Chart
- Solar Return Chart
- Progression Chart

This enables BTR to be applied as a cross-cutting concern across all astrology calculations.

---

## Repository 4: diliprk/VedicAstro — KP Astrology Library

**Author:** diliprk
**URL:** https://github.com/diliprk/VedicAstro
**License:** MIT
**Language:** Python/Jupyter Notebook
**Stars:** 60

### BTR-Relevant Features

#### 4.1 ABCD Significator System for KP

**Source:** diliprk/VedicAstro — README.md
**Rule:** The package generates ABCD significator tables for each planet and each house. These are the fundamental building blocks of KP BTR — the A, B, C, D significators (Star Lord, Sub Lord, etc.) are used to determine which houses a planet signifies.

**Key Methods:**
- `get_planet_wise_significators()` — Generate ABCD significators per planet
- `get_house_wise_significators()` — Generate ABCD significators per house
- `compute_vimshottari_dasa()` — Vimshottari Dasha computation

#### 4.2 Horary (Prasha) Chart Support

**Source:** diliprk/VedicAstro — README.md
**Rule:** The library supports KP Horary (Prashna) chart computation through:
- `get_horary_ascendant_degree()` — Calculate the ascendant for a horary question
- `find_exact_ascendant_time()` — Find the exact time for a given ascendant degree

When birth time is unknown, a horary chart can be used as a proxy for BTR purposes.

---

## Repository 5: katelouie/stellium — Modern Astrology Library

**Author:** katelouie
**URL:** https://github.com/katelouie/stellium
**License:** AGPL-3.0
**Language:** Python
**Stars:** 35

### BTR-Relevant Features

#### 5.1 Unknown Birth Time Charts

**Source:** katelouie/stellium — README.md
**Rule:** The library provides specific handling for charts where birth time is unknown. Key features for BTR:
- Zodiacal Releasing for 25+ lots with fractal calculation mode
- Primary and Zodiacal directions with 3D modeling
- Transit timeline analysis with retrograde multi-pass detection
- Multiple house systems in a single chart for comparison

#### 5.2 Notable Birth Database for BTR Testing

**Source:** katelouie/stellium — README.md
**Rule:** A curated database of notable births (~100+ entries with verified birth data) is included. This can be used to test BTR algorithms against known-accurate birth times.

---

## Repository 6: kunjara/jyotish — PHP Vedic Astrology Library

**Author:** kunjara
**URL:** https://github.com/kunjara/jyotish
**License:** GPL-2.0
**Language:** PHP
**Stars:** 202

### BTR-Relevant Features

#### 6.1 Comprehensive Vedic Calculations

**Source:** kunjara/jyotish — README.md
**Rule:** The library provides the computational foundation needed for BTR:
- Natal chart and 16 varga (divisional) charts
- Bala calculations (Ashtakavarga, Rashi bala, Graha bala)
- Dasha systems (Vimshottari, Ashtottari)
- Panchanga (Nakshatra, Yoga, Tithi, Vara, Karana)
- Yoga detection (Dhana yoga, Raja yoga, Mahapurusha yoga)

All of these are necessary cross-checks during the BTR process.

---

## Cross-Reference: Already Existing in Event Files

The following repositories and content are already partially or fully represented in existing event files:

| Content | Existing Location | Status |
|---------|------------------|--------|
| KP Ruling Planets method | birth.md, timing.md, marriage.md | Already present |
| ABCD significator system | methodology/kp-method.md | Already present |
| Vimshottari Dasha calculations | timing.md | Already present |
| Transit-based rectification | transit.md | Already present |
| Horary/Prashna method | methodology/prashna-method.md, birth.md | Already present |
| Event-based BTR | multiple event files | Already present |

## New Content Identified (Not in Existing Event Files)

The following content from GitHub repos is **NEW** and not yet present in any event file:

| # | Content | Source Repo | Target Event File |
|---|---------|------------|-------------------|
| 1 | Primary Directions BTR method (Ptolemy Key: 1° = 1 year) | qiebo/astro-rectifier | timing.md |
| 2 | Four-dimensional scoring (Transits+Progressions+Solar Arc+Primary Directions) | qiebo/astro-rectifier | timing.md |
| 3 | 4 minutes birth time error = 1 year event offset (Primary Directions sensitivity) | qiebo/astro-rectifier | birth.md |
| 4 | Event-astrology mapping rules (8 event categories with planet/house maps) | qiebo/astro-rectifier | timing.md |
| 5 | ASC sign constraint to narrow scan range | qiebo/astro-rectifier | birth.md |
| 6 | Confidence assessment via candidate score differential | qiebo/astro-rectifier | timing.md |
| 7 | 13-sign zodiac BTR (Ophiuchus-enabled) | selfhealing4d/SkyAsGround-Engine | combinations.md |
| 8 | Dual-trigger boundary detection (Hard ±0.01°, Soft ±0.5°) | selfhealing4d/SkyAsGround-Engine | timing.md |
| 9 | Event-to-sign mapping (not planet-based, sign-based) | selfhealing4d/SkyAsGround-Engine | timing.md |
| 10 | Special trigger weights for identity-level events | selfhealing4d/SkyAsGround-Engine | timing.md |
| 11 | BTR as API service parameter across all chart types | prokerala/astrology-sdk | timing.md |
| 12 | Flat Chart vs True Sunrise Chart BTR methods | prokerala/astrology-api-demo | birth.md |
| 13 | Notable births database for BTR algorithm testing | katelouie/stellium | timing.md |
| 14 | ABCD significator generation for KP BTR | diliprk/VedicAstro | methodology/kp-method.md |

---

## Summary of BTR Methodologies Found on GitHub

### Western Astrology Approaches

1. **Primary Directions** (qiebo/astro-rectifier) — The most precise Western technique. 4 min birth time error ≈ 1° arc ≈ 1 year event offset. Uses Ptolemy Key or Naibod Key for arc-to-age conversion.

2. **Multi-Dimensional Scoring** (qiebo/astro-rectifier) — Combines transits, secondary progressions, solar arcs, and primary directions in a weighted ensemble (total 100%). Each technique contributes to the overall score.

3. **13-Sign True Sidereal** (selfhealing4d/SkyAsGround-Engine) — Uses IAU boundaries including Ophiuchus. Event-Dasha correlation with boundary triggers and special patterns.

### Vedic/KP Approaches

4. **BPHS Verse-Based BTR** (Victordtesla24 suite — 4 repos) — Direct implementation of Parashara BTR verses. Uses Hora, Shashtiamsa, and Conditional Dasha verification. MIT licensed, most comprehensive open-source BTR.

5. **KP ABCD Significator System** (diliprk/VedicAstro) — House-wise and planet-wise significator tables for KP BTR verification.

6. **Kunda (D-81) Method** (Gajasurve/Vedic-Jyotish) — Degree-based BTR using D-81 (Ashtanavamsa) lagna analysis.

7. **Vimshottari Dasha Verification** (multiple repos) — Cross-referencing life events with Dasha periods.

8. **Horary/Prashna Proxy** (diliprk/VedicAstro, prokerala) — Using the query time as proxy for unknown birth time.

### Modern/Computational Approaches

9. **AI/LLM Agent BTR** (ashoksainiengineer/agentic-ai-pandit) — 5-agent LangGraph debate with Groq/Claude. Lagna→Dasha→Varga→Forensic filters with AI critic feedback loop.

10. **6-Stage Tournament BTR** (ashoksainiengineer/ai-pandit-app) — Sequential candidate elimination via Grid Generation→Batch Tournament→Refinement→Deep Analysis→Micro Grid→Final Precision.

11. **Monte Carlo BTR** (AastikRajan/Astro-brain) — Random statistical sampling with confidence intervals.

12. **Adaptive Questionnaire BTR** (Dragonfire94/vedic-ai) — Information Gain-based question selection, ln-based confidence scoring, 4-level fallback.

13. **Event-Driven Scoring BTR** (krazykrackpot/panchang) — 4-phase algorithm with 10 event types, competitive analysis.

### Cross-Cutting Approaches

14. **API-as-Service BTR** (prokerala) — Encapsulating BTR as a cross-cutting service parameter applicable to all chart types.

15. **Event-Astrology Mapping** — Systematic mapping of 8+ event categories to specific planets, houses, and aspects for automated scoring.

---

## Repos Pending Further Investigation

The following repos from topic searches warrant deeper documentation review for BTR methodology:

1. teal33t/jyotish-api (80★) — Self-hosted Vedic API
2. jyotisham/jyotisha (126★) — Python tools for Hindu astronomical/astrological vedAnga
3. PriyankGahtori/hora-prakash (3★) — Free Vedic astrology web app, Vimshottari Dasha
4. 732642856/yinduzhanxing (3★) — Jyotish Vedic Astrology Engine with WorkBuddy Skill
5. master12coder/daiv-ai (3★) — Vedic Astrology Intelligence with Swiss Ephemeris
6. sureshdr/mhora (6★) — C# Vedic astrology with VargaRectificationForm
7. CNWU16/vedic-astro-skills — Vedic rectifier skill definition
8. Rahul-2202/Astro-llm — Contains KP BTR book text
9. LouiShadowMZ/LouiShadowMZ.github.io — KP BTR HTML page
10. acharyavikulbansal-stack/solutions — KP astrology knowledge base with BTR references

---

*End of GitHub BTR Extraction Summary*
