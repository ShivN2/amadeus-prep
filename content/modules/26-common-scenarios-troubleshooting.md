---
title: "Module 26: Common Scenarios & Troubleshooting"
weight: 26
type: module
---

## Learning Objectives
- Diagnose and resolve the most common GDS errors and problems
- Handle frequent real-world scenarios: no-shows, duplicate PNRs, passive segments
- Develop a systematic troubleshooting approach

## Overview
Things go wrong. Commands return errors, PNRs get into messy states, and customers have problems you haven't seen before. This module covers the most common issues you'll face at Coforge and a systematic approach to troubleshooting. The goal isn't to memorize every error — it's to know how to diagnose and fix problems methodically.

## Key Concepts

### Concept 1: Common Error Messages
**"NEED RECEIVED FROM"** = missing RF element. **"CHECK FORMAT"** = syntax error in your command. **"SIMULTANEOUS CHANGES"** = someone else modified the PNR while you were working on it (re-retrieve with RT). **"NO FARE FOR CLASS USED"** = the pricing system can't find a valid fare for the booked class.

### Concept 2: No-Show Handling
When a passenger doesn't show up for a flight, the airline marks the segment as "NO SHOW." The remaining itinerary may be auto-cancelled. You need to: check the ticket status, determine if it's refundable, and either rebook or process a refund.

### Concept 3: Duplicate PNRs
Sometimes the same passenger ends up with two PNRs for the same trip — created by different agents or channels. This causes problems: double seats held, confusion at check-in. Solution: identify the correct PNR, cancel the duplicate, verify the retained PNR is complete.

### Concept 4: Passive Segments
A passive segment (GK status) is a "ghost booking" — it exists in the PNR but isn't actually booked with the airline. Used for: tickets issued outside the GDS, or manual fare override. If you see GK segments, confirm whether the actual booking exists with the airline.

### Concept 5: Schedule Change Recovery
Airlines frequently change schedules. When they do, the PNR segment updates automatically but may show UN (unable) or TK (schedule change). Process: check the new schedule, see if it works for the passenger, rebook if needed, and reissue the ticket if the change is significant.

### Concept 6: Systematic Troubleshooting
When something goes wrong: (1) Read the error message carefully — it usually tells you what's wrong. (2) Use `HE` to look up the error. (3) Re-retrieve the PNR (`RT`) to get a fresh view. (4) Check the history (`RH`) to see what changed. (5) If stuck, escalate to a senior agent or the airline's help desk.

## Step-by-Step Guide
1. **Error appears:** Read it carefully. Don't panic.
2. **Look it up:** `HE ERROR-CODE` for explanation.
3. **Re-retrieve:** `RTABC123` to refresh the PNR display.
4. **Check history:** `RH` shows all changes made to the PNR.
5. **Identify the cause:** Missing element? Syntax error? External change?
6. **Fix it:** Add the missing element, correct the syntax, or handle the change.
7. **Verify:** Save with `ER` and confirm the fix worked.

## Real-World Scenario
**Situation:** You try to price a PNR (`FXP`) and get "NO FARE FOR CLASS USED." The PNR has a DEL-BOM segment in V class.

**Question:** How do you troubleshoot?

**Answer:** This error means the pricing system can't find a published fare for V class on this route/date. Possible causes: (1) V class fare requires a round-trip but you only have a one-way — check fare rules. (2) The fare has advance purchase requirements that aren't met. (3) V class fare doesn't exist on this specific airline for this route. Solution: try `FXP/R,L` to find the lowest available fare regardless of booked class. Or check `FQDDELBOM/AAI` to see what fares exist and which classes they apply to. Rebook in the correct class if needed.

## Common Mistakes
- **Mistake 1:** Ignoring error messages and retrying the same command
  - *Why it matters:* The error message tells you what's wrong — retrying without changes just gives the same error
  - *Correct approach:* Read, understand, fix, then retry

- **Mistake 2:** Not using PNR history (RH) when troubleshooting
  - *Why it matters:* You can't fix what you don't understand — RH shows the timeline of changes
  - *Correct approach:* `RH` should be your second command after re-retrieving when diagnosing issues

- **Mistake 3:** Escalating too quickly without basic checks
  - *Why it matters:* Most issues are simple — missing elements, syntax errors, or stale PNR displays
  - *Correct approach:* Do the basic checks (error lookup, re-retrieve, history) before escalating

## Key Glossary Terms
- **No-Show:** A passenger who doesn't check in for their flight
- **Passive Segment (GK):** A segment in the PNR that isn't actively booked with the airline
- **Duplicate PNR:** Two or more PNRs for the same passenger on the same journey
- **RH (Retrieve History):** Command to view the chronological history of changes to a PNR
- **Simultaneous Changes:** Error when multiple agents modify the same PNR at the same time

## Interview Tip
Say: "I use a systematic approach to troubleshooting: read the error, check help, re-retrieve the PNR, review history, then fix. Most GDS issues are resolvable with basic checks — the key is staying calm and methodical."

## Resources
- Amadeus Help: `HE*` — help index for all error codes
- Amadeus Help: `HE RH` — PNR history reference
- [Amadeus Community](https://community.amadeus.com/) — Agent forums for shared troubleshooting
