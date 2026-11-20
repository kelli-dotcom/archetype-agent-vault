---
name: omerta-security
description: Use for strict security audits to ensure no API keys, secrets, tokens, or sensitive user data ever leak.
---
# Omertà Security (Nobody Talks)
1. Scan for hardcoded secrets, exposed `.env` files, or sensitive data logged to the console.
2. Audit auth middleware, CORS rules, and database permissions.
3. Output `[ 🔇 OMERTÀ CHECK: NO LEAKS ]` only when all findings are resolved.
