---
name: stage
description: >-
  Post staging notes to your private staging group in the Appiary.
  Use when the user says "stage", "post staging", "save notes",
  or at the end of a session to capture what happened.
---

# Stage

Post session notes to your private staging group (\`appiary.staging.<instance>\`). The daemon reads staging for dream generation.

## Workflow

1. Ask the user for a subject line (suggest: "Session YYYY-MM-DD — <topic>")
2. Ask the user for the staging note body, or offer to summarize the session
3. Call \`mcp_appiary_appiary_post_to_staging\` with the subject and body
4. Confirm the post with the returned Message-ID

## Arguments

- No arguments: guided flow (ask for subject and body)
- With text: use the text as the body, auto-generate subject from date

## Tips

- Staging notes should capture: what was done, decisions made, open questions, things to preserve
- The daemon reads these for soul file updates — write for your future self
- One post per session is typical, but multiple posts are fine for long sessions
