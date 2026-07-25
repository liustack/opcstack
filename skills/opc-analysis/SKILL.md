---
name: opc-analysis
description: 商业拆解：标杆人物拆解（levelsio、Marc Lou 等）与标杆产品拆解，基于五要素框架（人性/价值/结构/时间/风险）+ SOP。Business deconstruction of role-model founders and benchmark products using the five-factor framework. Use when the user wants to 拆解某个人物或产品 / 分析商业模式 / analyze this indie hacker or product. Do not trigger for health-checking your own idea（自家项目体检是 opc-checkup）.
---

## When to use it and how to choose a mode

This skill has two modes. Look at what you're deconstructing first, settle on a mode, then start work. Don't skip the confirmation step and jump straight into analysis.

- The subject is **a person** (a founder, researcher, product manager, investor, KOL, and so on, e.g., Pieter Levels, Marc Lou, Sam Altman) → **person mode**
- The subject is **a product** (a single product or product line such as ChatGPT, Midjourney, Notion AI, or Cursor) → **product mode**
- The subject is **your own idea or existing project** and needs a health check → out of scope for this skill, use **opc-checkup**
- **Benchmarking someone else's product against your own** (e.g., "compare my project with Notion AI") → run **product mode** on the benchmark target first, then use opc-checkup to check your own project, then manually merge the two sets of conclusions into a comparison

Once you have the task, confirm two things with the user first: exactly who or what the subject is, and which of the two modes to use. Only start the steps for the chosen mode once both are clear.

## Shared foundation: the five factors

All three modes rest on the same five-factor framework. See `references/framework.md` for the full version. Quick reference:

| Factor | Core question |
|---|---|
| Human nature and demand | Why do people pay? (Fear, greed, vanity, convenience, belonging?) |
| Value and cost | Is your value far greater than your cost? Can it scale? |
| Structure and power | Who holds the bargaining power? Who sets the rules? |
| Time and compounding | How long does the business survive, ecologically speaking? Window length, in-window return, exit cost, what's left to take when it ends? Compounding is a bonus, not a pass line |
| Risk and antifragility | Where are the single points of failure? Does volatility kill it, or make it stronger? |

For a finer-grained list of key questions, keyword tables, and reading lists, read `references/framework.md`.

## person mode

Deconstruct a person and the venture system they've built, not a single product. The core subject is "one person's venture system." Look at the timeline, the product portfolio, the range of capabilities and resources, and the narrative arc, leaning toward "trajectory and strategy."

Seven steps in brief:

1. Person card (name / identity tags / era and geographic context / one-line summary / list of flagship products)
2. Timeline (five stages: starting point → first wave of achievement or failure → turning point and positioning → landmark stage → current state)
3. Product portfolio (a table view plus cash-cow / springboard / pure-experiment classification)
4. The five factors applied to the venture system (deconstruct "this person plus the system they built" with the five factors, not a single product)
5. Narrative and self-positioning (the external main narrative, the internal narrative, the media-constructed image, how the narrative gets traded for resources and room for error)
6. Capability and resource range
7. Run the bias firewall, then draw transferable conclusions: only after four checks (survivorship comparison, the halo effect, narrative, and outcome bias) do you get to output what's worth copying, what's just luck, and which specific action to copy over the next 1-2 months

For execution, read `references/mode-person.md` in full and work through it step by step using its templates and question lists.

## product mode

Deconstruct the business structure of a specific product using "3 processes × 5 business factors" to take it fully apart, arriving at a clear business map and transferable lessons, leaning toward "model analysis" rather than writing a narrative biography.

Six steps in brief:

1. Product card (product name / link / company and team / launch date / target audience / one-line description / current state)
2. Core-lens sketch (a quick sketch of the three processes: value creation / value delivery / value capture)
3. Business-logic check (deconstruct with the five factors, run the business-narrative checklist)
4. Narrative, mechanism, and evolution (the story told to users and investors, game dynamics and mechanism design, the path of innovation and evolution)
5. Run the bias firewall (survivorship comparison, the halo effect, narrative, outcome bias)
6. Transferable conclusions (five questions: the single most worth-learning point for each factor, transferable structural lessons, the path-dependent parts not worth imitating, mistakes that must be avoided, how to experiment when porting this to another niche)

For execution, read `references/mode-product.md` in full and work through it step by step using its templates and question lists.

## Hard rules

- **A framework is an analytical lens, not business truth**: the five factors, checklists, and SOPs can help you ask the full range of questions, but business is a complex adaptive system, there's no exhausting the way business works, and every framework has blind spots and exceptions. State conclusions in probabilistic language: "likely," "tends to," "needs further verification." Avoid certainty-flavored claims like "definitely" or "inevitably."
- **The cash-flow razor always comes first**: however strong the narrative, ask one question first: strip away the narrative halo, can this project survive on real cash flow? The market isn't made of atoms, it's made of "human belief." But no matter how strong a narrative is, it isn't truth. Valuation and premium always trace back down to the value floor of cash flow.
- **Separate transferable structural lessons from path-dependent luck**. Within the same success story, spell out which part is "structural experience" (how the niche was chosen, how products were stacked, how risk was managed, worth studying and absorbing seriously) and which part is "path dependence plus luck, a dividend of the era" (the country someone was born in, a unique window in time they happened to catch, connections nearly impossible to replicate, worth a look and nothing more, not worth imitating and not possible to imitate). Keep the two apart, and don't dress luck up as methodology.
- **When you need external facts, search the web instead of making them up from memory.** For concrete facts such as a person's track record, product data, financial details, and timelines, verify online whenever you're not sure, and flag anything uncertain as "unverified" instead of fabricating it.
