---
title: "Module 14: Issuance of EMD"
weight: 14
type: module
---

## Learning Objectives
- Understand what an EMD is and when it's used
- Distinguish between EMD-A (associated with a flight) and EMD-S (standalone)
- Issue an EMD for ancillary services like excess baggage, seat upgrades, and pet transport

## Overview
An EMD (Electronic Miscellaneous Document) is like an e-ticket but for services other than the flight itself. Need to charge for extra baggage? Seat upgrade? Airport lounge access? That's an EMD. As airlines "unbundle" their fares (charging separately for things that used to be included), EMDs are becoming increasingly important. At Coforge, you'll encounter these regularly.

## Key Concepts

### Concept 1: What is an EMD?
An EMD is an electronic document with a 13-digit number (like a ticket) that records payment for an ancillary service. It's the airline's way of tracking and charging for add-ons that aren't part of the base ticket.

### Concept 2: EMD-A (Associated)
EMD-A is linked to a specific flight coupon. Examples: excess baggage for a specific leg, seat upgrade on one segment, special sports equipment. The EMD-A references the e-ticket and segment it belongs to.

### Concept 3: EMD-S (Standalone)
EMD-S is NOT linked to a flight. Examples: penalty fees for name changes, cancellation charges, or agency service fees. It's a standalone financial document — think of it as an electronic receipt for miscellaneous charges.

### Concept 4: Common EMD Uses in India
Excess baggage (very common on India-Gulf routes), paid seat selection (IndiGo, SpiceJet), pet-in-cabin charges, unaccompanied minor fees, ticket reissuance penalties, and airport lounge passes. You'll process these frequently.

### Concept 5: Issuing an EMD
The process varies by airline, but generally: add the ancillary service SSR to the PNR, price the service, then issue the EMD using `TTM` (Ticket Miscellaneous) commands. The EMD number is stored in the PNR alongside the ticket.

### Concept 6: EMD and BSP
EMDs settle through the BSP (Billing and Settlement Plan), just like tickets. This means the financial reconciliation and agency reporting includes EMDs. Getting EMDs wrong affects your agency's accounts.

## Step-by-Step Guide
1. Retrieve the PNR with the existing ticket.
2. Add the ancillary service request (e.g., excess baggage SSR).
3. Price the service as per the airline's published rate.
4. Enter the form of payment for the EMD.
5. Issue the EMD: `TTM` followed by the appropriate parameters.
6. Verify: display the EMD and confirm the service, amount, and link to the ticket.
7. Save: `ER`.

## Real-World Scenario
**Situation:** A passenger flying Air India DEL to DXB (Dubai) has 40 kg of luggage but the ticket only includes 23 kg. They need to pay for 17 kg excess baggage.

**Question:** How do you process this?

**Answer:** First, check AI's excess baggage rate for the DEL-DXB route (available through the airline's tariff or the GDS). Add the excess baggage SSR to the PNR. Price it according to AI's published rate. Add the form of payment. Issue the EMD-A (associated with the DEL-DXB segment). The EMD number gets stored in the PNR. Give the passenger the EMD receipt — they'll need it at check-in as proof of prepaid excess baggage.

## Common Mistakes
- **Mistake 1:** Confusing EMD-A with EMD-S
  - *Why it matters:* EMD-A is linked to a flight; EMD-S is standalone. Using the wrong type causes reconciliation errors.
  - *Correct approach:* Ask: "Is this service tied to a specific flight?" If yes → EMD-A. If no → EMD-S.

- **Mistake 2:** Issuing an EMD with the wrong amount
  - *Why it matters:* Undercharging means the agency absorbs the cost; overcharging means a customer dispute
  - *Correct approach:* Always verify the airline's published rates for the specific route and service

- **Mistake 3:** Not linking the EMD to the correct ticket/segment
  - *Why it matters:* The service doesn't get associated with the right flight — passenger may not receive it
  - *Correct approach:* Verify the ticket number and segment reference before issuing the EMD

## Key Glossary Terms
- **EMD (Electronic Miscellaneous Document):** An electronic document for ancillary services, similar to an e-ticket but for non-flight charges
- **EMD-A (Associated):** An EMD linked to a specific flight coupon/segment
- **EMD-S (Standalone):** An EMD not linked to any flight — for standalone charges like penalties
- **Ancillary Service:** Any add-on service beyond the basic flight (baggage, meals, seats, lounges)
- **BSP (Billing and Settlement Plan):** The IATA system for financial settlement between airlines and travel agencies

## Interview Tip
Say: "I understand EMDs for ancillary services — excess baggage, seat upgrades, penalty collections. I know the difference between EMD-A (flight-linked) and EMD-S (standalone), which is important for correct financial reporting."

## Resources
- Amadeus Help: `HE TTM` — EMD issuance reference
- Amadeus Help: `HE EMD` — EMD general reference
- [IATA EMD Standards](https://www.iata.org/) — Industry EMD specifications
