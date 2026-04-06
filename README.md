# ✈ AMADEUS GDS Interview Prep — Coforge

Comprehensive interview preparation platform for AMADEUS GDS positions at Coforge. Built with Hugo for fast, static site deployment.

## Quick Start

```bash
# 1. Install Hugo
brew install hugo          # macOS
# or: snap install hugo    # Linux

# 2. Clone and run
git clone <this-repo>
cd amadeus-prep
hugo server -D

# 3. Open http://localhost:1313
```

## Structure

```
content/
├── modules/          # 28 learning modules
│   ├── 01-gds-fundamentals/
│   ├── 02-pnr-basics/
│   └── ... (28 total)
├── quizzes/          # 28 module quizzes (Typeform integration)
├── mock-interviews/  # 4 realistic interview scenarios
└── index.md
```

## Modules (28)

### GDS Technical (1-21)
1. GDS Fundamentals
2. PNR Basics
3. Amadeus Cryptic Commands
4. Air Availability & Timetables
5. Air Sell & Booking
6. Fare Display & Pricing
7. Fare Rules & Conditions
8. Ticketing & Issuance
9. Queue Management
10. Seating & SSRs
11. Hotel & Car Bookings
12. Profiles & Templates
13. Amadeus Selling Platform Connect
14. Mini Rules & Pricing Automation
15. Amadeus Web Services & APIs
16. PNR Quality Control
17. Schedule Changes & Rebooking
18. Group Bookings
19. MCO & EMD
20. Timatic & Travel Documentation
21. Reporting & Statistics

### Business Context (22-25)
22. Airline Industry Overview
23. Coforge Travel Practice
24. Travel Technology Trends
25. BSP & IATA Regulations

### Professional Skills (26-28)
26. Problem Solving in GDS Contexts
27. Customer Communication
28. Interview Preparation

## Mock Interview Scenarios

1. **Change Booking** — Round-trip change with alliance partners
2. **Fare Mismatch** — Debugging and root cause analysis
3. **Encoding Special Characters** — Compliance and PCI-DSS
4. **Multi-Segment Rebooking** — Complex itinerary disruption

## Quiz Integration (Typeform)

Each module has a companion quiz page with Typeform embed placeholders.

### Setup Quizzes
1. Create quizzes at [typeform.com](https://typeform.com)
2. Replace `YOUR_TYPEFORM_ID_MODULE_N` in each quiz file with your form ID
3. Scoring logic:
   - **80%+** → Pass, proceed to next module
   - **60-79%** → Remedial review, then retry
   - **<60%** → Return to module, study again

### Typeform Hidden Fields
Set these hidden fields in each form:
- `module` — module number
- `user_id` — learner identifier (for tracking)

## Customization

### Add Content to Modules
Each module has `<!-- TODO -->` markers. Replace with:
- Detailed explanations
- AMADEUS command examples with screenshots
- Practice exercises
- Video embeds

### Change Theme Colors
Edit `themes/amadeus-theme/static/css/style.css` — CSS variables at the top:
```css
:root {
  --amadeus-blue: #003580;
  --amadeus-accent: #e8491d;
}
```

## Deploy to GitHub Pages

```bash
chmod +x deploy.sh
./deploy.sh
```

Then push to GitHub and enable Pages from `/docs` folder.

## Tech Stack

- **Hugo** — Static site generator
- **Typeform** — Quiz/assessment embeds
- **GitHub Pages** — Free hosting
- **Custom CSS** — No framework dependencies

## License

Internal use — Coforge interview preparation.
