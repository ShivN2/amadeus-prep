---
title: "Module 11: Fare Display & Rules"
weight: 11
type: module
---

## Learning Objectives
- Display fares for a specific route using the FQD command
- Read fare conditions including penalties, advance purchase, and minimum stay
- Understand the relationship between booking classes and fare rules

## Overview
Before pricing a ticket, you need to know what fares are available and what rules apply. Fare displays show you all published fares for a route — from the cheapest promotional fare to full-flex business class. Fare rules tell you the fine print: can the passenger change dates? Get a refund? Is there a minimum stay? This knowledge helps you advise customers and avoid costly mistakes.

## Key Concepts

### Concept 1: Fare Display (FQD Command)
`FQDDELBOM/D20JUN/AAI` displays all Air India fares from Delhi to Mumbai valid for 20 June. The display shows fare basis codes, one-way/round-trip prices, booking classes, and currency. It's your pricing starting point.

### Concept 2: Fare Basis Code
Each fare has a code like YOWAI, VLXAI, or HKXRT. This code encodes the class, restrictions, and type. Y = economy full fare, V = discount, L = lowest. The letters after tell you about round-trip requirements, advance purchase, etc. You don't need to memorize every code, but learn to recognize the patterns.

### Concept 3: Fare Rules (FQN Command)
`FQN1` displays rules for fare line 1 from your fare display. Rules are organized in categories (paragraphs): penalties (category 16), advance purchase (category 5), minimum stay (category 6), refundability, blackout dates, and more.

### Concept 4: Key Rule Categories
**Category 5 — Advance Purchase:** "Ticket must be issued 14 days before departure." **Category 6 — Minimum Stay:** "Must stay at least one Saturday night." **Category 16 — Penalties:** "Change fee INR 3000, no refund after departure." **Category 31 — Voluntary Changes:** Details on rebooking conditions.

### Concept 5: Refundable vs. Non-Refundable
Full-fare tickets (Y, C, F classes) are usually fully refundable. Discounted fares (V, Q, etc.) are often non-refundable or have steep penalties. This is the most common source of customer complaints — always communicate refund rules at the time of booking.

### Concept 6: Fare Construction
A round-trip fare might combine two one-way components. Complex itineraries use fare construction rules to combine fares from different segments. The system handles most of this, but understanding it helps you troubleshoot pricing errors.

## Step-by-Step Guide
1. Display fares: `FQDDELBOM/D20JUN` (all airlines) or add `/AAI` for Air India only.
2. Review the list: note fare basis codes, prices, and classes.
3. Check rules for a specific fare: `FQN1` (for line 1) or `FQN3` for line 3.
4. Look at Category 16 (penalties) first — this is what customers care about most.
5. Check Category 5 (advance purchase) — ensure the ticket can still be issued in time.
6. Advise the customer: price, restrictions, and what happens if they need to change.

## Real-World Scenario
**Situation:** A customer wants the cheapest Delhi to Mumbai fare for 20 June on Air India. They ask: "What if I need to change the date later?"

**Question:** How do you find the fare and answer their question?

**Answer:** Display fares: `FQDDELBOM/D20JUN/AAI`. The cheapest fare might be VLXAI at INR 3,500. Check its rules: `FQN1`, go to Category 16 (penalties). If it says "Date change: INR 3,000 + fare difference, non-refundable" — tell the customer: "The cheapest fare is ₹3,500, but changing the date costs ₹3,000 plus any fare difference, and there's no refund option. The next fare up at ₹5,200 allows free changes. Which would you prefer?"

## Common Mistakes
- **Mistake 1:** Not checking fare rules before ticketing
  - *Why it matters:* Customer buys a non-refundable ticket, then wants a refund — agent gets blamed
  - *Correct approach:* Always review Category 16 and communicate penalties BEFORE the customer commits

- **Mistake 2:** Quoting a fare that requires advance purchase the customer can't meet
  - *Why it matters:* The fare shows in the display but can't be ticketed because the advance purchase window has passed
  - *Correct approach:* Check Category 5 — if it says "14 days advance," and travel is in 3 days, that fare is not available

- **Mistake 3:** Confusing one-way and round-trip fares
  - *Why it matters:* Quoting a one-way price when the customer expects round-trip, or vice versa
  - *Correct approach:* The fare display clearly marks OW (one-way) and RT (round-trip) — read carefully

## Key Glossary Terms
- **Fare Basis Code:** An alphanumeric code identifying a specific fare and its rules (e.g., VLXAI)
- **Advance Purchase:** The minimum number of days before departure that a ticket must be purchased
- **Minimum Stay:** The minimum time a passenger must stay at the destination (e.g., Saturday night rule)
- **Penalty:** A fee charged for changing or cancelling a ticket
- **Non-Refundable:** A ticket that cannot be refunded (or only refundable minus a substantial penalty)

## Interview Tip
Say: "I always check fare rules — especially penalties and advance purchase — before recommending a fare. Communicating restrictions upfront prevents disputes and builds customer trust."

## Resources
- Amadeus Help: `HE FQD` — fare display reference
- Amadeus Help: `HE FQN` — fare rules/notes reference
- [IATA Fare Construction](https://www.iata.org/) — Industry fare construction standards
