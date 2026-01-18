# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-01-18.md)

*最后自动更新时间: 2026-01-18 20:37:48*
## 1. 高斯溅射 – A$AP Rocky《直升机》音乐视频

**原文标题**: Gaussian Splatting – A$AP Rocky "Helicopter" music video

**原文链接**: [https://radiancefields.com/a-ap-rocky-releases-helicopter-music-video-featuring-gaussian-splatting](https://radiancefields.com/a-ap-rocky-releases-helicopter-music-video-featuring-gaussian-splatting)

**《高斯飞溅技术解析——A$AP Rocky〈直升机〉音乐短片》摘要**

文章报道说唱歌手A$AP Rocky发布了歌曲《直升机》的音乐短片，其中显著采用了名为**3D高斯飞溅**的新型三维可视化技术。

要点如下：
*   **技术创新：** 该短片是高斯飞溅技术首次重要的主流应用。该技术能从一系列二维照片生成可导航的逼真三维场景，标志着从传统二维视频或多边形三维模型的转变。
*   **视觉风格：** 技术被用于渲染动态、融化且变形的景观与物体，创造出超现实、梦幻且具有视觉颠覆性的效果，与短片的艺术方向高度契合。
*   **制作细节：** 短片由AWGE（A$AP Rocky的创意团体）与Thibaut联合执导。其中的3D高斯飞溅场景专为本项目制作，表明这是定制化生产而非使用预捕捉素材。
*   **文化意义：** 通过引入这项前沿技术，A$AP Rocky将短片置于音乐、艺术与新兴科技的交叉点。文章认为，这可能是将先进神经渲染技术带给广大主流观众的一个里程碑。

简而言之，《直升机》音乐短片因将高斯飞溅技术作为核心艺术工具，生成其独特的液化三维环境而备受瞩目，标志着该技术高调进入大众文化领域。

---

## 2. Flux 2 Klein 纯C推理

**原文标题**: Flux 2 Klein pure C inference

**原文链接**: [https://github.com/antirez/flux2.c](https://github.com/antirez/flux2.c)

本文档描述了一个纯C语言实现的FLUX.2-klein-4B AI图像生成模型，该项目是AI辅助编程的实验成果。该项目旨在提供一种无需依赖Python推理系统的替代方案，使模型更易于使用。

该软件支持文生图和图生图功能，使用未经量化的原始模型权重。设计注重效率，提供可选的BLAS加速（约30倍速度提升）以及Apple Silicon的Metal GPU支持。主要特性包括集成的Qwen3-4B文本编码器，以及自动内存管理机制——使用后释放大型编码器（约8GB）以降低峰值内存需求。

用户可选择不同后端（`generic`、`blas`或`mps`）编译工具，并通过简洁的命令行界面运行。文档还详细介绍了用于集成到其他项目的C语言库API，包含`flux_generate`和`flux_img2img`等核心函数的代码示例。该模型采用蒸馏变压器架构，仅需4次采样步骤即可生成优质结果，但存在分辨率限制（最高1024x1024）。整个代码库由Claude AI在一个周末内辅助生成，并以MIT许可证发布。

---

## 3. 破译齐默尔曼电报（2018）

**原文标题**: Breaking the Zimmermann Telegram (2018)

**原文链接**: [https://medium.com/lapsed-historian/breaking-the-zimmermann-telegram-b34ed1d73614](https://medium.com/lapsed-historian/breaking-the-zimmermann-telegram-b34ed1d73614)

**《破解齐默尔曼电报》（2018）摘要**

本文详述了1917年对齐默尔曼电报的关键截获与解密过程。这份德国秘密外交电报促使美国加入第一次世界大战。

要点如下：

*   **目的：** 1917年1月，战事陷入僵局，德国外交部长阿瑟·齐默尔曼制定计划以保持美国中立。他提议与墨西哥建立秘密军事同盟，承诺若墨西哥进攻美国，将归还德克萨斯、新墨西哥和亚利桑那州。
*   **传送：** 电报通过三条复杂路线发送：从柏林经美国国务院电缆（德国被允许用于中立国外交）至华盛顿，再经瑞典外交电缆从华盛顿至墨西哥城。此举意在避开英国审查。
*   **截获与解密：** 英国海军情报部门，特别是40号办公室，截获了全部三次传输。在威廉·蒙哥马利和奈杰尔·德·格雷的带领下，密码分析员艰苦破译了电报。他们面临的挑战是如何向美国披露电报，同时不暴露英国正在监听德国及中立国外交通信。
*   **披露与影响：** 英国情报部门巧妙地从墨西哥城电报局获取了电报副本，为其来源编造了掩护故事。他们于1917年2月下旬将电报呈交美国。结合德国恢复无限制潜艇战，电报的公开发表在美国公众和媒体中激起愤慨，决定性扭转了舆论。伍德罗·威尔逊总统以此为由，请求国会宣战，并于1917年4月获得批准。

文章结论认为，这一事件是密码情报与政治欺骗的杰作，从根本上改变了战争进程。

---

## 4. Show HN: Lume 0.2 – 支持无人值守配置的 macOS 虚拟机构建与运行

**原文标题**: Show HN: Lume 0.2 – Build and Run macOS VMs with unattended setup

**原文链接**: [https://cua.ai/docs/lume/guide/getting-started/introduction](https://cua.ai/docs/lume/guide/getting-started/introduction)

Lume 0.2是一款命令行工具和框架，用于在Apple Silicon Mac上创建和运行macOS与Linux虚拟机。它利用苹果原生的虚拟化框架实现接近原生的性能，包括硬件加速的CPU、基础GPU支持，以及针对x86 Linux二进制文件的Rosetta 2兼容性。

该工具通过VNC和OCR技术实现全自动无人值守的macOS安装配置，从而简化虚拟机管理。主要功能包括：从IPSW文件创建虚拟机、高效稀疏磁盘存储，以及用于拉取/推送虚拟机镜像的注册表。

Lume适用于多种场景：跨macOS版本测试软件、自动化macOS任务、在无头模式下运行本地CI/CD流水线、隔离高风险操作，以及作为与桌面交互的AI代理运行环境。它基于MIT许可证开源，同时也提供托管的云端服务用于macOS沙盒环境。

该工具以单一二进制文件运行，并提供可选的HTTP API用于编程控制，其配套的Computer SDK即利用此API实现自动化。Lume专为Apple Silicon构建，不支持Intel Mac或其他平台。

---

## 5. 《孩子们的罪孽》（阿德里安·柴可夫斯基）

**原文标题**: Sins of the Children (Adrian Tchaikovsky)

**原文链接**: [https://asteriskmag.com/issues/07/sins-of-the-children](https://asteriskmag.com/issues/07/sins-of-the-children)

在艾德里安·柴可夫斯基的《子辈之罪》中，一支人类团队在切利瑟14d星球上剥削一种名为“农工”的本土蛛形物种，它们培育着一种富含珍贵矿物质的作物。他们的行动因突然出现的巨大装甲“死亡跳蚤”捕食者而遭到暴力破坏——这些生物摧毁了一座气象站并杀死了一名船员。

作为异星生物学家的叙述者与其尖刻的同事芬娟展开调查。芬娟对当地生物的分析揭示了一个惊人事实：所有采样物种中高达90%的遗传物质似乎是惰性的“垃圾基因”。未等他们理解其中深意，巨型跳蚤便对主要加工厂发动了全面袭击。

这个故事建立了人类无情资源掠夺与神秘而暴烈的星球生态之间的冲突，暗示着看似被动的“农工”与新出现的捕食者之间，潜藏着尚未揭晓的更深层生物学谜团。

---

## 6. 社交文件系统

**原文标题**: A Social Filesystem

**原文链接**: [https://overreacted.io/a-social-filesystem/](https://overreacted.io/a-social-filesystem/)

本文介绍了受AT协议启发的“社交文件系统”概念，它将社交媒体数据（如帖子、关注和点赞）重新构想为用户拥有的文件。在这个模型中，每个人都拥有一个“万物文件夹”，其中存储着以结构化JSON文件形式存在的社交数据，这些文件被称为“记录”。应用程序则成为这些文件的响应式查看器和编辑器，而非拥有数据的孤立数据库。

关键优势包括用户所有权、数据可移植性和互操作性。正如不同应用可以读取相同的.jpg或.doc文件，不同的社交应用也能读写标准化的社交数据格式（在“词典”中定义）。这些格式被组织到命名空间的“集合”中（例如`com.twitter.post`），以避免应用间的冲突。这种分离确保了用户的创作能够超越应用本身的生命周期，促进创新并防止平台锁定。文章认为，这种已为Bluesky等应用提供支持的文​​件系统范式，能够将个人计算的自由与灵活性带入社交网络。

---

## 7. 命令行工具可比你的Hadoop集群快235倍（2014年）

**原文标题**: Command-line Tools can be 235x Faster than your Hadoop Cluster (2014)

**原文链接**: [https://adamdrake.com/command-line-tools-can-be-235x-faster-than-your-hadoop-cluster.html](https://adamdrake.com/command-line-tools-can-be-235x-faster-than-your-hadoop-cluster.html)

本文论证了对于某些数据处理任务，单机命令行工具的性能可以远超分布式Hadoop集群。作者通过分析一个涉及1.75GB国际象棋对局数据的案例指出：Hadoop实现耗时26分钟，而使用`find`、`xargs`、`grep`、`awk`等Unix工具构建流式处理管道后，相同分析仅需12秒——速度提升达235倍。

基于Shell方案的核心优势在于其简洁性、高效性与内在并行能力。通过管道连接命令，数据以流式方式处理，既最小化内存占用，又允许多个CPU核心并发工作（例如使用`xargs -P`）。作者通过逐步优化管道——替换低效步骤、并行化瓶颈环节，最终使处理速度接近I/O极限。

文章的核心论点是：许多“大数据”问题更适合采用单机流式处理，而非Hadoop这类重量级分布式框架，尤其在数据规模可控时。作者主张根据场景选择合适工具：分布式系统对超大规模数据确有必要，但对于中等规模任务，传统工具往往能提供更优性能、更低成本与更易维护的解决方案。

---

## 8. 重叠标记

**原文标题**: Overlapping Markup

**原文链接**: [https://en.wikipedia.org/wiki/Overlapping_markup](https://en.wikipedia.org/wiki/Overlapping_markup)

重叠标记指的是文档中多种结构（如诗歌韵律、语言句子和物理页面）的非层次性交互，这些结构无法表示为单一树状结构。这是数字人文和标记语言中长期存在的挑战，因为像XML这样的传统层次格式无法直接编码此类重叠。

为解决这一问题，层次系统中存在多种变通方法。包括为每种结构使用**多个文档**、使用**里程碑元素**标记边界、使用**连接指针**链接分段内容，以及采用**分离式标记**——即将注释与文本内容分开存储。其中，分离式标记已成为现代主流解决方案，支持协作注释并可作为枢纽格式，尽管它增加了验证和处理的复杂性。

历史上曾开发过LMNL和TexMECS等专用非层次语言，但目前已不再积极维护。当前共识倾向于使用分离式XML（如GrAF-XML、PAULA-XML）或基于图的模型，以在追求互操作性和可维护性的同时，管理重叠结构的复杂性。

---

## 9. 大教堂、巨型教堂与市集

**原文标题**: The Cathedral, the Megachurch, and the Bazaar

**原文链接**: [https://opensourcesecurity.io/2026/01-cathedral-megachurch-bazaar/](https://opensourcesecurity.io/2026/01-cathedral-megachurch-bazaar/)

本文重新审视了开源软件领域经典的“大教堂与集市”比喻，提出当今的格局更适合用三种模式来描述。

**大教堂**代表早期具有严格贡献规则、排他性的GNU式项目。原论文中盛赞的**集市**，则是早期Linux那种混乱的草根模式。

然而作者认为，大多数备受瞩目且存续至今的项目已演变为**巨型教堂**——即组织严密的基金会（如Linux或Python基金会），它们拥有结构化的治理、企业资金和正式的贡献流程。虽然高效，却已非自由开放的集市。

作者指出，真正的**集市**是绝大多数开源项目：规模小、通常由单一维护者主导、运作形式松散。这种混乱的集市构成了现代数字基础设施关键而承重的基石，却在可持续性与资金方面举步维艰。

结论是：虽然巨型教堂很重要，但社区必须认识并支持至关重要的集市。文章鼓励读者探索这些小型项目，并特别提及德国主权技术基金等先驱机构——它们正通过提供无附加条件的资金，为解决这一系统性挑战开辟道路。

---

## 10. 展示 HN：Xenia – 一款使用自定义 Python 引擎构建的等宽字体

**原文标题**: Show HN: Xenia – A monospaced font built with a custom Python engine

**原文链接**: [https://github.com/Loretta1982/xenia](https://github.com/Loretta1982/xenia)

**概述：**

Xenia 是一款专为编程设计的新等宽字体，采用基于 Python 的自定义引擎开发。开发者是一位独立程序员，旨在提供一种美观的替代方案，以改变他们认为通常“丑陋”的等宽字体。该字体设计精良，作者表示在使用时常常忘记它是一款等宽字体。

主要特点包括：
*   **广泛的字符支持：** 包含超过 700 个字形，深度支持符号和数学记号。
*   **高可读性：** 对于易混淆的字符如 `1`、`l`、`I`、`0` 和 `O`，设计清晰、无歧义。
*   **简洁设计：** 美观的几何造型，特别提到了“简洁”的小写字母 'a'。
*   **程序化生成：** 字体使用自定义 Python 引擎构建，意味着其设计过程独特且可编程。

该字体目前提供常规字重，并承诺若有足够需求将增加更多字重。它采用“随喜付费”模式：用户可以免费下载使用，或选择通过“请开发者喝杯咖啡”的方式支持创作者。安装方法为下载 `.ttf` 文件，并在代码编辑器或终端中将其设置为字体。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 2 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 3 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 4 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 5 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 6 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 7 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 8 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 9 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 10 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 11 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 12 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 13 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 14 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 15 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 16 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 17 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 18 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 19 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 20 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 21 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 22 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 23 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 24 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 25 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 26 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 27 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 28 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 29 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 30 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 31 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 32 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 33 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 34 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 35 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 36 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 37 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 38 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 39 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 40 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 41 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 42 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 43 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 44 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 45 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 46 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 47 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 48 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 49 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 50 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 51 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 52 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 53 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 54 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 55 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 56 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 57 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 58 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 59 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 60 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 61 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 62 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 63 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 64 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 65 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 66 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 67 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 68 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 69 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 70 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 71 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 72 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 73 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 74 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 75 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 76 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 77 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 78 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 79 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 80 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 81 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 82 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 83 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 84 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 85 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 86 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 87 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 88 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 89 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 90 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 91 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 92 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 93 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 94 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 95 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 96 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 97 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 98 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 99 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 100 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 101 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 102 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 103 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 104 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 105 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 106 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 107 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 108 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 109 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 110 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 111 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 112 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 113 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 114 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 115 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 116 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 117 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 118 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 119 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 120 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 121 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 122 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 123 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 124 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 125 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 126 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 127 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 128 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 129 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 130 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 131 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 132 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 133 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 134 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 135 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 136 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 137 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 138 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 139 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 140 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 141 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 142 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 143 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 144 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 145 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 146 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 147 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 148 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 149 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 150 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 151 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 152 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 153 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 154 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 155 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 156 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 157 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 158 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 159 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 160 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 161 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 162 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 163 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 164 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 165 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 166 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 167 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 168 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 169 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 170 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 171 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 172 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 173 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 174 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 175 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 176 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 177 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 178 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 179 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 180 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 181 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 182 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 183 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 184 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 185 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 186 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 187 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 188 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 189 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 190 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 191 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 192 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 193 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 194 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 195 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 196 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 197 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 198 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 199 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 200 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 201 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 202 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 203 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 204 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 205 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 206 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 207 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 208 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 209 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 210 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 211 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 212 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 213 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 214 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 215 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 216 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 217 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 218 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 219 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 220 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 221 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 222 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 223 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 224 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 225 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 226 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 227 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 228 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 229 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 230 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 231 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 232 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 233 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 234 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 235 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 236 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 237 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 238 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 239 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 240 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 241 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 242 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 243 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 244 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 245 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 246 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 247 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 248 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 249 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 250 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 251 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 252 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 253 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 254 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 255 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 256 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 257 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 258 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 259 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 260 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 261 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 262 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 263 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 264 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 265 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 266 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 267 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 268 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 269 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 270 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 271 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 272 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 273 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 274 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 275 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 276 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 277 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 278 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 279 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 280 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 281 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 282 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 283 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 284 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 285 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 286 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 287 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 288 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 289 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 290 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 291 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 292 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 293 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 294 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 295 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 296 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 297 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 298 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 299 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 300 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 301 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 302 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
