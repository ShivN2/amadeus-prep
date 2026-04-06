---
title: "Module 1: Signing into AMADEUS & Encode/Decode"
weight: 1
type: module
---

## Learning Objectives
- Sign into the Amadeus Selling Platform and navigate the main workspace
- Use encode commands to convert city/airport/airline names into IATA codes
- Use decode commands to convert IATA codes back into readable names

## Overview
Before you can do anything in Amadeus, you need to sign in and understand how the system identifies cities, airports, and airlines. Amadeus uses short codes (called IATA codes) instead of full names — like DEL for Delhi or AI for Air India. Encode/Decode commands let you quickly look up or translate these codes.

## Key Concepts

### Concept 1: The Amadeus Selling Platform
This is the main software agents use to search flights, create bookings, and issue tickets. It runs in a web browser and has both a graphical interface and a command-line (cryptic) entry area. At Coforge, you'll mostly work with the cryptic commands because they're faster.

### Concept 2: Sign-In (JI) Command
`JI` followed by your agent sign (duty code) logs you into the system. Example: `JI 1234AB/SU` signs you in with your ID and duty code. Without signing in, no commands will work.

### Concept 3: Sign-Out (JO) Command
`JO` signs you out. Always sign out when you leave your terminal — this is a security requirement. Leaving a session open means someone else could make bookings under your credentials.

### Concept 4: IATA Codes
The International Air Transport Association assigns 3-letter codes to cities/airports (BOM = Mumbai, LHR = London Heathrow) and 2-letter codes to airlines (6E = IndiGo, UK = Vistara). You'll use these constantly.

### Concept 5: Encode Command (DAN)
`DAN` converts a name into its IATA code. Example: `DANDEL` → shows you Delhi's codes (DEL for city, DEL for airport). `DANAIR INDIA` → shows AI. Think of it as "What's the code for this name?"

### Concept 6: Decode Command (DAC)
`DAC` converts a code back into a name. Example: `DACBOM` → Mumbai/Chhatrapati Shivaji. `DAC6E` → IndiGo. Think of it as "What does this code mean?"

### Concept 7: City vs. Airport Codes
Some cities have multiple airports. NYC has JFK, LGA, EWR. The city code NYC covers all three. When searching availability, using the city code gives broader results. This distinction matters for correct ticketing.

## Step-by-Step Guide
1. Open Amadeus Selling Platform in your browser and enter your credentials.
2. Type `JI` followed by your agent sign and duty code, then press Enter.
3. Verify you're signed in — the system shows your office ID and agent details.
4. To look up a city code: type `DAN` followed by the city name (e.g., `DANLONDON`).
5. To look up what a code means: type `DAC` followed by the code (e.g., `DACLHR`).
6. When done, type `JO` to sign out cleanly.

## Real-World Scenario
**Situation:** A customer asks for flights to "Bangalore" but you're not sure if the code is BLR or BNG.

**Question:** How do you find the correct airport code?

**Answer:** Type `DANBANGALORE` in the command line. Amadeus will return BLR (Kempegowda International Airport). Always verify codes rather than guessing — a wrong code could book the passenger to the wrong destination entirely. In some cases, cities have changed names (Bangalore → Bengaluru) but the IATA code remains BLR.

## Common Mistakes
- **Mistake 1:** Forgetting to sign out (JO) at the end of a shift
  - *Why it matters:* Security violation — someone could create bookings under your credentials
  - *Correct approach:* Always `JO` before leaving, even for breaks

- **Mistake 2:** Confusing city codes with airport codes
  - *Why it matters:* Booking to LON (city) vs LHR (Heathrow) vs LGW (Gatwick) affects the passenger's actual destination airport
  - *Correct approach:* Use `DAN` to check, and confirm the specific airport with the customer

- **Mistake 3:** Misspelling city names in encode commands
  - *Why it matters:* Amadeus may return no results or the wrong city
  - *Correct approach:* Use partial names if unsure — `DANMUM` will still find Mumbai

## Key Glossary Terms
- **GDS (Global Distribution System):** A computerized network that lets travel agents search and book flights, hotels, and cars from multiple providers in one place
- **IATA Code:** A standardized short code assigned to airports (3 letters) and airlines (2 letters) worldwide
- **Cryptic Command:** A text-based command typed into Amadeus (as opposed to clicking buttons in the GUI)
- **PNR:** Passenger Name Record — the booking file that stores all trip details (you'll learn more in Module 2)
- **Office ID:** Your agency's unique identifier in Amadeus — determines what you can access and book

## Interview Tip
Mention that you understand encode/decode is the foundation of all GDS work — every booking starts with correctly identifying airports and airlines. Say: "I know that accuracy at the code level prevents downstream errors in ticketing and billing."

## Resources
- [IATA Airport Code Search](https://www.iata.org/en/publications/directories/code-search/) — Official IATA code lookup
- Amadeus Help: type `HE JI` in the system for built-in sign-in documentation
- [Amadeus Learning Universe](https://www.amadeus.com/en/portfolio/hospitality/learning-universe) — Official training portal
