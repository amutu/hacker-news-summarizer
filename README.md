# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-11.md)

*最后自动更新时间: 2026-03-11 20:35:51*
## 1. 请勿发布生成式/AI编辑的评论。HN旨在促进人与人之间的交流。

**原文标题**: Don't post generated/AI-edited comments. HN is for conversation between humans.

**原文链接**: [https://news.ycombinator.com/newsguidelines.html#generated](https://news.ycombinator.com/newsguidelines.html#generated)

本文概述了Hacker News（HN）社区准则。核心原则是：HN是一个专注于知识探索的**真实人类对话**论坛。

提交内容的关键点包括：
*   提交原始信息来源，避免推广性内容。
*   使用准确、非标题党的标题。
*   发布具有知识趣味性的话题，同时避免偏离主题的内容，如常规政治、犯罪或名人新闻。

评论部分的关键点强调文明、实质性的讨论：
*   保持友善、深思熟虑，在分歧中秉持善意。
*   避免肤浅的否定、尖酸刻薄和引战言论。
*   **明确禁止发布生成式或AI编辑的评论**，以维护人类对话。
*   不鼓励意识形态争论、对投票的抱怨以及关于网站本身的元评论。

总体目标是通过鼓励原创内容和尊重、人与人之间的对话，维持一个高质量、由好奇心驱动的社区。

---

## 2. Temporal：修复JavaScript中时间问题的九年之旅

**原文标题**: Temporal: A nine-year journey to fix time in JavaScript

**原文链接**: [https://bloomberg.github.io/js-blog/post/temporal/](https://bloomberg.github.io/js-blog/post/temporal/)

本文详述了历时九年创建Temporal的历程，这是一个旨在替代JavaScript中问题重重的Date对象的现代API。最初的Date对象于1995年从Java仓促移植而来，具有可变性、解析不一致、时区处理能力差等缺陷，给开发者带来了普遍困扰，导致了对Moment.js等大型库的严重依赖。

Temporal提案于2017年启动，旨在提供一个具备明确时区和日历支持的全面、不可变日期/时间库。该项目由来自彭博社、微软、Igalia和谷歌的工程师共同推动，他们通过TC39标准化流程展开协作。

Temporal的核心特性包括：
*   **针对不同使用场景的多种不可变类型**（例如表示精确时刻的`Temporal.ZonedDateTime`，表示日历日期的`Temporal.PlainDate`）。
*   **明确的时区与日历系统**，消除了歧义。
*   **纳秒级精度**以及对夏令时转换的正确处理。
*   其设计既解决了Date对象的缺陷，又减少了对第三方库的依赖。

文章总结指出，Temporal代表了JavaScript一次基础性的升级，终于为日期和时间操作提供了强大且标准化的解决方案。

---

## 3. 让WebAssembly成为Web上的一流语言。

**原文标题**: Making WebAssembly a first-class language on the Web

**原文链接**: [https://hacks.mozilla.org/2026/02/making-webassembly-a-first-class-language-on-the-web/](https://hacks.mozilla.org/2026/02/making-webassembly-a-first-class-language-on-the-web/)

自2017年以来，WebAssembly（Wasm）已取得显著发展，增加了GC和SIMD等功能以支持更多语言。然而，由于与Web平台的集成度不足，它仍然是网络上的“二等”语言，这给开发者带来了较高的入门门槛。

核心问题在于繁琐的加载过程，以及需要借助JavaScript“胶水代码”来访问Web API（如`console.log`）。这些胶水代码编写费时、增加运行时开销、使构建流程复杂化，并迫使开发者必须理解JavaScript。因此，Wasm通常仅用于大型、资源密集型项目。

文章认为，要使Wasm成为一等语言，需要一种标准化的自包含格式，能够在不依赖JavaScript的情况下处理加载、链接和直接访问Web API。它提出**WebAssembly组件模型**作为解决方案。组件通过底层Wasm代码实现高级API定义，允许直接调用Web API，并实现跨语言代码复用。这将简化开发者体验、降低开销，并使标准编译器能有效面向网络进行编译。

---

## 4. 大规模助长科研造假的主体（2025）

**原文标题**: Entities enabling scientific fraud at scale (2025)

**原文链接**: [https://doi.org/10.1073/pnas.2420092122](https://doi.org/10.1073/pnas.2420092122)

**《规模化科学欺诈的推手》摘要（2025年）**

本文研究了欺诈性科学论文的系统化、产业化生产，指出特定的“论文工厂”公司是此类欺诈行为的关键推手。这些实体作为营利性服务机构运作，向急于增加发表记录的研究人员出售伪造或篡改手稿的作者身份。

研究要点如下：

*   **产业化欺诈：** 研究超越了个别不当行为案例，记录了一个有组织的产业。这些“推手实体”提供全方位服务，从生成完全虚假的数据和文本，到提交手稿及管理同行评审回复。
*   **识别与影响：** 作者分析了源自这些工厂的论文特征，指出了在作者身份、引用和声明的利益冲突方面可作为危险信号的具体模式。这种大规模欺诈行为污染了科学文献，浪费了资源，并破坏了公众对科学的信任。
*   **系统性漏洞：** 该现象被视为一个过度竞争的学术生态系统的症状，该系统优先考虑发表数量而非质量。“不发表就出局”的文化催生了需求，而论文工厂则满足了这一需求。
*   **行动呼吁：** 文章结论指出，解决此问题需要系统性应对。这包括开发更好的检测工具、改革研究评估指标以减少不当激励，并追究欺诈作者和推手公司的责任。

本质上，本文认为科学欺诈已演变为一项复杂的商业活动，需要出版商、机构和资助者采取协调行动，以保护学术交流的完整性。

---

## 5. BitNet：适用于本地CPU的1000亿参数1比特模型

**原文标题**: BitNet: 100B Param 1-Bit model for local CPUs

**原文链接**: [https://github.com/microsoft/BitNet](https://github.com/microsoft/BitNet)

**摘要**

BitNet.cpp 是一个针对 1 比特大语言模型（如 BitNet b1.58）的优化推理框架，可在本地 CPU 和 GPU 上高效运行。相比标准方法，它在 ARM 和 x86 CPU 上实现了显著的性能提升，速度提升达 1.37 倍至 6.17 倍，能耗降低 55.4% 至 82.2%。尤为突出的是，它能在单个 CPU 上以人类阅读速度（每秒 5-7 个词元）运行千亿参数模型。

该框架支持多种官方及社区模型（如 BitNet-b1.58-2B、Llama3-8B-1.58），并提供多种优化内核类型（I2_S、TL1、TL2）。安装步骤包括克隆代码库、设置 Python 环境及从源码构建。用户可通过提供的脚本运行推理、进行性能基准测试，并将 .safetensors 格式的模型转换为所需的 GGUF 格式。

近期更新包括并行内核优化以进一步提升速度，以及嵌入量化支持。该项目基于 llama.cpp 框架和 T-MAC 方法构建。常见问题解答部分解决了常见的构建问题，特别是针对 Windows 用户关于编译器设置的疑问。

---

## 6. 展示 HN：我开发了一个工具，可以监控网页变化并通过 RSS 推送更新

**原文标题**: Show HN: I built a tool that watches webpages and exposes changes as RSS

**原文链接**: [https://sitespy.app](https://sitespy.app)

**Site Spy**是一款自动监控网页内容变化并通过RSS及其他通知方式推送更新的工具。用户可通过浏览器扩展或网页仪表板跟踪整个页面或特定元素（如价格或标题）。

核心功能包括：以绿色高亮新增内容、红色标记删除内容的视觉差异对比，用于版本比较的快照时间线，以及跨设备同步。它支持浏览器推送通知、邮件报告和Telegram提醒。

该服务提供免费版本，允许跟踪5个网址且每小时检查一次。付费方案（入门版4欧元/月，专业版8欧元/月）支持更多网址、更短检查间隔（最快1分钟）及更长的快照历史记录。同时可通过模型上下文协议（MCP）与Claude等AI助手集成。

简而言之，Site Spy是一款可配置的网页变更检测服务，旨在及时通知用户网页更新。

---

## 7. MacBook Neo

**原文标题**: The MacBook Neo

**原文链接**: [https://daringfireball.net/2026/03/the_macbook_neo](https://daringfireball.net/2026/03/the_macbook_neo)

MacBook Neo是一款售价600美元的笔记本电脑，搭载与iPhone 16 Pro相同的A18 Pro芯片，这证明苹果的A系列处理器现已完全有能力驱动消费级Mac。评测发现，即使仅配备8GB内存，它在典型生产力任务中的表现依然出色且“反应迅捷”。

为实现低价而做出的关键妥协包括：机械式触控板（而非触觉反馈式）、缺少自动亮度调节的环境光传感器（评测中特别指出了这一不便）、一个速度较慢的副USB-C接口，以及基础款的20瓦充电器。然而，评测者称赞Neo拥有明亮的显示屏、出色的扬声器、扎实的键盘和整体优良的制造工艺，认为这些特性在其价格区间内无可匹敌。

文章将Neo定位为极具性价比的选择，对许多用户而言，它实际上替代了“iPad+妙控键盘”的组合。最后总结指出：在600至700美元价位，没有任何x86架构的PC笔记本电脑能在性能、显示效果、音频质量、机身做工或软件体验上与Neo抗衡，这使其成为一款极具吸引力的入门级Mac。

---

## 8. 在有人看到弦的地方，她看到了由分形构成的时空。

**原文标题**: Where Some See Strings, She Sees a Space-Time Made of Fractals

**原文链接**: [https://www.quantamagazine.org/where-some-see-strings-she-sees-a-space-time-made-of-fractals-20260311/](https://www.quantamagazine.org/where-some-see-strings-she-sees-a-space-time-made-of-fractals-20260311/)

阿斯特丽德·艾希霍恩是一位前沿物理学家，致力于探索“渐近安全”理论。该理论提出，在最微小的尺度（普朗克尺度）上，物理定律会停止变化并呈现出类似分形的尺度对称性。这与弦理论或圈量子引力等更激进的理论不同，因为它试图保留量子场论的框架。

她的研究表明，如果存在这样一个稳定、类分形的领域，量子场（包括引力）的涨落会在一个“固定点”以特殊方式达到平衡。艾希霍恩的工作证明，即使包含所有已知的物质和力场，这一固定点依然存在证据。

关键在于，这一理论与我们可观测的宇宙建立了可检验的联系。通过假设固定点并“放大尺度”，研究人员发现它可以回溯预测关键粒子属性，如希格斯玻色子、顶夸克和底夸克的质量，且精度惊人。该理论还对可能的暗物质候选者提出了限制，排除了某些流行模型，如简化版的弱相互作用大质量粒子或轴子。

尽管尚未成为完备的理论，渐近安全性为统一量子力学和引力提供了一条保守却具有预测力的路径，可能解释我们宏观世界为何呈现当前面貌。

---

## 9. 秘鲁山体上凿出的5200个孔洞，见证着古老经济的痕迹。

**原文标题**: 5,200 holes carved into a Peruvian mountain left by an ancient economy

**原文链接**: [https://newatlas.com/environment/5-200-holes-peruvian-mountain/](https://newatlas.com/environment/5-200-holes-peruvian-mountain/)

悉尼大学的研究人员对秘鲁蒙特西尔佩神秘的“洞带”提出了新的解释。该遗址的山坡上分布着约5200个浅坑，近百年来一直令科学家困惑。

通过无人机测绘和土壤分析，研究团队发现这些坑洞呈数字规律排列，类似印加结绳记事工具“奇普”的结构。坑内花粉证据表明过去曾存在玉米、棉花和南瓜等作物，暗示这些坑洞可能曾用于存放货物，很可能置于篮筐中。

研究人员推测，在14世纪钦查王国时期，该遗址可能作为前印加时期的集市或贸易枢纽。其战略性地处于十字路口，促进了不同生态区域间的物物交换。这些坑洞可能构成了一种“景观奇普”——一种实体记账系统，使货物数量清晰可见，便于评估和议价。

后来在印加统治时期，这种结构化布局可能被重新用于管理劳动力和资源。研究认为，蒙特西尔佩很可能是一种用于组织贸易互动的社会经济技术，为理解安第斯土著经济实践提供了新视角。

---

## 10. 展示 HN：Klaus – 虚拟机上的 OpenClaw，开箱即用

**原文标题**: Show HN: Klaus – OpenClaw on a VM, batteries included

**原文链接**: [https://klausai.com/](https://klausai.com/)

**Klaus** 是一个基于虚拟机（VM）运行的自托管人工智能助手平台。它基于**OpenClaw**——一个专有AI助手的开源替代方案，并“开箱即用”，所有必要组件均已预先配置。

Klaus的主要目标是简化私有化、可定制AI助手的部署。通过将OpenClaw打包成虚拟机镜像，它消除了复杂的设置步骤，让用户能够快速在自己的基础设施上运行功能完整的助手。这种方法优先考虑**隐私与数据控制**，因为所有处理均在本地进行，无需依赖外部云服务。

其强调的主要特性包括：
*   **轻松部署：** 在VMware、VirtualBox或本地管理程序等平台上运行预构建的虚拟机。
*   **完全控制：** 将所有数据和对话保持私有并在本地部署。
*   **开源基础：** 基于开源项目OpenClaw构建，确保透明度和可定制性。
*   **预配置技术栈：** 已预先设置好所需的AI模型、后端和界面。

该项目为寻求功能强大AI助手的个人和组织提供了一个解决方案，避免了主流商业API可能带来的隐私担忧或成本问题。它代表了一种采用开源AI技术的交钥匙方案。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 2 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 3 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 4 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 5 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 6 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 7 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 8 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 9 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 10 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 11 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 12 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 13 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 14 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 15 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 16 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 17 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 18 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 19 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 20 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 21 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 22 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 23 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 24 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 25 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 26 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 27 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 28 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 29 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 30 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 31 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 32 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 33 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 34 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 35 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 36 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 37 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 38 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 39 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 40 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 41 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 42 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 43 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 44 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 45 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 46 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 47 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 48 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 49 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 50 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 51 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 52 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 53 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 54 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 55 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 56 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 57 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 58 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 59 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 60 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 61 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 62 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 63 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 64 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 65 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 66 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 67 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 68 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 69 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 70 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 71 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 72 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 73 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 74 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 75 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 76 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 77 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 78 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 79 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 80 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 81 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 82 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 83 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 84 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 85 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 86 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 87 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 88 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 89 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 90 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 91 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 92 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 93 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 94 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 95 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 96 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 97 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 98 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 99 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 100 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 101 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 102 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 103 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 104 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 105 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 106 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 107 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 108 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 109 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 110 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 111 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 112 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 113 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 114 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 115 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 116 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 117 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 118 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 119 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 120 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 121 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 122 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 123 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 124 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 125 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 126 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 127 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 128 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 129 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 130 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 131 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 132 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 133 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 134 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 135 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 136 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 137 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 138 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 139 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 140 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 141 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 142 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 143 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 144 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 145 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 146 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 147 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 148 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 149 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 150 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 151 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 152 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 153 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 154 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 155 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 156 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 157 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 158 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 159 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 160 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 161 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 162 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 163 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 164 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 165 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 166 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 167 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 168 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 169 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 170 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 171 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 172 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 173 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 174 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 175 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 176 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 177 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 178 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 179 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 180 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 181 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 182 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 183 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 184 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 185 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 186 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 187 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 188 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 189 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 190 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 191 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 192 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 193 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 194 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 195 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 196 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 197 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 198 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 199 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 200 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 201 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 202 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 203 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 204 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 205 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 206 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 207 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 208 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 209 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 210 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 211 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 212 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 213 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 214 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 215 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 216 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 217 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 218 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 219 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 220 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 221 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 222 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 223 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 224 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 225 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 226 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 227 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 228 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 229 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 230 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 231 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 232 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 233 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 234 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 235 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 236 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 237 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 238 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 239 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 240 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 241 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 242 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 243 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 244 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 245 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 246 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 247 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 248 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 249 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 250 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 251 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 252 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 253 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 254 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 255 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 256 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 257 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 258 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 259 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 260 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 261 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 262 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 263 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 264 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 265 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 266 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 267 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 268 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 269 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 270 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 271 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 272 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 273 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 274 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 275 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 276 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 277 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 278 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 279 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 280 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 281 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 282 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 283 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 284 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 285 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 286 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 287 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 288 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 289 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 290 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 291 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 292 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 293 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 294 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 295 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 296 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 297 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 298 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 299 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 300 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 301 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 302 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 303 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 304 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 305 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 306 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 307 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 308 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 309 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 310 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 311 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 312 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 313 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 314 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 315 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 316 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 317 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 318 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 319 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 320 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 321 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 322 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 323 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 324 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 325 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 326 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 327 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 328 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 329 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 330 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 331 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 332 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 333 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 334 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 335 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 336 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 337 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 338 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 339 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 340 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 341 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 342 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 343 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 344 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 345 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 346 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 347 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 348 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 349 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 350 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 351 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 352 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 353 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 354 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
