# 🧠 BTR Knowledge Base — Complete Mind Map

> **Generated:** 2026-05-25  
> **Purpose:** Master navigation index for all BTR literature, rules, and their implementation status  
> **Scope:** 56 event files · 13 methodology files · 18 classical texts · 58 chunks  
> **How to use:** Each leaf node includes ➔ file reference and [Status] tag

---

## 1. 🌳 KNOWLEDGE TREE OVERVIEW

```
BTR KNOWLEDGE BASE
├── 1. METHODOLOGIES (5 major approaches)
│   ├── 1.1 KP Krishnamurti Paddhati ─── [PRIMARY ─ 40% weight in integrated]
│   ├── 1.2 Parashari System ─────────── [SECONDARY ─ 25% weight]
│   ├── 1.3 Nadi Astrology ───────────── [TERTIARY ─ 10% weight]
│   ├── 1.4 Event-Based Rectification ── [FOUNDATIONAL ─ 40% weight]
│   └── 1.5 Integrated Approach ───────── [META ─ combines all above]
│
├── 2. CLASSICAL TEXTS (15 reference works)
│   ├── 2.1 BPHS (Brihat Parashara Hora Shastra) ─── [PRIMARY]
│   ├── 2.2 Jaimini Sutras ─────────────────────────── [PRIMARY]
│   ├── 2.3 B.V. Raman Works ──────────────────────── [SECONDARY]
│   ├── 2.4 Uttara Kalamrita / Jataka Parijata ─────── [SECONDARY]
│   └── 2.5 Other Classical (Saravali, Phaladeepika, etc.) ── [TERTIARY]
│
├── 3. EVENT-SPECIFIC RULES (56 event types)
│   ├── 3.1 Life Milestones (birth, marriage, career, death)
│   ├── 3.2 Family Events (children, parents, siblings)
│   ├── 3.3 Financial/Professional (finance, promotion, business)
│   ├── 3.4 Health/Crisis (health, accident, surgery)
│   └── 3.5 Special (twin differentiation, timing, combinations)
│
├── 4. CHUNKS / SUPPLEMENTS (58 source extracts)
│   ├── 4.1 KP Reader Parts 1-5
│   ├── 4.2 BPHS Chunks 1-5
│   ├── 4.3 Online Sources (YouTube, podcasts, forums)
│   ├── 4.4 Academic (PhD theses, papers)
│   └── 4.5 Software Documentation
│
└── 5. PIPELINE INTEGRATION MAP
    ├── 5.1 Currently Used in Code
    ├── 5.2 Currently in AI Prompts
    ├── 5.3 Computed but Unused
    └── 5.4 Not Yet Implemented (Priority Queue)
```

---

## 2. 📐 METHODOLOGIES — Deep Dive

### 2.1 KP Krishnamurti Paddhati (PRIMARY)
> **Files:** `methodology/kp-method.md` · `methodology/general-btr.md` · `methodology/ruling-planets.md` · `methodology/cuspal-sublord.md` · `methodology/rule-of-origin.md`

```
KP BTR METHODOLOGY
├── 3 PILLARS OF KP BTR
│   ├── Pillar 1: RULING PLANETS (Cosmic Synchronicity)
│   │   ├── 5 Standard RPs: Day Lord, Moon Sign Lord, Moon Star Lord, Lagna Sign Lord, Lagna Star Lord
│   │   ├── RP Strength Hierarchy: ANL > ASL > MNL > MSL > DL
│   │   ├── Extended RP Set: +Moon Sub Lord, Lagna Sub Lord, Nodes, conjunct/aspect planets
│   │   ├── R.S. Chani Dual RP: 4-from-Moon + 4-from-Lagna (8 total)
│   │   ├── Retrograde RPs: Can be omitted OR still valid (debated)
│   │   ├── Nodes as Agents: Rahu/Ketu represent star lord's houses
│   │   └── [Status: ⚠️ PARTIAL — SHRUTI table in prompts only, no RP pre-filter logic]
│   │
│   ├── Pillar 2: GENETIC / FAMILY CONNECTIONS (Optional)
│   │   ├── Moon's nakshatra repeats across generations
│   │   ├── Ascendant signs recur in families
│   │   ├── 5th house (parent) ↔ child's Ascendant connection
│   │   └── [Status: ❌ NOT USED — applicable only with family data]
│   │
│   └── Pillar 3: EVENT TIMELINE (Reverse Engineering) [CRITICAL]
│       ├── CSL (Cuspal Sub-Lord) is SUPREME — "yes/no" switch for house matters
│       ├── Sub-Lord changes every 5-12 minutes
│       ├── Sub-Sub Lord changes every 20-50 seconds
│       └── [Status: ⚠️ PARTIAL — CSL computed in code, event-signification NOT in prompts]
│
├── KP BTR PROTOCOL (6 Steps)
│   ├── Step 1: Define Range of Uncertainty ─── [Status: ✅ IN CODE — offsetConfig]
│   ├── Step 2: Apply Ruling Planets Filter ─── [Status: ❌ NOT IMPLEMENTED]
│   ├── Step 3: Physical Appearance Check ───── [Status: ❌ NOT IMPLEMENTED]
│   ├── Step 4: Event Testing via CSL ───────── [Status: ⚠️ PARTIAL — Dasha matching only, no CSL house check]
│   ├── Step 5: Dasha Verification ──────────── [Status: ✅ IN CODE — Dasha-event matching]
│   └── Step 6: Fine-tune to 1-min precision ── [Status: ✅ IN CODE — D150 refinement]
│
├── RULE OF ORIGIN (Second Testing Rule)
│   ├── Lagna must connect to 9th cusp (father/origin)
│   ├── 3 Conditions: direct identity (star/sub) or 3rd planet bridge
│   ├── StarSutra: "Genetic Lock" — hard eliminator
│   └── [Status: ⚠️ IN CODE — computeOriginLinkage() exists, NOT in prompts]
│
├── CSL HOUSE-SIGNIFICATION RULES (Per Event)
│   ├── MARRIAGE: 7th CSL → must signify 2/7/11, NOT 1/6/10/12
│   ├── CHILDREN: 5th CSL → must signify 2/5/11, NOT 1/4/10
│   ├── CAREER: 10th CSL → must signify 2/6/10/11
│   ├── JOB LOSS: 10th CSL → must signify 1/5/9/12
│   ├── FOREIGN TRAVEL: 12th CSL → must signify 3/9/12
│   ├── HEALTH CRISIS: 6th CSL → must signify 6/8/12
│   ├── PROPERTY: 4th CSL → must signify 4/11/12
│   ├── FATHER DEATH: 9th CSL → must signify 4/8/12
│   ├── MOTHER DEATH: 4th CSL → must signify 11/3/7
│   └── [Status: ❌ NOT IN PROMPTS — single biggest gap]
│
└── KP PRECISION HIERARCHY
    ├── Sign Lord: ~2 hours (too coarse for BTR)
    ├── Star Lord: ~30-40 minutes
    ├── Sub Lord: ~5-12 minutes ⬅️ KP primary BTR level
    ├── Sub-Sub Lord: ~20-50 seconds ⬅️ Final precision
    └── Sub-Sub-Sub Lord: ~2-5 seconds ⬅️ Theoretical limit
```

