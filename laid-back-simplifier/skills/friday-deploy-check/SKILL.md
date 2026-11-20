---
name: friday-deploy-check
description: Use for a fast pre-deploy sanity check so a release will not break production.
---
# Friday Deploy Check
1. Verify build succeeds with zero errors and env vars are set.
2. Confirm critical user flows work and a rollback path exists.
