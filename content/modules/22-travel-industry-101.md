---
title: "Module 22: Travel Industry 101"
weight: 22
type: module
---

## Learning Objectives
- Understand the structure of the global travel industry and its key players
- Know the role of IATA, airlines, travel agencies, and GDS providers
- Explain how money flows from passenger to airline through intermediaries

## Overview
Before diving into GDS commands, it helps to understand the industry you're working in. The travel industry is a massive ecosystem: airlines provide the service, travel agencies sell it, GDS systems connect them, and IATA sets the rules. Understanding this ecosystem helps you answer "why" — why do we use record locators? Why do fare rules exist? Why does BSP matter? The answers make the technical work meaningful.

## Key Concepts

### Concept 1: Airlines
Airlines operate flights and set fares, schedules, and policies. Full-service carriers (Air India, Lufthansa) include meals and baggage. Low-cost carriers (IndiGo, SpiceJet) charge for add-ons. The airline is the product provider — everything else in the chain exists to sell their seats.

### Concept 2: Travel Agencies (TMCs)
Travel Management Companies (TMCs) like Coforge's travel clients sell airline tickets to customers. They access airline inventory through the GDS. Agencies earn commissions or service fees. They add value through expert advice, complex itinerary building, and corporate travel management.

### Concept 3: GDS Providers
Three major GDS systems: **Amadeus** (largest globally, strong in Europe/Asia), **Sabre** (strong in Americas), **Travelport** (Galileo + Worldspan). They're the technology platforms connecting airline inventory to travel agencies. Think of them as the "app store" where agencies access airline products.

### Concept 4: IATA (International Air Transport Association)
IATA is the trade association for airlines. It standardizes codes (IATA airport/airline codes), manages BSP (financial settlement between agencies and airlines), sets safety and security standards, and publishes industry regulations. Most GDS rules trace back to IATA standards.

### Concept 5: BSP (Billing and Settlement Plan)
BSP is IATA's financial system that handles money flow between travel agencies and airlines. When an agency issues a ticket, BSP collects the money from the agency and distributes it to the correct airline. It's the financial plumbing that makes the whole system work — understanding it explains why ticket issuance is taken so seriously.

### Concept 6: ICAO
The International Civil Aviation Organization (a UN agency) sets global aviation safety, security, and environmental standards. ICAO codes are 4-letter airport codes (VIDP = Delhi) used in aviation operations, different from IATA's 3-letter codes (DEL). You'll mostly use IATA codes, but ICAO comes up in technical contexts.

## Step-by-Step Guide
1. **The passenger** wants to fly from A to B.
2. **The airline** publishes schedules, fares, and seat inventory.
3. **The GDS** (Amadeus) aggregates this inventory into a searchable system.
4. **The travel agency** (or OTA) searches the GDS, finds options, and books.
5. **The ticket** is issued through the GDS, creating a financial transaction.
6. **BSP** settles the money — collecting from the agency, paying the airline.
7. **The passenger** flies, and the cycle completes.

## Real-World Scenario
**Situation:** In an interview, you're asked: "Explain how a flight booking reaches the airline when a customer calls a travel agency."

**Question:** Walk through the entire chain.

**Answer:** The customer calls the agency. The agent searches Amadeus (GDS) for available flights — Amadeus pulls real-time inventory from the airline's reservation system. The agent selects a flight and creates a PNR. When the ticket is issued through Amadeus, it's recorded in both the GDS and the airline's system. The financial transaction goes through BSP — the agency's BSP account is debited, and the airline receives the payment in the next BSP settlement cycle (typically bi-weekly). The customer gets an e-ticket number that the airline's system recognizes at check-in.

## Common Mistakes
- **Mistake 1:** Thinking the GDS IS the airline
  - *Why it matters:* The GDS is an intermediary, not the service provider. Airline rules override GDS display.
  - *Correct approach:* Understand that Amadeus shows what airlines publish, but the airline's own system is the final authority.

- **Mistake 2:** Not understanding BSP settlement cycles
  - *Why it matters:* If a ticket is voided after BSP cut-off, the financial handling changes significantly
  - *Correct approach:* Learn your BSP reporting and settlement dates — they affect refund and void timing.

- **Mistake 3:** Confusing IATA with ICAO
  - *Why it matters:* Using the wrong code system in the wrong context causes confusion
  - *Correct approach:* GDS work uses IATA codes. Aviation operations (ATC, pilots) use ICAO codes.

## Key Glossary Terms
- **GDS (Global Distribution System):** Technology platform connecting airline inventory to travel agencies (Amadeus, Sabre, Travelport)
- **IATA:** International Air Transport Association — the airline industry's trade body that sets standards
- **BSP (Billing and Settlement Plan):** IATA's financial clearing system between agencies and airlines
- **TMC (Travel Management Company):** A travel agency, often specializing in corporate travel
- **OTA (Online Travel Agency):** A website that sells travel directly to consumers (MakeMyTrip, Expedia)

## Interview Tip
Say: "I understand the full ecosystem — airline, GDS, agency, BSP. I know that Amadeus is the technology layer connecting supply (airlines) to distribution (agencies), and BSP handles the financial settlement. This helps me understand why accuracy in ticketing matters."

## Resources
- [IATA Official Website](https://www.iata.org/) — Industry standards and publications
- [Amadeus Corporate Site](https://www.amadeus.com/) — GDS provider information
- [ICAO](https://www.icao.int/) — International aviation standards