### 2.2 Parashari System (SECONDARY)
> **Files:** `methodology/pranapada.md` · `methodology/pancha-tatwa.md` · `methodology/varga-sensitivity.md` · `methodology/kunda.md`

```
PARASHARI SYSTEM
├── PRANAPADA LAGNA (BPHS Ch.4)
│   ├── PP = Prana (life force) at birth moment
│   ├── D-60 PP must be in trine (1/5/9) or 7th from Moon or Sun
│   ├── D-24 PP must be in trine (1/5/9) or 7th from Mercury or Venus
│   ├── Changes every ~24 seconds — finest BTR filter
│   └── [Status: ✅ IN CODE — pranapada.ts, computed per candidate]
│
├── TATTWA SHUDDHI (Elemental Purification)
│   ├── 5 Tatwas cycle every ~26 minutes
│   ├── Each Tatwa = 24 seconds (D1) to ~12 seconds (finer)
│   ├── Birth during wrong Tatwa = wrong time
│   └── [Status: ✅ IN CODE — tatwa-shuddhi.ts]
│
├── VARGA SENSITIVITY TABLE
│   ├── D9 Navamsa changes every ~13.5 min ─── Tier 1 (±15 min)
│   ├── D10 Dasamsa changes every ~3-6.75 min ─── Tier 2 (±10 min)
│   ├── D24 Siddhamsa changes every ~7-8 min ─── Tier 3 (±5 min)
│   ├── D60 Shastyamsa changes every ~3-3.5 min ─── Tier 4 (±2 min)
│   └── [Status: ✅ IN CODE — round-config.ts implements this]
│
├── GHATI LAGNA (PVR Method)
│   ├── Changes 1.25° per minute — very sensitive
│   ├── Use known event → compute required GL → calculate error ÷ 1.25 = minutes off
│   └── [Status: ❌ NOT IMPLEMENTED — computed in advanced-btr-methods.ts, not surfaced]
│
└── HORA LAGNA (Wealth Timing)
    ├── Changes every ~1 hour
    ├── Use for financial event verification
    └── [Status: ❌ NOT IMPLEMENTED — computed, not surfaced]
```

### 2.3 Nadi Astrology (TERTIARY)
> **Files:** `methodology/prana-dasha.md` · `methodology/prenatal-epoch.md`

```
NADI SYSTEM
├── PRANA DASHA (4th sub-level of Vimshottari)
│   ├── Days-level precision for seconds-level BTR
│   ├── Requires a day-precise event as anchor
│   └── [Status: ❌ NOT IMPLEMENTED — theoretical only]
│
├── NADI AMSHA (D150) Fine Precision
│   ├── Changes every ~48 seconds
│   ├── 150 divisions of each sign (0°12' each)
│   ├── Each Nadi Amsha has deity, phala, karmic significance
│   └── [Status: ✅ IN CODE — nadi-amsha.ts, VSL formatted]
│
└── PRENATAL EPOCH (Trutheena Method)
    ├── Conception time ↔ birth time relationship
    ├── 273 days or 258 days (male/female formula)
    └── [Status: ❌ NOT IMPLEMENTED]
```

