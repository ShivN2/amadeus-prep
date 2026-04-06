---
title: "Module 7: OSI & SSR Elements"
weight: 7
type: module
---

## Learning Objectives
- Understand the difference between OSI (informational) and SSR (actionable) messages
- Add common SSRs like meal preferences, wheelchair requests, and unaccompanied minors
- Know which SSRs are free-text vs. coded

## Overview
OSI and SSR are messages sent to the airline through the PNR. OSI (Other Service Information) is "FYI" — purely informational, no action required. SSR (Special Service Request) asks the airline to DO something — provide a wheelchair, a vegetarian meal, or extra oxygen. Getting these right directly affects the passenger's experience.

## Key Concepts

### Concept 1: OSI (Other Service Information)
`OS AI PASSENGER IS COMPANY CEO` sends an informational note to Air India. The airline sees it but doesn't need to act on it. Use for VIP alerts, corporate notes, or general FYIs.

### Concept 2: SSR (Special Service Request)
`SR VGML/P1` requests a vegetarian meal for passenger 1. The airline must acknowledge and act on it. SSRs have standardized 4-letter codes — VGML (vegetarian), WCHR (wheelchair to/from ramp), UMNR (unaccompanied minor).

### Concept 3: Common Meal SSR Codes
VGML = vegetarian, AVML = Asian/Hindu vegetarian, HNML = Hindu non-vegetarian, MOML = Muslim meal, DBML = diabetic, BBML = baby meal, CHML = child meal. These are among the most frequently requested SSRs.

### Concept 4: Wheelchair SSR Codes
WCHR = wheelchair to/from aircraft (can climb stairs), WCHS = wheelchair to/from seat (cannot climb stairs), WCHC = wheelchair, completely immobile (must be carried). The specificity matters — the wrong code means the wrong assistance level.

### Concept 5: SSR Status Codes
After you enter an SSR, the airline responds: `HK` = confirmed, `KK` = airline confirmed externally, `NN` = requested (pending), `UC` = unable to confirm. Always check back — a pending SSR might not be fulfilled.

### Concept 6: DOCS and DOCO SSRs
`SR DOCS AI HK1/P/IN/J1234567/IN/15MAR90/M/20DEC30/SHARMA/RAJEEV` adds passport information. `DOCO` adds visa details. Many airlines now require DOCS for international travel — it's checked at departure.

## Step-by-Step Guide
1. Retrieve the PNR: `RTABC123`.
2. To add a meal request: `SR VGML/P1` (vegetarian for passenger 1).
3. To add a wheelchair: `SR WCHR/P1`.
4. To add passport info: `SR DOCS AI HK1/P/IN/J1234567/IN/15MAR90/M/20DEC30/SHARMA/RAJEEV`.
5. To add an informational note: `OS AI CTC 9876543210 EMERGENCY`.
6. Save: `ER`. Check the SSR status codes in the updated PNR.

## Real-World Scenario
**Situation:** Mrs. Gupta, age 72, is flying Delhi to London on Air India. She needs a wheelchair at the airport, a diabetic meal, and her passport details must be added for the international flight.

**Question:** What entries do you make?

**Answer:** Wheelchair: `SR WCHR AI/P1` (she can walk short distances but needs help in the terminal). Meal: `SR DBML/P1` for diabetic meal. Passport: `SR DOCS AI HK1/P/IN/K9876543/IN/12JUN54/F/20MAR30/GUPTA/SUNITA`. Save with `ER` and verify all SSRs show HK or KK status. If any show NN, follow up with the airline before the travel date.

## Common Mistakes
- **Mistake 1:** Using the wrong wheelchair code (WCHR vs WCHS vs WCHC)
  - *Why it matters:* WCHR means they can climb stairs; WCHC means they must be lifted. Wrong code = wrong service level
  - *Correct approach:* Ask specifically: "Can the passenger walk short distances? Climb stairs?" Then choose the right code

- **Mistake 2:** Not checking SSR status after saving
  - *Why it matters:* An SSR showing NN (pending) may never get confirmed, and the passenger arrives without their wheelchair or meal
  - *Correct approach:* Check back before travel — if still NN, call the airline directly

- **Mistake 3:** Confusing OSI with SSR
  - *Why it matters:* An OSI saying "NEEDS WHEELCHAIR" is just a note — the airline won't arrange one. You need an SSR for action.
  - *Correct approach:* If you need the airline to DO something, use SSR. If it's just information, use OSI.

## Key Glossary Terms
- **OSI (Other Service Information):** An informational message to the airline — no action required
- **SSR (Special Service Request):** A request for the airline to provide a specific service
- **DOCS:** Passport/travel document information added as an SSR (required for international flights)
- **VGML:** Vegetarian meal SSR code
- **WCHR:** Wheelchair request — passenger can walk short distances and climb stairs

## Interview Tip
Say: "I know the key SSR codes for meals, wheelchairs, and travel documents. I always verify SSR confirmation status before the travel date because an unconfirmed SSR means the service may not be provided."

## Resources
- Amadeus Help: `HE SR` — SSR command reference
- Amadeus Help: `HE OS` — OSI command reference
- [IATA SSR Code List](https://www.iata.org/) — Standard SSR codes reference
