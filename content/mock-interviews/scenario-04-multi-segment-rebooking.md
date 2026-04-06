---
title: "Scenario 4: Multi-Segment Rebooking — Complex Itinerary Disruption"
description: "Rebuild a complex multi-airline itinerary after flight cancellation"
weight: 4
---

## The Situation

<div class="scenario-box">

A VIP corporate traveler has the following ticketed itinerary (all confirmed HK):

| Seg | Route | Airline | Class | Date | Status |
|-----|-------|---------|-------|------|--------|
| 1 | BOM → DEL | Air India (AI) | J | 15JAN | HK |
| 2 | DEL → FRA | Lufthansa (LH) | C | 15JAN | HK |
| 3 | FRA → LHR | Lufthansa (LH) | C | 16JAN | HK |
| 4 | LHR → JFK | British Airways (BA) | J | 18JAN | HK |
| 5 | JFK → BOM | Air India (AI) | J | 25JAN | HK |

**The disruption:** Segment 2 (DEL→FRA on LH) is CANCELLED by the airline. You receive a schedule change notification on Queue 7.

**Complications:**
- Segment 3 (FRA→LHR) is on the SAME ticket and depends on arriving at FRA
- The traveler has a meeting in London on 17JAN — cannot be delayed
- The traveler is a Lufthansa Senator (Star Alliance Gold)
- Original ticket is a multi-carrier fare filed through AI

</div>

## Interview Questions

<div class="question">

**Q1:** You see the schedule change on Queue 7. Walk through your immediate actions in the first 15 minutes.

</div>

<div class="solution">

**Immediate actions:**

1. **Retrieve and assess:** `RT/LOCATOR` — confirm which segment is affected
2. **Check segment status:** Look for UN (unable), HX (cancelled), or TK (schedule change) status
3. **Note the ticket number and fare basis** — multi-carrier fare adds complexity
4. **Check Lufthansa alternatives on same date:**
   ```
   AN15JANDELFRA/ALH
   ```
5. **Check Star Alliance alternatives:**
   ```
   AN15JANDELFRA    (neutral display — all carriers)
   ```
6. **Check if LH offers automatic rebooking:** Often LH will rebook on next available flight — check if segment 2 already shows a new time
7. **Assess connection impact:** If the replacement DEL→FRA arrives after the FRA→LHR departure, segment 3 is also broken

**Critical:** Do NOT cancel anything yet. Assess all options first. The old segments protect fare rules.

</div>

<div class="question">

**Q2:** There's no same-day LH flight DEL→FRA. What alternative routing options would you explore?

</div>

<div class="solution">

**Alternative routings (in order of preference):**

1. **DEL→MUC→LHR on LH:** Skip FRA entirely, fly via Munich
   ```
   AN15JANDELMUC/ALH
   AN15JANMUCLHR/ALH
   ```

2. **DEL→FRA on different Star Alliance carrier (Swiss, Austrian):**
   ```
   AN15JANDELFRA/ALX,AOS    (Swiss LX, Austrian OS)
   ```

3. **DEL→LHR direct on AI or BA:**
   ```
   AN15JANDELLHR/AAI,ABA
   ```
   This eliminates segments 2 AND 3 — simplifies the itinerary

4. **DEL→LHR on Virgin Atlantic or other non-alliance:**
   Only if Star Alliance has no options — may require fare difference

**Recommended approach:**
Option 3 (DEL→LHR direct) is cleanest IF:
- Business/First class available
- Fare rules permit rerouting (involuntary change = usually yes)
- Arrives in time for 17JAN meeting

**Senator status leverage:** As LH Senator, the passenger may get priority rebooking. Contact LH service center if needed.

</div>

<div class="question">

**Q3:** You decide on DEL→LHR direct on Air India. How do you rebuild the PNR and handle the ticket?

</div>

<div class="solution">

**Step-by-step rebuild:**

1. **Add new segment BEFORE removing old ones:**
   ```
   SO AI111 J 15JAN DELLHR     (sell direct DEL-LHR)
   ```

