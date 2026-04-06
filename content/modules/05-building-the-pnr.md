---
title: "Module 5: Building the PNR"
weight: 5
type: module
---

## Learning Objectives
- Create a PNR from scratch by adding all five mandatory elements
- Sell flight segments from an availability display
- Save (End and Retrieve) a completed PNR

## Overview
Building a PNR is the core booking workflow. You take the customer's information — name, flights, phone number — and enter it step by step into Amadeus. Once all five mandatory elements are in place, you save the PNR and get a record locator. This is the skill you'll use for every single booking.

## Key Concepts

### Concept 1: Selling a Segment (SS Command)
From an availability display, type `SS1Y1` to sell 1 seat in Y class on line 1. The system responds with the segment and a status code (HK = confirmed). This is how you add flights to the PNR.

### Concept 2: Adding Passenger Name (NM Command)
`NM1SHARMA/RAJEEV MR` adds one adult passenger. The format is: number of passengers, surname/first name, title. Names MUST match the passport exactly — no nicknames, no abbreviations.

### Concept 3: Adding Contact (AP Command)
`AP DEL 9876543210` adds a phone number with city. `APE-customer@email.com` adds an email. At least one contact element is mandatory — without it, the PNR cannot be saved.

### Concept 4: Ticketing Arrangement (TK Command)
`TKTL15JUN/1200` sets a ticketing time limit: the ticket must be issued by 15 June at noon, or the booking auto-cancels. This protects the airline from passengers holding seats without paying.

### Concept 5: Received From (RF Command)
`RF SHARMA` records who requested the booking. This is an audit trail element. It's mandatory for saving. Typically you enter the passenger name or the person who called.

### Concept 6: End and Retrieve (ER Command)
`ER` saves the PNR and redisplays it with a record locator assigned. If anything mandatory is missing, Amadeus will show an error and refuse to save. `ET` saves without redisplaying. Always use `ER` so you can verify.

### Concept 7: Multiple Passengers
For a family booking: `NM1SHARMA/RAJEEV MR/1SHARMA/PRIYA MRS` adds two passengers. You can also add infants: `NM1SHARMA/BABY(INF/SHARMA/PRIYA MRS)` associates the infant with the mother.

## Step-by-Step Guide
1. Search availability: `AN20JUNDELBOM`.
2. Sell a seat: `SS1Y1` (1 seat, Y class, line 1).
3. Add the name: `NM1SHARMA/RAJEEV MR`.
4. Add contact: `AP DEL 9876543210`.
5. Add ticketing time limit: `TKTL25JUN`.
6. Add received from: `RF SHARMA`.
7. Save and retrieve: `ER`.
8. Note the record locator (e.g., ABC123) and share it with the customer.

## Real-World Scenario
**Situation:** A customer named Priya Mehta wants to book a confirmed economy seat on AI302 Delhi to Mumbai on 20 June. Her phone number is 9988776655.

**Question:** Walk through the booking process.

**Answer:** First, `AN20JUNDELBOM` to find AI302. Locate it in the display (say it's line 3) and sell: `SS1Y3`. Then `NM1MEHTA/PRIYA MS`. Add contact: `AP DEL 9988776655`. Set ticketing: `TKTL25JUN`. Add received from: `RF MEHTA`. Save: `ER`. Amadeus assigns a record locator. Share it with Priya and remind her the ticket must be issued by 25 June.

## Common Mistakes
- **Mistake 1:** Misspelling the passenger name
  - *Why it matters:* Name must match passport exactly; mismatches cause denied boarding
  - *Correct approach:* Ask the customer to spell their name or photograph their passport

- **Mistake 2:** Forgetting a mandatory element before saving
  - *Why it matters:* Amadeus will reject the save, and you'll have to figure out what's missing
  - *Correct approach:* Mentally tick off all five: Name, Segment, Contact, Ticketing, Received-from

- **Mistake 3:** Using ET instead of ER
  - *Why it matters:* ET saves but doesn't redisplay — you can't verify the booking was saved correctly
  - *Correct approach:* Always use `ER` to save and immediately verify the record locator and details

## Key Glossary Terms
- **PNR (Passenger Name Record):** The booking file containing all trip information
- **Segment:** One flight leg (e.g., DEL-BOM on AI302)
- **SS (Sell Segment):** The command to book a seat from an availability display
- **ER (End and Retrieve):** Save the PNR and redisplay it with the assigned record locator
- **Time Limit (TL):** The deadline to issue a ticket before the booking auto-cancels

## Interview Tip
Say: "I can build a PNR from scratch using cryptic commands — name, itinerary, contact, ticketing, and received-from. I always use ER instead of ET to verify the save, and I double-check name spelling against ID documents."

## Resources
- Amadeus Help: `HE SS` — sell segment reference
- Amadeus Help: `HE NM` — name element reference
- Amadeus Help: `HE ER` — end and retrieve reference
