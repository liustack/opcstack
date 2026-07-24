---
name: opc
description: opcstack 技能栈入口与路由。把当前的商业问题交给它，它根据上下文选择合适的 opc-* 技能并按其流程执行。Entry point and router for the opcstack one-person company skill stack. Hand it any business question and it routes to the right opc-* skill. Use when the user invokes /opc, mentions opcstack, or is unsure which business skill applies. Do not trigger for requests with no business question（不涉及商业问题的请求不触发）.
---

## 工作方式

`opc` 本身不解决问题，它只做一件事：读懂当前对话上下文里用户的真实处境，判断意图，再决定接下来怎么走。

1. 读上下文，判断用户当前处境属于路由表中的哪一类。
2. 命中路由表某一行时，先在回复里明确声明「使用 opc-xxx」（或「使用 opc-analysis，模式：xxx」），再按该技能自身的流程执行，不要绕开它自行发挥。
3. 命中的技能尚未安装时，不要假装已安装或自己模拟其流程。如实告知用户该技能未安装，并给出安装命令：

   ```bash
   npx -y skills add liustack/opcstack --skill opc-xxx
   ```

   把 `opc-xxx` 换成命中的技能名（也可去掉 `--skill` 参数一次装齐整个技能栈）。安装后再按第 2 步执行。
4. 意图模糊、无法直接对应路由表任何一行时，先用一个问题澄清用户想做什么，不要求用户了解任何技能名，也不要用技能名去反问用户。
5. 一次只路由到一个技能（`opc-analysis` 除外，它内部再选人物/产品模式）。同时命中路由表两行以上时，选与用户当前措辞重合度最高的一行，只声明使用这一个，不要来回切换或都尝试一遍。

## 路由表

| 用户处境 | 路由到 |
|---|---|
| 拆解某个独立开发者/创始人的路径 | opc-analysis（person 模式） |
| 拆解某个产品的商业模式 | opc-analysis（product 模式） |
| 给自己的 idea/项目做体检、决定做不做/还要不要继续 | opc-checkup |
| 不知道做什么方向、想找细分市场、选赛道 | opc-niche |
| 有产品没增长、不知道营销从哪下手、增长卡住了 | opc-marketing |

## 兜底

路由表里没有一行对得上，就不要硬套技能，直接正常回答用户的问题即可。纯思维方法、开发工作流类的诉求（思维模型、需求规格化、核实纪律）属于姊妹栈 liustack（`ls` 入口），装有它时交给它处理，未装时可提示 `npx -y skills add liustack/liustack`。

当前环境里可能装有与某个 opc-* 技能职责相近的其他技能（比如另一套营销或选品方法），它们与 opcstack 版本各自独立，不要混为一谈。只有请求明确落在路由表对应行时才声明使用 opc-* 技能。
