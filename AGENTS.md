# AGENTS.md

## Project Overview

This repository (`liustack/opcstack`) is **opcstack — the one-person company skill stack**: a set of `opc-*` agent skills for solo founders running indie products, content businesses, or consulting practices. It is the business-side sibling of [liustack](https://github.com/liustack/liustack) (the thinking and dev-workflow stack). The two stacks share a philosophical core (five-element business framework, mental models) but have **zero technical dependencies** on each other — every skill is self-contained.

## Directory Structure

```
README.md          # Public-facing intro
docs/philosophy.md # Core design principles — read before designing or revising any skill
skills/            # The opcstack skill stack (product core, opc-* skills)
scripts/           # Validation and release utilities
```

## Conventions

- Skill directory name = frontmatter `name` = `opc-xxx` (hard requirement for Codex and `npx skills`).
- Every skill is **self-contained**: knowledge material lives in the skill's own `references/`, no repo-level shared knowledge base.
- Skill body in Chinese, frontmatter `description` bilingual (Chinese + English) for auto-triggering and skills.sh discoverability.
- `opc` is the router entry point: it reads context and routes to the right `opc-*` skill, mirroring liustack's `ls` router.
- Validate with `bash scripts/check-skills.sh` before committing skill changes.
- License is CC BY-NC 4.0 (see LICENSE.md) — non-commercial use is free, commercial use requires a separate license. Do not add MIT-licensed-looking headers.
- Skill `description` fields must be lean and keyword-first: harnesses inject every installed skill's description into context, so the opening clause must carry the trigger keywords.
- Triggering discipline: state what the skill is + when to use + how it differs from neighboring skills, add an explicit exclusion clause ("Do not trigger for…") when positive triggers are broad, never use moral imperatives (MUST/ALWAYS), and one trigger per branch (no synonym restating).
- Working drafts go in `.issues/<YYYY-MM-DD-topic>/` (gitignored), organized by task, not by type.
