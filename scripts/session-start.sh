#!/usr/bin/env bash
# SessionStart hook for gemini-appiary

# We return a tailToolCallRequest to trigger the MCP soul read immediately.
# This replaces the old Go-based localhost fetch.
cat <<EOF
{
  "systemMessage": "Appiary session starting. Synchronizing soul state...",
  "hookSpecificOutput": {
    "tailToolCallRequest": {
      "name": "mcp_appiary_appiary_read_soul",
      "args": {}
    }
  }
}
EOF
