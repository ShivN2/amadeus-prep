---
title: "Module 10: Seat Map & Booking Specific Seat"
weight: 10
type: module
---

## Learning Objectives
- Display the aircraft seat map for a specific flight segment
- Read seat map symbols (available, occupied, blocked, exit row)
- Assign a specific seat to a passenger from the seat map

## Overview
While Module 9 covered generic seat preferences, this module is about picking exact seats. The seat map shows you the aircraft layout — which seats are free, which are taken, where the exits and lavatories are. This is the tool you use when a customer says "I want 14A specifically" or "put me near the exit."

## Key Concepts

### Concept 1: Display Seat Map (SM Command)
`SM1` displays the seat map for segment 1 in the PNR. The map shows rows and columns with symbols indicating seat status. You can also display without a PNR: `SM AI302/20JUN DELBOM/Y` for a specific flight and class.

### Concept 2: Seat Map Symbols
`A` or a seat number = available. `X` = occupied. `.` = blocked (not assignable). `L` = lavatory. `G` = galley. Exit rows are marked. Premium seats (extra legroom) may show differently. Each airline's map may vary slightly.

### Concept 3: Assigning a Specific Seat
`ST 14A/P1/S1` assigns seat 14A to passenger 1 on segment 1. The system confirms with HK if successful. If the seat is taken or blocked, you get an error — pick another one.

### Concept 4: Exit Row Restrictions
Exit row seats have extra legroom but come with rules: passengers must be able-bodied, over a certain age (usually 15+), able to understand safety instructions in English. Airlines may reject exit row assignments for elderly, disabled, or very young passengers.

### Concept 5: Paid Seats
Many airlines now charge for preferred seats (exit rows, front of cabin, extra legroom). The GDS may show these as blocked unless you process a paid seat request through the airline's ancillary system or EMD (Module 14).

### Concept 6: Seat Map for Wide-Body Aircraft
Long-haul flights use wide-body aircraft (Boeing 777, Airbus A380) with configurations like 3-4-3 or 2-4-2. The seat map is larger and more complex. Know the aircraft type (shown in availability) and match it to the seat map for accurate recommendations.

## Step-by-Step Guide
1. Retrieve the PNR: `RTABC123`.
2. Display the seat map for the desired segment: `SM1`.
3. Read the map: find available seats (look for open positions, avoid blocked ones).
4. Select a seat: `ST 14A/P1/S1` for passenger 1 on segment 1.
5. For a second passenger: `ST 14B/P2/S1`.
6. Save: `ER` and verify the seats show in the PNR with HK status.

## Real-World Scenario
**Situation:** A family of four (2 adults, 2 children ages 8 and 10) is flying BOM to LHR on a Boeing 777 (3-4-3 configuration). They want to sit together.

**Question:** How do you find four adjacent seats?

**Answer:** Display the seat map: `SM1`. Look for a row in the middle section where 4 consecutive seats are available (e.g., row 35, seats D-E-F-G). Assign: `ST 35D/P1/S1`, `ST 35E/P2/S1`, `ST 35F/P3/S1`, `ST 35G/P4/S1`. Avoid exit rows for the children (they're under 15). Save with `ER`. If no four-consecutive seats exist, try two pairs in the same row — like 35A-B and 35D-E — and explain the situation to the parents.

## Common Mistakes
- **Mistake 1:** Assigning exit row seats to passengers who don't qualify
  - *Why it matters:* Airline may reassign at check-in, causing frustration and seating chaos
  - *Correct approach:* Verify passenger eligibility — age, mobility, language ability — before assigning exit rows

- **Mistake 2:** Not checking the seat map before assigning
  - *Why it matters:* Typing a random seat number may result in errors or assigning a middle seat when the customer wanted a window
  - *Correct approach:* Always display SM first, then pick from what's actually available

- **Mistake 3:** Forgetting that seat maps change
  - *Why it matters:* Aircraft swaps happen — a 777 becomes an A320, and your pre-assigned seats no longer exist
  - *Correct approach:* Inform the customer that seat assignments are subject to change, especially on equipment swaps

## Key Glossary Terms
- **Seat Map (SM):** A visual layout of the aircraft showing available, occupied, and blocked seats
- **Wide-Body:** Large aircraft with two aisles (e.g., Boeing 777, A380) used for long-haul flights
- **Narrow-Body:** Smaller aircraft with one aisle (e.g., A320, B737) used for short to medium-haul
- **Equipment Swap:** When an airline changes the aircraft type on a route, potentially changing the seat map
- **Preferred Seat:** A seat with extra legroom or better location that airlines may charge extra for

## Interview Tip
Say: "I use the seat map rather than generic requests when seat placement matters — especially for families and special needs passengers. I also check for exit row eligibility restrictions before assigning."

## Resources
- Amadeus Help: `HE SM` — seat map display reference
- [SeatGuru by TripAdvisor](https://www.seatguru.com/) — Detailed seat maps, reviews, and aircraft configurations
- Amadeus Help: `HE ST` — seat assignment reference
