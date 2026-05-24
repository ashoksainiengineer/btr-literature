# Mandi-Lagna Rectification Test — Birth Time Verification

**Source:** Gautam Verma KP BTR Guide
**URL:** https://www.gautamcrystals.com/post/kp-astrology-birth-time-rectification-methods-by-gautam-verma-use-our-tools-for-free-on-the-webs
**Original source:** KP Astrology principles (Prof. K.S. Krishnamurthy)
**Retrieved:** 2026-05-24

---

## Core Principle

This method checks the angular distance between the **Mandi point** (a sensitive timing point derived from Saturn's influence) and the **Lagna** (Ascendant). A correct birth time produces a specific harmonic relationship — Mandi and Lagna should be 1, 5, 7, or 9 signs apart.

> Mandi is a mathematical point in KP astrology representing the "hour of Saturn" — it moves through the zodiac at a variable rate and is used as a sensitive timing marker.

---

## Step-by-Step Procedure

### Step 1: Obtain Mandi and Lagna Degrees

Use KP astrology software (e.g., Jagannatha Hora, AstroSage, or KP Star One) to get:
- **Mandi** degree at the proposed birth time
- **Lagna** (Ascendant) degree at the proposed birth time

### Step 2: Convert to Full Zodiac Degrees

Convert both positions to absolute zodiac degrees (0°–360°):

| Sign | Abbreviation | Range | Base Degree |
|------|-------------|-------|-------------|
| Aries | Ari | 0°–30° | 0° |
| Taurus | Tau | 30°–60° | 30° |
| Gemini | Gem | 60°–90° | 60° |
| Cancer | Can | 90°–120° | 90° |
| Leo | Leo | 120°–150° | 120° |
| Virgo | Vir | 150°–180° | 150° |
| Libra | Lib | 180°–210° | 180° |
| Scorpio | Sco | 210°–240° | 210° |
| Sagittarius | Sag | 240°–270° | 240° |
| Capricorn | Cap | 270°–300° | 270° |
| Aquarius | Aqu | 300°–330° | 300° |
| Pisces | Pis | 330°–360° | 330° |

```
Absolute_Degrees = Base_Degree_of_Sign + Degrees_Within_Sign
```

**Example:** 2° Aquarius = 300° + 2° = **302°**

### Step 3: Calculate Angular Separation

```
Separation = (Lagna_Absolute - Mandi_Absolute) mod 360
```

Ensure the result is in the range 0°–360°.

### Step 4: Determine Signs Apart

```
Signs_Apart = floor(Separation ÷ 30)
```

This gives the number of full zodiac signs (30° each) between Mandi and Lagna.

### Step 5: Apply the Mandi-Lagna Test

The birth time is likely **accurate** if Mandi and Lagna are in any of these positional relationships:

| Relationship | Signs Apart | Angular Range | Interpretation |
|-------------|-------------|---------------|----------------|
| **1st from each other** | 0 | 0°–30° | Conjunction — strong affirmation |
| **5th from each other** | 4 | 120°–150° | Trine — harmonious, supportive |
| **7th from each other** | 6 | 180°–210° | Opposition — balanced, complementary |
| **9th from each other** | 8 | 240°–270° | Trine — Dharma, purposeful alignment |

> **If the signs-apart value is NOT one of {0, 4, 6, 8}, the birth time likely needs correction.** Adjust the birth time incrementally (±5–10 minutes) and re-test.

---

## Key Formula Summary

```
Δ = (Lagna_deg - Mandi_deg) mod 360
n = floor(Δ / 30)
VALID if n ∈ {0, 4, 6, 8}
```

---

## Software Recommendations

- **Jagannatha Hora** — Free, comprehensive KP features including Mandi position
- **AstroSage** — Free with KP options, supports Mandi calculation
- **KP Star One** — Paid, purpose-built for KP astrology
- **KPAstro** — Online calculator with Mandi output

---

## Notes & Caveats

1. **Mandi is NOT Gulika** — In KP astrology, Mandi is distinct from Gulika (another Saturn-derived point). Ensure your software's Mandi calculation follows KP conventions.
2. **Software dependence** — Mandi calculation varies between software packages. Use consistent software for both Mandi and Lagna.
3. **Confirmatory method** — The Mandi-Lagna test alone is NOT sufficient for final rectification. Use alongside the Vighati method, RP analysis, and life event verification.
4. **Edge cases** — When Mandi and Lagna are exactly conjunct (0° separation) or exactly opposed (180°), the test is considered strongly affirmative.

---

**Cross-reference:** `/data/btr-knowledge/methodology/kp-method.md` (Nakshatra Vighati method), `/data/btr-knowledge/methodology/prenatal-epoch.md` (EPUJ method)
