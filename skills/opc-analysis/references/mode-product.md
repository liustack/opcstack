# Product mode in full

This document is the full execution workflow for product mode, produced in order, Step 0 through Step 5.

This workflow is not about writing a "story" or a "biography." It's about extracting transferable business logic.

The core subject is "a product's business structure," with a focus on 3 processes plus the 5 business factors plus narrative, mechanism, and evolution, leaning toward "model analysis."

**Goal:** use "3 processes × 5 business factors" to fully take apart a specific product, arriving at a clear business map and transferable lessons.

**Applies to:** a single product or a single product line, for example Notion, HeadshotPro, Midjourney, or an indie developer's SaaS.

## Step 0: the product card

```
[Product card]

- Product name:
- Link:
- Company / team:
- Launch date / key versions:
- Target audience (target user persona):
- One-line description (who it helps, how, and with what task):
- Current status: early / growth / mature / defunct
```

## Step 1: a quick sketch of the core lenses

### Value creation

- Who does this product help, and with what uneasiness or job?
- How did users make do before it existed? (Alternatives.)
- What is its core "killer scenario"? (1-3 of them.)

### Value delivery

- How does the solution get into the user's hands? (Self-serve onboarding / sales-driven / channel distribution / embedded in a platform.)
- The cost structure of fulfillment: does marginal cost approach zero (pure software), or does it grow with volume (compute, labor, service)?
- What guarantees the stability of delivery quality? (Automation / process / people.)

### Value capture

- Pricing model: one-time / subscription / premium tier / usage-based / advertising / B2B contracts? How has it evolved?
- Who pays? (Individuals / small teams / enterprises / platforms / third-party advertisers.)
- Revenue structure: roughly "low price, mass volume" or "high price, small volume"?
- Is there hidden capture: data, training samples, brand or relationships?

## Step 2: business-logic check

Deconstruct using the 5 factors (the backbone), then run the business-narrative checklist. For example:

```
[Human nature and demand]

- What core uneasiness or desire does it hit?
  - Functional: speed / accuracy / convenience?
  - Emotional: looks better / more in control / more professional?
  - Social: more presentable / cooler / not left behind?

- At what moment in a typical user's day does it naturally come to mind?
- What obvious irrational behaviors are being exploited or nudged?
  - Impulse purchases? Forgetting to cancel a subscription? An obsession with "unlimited"? Extreme sensitivity to "saving time"?

[Value and cost]

- Rough revenue structure:
  - Average price per user:
  - Payment frequency (one-time / monthly / yearly):
  - Scale of paying users (order of magnitude is fine):

- Cost structure:
  - Variable costs: compute / third-party APIs / manual review / customer support?
  - Fixed costs: R&D / server infrastructure / company operations?

- Unit economics:
  - CAC ≈ ? (Estimate if you have data, otherwise a gut read on whether it's high or low.)
  - LTV ≈ ? (Estimate from subscription length or retention, on a gross-margin basis — i.e., fulfillment cost already deducted, to avoid double-deducting it when comparing against CAC.)
  - Roughly what range is LTV:CAC in? Does it reach the rule-of-thumb safety line of 3:1? Roughly how long is the payback period?
  - Is gross margin roughly high / medium / low?

- The "money-making logic" in one line:
  - What "math" makes it more profitable the more it grows, instead of less?

[Structure and power]

- Position in the value chain:
  - Upstream: model provider / infra / platform?
  - Midstream: tooling layer / middleware?
  - Downstream: an application facing the end user?

- Who does it depend on?
  - Upstream: large-model vendors / cloud vendors / operating systems / distribution platforms?
  - Downstream: a particular industry client base / a particular platform's traffic / a leading channel?

- What does it hold that's hard to replicate?
  - Data? (Vertical-domain data, labeling quality.)
  - Distribution? (Strong channel ties, a platform position.)
  - Experience? (A distinctive interaction, or deep workflow integration.)
  - Brand? (Become the "default tool" within a niche circle.)

- Does it hold structural leverage over others?
  - Switching cost for users?
  - How hard is it for partners to replace it?

[Time and compounding]

- What assets is it accumulating?
  - Product: code, a feature library, templates, a plugin ecosystem?
  - Data: user behavior, industry-specific corpora, proprietary datasets?
  - Brand: "default choice" status in the user's mind?
  - Relationships: industry clients, KOLs, ecosystem partners?

- Is the model short-window arbitrage or long-line compounding? Both are legitimate asset classes — for arbitrage, look at window length, payback period, exit cost, and portable assets. For compounding, look at the flywheel and asset accumulation.
  - Be careful not to use the payment form as a proxy for lifespan: a one-time-payment product can be a long-line compounding business (word of mouth and brand keep rolling), and a subscription can just as easily be window-period arbitrage (renewals drop to zero once the payoff fades).

- Key nodes on the timeline:
  - Launch / a major feature upgrade / switching to paid / a key partnership / riding an industry event (e.g., a major model release)?

- If the industry keeps developing for 3-5 years, does this product's position keep improving, or is it likely to be absorbed or replaced by a platform?

[Risk and antifragility]

- The biggest single point of risk:
  - Platform policy? API repricing or a ban? Regulation? A competitor cutting prices? Content risk?

- If it gets hit, what's the outcome:
  - A severe wound (revenue drops sharply but it survives)?
  - Straight to zero (the product simply can't be delivered anymore)?

- Existing risk hedges:
  - Multiple suppliers? Multiple platforms? Multiple product lines? Multiple customer segments?

- Is there a design that profits from volatility?
  - Higher price, higher margin during a trend cycle?
  - Riding a technology shift to capture switching costs quickly?
```

## Step 3: narrative, mechanism, evolution

### Narrative

Run the business-narrative checklist to check the narrative logic.

- What story does it tell users? (One line.)
- What story does it tell investors or the industry?
- How big is the gap between the narrative and reality?
- If the narrative fades (the trend passes), can cash flow still hold it up?

### Game design and mechanism design

- How are the incentives designed for each party?
  - Users: what mechanism makes them more locked in the more they use it?
  - Partners: how do the revenue share, rebates, and ranking rules work?
- Where could "gaming the rules" break it? (For example: fake volume, cheating, abuse.)

### Innovation and evolution

- What technology or cost shift does it ride on? (For example, cheaper compute, open large models.)
- Which fringe or low-end use case did it enter from?
- If the technology keeps evolving, could an upstream player or platform simply swallow it?

## Step 4: run the bias firewall

Deconstructing a successful product naturally carries four biases. Work through every one before moving on to Step 5:

- **Survivorship bias**: which products in the same category died? Did they also have the "success factors" identified above? If you can't find a failure counterpart, downgrade the corresponding conclusion to "an unverified correlation."
- **Halo effect**: what was this product's single most failed launch or feature? Same team, same playbook, so why didn't it work that time?
- **Narrative bias**: official blog posts and founder interviews are marketing material, not historical record. Cross-check key numbers against third-party sources.
- **Outcome bias**: for every candidate "structural lesson," ask the reverse question. If this product had failed, would this decision still have been the right one at the time?

## Step 5: output the transferable conclusions

1. Across the five dimensions (human nature and demand / value and cost / structure and power / time and compounding / risk and antifragility) what is the single most worthwhile lesson in each?
2. Which are transferable "structural lessons," worth studying and absorbing seriously?
3. Which are "path dependency, luck, or an era-specific windfall" that you don't need to imitate (or copy), and can't imitate anyway?
4. Where are the mistakes or pitfalls that need to be avoided?
5. If you wanted to replicate this product's structure in a different niche, how would you plan to experiment?
