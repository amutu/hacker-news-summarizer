# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-31.md)

*最后自动更新时间: 2026-03-31 20:36:53*
## 1. GitHub的历史性运行时间

**原文标题**: GitHub's Historic Uptime

**原文链接**: [https://damrnelson.github.io/github-historical-uptime/](https://damrnelson.github.io/github-historical-uptime/)

**《GitHub历史运行时间概览》摘要**

本文展示了全球领先的软件开发平台GitHub的历史运行时间图表，主要目的是记录并可视化该服务随时间推移的可靠性，重点呈现其高度稳定的时期以及重大的服务中断事件。

文章传达的关键信息是：尽管GitHub保持了极高的整体运行时间百分比，但它并非完全免于重大故障。图表详细记录了具体的历史性中断事件、其持续时间以及对用户和全球开发者社区的影响。这些事件突显了该平台在软件生态系统中的关键作用——即使短暂的中断也可能产生广泛影响。

文章的核心在于提供一份透明、数据驱动的GitHub性能记录。这为开发者和组织提供了洞察平台可靠性历史的窗口，对于风险评估和应急规划至关重要。摘要总结指出，GitHub的运行时间记录总体表现强劲，但其历史图表是理解这一重要互联网基础设施在现实世界中韧性的必要工具。

---

## 2. 克劳德代码源泄露：虚假工具、令人沮丧的正则表达式、卧底模式

**原文标题**: The Claude Code Source Leak: fake tools, frustration regexes, undercover mode

**原文链接**: [https://alex000kim.com/posts/2026-03-31-claude-code-source-leak/](https://alex000kim.com/posts/2026-03-31-claude-code-source-leak/)

Claude Code源代码泄露揭示了多项值得注意的内部机制与战略细节。该事件显示Anthropic采用了反蒸馏技术，例如在API响应中注入虚假工具以污染竞争对手的数据，以及一种"伪装模式"，可在公共代码库中移除AI生成内容里所有Anthropic相关标识。

关键技术发现包括原生客户端认证系统——通过基于Bun的二进制文件进行密码学验证以阻止未授权API调用，以及基于正则表达式的"挫折检测"模式。代码中还提及名为"KAIROS"的未发布自主代理模式，并详细描述了一个曾每日浪费约25万次API调用的漏洞。

文章指出主要损害在于通过功能标志暴露了Anthropic的产品路线图与战略特性，使竞争对手获得提前预警。同时提及具有讽刺意味的是：此次泄露可能源于Anthropic收购的工具链公司Bun的漏洞——该漏洞意外在生产环境中暴露了源码映射文件。

---

## 3. Claude Code的源代码已通过其NPM注册表中的映射文件泄露。

**原文标题**: Claude Code's source code has been leaked via a map file in their NPM registry

**原文链接**: [https://twitter.com/Fried_rice/status/2038894956459290963](https://twitter.com/Fried_rice/status/2038894956459290963)

**摘要：**

Anthropic的AI编程助手Claude Code发生了一起安全事件。其NPM（Node包管理器）注册包中一个可公开访问的映射文件（*.js.map）意外暴露了Claude Code的源代码。

此次暴露是由于软件包的生产版本包含了源码映射文件。这些文件通常用于调试，因为它们能将压缩/编译后的代码映射回原始人类可读的源代码。在此案例中，映射文件未被排除在发布的软件包之外，使得任何人都能重构并检查大部分底层源代码。

此类泄露可能带来严重的安全风险，包括：
*   **知识产权盗窃：** 竞争对手或恶意行为者可以分析专有算法和业务逻辑。
*   **漏洞发现：** 攻击者可以更容易地审查代码中的安全缺陷、零日漏洞或硬编码的密钥。
*   **供应链攻击：** 了解内部结构可能有助于针对该软件或其依赖项发起定向攻击。

文章指出，此次泄露是通过映射文件发现的，突显了一个常见的部署疏忽。提醒开发人员确保为生产环境配置的构建产物在公开发布前排除源码映射等调试文件，以防止此类暴露。

---

## 4. Cohere Transcribe：语音识别

**原文标题**: Cohere Transcribe: Speech Recognition

**原文链接**: [https://cohere.com/blog/transcribe](https://cohere.com/blog/transcribe)

Cohere推出了Transcribe，这是一款专为企业设计的开源自动语音识别（ASR）模型。该模型名为cohere-transcribe-03-2026，是一个拥有20亿参数的基于Conformer的编码器-解码器系统，从零开始训练了包括英语、普通话和西班牙语在内的14种语言。

它在准确性上树立了新标杆，以平均词错误率（WER）5.42%的成绩在HuggingFace的Open ASR排行榜上位列第一，超越了Whisper Large v3和ElevenLabs Scribe v2等竞争对手。这种高准确性在基准数据集和真实场景的人工评估中均表现一致。

该模型还针对生产环境进行了优化，在其规模级别提供了顶级的服务效率和吞吐量，适合实际的GPU和本地部署。它采用Apache 2.0许可证，可通过Hugging Face开源下载，通过免费API进行实验，也可通过Cohere的无速率限制托管平台Model Vault用于生产工作负载。

---

## 5. 潦草未必是未来

**原文标题**: Slop is not necessarily the future

**原文链接**: [https://www.greptile.com/blog/ai-slopware-future](https://www.greptile.com/blog/ai-slopware-future)

本文认为，尽管当前AI生成的“垃圾代码”——低质量、无脑的代码——正在泛滥，但经济力量最终将迫使AI模型产出“优质代码”。

作者承认存在令人担忧的趋势：AI编程工具正导致开发者发布更庞大、更密集、更复杂的代码，这可能使软件更脆弱、故障更频繁。目前似乎缺乏对代码质量的直接激励，因为用户获得了可运行的结果，而模型实验室按生成量收费。

然而，核心论点是：优质代码——即简洁、易理解、易修改的代码——将因经济原因占据上风。优质代码降低了复杂性，使AI模型生成和开发者维护时都更节省资源。随着AI编程普及和竞争加剧，生成臃肿复杂代码的模型将在运行和维护成本上呈指数级增长。

结论是：当前阶段是混乱但早期的应用期。焦点将从单纯实现AI代码生成转向优化其效率和可维护性。长期来看，市场将奖励那些能帮助开发者最快发布可靠功能的AI，而这必然需要生成更简洁、更高质量的代码。

---

## 6. 浏览器中的开源CAD（Solvespace）

**原文标题**: Open source CAD in the browser (Solvespace)

**原文链接**: [https://solvespace.com/webver.pl](https://solvespace.com/webver.pl)

本文介绍了SolveSpace的实验性网页版本，这是一款参数化2D/3D CAD程序。其核心要点在于，该桌面软件已通过Emscripten成功编译为可在网页浏览器中运行，使得初始页面加载后无需网络连接即可使用。

文章明确强调了该版本的**实验性质**。它基于最新的开发分支构建，这意味着它可能存在稳定桌面版本中没有的错误，并且在处理较大模型时可能面临性能损失。尽管存在这些注意事项，该版本对于小型项目仍被描述为“高度可用”。

关键实用信息包括：
*   用户可直接从页面启动该网页应用。
*   软件加载后完全在客户端运行。
*   为希望自行构建和托管副本的用户提供了操作指南。

总之，本文展示了一个功能完整但处于初步阶段的SolveSpace浏览器移植版本，它在线上提供了核心CAD功能，同时明确了对其稳定性和性能的预期。

---

## 7. Show HN：这位老程序员如何打造出最快最自由的Postgres BM25搜索引擎

**原文标题**: Show HN: How This Graybeard Built the Fastest and Freest Postgres BM25 Search

**原文链接**: [https://github.com/timescale/pg_textsearch](https://github.com/timescale/pg_textsearch)

**pg_textsearch** 是一个 PostgreSQL 扩展，它利用 BM25 算法实现了快速、带排序的全文搜索。它提供了简洁的语法（如 `ORDER BY content <@> '搜索词'`），并支持标准的 PostgreSQL 文本搜索配置（例如 `english`、`french`）。主要特性包括可配置的 BM25 参数（k1、b）、用于高效 top-k 查询的 Block-Max WAND 优化，以及对大数据集的并行索引构建。

该扩展需要通过 `shared_preload_libraries` 加载，并在文本列上创建专门的 `bm25` 索引。查询可使用自动索引检测，或通过 `to_bm25query()` 函数显式指定索引。性能通过批量加载后强制合并段、使用 `LIMIT` 子句启用 top-k 跳过等技术进行优化。

当前的限制包括：不原生支持短语查询或表达式索引（但存在变通方案），且分区表各分区的分数无法直接比较。该扩展已为 PostgreSQL 17 和 18 版本做好生产准备，并为 Linux 和 macOS 提供预编译二进制文件。

---

## 8. 加速人工智能的下一阶段发展

**原文标题**: Accelerating the Next Phase of AI

**原文链接**: [https://openai.com/index/accelerating-the-next-phase-ai](https://openai.com/index/accelerating-the-next-phase-ai)

根据OpenAI官方博客文章《加速人工智能的下一阶段》，以下是简明摘要：

OpenAI宣布一项新举措，通过成立**安全与安保委员会**并开始训练其下一代前沿模型，以加速人工智能发展。此举是其推进AI能力同时严格管控风险的承诺的一部分。

关键要点如下：
1.  **新前沿模型**：公司近期已开始训练其下一代旗舰AI模型，预计这将使该组织更接近通用人工智能（AGI）。
2.  **强化治理**：已成立由董事会领导、包含技术与政策专家的新安全与安保委员会。其首要任务是在未来90天内评估并改进OpenAI现有的安全协议。审查结束后，建议将提交全体董事会审议，并公开更新采纳的安全措施。
3.  **安全部署承诺**：OpenAI重申其安全负责任地开发和发布技术的原则。新委员会是监督所有项目（尤其是新前沿模型）关键安全决策的结构性步骤。

本质上，文章概述了OpenAI的双重关注点：在推进更强大AI系统开发的同时，强化内部治理框架，以确保这些系统的构建与部署以安全为核心优先事项。

---

## 9. Teenage Engineering PO-32声学调制解调器与合成器实现

**原文标题**: Teenage Engineering's PO-32 acoustic modem and synth implementation

**原文链接**: [https://github.com/ericlewis/libpo32](https://github.com/ericlewis/libpo32)

**摘要**

libpo32 是一个 C99 库，重新实现了 Teenage Engineering PO-32 鼓机的声学数据传输协议和鼓合成引擎。该库使软件能够在无需物理硬件的情况下构建、发送、接收和预览 PO-32 数据。

该库专注于四个关键领域：用于构建音色和节奏数据包的**传输协议**；将数据包渲染为音频音调以播放至 PO-32 的**声学调制解调器**；从录制的传输音频中恢复数据的**解码器**；以及使用其 21 参数模型在本地模拟 PO-32 声音引擎的**鼓合成器**。

该库设计为独立的 C99 实现，依赖极少，适用于嵌入式系统。典型工作流程包括：在软件中基于声音/节奏数据构建传输内容，将其渲染为音频文件，然后将该音频播放至 PO-32，PO-32 随后解码并将数据加载到其内部存储槽中。

项目包含构建说明、测试和演示程序（如 `po32_demo` 和 `po32_pattern_editor`），以展示编码、解码和合成功能。该项目采用 MIT 许可证开源。

---

## 10. OkCupid向面部识别公司提供300万张约会应用照片，FTC称。

**原文标题**: OkCupid gave 3M dating-app photos to facial recognition firm, FTC says

**原文链接**: [https://arstechnica.com/tech-policy/2026/03/okcupid-match-pay-no-fine-for-sharing-user-photos-with-facial-recognition-firm/](https://arstechnica.com/tech-policy/2026/03/okcupid-match-pay-no-fine-for-sharing-user-photos-with-facial-recognition-firm/)

2014年，约会应用OkCupid及其母公司Match Group在未经用户同意的情况下，向面部识别公司Clarifai提供了近300万用户的照片和个人数据，美国联邦贸易委员会（FTC）披露。FTC指控此举违反了OkCupid的隐私政策，该政策曾承诺在未告知用户且未提供退出选项的情况下不会共享个人信息。

此次数据转移发生在Clarifai首席执行官（OkCupid创始人是该公司的投资人）提出数据访问请求后。双方未就Clarifai如何使用数据签订正式协议或设置限制，据报道该公司利用这些照片开发了用于识别年龄、性别和种族的面部识别系统。事件曝光后，OkCupid曾否认与Clarifai存在合作。

FTC与涉事公司已达成和解协议，尚待法院批准。OkCupid和Match未承认不当行为，也未面临经济处罚，但被永久禁止在数据收集、使用和共享方面对消费者进行虚假陈述。两家公司声明所称的涉事行为不代表其当前的隐私保护措施。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 2 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 3 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 4 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 5 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 6 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 7 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 8 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 9 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 10 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 11 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 12 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 13 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 14 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 15 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 16 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 17 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 18 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 19 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 20 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 21 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 22 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 23 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 24 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 25 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 26 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 27 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 28 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 29 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 30 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 31 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 32 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 33 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 34 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 35 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 36 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 37 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 38 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 39 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 40 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 41 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 42 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 43 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 44 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 45 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 46 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 47 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 48 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 49 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 50 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 51 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 52 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 53 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 54 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 55 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 56 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 57 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 58 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 59 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 60 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 61 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 62 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 63 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 64 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 65 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 66 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 67 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 68 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 69 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 70 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 71 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 72 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 73 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 74 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 75 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 76 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 77 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 78 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 79 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 80 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 81 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 82 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 83 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 84 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 85 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 86 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 87 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 88 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 89 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 90 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 91 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 92 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 93 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 94 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 95 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 96 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 97 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 98 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 99 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 100 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 101 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 102 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 103 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 104 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 105 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 106 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 107 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 108 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 109 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 110 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 111 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 112 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 113 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 114 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 115 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 116 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 117 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 118 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 119 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 120 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 121 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 122 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 123 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 124 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 125 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 126 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 127 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 128 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 129 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 130 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 131 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 132 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 133 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 134 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 135 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 136 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 137 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 138 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 139 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 140 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 141 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 142 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 143 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 144 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 145 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 146 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 147 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 148 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 149 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 150 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 151 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 152 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 153 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 154 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 155 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 156 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 157 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 158 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 159 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 160 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 161 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 162 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 163 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 164 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 165 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 166 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 167 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 168 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 169 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 170 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 171 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 172 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 173 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 174 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 175 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 176 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 177 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 178 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 179 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 180 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 181 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 182 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 183 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 184 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 185 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 186 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 187 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 188 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 189 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 190 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 191 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 192 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 193 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 194 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 195 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 196 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 197 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 198 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 199 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 200 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 201 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 202 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 203 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 204 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 205 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 206 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 207 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 208 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 209 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 210 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 211 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 212 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 213 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 214 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 215 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 216 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 217 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 218 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 219 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 220 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 221 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 222 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 223 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 224 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 225 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 226 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 227 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 228 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 229 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 230 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 231 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 232 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 233 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 234 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 235 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 236 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 237 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 238 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 239 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 240 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 241 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 242 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 243 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 244 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 245 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 246 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 247 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 248 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 249 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 250 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 251 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 252 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 253 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 254 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 255 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 256 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 257 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 258 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 259 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 260 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 261 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 262 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 263 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 264 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 265 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 266 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 267 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 268 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 269 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 270 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 271 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 272 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 273 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 274 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 275 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 276 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 277 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 278 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 279 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 280 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 281 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 282 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 283 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 284 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 285 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 286 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 287 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 288 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 289 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 290 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 291 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 292 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 293 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 294 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 295 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 296 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 297 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 298 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 299 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 300 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 301 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 302 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 303 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 304 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 305 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 306 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 307 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 308 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 309 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 310 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 311 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 312 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 313 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 314 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 315 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 316 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 317 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 318 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 319 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 320 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 321 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 322 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 323 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 324 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 325 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 326 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 327 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 328 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 329 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 330 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 331 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 332 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 333 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 334 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 335 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 336 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 337 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 338 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 339 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 340 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 341 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 342 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 343 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 344 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 345 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 346 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 347 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 348 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 349 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 350 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 351 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 352 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 353 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 354 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 355 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 356 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 357 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 358 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 359 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 360 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 361 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 362 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 363 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 364 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 365 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 366 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 367 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 368 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 369 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 370 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 371 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 372 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 373 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 374 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