### 2.4 Event-Based Rectification (FOUNDATIONAL)
> **Files:** `methodology/general-btr.md` (Section 5) · All 56 event files in `events/`

```
EVENT-BASED RECTIFICATION
├── CORE PRINCIPLE
│   └── "If something happened in your life, your chart must allow it"
│
├── EVENT DATA REQUIREMENTS
│   ├── Minimum 5 major events (8-10 ideal)
│   ├── Exact dates preferred (year-level minimum)
│   ├── Event → House mapping (marriage→7th, career→10th, etc.)
│   └── [Status: ✅ IN CODE — LifeEvent interface, SHRUTI table in prompts]
│
└── TESTING PROTOCOL
    ├── For each candidate time, for each event:
    │   1. Check CSL allows event (house signification)
    │   2. Check Dasha lords at event date match event karakas
    │   3. Cross-verify with varga chart (D9 for marriage, D10 for career)
    └── [Status: ⚠️ PARTIAL — step 2 done (dasha matching), step 1 missing (CSL check)]
```

---

## 3. 📜 CLASSICAL TEXTS — Rules Inventory

### 3.1 BPHS Chapters 28-39 (PRIMARY)
> **File:** `classical/bphs-rules.md` (876 lines)

```
BPHS RULES FOR BTR
├── CH.28 — SHADBALA (Planetary Strength) [Status: ⚠️ IN CODE, NOT REFERENCED]
│   ├── Minimum Rupas: Sun=6.5, Moon=6.0, Mars=5.0, Merc=7.0, Jup=6.5, Ven=5.5, Sat=5.0
│   ├── Constituent Bala minimums per planet group
│   └── BTR Use: Dasha lord at event should meet minimum
│
├── CH.29 — ARUDHA PADA [Status: ❌ NOT IN PROMPTS]
│   ├── Dara Pada (A7) → marriage verification
│   ├── Karma Pada (A10) → career verification
│   ├── Putra Pada (A5) → children verification
│   ├── Dhana Pada (A2) → finance verification
│   └── Formula: Arudha = Lord's position from house, counted from lord
│
├── CH.30 — UPA PADA [Status: ❌ NOT IN PROMPTS]
│   ├── UL = Arudha Pada of 12th house
│   ├── Governs spouse happiness + progeny
│   ├── Odd signs: UL = Pada of 12th | Even signs: UL = Pada of 2nd
│   └── BTR Use: Marriage quality + timing verification
│
├── CH.31 — ARGALA (Planetary Intervention) [Status: ❌ NOT IMPLEMENTED]
│   ├── 4th/2nd/11th → Cause Argala (intervention)
│   ├── 10th/12th/3rd → Obstruct Argala
│   └── BTR Use: Understand blocking/enabling of events
│
├── CH.32 — KARAKATWAS [Status: ⚠️ PARTIAL — Chara in code, not in prompts]
│   ├── Chara Karakas: AK→AmK→BK→MK→PiK→PuK→GK→DK (by degree)
│   ├── Sthira Karakas: Sun=father, Moon=mother, Mars=sister, etc.
│   └── BTR Use: Match Dasha lords to events via karakatwa
│
├── CH.33 — KARAKAMSA [Status: ❌ NOT IN PROMPTS]
│   ├── Navamsa occupied by Atmakaraka
│   ├── Shows soul's purpose, spiritual direction
│   └── BTR Use: Verify life patterns match Karakamsa effects
│
├── CH.34 — YOGA KARAKAS (PER-ASCENDANT) [Status: ❌ NOT IN PROMPTS — CRITICAL]
│   ├── Full table: 12 ascendants × 4 categories (benefic/malefic/yogakaraka/maraka)
│   │   ├── Aries: Benefic=Ju/Su, Malefic=Sa/Me/Ve, Yogakaraka=none
│   │   ├── Taurus: Benefic=Sa/Su, Malefic=Ju/Ve/Mo, Yogakaraka=Sa
│   │   ├── Gemini: Benefic=Ve, Malefic=Ma/Ju/Su, Yogakaraka=none
│   │   ├── Cancer: Benefic=Ma/Ju/Mo, Malefic=Ve/Me, Yogakaraka=Ma
│   │   ├── Leo: Benefic=Ma/Ju/Su, Malefic=Me/Ve/Sa, Yogakaraka=Ma
│   │   ├── Virgo: Benefic=Me/Ve, Malefic=Ma/Ju/Mo, Yogakaraka=Ve
│   │   ├── Libra: Benefic=Sa/Me, Malefic=Ju/Su/Ma, Yogakaraka=Mo+Me
│   │   ├── Scorpio: Benefic=Ju/Mo, Malefic=Ve/Me/Sa, Yogakaraka=Su+Mo
│   │   ├── Sagittarius: Benefic=Ma/Su/Me, Malefic=Ve, Yogakaraka=Su+Me
│   │   ├── Capricorn: Benefic=Ve/Me, Malefic=Ma/Ju/Mo, Yogakaraka=Ve
│   │   ├── Aquarius: Benefic=Ve/Sa, Malefic=Ju/Mo/Ma, Yogakaraka=Ve
│   │   └── Pisces: Benefic=Ma/Mo/Ju, Malefic=Sa/Ve/Su/Me, Yogakaraka=Ma+Ju
│   └── BTR Use: Verify Dasha lord at event is appropriate category for that ascendant
│
├── CH.35 — NABHASA YOGAS [Status: ❌ NOT IMPLEMENTED]
│   ├── 32 form-based yogas (Rajju, Musala, Nala, Gada, etc.)
│   └── BTR Use: Life status validation
│
├── CH.36-39 — RAJA YOGAS [Status: ⚠️ PARTIAL — Parivartana in code]
│   ├── Gajakesari, Amala, Chamara, Lakshmi, etc.
│   └── BTR Use: Match life status to yoga presence
│
└── CH.22-27 — ADDITIONAL RULES [Status: ❌ NOT IN PROMPTS]
    ├── Fame Yogas, House lord effects
    ├── Bhava Karakas (per Laghu Parashari)
    └── BTR Use: Cross-verification for specific life domains
```

