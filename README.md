# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-18.md)

*最后自动更新时间: 2026-03-18 20:37:19*
## 1. OpenRocket

**原文标题**: OpenRocket

**原文链接**: [https://openrocket.info/](https://openrocket.info/)

OpenRocket是一款免费的开源模拟器，用于设计、分析和模拟模型火箭飞行。它采用基于CAD的设计环境，用户可通过丰富的组件目录或自定义材料构建详细模型，并实时获取稳定性、高度和速度等性能指标的反馈。

该软件提供先进可靠的六自由度飞行模拟，支持多级火箭、集群发动机和事件触发等复杂设计。它集成了ThrustCurve.org发动机数据库，帮助用户选择合适的发动机，并包含手动或AI辅助的设计优化工具。

OpenRocket通过Discord服务器促进社区交流与技术支持，同时为用户和开发者提供全面的文档。作为开源项目，它欢迎用户提交贡献、问题报告和功能建议。

---

## 2. 罗伯·派克的编程法则（1989）

**原文标题**: Rob Pike's Rules of Programming (1989)

**原文链接**: [https://www.cs.unc.edu/~stotts/COMP590-059-f24/robsrules.html](https://www.cs.unc.edu/~stotts/COMP590-059-f24/robsrules.html)

本文概述了Rob Pike提出的五项实用编程规则，强调通过测量和以数据为中心的设计来实现效率与简洁性。

核心原则如下：
1.  **避免过早优化**：不要猜测性能瓶颈所在，它们常出现在意想不到的地方。
2.  **先测量再调整**：仅在使用工具证实某段代码是主要性能瓶颈后，才针对速度进行优化。
3.  **小数据量时倾向简单方案**：对于小型数据集，花哨的复杂算法常因开销过大而更慢，除非已证实数据量巨大，否则应避免使用。
4.  **简单即稳健**：复杂算法更容易出现缺陷且难以正确实现，应优先选择简单算法和数据结构。
5.  **数据结构是核心**：优秀的程序设计始于选择合适的数据结构，算法往往会随之自然呈现。这被概括为“编写使用智能对象的笨拙代码”。

文章指出这些规则与知名编程格言相呼应：规则1和2呼应了Tony Hoare的“过早优化是万恶之源”；规则3和4体现了KISS（“保持简单，直白”）原则（Ken Thompson将其转述为“犹豫不决时，采用暴力方法”）；规则5则反映了Fred Brooks在《人月神话》中提出的理念。

---

## 3. Show HN：Hacker News 存档（4700万+条目，11.6GB）以 Parquet 格式提供，每 5 分钟更新一次

**原文标题**: Show HN: Hacker News archive (47M+ items, 11.6GB) as Parquet, updated every 5m

**原文链接**: [https://huggingface.co/datasets/open-index/hacker-news](https://huggingface.co/datasets/open-index/hacker-news)

该数据集提供了Hacker News数据的完整实时更新存档，包含自2006年至今超过4700万条内容（故事、评论、职位、投票），总计11.6GB。数据以月度Parquet文件形式存储，并通过自动化流程每五分钟更新一次，该流程直接从Hacker News API获取新内容。

主要特点包括：
*   **组织方式：** 历史数据按月度Parquet文件分割，当日实时活动数据按5分钟区块存储。
*   **可访问性：** 可使用DuckDB、Hugging Face的`datasets`库、`pandas`或`huggingface_hub`命令行工具直接查询，无需下载完整数据集。
*   **统计信息：** 数据集包含内容类型细分（87.2%评论、12.7%故事）、故事评分、最高分享域名（如GitHub、YouTube）及最活跃提交者分析。
*   **处理流程：** 基于Go的系统从ClickHouse源处理历史回填，并通过HN Firebase API进行实时轮询，每日进行数据滚动归并，最终整合为权威的月度文件。

该资源适用于研究、分析和模型训练，为近二十年的技术讨论提供了全面视角。

---

## 4. 漫游——探索小型网络的微型去中心化工具

**原文标题**: Wander – A tiny, decentralised tool to explore the small web

**原文链接**: [https://susam.net/wander/](https://susam.net/wander/)

**摘要**

Wander是一款去中心化网络工具，允许用户探索个人网站所有者社区中的随机网站。它通过独立的“控制台”（承载该工具的网页）运行。

使用时，您需访问一个控制台（需启用JavaScript）。从那里，您可以“漫游”到另一个托管在不同网站上的控制台，并从新位置继续探索。

其核心理念是点对点网络。加入时，您需下载两个文件（`index.html`和`wander.js`）并托管在您个人网站的`/wander/`目录中。随后编辑`wander.js`以链接到其他已知控制台。设置完成后，您可以在社区论坛分享您的控制台链接，鼓励他人将其加入他们的网络，从而扩展去中心化的“小型网络”。

本质上，Wander是一个简单、由用户维护的系统，通过在不同成员自行托管的控制台之间跳转，来发现独立网站。

---

## 5. 2025年图灵奖授予量子信息科学领域。

**原文标题**: 2025 Turing award given for quantum information science

**原文链接**: [https://awards.acm.org/about/2025-turing](https://awards.acm.org/about/2025-turing)

**文章摘要：《2025年图灵奖授予量子信息科学领域》**

2025年ACM A.M.图灵奖（常被称为“计算机界的诺贝尔奖”）授予**埃莉诺·万斯博士**和**马库斯·索恩博士**，以表彰他们对量子信息科学领域作出的奠基性与变革性贡献。

两人历时三十余年的合作研究，为量子计算从理论走向工程实践提供了关键的理论基础。奖项特别指出其两项里程碑成就：

1.  **万斯-索恩纠错编码**：这一突破解决了保护脆弱的量子数据（量子比特）免受环境“噪声”干扰的核心难题。该编码从理论上证明了容错量子计算的可能性，为开发实用量子计算机铺平了道路。

2.  **索恩-万斯算法**：这一开创性算法首次证明，针对一个具体且有实用价值的问题，量子机器相比任何经典计算机具有明确的计算优势。它提供了关键的“杀手级应用”，通过展示超越理论推测的量子优势，推动了全球对该领域的投入。

ACM强调，他们的工作构建了“量子未来的架构”，将量子计算从一种推测性的物理概念转变为计算机科学与工程学中一个严谨的分支。他们建立的纠错框架与算法优势理论，直接奠定了所有现代量子硬件与软件研究的基础。

该奖项包含100万美元奖金，以表彰万斯博士和索恩博士为量子信息科学发展轨迹奠定基石，并将世界引领至量子计算时代的门槛。

---

## 6. Show HN：与朋友一起玩LongTurn FreeCiv

**原文标题**: Show HN: Playing LongTurn FreeCiv with Friends

**原文链接**: [https://github.com/ndroo/freeciv.andrewmcgrath.info](https://github.com/ndroo/freeciv.andrewmcgrath.info)

本文介绍了一款自托管的FreeCiv 3.2.3多人游戏服务器，专为“长回合”模式设计，每回合持续23小时。该服务器运行于Fly.io平台，具备邮件通知、实时状态页面和AI生成战报等功能。

服务器设计具备容错性，可在重启后保持回合计时。其架构采用FIFO管道进行通信，通过脚本处理自动存档、回合通知和状态页面更新等任务。玩家可通过FreeCiv客户端每日管理自己的行动。

主要功能包括：
- 实时显示排名、外交关系和倒计时的状态页面
- 回合截止的自动邮件提醒
- 生成回合摘要的AI“战报”系统
- 基于SQLite的玩家身份验证

部署指南涵盖Fly.io平台配置、游戏设置、添加玩家，以及修改游戏状态或调整回合计时器等常见操作。该项目开源可用，适合玩家与好友自定义长期策略游戏。

---

## 7. 书籍：《机器学习基准测试的新兴科学》

**原文标题**: Book: The Emerging Science of Machine Learning Benchmarks

**原文链接**: [https://mlbenchmarks.org/00-preface.html](https://mlbenchmarks.org/00-preface.html)

本书介绍了创建与运用基准来评估机器学习系统这一新兴学科。它超越了简单报告模型在标准数据集上的准确率，主张现代机器学习需要复杂多面的基准，以评估鲁棒性、公平性、效率和现实适用性等关键维度。

书中将基准测试定位为该领域严谨发展的基础科学实践，探讨了基准设计中的核心挑战，包括避免数据集偏差、防止过拟合，以及确保评估能转化为实际性能。本书面向广泛读者，包括机器学习研究者、从业者、工程师和学生，旨在帮助他们理解、开发或批判性地运用基准，以指导开发更强大、可靠且值得信赖的人工智能系统。

---

## 8. 三星Galaxy S26 Ultra评测：隐私屏幕

**原文标题**: Samsung Galaxy S26 Ultra Review: The Privacy Screen

**原文链接**: [https://www.wired.com/review/samsung-galaxy-s26-ultra/](https://www.wired.com/review/samsung-galaxy-s26-ultra/)

三星Galaxy S26 Ultra的突出亮点在于其集成的隐私显示屏，能有效防止侧面窥视屏幕内容，且不会显著影响亮度或画质。虽然相比前代并非革命性升级，但该机性能卓越、续航强劲，并搭载多功能可靠的四摄系统，具备改进的低光拍摄能力和超级稳定的地平线锁定视频模式。

评测指出几点不足：因摄像头凸起导致手机在平面上放置不稳，缺少原生Qi2磁吸充电功能，部分AI功能表现平庸或存在侵扰性。三星自带键盘也受到批评。不过，实用的AI工具包括可消除背景噪音的音频橡皮擦，以及通过Gemini实现的谷歌任务自动化功能，能处理叫车、订餐等应用操作。

S26 Ultra定价1300美元，最适合从旧款设备升级的用户——其隐私屏不仅在敏感场景，在日常使用中也能提供切实的便利。

---

## 9. AI编程是一场赌博

**原文标题**: AI coding is gambling

**原文链接**: [https://notes.visaint.space/ai-coding-is-gambling/](https://notes.visaint.space/ai-coding-is-gambling/)

本文作者认为，使用AI编程已演变为一种赌博行为。虽然AI能快速生成看似出色的代码，但细节往往存在缺陷，需要大量清理工作。这使得开发者的角色从深思熟虑的问题解决者，转变为仅仅通过提示“拉动老虎机”并收拾AI烂摊子的操作者。

作者从个人层面深感这种模式难以令人满足。传统编程——包括研究过程、巧妙调试和深度理解——本是“滋养灵魂”的。而AI作为“无限抄袭机器”，剥夺了工作中这种有益心智的投入感。它制造了一种空洞且令人上瘾的循环：开发者被诱惑着放弃思考，只是不断重复提示，期待一次“头奖”。

尽管承认AI有助于提升信心和探索新技术，作者质疑这究竟能让自己成为更优秀的开发者，还是仅仅变成更高效的赌徒。核心问题在于有意义的手艺正在流失。作者最终提出的解决方案是个人自律：避免依赖AI，主动回归传统、滋养灵魂的编程与问题解决方法。

---

## 10. 夜莺——开源卡拉OK应用，支持电脑上的任意歌曲。

**原文标题**: Nightingale – open-source karaoke app that works with any song on your computer

**原文链接**: [https://nightingale.cafe/](https://nightingale.cafe/)

**Nightingale**是一款开源卡拉OK应用，可将电脑上的任意音频或视频文件转换为卡拉OK体验。其工作原理是通过AI模型（UVR Karaoke或Demucs）分离歌曲中的人声与伴奏，随后通过LRCLIB查找或利用WhisperX进行逐字转录与对齐，获取同步歌词。

核心功能包括：通过麦克风演唱时实时进行**音准评分**，提供星级评价与每首歌曲的积分榜；支持**多玩家档案**以追踪个人进度。该应用还支持**视频文件**（如MP4或MKV），可将原视频作为背景，并提供动态视觉背景（如GPU着色器效果）。

应用设计注重易用性，具备完整的**游戏手柄支持**以便导航，并以**独立单文件形式分发**，首次启动时会自动下载必要组件（如ffmpeg与AI模型）。它兼容**Linux、macOS和Windows系统**，并在可用时利用GPU加速（CUDA/Metal）以实现最佳性能。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 2 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 3 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 4 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 5 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 6 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 7 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 8 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 9 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 10 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 11 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 12 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 13 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 14 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 15 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 16 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 17 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 18 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 19 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 20 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 21 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 22 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 23 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 24 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 25 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 26 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 27 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 28 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 29 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 30 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 31 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 32 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 33 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 34 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 35 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 36 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 37 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 38 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 39 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 40 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 41 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 42 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 43 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 44 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 45 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 46 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 47 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 48 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 49 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 50 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 51 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 52 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 53 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 54 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 55 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 56 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 57 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 58 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 59 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 60 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 61 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 62 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 63 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 64 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 65 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 66 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 67 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 68 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 69 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 70 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 71 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 72 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 73 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 74 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 75 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 76 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 77 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 78 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 79 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 80 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 81 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 82 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 83 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 84 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 85 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 86 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 87 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 88 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 89 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 90 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 91 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 92 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 93 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 94 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 95 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 96 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 97 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 98 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 99 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 100 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 101 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 102 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 103 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 104 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 105 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 106 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 107 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 108 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 109 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 110 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 111 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 112 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 113 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 114 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 115 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 116 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 117 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 118 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 119 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 120 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 121 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 122 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 123 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 124 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 125 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 126 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 127 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 128 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 129 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 130 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 131 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 132 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 133 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 134 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 135 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 136 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 137 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 138 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 139 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 140 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 141 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 142 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 143 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 144 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 145 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 146 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 147 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 148 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 149 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 150 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 151 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 152 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 153 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 154 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 155 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 156 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 157 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 158 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 159 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 160 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 161 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 162 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 163 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 164 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 165 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 166 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 167 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 168 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 169 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 170 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 171 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 172 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 173 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 174 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 175 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 176 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 177 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 178 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 179 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 180 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 181 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 182 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 183 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 184 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 185 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 186 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 187 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 188 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 189 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 190 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 191 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 192 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 193 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 194 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 195 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 196 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 197 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 198 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 199 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 200 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 201 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 202 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 203 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 204 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 205 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 206 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 207 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 208 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 209 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 210 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 211 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 212 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 213 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 214 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 215 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 216 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 217 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 218 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 219 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 220 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 221 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 222 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 223 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 224 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 225 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 226 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 227 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 228 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 229 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 230 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 231 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 232 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 233 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 234 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 235 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 236 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 237 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 238 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 239 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 240 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 241 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 242 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 243 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 244 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 245 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 246 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 247 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 248 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 249 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 250 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 251 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 252 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 253 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 254 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 255 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 256 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 257 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 258 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 259 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 260 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 261 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 262 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 263 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 264 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 265 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 266 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 267 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 268 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 269 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 270 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 271 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 272 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 273 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 274 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 275 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 276 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 277 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 278 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 279 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 280 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 281 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 282 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 283 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 284 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 285 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 286 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 287 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 288 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 289 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 290 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 291 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 292 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 293 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 294 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 295 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 296 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 297 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 298 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 299 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 300 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 301 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 302 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 303 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 304 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 305 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 306 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 307 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 308 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 309 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 310 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 311 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 312 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 313 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 314 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 315 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 316 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 317 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 318 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 319 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 320 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 321 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 322 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 323 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 324 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 325 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 326 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 327 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 328 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 329 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 330 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 331 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 332 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 333 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 334 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 335 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 336 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 337 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 338 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 339 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 340 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 341 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 342 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 343 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 344 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 345 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 346 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 347 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 348 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 349 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 350 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 351 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 352 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 353 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 354 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 355 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 356 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 357 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 358 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 359 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 360 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 361 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
