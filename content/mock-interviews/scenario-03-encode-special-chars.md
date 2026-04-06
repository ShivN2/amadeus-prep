---
title: "Scenario 3: Encoding Special Characters — Compliance & PCI-DSS"
description: "Handle special character encoding issues with data compliance awareness"
weight: 3
---

## The Situation

<div class="scenario-box">

You're working on a Coforge project integrating a client's booking system with Amadeus Web Services (SOAP API). During testing, you encounter:

1. **Passenger name issue:** A passenger named **José María O'Brien-García** — the name contains accented characters (é, í), an apostrophe, and a hyphen
2. **Credit card masking:** The API response includes partial credit card numbers that need PCI-DSS compliant handling
3. **Address field:** The passenger's address contains characters like ñ, ü, and the § symbol
4. **Error:** The booking fails with `INVALID CHARACTER IN NAME FIELD`

</div>

## Interview Questions

<div class="question">

**Q1:** Why does the Amadeus system reject special characters in the name field? What characters ARE allowed?

</div>

<div class="solution">

**Why rejected:**
- Amadeus cryptic system uses **ASCII-based encoding** for name fields
- IATA standards (Resolution 792) define allowed characters in passenger name records
- GDS systems were designed in an era of 7-bit ASCII terminals

**Allowed characters in name fields:**
- Letters A-Z (uppercase only in cryptic; mixed case in APIs)
- Space
- Hyphen (-)
- Forward slash (/) — used as name separator (LASTNAME/FIRSTNAME)

**NOT allowed:**
- Accented characters (é, í, ñ, ü)
- Apostrophes (')
- Special symbols (§, @, #)
- Numbers (in most name fields)

**The fix for José María O'Brien-García:**
`NM1OBRIEN-GARCIA/JOSE MARIA` — transliterate accented chars, remove apostrophe, keep hyphen

</div>

<div class="question">

**Q2:** In the API integration, how should you handle the transliteration programmatically? Show your approach.

</div>

<div class="solution">

**Approach:**

```python
import unicodedata

def transliterate_for_gds(name: str) -> str:
    """Convert name to GDS-safe characters per IATA Res 792."""
    # Step 1: Unicode normalization (decompose accented chars)
    normalized = unicodedata.normalize('NFD', name)
    
    # Step 2: Remove combining diacritical marks
    ascii_name = ''.join(
        c for c in normalized
        if unicodedata.category(c) != 'Mn'  # Mn = Mark, Nonspacing
    )
    
    # Step 3: Remove apostrophes
    ascii_name = ascii_name.replace("'", "")
    
    # Step 4: Keep only allowed chars (A-Z, space, hyphen, slash)
    allowed = set('ABCDEFGHIJKLMNOPQRSTUVWXYZ -/')
    ascii_name = ''.join(
        c for c in ascii_name.upper()
        if c in allowed
    )
    
    # Step 5: Collapse multiple spaces
    ascii_name = ' '.join(ascii_name.split())
    
    return ascii_name

# Example
original = "José María O'Brien-García"
result = transliterate_for_gds(original)
# Result: "JOSE MARIA OBRIEN-GARCIA"
```

**Important:** Store the ORIGINAL name separately for:
- Passport/ID verification (DOCS SSR uses original spelling)
- Customer communication
- Legal documentation
- APIS submission (some airlines accept extended characters)

</div>

<div class="question">

**Q3:** The API response includes credit card data: `"cardNumber": "4111XXXXXXXX1111"`. What PCI-DSS requirements apply, and how should your integration handle this?

</div>

<div class="solution">

**PCI-DSS requirements:**

1. **Never log full card numbers.** Even masked numbers should be treated carefully.
2. **PCI-DSS Requirement 3.3:** Display at most first 6 and last 4 digits. The `4111XXXXXXXX1111` format is compliant.
3. **Requirement 3.4:** Render PAN unreadable anywhere it's stored (encryption, hashing, tokenization).
4. **In your integration:**
   - **Never store card data in PNR remarks** — use Amadeus FOP (Form of Payment) elements only
   - **API responses:** Strip or mask card data before logging
   - **Transmit over TLS only** (HTTPS) — Amadeus APIs enforce this
   - **Don't write card numbers to flat files, emails, or tickets**

**Code approach:**
```python
import re

def sanitize_api_response(response_body: str) -> str:
    """Remove or mask any card numbers before logging."""
    # Mask any 13-19 digit sequences that look like PANs
    return re.sub(
        r'\b(\d{4})\d{5,11}(\d{4})\b',
        r'\1XXXXXXXX\2',
        response_body
    )
```

5. **Amadeus-specific:** Use Amadeus Payment solutions (e.g., Amadeus Payment Platform) which handle PCI compliance at the GDS level.

</div>

<div class="question">

**Q4:** The client wants to store the passenger's full address including ñ and ü characters. Where in the PNR can you store extended characters, and where can't you?

</div>

<div class="solution">

**Where extended characters work:**
- **DOCS SSR:** `SR DOCS HK1/P/ES/AB1234567/D/25JUN85/M/20DEC30/GARCIA/JOSE MARIA` — some airlines accept extended chars
- **Amadeus API (JSON/XML):** Full UTF-8 support in structured data fields
- **Remarks (RM):** Limited — some special chars work via hex encoding
- **OSI elements:** Generally ASCII only

**Where they DON'T work:**
- **Name field (NM):** ASCII only
- **Cryptic command entries:** ASCII only
- **Teletype communications:** ASCII only (TTY is 7-bit)

**Best practice for address:**
- Store address in the **API-level customer profile** (UTF-8)
- Use **transliterated version** for PNR/GDS storage
- Maintain mapping between GDS version and original

</div>

## What Coforge Looks For

<div class="coforge-tip">

1. **Technical depth:** Understanding WHY the limitation exists (ASCII/IATA standards), not just knowing the workaround
2. **Security awareness:** PCI-DSS knowledge is critical for travel tech roles at Coforge
3. **Coding ability:** Can you write the transliteration function? Coforge values hands-on skills
4. **Data integrity:** Storing original names alongside GDS-safe versions — shows you think about data quality
5. **Standards knowledge:** Mentioning IATA Resolution 792, PCI-DSS requirement numbers — shows professionalism

</div>

## How to Explain Your Answer

1. **Name the standard** — IATA Res 792, PCI-DSS — shows you know the "why"
2. **Show the code** — even pseudocode demonstrates technical ability
3. **Mention both sides** — the GDS limitation AND the workaround
4. **Security first** — always mention PCI-DSS before being asked
5. **Practical experience** — "In my experience..." or "The approach I'd take..."
