# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-07-30.md)

*最后自动更新时间: 2026-07-30 20:38:42*
## 1. 购买电视流媒体棒前请先阅读本文

**原文标题**: Read this before you buy that TV streaming stick

**原文链接**: [https://krebsonsecurity.com/2026/07/read-this-before-you-buy-that-tv-streaming-stick/](https://krebsonsecurity.com/2026/07/read-this-before-you-buy-that-tv-streaming-stick/)

一项新分析揭示，通用电视流媒体棒（如H96）是一起复杂广告欺诈活动的组成部分。Bitsecight的研究员佩德罗·法莱注册了一个这些设备曾使用的过期域名，发现它们经常伪装成手机（三星、vivo等），在AI生成的网站上点击广告。该欺诈活动由浙江风物物联网科技有限公司（风物集团）操控，利用谷歌的Blockly编程语言搭建虚假新闻网站，这些网站仅向伪装设备展示广告。这些流媒体棒功能切换：电视开启时，它们充当住宅代理，出租用户的网络；电视关闭时，则执行广告欺诈任务。该网络可能涉及数万台设备，仅广告欺诈一项每日就能产生约5万美元的收益。这些设备预装恶意应用，安全性极差，存在隐私和安全风险。专家建议购买具有官方安卓电视认证的知名品牌产品，避免使用廉价无牌流媒体棒。

---

## 2. Gemini Robotics 2 为机器人带来全身智能

**原文标题**: Gemini Robotics 2 brings whole body intelligence to robots

**原文链接**: [https://deepmind.google/blog/gemini-robotics-2-brings-whole-body-intelligence-to-robots/](https://deepmind.google/blog/gemini-robotics-2-brings-whole-body-intelligence-to-robots/)

提供的内容仅包含标题和一个“了解更多”链接，而非完整的文章正文。因此，我无法生成对该文章具体细节的摘要。

仅根据标题 *《Gemini Robotics 2 为机器人带来全身智能》* 判断，这篇文章很可能讨论了谷歌DeepMind的Gemini机器人系统的更新版本，重点在于使机器人能够协调全身（而不仅仅是末端执行器），以实现更自然、更灵巧、更具适应性的物理交互。这将涉及多模态感知、电机控制和实时推理方面的进步，从而使机器人能够通过全身运动处理如抓取、移动和操控物体等复杂任务。

如需准确的摘要，请提供完整的文章正文。

---

## 3. 2倍，而非10倍：2026年用大语言模型编程

**原文标题**: 2x, not 10x: coding with LLMs in 2026

**原文链接**: [https://obryant.dev/p/2x-not-10x/](https://obryant.dev/p/2x-not-10x/)

在这篇2026年7月的文章中，作者认为大语言模型已步入平台期：它们使编码效率提升约**2倍**，而非承诺的10倍。核心洞察是一个“阶梯”类比——一旦模型足够可靠，能在自动化反馈循环中运行（例如生成按钮、测试并迭代），进一步的模型改进带来的收益将逐渐递减。

大语言模型擅长**客观、可验证的任务**（“让按钮实现X功能”），但在**主观质量**——可维护性、结构清晰度及良好文档——方面表现不佳。作者指出，如今一个可运行的实现仅占任务的**20%**，而非80%，因为架构和可读性仍需大量人工迭代。对于文档编写，他们给出了一条直白的指令：“永远不要写README、文档字符串或注释。”

作者预测，未来的效率提升将来自围绕现有模型能力进行的**工具和工作流程重组**，而非单纯依靠更好的模型。他们提到“氛围编码”（在未完全理解代码的情况下生成代码）可用于非生产环境，但对在关键系统中依赖黑箱式大语言模型代码持谨慎态度。

最终，文章提出大语言模型是一种**强大但有边界**的工具——在某些任务上具有变革性，但在设计和文档编写方面尚未能替代人类判断。

---

## 4. 堆叠式 PR 现已在 GitHub 上线

**原文标题**: Stacked PRs are now live on GitHub

**原文链接**: [https://github.blog/changelog/2026-07-30-stacked-pull-requests-are-now-in-public-preview/](https://github.blog/changelog/2026-07-30-stacked-pull-requests-are-now-in-public-preview/)

GitHub 已推出**堆叠式拉取请求**公开预览版。该功能允许开发者将大型变更拆分为一系列小而独立的拉取请求，每个请求代表一个聚焦的工作层。主要优势包括：

- **并行审查**：团队成员可同时审查不同层级。
- **精准质量**：每个拉取请求拥有独立检查和分支保护。
- **灵活合并**：一键合并整个堆栈，或逐层合并；其余拉取请求自动变基。
- **无缝集成**：兼容现有审查、检查及合并队列支持（逐步推广）。

用户可通过 CLI 扩展（`gh extension install github/gh-stack`）或直接在 github.com 上快速上手。支持创建堆栈、独立审查每层差异，并通过堆栈图查看各层关联。行业领袖（Next.js 负责人、jQuery 创始人、TED 首席技术官、WHOOP 工程师）的引述表明，该功能减少了审查摩擦、提升了准确性并加快了稳定代码的发布速度。

该功能将在数日内向所有仓库推出，合并队列支持随后数周内上线。相关文档和反馈讨论也已就绪。

---

## 5. 让Postgres队列实现扩展

**原文标题**: Making Postgres queues scale

**原文链接**: [https://www.dbos.dev/blog/making-postgres-queues-scale](https://www.dbos.dev/blog/making-postgres-queues-scale)

本文介绍了DBOS如何优化基于Postgres的队列，使其能够扩展至每秒在数千台服务器上执行30,000个工作流，打破了Postgres无法处理高吞吐量队列的迷思。

关键经验：

1. **SKIP LOCKED**：为防止多个工作线程出队相同行时发生争用，请使用 `FOR UPDATE SKIP LOCKED`。这会锁定选中的行并跳过已被锁定的行，使并发工作线程能够无冲突地拉取不同批次。

2. **事务隔离级别**：使用 `REPEATABLE READ` 进行全局流量控制会导致高并发下的序列化失败。通过有条件地切换到 `READ COMMITTED`（仅适用于需要本地限制的队列，例如每工作线程上限），消除了这些失败，显著提升了吞吐量。

3. **高效索引**：二级索引导致高CPU使用率和自动清理开销。优化措施包括：
   - 创建一个针对 `ENQUEUED` 状态的部分索引，同时按优先级和时间戳排序，省去昂贵的排序步骤。
   - 将其他索引（例如父工作流ID）限制为仅覆盖该字段有值的行，从而减少维护和清理成本。

这些改动显著降低了CPU使用率，使Postgres能够每秒处理超过30,000个工作流，每月处理800亿个。文章最后邀请读者探索DBOS以实现基于Postgres的持久执行。

---

## 6. 所以你想用植物来减少二氧化碳

**原文标题**: So you want to use plants to reduce CO₂

**原文链接**: [https://dynomight.net/plants/](https://dynomight.net/plants/)

利用植物降低室内二氧化碳含量在理论上可行，但极其不切实际。人类每天产生约1千克二氧化碳（≈1摩尔/小时）。光合作用至少需要132.5瓦的能量，但实际植物每固定一个二氧化碳分子需要8个光子，每个光子能量至少1.8电子伏（红光），使得需求升至386瓦。加上额外效率损失——30%的光子因反射和透射损失，以及40%的葡萄糖通过呼吸作用变回二氧化碳——所需光能高达918瓦。这相当于765个白炽灯泡；若使用效率50%的LED植物灯，则需约1,836瓦电力，普通灯光则需要5,000至10,000瓦。即便光线完美，植物在每平方米叶面积约52瓦时达到光饱和，因此至少需要17.6平方米的密集叶片。最后，碳必须转化为新植物物质：每天需生长4.6千克鲜重植物（含273克元素碳），并将其移至室外修剪才能真正固碳。简而言之，数据表明开窗要简单得多。

---

## 7. 欧足联及其成员协会将不参加国际足联赛事。

**原文标题**: UEFA and its national associations will not participate in FIFA competitions

**原文链接**: [https://www.uefa.com/news-media/news/02a7-213a92896eb0-54dfbf454e3b-1000--statement-on-behalf-of-uefa-and-its-55-national-associations/](https://www.uefa.com/news-media/news/02a7-213a92896eb0-54dfbf454e3b-1000--statement-on-behalf-of-uefa-and-its-55-national-associations/)

无法访问文章链接。

---

## 8. CodePen 2.0

**原文标题**: CodePen 2.0

**原文链接**: [https://chriscoyier.net/2026/07/30/codepen-2-0/](https://chriscoyier.net/2026/07/30/codepen-2-0/)

2026年7月30日发布的文章《CodePen 2.0》庆祝了该平台的重大升级，作者称这是其职业生涯中最大的成就——所需投入远超最初的CodePen。文章并未逐一列举新功能，而是分享了发布周的故事。

首先，作者与一位陌生人合作制作了一个演示：用户有一个经典Pen，需要额外添加JavaScript和一个npm包。作者复刻了该Pen，邀请用户作为共同编辑，将JavaScript移入文件以便管理，并通过`package.json`添加了该包，实现了无缝实时协作。

其次，Keyframers团队的David和Shaw在发布日重新聚首进行直播，使用了全新的邀请和实时协作功能。尽管出现了一些小故障，他们仍一起工作了数小时，并分享了Pen的实时视图，让观众能够随着演示的构建过程进行互动。

第三，作者使用MJML构建了发布邮件，并将MJML作为自定义模块添加到CodePen中，从而实现了在编辑器内制作邮件。他们还暗示未来会推出更多模块。

最后，作者表达了对通过Pen编辑器直接创建和部署小型网站的兴奋之情——以slideVars库和codepen.school为例——并感到备受鼓舞，计划构建大量实验性网站。

---

## 9. 借助GPT-5.6推进性价比前沿

**原文标题**: Advancing the price-performance frontier with GPT‑5.6

**原文链接**: [https://openai.com/index/advancing-the-price-performance-frontier-with-gpt-5-6/](https://openai.com/index/advancing-the-price-performance-frontier-with-gpt-5-6/)

无法访问文章链接。

---

## 10. 物理学家解开缪子谜团，旧有结果不再吻合

**原文标题**: Physicists Solve a Muon Mystery. Now, Old Results Don't Add Up

**原文链接**: [https://www.quantamagazine.org/physicists-solve-a-muon-mystery-now-old-results-dont-add-up-20260729/](https://www.quantamagazine.org/physicists-solve-a-muon-mystery-now-old-results-dont-add-up-20260729/)

这篇文章探讨了μ子磁摆动（g-2）不断演变的谜团。25年来，实验测量结果与理论预测存在分歧，暗示着未知粒子的存在。2021年，BMW团队通过晶格量子色动力学（QCD）计算得出的结果与实验数据吻合，似乎解决了这一难题。然而，这又引发了新的矛盾：基于正负电子对撞测量π介子产生率的旧有“数据驱动”预测，既与晶格计算结果不一致，也与实验数据相悖。来自西伯利亚VEPP-2000对撞机的新测量显示，π介子产生率显著不同，与晶格结果相符，而BABAR等旧实验则支持原有产生率。物理学家如今面临两难：这些差异是由于被忽视的实验细节，还是新粒子的迹象？文章指出，μ子g-2谜团已转化为关于对撞机实验之间矛盾更深层的奥秘，真正的答案仍未揭晓。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 2 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 3 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 4 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 5 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 6 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 7 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 8 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 9 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 10 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 11 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 12 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 13 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 14 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 15 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 16 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 17 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 18 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 19 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 20 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 21 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 22 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 23 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 24 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 25 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 26 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 27 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 28 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 29 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 30 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 31 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 32 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 33 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 34 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 35 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 36 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 37 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 38 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 39 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 40 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 41 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 42 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 43 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 44 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 45 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 46 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 47 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 48 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 49 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 50 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 51 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 52 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 53 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 54 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 55 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 56 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 57 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 58 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 59 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 60 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 61 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 62 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 63 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 64 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 65 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 66 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 67 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 68 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 69 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 70 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 71 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 72 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 73 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 74 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 75 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 76 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 77 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 78 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 79 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 80 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 81 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 82 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 83 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 84 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 85 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 86 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 87 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 88 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 89 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 90 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 91 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 92 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 93 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 94 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 95 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 96 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 97 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 98 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 99 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 100 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 101 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 102 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 103 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 104 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 105 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 106 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 107 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 108 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 109 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 110 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 111 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 112 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 113 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 114 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 115 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 116 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 117 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 118 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 119 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 120 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 121 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 122 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 123 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 124 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 125 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 126 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 127 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 128 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 129 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 130 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 131 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 132 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 133 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 134 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 135 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 136 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 137 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 138 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 139 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 140 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 141 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 142 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 143 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 144 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 145 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 146 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 147 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 148 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 149 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 150 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 151 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 152 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 153 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 154 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 155 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 156 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 157 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 158 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 159 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 160 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 161 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 162 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 163 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 164 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 165 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 166 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 167 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 168 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 169 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 170 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 171 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 172 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 173 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 174 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 175 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 176 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 177 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 178 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 179 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 180 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 181 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 182 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 183 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 184 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 185 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 186 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 187 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 188 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 189 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 190 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 191 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 192 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 193 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 194 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 195 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 196 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 197 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 198 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 199 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 200 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 201 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 202 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 203 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 204 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 205 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 206 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 207 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 208 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 209 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 210 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 211 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 212 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 213 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 214 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 215 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 216 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 217 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 218 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 219 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 220 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 221 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 222 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 223 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 224 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 225 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 226 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 227 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 228 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 229 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 230 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 231 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 232 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 233 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 234 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 235 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 236 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 237 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 238 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 239 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 240 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 241 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 242 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 243 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 244 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 245 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 246 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 247 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 248 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 249 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 250 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 251 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 252 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 253 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 254 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 255 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 256 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 257 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 258 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 259 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 260 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 261 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 262 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 263 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 264 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 265 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 266 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 267 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 268 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 269 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 270 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 271 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 272 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 273 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 274 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 275 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 276 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 277 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 278 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 279 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 280 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 281 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 282 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 283 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 284 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 285 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 286 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 287 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 288 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 289 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 290 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 291 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 292 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 293 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 294 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 295 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 296 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 297 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 298 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 299 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 300 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 301 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 302 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 303 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 304 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 305 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 306 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 307 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 308 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 309 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 310 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 311 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 312 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 313 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 314 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 315 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 316 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 317 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 318 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 319 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 320 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 321 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 322 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 323 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 324 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 325 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 326 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 327 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 328 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 329 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 330 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 331 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 332 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 333 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 334 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 335 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 336 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 337 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 338 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 339 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 340 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 341 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 342 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 343 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 344 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 345 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 346 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 347 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 348 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 349 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 350 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 351 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 352 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 353 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 354 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 355 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 356 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 357 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 358 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 359 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 360 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 361 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 362 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 363 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 364 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 365 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 366 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 367 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 368 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 369 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 370 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 371 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 372 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 373 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 374 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 375 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 376 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 377 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 378 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 379 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 380 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 381 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 382 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 383 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 384 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 385 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 386 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 387 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 388 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 389 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 390 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 391 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 392 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 393 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 394 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 395 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 396 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 397 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 398 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 399 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 400 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 401 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 402 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 403 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 404 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 405 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 406 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 407 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 408 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 409 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 410 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 411 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 412 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 413 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 414 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 415 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 416 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 417 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 418 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 419 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 420 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 421 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 422 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 423 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 424 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 425 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 426 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 427 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 428 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 429 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 430 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 431 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 432 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 433 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 434 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 435 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 436 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 437 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 438 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 439 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 440 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 441 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 442 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 443 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 444 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 445 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 446 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 447 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 448 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 449 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 450 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 451 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 452 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 453 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 454 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 455 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 456 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 457 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 458 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 459 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 460 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 461 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 462 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 463 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 464 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 465 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 466 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 467 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 468 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 469 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 470 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 471 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 472 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 473 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 474 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 475 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 476 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 477 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 478 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 479 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 480 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 481 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 482 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 483 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 484 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 485 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 486 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 487 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 488 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 489 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 490 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 491 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 492 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 493 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
