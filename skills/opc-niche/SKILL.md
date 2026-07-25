---
name: opc-niche
description: 细分市场发现与评估：四路信号交叉验证（关键词/社区痛点/竞品差评/趋势）+ 五维评分卡 + AI 红海测试，输出 go/收窄/no-go 结论。Niche discovery and scoring for one-person companies. Use when the user wants to 找产品或生意方向 / 选赛道 / 找细分市场 / 验证一个 niche / find a niche / validate a market idea / what product or business should I build.
---

# opc-niche: niche discovery and evaluation

Helps a one-person company find and evaluate a niche. "Niche" originally names an ecological position: not merely a market segment but a position in a power structure. The terminal question of the evaluation is: **do you hold a chokepoint (a distribution node, the terminal of the user relationship), or are you just a battery that can be swapped out at any time**? Core method: cross-validate several independent signals, then force a conclusion with a scorecard. A single signal (search volume alone, say) is the most common reason for picking the wrong niche. The signal matrix handles the evidence, inversion handles the pitfalls, and the five factors handle the substance. The scorecard forces judgment into a comparable decision, and the red-sea test specifically screens out herd behavior and survivorship illusions.

## Step 1: confirm the starting point

First figure out which state the user is in, then take the matching entry point:

- **No direction at all** → start with the capability circle: what industries have you worked in, what audience do you understand, what access do you have that others don't? Look for candidate niches at the intersection of the capability circle and the signal sources, not off a trending list. Don't re-ask for anything the user has already volunteered. Only fill the gaps.
- **Already has a candidate to validate** → go straight to signal collection.
- With multiple candidates, work through them one at a time, don't run a messy parallel comparison.

## Step 2: signal collection (cross-check at least two)

The four signal sources are independent of each other. Full steps and a tool list are in `references/signals.md`. Quick reference:

| Signal source | What to look for | A good signal |
|---|---|---|
| Keyword streams | Long-tail keyword families with low competition and buying intent | The top of the SERP is small blogs, forum posts, and outdated pages, not authority sites |
| Community mining | Posts in vertical communities that "hate some workflow" | The same pain point keeps coming up, and posters are already duct-taping together workarounds. When reading these, run the fake-demand test: tell apart whether the complaint is a fad everyone is echoing from each other, or something several unconnected people raised independently (only the latter is a real signal, see `references/foundations.md` for more) |
| Competitor gaps | One- and two-star reviews on G2, Capterra, the App Store | The negative reviews cluster around the same neglected need |
| Trends | Early signals on emerging topics | A trend tool surfaces it and Google Trends confirms real search volume, both pointing the same way |

Hard rule: **a candidate only qualifies once at least two signals point the same way**. With only one, the ceiling on your conclusion is "worth collecting a second signal," not go.

## Step 3: the AI red-sea test (specific to 2025-2026)

If a product's core function depends on model inference (generation, classification, attribution, summarization, and the like), it counts as AI-related. When in doubt, classify it as AI-related. For hybrid products (a non-AI layer plus an AI layer), handle the layers separately: trigger the test liberally (any AI sub-feature is enough to run it), judge the battery-position question for the AI layer on its own, and note in your conclusion which layer the red flag sits on. When it's relevant, run all three questions:

1. **The battery-position test**: does it fall into a generic wrapper category (writing assistants, chatbots, meeting summarizers)? Nearly every AI startup that's folded since 2025 has clustered in these horizontal categories. They died because they held no chokepoint at all, and a pure battery position gets replaced by the upstream layer whenever it wants. If yes → red flag, unless you can point to a chokepoint of your own (exclusive data, a user relationship, distribution rights). This test is itself a bias firewall: it screens out social proof (everyone's doing it) and survivorship bias (you only see the one that made it).
2. **The real labor-cost test**: what measurable labor expense does it replace (a role's annual salary, a professional service's hourly rate)? If you can't answer that → the value proposition is in doubt.
3. **The window-period test**: count funded competitors within the precisely defined buyer segment: fewer than 5 is wide open, fewer than 10 is emerging, 10 or more is crowded (at that point, differentiation has to come from a precise cut, not from the category itself). Also check for a catalyzing event (a regulatory deadline, a technology unlock). **How long the window is a pricing parameter, not a mark against you**: legal, compliant short-window arbitrage is a real business. Four pricing questions: how long is the window as a multiple of the payback period? How many times over does the in-window return pay back? What's the exit cost if the window is misjudged or closes? What can you take with you when it ends (backlinks, domain authority, data, and skills are all accumulable, so even a closed window leaves you with assets)? One more question to add, to tell apart where the heat is coming from: is this category's boom real demand taking off, or a capital bubble?

