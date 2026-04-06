---
title: "Module 15: Queues"
weight: 15
type: module
---

## Learning Objectives
- Understand what queues are and why they exist in Amadeus
- Access, read, and process PNRs on different queues
- Know the standard queue numbers and their purposes

## Overview
Queues are like inboxes for PNRs. When something needs attention — a ticketing deadline is approaching, a schedule change happened, a waitlist cleared — Amadeus places the PNR on a queue. Agents check their queues regularly and process PNRs that need action. Missing a queue item can mean a missed deadline, cancelled booking, or unhappy customer.

## Key Concepts

### Concept 1: What is a Queue?
A queue is a numbered holding area where PNRs are placed for attention. Think of it like email folders: Queue 7 might be "ticketing deadlines," Queue 12 might be "schedule changes." Each office has standard queues, and the system or other agents place PNRs on them automatically or manually.

### Concept 2: Standard Queue Numbers
Common queues: **Queue 0** = general/default. **Queue 7** = ticketing time limits (PNRs nearing their ticketing deadline). **Queue 12** = schedule changes by airlines. **Queue 50+** = typically custom queues set up by the office for specific purposes.

### Concept 3: Accessing a Queue (QS Command)
`QS7` opens Queue 7 and shows the first PNR. You can also display the queue count first: `QC/` shows how many PNRs are waiting on each queue. This tells you where the work is.

### Concept 4: Queue Count (QC Command)
`QC/` displays a summary: Queue 7 has 15 PNRs, Queue 12 has 3, etc. Check this at the start of every shift — it's your to-do list for the day.

### Concept 5: Moving Through the Queue
After processing a PNR on a queue, type `QN` (Queue Next) to move to the next PNR. `QR` removes the current PNR from the queue (after you've handled it). `QF` exits the queue without processing more.

### Concept 6: Queue Placement
`QE/Q7/RTABC123` places PNR ABC123 on Queue 7. You might do this when you want a colleague to follow up, or when you need to flag a PNR for later action.

## Step-by-Step Guide
1. At the start of your shift: `QC/` to see queue counts.
2. Start with the most urgent queue (usually Queue 7 — ticketing deadlines).
3. Open it: `QS7`.
4. Read the first PNR — determine what action is needed.
5. Process it (issue ticket, contact customer, etc.).
6. Remove from queue: `QR`, or move to next: `QN`.
7. Repeat until the queue is empty.

## Real-World Scenario
**Situation:** It's Monday morning. You check queue counts and find: Queue 7 has 8 PNRs, Queue 12 has 2. Queue 7 is ticketing deadlines, Queue 12 is schedule changes.

**Question:** How do you prioritize and process?

**Answer:** Start with Queue 7 — ticketing deadlines mean PNRs will auto-cancel if not ticketed. Open `QS7`, check each PNR's ticketing time limit. If the deadline is today, issue the ticket immediately or contact the customer. If it's tomorrow, you have more time but still process it. After Queue 7 is clear, move to Queue 12 — check what schedule changes happened and inform affected passengers. Use `QR` after each PNR is handled to keep the queue clean.

## Common Mistakes
- **Mistake 1:** Not checking queues at the start of the shift
  - *Why it matters:* Ticketing deadlines expire, bookings auto-cancel, customers lose their seats
  - *Correct approach:* `QC/` is the FIRST command you type every morning

- **Mistake 2:** Removing a PNR from the queue before actually processing it
  - *Why it matters:* The PNR disappears from the queue but the issue remains unresolved
  - *Correct approach:* Only `QR` after you've completed the required action

- **Mistake 3:** Ignoring non-standard queues
  - *Why it matters:* Your office may have custom queues (50+) for special tasks — missing them means missed work
  - *Correct approach:* Learn your office's queue setup and check ALL active queues

## Key Glossary Terms
- **Queue:** A numbered holding area in Amadeus where PNRs are placed for agent attention
- **QC (Queue Count):** Command showing how many PNRs are on each queue
- **QS (Queue Start):** Command to open a queue and display the first PNR
- **QN (Queue Next):** Move to the next PNR in the queue
- **QR (Queue Remove):** Remove the current PNR from the queue after processing

## Interview Tip
Say: "I understand queue management is central to daily GDS operations. I always check queue counts first thing and prioritize ticketing deadline queues to prevent auto-cancellations."

## Resources
- Amadeus Help: `HE QS` — queue start reference
- Amadeus Help: `HE QC` — queue count reference
- Amadeus Help: `HE QE` — queue placement reference
