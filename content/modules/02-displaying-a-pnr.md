---
title: "Module 2: Displaying a PNR"
weight: 2
type: module
---

## Learning Objectives
- Retrieve and display an existing PNR using record locator or passenger name
- Read and interpret all five mandatory elements of a PNR
- Navigate between different PNR sections efficiently

## Overview
A PNR (Passenger Name Record) is the digital booking file that holds everything about a passenger's trip — their name, flights, contact info, ticketing details, and more. Knowing how to pull up and read a PNR is the single most common task you'll do. Every troubleshooting, change, or ticketing action starts with displaying the PNR.

## Key Concepts

### Concept 1: Record Locator
Every PNR gets a unique 6-character alphanumeric code (e.g., ABC123) called the record locator. This is the booking reference customers receive in their confirmation email. It's your primary key to retrieve any booking.

### Concept 2: RT Command (Retrieve PNR)
`RT` followed by the record locator displays the full PNR. Example: `RTABC123`. This is the command you'll type hundreds of times a day. It pulls the complete booking onto your screen.

### Concept 3: Retrieve by Name (RT/Name)
If you don't have the record locator, use `RT/SHARMA` to search by surname. If multiple PNRs match, Amadeus shows a list — pick the right one by number. This is useful when customers call without their booking reference.

### Concept 4: The Five Mandatory PNR Elements
Every valid PNR must have: (1) Passenger name, (2) Itinerary (flight segments), (3) Contact element (phone number), (4) Ticketing arrangement (time limit), and (5) Received-from element. If any is missing, you cannot save the PNR.

### Concept 5: Reading the PNR Display
The PNR display shows sections in order: header (record locator, creation date), names, itinerary segments (with flight number, date, class, status), contact info, ticketing info, and remarks. Each line is numbered for easy reference.

### Concept 6: Segment Status Codes
Each flight segment shows a 2-letter status: `HK` = confirmed, `HL` = waitlisted, `UC` = unable to confirm, `UN` = flight doesn't operate. Always check status — an HK is confirmed; anything else needs attention.

## Step-by-Step Guide
1. Get the record locator from the customer or your system.
2. Type `RTABC123` (replace with actual locator) and press Enter.
3. Review the name(s) — confirm they match the passenger's ID.
4. Check each flight segment: airline, flight number, date, route, class, and status code.
5. Verify contact details and ticketing time limit.
6. If you need to search by name: `RT/LASTNAME` or `RT/LASTNAME/FIRSTNAME`.

## Real-World Scenario
**Situation:** A customer calls saying "My booking reference is XYZ789, and I want to check if my Delhi to Mumbai flight is confirmed."

**Question:** How do you verify the booking status?

**Answer:** Type `RTXYZ789` to pull up the PNR. Look at the itinerary section for the DEL-BOM segment. Check the status code next to the flight — if it says `HK1`, the seat is confirmed for 1 passenger. If it says `HL1`, they're waitlisted and you need to inform them. Always read the status out loud to the customer so there's no confusion.

## Common Mistakes
- **Mistake 1:** Not verifying the passenger name matches their ID
  - *Why it matters:* Name mismatches cause check-in denial and require expensive ticket reissues
  - *Correct approach:* Always cross-check name spelling against the passport/ID after retrieving

- **Mistake 2:** Ignoring segment status codes
  - *Why it matters:* Assuming a waitlisted (HL) segment is confirmed leads to passengers arriving at the airport without a seat
  - *Correct approach:* Check every segment's status code — only HK means confirmed

- **Mistake 3:** Retrieving the wrong PNR from a name search
  - *Why it matters:* Making changes to someone else's booking
  - *Correct approach:* When `RT/SHARMA` returns multiple results, verify the travel dates and route before selecting

## Key Glossary Terms
- **PNR (Passenger Name Record):** The master booking file containing all trip information for one or more passengers
- **Record Locator:** The unique 6-character code identifying a specific PNR (also called booking reference or confirmation number)
- **Segment:** A single flight leg within an itinerary (e.g., DEL-BOM on AI302)
- **HK Status:** "Holds Confirmed" — the airline has confirmed the seat
- **Time Limit (TL):** The deadline by which the ticket must be issued, or the booking auto-cancels

## Interview Tip
Say: "Retrieving and reading PNRs accurately is the most fundamental GDS skill. I always verify the five mandatory elements and check every segment status before taking any action on a booking."

## Resources
- Amadeus Help: `HE RT` — built-in documentation for retrieve commands
- Amadeus Help: `HE PNR` — PNR element reference
- [IATA PNR Standards](https://www.iata.org/) — Industry PNR format documentation
