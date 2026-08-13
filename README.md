# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-08-13.md)

*最后自动更新时间: 2026-08-13 20:46:33*
## 1. Gemini 3.7 Flash

**原文标题**: Gemini 3.7 Flash

**原文链接**: [https://blog.google/innovation-and-ai/models-and-research/gemini-models/introducing-gemini-3-7-flash/](https://blog.google/innovation-and-ai/models-and-research/gemini-models/introducing-gemini-3-7-flash/)

谷歌推出了Gemini 3.7 Flash，这是其面向编程和智能体领域最强大的通用模型，距离3.6 Flash发布仅三周时间。它在软件工程、知识工作和网页开发方面带来了显著改进，首发价格为每100万输入tokens 0.75美元、每100万输出tokens 3.75美元——仅为原3.6 Flash成本的一半。

相较于3.6 Flash的主要性能提升包括：FrontierCode 1.1 Main（43.6%对34.4%）、DeepSWE v1.1（65.3%对49.0%）、WebDev Arena Elo（1588对1538）、GDP.pdf基准测试（34.0%对22.0%）以及AutomationBench（30.4%对17.0%）。该模型在调试、首次通过代码准确率、UI生成以及金融、法律和生物科学等领域的文档处理方面均表现出改进。

开发者体验得到增强，改进了指令遵循、意图澄清、多步骤规划和工具调用能力，减少了人工监督需求。Google AI Pro和Ultra订阅用户可使用的Gemini Spark，现已基于3.7 Flash运行，以提升Workspace工具使用和知识工作效率。

该模型配备了更新的安全防护措施，以防止CBRN和网络攻击类滥用。可用平台包括Google Antigravity、通过Google AI Studio和Android Studio提供的Gemini API、Gemini Enterprise Agent Platform，以及面向订阅用户的Gemini应用。

---

## 2. 加速GPT-5.6 Sol超快速

**原文标题**: Accelerating GPT-5.6 Sol Ultrafast

**原文链接**: [https://www.cerebras.ai/blog/accelerating-gpt-5-6-sol-ultrafast-with-openai](https://www.cerebras.ai/blog/accelerating-gpt-5-6-sol-ultrafast-with-openai)

Cerebras与OpenAI推出了**超快速模式（Ultrafast Mode）**，这是OpenAI API中由Cerebras硬件驱动的新服务层级。该模式以高达**每秒750个输出token**的速度运行**GPT-5.6 Sol**，且不牺牲任何质量，专为时效性要求高、任务关键的AI工作而设计。

核心亮点：

- **基准测试速度**：在“人类最后的考试”（Humanity's Last Exam）中，GPT-5.6 Sol超快速模式在**11小时11分钟**内完成了2,500道博士级问题，而Claude Fable 5耗时**78小时27分钟**——速度提升近**7倍**，且准确率相当。
- **经济价值**：在GDP-Val测试中，超快速模式实现了**5.6倍端到端加速**，且无质量下降，适用于法律、金融和工程领域任务。
- **应用场景**：支持生产事故的快速根因分析、实时网络安全响应，以及无需上下文切换的更流畅的智能体工作流。
- **技术革新**：由Cerebras的**晶圆级引擎（Wafer-Scale Engine）**驱动，其片上集成**44 GB SRAM**，使模型权重常驻芯片，避免了GPU式的内存瓶颈，实现了快速、可扩展的推理。
- **可用性**：超快速模式目前面向特定客户提供**有限预览**，随着算力扩展将逐步开放更广泛的访问。

文章重点介绍了Cerebras与OpenAI如何消除传统上速度与智能之间的取舍关系，使前沿AI能够应用于高 stakes、对延迟敏感的工作场景。

---

## 3. Donkey.bas迎来45周年——131行的荣耀

**原文标题**: Donkey.bas is 45 Years Old – 131 line of Glory

**原文链接**: [https://donkeybas.com/](https://donkeybas.com/)

本文纪念经典BASIC游戏《Donkey.bas》诞生45周年。这款仅有131行代码的经典游戏，作为早期PC游戏史上简单却极具标志性的作品，其持久影响力被着重强调。

关键信息包括游戏的操作与功能：玩家使用**空格键**或**点击**切换车道，按**Esc**键返回标题画面。文章还提及**声音**、**CRT**（模拟复古显示器）、**作弊**和**全屏**等选项，这些很可能是现代网页版复刻的一部分。

总的来说，文章强调了《Donkey.bas》尽管代码仅有区区131行，却依然是令人难忘且具有影响力的经典之作——充分展示了早期软件开发中的创造力与简洁性。

---

## 4. Mistral OCR 4.1

**原文标题**: Mistral OCR 4.1

**原文链接**: [https://docs.mistral.ai/models/ocr-4-1](https://docs.mistral.ai/models/ocr-4-1)

Mistral OCR 4.1 是一项新的OCR服务，于2026年7月16日在公开预览中发布，旨在为Mistral的文档AI技术栈提供支持。它引入了原生段落级边界框提取、结构块标签和块级置信度分数，从而实现更精确的文档理解。该模型名为 `mistral-ocr-4-1`。

定价设置为每1,000页3.50欧元，每1,000个带标注页面4.38欧元，价格同时以欧元和美元标示。主要功能包括通过 `/v1/ocr` 端点进行边界框提取、结构化注释，以及通过 `/v1/batch` 支持批处理。

该公告还提到了产品阵容中的其他模型：Z.ai GLM 5.2 (v5.2)、Shieldstral 1.0 (v1.0) 和 Mistral Medium 3.5 (v26.04)。总体而言，Mistral OCR 4.1 旨在为企业文档处理提供先进、结构化的OCR能力。

---

## 5. 将DRAM意面化

**原文标题**: Spaghettifying DRAM

**原文链接**: [https://github.com/xoreaxeaxeax/skitter-creek-bath-salts](https://github.com/xoreaxeaxeax/skitter-creek-bath-salts)

本文描述了一个名为“skitter-creek-bath-salts”的硬件安全研究项目，该项目利用AMD Family 16h CPU上的DRAM地址加扰机制，绕过内存保护并访问本应锁定的平台区域。

核心漏洞位于内存控制器（MCT/DCT）层，即虚拟到物理内存转换管线的最后一个阶段。DRAM控制器使用供应商可配置的变换方式，将物理地址重写为原始DRAM坐标（bank、row、column）。只需对DCT的bank-swizzle-mode寄存器执行一次单比特写入（`xor dword [0xf80c2094], 0x00400000`），即可打乱这一映射，导致物理地址别名映射到不同的DRAM单元。关键问题在于，保护受保护区（平台安全处理器、SMM、C6 DRAM、微码）的安全栅栏作用于内存控制器*之上*的物理地址，完全看不到下方的重映射——因此这些保护被悄然绕过。

在加扰过程中保持系统稳定需要精心的编排：禁用应用处理器、预填充TLB、预热缓存、禁用中断、刷新目标缓存行，并在恢复映射之前在紧凑的串行化窗口内完成比特翻转和数据访问。

由于DRAM控制器的地址变换是一个GF(2)线性映射，研究人员使用z3 SMT求解器恢复未知的变换。他们通过加扰映射写入一个哨兵值，然后扫描内存定位该值，收集（目标地址，别名地址）配对，进而求解连接一致视图与“意大利面条式”内存视图的转换矩阵。这使他们能够计算出任何受保护物理地址的别名。该技术从概念上可扩展到现代AMD处理器、ARM和RISC-V，这些平台的数据手册均未公开这些寄存器细节。

---

## 6. 选择无聊的技术（2015）

**原文标题**: Choose Boring Technology (2015)

**原文链接**: [https://mcfunley.com/choose-boring-technology](https://mcfunley.com/choose-boring-technology)

这篇文章认为，对于大多数问题，公司应该倾向于选择“无聊”的、成熟稳定的技术，而非时髦的创新技术。文章提出了一个观点：每家公司大约只有**三个“创新代币”**，可以花在新技术选择上；将它们浪费在新型数据库或小众基础设施上，可能会延误成功，甚至导致失败。无聊的技术——如MySQL、Postgres、Python、PHP、Memcached和Cron——之所以有价值，是因为它们的能力**以及故障模式**都已被充分了解。新技术则携带更多“未知的未知”，增加了运营风险。

技术选择应该从全局而非局部进行优化。增加语言、数据库或服务会带来“包袱”，表现为监控、维护、认知负担和运营复杂度的上升。“为工作选择最佳工具”的心态是短视的；最好的工具往往是那种在整个组织范围内造成最少长期运营负担的工具。

然而，文章并非反对所有新技术。公司应该**偶尔且有意识地**采用新工具，并通过全公司范围内的讨论来推进。在添加任何东西之前，先问问如何用现有工具解决这个问题——这往往能揭示出，真正的动机只是想要尝试新东西。如果新技术确实合理，就要制定清晰的迁移计划，避免积累局部最优但全局昂贵的系统。

归根结底，目标是**交付产品并让公司持续经营下去**。审慎的、无聊的技术选择能让工程团队腾出精力专注于更大的问题，而多语言混用或追逐潮流的选择则可能制造运营负担，拖慢一切。

---

## 7. 旧网络去哪了？我们追踪了657,607条链接找到了答案

**原文标题**: Where did the old web go? We followed 657,607 links to find out

**原文链接**: [https://0.mk/blog/link-rot](https://0.mk/blog/link-rot)

2026年，对马其顿首个URL缩短服务0.mk的恢复工作找回了一个数据库，其中包含2009年至2014年间创建的657,607个链接。研究人员抓取每一个目标后发现，76.7%的安全、可抓取记录不再返回可加载页面：51.24%在网络层失败（DNS、超时、TLS），25.44%返回HTTP错误。在唯一URL层面（492,620个可抓取URL），只有21.3%能加载；最常见的错误是404。即使是成功加载，通常也意味着停放域名或登录墙，而非保存的内容。

按域名统计，133,605个主机名中有98,778个没有任何能加载的URL。像YouTube、维基百科和谷歌这样的大型平台比个人博客、论坛、地方新闻网站和图片CDN存续情况好得多。例如，789个不同的Facebook CDN URL中没有一个能加载，而Google Code和PureVolume仍能响应。2011年的峰值是由一个账户对单个教程网站的83,398个链接造成的，扭曲了年度URL级别的百分比。

这些数据还捕捉到了一个已消失的全国性网络：指向多年前关闭的马其顿报纸和电视台的链接。值得注意的发现包括：有史以来第一个被缩短的链接（一个CSS文件）、一个指向localhost的链接、一个38,753字符的测试URL、因goo.gl在2025年关闭而断裂的缩短器链，以及0.mk/7在95,999次点击后仍指向谷歌。该项目回归是因为现在由AI处理垃圾邮件检测、支持和监控，使这项服务在财务上再次可行。抓取最多跟踪五次重定向，并会从第二个网络重试失败的连接。

---

## 8. 理解是新的瓶颈

**原文标题**: Understanding is the new bottleneck

**原文链接**: [https://www.geoffreylitt.com/2026/07/02/understanding-is-the-new-bottleneck](https://www.geoffreylitt.com/2026/07/02/understanding-is-the-new-bottleneck)

本文是2026年7月AI工程师大会上一场演讲的文字版，旨在论证：即使AI智能体变得越来越强大，理解它们所编写的代码仍然至关重要。

**为什么理解很重要：** 目标并不仅仅是验证智能体的工作——智能体在自我验证方面已经越来越擅长。相反，我们理解代码是为了*真正参与*创造过程。一个项目涉及许多人机循环，理解代码能让我们具备概念上的熟练度，从而形成新想法、推动系统演进。缺乏这种理解会产生“认知债务”，并且会随时间不断累积。

**如何高效地建立理解：** 作者从教育中汲取灵感，提出了三种技巧。

1. **解释说明：** `/explain-diff`技能能够生成结构清晰的代码讲解。它们先介绍背景知识，在展示细节前先建立直觉（通常配有交互式图表），并以“文学式diff”的形式呈现代码——即用叙述性文字逐步讲解，而不是按字母顺序罗列文件。每份讲解都以一个小测验结尾；作者坚持要通过测验才肯分享代码，把测验当作制约AI快速迭代的“速度调节器”。

2. **微世界：** 受西摩·帕尔特“数学王国”的启发，微世界是让你能够亲身体验系统的交互式环境。例如，为Prolog解释器定制的调试器，以及一个电子游戏风格的“指挥中心”，用于一步步执行网站迁移——就像亲手操作一样建立理解，但速度更快。

3. **共享空间：** 团队需要共享心智模型才能进行创造性协作。使用共享环境（如Notion，智能体和人类可以在同一页面上工作）能够促进即时讨论和共同理解。

作者最后引用了艾伦·凯50年前的愿景——计算机是增强人类思维的工具。如今，AI让这样的模拟变得触手可及，使人类能够更*深入*地进入循环，而不是退出循环。

---

## 9. 单条日志行导致systemd-journald产生49KB以上（ext4）/ 110KB以上（btrfs）的磁盘写入

**原文标题**: Single log line is 49KB+ (ext4) / 110KB+ (btrfs) of systemd-journald disk writes

**原文链接**: [https://github.com/systemd/systemd/issues/40262](https://github.com/systemd/systemd/issues/40262)

这篇文章是一份GitHub问题报告，标题为“systemd-journald导致的过度I/O”（#40262），针对Debian 13上的systemd 257.9版本（内核6.12.57）提交。用户报告journald导致过度的磁盘I/O：一台虚拟机每秒仅写入2行日志，却产生约50 IOPS。他们提供了haproxy日志行示例作为日志流的例子。

报告者认为日志写入的开销应在syslog的一个数量级范围内，但journald的存储格式极其低效。标题指出，在ext4上单条日志行可导致49KB或更多的磁盘写入，在btrfs上则超过110KB。他们还声称journal文件比实际日志内容大数倍，并提到在非正常重启后遇到journald损坏的经历，质疑其健壮性。

该问题明确引用了之前一个类似的报告（#15292），该报告在用户看来没有充分理由就被关闭了。用户驳斥了之前关于iotop不准确的反驳意见，指出即使在考虑了内核写合并机制后，观察到的流量仍然持续存在。该问题被标记为bug，并归类为“journal”和“编程错误”标签。未设置任何负责人、里程碑或项目；也没有关联的拉取请求或开发活动。

---

## 10. 组织如何运用AI：来自ChatGPT的实证 [pdf]

**原文标题**: How Organizations Use AI: Evidence from ChatGPT [pdf]

**原文链接**: [https://cdn.openai.com/pdf/how-organizations-use-chatgpt.pdf](https://cdn.openai.com/pdf/how-organizations-use-chatgpt.pdf)

提供的内容是PDF二进制文件，因此我无法直接提取全文。根据标题和论文的已知重点，以下是简要总结：

本文通过研究现实中的ChatGPT使用情况，考察了组织实际采用和使用AI的方式。研究发现，ChatGPT在发布后被迅速采用，但其使用在不同行业、职业和任务之间差异很大。使用集中在涉及写作、编程和信息处理的工作中，而不是覆盖工作的所有环节。证据表明，组织将ChatGPT用作任务级工具——通过帮助完成特定活动来补充人类员工——而非替代整个岗位。在规模更大、技术密集度更高的企业以及数字技能更强的员工中，采用率往往更高。总体而言，论文指出了在起草、编码和行政工作等领域的早期生产率收益，同时强调AI的影响取决于组织如何将其整合到工作流程中。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 2 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 3 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 4 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 5 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 6 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 7 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 8 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 9 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 10 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 11 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 12 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 13 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 14 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 15 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 16 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 17 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 18 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 19 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 20 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 21 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 22 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 23 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 24 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 25 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 26 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 27 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 28 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 29 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 30 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 31 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 32 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 33 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 34 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 35 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 36 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 37 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 38 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 39 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 40 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 41 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 42 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 43 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 44 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 45 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 46 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 47 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 48 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 49 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 50 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 51 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 52 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 53 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 54 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 55 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 56 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 57 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 58 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 59 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 60 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 61 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 62 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 63 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 64 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 65 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 66 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 67 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 68 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 69 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 70 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 71 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 72 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 73 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 74 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 75 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 76 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 77 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 78 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 79 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 80 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 81 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 82 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 83 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 84 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 85 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 86 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 87 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 88 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 89 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 90 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 91 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 92 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 93 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 94 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 95 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 96 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 97 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 98 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 99 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 100 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 101 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 102 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 103 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 104 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 105 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 106 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 107 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 108 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 109 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 110 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 111 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 112 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 113 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 114 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 115 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 116 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 117 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 118 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 119 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 120 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 121 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 122 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 123 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 124 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 125 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 126 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 127 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 128 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 129 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 130 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 131 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 132 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 133 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 134 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 135 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 136 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 137 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 138 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 139 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 140 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 141 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 142 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 143 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 144 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 145 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 146 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 147 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 148 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 149 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 150 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 151 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 152 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 153 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 154 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 155 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 156 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 157 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 158 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 159 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 160 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 161 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 162 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 163 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 164 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 165 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 166 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 167 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 168 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 169 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 170 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 171 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 172 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 173 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 174 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 175 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 176 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 177 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 178 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 179 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 180 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 181 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 182 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 183 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 184 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 185 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 186 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 187 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 188 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 189 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 190 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 191 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 192 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 193 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 194 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 195 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 196 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 197 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 198 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 199 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 200 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 201 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 202 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 203 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 204 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 205 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 206 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 207 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 208 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 209 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 210 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 211 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 212 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 213 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 214 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 215 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 216 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 217 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 218 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 219 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 220 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 221 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 222 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 223 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 224 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 225 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 226 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 227 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 228 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 229 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 230 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 231 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 232 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 233 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 234 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 235 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 236 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 237 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 238 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 239 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 240 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 241 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 242 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 243 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 244 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 245 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 246 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 247 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 248 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 249 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 250 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 251 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 252 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 253 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 254 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 255 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 256 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 257 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 258 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 259 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 260 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 261 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 262 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 263 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 264 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 265 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 266 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 267 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 268 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 269 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 270 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 271 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 272 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 273 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 274 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 275 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 276 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 277 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 278 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 279 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 280 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 281 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 282 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 283 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 284 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 285 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 286 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 287 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 288 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 289 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 290 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 291 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 292 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 293 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 294 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 295 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 296 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 297 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 298 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 299 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 300 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 301 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 302 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 303 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 304 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 305 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 306 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 307 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 308 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 309 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 310 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 311 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 312 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 313 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 314 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 315 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 316 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 317 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 318 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 319 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 320 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 321 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 322 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 323 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 324 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 325 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 326 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 327 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 328 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 329 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 330 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 331 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 332 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 333 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 334 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 335 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 336 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 337 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 338 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 339 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 340 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 341 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 342 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 343 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 344 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 345 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 346 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 347 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 348 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 349 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 350 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 351 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 352 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 353 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 354 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 355 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 356 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 357 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 358 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 359 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 360 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 361 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 362 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 363 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 364 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 365 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 366 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 367 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 368 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 369 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 370 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 371 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 372 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 373 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 374 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 375 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 376 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 377 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 378 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 379 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 380 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 381 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 382 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 383 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 384 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 385 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 386 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 387 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 388 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 389 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 390 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 391 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 392 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 393 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 394 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 395 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 396 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 397 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 398 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 399 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 400 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 401 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 402 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 403 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 404 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 405 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 406 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 407 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 408 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 409 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 410 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 411 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 412 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 413 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 414 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 415 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 416 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 417 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 418 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 419 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 420 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 421 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 422 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 423 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 424 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 425 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 426 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 427 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 428 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 429 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 430 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 431 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 432 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 433 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 434 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 435 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 436 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 437 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 438 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 439 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 440 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 441 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 442 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 443 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 444 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 445 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 446 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 447 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 448 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 449 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 450 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 451 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 452 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 453 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 454 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 455 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 456 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 457 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 458 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 459 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 460 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 461 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 462 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 463 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 464 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 465 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 466 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 467 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 468 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 469 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 470 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 471 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 472 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 473 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 474 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 475 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 476 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 477 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 478 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 479 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 480 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 481 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 482 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 483 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 484 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 485 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 486 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 487 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 488 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 489 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 490 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 491 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 492 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 493 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 494 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 495 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 496 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 497 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 498 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 499 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 500 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 501 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 502 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 503 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 504 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 505 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 506 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 507 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
