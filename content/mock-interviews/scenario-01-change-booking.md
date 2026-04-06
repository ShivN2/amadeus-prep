---
title: "Scenario 1: Change Booking — Round-Trip with Alliance Partners"
description: "Handle a complex booking change involving alliance partner airlines and tight timing"
weight: 1
---

## The Situation

<div class="scenario-box">

A corporate client booked through your agency has a round-trip itinerary:

- **Outbound:** DEL → LHR on Air India (AI) — Star Alliance  
- **Return:** LHR → DEL on Lufthansa (LH) — Star Alliance  
- **Fare:** Published Y-class fare, partially restricted  
- **Ticket:** Already issued (ETKT)

The client calls 48 hours before departure requesting:
1. Change outbound to depart **one day earlier** (same routing)
2. Keep the return flight unchanged
3. They need confirmed seats — cannot waitlist

</div>

## Interview Questions

<div class="question">

**Q1:** Walk me through the exact steps you would take in Amadeus to process this change. What commands would you use?

</div>

<div class="solution">

**Solution Walkthrough:**

1. **Retrieve the PNR:** `RT/RECORD_LOCATOR`
2. **Check fare rules for change fees:** `FQN1` — look at Category 31 (Voluntary Changes)
3. **Check availability on new date:** `AN15JANDELLHR/AAI` — verify seat availability in same class
4. **Cancel the outbound segment:** `XE1` (cancel segment 1 only)
5. **Sell new segment:** `SS1Y1` from availability, or `SO AI302 Y 15JAN DELLHR` direct sell
6. **Re-price the itinerary:** `FXP` — check fare difference and change penalty
7. **Reissue the ticket:** `TTP/RT` (reissue with residual value)
8. **End and retrieve:** `ER`

**Key points to mention:**
- Alliance partner awareness — both AI and LH are Star Alliance, which affects fare rules
- Must check if the fare permits voluntary changes
- Residual value calculation if fare class changes
- ADM risk if reissue is done incorrectly

</div>

<div class="question">

**Q2:** The same fare class (Y) is not available on the new date. What are your options?

</div>

<div class="solution">

**Solution:**
1. **Check next available class:** Scroll through availability for nearby classes (B, M, H)
2. **Calculate upgrade cost:** `FXP` with new class — show client the fare difference + change fee
3. **Check alliance partner alternatives:** `AN15JANDELLHR` without carrier restriction — may find another Star Alliance carrier
4. **Waitlist option:** If client insists on Y class, `SS1Y1/WL` — but client said no waitlists
5. **Contact airline directly:** For corporate clients, airline may open inventory on request (DCS override)

**What to tell the client:** Present options with costs. Never promise availability you haven't confirmed.

</div>

<div class="question">

**Q3:** After reissuing, you notice the PNR shows both the old cancelled segment and the new one. How do you clean this up?

</div>

<div class="solution">

**Solution:**
- Cancelled segments with HX status should be removed: `XE1` if still showing
- Check PNR history `RH` to confirm the change is properly documented
- Verify the ticket coupon status shows the new segments correctly
- Send updated itinerary to client via email: `OP/W-EMAIL@CLIENT.COM`

</div>

<div class="question">

**Q4:** The client later claims they were charged incorrectly. How do you investigate?

</div>

<div class="solution">

**Solution:**
1. Pull up PNR history: `RH` — shows all changes with timestamps
2. Check ticket display: `TWD/TKT_NUMBER` — shows coupon values and fare calc
3. Compare original vs reissued fare calculation
4. Check BSP report for the transaction
5. If error found: process ADM or request refund of difference
6. Document everything — Coforge expects thorough audit trails

</div>

## What Coforge Looks For

<div class="coforge-tip">

1. **Process knowledge:** Do you know the exact command sequence, or are you guessing?
2. **Alliance awareness:** Understanding that Star Alliance membership affects fare rules and rebooking options
3. **Risk awareness:** Mention ADM risk, fare rule compliance, and ticket time limits
4. **Client communication:** How you explain options and costs — not just technical execution
5. **Audit trail:** Emphasis on documentation and PNR history

</div>

## How to Explain Your Answer

Structure your response:
1. **Start with the process** — show you know the workflow
2. **Mention the checks** — fare rules, availability, alliance implications
3. **Address edge cases** — what if fare class isn't available? What about penalties?
4. **End with quality control** — verification, client notification, documentation
