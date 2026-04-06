---
title: "Module 8: Cancelling & Changing PNR Elements"
weight: 8
type: module
---

## Learning Objectives
- Cancel individual segments, names, or the entire itinerary from a PNR
- Rebook flights to different dates or classes
- Understand the impact of changes on ticketing and SSRs

## Overview
Plans change. Customers cancel trips, switch dates, or upgrade classes. You need to modify PNRs without breaking them. Cancelling the wrong element or in the wrong order can cause cascading problems — like orphaned tickets or lost SSRs. This module teaches you how to make changes cleanly.

## Key Concepts

### Concept 1: Cancel a Segment (XI Command)
`XI2` cancels segment 2 (the second flight) from the itinerary. `XI3,5` cancels segments 3 and 5. After cancelling, remaining segments renumber automatically. Always verify after cancellation.

### Concept 2: Cancel Entire Itinerary (XI Command)
`XI` (without a number) cancels ALL segments. Use this for a full trip cancellation. The PNR still exists (with names, contacts) but has no flights. You must then either rebook or delete the PNR.

### Concept 3: Cancel Other Elements (XE Command)
`XE5` cancels element 5 from the PNR (could be a remark, SSR, or contact). Check the element numbers carefully — deleting the wrong element is a common mistake. Always redisplay after deletion.

### Concept 4: Rebooking (SB Command)
`SB Y20JUL/2` rebooks segment 2 to Y class on 20 July. This is a shortcut that cancels the old segment and books the new one in one step. Cleaner than manually cancelling and re-selling.

### Concept 5: Name Change Restrictions
Most airlines do NOT allow name changes after ticketing. You typically need to cancel the ticket, cancel the PNR, and rebook — or pay a name correction fee. Always confirm the airline's policy before attempting.

### Concept 6: Impact on Tickets and SSRs
Cancelling a segment may void associated tickets and SSRs. If a meal request was linked to segment 2 and you cancel it, the SSR disappears. When rebooking, you need to re-add SSRs to the new segment.

## Step-by-Step Guide
1. Retrieve the PNR: `RTABC123`.
2. To cancel one flight: `XI2` (cancels segment 2).
3. To cancel the entire itinerary: `XI`.
4. To rebook to a new date: `SB Y20JUL/2` (rebook segment 2 to 20 July, Y class).
5. To remove a remark or SSR: identify its element number, then `XE5`.
6. Re-add any SSRs that were lost due to segment cancellation.
7. Save: `ER` and verify the updated PNR.

## Real-World Scenario
**Situation:** A customer has a round trip DEL-BOM (segment 1, 20 June) and BOM-DEL (segment 2, 25 June). They want to change the return from 25 June to 28 June, same flight.

**Question:** How do you change just the return?

**Answer:** Retrieve the PNR. Type `SB Y28JUN/2` to rebook segment 2 to 28 June in Y class. The system cancels the old return and books the new one. Verify the new segment shows HK (confirmed). Check if any SSRs (meals, seats) need to be re-added for the new segment. Save with `ER`. If the ticket was already issued, you may need to do an exchange (covered in Module 19).

## Common Mistakes
- **Mistake 1:** Cancelling the wrong segment number
  - *Why it matters:* You cancel the outbound instead of the return, and if the airline processes it immediately, the seats are gone
  - *Correct approach:* Always double-check segment numbers by redisplaying the PNR before cancelling

- **Mistake 2:** Forgetting to re-add SSRs after rebooking
  - *Why it matters:* The wheelchair or special meal was linked to the cancelled segment — it's gone now
  - *Correct approach:* After any segment change, review the SSR section and re-add what's needed

- **Mistake 3:** Cancelling a segment on a ticketed PNR without handling the ticket first
  - *Why it matters:* Creates a mismatch between the ticket and the PNR, causing check-in issues
  - *Correct approach:* For ticketed PNRs, handle the ticket (void, refund, or exchange) before or alongside the segment change

## Key Glossary Terms
- **XI (Cancel Itinerary/Segment):** Command to remove one or all flight segments from a PNR
- **XE (Cancel Element):** Command to remove any PNR element by its line number
- **SB (Rebook):** Command to change a segment to a new date or class in one step
- **Void:** Cancelling a ticket within 24 hours of issuance (usually penalty-free)
- **Orphan Segment:** A flight segment that exists in the airline's system but is disconnected from the PNR — causes confusion

## Interview Tip
Say: "I always verify segment numbers before cancelling and check for ticket and SSR impacts. At Coforge, QA attention to detail on PNR modifications prevents costly errors like orphaned tickets or lost service requests."

## Resources
- Amadeus Help: `HE XI` — cancel itinerary reference
- Amadeus Help: `HE XE` — cancel element reference
- Amadeus Help: `HE SB` — rebook reference
