---
title: "Module 28: Quality/Compliance (QA Angle)"
weight: 28
type: module
---

## Learning Objectives
- Understand quality standards in GDS operations
- Apply error prevention techniques in daily work
- Know compliance requirements for ticketing and BSP

## Overview
In GDS operations, a single typo can mean a passenger denied boarding, an airline rejecting a ticket, or the agency losing thousands in BSP reconciliation. Quality and compliance aren't optional — they're the foundation. At Coforge and every serious travel operation, QA (Quality Assurance) is everyone's responsibility. This module covers the habits and checks that prevent errors before they happen.

## Key Concepts

### Concept 1: The Cost of Errors
A name misspelling on an international ticket = ticket void + reissue + possible visa rejection. A wrong currency pricing = BSP adjustment, agency liability. A missed ticketing deadline = auto-cancellation, customer complaint, revenue loss. Errors compound: one mistake in booking creates 5x work in corrections. Prevention is always cheaper than correction.

### Concept 2: Pre-Ticket Checklist
Before issuing any ticket, run through: (1) Passenger name matches passport exactly? (2) Flight segments match what was agreed with customer? (3) Booking class matches fare quoted? (4) Fare, taxes, total match what was communicated? (5) Form of payment is correct? (6) SSR elements are all added? If all yes → issue. If any doubt → don't issue until verified.

### Concept 3: BSP Compliance
BSP (Billing and Settlement Plan) rules are strict. Ticketing deadlines must be met. Refunds must follow fare rules. Exchanges must be processed correctly. BSP audits happen — agencies can be fined for systematic errors. Always follow the BSP ticketing calendar and reporting deadlines.

### Concept 4: Data Protection (GDPR and Indian PDP)
Customer personal data (phone, email, passport) is sensitive. Don't share PNR information with third parties without authorization. Don't discuss customer details in writing or unsecured channels. This is both ethics and legal compliance.

### Concept 5: Audit Trails
Amadeus keeps complete logs of every action: who did what, when, from which terminal. These logs are used for internal QA, dispute resolution, and regulatory compliance. Never try to alter or delete logs — they cannot be changed and any attempt at manipulation is a serious policy violation.

### Concept 6: Continuous Improvement
QA isn't just catching errors — it's learning from them. When an error happens: document what went wrong, why it happened, and what process change prevents recurrence. Good teams have regular QA reviews where real errors are discussed (anonymously) to prevent repeat mistakes.

## Step-by-Step Guide
1. **Before every action:** Verify you're working on the correct PNR (check record locator + passenger name).
2. **Before pricing:** Verify segments are HK (confirmed), not HL (waitlisted).
3. **Before ticketing:** Run the pre-ticket checklist.
4. **After ticketing:** Verify ticket number, check TWD, confirm with customer.
5. **End of shift:** Check queue counts — don't leave urgent items for the next shift.
6. **Weekly:** Review any errors or tickets adjustments from the past week — learn from them.

## Real-World Scenario
**Situation:** You issued a ticket for Mrs. Anand — DEL to London via Dubai. 30 minutes later, she calls back furious. "I never approved Business class! I wanted Economy!" The ticket shows J class (Business) at ₹2,80,000. Economy Y class was ₹85,000.

**Question:** How did this happen and what do you do?

**Answer:** How it happened: The availability showed J class first (or the agent sold the wrong line). The TST showed the price but the customer may not have seen it clearly, or the agent didn't verbally confirm the class. Post-incident: First, apologize sincerely. Check if the fare rules allow a refund/exchange without penalty — if it's within void window, void the ticket and reissue in Y class. If past void window, check fare rules for voluntary change fees. Process the correction with the customer. Add a `RM` documenting: "Ticket issued in wrong class per customer request — processing exchange/refund." QA lesson: Always verbally confirm fare class before pricing. Show the TST to the customer. Get explicit "yes, please issue" before `TTP`.

## Common Mistakes
- **Mistake 1:** Assuming the customer will notice errors on the itinerary
  - *Why it matters:* Customers often don't check carefully — by the time they notice, it's past void window
  - *Correct approach:* Proactively read back the key details (route, dates, class, total price) before ticketing

- **Mistake 2:** Rushing to close queues without proper follow-up
  - *Why it matters:* An empty queue looks clean but unresolved items may resurface as bigger problems
  - *Correct approach:* Only QR (remove from queue) after the action is fully completed and documented

- **Mistake 3:** Not participating in QA reviews
  - *Why it matters:* If your team has systematic errors (e.g., everyone misses DOCS), reviews catch patterns
  - *Correct approach:* Engage actively in QA discussions — anonymous error sharing makes the whole team better

## Key Glossary Terms
- **QA (Quality Assurance):** Systematic processes to ensure accuracy and compliance in GDS operations
- **BSP Compliance:** Adherence to IATA Billing and Settlement Plan rules and deadlines
- **Pre-Ticket Checklist:** A mental or written check of all PNR elements before issuing a ticket
- **Error Documentation:** Recording what went wrong and why, for process improvement
- **PDP (Personal Data Protection):** India's data privacy law governing handling of personal information

## Interview Tip
Say: "I understand that in GDS operations, quality isn't optional — errors cost money, time, and customer trust. I use a pre-ticket checklist, verify everything before issuing, and document my work. At Coforge, QA is everyone's responsibility, not just the supervisor's."

## Resources
- [IATA BSP Guidelines](https://www.iata.org/) — BSP compliance documentation
- [CERT-IN / MeitY](https://www.cert-in.org.in/) — Indian cybersecurity and data protection
- [GDPR Overview](https://gdpr.eu/) — General Data Protection Regulation principles (relevant for global compliance)
- Amadeus: Quality Management System documentation
