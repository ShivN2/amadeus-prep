---
title: "Module 13: Issuance of Electronic Ticket"
weight: 13
type: module
---

## Learning Objectives
- Issue an electronic ticket from a stored TST
- Verify ticket issuance and read the e-ticket display
- Understand void and reissue scenarios

## Overview
Issuing the ticket is the moment the booking becomes paid and confirmed. The TST (pricing record) is converted into an actual e-ticket with a 13-digit ticket number. This is a financial transaction — once issued, the airline has the money (or the agency owes it). Accuracy here is non-negotiable because voiding or correcting a ticket after issuance is complex and sometimes impossible.

## Key Concepts

### Concept 1: Ticket Issuance (TTP Command)
`TTP` issues e-tickets for all passengers in the PNR based on stored TSTs. The system generates a 13-digit ticket number (e.g., 098-1234567890) and records it in the PNR. The first three digits are the airline code (098 = Air India).

### Concept 2: Form of Payment
Before issuing, you need to specify how the customer is paying. `FP CASH` for cash, `FP CCVI4111111111111111/0828` for Visa credit card (number + expiry). The form of payment is stored in the PNR and printed on the ticket.

### Concept 3: E-Ticket Display (TWD Command)
`TWD/L14` displays the e-ticket details linked to PNR line 14 (or wherever the ticket number appears). Shows: passenger name, route, fare, taxes, form of payment, and ticket status. Use this to verify the ticket was issued correctly.

### Concept 4: Ticket Status
**OPEN FOR USE** = valid, not yet traveled. **USED/FLOWN** = passenger has traveled. **VOID** = cancelled (within void window). **REFUNDED** = money returned. **EXCHANGED** = old ticket replaced with new one. Always check status before any action.

### Concept 5: Void Window
Most airlines allow voiding a ticket within 24 hours of issuance (sometimes same business day only). Voiding cancels the ticket penalty-free. After the void window closes, you need to process a refund (with potential penalties) or exchange.

### Concept 6: Conjunction Tickets
If the itinerary has more than 4 segments, Amadeus issues conjunction tickets — multiple ticket numbers linked together covering the full journey. They function as one ticket but have separate document numbers.

## Step-by-Step Guide
1. Retrieve the PNR: `RTABC123`.
2. Verify the TST: `TQT` — ensure fare and taxes are correct.
3. Add form of payment: `FP CASH` or `FP CC...`.
4. Issue tickets: `TTP`.
5. The system returns ticket numbers — note them.
6. Verify: `TWD/L14` (or the line with the ticket number) to confirm details.
7. Save: `ER`.
8. Share the ticket number and e-ticket receipt with the customer.

## Real-World Scenario
**Situation:** You've completed a PNR for Mr. Patel, Delhi to London return on Air India. TST shows ₹45,000 total. He's paying by Visa credit card.

**Question:** Walk through the ticketing process.

**Answer:** Add form of payment: `FP CCVI4532XXXXXXXXXXXX/0927` (his Visa card). Verify TST one more time with `TQT`. Issue: `TTP`. The system returns ticket number 098-1234567890. Display it: `TWD/L14` and verify — passenger name, route DEL-LHR-DEL, total ₹45,000, payment Visa, status OPEN FOR USE. Save with `ER`. Send Mr. Patel his itinerary receipt with the ticket number. If you spot an error within the void window — act immediately with `TWD` and void commands.

## Common Mistakes
- **Mistake 1:** Issuing a ticket without verifying the TST
  - *Why it matters:* If the fare is wrong, you've committed to the wrong price — fixing costs time and money
  - *Correct approach:* Always `TQT` before `TTP`. Compare fare, class, and taxes with what was quoted.

- **Mistake 2:** Missing the void window for an incorrectly issued ticket
  - *Why it matters:* After the void window, corrections require refund+reissue with potential penalties
  - *Correct approach:* If you catch an error, void immediately. Don't wait — the window is usually 24 hours or less.

- **Mistake 3:** Entering the wrong form of payment
  - *Why it matters:* Wrong credit card charge, or cash ticket charged to a card — creates accounting and customer issues
  - *Correct approach:* Double-check card number and expiry. Read it back to the customer.

## Key Glossary Terms
- **E-ticket (Electronic Ticket):** A digital ticket record stored in the airline's database, identified by a 13-digit number
- **TTP (Ticket from TST/PNR):** The command to issue e-tickets from the stored pricing
- **Void:** Cancelling a ticket within the allowed window (usually 24 hours), penalty-free
- **Conjunction Ticket:** Multiple linked ticket numbers issued for itineraries with more than 4 segments
- **Form of Payment (FOP):** How the ticket is paid — cash, credit card, or other methods

## Interview Tip
Say: "I understand that ticket issuance is a financial transaction — I always verify the TST and form of payment before issuing. I'm also aware of void windows for error correction."

## Resources
- Amadeus Help: `HE TTP` — ticket issuance reference
- Amadeus Help: `HE TWD` — e-ticket display reference
- Amadeus Help: `HE FP` — form of payment reference
