---
title: "Module 3: Timetable Availability & Schedule"
weight: 3
type: module
---

## Learning Objectives
- Use availability commands to find flights between two cities on a given date
- Read availability displays including flight times, stops, and booking classes
- Distinguish between timetable (schedule) and seat availability displays

## Overview
When a customer wants to fly somewhere, your first job is finding available flights. Amadeus has two main tools: the timetable (which shows all scheduled flights regardless of seats) and the availability display (which shows flights with open seats in specific booking classes). Knowing both helps you find the best options quickly.

## Key Concepts

### Concept 1: Availability Display (AN Command)
`AN20JUNDELBOM` shows flights from Delhi to Mumbai on 20 June with real-time seat availability. This is your go-to command for finding bookable flights. The display shows flight number, departure/arrival times, aircraft type, and available booking classes.

### Concept 2: Timetable Display (TN Command)
`TN20JUNDELBOM` shows all scheduled flights on that route/date regardless of whether seats are available. Useful for showing the customer the full picture before narrowing down to available options.

### Concept 3: Booking Classes
Each flight shows letters like F, C, J, Y, B, M, H, Q, V — these are booking classes. F/C/J = First/Business, Y = full-fare Economy, then B through V are discounted economy classes. The number next to each letter shows available seats (9 means 9 or more).

### Concept 4: Scrolling Through Results
`MD` (Move Down) shows more flights. `MU` (Move Up) goes back. Flights are shown in chronological order. If the customer is flexible on time, scroll through to find the best option.

### Concept 5: Direct vs. Connecting Flights
The display shows stops with a number (0 = non-stop, 1 = one stop). A `*` indicates a connection requiring a plane change. Always clarify this with the customer — "one stop" could mean they stay on the plane or change planes.

### Concept 6: Reading the Display Line
A typical line: `1 AI302 Y9 B9 20JUN DELBOM 0600 0815 320 0 E`. This means: line 1, Air India flight 302, Y class 9+ seats, B class 9+ seats, 20 June, Delhi to Mumbai, depart 6:00 AM, arrive 8:15 AM, Airbus A320, non-stop, E-ticket.

## Step-by-Step Guide
1. Ask the customer: origin, destination, travel date, and preferred time.
2. Type `AN20JUNDELBOM` (adjust date/cities) and press Enter.
3. Read the display: check flight times, stops, and available classes.
4. If no suitable flights appear, type `MD` to see more options.
5. If the customer wants a different date, type `AN21JUNDELBOM`.
6. For full schedule regardless of availability: `TN20JUNDELBOM`.

## Real-World Scenario
**Situation:** A customer wants to fly from Chennai (MAA) to Kolkata (CCU) on 15 July, preferring a morning departure and the cheapest fare.

**Question:** How do you find the right flight?

**Answer:** Type `AN15JULMAACCU` to see available flights. Look for morning departures (before 12:00). For cheap fares, look at the lowest booking classes shown (V, Q, etc.) — if they show seat availability (a number, not 0), those classes are bookable. Compare a few options and present the customer with 2-3 choices showing time and approximate fare level.

## Common Mistakes
- **Mistake 1:** Quoting a flight from the timetable (TN) without checking actual availability (AN)
  - *Why it matters:* The flight exists but may have zero seats in the customer's fare class
  - *Correct approach:* Always confirm with AN before promising a flight

- **Mistake 2:** Not checking the number of stops
  - *Why it matters:* Customer expects non-stop but gets a connection with plane change
  - *Correct approach:* Always read the stops column and clarify connections

- **Mistake 3:** Ignoring aircraft type
  - *Why it matters:* Some routes use small regional aircraft with no meal service or limited baggage
  - *Correct approach:* Note the aircraft code (320, 77W, ATR) and inform the customer if relevant

## Key Glossary Terms
- **Availability:** Real-time display of flights with open seats in each booking class
- **Booking Class:** A letter code (Y, B, M, V, etc.) representing a fare level and set of ticket rules
- **Non-stop:** A flight with zero stops between origin and destination
- **Direct Flight:** A flight that may stop but doesn't require changing planes (same flight number throughout)
- **E-ticket:** Electronic ticket — the standard today (paper tickets are almost extinct)

## Interview Tip
Mention: "I understand the difference between timetable and availability — timetable shows what's scheduled, availability shows what's bookable. I always use AN for real bookings to ensure seats exist in the right class."

## Resources
- Amadeus Help: `HE AN` — availability command reference
- Amadeus Help: `HE TN` — timetable command reference
- [IATA Airline Designator Search](https://www.iata.org/en/publications/directories/code-search/) — look up airline codes