### 3.2 Other Classical Texts
> **Files:** `classical/bv-raman-full.md` · `classical/bphs-btr.md` · `classical/bhrigu-sutras.md` · `classical/jataka-parijata.md` · `classical/laghu-parashari.md` · `classical/saravali.md` · `classical/phaladeepika.md` · `classical/uttara-kalamrita.md` · `classical/horasara.md` · `classical/brihat-jataka.md` · `classical/sarvartha-chintamani.md` · `classical/jataka-bharanam.md` · `classical/jataka-tattva.md`

```
OTHER CLASSICAL TEXTS
├── LAGHU PARASHARI [Status: ❌ NOT IN PROMPTS]
│   ├── Dual classification: Svabhavika (natural) + Tatkalika (temporary)
│   ├── Lordship classification: Trikona=benefic, Trishadaya=malefic, Kendra=neutral
│   ├── 2nd/8th/12th lords: Context-dependent (not fixed)
│   └── BTR Use: Correctly classify dasha lords per event context
│
├── UTTARA KALAMRITA [Status: ❌ NOT IN PROMPTS]
│   ├── Vimshottari Dasa formula (starting star, balance, bhukti)
│   ├── Varshika Dasa (solar return timing)
│   └── BTR Use: Dasha calculation verification
│
├── JATAKA PARIJATA [Status: ❌ NOT IN PROMPTS]
│   ├── 8 types of Ayurdaya (life-span calculation)
│   ├── Timing through Dasa & Transits
│   ├── 22nd Drekkana for death analysis
│   └── BTR Use: Death/longevity event verification
│
├── B.V. RAMAN [Status: ❌ NOT IN PROMPTS]
│   ├── Ch.11: BTR methodology (classical approach)
│   ├── Ch.28: Vimshottari Dasa verification
│   └── BTR Use: Cross-reference for classical BTR methods
│
├── BHRIGU SUTRAS [Status: ❌ NOT IN PROMPTS]
│   ├── Planetary period effects
│   └── BTR Use: Deeper dasha interpretation
│
├── SARAVALI / PHALADEEPIKA / HORASARA / BRIHAT JATAKA / SARVATTHA CHINTAMANI / JATAKA BHARANAM / JATAKA TATTVA
│   └── [Status: ❌ NOT IN PROMPTS — supplementary classical reference material]
│   └── Contains: Additional yogas, timing rules, dignity rules, avasthas
```

---

## 4. 📅 EVENT-SPECIFIC RULES

### 4.1 Life Milestones (Core Events)

```
LIFE MILESTONE EVENTS
├── BIRTH (`events/birth.md` — 4468 lines)
│   ├── 1st house + Moon + Lagna
│   ├── Dasha at birth = Moon Dasha (typically)
│   └── [Status: ✅ IN PROMPTS — basic dasha check]
│
├── MARRIAGE (`events/marriage.md` — 3697 lines) [PRIORITY: HIGH]
│   ├── 7th CSL must signify 2/7/11, NOT 1/6/10/12 ⬅️ KEY RULE MISSING
│   ├── UL (Upapada Lagna) for spouse quality
│   ├── D9 Navamsa verification
│   ├── Dara Pada (A7) for relationship patterns
│   └── [Status: ⚠️ PARTIAL — house/karaka mapping in SHRUTI, CSL check missing]
│
├── CAREER (`events/career.md` — 3963 lines) [PRIORITY: HIGH]
│   ├── 10th CSL must signify 2/6/10/11 ⬅️ KEY RULE MISSING
│   ├── D10 Dasamsa verification
│   ├── D9 10H (4-layer karma archetype analysis)
│   ├── Raja Yogas from Karakamsa for high achievers
│   └── [Status: ⚠️ PARTIAL — house/karaka mapping in SHRUTI, CSL check missing]
│
├── CHILDREN (`events/children.md` — 2935 lines)
│   ├── 5th CSL must signify 2/5/11, NOT 1/4/10
│   ├── CKV (Children-Known-Validation) for gender/count
│   ├── D7 Saptamsa verification
│   └── [Status: ⚠️ PARTIAL — house/karaka mapping only]
│
├── DEATH (`events/death.md` — 3768 lines)
│   ├── 2nd/7th = Maraka houses
│   ├── 8th CSL for longevity
│   ├── 22nd Drekkana from Lagna
│   ├── D60 verification
│   └── [Status: ⚠️ PARTIAL — house/karaka mapping only]
│
└── EDUCATION (`events/education.md` — 2058 lines)
    ├── 4th CSL for graduate level
    ├── 9th CSL for post-graduate
    ├── D24 Siddhamsa verification
    └── [Status: ⚠️ PARTIAL — house/karaka mapping only]
```

