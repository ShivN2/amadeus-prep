---
title: "Module 12: TST Creation - Itinerary Pricing"
weight: 12
type: module
---

## Learning Objectives
- Price a PNR itinerary using the FXP command to create a TST
- Read and verify the TST (fare, taxes, total) before ticketing
- Handle pricing for multi-segment and multi-passenger itineraries

## Overview
Once the PNR has passengers and flights, you need to price it — calculate the exact fare including taxes. This creates a TST (Transitional Stored Ticket), which is the pricing record stored in the PNR. The TST is what gets converted into an actual ticket. Getting the pricing right is critical — wrong pricing means the airline or agency loses money.

## Key Concepts

### Concept 1: Pricing Command (FXP)
`FXP` prices the entire itinerary for all passengers using the lowest available fare. Amadeus calculates the base fare, taxes, and total. The result is stored as a TST in the PNR. Always save (`ER`) after pricing.

### Concept 2: TST (Transitional Stored Ticket)
The TST is a pricing record attached to the PNR. It holds the fare breakdown: base fare, each tax component, total amount, fare basis code, and validity dates. Think of it as a "price tag" — it's not a ticket yet, but it's the price that will become the ticket.

### Concept 3: Displaying the TST
`TQT` displays all TSTs in the PNR. You'll see the fare calculation, tax breakdown, and total per passenger. Always review the TST before issuing a ticket — once ticketed, changes are expensive.

### Concept 4: Pricing Modifiers
`FXP/R,U` prices with a specific currency (U = USD). `FXP/R,FC-AI` forces Air India fares. `FXP/PAX` prices only adults. Modifiers let you control which fares the system uses and in which currency.

### Concept 5: Infant and Child Pricing
Infants (under 2, no seat) usually pay 10% of adult fare. Children (2-11) often get 75% or a published child fare. Use `FXP/INF` to price infants separately. The TST shows different amounts for different passenger types.

### Concept 6: Tax Breakdown
The TST shows individual taxes: YQ/YR (fuel/carrier surcharge), IN (India PSF), K3 (India GST), JN (airport development fee), etc. Understanding tax codes helps you explain the total to customers — the base fare might be ₹3,000 but taxes add another ₹2,500.

## Step-by-Step Guide
1. Ensure the PNR has names and confirmed segments.
2. Type `FXP` to price the itinerary.
3. Review the displayed fare: base fare, taxes, total, and fare basis code.
4. Display the stored TST: `TQT`.
5. Verify it matches what you expect and what you told the customer.
6. Save: `ER`.
7. The TST is now ready for ticket issuance (Module 13).

## Real-World Scenario
**Situation:** You've built a PNR for two adults and one infant (DEL-BOM return on Air India). The customer asks for the total price.

**Question:** How do you price this correctly?

**Answer:** Type `FXP` to price the adults. The display shows base fare ₹5,000 + taxes ₹2,800 = ₹7,800 per adult (₹15,600 for two). Then the infant shows ₹500 + taxes ₹280 = ₹780. Total for the family: ₹16,380. Display with `TQT` to confirm all three TSTs are correct. Communicate the breakdown to the customer so there are no surprises.

## Common Mistakes
- **Mistake 1:** Not reviewing the TST before ticketing
  - *Why it matters:* The system might price at a higher class than expected, or include wrong tax calculations
  - *Correct approach:* Always `TQT` to review the fare breakdown. Check the fare basis code matches the class you sold.

- **Mistake 2:** Pricing after the fare's advance purchase has expired
  - *Why it matters:* The system may price at a higher fare because the cheapest one is no longer available
  - *Correct approach:* Price the PNR as soon as possible after booking, while the fare is still valid

- **Mistake 3:** Forgetting to save after pricing
  - *Why it matters:* The TST isn't stored — if you try to ticket later, there's no pricing record
  - *Correct approach:* Always `ER` after `FXP` to save the TST into the PNR

## Key Glossary Terms
- **TST (Transitional Stored Ticket):** The stored pricing record in a PNR that holds fare, taxes, and total
- **FXP (Price Itinerary):** The command that calculates and stores the fare for a PNR
- **Base Fare:** The fare amount before taxes and surcharges
- **YQ/YR:** Airline surcharges (fuel surcharge, carrier-imposed fees) — often a significant portion of the total
- **Fare Basis Code:** The code identifying which fare was used (appears in the TST)

## Interview Tip
Say: "I know how to price itineraries, read TSTs, and verify fare breakdowns including taxes. I always review the TST before ticketing because pricing errors are expensive to fix after issuance."

## Resources
- Amadeus Help: `HE FXP` — pricing command reference
- Amadeus Help: `HE TQT` — TST display reference
- Amadeus Help: `HE FXP*` — pricing modifier options
