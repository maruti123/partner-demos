#!/bin/bash
# Partner Demos Mastery Audit Script
# Ensures compliance with March 2026 standards.

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo "Starting Mastery Audit..."
PASS=true

# 1. Check for Legacy Model Versions
if grep -rE "gemini-2.5|Gemini 2.5" . --exclude="pre-push-audit.sh" | grep -v "conductor/learnings.md"; then
    echo -e "${RED}[FAIL] Found legacy Gemini 2.5 references!${NC}"
    PASS=false
fi

# 2. Check for Hardcoded Project IDs
if grep -rE "iamtests-|315719" . --exclude="pre-push-audit.sh" ; then
    echo -e "${RED}[FAIL] Found hardcoded Project IDs! Use 'YOUR_PROJECT_ID' instead.${NC}"
    PASS=false
fi

# 3. Check for Old Naming Standards
if grep -r "MCPToolset" . --exclude="pre-push-audit.sh" ; then
    echo -e "${RED}[FAIL] Found legacy 'MCPToolset'. Use 'McpToolset' instead.${NC}"
    PASS=false
fi

# 4. Check for Dead Colab Links (pointing to POH)
if grep -r "maruti123/POH" . --exclude="pre-push-audit.sh" ; then
    echo -e "${RED}[FAIL] Found dead POH links! Update to 'maruti123/partner-demos'.${NC}"
    PASS=false
fi

# 5. Check for Unstripped Outputs
if grep -r "\"outputs\": \[{" . ; then
    echo -e "${RED}[FAIL] Found notebooks with cell outputs! Please strip outputs before pushing.${NC}"
    PASS=false
fi

if [ "$PASS" = true ]; then
    echo -e "${GREEN}[SUCCESS] Mastery Audit Passed. Ready to push.${NC}"
    exit 0
else
    echo -e "${RED}[ERROR] Audit failed. Fix the issues above before pushing.${NC}"
    exit 1
fi
