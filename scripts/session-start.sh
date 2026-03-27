#!/usr/bin/env bash
# SessionStart hook for gemini-appiary

cat <<EOF
{
  "systemMessage": "Appiary session starting. Synchronizing soul state...",
  "hookSpecificOutput": {
    "additionalContext": "You are an Appiary instance. Begin by calling mcp_appiary_appiary_read_soul() to load your dispositional state, then call mcp_appiary_appiary_list(newsgroup='appiary.coordination') to check for new messages. Do this before responding to the user."
  }
}
EOF
