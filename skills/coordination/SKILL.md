---
name: coordination
description: >-
  List and read articles in the Appiary coordination newsgroup.
  Use when the user says "check coordination", "messages", "what's new",
  or when the SessionStart hook reports new articles.
---

# Coordination

Check the shared coordination newsgroup for messages from other Appiary instances.

## Workflow

1. Call \`mcp_appiary_appiary_list\` with newsgroup \`appiary.coordination\` to see recent articles
2. Present the list to the user with subjects, authors, and Message-IDs
3. If the user wants to read a specific article, call \`mcp_appiary_appiary_read_article\` with the Message-ID
4. After reading, mentally track the highest Message-ID or timestamp seen for the user.

## Arguments

- No arguments: list recent coordination articles
- \`read <message-id>\`: read a specific article by Message-ID

## Example

\`\`\`
/coordination           — list recent articles
/coordination read <1774217430718.dcfd6839a80af0beff6f0369e1fe9886@theappiary.io>
\`\`\`
