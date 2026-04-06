---
title: "Module 17: Minimum Connecting Time (MCT)"
weight: 17
type: module
---

## Learning Objectives
- Understand what MCT is and why it matters for connecting itineraries
- Look up MCT for specific airports and connection types
- Avoid booking illegal connections that violate MCT rules

## Overview
When a passenger connects between two flights at an airport, they need enough time to deplane, walk to the next gate (possibly through immigration), and board. MCT (Minimum Connecting Time) is the industry-defined minimum time required for this. If you book a connection that's shorter than the MCT, the itinerary is illegal — the airline may reject it, or the passenger may miss their flight.

## Key Concepts

### Concept 1: What is MCT?
MCT is the minimum number of minutes required between an arriving flight and a departing flight at a connecting airport. It varies by airport, terminal, and connection type (domestic-to-domestic, domestic-to-international, international-to-international).

### Concept 2: MCT Lookup (DMCT Command)
`DMCTDEL` shows MCT rules for Delhi airport. The display shows different times for different connection types. DEL domestic-to-domestic might be 90 minutes; international-to-international might be 180 minutes. Some airports have airline-specific exceptions.

### Concept 3: Types of Connections
**Domestic to Domestic (DD):** Usually shortest MCT (60-90 min). **Domestic to International (DI):** Longer — need to clear immigration/security (120-180 min). **International to International (II):** Varies widely by airport. **International to Domestic (ID):** Longest — immigration, customs, baggage claim, re-check, domestic security.

### Concept 4: Airport-Specific MCT
Every airport has different MCTs. DEL might need 120 minutes for DI connections; LHR might need 90 minutes for II connections. Large airports with multiple terminals (like JFK) may have longer MCTs for inter-terminal connections.

### Concept 5: Airline-Specific Exceptions
Some airlines have negotiated shorter MCTs at their hub airports. For example, Singapore Airlines at Changi (SIN) might have a 60-minute MCT for their own connections vs. the standard 90 minutes. Always check.

### Concept 6: MCT Violations
If you try to sell a connection that violates MCT, Amadeus may warn you or refuse the booking. Even if it goes through, the airline may cancel the connection segment. The passenger gets stranded — and the liability falls on whoever booked it.

## Step-by-Step Guide
1. Identify the connecting airport in the itinerary.
2. Check MCT: `DMCTDEL` (for Delhi connections).
3. Determine the connection type: DD, DI, ID, or II.
4. Calculate the actual connection time from your itinerary (arrival to next departure).
5. Ensure actual time ≥ MCT. If not, find a different flight.
6. For airline-specific rules: `DMCTDELAI` (Air India exceptions at DEL).

## Real-World Scenario
**Situation:** You're booking a passenger from Chennai (MAA) to London (LHR) connecting through Delhi (DEL). The MAA-DEL flight arrives at 14:00, and the DEL-LHR flight departs at 16:00 — a 2-hour connection.

**Question:** Is this connection legal?

**Answer:** Check `DMCTDEL` for domestic-to-international connections. DEL's DI MCT is typically 150 minutes (2.5 hours). Your connection is only 120 minutes — it violates MCT by 30 minutes. You need to either find an earlier MAA-DEL flight or a later DEL-LHR flight. Don't book it hoping the passenger will "make it" — if they miss the international flight, rebooking costs thousands.

## Common Mistakes
- **Mistake 1:** Booking connections without checking MCT
  - *Why it matters:* Illegal connection → passenger misses flight → airline blame → expensive rebooking
  - *Correct approach:* Always `DMCT` for connecting airports, especially for DI and ID connections

- **Mistake 2:** Using domestic MCT for international connections
  - *Why it matters:* DD MCT at DEL is 90 min, but DI is 150 min — 90 min is not enough for international
  - *Correct approach:* Always check the specific connection type (DD, DI, ID, II)

- **Mistake 3:** Forgetting terminal transfers
  - *Why it matters:* Some airports (like JFK, CDG, DEL) have connections requiring terminal changes, which add time
  - *Correct approach:* Factor in terminal transfer time — some airports have dedicated MCT for inter-terminal connections

## Key Glossary Terms
- **MCT (Minimum Connecting Time):** The minimum time required between connecting flights at an airport
- **DD (Domestic to Domestic):** A connection between two domestic flights
- **DI (Domestic to International):** A connection from a domestic flight to an international flight
- **Illegal Connection:** A connection time that violates the MCT — the itinerary should not be booked
- **Hub Airport:** An airline's primary base where most connections funnel through (e.g., DEL for Air India)

## Interview Tip
Say: "I always check MCT before booking connections, especially domestic-to-international where the MCT is significantly longer. Catching an MCT violation before ticketing prevents expensive passenger disruptions."

## Resources
- Amadeus Help: `HE DMCT` — MCT lookup reference
- [OAG (Official Airline Guide)](https://www.oag.com/) — Industry schedule and connection data
- Airport websites — Terminal maps and transfer information
