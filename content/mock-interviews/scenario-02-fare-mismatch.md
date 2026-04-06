---
title: "Scenario 2: Fare Mismatch — Debugging & Root Cause Analysis"
description: "Investigate why a quoted fare doesn't match the ticketed amount"
weight: 2
---

## The Situation

<div class="scenario-box">

A travel agent in your team reports a problem:

- **Client was quoted:** ₹45,200 for BOM → SIN round-trip on Singapore Airlines (SQ)
- **Ticket was issued at:** ₹52,800 — a difference of ₹7,600
- **Fare basis:** YLOWSG (promotional fare)
- **Quote date:** 3 days ago
- **Ticketing date:** Today
- The agent says "I used the same PNR, nothing changed"

Your team lead asks you to investigate the root cause and explain what happened.

</div>

## Interview Questions

<div class="question">

**Q1:** What are the most common reasons for a fare mismatch between quote and ticketing? List at least 5.

</div>

<div class="solution">

**Common causes:**
1. **Fare expiry:** The promotional fare (YLOWSG) had a ticket time limit or sale period that expired between quote and ticketing
2. **Currency fluctuation:** ROE (Rate of Exchange) changes — NUC to INR conversion rate updated
3. **Tax changes:** Airport taxes, fuel surcharges (YQ/YR), or government taxes changed
4. **Fare rule violation:** Advance purchase requirement no longer met (e.g., 3-day advance purchase expired)
5. **Inventory change:** The booking class associated with YLOWSG was no longer available, and auto-pricing selected a higher class
6. **Segment status change:** Segment went from HK to HL/HX and was re-confirmed in a different class
7. **Repricing without store:** Agent quoted with `FXP` but didn't store the fare with `FXP/R,FC`

</div>

<div class="question">

**Q2:** Walk me through exactly how you would investigate this in Amadeus.

</div>

<div class="solution">

**Investigation steps:**
1. **Retrieve PNR:** `RT/LOCATOR`
2. **Check PNR history:** `RH` — look for any segment changes, class changes, or repricing events between quote date and today
3. **Check stored fare:** `FXA` — is there a stored fare? What does it show?
4. **Display ticket:** `TWD/TKTNUM` — check the actual fare calculation line
5. **Check fare history:** `FQD BOMSIN/D3DAYSAGO/ASQ` — was YLOWSG available 3 days ago?
6. **Check current fare:** `FQD BOMSIN/ASQ` — is YLOWSG still available today?
7. **Compare ROE:** Check if ROE changed between the two dates
8. **Tax breakdown:** `FXT` — compare tax components between quote and ticket
9. **Check fare rules:** `FQN1/CAT5` (advance purchase) — did the advance purchase window expire?

**Root cause determination:** Most likely the advance purchase requirement (Cat 5) expired. YLOWSG probably required ticketing within X days of booking or Y days before departure. The 3-day delay in ticketing caused the system to select the next available published fare.

</div>

<div class="question">

**Q3:** The root cause is confirmed — advance purchase expired. How do you fix this for the client, and how do you prevent it in the future?

</div>

<div class="solution">

**Immediate fix:**
1. Check if ticket can be voided (if within void period — usually same day)
2. If voidable: void ticket, apply correct fare if still available, reissue
3. If not voidable: calculate if exchange to a different promotional fare is cheaper than the difference
4. If no better option: absorb the cost (agency decision) or explain to client with documentation
5. File an internal incident report

**Prevention:**
1. **Always store fares:** After quoting, use `FXP/R,FC` to store the TST
2. **Set ticket time limits:** `TKOK/15JAN` — ensures ticketing before fare expires
3. **Queue management:** Place PNR on ticketing queue with deadline alert
4. **Agent training:** Ensure team understands advance purchase rules
5. **Automated alerts:** Configure queue-based reminders for approaching TKT deadlines

</div>

<div class="question">

**Q4:** Your team lead asks you to create a brief process document to prevent this from happening again. What would you include?

</div>

<div class="solution">

**Process document outline:**
1. **Quoting SOP:** Always store TST after pricing (`FXP/R,FC`). Never rely on verbal/email quotes.
2. **Ticket time limit protocol:** Set TKT time limit immediately. Use the earlier of: fare rule deadline, airline TKT limit, or agency policy.
3. **Queue placement:** All quoted-but-not-ticketed PNRs go on Queue 7 (ticketing queue) with date-based categories.
4. **Daily queue sweep:** Morning check of approaching TKT deadlines.
5. **Escalation:** If fare expires before client confirms, re-price and notify client immediately — don't wait.
6. **Audit:** Weekly review of fare differences >5% between quote and ticket.

</div>

## What Coforge Looks For

<div class="coforge-tip">

1. **Systematic debugging:** Not guessing — a structured investigation approach
2. **GDS command knowledge:** Knowing the exact commands to investigate fare issues
3. **Root cause analysis:** Going beyond "the fare changed" to explain WHY
4. **Process improvement:** Not just fixing the problem, but preventing recurrence
5. **Business awareness:** Understanding the financial impact on agency and client relationship
6. **Documentation skills:** Ability to create clear SOPs from incident learnings

</div>

## How to Explain Your Answer

1. **Show your debugging framework** — systematic, not random
2. **Demonstrate command mastery** — name specific Amadeus entries
3. **Identify the root cause clearly** — one sentence, no ambiguity
4. **Propose both fix and prevention** — reactive + proactive
5. **Quantify when possible** — "₹7,600 loss" not "some money"
