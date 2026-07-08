# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-07-08.md)

*最后自动更新时间: 2026-07-08 20:33:06*
## 1. 《我们体内微塑料知多少？》

**原文标题**: What Do We Know About the Microplastics Inside Us?

**原文链接**: [https://e360.yale.edu/features/cassandra-rauert-interview](https://e360.yale.edu/features/cassandra-rauert-interview)

**摘要：**

本次对环境化学家卡桑德拉·劳厄特的采访探讨了研究人体内微塑料所面临的挑战。劳厄特指出了两个主要问题：首先，血液中的脂质可能导致聚乙烯假阳性结果，这意味着此前的研究可能高估了微塑料水平。其次，塑料污染在实验室设备和空气中无处不在，存在样品污染风险。

为解决这一问题，劳厄特的团队建造了一个使用不锈钢、玻璃和正压空气的专用实验室，将背景塑料水平降低了一百倍。

关键发现包括：每周摄入一张信用卡重量塑料的流行说法已被推翻。家庭微塑料的主要来源包括干衣机中的合成纤维、塑料砧板、餐具和食品容器——尤其是在加热时。吸入的纤维可能通过咳嗽排出，但最微小颗粒的最终去向尚不清楚。

劳厄特强调，虽然微塑料颗粒本身的健康影响尚未明确，但塑料中的化学添加剂（如邻苯二甲酸盐和双酚类物质）已是已知的内分泌干扰物。尽管存在科学不确定性，她仍主张减少塑料使用，尤其是一次性塑料，理由是其污染和潜在的健康风险。

---

## 2. Chatto 现已开源

**原文标题**: Chatto is now Open Source

**原文链接**: [https://www.hmans.dev/blog/chatto-is-open-source](https://www.hmans.dev/blog/chatto-is-open-source)

**《Chatto现已开源》摘要**

Chatto是一款群组与团队聊天应用，现以开源形式发布，支持自托管。用户可通过Homebrew或遵循快速入门指南快速体验。该应用旨在成为Slack、Discord、Teams等流行聊天服务的紧凑且响应迅速替代方案，优先保障数据保护与隐私。所有个人及聊天数据均采用每用户密钥进行静态全加密，无联邦机制、第三方追踪或分析功能。每个服务器驱动单一社区，客户端可直接连接多个服务器。

Chatto内置支持端到端加密且具可扩展性的音视频通话及屏幕共享功能。提供Linux、macOS及Windows系统二进制文件。偏爱托管服务的用户可期待Chatto Cloud即将进入公测阶段，提供基于欧洲基础设施的付费托管服务，包含自动扩展、每日备份及零停机升级。系统无锁定限制，数据可自由迁移于自托管与云版本之间。

当前版本0.4稳定性良好，但缺少内容审核等功能。0.5版本将聚焦安全性与多服务器优化，预计6至12个月内发布1.0.0正式版。鼓励用户自托管、提供反馈并加入Chatto HQ社区获取支持。另有低频率新闻通讯推送版本更新与Chatto Cloud公测动态。

---

## 3. SWE-1.7 达到接近GPT 5.5和Opus的智能水平

**原文标题**: SWE-1.7 Reach Near GPT 5.5 and Opus Intelligence

**原文链接**: [https://cognition.com/blog/swe-1-7](https://cognition.com/blog/swe-1-7)

**SWE-1.7版本发布摘要**

Cognition发布SWE-1.7新型AI模型，该模型以Kimi K2.7为基座通过强化学习训练而成，以更低成本实现"前沿级智能"。专为长周期异步软件工程任务优化，现已在Devin中通过Cerebras以1000 TPS提供服务。

**关键训练创新：**
- **稳定性与熵控制：** 采用带"采样分布回放"的top-p采样，防止熵坍缩及训练-推理不匹配。Muon优化器与消除非确定性操作进一步稳定训练。
- **多集群训练：** 强化学习训练横跨三大洲四个数据中心。压缩权重差异（缩减99%）通过云端对象存储同步，实现跨洲1-2分钟更新且停机时间极短。
- **容错机制：** 推理引擎故障通过NVIDIA Dynamo低成本处理。训练器故障通过异步本地检查点与分片复制实现快速恢复。
- **自我压缩：** 模型学会总结工作状态，将任务周期延伸至原始上下文窗口之外，实现长达六小时的展开。交替长度惩罚机制在简单任务中鼓励简洁方案，同时不牺牲复杂任务性能。
- **数据质量：** 大规模流水线过滤误报/漏报，精选难度适宜任务，实施作弊防御（网络限制、隔离评分、尝试次数归零）。

**成果：** SWE-1.7在FrontierCode等基准测试中超越Kimi K2.7（42.3%对30.1%），同时媲美更大规模模型。与基座模型相比，其行为更一致可靠，推理更谨慎简洁。

---

## 4. Mistral的Robostral Navigate：最先进的机器人导航模型

**原文标题**: Mistral's Robostral Navigate: a state of the art robotics navigation model

**原文链接**: [https://mistral.ai/news/robostral-navigate/](https://mistral.ai/news/robostral-navigate/)

**Mistral Robostral Navigate 概述**

Mistral AI 发布了 Robostral Navigate，一个用于自主机器人导航的 8B 参数模型。它使机器人仅凭单个 RGB 摄像头即可理解自然语言指令，无需激光雷达或深度传感器。该模型在未见过的 R2R-CE 基准测试中取得 76.6% 的成功率，比多传感器系统高出 4.5 个百分点。

关键创新包括：**基于指向的导航**（预测摄像头画面中的目标坐标），并备有局部位移指令作为后备；**高效监督训练**，采用前缀缓存技术（将令牌数减少 22 倍）；以及**在线强化学习**（CISPO），将成功率提升 3.2%。训练使用了 6000 个模拟场景中的 40 万条轨迹。

该模型可运行于轮式、足式及飞行机器人上，并能适应训练中未见的真实世界障碍。Mistral 将此定位为迈向统一具身智能的基础一步，应用于制造、配送和酒店等领域。团队正在积极招聘以扩展研究。

---

## 5. Show HN：微软发布Flint，一种用于AI智能体的可视化语言

**原文标题**: Show HN: Microsoft releases Flint, a visualization language for AI agents

**原文链接**: [https://microsoft.github.io/flint-chart/#/](https://microsoft.github.io/flint-chart/#/)

微软推出Flint：专为AI智能体打造的开源可视化语言。Flint满足AI系统以人类可读且机器可生成的方式直观展示推理过程、决策逻辑与输出结果的需求。

该语言允许AI智能体通过声明式语法生成结构化可视化内容（如图表、流程图、图形与地图），使开发者能更便捷地将动态可视化输出集成至基于大语言模型的应用中。其主要特性包括：相比现有工具减少令牌占用的精炼语法、原生支持柱状图、折线图、散点图等常用图表类型，以及自动适配不同数据规模的布局与缩放功能。

Flint采用分层架构设计，包含语义层（Flint语法体系）、渲染层（如SVG、Canvas或HTML）及交互层（支持提示框与筛选功能）。该项目突出互操作性，使AI智能体输出的Flint规范可跨平台渲染。

通过提供低代码、高兼容性的数据可视化方案，微软旨在增强AI智能体对输出结果的解释能力，使其在调试、数据分析及终端用户应用中更具透明性与实用性。该项目已在GitHub上以宽松许可证形式发布。

---

## 6. 解析优衣库T恤上的混淆bash脚本

**原文标题**: Decoding the obfuscated bash script on a Uniqlo t-shirt

**原文链接**: [https://tris.sherliker.net/blog/obfuscated-self-evaluating-bash-script-by-cdn-akamai-being-supplied-to-consumers-via-retail-stores/](https://tris.sherliker.net/blog/obfuscated-self-evaluating-bash-script-by-cdn-akamai-being-supplied-to-consumers-via-retail-stores/)

优衣库的一款T恤，由Akamai为其"全民和平"活动设计，背面印有一段混淆处理的Bash脚本。作者的妻子发现了这件T恤，仔细一看，脚本以shebang（#!）开头，是一段经过Base64编码并通过`eval`执行的字符串。作者买下这件T恤，并指出这种编码方式常用于传播病毒的讽刺意味。

解码脚本需要克服OCR挑战（使用安卓工具、Tesseract和Claude）以确保完美转录。该脚本是一个无害的彩蛋：它让"PEACE♥FOR♥ALL"字样在终端中以正弦波形态滚动显示，并带有青色到橙色的渐变效果。脚本会隐藏光标，拦截Ctrl+C以恢复光标显示，并无限循环运行。

作者还指出字体很可能是Roboto Mono（而非最初以为的Consolas），并评论了Akamai的营销策略：设计参考了早期互联网米色箱式计算机，爱心象征互联网的全球善意，代码则致敬Linux。帖文最后提到，其他人也已解码这件T恤，并附上先前的分析链接。

---

## 7. GPT实时

**原文标题**: GPT‑Live

**原文链接**: [https://openai.com/index/introducing-gpt-live/](https://openai.com/index/introducing-gpt-live/)

**GPT‑Live 概览**

OpenAI 推出了 **GPT‑Live**，一种更具互动性的新版 ChatGPT。其核心功能是基于语音的实时对话，AI 能够看、听和说。用户可以与 ChatGPT 自然对话，它将用自然的语音回应，并能理解语气和语调。

主要功能包括：
- **语音对话**：对 ChatGPT 说话并接收语音回复。
- **视觉输入**：AI 可通过手机摄像头“看”，从而描述环境、提供实时建议（如维修指导）或解读物体和场景。
- **上下文感知**：它能在语音和视觉交互中保持上下文连贯，使对话流畅自然。
- **速度与表现力**：该模型经过训练可快速响应，并配备能传递情感与个性的新语音。

该更新最初面向 **Plus 和企业用户**，后续将推广至其他订阅层级。OpenAI 强调，GPT‑Live 通过将对话式 AI 与实时视觉理解相结合，旨在提供实用的日常辅助——例如辅导、故障排除或实时指导。  

此次发布标志着向更自然、多模态的人机交互迈出了重要一步。

---

## 8. Cloudflare 丢弃

**原文标题**: Cloudflare Drop

**原文链接**: [https://www.cloudflare.com/drop/](https://www.cloudflare.com/drop/)

以下是文章 **《Cloudflare Drop》** 的简要总结：

**Cloudflare Drop** 是 Cloudflare 推出的一款全新免费工具，旨在简化安全文件共享。用户可直接将最大 **10GB** 的文件发送到 Cloudflare 的基础设施中，而接收方无需拥有 Cloudflare 账户或任何特殊软件。

**主要功能与要点：**
- **无需注册：** 发送方和接收方均无需创建账户即可使用 Drop。
- **端到端加密：** 文件在传输和存储时均进行加密，解密密钥嵌入下载链接中，确保 Cloudflare 无法访问文件内容。
- **便捷上传与分享：** 用户只需在 Drop 页面拖放（或粘贴）文件，复制生成的唯一链接即可分享给任何人。
- **链接过期机制：** 下载链接为临时性质，在一段时间（默认 7 天）后或达到一定下载次数后自动失效，增强安全性。
- **注重隐私：** 不挖掘任何数据，Cloudflare 在链接过期后不会保留文件。
- **限制：** 文件大小上限为 10GB；不支持通过单个链接选择性分享多个文件（每个文件拥有独立链接）；无密码保护或接收方验证功能。
- **适用场景：** 适合视频、存档文件或文档等大型文件的快速一次性传输，尤其适合注重隐私和易用性的情况。

**总体评价：** Cloudflare Drop 提供了一种轻量、加密且无繁琐步骤的安全大文件共享方式，与 WeTransfer 等服务相比，具有更强的隐私保障，且无需账户。

---

## 9. 一个仅影响左撇子用户的错误

**原文标题**: A bug which affected only left handed users

**原文链接**: [https://shkspr.mobi/blog/2026/07/a-bug-which-only-affected-left-handed-users/](https://shkspr.mobi/blog/2026/07/a-bug-which-only-affected-left-handed-users/)

一个自2017年起存在的WordPress长期漏洞，导致左撇子用户在移动设备上用左手拇指滚动时，会意外出现一个“回复”评论框。该漏洞源于一个针对链接点击的`touchstart`事件监听器——它最初是为避免触控事件300毫秒延迟而添加的，但自2013年后已无必要，却一直残留在代码中。作者本人用右手拇指滚动，从未遇到过此问题。当用户在其博客报告该漏洞后，作者发现只需删除两行代码即可修复。他在原始报告提交七年后才提交了这一修复，终结了左撇子用户的困扰。文章以幽默夸张的语言，用“正义的”右撇子用户和“邪恶的”左撇子用户来嘲讽过时代码和修复拖延。

---

## 10. OpenMandriva：关于试图破坏分发的声明

**原文标题**: OpenMandriva: Statement regarding attempted distribution sabotage

**原文链接**: [https://forum.openmandriva.org/t/statement-regarding-attempted-distribution-sabotage/8997](https://forum.openmandriva.org/t/statement-regarding-attempted-distribution-sabotage/8997)

**摘要：**

OpenMandriva 披露了前贡献者 Davide Beatrici 的破坏事件，此人以在 Mumble 上的工作而闻名。Davide 最初受到信任，与另外两人一同加入，此后其中一人对社区成员做出辱骂行为。该攻击者被从聊天中移除（未被封禁）后，Davide 与另一人抗议离开。

当 OpenMandriva 切断与 Davide 私人 OneDev 基础设施的镜像连接时，Davide 滥用其剩余的管理权限进行报复。他删除了该发行版 GitHub 仓库的部分内容，包括多年工作成果，并发布了一个空包，废弃了所有 GNOME 和 COSMIC 包，可能损害用户的系统。

团队正在恢复被删除的仓库并修复被废弃的包。尽管该行为具有犯罪性质，他们选择不采取法律行动。全面审计未发现其他违规行为。该声明旨在向开源社区警示 Davide Beatrici。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 2 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 3 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 4 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 5 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 6 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 7 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 8 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 9 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 10 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 11 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 12 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 13 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 14 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 15 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 16 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 17 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 18 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 19 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 20 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 21 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 22 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 23 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 24 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 25 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 26 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 27 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 28 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 29 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 30 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 31 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 32 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 33 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 34 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 35 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 36 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 37 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 38 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 39 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 40 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 41 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 42 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 43 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 44 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 45 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 46 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 47 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 48 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 49 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 50 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 51 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 52 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 53 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 54 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 55 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 56 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 57 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 58 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 59 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 60 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 61 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 62 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 63 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 64 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 65 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 66 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 67 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 68 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 69 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 70 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 71 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 72 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 73 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 74 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 75 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 76 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 77 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 78 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 79 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 80 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 81 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 82 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 83 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 84 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 85 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 86 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 87 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 88 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 89 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 90 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 91 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 92 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 93 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 94 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 95 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 96 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 97 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 98 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 99 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 100 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 101 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 102 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 103 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 104 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 105 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 106 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 107 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 108 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 109 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 110 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 111 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 112 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 113 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 114 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 115 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 116 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 117 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 118 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 119 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 120 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 121 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 122 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 123 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 124 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 125 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 126 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 127 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 128 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 129 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 130 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 131 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 132 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 133 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 134 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 135 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 136 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 137 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 138 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 139 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 140 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 141 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 142 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 143 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 144 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 145 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 146 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 147 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 148 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 149 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 150 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 151 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 152 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 153 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 154 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 155 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 156 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 157 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 158 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 159 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 160 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 161 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 162 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 163 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 164 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 165 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 166 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 167 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 168 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 169 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 170 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 171 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 172 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 173 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 174 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 175 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 176 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 177 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 178 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 179 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 180 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 181 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 182 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 183 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 184 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 185 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 186 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 187 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 188 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 189 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 190 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 191 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 192 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 193 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 194 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 195 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 196 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 197 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 198 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 199 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 200 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 201 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 202 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 203 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 204 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 205 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 206 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 207 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 208 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 209 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 210 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 211 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 212 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 213 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 214 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 215 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 216 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 217 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 218 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 219 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 220 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 221 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 222 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 223 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 224 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 225 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 226 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 227 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 228 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 229 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 230 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 231 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 232 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 233 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 234 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 235 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 236 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 237 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 238 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 239 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 240 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 241 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 242 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 243 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 244 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 245 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 246 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 247 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 248 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 249 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 250 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 251 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 252 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 253 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 254 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 255 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 256 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 257 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 258 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 259 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 260 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 261 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 262 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 263 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 264 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 265 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 266 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 267 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 268 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 269 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 270 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 271 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 272 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 273 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 274 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 275 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 276 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 277 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 278 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 279 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 280 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 281 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 282 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 283 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 284 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 285 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 286 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 287 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 288 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 289 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 290 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 291 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 292 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 293 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 294 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 295 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 296 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 297 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 298 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 299 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 300 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 301 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 302 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 303 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 304 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 305 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 306 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 307 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 308 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 309 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 310 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 311 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 312 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 313 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 314 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 315 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 316 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 317 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 318 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 319 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 320 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 321 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 322 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 323 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 324 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 325 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 326 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 327 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 328 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 329 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 330 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 331 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 332 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 333 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 334 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 335 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 336 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 337 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 338 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 339 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 340 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 341 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 342 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 343 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 344 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 345 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 346 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 347 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 348 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 349 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 350 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 351 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 352 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 353 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 354 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 355 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 356 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 357 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 358 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 359 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 360 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 361 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 362 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 363 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 364 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 365 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 366 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 367 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 368 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 369 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 370 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 371 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 372 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 373 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 374 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 375 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 376 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 377 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 378 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 379 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 380 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 381 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 382 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 383 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 384 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 385 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 386 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 387 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 388 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 389 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 390 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 391 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 392 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 393 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 394 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 395 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 396 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 397 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 398 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 399 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 400 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 401 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 402 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 403 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 404 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 405 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 406 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 407 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 408 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 409 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 410 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 411 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 412 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 413 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 414 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 415 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 416 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 417 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 418 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 419 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 420 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 421 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 422 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 423 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 424 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 425 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 426 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 427 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 428 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 429 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 430 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 431 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 432 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 433 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 434 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 435 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 436 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 437 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 438 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 439 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 440 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 441 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 442 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 443 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 444 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 445 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 446 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 447 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 448 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 449 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 450 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 451 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 452 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 453 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 454 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 455 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 456 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 457 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 458 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 459 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 460 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 461 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 462 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 463 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 464 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 465 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 466 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 467 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 468 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 469 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 470 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 471 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 472 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 473 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
