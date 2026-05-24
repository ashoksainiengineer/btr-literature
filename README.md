# 🏛️ BTR Literature — Birth Time Rectification Knowledge Base

> **373+ sources · 143 files · 87,000+ lines of astrological knowledge**

A comprehensive, structured knowledge base for **Birth Time Rectification (BTR)** in Vedic astrology. Contains extracted rules, classical text references, KP methodology, and event-specific verification rules from 300+ classical and modern sources.

> ⚠️ **IMPORTANT**: This repository is a **compilation** of publicly available astrological knowledge for **research and educational purposes only**. We do not claim ownership of any original content. See [SOURCES.md](./SOURCES.md) for full attribution and licensing details.

---

## 📚 Repository Structure

```
btr-literature/
│
├── events/                  # Event-specific BTR rules (56 files)
│   ├── marriage.md          Marriage & partnership rules (3,697 lines)
│   ├── career.md            Career & profession rules (3,963 lines)
│   ├── death.md             Death & longevity rules (3,768 lines)
│   ├── children.md          Children & progeny rules (2,935 lines)
│   ├── health.md            Health & disease rules (2,926 lines)
│   ├── timing.md            Event timing & dasha rules (4,094 lines)
│   ├── combinations.md      Yogas & planetary combinations (1,437 lines)
│   └── ... (48 more event files)
│
├── methodology/             # BTR protocols and methods (13 files)
│   ├── kp-method.md         Complete KP BTR protocol (4,597 lines)
│   ├── general-btr.md       General BTR methodology (4,298 lines)
│   ├── ruling-planets.md    Ruling Planets system (706 lines)
│   ├── cuspal-sublord.md    CSL hierarchy & rules (286 lines)
│   ├── pranapada.md         Pranapada Lagna method (571 lines)
│   ├── rule-of-origin.md    Rule of Origin verification (196 lines)
│   └── ... (7 more methodology files)
│
├── classical/               # Classical text references (18 files)
│   ├── bphs-rules.md        BPHS Ch.28-39 (Shadbala, Arudha, Yogas)
│   ├── bv-raman-full.md     B.V. Raman full extraction (636 lines)
│   ├── laghu-parashari.md   Laghu Parashari lordship rules (971 lines)
│   ├── jataka-parijata.md   Jataka Parijata timing rules (1,013 lines)
│   └── ... (14 more classical files)
│
├── source-extracts/         # Raw extracts from sources (59 files)
│   ├── kp_Part1.txt — kp_Part5.txt       KP Readers 1-5
│   ├── astro_kp4_chunk_1-4.txt            KP Part IV chunks
│   ├── bphs_chunk_1-5.txt                 BPHS text chunks
│   ├── phd_theses_extraction.md           Academic theses
│   ├── academic_papers_extraction.md      Research papers
│   ├── youtube_btr_extraction.md          YouTube transcripts
│   ├── podcast_btr_extraction.md          Podcast episodes
│   └── ... (45 more extract files)
│
├── scripts/
│   └── pipeline.sh          Extraction pipeline script
│
├── SOURCES.md               Full source catalog with attribution
├── sources-manifest.json    Machine-readable source inventory
└── BTR_KNOWLEDGE_MINDMAP.md Complete mind map of all knowledge
```

---

## 📊 Coverage Overview

| Domain | Files | Lines | Key Methods |
|--------|-------|-------|-------------|
| **Events** | 56 | ~48,000 | KP CSL, RP, Dasha, Transit, Varga |
| **Methodology** | 13 | ~12,000 | KP Protocol, Pranapada, Tatwa, Kunda |
| **Classical** | 18 | ~8,500 | BPHS, BV Raman, Jataka, Laghu Parashari |
| **Source Extracts** | 59 | ~18,500 | KP Readers, BPHS chunks, Academic papers |
| **Total** | **146** | **~87,000** | |

### Event Types Covered (56 files)

| Category | Events |
|----------|--------|
| **Life Milestones** | birth, marriage, career, death, education |
| **Family** | children, father-death, mother-death, siblings, parents, grandparents |
| **Financial** | finance, investment, acquisition, property, inheritance |
| **Health** | health, surgery, accident, legal matters |
| **Professional** | promotion, job-loss, business, foundation, expansion, election, award, achievement |
| **Life Changes** | relocation, separation, divorce, milestone, spiritual |
| **Special** | twin differentiation, yoga, d60, physical characteristics |
| **Prediction-Based** | career-bavishyavani, marriage-bavishyavani, childbirth-bavishyavani, death (father/mother), surgery-accident |

### BTR Methods Covered (13 methodologies)