### 4.2 Family Events

```
FAMILY EVENTS
├── FATHER DEATH (`events/father-death.md` — 743 lines)
│   ├── 9th CSL must signify 4/8/12
│   └── Check in Maraka Dasha period
│
├── MOTHER DEATH (`events/mother-death.md` — 717 lines)
│   ├── 4th CSL must signify 11/3/7
│   └── Check in Maraka Dasha period
│
├── SIBLING BIRTH (`events/sibling_birth.md` — 448 lines)
│   ├── 3rd house matters
│   └── Check through 3rd CSL
│
├── DIVORCE (`events/divorce.md` — 815 lines)
│   ├── 7th + 8th + 3rd/6th/12th affliction
│   ├── Afflicted UL (8th from UL)
│   └── Punarphoo yoga (Moon-Saturn linkage)
│
└── PARENTS (`events/parents.md` — 392 lines)
    ├── 4th house (mother) + 9th house (father)
    └── Cross-reference with Sun/Moon karakatwa
```

### 4.3 Financial / Professional

```
FINANCIAL / PROFESSIONAL
├── FINANCE (`events/finance.md` — 2407 lines)
│   ├── 2nd + 11th houses
│   ├── D2 Hora for wealth
│   ├── Sudasa for wealth timing (PVR)
│   └── 11th CSL for fulfillment
│
├── PROMOTION (`events/promotion.md` — 570 lines)
│   ├── 10th + 11th + 2nd + 6th
│   └── D10 Dasamsa verification
│
├── BUSINESS START (`events/started-business.md` — 512 lines)
│   ├── 7th (self-employment) + 10th + 11th
│   └── Check CSL chain 3-7-10 (R.S. Chani)
│
├── JOB LOSS (`events/job-loss.md` — 275 lines)
│   ├── 10th CSL must signify 1/5/9/12
│   └── Check during malefic Dasha
│
└── PROPERTY (`events/house.md` / `acquisition.md`)
    ├── 4th CSL must signify 4/11/12
    └── D4 Chathurthamsa for property
```

### 4.4 Health / Crisis

```
HEALTH / CRISIS
├── HEALTH (`events/health.md` — 2926 lines)
│   ├── 6th CSL must signify 6/8/12
│   ├── D30 Trimsamsa verification
│   └── Disease-specific planetary associations
│
├── ACCIDENT (`events/accident.md` — 1510 lines)
│   ├── 8th CSL for accident/longevity
│   ├── Rudra/Trishoola combinations
│   └── Check during malefic Dasha (Mars/Saturn/Rahu/Ketu)
│
├── SURGERY (`events/surgery.md` — 859 lines)
│   ├── 6th + 8th houses
│   └── Mars/Rahu/Saturn significators
│
└── LOSS / LEGAL (`events/loss.md` / `legal.md`)
    ├── 8th/12th/6th houses
    └── Check malefic Dasha periods
```

### 4.5 Special Rules

```
SPECIAL RULES
├── TIMING (`events/timing.md` — 3651 lines) [PRIORITY: HIGH]
│   ├── Multiple Dasa systems per event type:
│   │   ├── Marriage → Vimsottari, Narayana Dasa, Sudasa
│   │   ├── Career → Vimsottari, Narayana, Lagna Kendradi Rasi Dasa
│   │   ├── Wealth → Sudasa, Vimsottari
│   │   ├── Death → Shoola Dasa, Niryaana Shoola Dasa, Kalachakra Dasa
│   │   └── Spiritual → Drigdasa
│   ├── Seershodaya/Prishthodaya: Event timing within Dasa period
│   ├── Digbala: Directional strength per planet
│   ├── BCP (Bhrigu Chakra Paddhati): D60 house activation by age
│   ├── BSP (Bhrigu Shoola Paddhati): Age-specific D60 event triggers
│   └── [Status: ⚠️ PARTIAL — Vimsottari used, other Dasa systems NOT cross-referenced]
│
├── COMBINATIONS (`events/combinations.md` — 1393 lines)
│   ├── Sushmajee: Moon + 6th/8th/12th → BTR blocked (Negative Time)
│   ├── Outer planet aspecting Moon + signifying 2 of {6,8,12} → blocked
│   ├── HVSRCSHARMA D9 10H 4-layer karma archetype
│   ├── Punarphoo yoga for marriage timing
│   └── [Status: ❌ NOT IMPLEMENTED — could gate BTR start]
│
├── TWIN DIFFERENTIATION (`events/twin_differentiation.md` — 598 lines)
│   ├── D60 differences in 1-2 min
│   ├── D40/D45/D60 in 3-4 min
│   └── Varga-specific differentiation by time gap
│
├── TRANSIT (`events/transit.md` — 706 lines)
│   ├── Double Transit (Jupiter + Saturn) verification
│   ├── Sade Sati (Saturn over Moon)
│   ├── Jupiter/Saturn Return verification
│   └── [Status: ⚠️ PARTIAL — Double Transit computed, Returns NOT computed]
│
├── PHYSICAL CHARACTERISTICS (`events/physical-characteristics.md` — 301 lines)
│   ├── Ascendant Sub-Lord's physical significations
│   └── Soft filter for candidate validation
│
└── D60 (`events/d60.md` — 316 lines)
    ├── D60 = karmic blueprint
    ├── Changes every ~2 min
    └── Use for fine BTR tuning
```

