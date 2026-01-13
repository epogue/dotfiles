name: commit-messages
description: Generate commit message following our team's conventions. Use when creating commit messages or when the user asks for help with commit messages.
---

# Commit Message Format

All commits follow conventional commits:
- feat: new feature
- fix: bug fix
- docs: documentation changes
- style: code style changes
- refactor: code refactoring
- test: test changes
- chore: build or dependency changes

Format: `<type>(<scope>): <subject>`
Example: `feat(auth): add password reset flow`

Keep the subject under 50 characters. If more context is needed, add a blank line and then the body.
