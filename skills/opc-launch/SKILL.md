---
name: opc-launch
description: 产品发布 playbook：定目标、备叙事资产、蓄水、分批多渠道编排、复发布三式，含发布前阻断式自检。Product launch playbook for indie makers. Goals, narrative assets, waitlist, staged multi-channel rollout, relaunch moves, and a hard pre-launch gate. Use when the user wants to 发布产品 / 上线怎么推 / launch on Product Hunt / Show HN 怎么发 / plan my launch. Do not trigger for code deployment or release engineering（部署/发版是工程操作，不归本技能）.
---

# opc-launch: product launch playbook

A launch isn't a one-shot, all-in bet. It's a repeatable distribution move. The baseline mindset comes from Marc Lou, in his own words: **"the same product can be relaunched a hundred times, nobody's keeping score."** That's the antidote to the spotlight effect: nobody is watching you, so launching bare and failing once costs you nothing. Not launching is what actually costs you.

Current rules and hard limits for each channel are in `references/channels.md` (platform rules drift fast, so verify against the official page before you act). Save the launch plan to the workspace draft directory `.issues/<YYYY-MM-DD-topic>/launch.md`. The waitlist-building cadence, the staged timetable, and the retro all need somewhere to land. Before saving, make sure the draft directory is git-ignored: if `git check-ignore .issues` fails, append `.issues/` to `.git/info/exclude` (a local ignore, leave the shared `.gitignore` alone) and give the user a one-line heads-up. In a non-git environment there's no commit risk, so just write it directly.

## Step 1: set the launch goal

Pick one of three, and it decides every branch after this:

- **Chasing the day's badge** (a Product Hunt ranking) → pick a low-competition window (the vote threshold is noticeably lower on weekends) and push hard for the ranking.
- **Chasing total exposure** → pick a peak-traffic day (midweek), and accept a possibly lower rank in exchange for more absolute traffic.
- **Practicing or learning** (the default tier for a first launch) → launch whenever, aim to accumulate assets, retros, and an email list, and don't worry about rank.

When the timeline can't support the chosen goal tier (not enough time to build the waitlist, assets not ready), pick one of three: move the date, drop to the practice tier, or soft-launch first and do a proper launch later on a chosen date using the three relaunch moves from step 2. Don't force it through, and don't give up either.

## Step 2: first launch or relaunch

For a relaunch, run Marc Lou's three moves (the product itself can stay the same): **Rebrand** (a new name and domain, a redone headline: 80% of people never scroll past the above-the-fold title), **Reposition** (keep the product, change the positioning and target audience: there's a documented case of a 0.22% → 1.45% conversion jump, a single case, not a guarantee it repeats), **Repurpose** (strip out one feature as a free, no-signup micro-tool to use as an acquisition funnel). Any one of the three counts as a new launch. Note that Product Hunt's official policy requires a relaunch to show "meaningful iteration." A new name, new positioning, or new tool from the three moves usually clears that bar. Resubmitting as-is doesn't.

## Step 3: narrative assets (including a blocking gate)

- **The headline self-propagation test**: state in one line who it helps, how, and what it accomplishes: simple enough that someone else can repeat it back verbatim. If they can't repeat it back, rewrite it. A narrative is lossy compression, and a story that doesn't compress into one line won't spread on its own.
- **The asset floor (a blocking gate, applies to every channel)**: a demo video or screenshots good enough to matter, **and** no barrier to trying it. Both conditions must be met, and a free signup wall still counts as a wall. This isn't just a Show HN rule (it explicitly rejects gated landing pages). PH effectively votes on asset quality too: the same product went from 10 votes to 300 and a top-three spot purely by adding better assets (a documented single case, not a guarantee it repeats). If the assets aren't good enough, don't launch yet. Fix the assets first.
- **A planning-fallacy correction**: double your estimate for asset-prep hours and the launch date.

## Step 4: building the waitlist

- Start the waitlist 4-6 weeks out, and don't talk about launching until you've hit 100 signups.
- **Guard against demagnetization**: collecting an email and then going quiet is a common way to fail. Keep posting progress updates through the waitlist period.
- Three rounds of email: 7 days out, announce the exact time. 1 day out, remind them. Launch day, send several rounds (the announcement, a mid-day status update, a final push). The launch-day email converts better than anything on any other channel.

## Step 5: orchestrating channels

- **Stagger, don't carpet-bomb**: BetaList first (queue 3-4 weeks ahead) → Product Hunt as the main event → a second wave on Fazier, Uneed, and similar sites (same week or the next) → quality directory sites as the long tail. Bulk-submitting to hundreds of low-quality directories is busywork and hurts your SEO.
- **Write separate copy for each channel**: tolerance for self-promotion varies wildly by platform (r/SideProject welcomes direct posts, r/SaaS allows one every sixty days and requires disclosure, HN only accepts honest, triable work). Reusing the same pitch everywhere will backfire. See `references/channels.md` for the tone to use on each.
- **Zero tolerance for vote-begging (a blocking gate)**: both PH and HN explicitly ban asking for votes, across every channel: friends, employees, a newsletter, a community, all of it. What you can do is ask people to "go take a look and give feedback." **Getting a crowd to visit at the same coordinated time is just as dangerous**: the ranking algorithm is undisclosed and watches vote velocity and source, so the compliant boundary is handing the link to people and letting them act on their own, not organizing a coordinated push. Penalties (hidden listings, banned accounts, removed posts) are usually irreversible and can't be appealed.

## Step 6: launch day and the wrap-up

- Show up on the day: reply to comments, send status-update emails, post live progress on social. A launch is a conversation you show up for, not a bomb you set and walk away from.
- **Turn the pulse into an asset**: traffic from a launch platform is a rented, one-time pulse, and the only thing you still have when it's over is your email list and your followers. Design the landing page's first conversion goal around that.
- **Feed the retro back in**: after every launch, write down what you learned and feed it into the next one. Launch assets, leaderboard results, and the retro post itself are all assets for the next launch.

## Red flags: stop the moment you see these

| Thought / behavior | Reality |
|---|---|
| "Just launch this once, and if it flops, that's that" | Launching once and giving up is the most common way to fail. The three relaunch moves mean you can always come back |
| "Get all my friends to go vote" | Vote-begging on any channel counts as a violation, and the penalty is irreversible. All you can do is ask people to look and comment |
| "Ship the landing page first and collect emails" | Show HN explicitly rejects this, and PH will steer you away too. Build something people can try first |
| "The retro from a viral launch says to do it this way" | Survivorship bias: a viral launch is the numerator, and the median launch goes unnoticed. Learn the structure, not the outcome |
| "Sit on the waitlist and detonate it all at once at launch" | An email list you've ignored for months is already demagnetized, and your open rate will teach you a lesson |