---

## 5. 🔧 PIPELINE INTEGRATION STATUS

### 5.1 ✅ Currently Used in Code (Deterministic Calculations)

```
COMPUTED PER CANDIDATE (19+ Systems)
├── Core Ephemeris ─── planets, lagna, houses, ayanamsa
├── Vimshottari Dasha ─── MD/AD/PD/SD (5 levels)
├── Planet Enrichment ─── dignity, FN, avastha, ishta/kashta
├── Panchanga ─── tithi, yoga, karana, vara, nakshatra
├── Vargas ─── D2-D150 (11 divisional charts)
├── D60 Deities ─── per-planet deity mapping
├── Ashtakavarga ─── SAV totals + BAV per-house bindus
├── Nadi (D150) ─── index, deity, phala, karmic sig
├── KP Hierarchy ─── star→sub→sub-sub→sub-sub-sub
├── Jaimini Chara Karakas ─── AK through DK
├── Arudha Lagna + Upapada Lagna + Bhrigu Bindu
├── Vargottama / Parivartana / Pushkar detection
├── Yogini Dasha ─── 36-year cycle
├── Chara Dasha ─── Jaimini sign-based
├── Kalachakra Dasha
├── Vimsopaka Bala ─── Shadvarga strength
├── Shadbala ─── 6-source positional strength
├── Bhava Chalit ─── Rasi→Bhava house shifts
├── Tatwa Shuddhi + Kunda Lagna
├── Gandanta ─── Lagna + Moon
├── Pakshi ─── Bird ruling period
├── Double Transit ─── Jupiter + Saturn
├── Boundary Safety ─── seconds to sign boundaries
├── Hora Lagna + Ghati Lagna
├── Secondary Progressions (Phaladesha)
├── Planetary Maturation Ages
└── Spouse Synastry + D9 cross-verification
```

### 5.2 ✅ Currently in AI Prompts

```
IN BATCH PROMPT (batch-prompt.ts)
├── SHRUTI Reference Table
│   ├── Karaka mapping (marriage→Ve|Ju, career→Su|Sa|Me, etc.)
│   ├── House mapping (marriage→07|02|11, career→10|06|02, etc.)
│   └── Varga mapping (marriage→D9, career→D10, etc.)
├── VSL Data Format ─── #L, #D, #K, #V, #M, etc.
├── DASHA-EVENTS scoring ─── ✓/?/✗ per event
└── Round focus instruction ─── differentiator per round

IN COMPARISON PROMPT (comparison-prompt.ts)
├── Candidate summaries with SCORE
├── Cumulative history ─── per-round performance
└── RULED_IN / RULED_OUT filtering criteria

IN DEEP COMPARISON (runDeepComparison)
├── Complete chart data (all vargas, dashas, KP, etc.)
├── Rule of Origin (computeOriginLinkage result)
├── Pranapada Lagna (PP-Lagna trine check)
└── 7 evaluation criteria (dasha, varga, dignity, houses, origin, pranapada, cumulative)
```

### 5.3 ⚪ Computed but NOT Referenced in Prompts

```
COMPUTED — NOT SENT TO AI (available, unused)
├── Boundary Safety seconds ─── time to next sign flip
├── Hora Lagna / Ghati Lagna ─── wealth/power indicators
├── Dasha Sandhi proximity ─── events near transitions unreliable
├── Full Ashtakavarga BAV ─── only SAV totals sent
├── Full Nadi event correlation scores
├── Spouse D9 verification detail ─── only boolean sent
├── Gandanta severity ─── only "GD" flag sent
├── Panchanga percentages ─── tithi/yoga % complete
├── Secondary progressions ─── 1 day = 1 year method
└── Planetary maturation ages ─── Ju=16, Su=21, Mo=24, etc.
```

### 5.4 ❌ Not Yet Implemented (Priority Queue)