2. **Verify new segment is confirmed (HK):**
   ```
   RT                           (redisplay PNR)
   ```

3. **Cancel old segments 2 and 3 (DEL-FRA, FRA-LHR):**
   ```
   XE2,3                       (cancel both)
   ```

4. **Rearrange segment order if needed:**
   ```
   RR                          (reorder segments chronologically)
   ```

5. **Re-price as involuntary change:**
   ```
   FXP/R,U                    (price with involuntary indicator)
   ```

6. **Check fare difference:** Involuntary change = passenger should NOT pay more. If system calculates additional collection, override or contact fare desk.

7. **Reissue ticket:**
   ```
   TTP/RT/INV                 (reissue, involuntary)
   ```

8. **Update SSRs:**
   - Seat requests for new segment
   - Meal preferences
   - DOCS/APIS for new routing
   - Frequent flyer: `SR FQTV LH-HHH123456789/S1` (may need to re-link)

9. **End and retrieve:** `ER`

10. **Notify passenger:** Send updated itinerary

**Critical checks:**
- Verify coupon status on reissued ticket
- Confirm all remaining segments (BOM-DEL, LHR-JFK, JFK-BOM) unaffected
- Confirm new LHR arrival allows for 18JAN BA flight

</div>

<div class="question">

**Q4:** After rebooking, Lufthansa sends an ADM (Agency Debit Memo) claiming improper handling. How do you respond?

</div>

<div class="solution">

**ADM defense:**

1. **Gather evidence:**
   - PNR history (`RH`) showing the UN/HX from LH (proves involuntary)
   - Queue 7 timestamp showing when schedule change was received
   - Screenshot/record of no LH alternatives available
   - Original ticket and reissued ticket fare calculations

2. **ADM dispute process:**
   - File dispute through BSPlink within the response deadline (usually 15 days)
   - Reference IATA Resolution 850m (involuntary rerouting)
   - Include: original PNR history, proof of cancellation by LH, no same-day LH alternative

3. **Key argument:**
   - "Airline-initiated schedule change (involuntary) → passenger protected on next available routing per IATA Res 735d"
   - "No LH alternative available on same date — rerouted on original ticketing carrier (AI) at no additional cost to passenger"

4. **Prevention:**
   - Always document reason codes when processing involuntary changes
   - Use involuntary indicators in reissue commands
   - Keep copies of availability displays showing no alternatives

</div>

<div class="question">

**Q5:** What would you do differently if this passenger was NOT a Star Alliance Gold member?

</div>

<div class="solution">

**Differences without Gold status:**
1. **No priority rebooking queue** — longer wait for airline assistance
2. **No lounge access** during delays — may need to arrange hotel if overnight
3. **Class of service:** May not get J/C class on alternative — could be offered Y class
4. **Self-service approach:** More reliance on GDS rebooking vs airline service desk
5. **Waitlist priority:** Lower priority for premium cabin waitlists
6. **Same entitlements for involuntary changes:** EU261 / DGCA rights still apply regardless of status

**Key point:** The PROCESS is the same. The STATUS affects service level and priority, not the passenger's rights during involuntary disruption.

</div>

## What Coforge Looks For

<div class="coforge-tip">

1. **Calm under pressure:** Complex disruptions are daily reality — show methodical thinking, not panic
2. **Multi-airline awareness:** Understanding alliance, interline, and fare implications across carriers
3. **Ticket reissue competence:** This is where many agents make costly errors — show precision
4. **ADM awareness:** Knowing about ADMs and how to prevent/dispute them shows industry maturity
5. **Passenger-first thinking:** Meeting the traveler's need (London meeting on 17JAN) drives the solution
6. **Regulatory knowledge:** Mentioning IATA resolutions, EU261, and passenger rights

</div>

## How to Explain Your Answer

1. **Set up the complexity** — "This is a multi-carrier, multi-segment involuntary change..."
2. **Show your decision framework** — assess before acting, preserve before deleting
3. **Walk through commands** — specific entries, not vague descriptions
4. **Address the business angle** — ADM risk, client relationship, cost impact
5. **Mention what you'd document** — audit trail consciousness
