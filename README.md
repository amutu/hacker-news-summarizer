# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-10.md)

*最后自动更新时间: 2026-02-10 20:37:03*
## 1. 奇点将在某个星期二降临。

**原文标题**: The Singularity will occur on a Tuesday

**原文链接**: [https://campedersen.com/singularity](https://campedersen.com/singularity)

本文通过双曲线模型预测奇点将在2034年的某个星期二发生。然而分析揭示了一个关键转折：唯一呈现真正双曲线加速态势的指标是人工智能“涌现”相关学术论文的发表速率——这衡量的是人类的兴奋程度，而非机器能力。

尽管人工智能性能与成本等指标呈现稳定的线性提升，但数据显示社会反应正加速趋向“极点”。作者指出这已催生“社会奇点”的来临，其特征表现为预期性裁员、监管失灵、资本集聚与政治格局重组——所有这些都源于人们对必然变革的感知，而非变革本身。

因此，预测日期标志的并非机器获得超智能的时刻，而是人类体系丧失对人工智能感知轨迹作出连贯回应的临界点。结论表明，人工智能的颠覆性力量更多源于人类注意力与焦虑感的加速聚焦，而非技术自身的指数级增长。

---

## 2. 转向Linux与我的自托管之旅启程

**原文标题**: The Switch to Linux and the Beginning of My Self-Hosting Journey

**原文链接**: [https://hazemkrimi.tech/blog/linux-self-hosting-journey/](https://hazemkrimi.tech/blog/linux-self-hosting-journey/)

本文详述了作者转向Linux并构建自托管数字生态系统的三年历程。主要动机源于对实践学习、隐私保护、所有权掌控和个性化定制的追求，从而逐步脱离Windows等专有系统。

转型始于2023年，作者以Debian 11作为主操作系统，通过配备GPU直通的QEMU/KVM虚拟机处理仅支持Windows的游戏。在自托管方面，作者将个人网站从Vercel迁移至基于Hugo架构的高性能VPS服务器，期间掌握了Nginx和CrowdSec等系统管理工具。

随后作者搭建了家庭服务器：最初使用树莓派4实现文件同步（Syncthing）和全网广告拦截（Pi-hole），后升级为搭载Proxmox VE的旧台式机，通过LXC容器和虚拟机优化资源管理，并配置WireGuard实现远程VPN访问及动态DNS解析。

作者总结称，这段经历显著提升了其系统管理能力，并带来了更强的数字自主权。未来计划包括扩展自托管服务（如已部署的SearXNG搜索引擎）、尝试更多Linux发行版，以及回馈开源社区。

---

## 3. 丰田与恐怖分子：“为何ISIS的卡车比我们的更好？”

**原文标题**: Toyotas and Terrorists: "Why are ISIS's trucks better than ours?"

**原文链接**: [https://www.airuniversity.af.edu/Wild-Blue-Yonder/Articles/Article-Display/Article/3600155/toyotas-and-terrorists-why-are-isiss-trucks-better-than-ours-said-the-american/](https://www.airuniversity.af.edu/Wild-Blue-Yonder/Articles/Article-Display/Article/3600155/toyotas-and-terrorists-why-are-isiss-trucks-better-than-ours-said-the-american/)

**《丰田与恐怖分子：为何ISIS的卡车优于美军？》摘要**

本文探讨了一位美军军官的疑问：在某些作战和后勤任务中，ISIS无处不在的丰田海拉克斯皮卡为何常常显得比美国军用车辆更高效可靠。文章认为，这种差异源于根本性的设计理念与采购方式不同。

核心要点如下：

*   **ISIS的“技术”优势**：ISIS将丰田海拉克斯用作多功能、轻量化的“技术车辆”（即临时改装的战斗车辆）。其商用现成品特性使其价格低廉、易于维护（零件全球可得）、操作简单，并且能高度适应各种任务需求。
*   **美军系统的复杂性**：相比之下，美国的战术车辆（如悍马车和防地雷反伏击车）专为应对特定威胁（如简易爆炸装置）并实现乘员生存率最大化而设计。这导致车辆笨重、复杂、昂贵，维护困难，需要大量培训，且机动性较差。
*   **核心权衡**：文章将问题归结为**生存能力**（美军优先考虑）与**机动性/简易性**（ISIS的优势）之间的权衡。美军以战略和后勤上的沉重负担为代价来保护车内士兵，而ISIS则优先考虑车辆自身的任务机动性。
*   **战略启示**：作者总结道，为追求完美防护而过度设计，反而会在其他方面制造弱点。美军应考虑在适合的任务中，将更简单、更敏捷的商用车辆纳入车队以增强灵活性，并指出“追求最优往往适得其反，够用即可”。

本质上，文章以丰田海拉克斯为案例，批评美军车辆采购制造了过度专业化、负担沉重的平台，并主张建立更均衡、混合型的车队。

---

## 4. 展示HN：Showboat与Rodney，让智能体展示其构建成果

**原文标题**: Show HN: Showboat and Rodney, so agents can demo what they've built

**原文链接**: [https://simonwillison.net/2026/Feb/10/showboat-and-rodney/](https://simonwillison.net/2026/Feb/10/showboat-and-rodney/)

本文介绍了两个新工具——Showboat和Rodney，旨在帮助AI编码代理展示和测试其构建的软件。

作者认为，虽然自动化测试很有用，但开发者仍需直观查看代理的工作成果。**Showboat**是一个CLI工具，可帮助代理构建Markdown文档。这些文档结合了注释、执行的命令和截图，逐步演示功能特性，便于人工直观验证结果。

**Rodney**与Showboat互补，提供基于CLI的浏览器自动化功能。它允许代理通过命令行控制Chrome浏览器、导航页面、执行JavaScript并截图，这对展示基于网页的功能尤其有用。

两款工具专为代理而非人类设计，其详尽的`--help`说明文本相当于为AI提供的“技能指南”，指导其如何使用。作者指出，虽然测试驱动开发（TDD）能提升代理输出质量，但人工验证仍不可或缺。这些工具旨在让验证过程更高效可靠。

最后作者透露，两款工具主要使用iPhone上的AI编码代理开发完成，这标志着其个人开发工作流的转变。

---

## 5. 逐步简化Vulkan的各个子系统。

**原文标题**: Simplifying Vulkan one subsystem at a time

**原文链接**: [https://www.khronos.org/blog/simplifying-vulkan-one-subsystem-at-a-time](https://www.khronos.org/blog/simplifying-vulkan-one-subsystem-at-a-time)

本文概述了Vulkan工作组应对扩展激增导致API复杂性的新策略。该团队不再进行渐进式修改，而是聚焦于**子系统替换**——设计完整的新子系统，以彻底取代API中陈旧复杂的部分。

首个案例是**VK_EXT_descriptor_heap**，它是对现有描述符集系统的全面替代。与先前尝试（如VK_EXT_descriptor_buffer）不同，这是从零设计的全新方案，将描述符视为简单的内存数据，提供更高灵活性和类主机的控制能力。该扩展获得了工作组成员史无前例的全行业协作支持。

该扩展将先以EXT扩展形式发布，用约9个月时间收集开发者实际反馈，后续计划升级为稳定的KHR或核心功能。目标是最终形成完善的规范，避免未来反复修正。

文章指出这是提升Vulkan易用性的关键举措，并邀请开发者就此方案及未来希望解决的子系统痛点提供反馈。

---

## 6. 发布 HN：Livedocs（YC W22）—— 专为数据分析设计的 AI 原生笔记本

**原文标题**: Launch HN: Livedocs (YC W22) – An AI-native notebook for data analysis

**原文链接**: [https://livedocs.com](https://livedocs.com)

Livedocs是一款AI原生的笔记本平台，旨在简化数据分析流程。它作为一个AI智能体，允许用户用自然语言提问，并在数秒内获得图表、洞察与结果。

该平台的核心是一个交互式工作区，用户可上传数据文件或连接数据源。平台提供一系列预建分析模板，涵盖销售趋势分析、客户分群、收入预测和A/B测试等常见商业场景，用户可即时启用这些模板。

其强调的关键功能包括自动化数据清洗、SQL查询生成、交互式仪表板构建，以及群组分析、异常检测等专业分析功能。该产品以“点击几下即可获得数据超能力”为宣传点，致力于让团队无需深厚技术背景也能进行高级数据分析工作。

公司鼓励用户从免费方案开始使用，注册无需绑定信用卡。

---

## 7. 数学家们对于复数的基本结构存在分歧。

**原文标题**: Mathematicians disagree on the essential structure of the complex numbers

**原文链接**: [https://www.infinitelymore.xyz/p/complex-numbers-essential-structure](https://www.infinitelymore.xyz/p/complex-numbers-essential-structure)

本文探讨了数学家们对复数基本结构的不同观点，这些观点导致了具有不同对称性和自同构群的数学概念。作者识别出四种视角：

1.  **解析视角**：将ℂ视为实数域ℝ的代数闭包，其中ℝ作为特定子域。这种结构仅允许复共轭作为非平凡自同构，使得i与–i不可区分。
2.  **光滑视角**：在域上增加熟悉的拓扑结构。作者认为这等价于解析视角，因为拓扑可以从特定的ℝ中恢复，反之亦然。
3.  **刚性视角**：包含完整的坐标结构（例如通过有序对或固定常数*i*）。这使得i与–i得以区分，并形成没有非平凡自同构的结构。
4.  **代数视角**：将ℂ纯粹视为特征为零、规模为连续统的代数闭域，不赋予ℝ、拓扑或坐标任何特权。这种视角允许许多“野生”自同构。

核心分歧在于实数子域、拓扑或坐标等附加结构是否具有本质性。这些大致均分于数学家之间的不同观点，突显了结构主义中关于数学对象身份构成的哲学问题。

---

## 8. 在Quake 1引擎上对《半条命2》的净室实现

**原文标题**: Clean-room implementation of Half-Life 2 on the Quake 1 engine

**原文链接**: [https://code.idtech.space/fn/hl2](https://code.idtech.space/fn/hl2)

本文解释了网站已启用“阿努比斯”系统，以防止AI公司进行自动化抓取。核心问题在于大规模数据抓取会导致服务器宕机，使普通用户无法访问网站。

阿努比斯采用**工作量证明挑战**（类似于Hashcash用于防范垃圾邮件）来阻止机器人。其原理是，解决这一计算难题对人类个体用户而言微不足道，但对大规模抓取操作来说成本将变得极其高昂。

管理员澄清，这只是临时的“足够好”的解决方案。长期目标是开发更好的**指纹识别与无头浏览器检测方法**（例如通过分析字体渲染），从而让合法用户完全绕过验证挑战。

文章指出，通过当前挑战**必须启用JavaScript**，因为AI抓取已迫使网站改变运作方式。同时说明非JavaScript解决方案正在开发中，并建议用户禁用可能产生干扰的隐私插件（如JShelter）。

---

## 9. 前GitHub首席执行官推出面向AI智能体的新开发者平台

**原文标题**: Ex-GitHub CEO launches a new developer platform for AI agents

**原文链接**: [https://entire.io/blog/hello-entire-world/](https://entire.io/blog/hello-entire-world/)

前GitHub首席执行官纳特·弗里德曼推出了一个名为**Entire**的新平台，旨在成为AI智能体的操作系统。其核心理念是创建一个统一环境，让AI智能体能够像人类使用计算机一样，通过调用各种工具和数据源来执行复杂的多步骤任务。

Entire的主要功能包括：
*   **智能体编排：** 允许多个AI智能体围绕单一目标协同工作，将任务分解并逐步执行。
*   **工具集成：** 可为智能体配备网页浏览、代码编写、文件管理及通过API与其他软件交互等能力。
*   **持久化记忆：** 平台赋予智能体长期记忆功能，使其能从过往交互中学习，并持续保持上下文关联。

弗里德曼指出，当前AI模型虽然强大，但缺乏可靠自主工作所需的持久化工具使用环境。Entire旨在填补这一空白，超越简单聊天机器人，为开发者和企业打造实用、可操作的AI助手。该平台目前处于限量内测阶段，团队已开始接纳首批用户。

---

## 10. 展示 HN：Rowboat——将您的工作转化为知识图谱的AI同事（开源）

**原文标题**: Show HN: Rowboat – AI coworker that turns your work into a knowledge graph (OSS)

**原文链接**: [https://github.com/rowboatlabs/rowboat](https://github.com/rowboatlabs/rowboat)

**Rowboat** 是一款开源、本地优先的 AI 助手，能将您的工作沟通（电子邮件、会议记录）转化为长期可编辑的知识图谱，并以纯 Markdown 文件形式存储。与按需检索信息的工具不同，Rowboat 构建的是持久、互联的记忆系统，能够随时间积累上下文。

主要功能包括：
*   **上下文感知辅助：** 利用您的知识图谱，根据工作历史起草邮件、准备会议简报，并生成文档或幻灯片（PDF）。
*   **完全控制与隐私：** 所有数据都存储在您设备上兼容 Obsidian 的库中，您可进行可视化、编辑和备份。
*   **集成支持：** 可与 Gmail、Granola 和 Fireflies 协作构建知识库。
*   **灵活的 AI 模型：** 支持本地模型（通过 Ollama/LM Studio）或使用自有 API 密钥的托管模型。
*   **可扩展性：** 可通过模型上下文协议（MCP）连接外部工具（如 Slack、GitHub 或网络搜索）。
*   **自动化：** 可选的后台代理可处理日常任务，如起草邮件回复或生成每日语音备忘录。

Rowboat 支持 Mac、Windows 和 Linux 系统下载。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 2 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 3 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 4 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 5 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 6 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 7 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 8 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 9 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 10 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 11 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 12 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 13 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 14 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 15 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 16 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 17 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 18 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 19 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 20 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 21 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 22 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 23 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 24 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 25 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 26 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 27 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 28 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 29 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 30 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 31 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 32 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 33 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 34 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 35 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 36 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 37 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 38 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 39 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 40 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 41 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 42 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 43 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 44 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 45 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 46 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 47 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 48 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 49 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 50 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 51 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 52 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 53 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 54 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 55 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 56 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 57 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 58 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 59 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 60 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 61 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 62 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 63 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 64 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 65 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 66 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 67 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 68 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 69 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 70 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 71 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 72 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 73 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 74 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 75 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 76 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 77 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 78 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 79 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 80 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 81 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 82 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 83 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 84 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 85 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 86 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 87 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 88 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 89 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 90 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 91 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 92 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 93 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 94 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 95 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 96 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 97 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 98 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 99 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 100 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 101 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 102 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 103 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 104 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 105 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 106 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 107 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 108 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 109 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 110 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 111 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 112 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 113 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 114 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 115 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 116 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 117 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 118 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 119 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 120 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 121 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 122 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 123 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 124 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 125 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 126 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 127 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 128 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 129 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 130 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 131 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 132 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 133 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 134 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 135 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 136 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 137 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 138 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 139 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 140 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 141 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 142 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 143 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 144 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 145 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 146 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 147 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 148 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 149 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 150 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 151 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 152 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 153 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 154 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 155 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 156 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 157 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 158 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 159 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 160 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 161 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 162 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 163 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 164 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 165 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 166 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 167 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 168 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 169 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 170 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 171 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 172 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 173 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 174 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 175 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 176 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 177 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 178 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 179 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 180 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 181 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 182 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 183 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 184 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 185 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 186 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 187 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 188 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 189 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 190 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 191 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 192 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 193 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 194 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 195 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 196 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 197 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 198 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 199 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 200 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 201 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 202 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 203 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 204 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 205 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 206 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 207 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 208 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 209 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 210 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 211 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 212 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 213 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 214 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 215 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 216 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 217 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 218 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 219 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 220 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 221 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 222 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 223 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 224 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 225 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 226 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 227 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 228 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 229 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 230 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 231 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 232 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 233 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 234 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 235 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 236 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 237 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 238 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 239 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 240 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 241 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 242 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 243 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 244 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 245 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 246 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 247 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 248 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 249 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 250 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 251 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 252 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 253 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 254 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 255 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 256 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 257 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 258 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 259 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 260 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 261 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 262 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 263 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 264 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 265 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 266 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 267 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 268 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 269 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 270 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 271 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 272 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 273 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 274 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 275 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 276 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 277 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 278 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 279 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 280 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 281 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 282 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 283 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 284 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 285 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 286 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 287 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 288 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 289 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 290 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 291 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 292 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 293 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 294 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 295 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 296 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 297 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 298 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 299 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 300 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 301 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 302 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 303 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 304 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 305 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 306 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 307 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 308 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 309 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 310 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 311 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 312 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 313 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 314 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 315 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 316 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 317 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 318 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 319 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 320 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 321 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 322 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 323 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 324 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 325 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