```
NOT IMPLEMENTED — SORTED BY PRIORITY
═══════════════════════════════════════════

P0 — CRITICAL (directly causes wrong winner)
├── [IMPLEMENT] CSL Event-Denial Checking
│   ├── Source: cuspal-sublord.md, kp-method.md, general-btr.md
│   ├── Per-event: verify CSL signifies ALLOW houses, not DENY houses
│   ├── Code exists: kp-sublords.ts correlateEventWithKP() — needs integration
│   └── Fixes: ALL 3 log runs (19:24 never eliminated if CSL validated)
│
├── [IMPLEMENT] Round 1 Elimination Fix
│   ├── Source: NEW_BTR_ALGO_IDEA.md
│   ├── All candidates survive Round 1 (no tournament elimination)
│   └── Fixes: Actual birth time never eliminated early

P1 — HIGH (eliminates wrong candidates before AI cost)
├── [IMPLEMENT] Ruling Planets Pre-Filter (Round 0)
│   ├── Source: ruling-planets.md (706 lines of rules)
│   ├── Check Lagna sign/star/sub lords against RP set
│   ├── Eliminate candidates with ZERO RP match
│   └── Fixes: 50%+ wrong candidates eliminated before dasha analysis
│
├── [IMPLEMENT] Yoga Karaka Per-Ascendant Table (in prompt)
│   ├── Source: bphs-rules.md Ch.34 — 12-row table
│   ├── Embed in batch-prompt.ts SHRUTI section
│   └── Fixes: AI correctly classifies dasha lords per lagna
│
├── [IMPLEMENT] Consensus Score Rewrite
│   ├── Remove: data-presence = score
│   ├── Add: event-correlation = score
│   └── Fixes: deriveConsensusScore false positives
│
└── [IMPLEMENT] Fix Cumulative Score in Prompts
    ├── Source: BTR_LAST_ROUND_ISSUES.md
    ├── Instruct AI to USE cumulative history in deep comparison
    └── Fixes: Cross-round consistency matters in final selection

P2 — MEDIUM (improves accuracy, adds verification axes)
├── [IMPLEMENT] Pranapada Lagna as Hard Filter
│   ├── Source: pranapada.md
│   ├── D60 PP trine check → eliminate if fails
│   └── Already in code — just make it hard eliminator
│
├── [IMPLEMENT] Rule of Origin as Hard Filter
│   ├── Source: rule-of-origin.md
│   ├── Lagna-9th linkage check → eliminate if fails all 3 conditions
│   └── Already in code — just make it hard eliminator
│
├── [IMPLEMENT] Full D9 Positions in VSL
│   ├── Source: BTR_WIDE_OFFSET_ISSUES.md
│   ├── Send full D9 planet positions (not just Ascendant)
│   └── Fixes: R1=R2 identical data problem
│
├── [IMPLEMENT] Full Dasha Timeline in VSL
│   ├── Send full MD/AD sequence (1971-2024), not just birth MD-AD
│   └── Fixes: AI forced to hallucinate dasha sequences
│
└── [IMPLEMENT] Arudha Pada Verification
    ├── Source: bphs-rules.md Ch.29
    ├── Verify marriage via Dara Pada, career via Karma Pada
    └── Adds: cross-verification axis

P3 — LOW (fine-tuning, edge cases)
├── [IMPLEMENT] Ashtakavarga Transit Verification
│   ├── Source: combinations.md
│   └── Verify event dates have favorable bindu counts
│
├── [IMPLEMENT] Shadbala Threshold Check
│   ├── Source: bphs-rules.md Ch.28
│   └── Dasha lord must meet minimum Rupas
│
├── [IMPLEMENT] Negative Time Combination Gate
│   ├── Source: combinations.md (Sushmajee)
│   └── Block BTR if Moon signifies 2 of {6,8,12}
│
├── [IMPLEMENT] Saturn/Jupiter Return Detection
│   └── Verify major life events near return ages
│
├── [IMPLEMENT] Full BAV Ashtakavarga in VSL
│   └── Send per-house bindu counts
│
└── [IMPLEMENT] Ghati Lagna Correction (PVR Method)
    ├── Source: timing.md (PVR Exercise 9)
    └── Use known event + GL error → time correction

P4 — NICE TO HAVE
├── Physical Appearance Check (soft filter)
├── Horary Confirmation (KP advanced method)
├── Genetic/Family Connections (if family data available)
├── CKV (Children-Known-Validation) for gender/count
└── D9 10H 4-layer career archetype analysis
```

---

## 6. 🔗 FILE CROSS-REFERENCE INDEX

```
CATEGORY           │ FILES                                │ TOTAL LINES
───────────────────┼──────────────────────────────────────┼────────────
Methodology        │ methodology/*.md                     │ ~12,000
Classical Texts    │ classical/*.md                       │ ~8,500
Event Rules        │ events/*.md                          │ ~48,000
Chunks (Extracts)  │ chunks/*.{md,txt}                    │ ~120,000
───────────────────┼──────────────────────────────────────┼────────────
TOTAL              │ ~100 files                           │ ~188,500
```

### Quick Navigation

| I want to... | Open this file |
|-------------|---------------|
| Understand the full KP BTR protocol | `methodology/kp-method.md` |
| See how our pipeline currently works | `../apps/api/src/lib/btr/new-algo/btr-loop-orchestrator.ts` |
| Find per-lagna planet classification | `classical/bphs-rules.md` (Ch.34, lines 306-321) |
| Add CSL event-denial checking | `methodology/cuspal-sublord.md` + `events/marriage.md` (lines 83-98) |
| Implement RP pre-filter | `methodology/ruling-planets.md` |
| Understand the new algo proposal | `../NEW_BTR_ALGO_IDEA.md` |
| See actual log failures | `../data/test-candidates/002-barack-obama/logs/mhos-60min-1779554552978/` |
| Find all 56 event files | `events/` (use cross_reference_index.md as index) |
| See what's computed but unused | `../apps/api/src/lib/advanced-btr-methods.ts` |
| See current prompt structure | `../apps/api/src/lib/btr/new-algo/batch-prompt.ts` |

