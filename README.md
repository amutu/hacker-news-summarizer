# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-25.md)

*最后自动更新时间: 2026-03-25 20:35:41*
## 1. 苹果会随机关闭漏洞报告，除非你“验证”该漏洞仍未修复。

**原文标题**: Apple randomly closes bug reports unless you "verify" the bug remains unfixed

**原文链接**: [https://lapcatsoftware.com/articles/2026/3/11.html](https://lapcatsoftware.com/articles/2026/3/11.html)

作者批评苹果的反馈助手错误报告系统不尊重报告者且浪费其时间。核心投诉在于苹果会随机关闭错误报告，除非原始报告者在多年沉寂后“验证”该问题在新测试版中仍然存在。

作者详述了个人经历：2023年提交错误报告后三年未获任何沟通，苹果近期却要求两周内完成验证，否则将关闭报告。苹果拒绝确认错误是否已修复，迫使作者寻求外部帮助以确认该问题在测试版中依然存在——最终在公开版本中也未解决。

这种模式表明苹果更重视人为减少未处理错误数量，而非真正解决问题。作者引用了另一个被标记为“无法诊断”却未要求提供更多信息的错误，并指出一个在测试版中报告的Safari崩溃错误在正式发布时仍未修复。

整体结论是：苹果的流程似乎旨在骚扰报告者并操纵内部指标，而非有效识别和修复软件问题。

---

## 2. ARC-AGI-3

**原文标题**: ARC-AGI-3

**原文链接**: [https://arcprize.org/arc-agi/3](https://arcprize.org/arc-agi/3)

**ARC-AGI-3** 是一个交互式推理基准，旨在衡量人工智能代理类人智能水平。与静态谜题不同，它要求代理主动探索全新环境、动态获取目标、构建适应性世界模型，并持续从经验中学习，而不依赖预载知识或自然语言指令。

该基准的核心目标是量化人工智能与人类智能之间的差距。它通过评估代理的**随时间推移的技能获取效率**、**稀疏反馈下的长程规划能力**，以及根据新证据**调整策略的能力**来进行衡量。满分意味着代理能像人类一样高效解决所有游戏。

关键设计原则确保测试对人类简单而对人工智能具有挑战性：环境**100%可由人类解决**，目标与反馈清晰，且具备足够新颖性以防止暴力记忆。

ARC-AGI-3 提供完整的开发与评估工具包，包括用于代理集成的**开发者 SDK**、用于测试的**交互式界面**，以及支持详细检查代理决策与推理时间线的**回放功能**。

---

## 3. 我在电影《拯救计划》中的天体摄影作品

**原文标题**: My astrophotography in the movie Project Hail Mary

**原文链接**: [https://rpastro.square.site/s/stories/phm](https://rpastro.square.site/s/stories/phm)

本文重点介绍了2021年电影《拯救计划》片尾字幕中收录了天体摄影师罗德·普拉泽雷斯的作品。这部由瑞恩·高斯林主演、改编自安迪·威尔小说的电影，其剧情与天文学紧密相连。

文章指出，电影中令人震撼的宇宙景象——尤其是在片尾字幕部分——正是使用了普拉泽雷斯拍摄的真实深空图像制作而成。这种合作体现了制作团队对科学真实性与视觉震撼力的追求，通过将真实的天文摄影与电影视觉特效相结合，强化了影片对太空场景的真实描绘。

核心在于，一位业余天体摄影师的贡献得到了好莱坞主流制作的认可，这展现了真实科学与艺术如何在科幻叙事中交汇融合。

---

## 4. Ensu – Ente的本地LLM应用

**原文标题**: Ensu – Ente’s Local LLM app

**原文链接**: [https://ente.com/blog/ensu/](https://ente.com/blog/ensu/)

Ente发布了Ensu，这是一款免费、开源且完全私密的LLM应用，可在您的设备上完全离线运行（支持iOS、Android、macOS、Linux、Windows）。该项目的核心理念是，出于隐私担忧、依赖性和潜在的操控风险，大型语言模型过于重要，不应仅由科技巨头掌控。

尽管承认当前本地模型与ChatGPT等中心化模型存在能力差距，但Ente认为，一旦本地模型跨越某个临界点，它们将在提供完全控制和隐私的同时，对大多数用途而言“足够好用”。他们将其与Ente Photos中本地处理、加密功能的成功经验相类比。

此初始版本是一款基于聊天的应用，适用于私人反思、书籍讨论或离线使用等任务。它支持图片附件。虽然已内置通过Ente账户实现跨设备加密同步的功能，但在此版本中暂时禁用，因为团队正在敲定产品的未来方向。

Ente将Ensu视为一个起点，并正在寻求用户反馈以塑造其发展。未来可能的方向包括专门的“第二大脑”界面、实用型集成（如Android启动器）或具有长期记忆的个人助手。该应用现已开放下载，鼓励用户通过电子邮件或Discord分享想法。

---

## 5. 从零开始理解量化

**原文标题**: Quantization from the Ground Up

**原文链接**: [https://ngrok.com/blog/quantization](https://ngrok.com/blog/quantization)

**《“量化技术基础”概述》**

本文阐释了量化的核心概念，这是一种通过降低模型参数（权重和激活值）数值精度来使AI模型更小、更快的技术。文章将这一过程分解为清晰的基本步骤。

其核心思想是将一个高精度32位浮点数（FP32）的取值范围映射到一个小得多的低精度整数集（例如8位）。具体做法是：确定原始数据的**范围**（最小值和最大值），然后应用**线性变换**，将数值缩放并平移到目标整数范围。

文章详述了**量化**（将浮点数转换为整数）和**反量化**（为计算转换回浮点数）的基本公式。它指出，权重是静态的且易于量化，而激活值是动态的，需要仔细使用样本数据进行校准以确定其合适范围。

文中解释了两种主要的量化方案：
1.  **对称量化：** 将范围以零为中心对称分布，简化了计算，但如果数据分布不对称，可能会浪费精度。
2.  **非对称量化：** 对正值和负值使用不同的缩放因子，能更好地捕捉偏态数据分布，但代价是数学运算稍复杂。

概述总结道，这个基本过程——确定范围、缩放和取整——是量化感知训练（QAT）和后训练量化（PTQ）等高级方法的基础，使得在资源受限的设备上高效部署模型成为可能。

---

## 6. GitHub Copilot交互数据使用政策更新

**原文标题**: Updates to GitHub Copilot interaction data usage policy

**原文链接**: [https://github.blog/news-insights/company-news/updates-to-github-copilot-interaction-data-usage-policy/](https://github.blog/news-insights/company-news/updates-to-github-copilot-interaction-data-usage-policy/)

**摘要：**

马里奥·罗德里格斯是GitHub的首席产品官，负责领导产品团队。他的职业定位是开发者工具的学习者和创造者，这一使命贯穿了他在微软和GitHub担任领导职务的二十余年。

他近期的一项重要职责是监督GitHub的人工智能战略及GitHub Copilot产品线。在此职位上，他为Copilot的推出和规模化发展发挥了关键作用，该产品已被数千家组织和数百万用户采用。

在GitHub工作之外，罗德里格斯重视家庭生活，常与妻子和两个女儿共度时光。他还积极参与教育事业，曾共同创办并共同主持一所特许学校，旨在推动美国农村地区的教育机会发展。

---

## 7. 关于放慢脚步的思考

**原文标题**: Thoughts on slowing the fuck down

**原文链接**: [https://mariozechner.at/posts/2026-03-25-thoughts-on-slowing-the-fuck-down/](https://mariozechner.at/posts/2026-03-25-thoughts-on-slowing-the-fuck-down/)

本文认为，当前急于将AI编程代理用于全面软件开发的做法正导致软件质量危机。虽然这类工具在辅助项目中颇有助益，但将核心开发工作委托给自主代理会导致代码脆弱、复杂且不可靠。

作者指出了几个关键问题：代理会重复犯下叠加性错误且不会自我修正；它们从训练数据中盲目模仿不良实践，制造出令人窒息的复杂性；其“代理式搜索”在大型代码库中容易失效，导致重复代码与不一致性。这种做法消除了人类监督，将技术债务的痛苦延迟到系统变得无法维护的一团糟。

提出的解决方案是“放慢脚步”，审慎使用代理。应将其限制在范围明确、非关键的任务中，使其产出能够被人类充分评估与审查。关键的架构决策与系统设计应当由人类亲手完成，充分发挥人类的经验与审美。这种有节制的做法能保持代码质量，确保开发者保持理解与掌控力，最终为用户带来更可维护、更愉悦的软件。

---

## 8. TurboQuant：以极致压缩重新定义AI效率

**原文标题**: TurboQuant: Redefining AI efficiency with extreme compression

**原文链接**: [https://research.google/blog/turboquant-redefining-ai-efficiency-with-extreme-compression/](https://research.google/blog/turboquant-redefining-ai-efficiency-with-extreme-compression/)

谷歌研究院推出了**TurboQuant**，这是一套旨在显著压缩AI模型而不牺牲性能的新算法。其解决的核心挑战是由键值（KV）缓存和向量搜索引擎等系统中的大型向量引起的**内存瓶颈**。

TurboQuant结合了两种创新技术：
1.  **PolarQuant：** 该方法通过将向量转换为紧凑的极坐标格式来高效压缩主要数据，消除了传统量化典型的内存开销。
2.  **量化约翰逊-林登斯特劳斯（QJL）：** 该算法使用1位技巧在数学上修正第一阶段留下的微小误差，确保准确性得以保持。

在测试中，TurboQuant实现了**KV缓存内存减少6倍**，并将数据量化至仅**3位**，在LongBench等基准测试中模型精度没有任何损失。它还在计算注意力分数时显示出**高达8倍的加速**。对于向量搜索，与现有方法相比，它提供了更优的召回率。

其影响是显著的：TurboQuant可以使大型语言模型更快、内存效率更高，同时实现更快、更可扩展的语义搜索。这些算法有坚实的理论证明支持，使其成为大规模AI系统的稳健解决方案。

---

## 9. 球池

**原文标题**: Ball Pit

**原文链接**: [https://codepen.io/mrdoob_/full/NPRwLZd](https://codepen.io/mrdoob_/full/NPRwLZd)

无法访问文章链接。

提供的URL指向一个交互式“CodePen”项目，这是一个基于网络的代码编辑器和展示平台。我目前的能力仅限于处理基于文本的信息，无法执行或访问此类网络应用的实时交互内容来分析其具体功能或代码。

要总结该项目，我需要访问底层的文章文本、描述或代码注释，而当前交互形式的链接无法提供这些内容。

---

## 10. 告别索拉

**原文标题**: Goodbye to Sora

**原文链接**: [https://twitter.com/soraofficialapp/status/2036532795984715896](https://twitter.com/soraofficialapp/status/2036532795984715896)

这不是一篇文章，而是社交媒体平台X（前身为Twitter）上显示的浏览器错误信息。关键信息如下：

*   **核心问题：** 用户的浏览器禁用了JavaScript，而这是X.com网站运行所必需的技术。
*   **主要指示：** 该信息指示用户在浏览器设置中启用JavaScript。
*   **替代方案：** 它建议用户切换到其他受支持的网页浏览器。
*   **额外资源：** 提供了一个“帮助中心”链接，其中列出了兼容的浏览器列表。
*   **上下文：** 页脚包含标准的法律链接（服务条款、隐私政策等）以及X Corp. 2026年版权声明。

**总结：** 该文本是一个技术提示，而非具有叙事内容的文章。其唯一目的是告知访客，由于其浏览器的JavaScript设置，他们无法使用X.com平台，并引导他们解决问题。标题“告别Sora”似乎与错误信息内容无关。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 2 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 3 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 4 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 5 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 6 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 7 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 8 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 9 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 10 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 11 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 12 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 13 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 14 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 15 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 16 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 17 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 18 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 19 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 20 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 21 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 22 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 23 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 24 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 25 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 26 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 27 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 28 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 29 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 30 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 31 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 32 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 33 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 34 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 35 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 36 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 37 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 38 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 39 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 40 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 41 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 42 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 43 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 44 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 45 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 46 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 47 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 48 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 49 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 50 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 51 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 52 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 53 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 54 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 55 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 56 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 57 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 58 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 59 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 60 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 61 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 62 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 63 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 64 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 65 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 66 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 67 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 68 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 69 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 70 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 71 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 72 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 73 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 74 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 75 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 76 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 77 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 78 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 79 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 80 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 81 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 82 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 83 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 84 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 85 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 86 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 87 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 88 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 89 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 90 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 91 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 92 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 93 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 94 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 95 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 96 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 97 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 98 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 99 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 100 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 101 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 102 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 103 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 104 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 105 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 106 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 107 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 108 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 109 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 110 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 111 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 112 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 113 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 114 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 115 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 116 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 117 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 118 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 119 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 120 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 121 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 122 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 123 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 124 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 125 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 126 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 127 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 128 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 129 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 130 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 131 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 132 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 133 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 134 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 135 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 136 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 137 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 138 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 139 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 140 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 141 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 142 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 143 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 144 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 145 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 146 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 147 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 148 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 149 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 150 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 151 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 152 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 153 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 154 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 155 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 156 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 157 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 158 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 159 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 160 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 161 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 162 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 163 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 164 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 165 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 166 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 167 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 168 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 169 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 170 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 171 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 172 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 173 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 174 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 175 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 176 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 177 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 178 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 179 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 180 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 181 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 182 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 183 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 184 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 185 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 186 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 187 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 188 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 189 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 190 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 191 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 192 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 193 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 194 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 195 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 196 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 197 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 198 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 199 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 200 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 201 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 202 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 203 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 204 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 205 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 206 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 207 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 208 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 209 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 210 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 211 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 212 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 213 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 214 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 215 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 216 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 217 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 218 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 219 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 220 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 221 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 222 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 223 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 224 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 225 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 226 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 227 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 228 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 229 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 230 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 231 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 232 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 233 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 234 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 235 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 236 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 237 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 238 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 239 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 240 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 241 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 242 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 243 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 244 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 245 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 246 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 247 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 248 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 249 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 250 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 251 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 252 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 253 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 254 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 255 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 256 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 257 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 258 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 259 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 260 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 261 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 262 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 263 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 264 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 265 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 266 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 267 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 268 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 269 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 270 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 271 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 272 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 273 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 274 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 275 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 276 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 277 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 278 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 279 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 280 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 281 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 282 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 283 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 284 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 285 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 286 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 287 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 288 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 289 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 290 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 291 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 292 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 293 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 294 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 295 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 296 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 297 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 298 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 299 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 300 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 301 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 302 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 303 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 304 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 305 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 306 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 307 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 308 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 309 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 310 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 311 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 312 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 313 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 314 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 315 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 316 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 317 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 318 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 319 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 320 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 321 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 322 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 323 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 324 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 325 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 326 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 327 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 328 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 329 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 330 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 331 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 332 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 333 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 334 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 335 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 336 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 337 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 338 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 339 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 340 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 341 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 342 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 343 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 344 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 345 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 346 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 347 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 348 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 349 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 350 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 351 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 352 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 353 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 354 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 355 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 356 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 357 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 358 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 359 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 360 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 361 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 362 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 363 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 364 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 365 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 366 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 367 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 368 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