| Method | File(s) | Precision Level |
|--------|---------|-----------------|
| **KP Cuspal Sub-Lord (CSL)** | kp-method.md, cuspal-sublord.md | ~5-12 min (Sub), ~20-50 sec (Sub-Sub) |
| **Ruling Planets (RP)** | ruling-planets.md, kp-method.md | Initial filter |
| **Pranapada Lagna** | pranapada.md | ~24 sec (D1), ~6 sec (D60) |
| **Pancha Tatwa** | pancha-tatwa.md | ~12 sec |
| **Kunda (Nava-Navamsa)** | kunda.md | ~13 min cycles |
| **Mandi-Lagna Test** | mandi-lagna.md | Angular distance check |
| **Prana Dasha** | prana-dasha.md | Days-level precision |
| **Prashna (Horary)** | prashna-method.md | Unknown birth time |
| **Prenatal Epoch** | prenatal-epoch.md | Conception-based |
| **Rule of Origin** | rule-of-origin.md | Lagna-9th linkage |
| **Varga Sensitivity** | varga-sensitivity.md | D9=13min, D60=2min |
| **KP BTR Protocol** | general-btr.md | 6-step complete process |
| **PVR Integrated** | classical/pvr-integrated-approach.md | 10 dasha systems, GL correction |

---

## 📝 Rule Format

Each knowledge file follows a consistent structure for rules:

```markdown
## Rule: [Rule Title]
**Source:** [Original Source Name / Author]
**URL:** [Source URL (if online)]
**Rule:** [Verbatim rule text with > quotes from source]
**Application:** [How this rule applies to BTR]
**Houses/Planets:** [Relevant houses and planets]
**BTR Relevance:** [Specific BTR use case]
```

### Example Rule

From `events/marriage.md`:
```markdown
## Rule: 7th Cusp Sub-Lord for Marriage
**Source:** Jagannath Hora KP BTR Guide (Parminder Chahal, 2026)
**URL:** https://jagannathhora.com/kp-birth-time-rectification/...
**Rule:** "Marriage: Relevant cusp: 7th. The 7th Cusp Sub-Lord must signify 
houses: 2, 7, or 11. If the 7th CSL signifies 1, 6, 10, or 12 (houses of 
denial), marriage is denied."
**Application:** For each candidate birth time, verify the 7th cusp sub-lord 
signifies ALLOW houses (2/7/11) — not DENY houses (1/6/10/12).
**Houses/Planets:** 7th house, Cuspal Sub-Lord, Venus (karaka), Jupiter (karaka)
```

---

## 🔗 Key Cross-References

- **SOURCES.md** — Detailed catalog of all 373+ sources with URLs, authors, and attribution
- **sources-manifest.json** — Machine-readable source inventory with processing status
- **source-extracts/cross_reference_index.md** — Event-to-source matrix (which sources contributed to which event files)
- **BTR_KNOWLEDGE_MINDMAP.md** — Hierarchical mind map of all rules organized by domain

---

## 🎯 Purpose & Usage

This knowledge base was created for:

1. **AI-Powered BTR Systems** — Structured rule extraction for LLM-based birth time rectification
2. **Astrological Research** — Comprehensive cross-reference of classical and modern BTR methods
3. **Algorithm Development** — Rules formatted for parsing into BTR verification engines
4. **Quality Assurance** — Multi-source verification ensuring rule accuracy
5. **Educational Reference** — Complete compilation of BTR methods in one place

### How to Use

```python
# Example: Load marriage rules for AI analysis
with open("events/marriage.md") as f:
    marriage_rules = f.read()
# Each ## Rule: block is a self-contained verification rule
# Use cross_reference_index.md to trace which sources support each rule
```

---

## 📊 Source Statistics

| Source Type | Count | Details |
|-------------|-------|---------|
| **Classical Texts** | 18 | BPHS, Jataka Parijata, Phaladeepika, Saravali, Brihat Jataka, Bhrigu Sutras, etc. |
| **KP Readers** | 5 vols | KP Part 1-5, Astro Secrets KP Part IV (4 chunks) |
| **Modern Textbooks** | 2 | PVR Integrated Approach, B.V. Raman Hindu Predictive Astrology |
| **Online Portals** | 25+ | Jagannath Hora, AstroSage, Rajvidya, StarSutra, BP Lama, etc. |
| **Academic Papers** | 18+ | PhD theses, research papers from CrossRef, Semantic Scholar, arXiv |
| **Video/Podcast** | 18+ | YouTube, The Astrology Podcast |
| **Software Docs** | 5+ | Parashara's Light, KPAstrology, Jagannatha Hora |
| **Forum/Community** | 10+ | Reddit, Quora, GitHub open-source projects |
| **Total** | **373+** | 141 fully processed, 232 identified pending |

---

## 📜 License & Disclaimer

> **This repository is a compilation of publicly available astrological knowledge.**

- All classical texts remain in the public domain or under the copyright of their respective translators/publishers.
- KP Reader content © K.S. Krishnamurti Estate.
- Modern textbook content © respective authors (PVR Narasimha Rao, B.V. Raman Estate, etc.).
- Online tutorial content © respective authors and platforms.
- Academic papers © respective authors and journals.
- This compilation is provided for **research, educational, and reference purposes only** under fair use.

**Full attribution for every source** is available in [SOURCES.md](./SOURCES.md).

---

*Built for the AI-Pandit BTR Engine • Source catalog: SOURCES.md • Questions: Open an issue*
