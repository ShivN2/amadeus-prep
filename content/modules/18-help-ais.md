---
title: "Module 18: Help & AIS"
weight: 18
type: module
---

## Learning Objectives
- Use the built-in Help (HE) system to find command syntax and options
- Navigate AIS (Amadeus Information System) for airline policies and procedures
- Develop self-reliance for troubleshooting within the GDS

## Overview
You won't memorize every Amadeus command on day one — and you don't need to. Amadeus has a built-in help system that explains every command, its syntax, and examples. AIS provides airline-specific information like baggage policies, check-in rules, and ticketing procedures. Knowing how to help yourself makes you faster and more independent.

## Key Concepts

### Concept 1: Help Command (HE)
`HE` followed by a command code shows its documentation. `HE AN` explains the availability command. `HE SS` explains selling segments. `HE FXP` explains pricing. This is your built-in manual — use it constantly when learning.

### Concept 2: Help Pages
Help results may span multiple pages. `MD` (Move Down) scrolls to the next page. The help entries include syntax, parameters, and examples. Read the examples — they're the fastest way to learn.

### Concept 3: AIS (Amadeus Information System)
AIS stores airline-specific information: baggage allowances, ticketing deadlines, check-in policies, frequent flyer rules. Access it with `GG` commands. This is the authoritative source — better than Googling because it's what the airline has officially published in the GDS.

### Concept 4: Airline Information (GGAIR Command)
`GGAIRAI` shows Air India's general information in the GDS. `GGAIRAI/BG` shows baggage policies. `GGAIRAI/TK` shows ticketing rules. Replace AI with any airline code.

### Concept 5: Help Index
`HE*` or `HE INDEX` shows categories of help topics. If you don't know the command code but know what you want to do (e.g., "how to add a remark"), start from the index to find the right command.

### Concept 6: Error Messages
When a command fails, Amadeus shows an error message. Type `HE` followed by the error code to understand what went wrong. Example: if you see "NEED RECEIVED FROM" — that tells you RF is missing. Understanding errors is half the troubleshooting.

## Step-by-Step Guide
1. When you don't know a command: `HE TOPIC` (e.g., `HE QUEUE`).
2. When you know the command but forgot syntax: `HE AN` (for availability).
3. To scroll through help pages: `MD`.
4. For airline-specific info: `GGAIRAI` (replace AI with airline code).
5. For baggage info: `GGAIRAI/BG`.
6. For error explanation: `HE ERROR-CODE`.

## Real-World Scenario
**Situation:** A customer asks about Emirates' checked baggage allowance for economy class on Dubai to London. You don't remember it off the top of your head.

**Question:** How do you find the answer within Amadeus?

**Answer:** Type `GGAIREK/BG` (Emirates airline info, baggage section). The AIS displays Emirates' official baggage policy: economy class on EK typically allows 30 kg checked baggage for this route. You now have the authoritative answer without leaving the system or googling. Quote the GDS source — it's more reliable than a random website and it's what the airline has published for agents.

## Common Mistakes
- **Mistake 1:** Asking colleagues for command syntax instead of using HE
  - *Why it matters:* Colleagues might give outdated or incorrect info; HE is always current
  - *Correct approach:* `HE COMMAND` first, ask a colleague only if help is unclear

- **Mistake 2:** Googling airline policies instead of checking AIS
  - *Why it matters:* Websites may be outdated; AIS is the airline's official GDS publication
  - *Correct approach:* `GGAIR` for authoritative airline information

- **Mistake 3:** Ignoring error messages
  - *Why it matters:* The error tells you exactly what's wrong — ignoring it and retrying blindly wastes time
  - *Correct approach:* Read the error, type `HE ERROR-CODE` if unclear, then fix the root cause

## Key Glossary Terms
- **HE (Help Entry):** The built-in command to access Amadeus documentation for any topic
- **AIS (Amadeus Information System):** A database of airline-specific policies and procedures accessible within the GDS
- **GG (General Information):** The command prefix for accessing AIS airline information
- **Error Code:** A message returned when a command fails, indicating the specific problem
- **Syntax:** The exact format and order of elements in a command (e.g., `AN date city-pair`)

## Interview Tip
Say: "I'm comfortable using the built-in Help system and AIS to find answers independently. Self-reliance is important in a GDS role — I don't need to memorize everything as long as I know how to look it up quickly."

## Resources
- Amadeus Help: `HE*` — help index
- Amadeus Help: `HE GG` — AIS access reference
- Amadeus Learning Universe — supplementary training materials
