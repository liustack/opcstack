---
name: opc-marketing
description: 营销诊断与人性底层理论：用 AARRR 定位增长瓶颈在漏斗哪一环，获客环内用 Bullseye 收敛渠道，再给出该环的底层理论与关键问句。Marketing diagnosis for one-person companies. Locate the funnel bottleneck, converge on one channel, ground the fix in human-nature theory. Use when the user says 没增长 / 不知道营销从哪下手 / 获客好难 / 增长卡住了 / no growth / marketing isn't working / which channel should I focus on. Do not trigger for pure execution asks like 写文案/做海报/投放操作.
---

# opc-marketing: marketing diagnosis and underlying theory

This skill does two things: **diagnose where the bottleneck is, then hand you the human-nature theory behind that stage**: why users don't show up, don't activate, or don't pay always traces back to the level of human nature (narrative, imitation, insecurity, habit, identity). Theory gives you the "why," and the specific tactics (how to write the copy, how to run the ads) follow from that. This skill doesn't expand into an execution tutorial. The actual execution work (copywriting, running ad campaigns) is left to whatever capability or specialized skill you already have on hand.

## Step 1: establish minimal context

Before diagnosing, you need three things. Ask about whichever ones are missing, one question at a time. Once all three are in hand, move to diagnosis without asking anything else:

1. What the product is and who it's sold to (one line).
2. Current numbers: visitor count, signups/trials, paying customers, churn. Report whichever you have, and having none of them is itself important information.
3. What marketing moves have already been tried, and what happened.

## Step 2: locate the bottleneck with AARRR

Use the five stages of the funnel to find whichever one has the ugliest numbers. A one-person company has extremely limited resources, so **fix one stage at a time**:

| Stage | Question to check | Typical bottleneck symptoms |
|---|---|---|
| Acquisition | Is anyone showing up? | Single-digit visitors, all from random, one-off traffic |
| Activation | Do the people who show up actually use it? | Visitors but no signups, or signups with no first taste of value |
| Retention | Do the people who used it come back? | Active usage drops to zero by the second week after signup |
| Revenue | Do the people using it pay? | Decent activity, but paid conversion is next to nothing |
| Referral | Do users bring in new users? | Zero organic sharing, all growth is self-driven |

**When there are no numbers at all, the bottleneck is measurement itself**: set up minimal tracking first (even a hand-counted log), don't diagnose blind.

**When several stages are flashing warnings at once, arbitrate by how trustworthy the data is**: a stage where the sample size can't support a real judgment doesn't count as a genuine warning: when the visitor base is tiny, the signup conversion rate is just noise (the law of small numbers), and this arbitration rule is itself a bias firewall. Before you call a stage "insufficient sample," get the cumulative totals in hand (total visitors, total signups) rather than eyeballing a daily average. Fix the earliest confirmable stage first, and when two stages both have enough data, still fix the one further upstream. You can close with a line like "recheck a downstream stage once volume picks up." That doesn't break the one-stage-at-a-time rule. Only expanding it into a second full diagnosis would.

## Step 3: Bullseye channel convergence (acquisition stage only)

When the bottleneck is acquisition, don't jump straight to "do SEO" or "run ads." Work through three converging circles first (the list of 19 channels is in the acquisition section of `references/foundations.md`):

1. **Outer circle**: go through the 19-channel list and, for each one, think through "if I had to use this and nothing else, what would I do?" This scan happens internally. All the user sees is the converged result and the reasons for ruling channels out.
2. **Middle circle**: narrow it down to 2-3 channels the user already understands, already has reach into, or that a competitor has already validated. Prefer whatever experience the user has already shared, and ask only when that's not enough. If the user genuinely has no channel experience, propose one or two of the lowest-cost-to-test channels yourself, and say plainly that it's a suggestion, not a decision you're making for them.
3. **Inner circle**: test the middle-circle channels cheaply, then **focus on the one that works** (focus follows the opportunity-cost principle: for a one-person company, every hour put into channel A is an hour taken away from every possibility in channel B). Bad distribution, not a bad product, is the number one reason startups fail. One channel that actually works is already a good business.

For every candidate channel, ask one more question about who owns the asset: **who keeps what this channel builds up?** An email list, a community, SEO authority: these are assets you accumulate. Platform-algorithm traffic is rented. A rented, high-yield channel can still be a good choice (window-period arbitrage), just know that you're renting. Pair it with exit discipline, and keep shifting attention and relationships toward assets you actually own. Ask the asset-ownership question once here, no need to repeat it in the theory-points section of the output.

## Step 4: fill in the theory and produce the output

Read the matching section of `references/foundations.md` in full for whichever stage is the bottleneck (it includes the shared foundation, the "three-layer influence protocol": understand what the other person is thinking and wants before it's your turn to say anything. Most cases of "marketing isn't working" trace back to pitching your selling points without first reading the other person at all).

Save the diagnosis to the workspace draft directory `.issues/<YYYY-MM-DD-topic>/marketing.md`. The "recheck a downstream stage once volume picks up" reminder needs somewhere to land. Before saving, make sure the draft directory is git-ignored: if `git check-ignore .issues` fails, append `.issues/` to `.git/info/exclude` (a local ignore, leave the shared `.gitignore` alone) and give the user a one-line heads-up. In a non-git environment there's no commit risk, so just write it directly. Output format:

1. **The bottleneck verdict** (with the data behind it and the reasoning for the arbitration).
2. **Theory points and key questions for that stage** (3-5 of them, drawn from the matching foundations section and answered against the user's specific product: don't just copy the list).
3. **The minimal viable action** (one paragraph, derived from the theory, not expanded into a tutorial).
4. One line of recheck reminder (if a downstream stage got set aside).

## Hard rules

- Diagnose exactly one bottleneck stage at a time. Don't output an "optimize all five stages" list. That's the same as saying nothing.
- Theory points have to be answered against the user's specific product and audience. Copying the foundations text verbatim isn't a diagnosis.
- If the user explicitly asks for a finished deliverable on the spot (a full set of copy, a media plan), say plainly that it's outside this skill's scope, then do your best with your general capabilities.
- For the ethical line, see the shared foundation in foundations: identifying mechanisms of human nature is analytical work, but manufacturing false scarcity, engineering dependency, and overpromising are off-limits.
