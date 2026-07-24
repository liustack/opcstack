# evals/

Author-side behavior and triggering evals. Never shipped inside `skills/` — installs stay clean.

- `<skill>/evals.json` — behavior evals in the official skill-creator schema (prompt + verifiable expectations). Run via the skill-creator plugin's executor/grader pipeline, or manually: dispatch a fresh-context subagent with the prompt (running any `files/` fixture script first), then grade each expectation against the transcript with cited evidence. Compare with_skill vs without_skill arms, 3 runs each.
- `<skill>/trigger-eval.json` — 10 should-trigger + 10 should-not-trigger queries. Run each query in a fresh session with the stack installed and record whether the skill activates. Watch precision and recall both. Headless mode never auto-triggers — do not test there.
- `<skill>/files/` — fixture scripts referenced by eval prompts.

When `claude plugin eval` leaves early access, migrate these into its `case.yaml` format.
