---
title: "Module 16: Queue Tasks"
weight: 16
type: module
---

## Learning Objectives
- Perform advanced queue operations: place, transfer, and clean queues
- Set up date-based queue reminders
- Understand queue categories and sub-queues

## Overview
Beyond basic queue checking, Amadeus supports advanced queue tasks — placing PNRs on future-dated queues, transferring between queues, and using sub-categories for better organization. These skills help you manage a heavy workload without letting anything slip through the cracks. At Coforge, efficient queue management is a quality metric.

## Key Concepts

### Concept 1: Placing a PNR on a Queue
`QEP/Q7` places the currently displayed PNR on Queue 7 of your office. `QEP/Q7C1` places it on Queue 7, Category 1 (a sub-queue for further organization). Use this when you need someone else to handle a PNR.

### Concept 2: Placing on a Dated Queue
`QEP/Q7/D15JUL` places the PNR on Queue 7, but it only appears on 15 July. This is perfect for follow-ups — "Call customer back on 15 July to confirm." The PNR sits invisible until the date arrives.

### Concept 3: Queue Transfer
`QT/Q12` transfers the current PNR from whatever queue you're processing to Queue 12. Use this when you realize a PNR needs different handling — e.g., moving it from "general" to "schedule changes."

### Concept 4: Queue Categories
Each queue can have numbered categories (C0, C1, C2, etc.). This lets you sub-divide: Queue 7 Category 0 might be "domestic ticketing deadlines" and Category 1 might be "international." Your office defines these — learn them.

### Concept 5: Placing on Another Office's Queue
`QEP/Q7/OR-DELAI08AA` places the PNR on Queue 7 of another office (DELAI08AA). Use this for inter-office communication — for example, sending a PNR to the airline's city office for waitlist clearance.

### Concept 6: Queue Cleanup
At end of day: `QC/` to check remaining items. Aim for zero on critical queues (7, 12). Leftover items are carried to the next day. Regular cleanup prevents queue buildup — a queue with 200 items is unmanageable.

## Step-by-Step Guide
1. To place current PNR on a queue: `QEP/Q7`.
2. To place on a future date: `QEP/Q7/D15JUL`.
3. To place on a specific category: `QEP/Q7C2`.
4. To transfer while processing a queue: `QT/Q12`.
5. To send to another office: `QEP/Q7/OR-OFFICEID`.
6. At end of day: `QC/` to verify all critical queues are clear.

## Real-World Scenario
**Situation:** You're processing Queue 7 and find a PNR with a ticketing deadline of 20 July. Today is 10 July. The customer said they'll confirm and pay on 18 July.

**Question:** How do you handle this?

**Answer:** You can't ticket now (customer hasn't paid), but you don't want to forget. Place it on a dated queue: `QEP/Q50/D18JUL` — put it on your office's follow-up queue (50) set for 18 July. Add a remark to the PNR: `RM CUSTOMER TO CONFIRM AND PAY BY 18JUL - CTC 9876543210`. Remove from Queue 7: `QR`. On 18 July, it automatically appears on Queue 50, reminding you to call.

## Common Mistakes
- **Mistake 1:** Placing PNRs on queues without adding a remark explaining why
  - *Why it matters:* Another agent opens the PNR from the queue and has no idea what action is needed
  - *Correct approach:* Always add `RM` explaining the required action before queuing

- **Mistake 2:** Not using dated queues for future follow-ups
  - *Why it matters:* You rely on memory or sticky notes, which fail — the follow-up is missed
  - *Correct approach:* Use `QEP/Q.../D...` for anything that needs attention on a specific future date

- **Mistake 3:** Queue buildup from not processing daily
  - *Why it matters:* Critical items (ticketing deadlines, schedule changes) get buried in a pile of 200 PNRs
  - *Correct approach:* Process all critical queues daily. Use categories to prioritize.

## Key Glossary Terms
- **Queue Category:** A sub-division within a queue for organization (e.g., Queue 7 Category 1)
- **Dated Queue:** A queue placement that only becomes visible on a specified future date
- **Queue Transfer (QT):** Moving a PNR from one queue to another during processing
- **Queue Placement (QEP):** Adding a PNR to a specified queue for attention
- **Office ID:** The unique identifier for an Amadeus travel agency office (e.g., DELAI08AA)

## Interview Tip
Say: "I use dated queues and categories for systematic follow-up — no task gets forgotten. Queue discipline is a quality habit that prevents missed deadlines and customer issues."

## Resources
- Amadeus Help: `HE QEP` — queue placement reference
- Amadeus Help: `HE QT` — queue transfer reference
- Amadeus Help: `HE QC` — queue count and category reference
