---
title: "Module 9: Advance Seat Request"
weight: 9
type: module
---

## Learning Objectives
- Request advance seat assignments for passengers using the ST command
- Understand generic vs. specific seat requests
- Know when seats can and cannot be pre-assigned

## Overview
Passengers often want specific seats — window, aisle, exit row, or together with family. Advance seat requests let you ask the airline to assign a seat before check-in. Some airlines auto-assign; others require you to request explicitly. Getting seats right is a quality differentiator — it's what separates a good agent from a great one.

## Key Concepts

### Concept 1: Generic Seat Request (ST Command)
`ST/W/P1/S1` requests a window seat for passenger 1 on segment 1. `ST/A/P1/S1` requests an aisle. The airline assigns the best available matching seat. You don't pick a specific seat number — just the preference.

### Concept 2: Seat Request Types
**W** = Window, **A** = Aisle. Some systems support **NSMK** = Non-smoking (legacy, most flights are non-smoking now). You can also request specific zones like bulkhead or exit row, though availability depends on the airline.

### Concept 3: Seat Request vs. Seat Assignment
A request (ST) tells the airline your preference — they may or may not fulfill it. An assignment (covered in Module 10) lets you pick an exact seat from a seat map. Not all airlines allow pre-assignment; some only allow requests.

### Concept 4: Long-Haul vs. Short-Haul Rules
On long-haul international flights, advance seating is more important and usually supported. On short-haul domestic (like DEL-BOM), many low-cost carriers don't support advance seat requests through the GDS — the passenger selects at check-in or pays extra.

### Concept 5: Group Seating
For families or groups, request seats together: `ST/W/P1/S1` and `ST/A/P2/S1` — window for one, aisle for the other, same segment. For more control, use the seat map (Module 10) to pick adjacent seats.

## Step-by-Step Guide
1. Retrieve the PNR: `RTABC123`.
2. Identify the passenger number and segment number.
3. Request a window: `ST/W/P1/S1`.
4. Request an aisle for a second passenger: `ST/A/P2/S1`.
5. Save: `ER`.
6. Check the PNR — seat requests appear in the SSR section with a status code.

## Real-World Scenario
**Situation:** A couple is flying Delhi to Singapore on Singapore Airlines. The wife wants a window seat and the husband wants the aisle next to her.

**Question:** How do you handle this?

**Answer:** Generic requests (`ST/W/P1/S1` and `ST/A/P2/S1`) might not guarantee adjacent seats. The better approach is to use the seat map (Module 10) to see the aircraft layout and pick two adjacent seats — say 32A for window and 32C for aisle. If seat map selection isn't available, make the generic requests and add a remark: `RM COUPLE - PLEASE SEAT TOGETHER`.

## Common Mistakes
- **Mistake 1:** Assuming the seat request guarantees a specific seat
  - *Why it matters:* The airline may assign any window seat, not necessarily the one the customer expects
  - *Correct approach:* Explain to the customer: "I've requested a window — the airline will assign one, but I can't guarantee row 15"

- **Mistake 2:** Not checking if the airline supports GDS seat requests
  - *Why it matters:* Some carriers (especially LCCs) ignore GDS seat requests entirely
  - *Correct approach:* Know which airlines support advance seating through Amadeus

- **Mistake 3:** Forgetting to request seats for return segments
  - *Why it matters:* Customer gets preferred seats on outbound but random seats on return
  - *Correct approach:* Request seats for ALL segments: `/S1`, `/S2`, etc.

## Key Glossary Terms
- **Advance Seat Request:** Asking the airline to assign a seat preference before check-in
- **Window (W):** Seat next to the aircraft window
- **Aisle (A):** Seat next to the walkway
- **Bulkhead:** The wall/partition between cabins — bulkhead seats have extra legroom but no under-seat storage
- **Pre-assigned Seat:** A specific seat confirmed before check-in (as opposed to a generic request)

## Interview Tip
Say: "I understand that a seat request is a preference, not a guarantee. For important bookings, I use the seat map to assign specific seats rather than relying on generic requests."

## Resources
- Amadeus Help: `HE ST` — seat request reference
- [SeatGuru](https://www.seatguru.com/) — Seat maps and reviews for every aircraft type
- Amadeus Help: `HE SM` — seat map reference (covered in Module 10)
