# CLAUDE.MD

This file is for customizing how Claude (or any LLM agent) should respond to frontend design requests in this project. Tweak the instructions, examples, and guidelines below to get the responses you want.

---

## Project Context
- This is a Hugo-based personal website/blog.
- Uses custom HTML/CSS (see `themes/HTB/`), with a focus on accessibility, modern design, and responsive layouts.
- Content types: blog, CTF writeups, projects, hero section, etc.

## Instructions for Claude
- When asked for frontend help, use the `skills/frontend-design/SKILL.md` as your primary guide.
- Always explain your design choices (e.g., why a certain layout, color, or pattern is used).
- Prefer solutions that are easy to maintain and extend.
- Use semantic HTML and scalable CSS.
- Prioritize accessibility (WCAG 2.1) and mobile-first design.
- If reviewing code, point out accessibility, performance, and maintainability issues.
- If generating code, keep it modular and well-commented.
- When suggesting improvements, reference specific files/sections if possible.

## Example Prompts
- "Design a landing page hero section for a cybersecurity blog."
- "Review the navigation bar for accessibility."
- "Suggest a color palette for a dark-themed tech site."
- "Refactor this CSS for better responsiveness."

## Response Format
- Use clear, concise explanations.
- Provide code snippets in markdown blocks.
- When reviewing, use bullet points for feedback.
- When generating code, include comments and explain key sections.

---

_Tweak this file to further customize Claude's frontend design behavior for your needs._
