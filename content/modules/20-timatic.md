---
title: "Module 20: Timatic"
weight: 20
type: module
---

## Learning Objectives
- Understand what Timatic is and why it's authoritative for travel document requirements
- Query Timatic for visa, passport, and health requirements
- Apply Timatic information to customer bookings

## Overview
Timatic is the airline industry's official database of passport, visa, and health requirements for every country. When an Indian passport holder wants to fly to Thailand, Timatic tells you exactly what documents they need — visa on arrival, passport validity of 6 months, etc. Airlines use Timatic at check-in; if the passenger doesn't meet Timatic requirements, they're denied boarding. As an agent, checking Timatic before ticketing protects the customer and the airline.

## Key Concepts

### Concept 1: What is Timatic?
Timatic (Travel Information Manual Automatic) is maintained by IATA and updated daily. It covers entry requirements (visa, passport), transit rules, health requirements (vaccinations), and customs regulations for every country. It's the single source of truth used by airlines worldwide.

### Concept 2: Accessing Timatic in Amadeus
`TIMATIC` or `GG` commands access the database within Amadeus. Enter the passenger's nationality, destination, and transit points to get specific requirements. The system returns exactly what documents are needed.

### Concept 3: Passport Requirements
Timatic shows: minimum passport validity (most countries require 6 months beyond travel), whether machine-readable passports are required, and if blank visa pages are needed. Indian passports to most European countries need 6 months validity + at least 2 blank pages.

### Concept 4: Visa Requirements
The most critical check. Timatic shows: visa required/not required, visa on arrival eligible, e-visa available, transit visa needed. Example: Indian passport to USA = visa required (B1/B2). Indian passport to Thailand = visa exemption for 30 days. Getting this wrong means the passenger is sent back.

### Concept 5: Health Requirements
Post-COVID, this became very important. Timatic shows vaccination requirements, COVID test rules (where still applicable), yellow fever certificate requirements for Africa/South America routes. Requirements change frequently — always check, don't rely on memory.

### Concept 6: Transit Requirements
Some countries require transit visas even if the passenger isn't leaving the airport. Example: certain nationalities need a transit visa for the UK or USA even for a connecting flight. Timatic covers this — always check transit points, not just the destination.

## Step-by-Step Guide
1. Note the passenger's nationality (passport country).
2. Note the destination and any transit countries.
3. Query Timatic: enter nationality, destination, transit points.
4. Read the requirements: visa, passport validity, health.
5. Inform the customer before ticketing.
6. Add relevant info to the PNR (DOCS SSR for passport, remarks for visa).

## Real-World Scenario
**Situation:** An Indian passport holder wants to fly Delhi → London → New York. They have a UK transit visa but no US visa.

**Question:** What does Timatic tell you?

**Answer:** Check Timatic for: (1) Indian national transiting UK — transit visa required if changing terminals at Heathrow (they have it, good). (2) Indian national entering USA — B1/B2 visa required. If they don't have a US visa, they CANNOT travel. Inform them immediately — do not ticket. Also check passport validity: US requires validity for the duration of stay, UK requires validity for the trip. If the passport expires in 3 months and the trip is 2 weeks, UK is fine but best to verify. Always check Timatic, never guess.

## Common Mistakes
- **Mistake 1:** Not checking Timatic for transit countries
  - *Why it matters:* Passenger is denied boarding at the transit point because they need a transit visa they don't have
  - *Correct approach:* Check EVERY country in the itinerary — origin, transit, AND destination

- **Mistake 2:** Relying on memory for visa rules
  - *Why it matters:* Rules change frequently — what was visa-free last year might not be today
  - *Correct approach:* Always query Timatic fresh for each booking. It's updated daily.

- **Mistake 3:** Not checking passport validity requirements
  - *Why it matters:* Passenger has a valid passport but it expires in 4 months — many countries require 6 months validity
  - *Correct approach:* Check Timatic's passport section and verify the passenger's passport expiry date

## Key Glossary Terms
- **Timatic:** The IATA-maintained database of travel document, visa, and health requirements for all countries
- **Visa on Arrival (VOA):** A visa obtained at the destination airport's immigration counter upon arrival
- **e-Visa:** An electronically issued visa applied for online before travel
- **Transit Visa:** A visa required to pass through a country even without leaving the airport
- **Machine-Readable Passport (MRP):** A passport with a machine-readable zone (the two lines of characters at the bottom of the photo page)

## Interview Tip
Say: "I always check Timatic for visa, passport, and health requirements before ticketing — for the destination AND every transit point. This prevents denied boarding, which is one of the most expensive and stressful situations for everyone."

## Resources
- [Timatic Web](https://www.timaticweb.com/) — Online version (also covered in Module 21)
- Amadeus Help: `HE TIMATIC` — Timatic access reference
- [IATA Travel Centre](https://www.iatatravelcentre.com/) — Public travel document requirements
