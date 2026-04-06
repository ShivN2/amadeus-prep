---
title: "Module 19: Refund, Revalidation & Exchange"
weight: 19
type: module
---

## Learning Objectives
- Process a ticket refund (voluntary and involuntary)
- Perform a ticket exchange (reissue) for date or route changes
- Understand revalidation for minor changes without reissuing

## Overview
After a ticket is issued, customers often need changes — cancel the trip, change dates, or switch routes. Each scenario has a different process: refund returns money, exchange replaces the ticket with a new one (usually with fees), and revalidation updates the ticket without full reissue. Getting these right involves fare rules, penalties, and precise GDS entries. Mistakes here cost real money.

## Key Concepts

### Concept 1: Voluntary vs. Involuntary Changes
**Voluntary:** The customer decides to change or cancel (penalties usually apply). **Involuntary:** The airline caused the change — schedule change, cancellation, delay (no penalties, airline covers costs). The distinction determines whether penalties are charged.

### Concept 2: Refund Processing
`TRFP` initiates a refund from the PNR. The system checks fare rules to determine refund amount (full refund, partial, or non-refundable). For involuntary refunds, the full amount is returned regardless of fare rules. The refund settles through BSP back to the original form of payment.

### Concept 3: Exchange/Reissue
When a customer changes dates or routes on a ticketed booking, you exchange the old ticket for a new one. The process: reprice the new itinerary, calculate the fare difference (if any), add the change penalty, issue the new ticket referencing the old one. Command: `TTP/EXCH`.

### Concept 4: Residual Value
If the new ticket costs less than the old one, there may be residual value. Some airlines issue this as a credit voucher (EMD-S), others refund the difference. The rules vary by airline and fare type — always check.

### Concept 5: Revalidation
For minor changes (e.g., same flight, same fare, just a different date where the fare allows free changes), you can revalidate instead of fully reissuing. Revalidation updates the flight coupon without creating a new ticket number. It's simpler and faster.

### Concept 6: Tax Refunds
Even on non-refundable tickets, some taxes are refundable (airport taxes on unused segments). Always check — the base fare may be non-refundable, but the customer could still get ₹1,000-2,000 back in taxes.

## Step-by-Step Guide
1. Retrieve the PNR and display the ticket: `TWD/L14`.
2. Determine the type: refund, exchange, or revalidation.
3. For refund: check fare rules (Category 16/33). Process: `TRFP`.
4. For exchange: cancel old segment, sell new one, reprice, then `TTP/EXCH`.
5. For revalidation: update the segment, then revalidate the coupon.
6. Verify the new/refunded ticket status.
7. Save: `ER`. Inform the customer of any charges or credits.

## Real-World Scenario
**Situation:** Mrs. Verma has a non-refundable economy ticket DEL-BOM on 20 June (₹7,800 total, base ₹5,000 + taxes ₹2,800). She wants to change to 25 June. The fare rules say: change fee ₹3,000, fare difference applicable.

**Question:** Walk through the exchange.

**Answer:** Retrieve the PNR. Cancel the 20 June segment and sell the 25 June flight. Reprice: the new fare is ₹5,500 base — that's ₹500 more. Total additional collection: ₹3,000 (change fee) + ₹500 (fare difference) = ₹3,500. Process the exchange with `TTP/EXCH`, collecting ₹3,500 from Mrs. Verma. She gets a new ticket number referencing the old one. The old ticket status changes to EXCHANGED.

## Common Mistakes
- **Mistake 1:** Refunding a non-refundable ticket without checking rules
  - *Why it matters:* The agency may have to absorb the loss if the airline doesn't authorize the refund
  - *Correct approach:* Always check fare rules (Category 16/33) before processing any refund

- **Mistake 2:** Not collecting the change fee during exchange
  - *Why it matters:* The agency is liable for the uncollected penalty — it comes out of your settlement
  - *Correct approach:* Calculate penalty + fare difference before issuing the new ticket

- **Mistake 3:** Missing tax refunds on non-refundable tickets
  - *Why it matters:* Customer is entitled to refundable taxes even if the base fare is non-refundable
  - *Correct approach:* Always check which taxes are refundable — process a tax-only refund if applicable

## Key Glossary Terms
- **Refund:** Returning money to the customer for an unused or partially used ticket
- **Exchange/Reissue:** Replacing an existing ticket with a new one for changed travel (with potential penalties and fare differences)
- **Revalidation:** Updating a ticket coupon for a minor change without creating a new ticket number
- **Involuntary Change:** A change caused by the airline (schedule change, cancellation) — no penalties charged
- **ADC (Additional Collection):** The extra amount the customer must pay during an exchange (penalty + fare difference)

## Interview Tip
Say: "I understand the difference between refunds, exchanges, and revalidations — and when each applies. I always check fare rules first and calculate the complete cost (penalty + fare difference) before processing an exchange."

## Resources
- Amadeus Help: `HE TRFP` — refund processing reference
- Amadeus Help: `HE TTP/EXCH` — exchange/reissue reference
- Amadeus Help: `HE FQN` — fare rule categories for penalties