---

## 7. 📊 RULES USAGE SUMMARY

```
TOTAL RULES IN KNOWLEDGE BASE: ~1,500+
─────────────────────────────────────────
✅ USED IN CODE (deterministic):         ~150  (10%)  — ephemeris, dasha, varga, KP, etc.
✅ IN AI PROMPTS:                        ~75   (5%)   — SHRUTI table, VSL format, criteria
⚪ COMPUTED BUT UNUSED:                  ~75   (5%)   — boundary safety, hora/ghati lagna, etc.
❌ IN KNOWLEDGE BASE, NOT IMPLEMENTED:   ~1,200 (80%) — CSL rules, RP filter, classical rules, etc.
```

**The 80% gap is where the real fixes are.** Top 3 priorities alone (CSL checking, RP filter, Yoga Karaka table) would directly address ALL 3 log run failures.

---

---

## 8. 📦 CANONICAL PIPELINE — Complete Results

```
                           CANONICAL PIPELINE
    ┌────────────────────────────────────────────────────────────┐
    │                      14 EXTRACTION AGENTS                  │
    │    56 event files · 13 methodology · 19 classical          │
    │             2,696 raw rules extracted                      │
    └────────────────────────┬───────────────────────────────────┘
                             │ Exact dedup
                             ▼
    ┌────────────────────────────────────────────────────────────┐
    │                EXACT DEDUP (46 duplicate groups)            │
    │                  2,539 unique rules                        │
    └────────────────────────┬───────────────────────────────────┘
                             │ Semantic dedup + verification
                             ▼
    ┌────────────────────────────────────────────────────────────┐
    │            5 DOMAIN VERIFICATION AGENTS                    │
    │  ┌──────────┬──────────┬──────────┬──────────┬──────────┐  │
    │  │ Marriage │ Career & │ Health & │ Educ. &  │ Method.  │  │
    │  │ & Family │ Finance  │ Crisis   │ Timing   │& Classic │  │
    │  │ 46 rules │ 21 rules │493 rules │ 58 rules │ 23 rules │  │
    │  └──────────┴──────────┴──────────┴──────────┴──────────┘  │
    │                 641 CANONICAL RULES                         │
    │             ✅ 590 VERIFIED · ⚠️ 49 MINOR_VAR · ❌ 2 MISMATCH │
    └────────────────────────────────────────────────────────────┘
                             │
                             ▼
    ┌────────────────────────────────────────────────────────────┐
    │              CANONICAL FILE STRUCTURE                      │
    │  canonical/                                                │
    │  ├── MASTER_CANONICAL_MANIFEST.json                        │
    │  ├── MASTER_ALL_RULES.json (2,539 unique raw rules)        │
    │  ├── events/                                               │
    │  │   ├── canonical_marriage_family.json     (46 entries)   │
    │  │   ├── canonical_career_finance.json      (21 entries)   │
    │  │   ├── canonical_health_crisis.json       (493 entries)  │
    │  │   └── canonical_education_timing.json    (58 entries)   │
    │  └── methodology/                                          │
    │      └── canonical_methodology_classical.json (23 entries) │
    └────────────────────────────────────────────────────────────┘
```

### Canonical Entry Format (per rule)
```json
{
  "canonicalId": "MARRIAGE-001",
  "title": "7th Cusp Sub-Lord for Marriage",
  "canonicalBody": "Verbatim quote from most authoritative source",
  "status": "VERIFIED",
  "verificationNotes": "Matches KP Part 1 p.107-112, BPHS Ch.34",
  "classicalReference": "BPHS, KP Reader",
  "allowHouses": [2, 7, 11],
  "denyHouses": [1, 6, 10, 12],
  "mergedSourceCount": 4,
  "sources": [{"file": "marriage.md", "line": 90, "sourceName": "..."}]
}
```

### Verification Status Legend
| Status | Meaning | Count |
|--------|---------|-------|
| ✅ VERIFIED | Matches classical source | 590 |
| ⚠️ MINOR_VARIATION | Same principle, different wording | 49 |
| ❌ MISMATCH | Contradicts classical source | 2 |

### Key Merged Rules
| Rule | Appeared In | Merged Into |
|------|-------------|-------------|
| Nakshatra Verification | 15+ event files | 1 canonical entry |
| Lagna Verification | 15+ event files | 1 canonical entry |
| Trinal Relationship Check | 15+ event files | 1 canonical entry |
| 7th CSL Marriage Rule (2/7/11) | 8 files | 1 canonical entry |
| 10th CSL Career Rule (2/6/10/11) | 8 files | 1 canonical entry |
| Event-Based BTR boilerplate | 23 files | 1 canonical entry |
| Gautam Verma Cross-Reference | 24 files | 1 canonical entry |

---

*End of Mind Map — Use `Ctrl+F` to search for specific rules or `[Status]` tags to find implementation gaps.*
