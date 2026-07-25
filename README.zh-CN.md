# opcstack

**一人公司技能栈。** 面向独立开发者、内容创作者、咨询顾问的 agent skills：商业拆解、商业体检、细分市场发现、营销诊断、发布 playbook。建立在双根基之上：商业五要素框架（商业怎么看）+ 心智格栅的商业应用（决策怎么做、怎么防自欺），与思维和开发侧的姊妹栈 [liustack](https://github.com/liustack/liustack) 同源。

[English](./README.md)

## 安装

```bash
# 全量
npx -y skills add liustack/opcstack

# 单装
npx -y skills add liustack/opcstack --skill opc-niche
```

Claude Code 插件市场：

```
/plugin marketplace add liustack/opcstack
/plugin install opcstack@opcstack
```

## 技能

| 技能 | 做什么 |
|---|---|
| `opc-analysis` | 商业拆解：标杆人物与标杆产品两模式 |
| `opc-checkup` | 商业体检：现金流 Razor、寿命定价、单元经济、致命依赖 |
| `opc-niche` | 细分市场发现：找到并评分未被满足的市场 |
| `opc-marketing` | 营销诊断：定位漏斗瓶颈，用人性底层理论给出解法 |
| `opc-launch` | 发布 playbook：定目标、蓄水、分批渠道、复发布三式、发布前硬门 |

## 理念

你可以直接用 opcstack，更推荐基于它蒸馏出适合你自己的打法。欢迎直接使用、fork 或 clone，而不是提 PR。有问题欢迎提 issue，但我不一定采纳。

## 授权

CC BY-NC 4.0：个人与教育用途免费，商业使用需单独授权，见 [LICENSE.md](LICENSE.md)。
