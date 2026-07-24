---
name: opc-marketing
description: 营销诊断导航：用 AARRR 定位增长瓶颈在漏斗哪一环，获客环内用 Bullseye 收敛渠道，然后路由到对应的专项营销技能而非自造打法。Marketing diagnosis for one-person companies — locate the funnel bottleneck, converge on one channel, route to the right specialist skill. Use when the user says 没增长 / 不知道营销从哪下手 / 获客好难 / 增长卡住了 / no growth / marketing isn't working / which channel should I focus on.
---

# opc-marketing：营销诊断导航

本技能是**导航员不是全家桶**：营销专项打法（SEO、文案、投放、定价……）已有成熟的专项技能生态，重造一遍是浪费。本技能做专项技能不做的事——先诊断瓶颈在哪，再告诉你该用哪个轮子。

## 第一步：建立最小上下文

诊断前必须知道三件事，缺哪个问哪个（一次一问）：

1. 产品是什么、卖给谁（一句话）。
2. 现状数字：访客量、注册/试用数、付费数、流失情况——有哪个说哪个，全没有也是重要信息。
3. 已经试过什么营销动作，结果如何。

若用户装有 coreyhaines31/marketingskills 生态：其惯例是先维护 `product-marketing` 上下文文档（其余技能都会优先读它）。文档缺失或过期时，先建议用户跑该技能补文档，再回来诊断。是否装有该生态的判断方法：查当前环境的已装技能清单或常见技能目录，查不到就直接问用户一句。仍不确定时按未装处理，相关建议用条件句给出。

## 第二步：AARRR 定位瓶颈

用海盗指标五环定位数字最难看的一环。一人公司资源极度有限，**一次只修一环**：

| 环 | 自查问题 | 瓶颈典型症状 |
|---|---|---|
| 获客 Acquisition | 有人来吗？ | 访客个位数、全靠偶发流量 |
| 激活 Activation | 来的人用起来了吗？ | 有访客没注册，有注册没首次价值体验 |
| 留存 Retention | 用过的人回来吗？ | 注册后第二周活跃归零 |
| 收入 Revenue | 用的人付钱吗？ | 活跃不少，付费转化极低 |
| 推荐 Referral | 用户带新用户吗？ | 零自传播，增长全靠自己推 |

**完全没有数字时，瓶颈就是「测量」本身**——先路由到 analytics 类技能搭最小追踪，别蒙眼诊断。

**多环同时报警时按数据可信度仲裁**：样本量撑不起判断的环不算真报警（访客基数过小时，注册转化率只是噪音——小数定律，这条仲裁本质是偏差防火墙）。先修上游可确定的环，结论末尾可附一句「量级上来后复查下游某环」——这不违反单环规则，展开成第二套诊断才违反。

## 第三步：获客环专用——Bullseye 渠道收敛

瓶颈在获客时不要直接跳到「做 SEO」或「投广告」，先走三圈收敛（源自《Traction》的 Bullseye framework，19 个牵引力渠道）：

1. **外圈**：过一遍 19 渠道清单（见 `references/map.md`），每个都想一个「如果非用它不可，会怎么做」。
2. **中圈**：筛出 2–3 个用户有认知、有接触面或竞品已验证的渠道。筛选依据优先取用户已透露的经验，不足时问一句，不代替用户凭空判断。
3. **内圈**：小成本测试中圈渠道，**聚焦跑通的那一个**（聚焦即机会成本原则：一人公司的时间投进 A 渠道，代价是 B 渠道的全部可能性）。差的分销、而非差的产品，是创业失败的头号原因——一个跑通的渠道就是一门好生意。

每个候选渠道多问一句资产归属：**这个渠道攒下的东西归谁？** 邮件列表、社区、SEO 权重是你的沉淀资产，平台算法流量是租来的。租来的红利渠道也可以是好选择（窗口期套利），但要知道自己在租——配退出纪律，并持续把注意力和关系往自有资产搬。

## 第四步：路由输出

按瓶颈环给出路由（完整映射表见 `references/map.md`）：

| 瓶颈 | 专项技能方向（marketingskills 生态） |
|---|---|
| 测量缺失 | analytics |
| 获客·内容/搜索 | seo-audit、content-strategy、programmatic-seo、ai-seo |
| 获客·社媒 | social、video、image |
| 获客·付费 | ads、ad-creative |
| 获客·外联/发布 | cold-email、launch、directory-submissions |
| 激活 | signup、onboarding、cro |
| 留存 | churn-prevention、emails、community-marketing |
| 收入 | pricing、offers、paywalls |
| 推荐 | referrals、co-marketing、influencer-marketing |
| 不了解用户（横切） | customer-research（其产出喂给文案/CRO/竞品对比） |

输出格式：瓶颈判定（含依据）→ 推荐的 1–2 个专项技能 + 安装命令（`npx -y skills add coreyhaines31/marketingskills --skill <name>`）→ 若用户不装，给该环节的最小可行动作（一段话，不展开成教程）。

## 硬规则

- 诊断 + 路由即止。用户明确要求当场执行专项打法时，声明这超出本技能范围，再按通用能力尽力做。
- 一次只诊断一个瓶颈环，不输出「五环都要优化」的清单——那等于什么都没说。
- 专项技能清单会随对方仓库演进漂移（当前 48 个），以 coreyhaines31/marketingskills 的 README 为准，推荐前可核实技能名仍存在。
- 外部生态是第三方项目，推荐它不代表为其内容背书，用户付费/投放决策仍需自己判断。
