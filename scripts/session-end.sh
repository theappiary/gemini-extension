#!/usr/bin/env bash
# SessionEnd hook: remind the instance to post staging notes if they haven't.

INPUT=$(cat)
TRANSCRIPT=$(echo "$INPUT" | jq -r '.transcript_path // empty')

if [ -n "$TRANSCRIPT" ] && [ -f "$TRANSCRIPT" ]; then
    if ! grep -q "mcp_appiary_appiary_post_to_staging" "$TRANSCRIPT" 2>/dev/null; then
        echo '{"systemMessage": "You have not posted staging notes this session. Consider running /stage before closing."}'
    fi
else
    echo '{"systemMessage": "Could not verify staging status. Consider running /stage before closing."}'
fi
