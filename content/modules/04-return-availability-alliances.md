---
title: "Module 4: Return Availability & Airline Alliances"
weight: 4
type: module
---

## Learning Objectives
- Search for return (round-trip) flight availability in a single command
- Understand the three major airline alliances and their significance
- Use alliance and airline-specific availability filters

## Overview
Most passengers book round trips. Amadeus lets you search outbound and return flights together or separately. Understanding airline alliances matters because partners share flights, lounges, and frequent flyer miles — so a passenger flying Air India can earn Star Alliance miles on Lufthansa. This knowledge helps you offer better options.

## Key Concepts

### Concept 1: Return Availability (AD Command)
After displaying outbound availability with `AN`, type `AD25JUN` to see return flights on 25 June on the same route (reversed). This saves time — you don't need to retype the cities. The system remembers your original search.

### Concept 2: Round-Trip Search
You can also search directly: `AN20JUNDELBOM/R,25JUN` shows outbound on 20 June and return on 25 June in one go. This gives the customer a complete picture upfront.

### Concept 3: The Three Major Alliances
**Star Alliance** (26+ airlines): Air India, Lufthansa, United, Singapore Airlines, ANA. **SkyTeam** (19 airlines): KLM, Air France, Delta, Korean Air. **oneworld** (14 airlines): British Airways, Qatar Airways, Cathay Pacific. Alliance membership determines codeshare options and loyalty program partnerships.

### Concept 4: Codeshare Flights
A codeshare means two airlines sell seats on the same physical flight under different flight numbers. Example: AI and LH (Lufthansa) may share a DEL-FRA flight. The display shows both, but it's one plane. Know which airline actually operates the flight — that affects service and baggage rules.

### Concept 5: Alliance-Specific Availability
`AN20JUNDELFRA/A*A` filters to show only Star Alliance flights. `/A*O` for oneworld, `/A*S` for SkyTeam. Useful when a customer has loyalty with a specific alliance and wants to earn miles.

### Concept 6: Carrier-Specific Search
`AN20JUNDELBOM/AAI` shows only Air India flights. Replace AI with any airline code. Customers often have airline preferences due to loyalty programs or past experience.

## Step-by-Step Guide
1. Search outbound: `AN20JUNDELFRA` for Delhi to Frankfurt on 20 June.
2. Note suitable outbound flights, then type `AD25JUN` for return on 25 June.
3. Alternatively, do it in one command: `AN20JUNDELFRA/R,25JUN`.
4. If the customer wants Star Alliance only: add `/A*A` to the command.
5. If they want a specific airline: add `/AAI` (for Air India).
6. Use `MD` to scroll through more options as needed.

## Real-World Scenario
**Situation:** A customer is a Star Alliance Gold frequent flyer. They want Delhi to London round trip, 10-17 August, and want to earn miles on their Air India Flying Returns account.

**Question:** How do you find the best options?

**Answer:** Type `AN10AUGDELLOW/A*A/R,17AUG` to show only Star Alliance flights for both legs. This ensures any airline they fly (Air India, Lufthansa, United via connecting) will credit miles to their program. Present options with fewest stops and best timing. Mention codeshare flights — if AI sells a Lufthansa-operated leg, it still earns AI miles.

## Common Mistakes
- **Mistake 1:** Not asking about frequent flyer membership before searching
  - *Why it matters:* You might book an airline outside their alliance, and they lose miles
  - *Correct approach:* Always ask "Do you have a frequent flyer program?" early in the conversation

- **Mistake 2:** Confusing the operating carrier with the marketing carrier on codeshares
  - *Why it matters:* Baggage rules, check-in, and service quality follow the operating carrier
  - *Correct approach:* Check the operating carrier in the availability display (shown with a note like "OPERATED BY LH")

- **Mistake 3:** Forgetting return availability (AD) and re-typing the full command
  - *Why it matters:* Wastes time and risks typos
  - *Correct approach:* Use `AD` for return — it automatically reverses the route

## Key Glossary Terms
- **Codeshare:** Two or more airlines selling seats on the same physical flight under their own flight numbers
- **Alliance:** A partnership of airlines that share networks, lounges, and frequent flyer benefits
- **Operating Carrier:** The airline that actually flies the plane
- **Marketing Carrier:** The airline that sells the ticket (may be different from the operator)
- **Interline:** An agreement between non-allied airlines to accept each other's tickets on certain routes

## Interview Tip
Say: "I know the three alliances and why they matter — it directly impacts which flights I recommend based on a customer's loyalty program. At Coforge, this attention to detail improves customer satisfaction and reduces rebooking."

## Resources
- [Star Alliance Members](https://www.staralliance.com/en/members) — Full member list
- [SkyTeam Members](https://www.skyteam.com/en/about) — Full member list
- [oneworld Members](https://www.oneworld.com/members) — Full member list
- Amadeus Help: `HE AD` — return availability reference
