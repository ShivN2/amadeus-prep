---
title: "Module 6: General Remarks & Frequent Flyer"
weight: 6
type: module
---

## Learning Objectives
- Add general, confidential, and corporate remarks to a PNR
- Add frequent flyer numbers to passenger records
- Understand when and why different remark types are used

## Overview
Remarks are free-text notes you attach to a PNR for internal reference. They might say "VIP customer" or "Needs wheelchair at gate." Frequent flyer numbers link the passenger to their loyalty program so they earn miles. Both are standard additions to most bookings and show attention to detail.

## Key Concepts

### Concept 1: General Remark (RM Command)
`RM VIP CLIENT - HANDLE WITH PRIORITY` adds a visible note to the PNR. Anyone who opens this PNR can see it. Use for general instructions that all agents should know.

### Concept 2: Confidential Remark (RC Command)
`RC RATE NEGOTIATED AT 15% DISCOUNT` adds a remark visible only to your office. Other agencies sharing this PNR cannot see it. Use for pricing notes, internal instructions, or sensitive information.

### Concept 3: Corporate Remark (RX Command)
These are used by companies to track policy compliance. Example: `RX COST CENTER 4502/APPROVAL REF TRV-2024-089`. Helps the corporate client reconcile travel expenses.

### Concept 4: Frequent Flyer Number (FFN Command)
`FFN AI-123456789/P1` adds Air India Flying Returns number 123456789 for passenger 1. The airline validates the number — if it's wrong, it gets rejected. Always add FFN when the customer has one.

### Concept 5: Cross-Accrual
A Star Alliance member flying Lufthansa can earn Air India miles. Enter the FFN under the alliance partner: `FFN AI-123456789/P1` even on LH segments. The system handles the cross-accrual. This is a major customer service win.

### Concept 6: Category Remarks
Some remarks are categorized for automated processing. `RM *C-APPROVED BY MANAGER` might trigger corporate approval workflows. The `*` prefix followed by a letter categorizes the remark. Check your office's specific category codes.

## Step-by-Step Guide
1. Retrieve the PNR: `RTABC123`.
2. Add a general remark: `RM PASSENGER PREFERS VEGETARIAN MEAL`.
3. Add a confidential remark: `RC AGENCY COMMISSION 9%`.
4. Add frequent flyer: `FFN AI-123456789/P1`.
5. Save: `ER`.
6. Verify the remarks appear in the PNR display.

## Real-World Scenario
**Situation:** Mr. Kumar is a frequent business traveler with Star Alliance Gold status (Air India FFN: 987654321). He's flying AI to Frankfurt, then connecting on Lufthansa to Munich. He also has a corporate travel policy requiring cost center documentation.

**Question:** What elements do you add to his PNR?

**Answer:** First, add his FFN: `FFN AI-987654321/P1`. The system will apply it to both AI and LH segments since both are Star Alliance. Then add the corporate remark: `RX COST CENTER 7801/AUTH REF CORP-2024-456`. Add a general remark about his status: `RM STAR ALLIANCE GOLD - PRIORITY BOARDING AND LOUNGE ACCESS`. Save with `ER`. This ensures he gets miles, his company tracks costs, and any agent handling his PNR knows his status.

## Common Mistakes
- **Mistake 1:** Putting sensitive pricing info in general remarks (RM) instead of confidential (RC)
  - *Why it matters:* Other agencies or the customer may see negotiated rates or commissions
  - *Correct approach:* Always use RC for pricing, commissions, and internal financial notes

- **Mistake 2:** Entering the wrong frequent flyer number
  - *Why it matters:* Miles credit to the wrong person, or the airline rejects the entry
  - *Correct approach:* Ask the customer to read the number twice or share their loyalty card

- **Mistake 3:** Forgetting to add FFN for connecting alliance flights
  - *Why it matters:* Customer misses miles on partner segments
  - *Correct approach:* Add FFN once — the system applies it across all eligible alliance segments

## Key Glossary Terms
- **RM (General Remark):** A free-text note visible to everyone who accesses the PNR
- **RC (Confidential Remark):** A note visible only to the creating office
- **FFN (Frequent Flyer Number):** The loyalty program membership number linked to a passenger
- **Cross-Accrual:** Earning miles on one airline's program while flying a partner airline
- **Cost Center:** A corporate accounting code used to track and allocate travel expenses

## Interview Tip
Say: "I always ask about frequent flyer memberships and add the FFN — it's a simple step that significantly improves customer experience. I also know the difference between RM and RC to protect sensitive information."

## Resources
- Amadeus Help: `HE RM` — remark commands reference
- Amadeus Help: `HE FFN` — frequent flyer entry reference
- [Air India Flying Returns](https://www.airindia.com/in/en/fly-with-us/flying-returns.html) — India's largest FFP