## Step 4: the five-dimension scorecard

Score each dimension 0-10. This scoring structure is a converged industry practice, with no single authoritative source:

| Dimension | Scoring notes |
|---|---|
| Market size | The sweet spot for a one-person company is roughly 20,000-200,000 potential buyers (this range is this skill's own yardstick, not a factual claim about any specific market). Too big and you can't afford acquisition, too small and you can't sustain the product. With zero verification, give only a directional score, don't output a specific headcount |
| Competition | Competitors that are "small, old, poor experience, no VC funding" = a high score. An entrenched, well-funded incumbent = a low score. For the structural read, run the five-forces quick check (see `references/foundations.md`) |
| Monetization potential | Rough it out in unit-economics terms (LTV > CAC + COC, see `references/foundations.md`). Favor one-time payment or low-maintenance forms. A high-maintenance subscription is an ongoing support burden for a one-person company |
| Reachability | Can you reach it cheaply through SEO, communities, or directory sites? A niche that requires paid acquisition to compete in is unfriendly to a one-person company |
| Timing and lifespan | The window length divided by the payback period, the exit cost, and what assets remain when it ends. **A short window is no mark against you**: a six-month window with a two-week payback is a high-scoring business |

**Scoring rule**: any dimension scoring below 4 is a red flag. That doesn't mean give up, it means narrow the niche and rescore first (example: "bookkeeping software" scores low on monetization and reachability → narrowing it to "AI meeting notes for real-estate closings" pushes both the competition and monetization scores up). Only after narrowing twice and still hitting a red flag does it become a no-go.

## Step 5: five-factor recheck and output

Once it passes scoring, read the moat and lifecycle sections of `references/foundations.md`, then run the underlying questions through the five factors one more time: why do people pay (human nature), who holds the bargaining power (structure), is this one-time arbitrage or a compounding asset (time), where are the single points of failure (risk), is the value far greater than the cost (value)?

Save the output report to the workspace draft directory `.issues/<YYYY-MM-DD-topic>/niche.md`. The verification plan needs to "come back after running two signals," and saving the file is what it comes back to. Before saving, make sure the draft directory is git-ignored: if `git check-ignore .issues` fails, append `.issues/` to `.git/info/exclude` (a local ignore, leave the shared `.gitignore` alone) and give the user a one-line heads-up. In a non-git environment there's no commit risk, so just write it directly. Report structure: candidate description / signal evidence (note the source and verification status for each item) / red-sea test results / scorecard / five-factor recheck / **four possible conclusions: a go for the short-window arbitrage type (must include exit discipline: the signal for the window closing and a stop-loss line), a go for the long-line compounding type, narrow and rescore, or no-go** / next steps (when the conclusion is go, recommend a full business checkup with opc-checkup).

## Hard rules

- For external facts like search volume, competition, and competitor funding: verify online whenever you can, and label anything you can't as "unverified." Don't make up numbers. **Order-of-magnitude guesses ("tens of thousands, roughly") count as fabrication too**, and always get labeled.
- Scorecard scores are a subjective judgment scale, not external facts. But within the reasoning behind each score, any unverified fact still needs a label, and **with zero signals verified, no formal conclusion label may be given at all** (go, no-go, and narrow-and-rescore are all off the table). The only output allowed is "a verification plan plus the scoring criteria for each signal." Narrowing a red flag inside the scorecard itself still runs as normal, since that's a scoring action, not a conclusion label.
- When the source is a marketing content site (an idea database, a course sales page), label the nature of the source. Its data is a reference point only, never a basis for the conclusion.
- State conclusions in probabilistic language (likely / tends to / needs verification). A scorecard is a tool for forcing rigor, not a source of truth.
