# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-06.md)

*最后自动更新时间: 2026-03-06 20:37:41*
## 1. 科技行业就业现状显著差于2008年或2020年经济衰退时期。

**原文标题**: Tech employment now significantly worse than the 2008 or 2020 recessions

**原文链接**: [https://twitter.com/JosephPolitano/status/2029916364664611242](https://twitter.com/JosephPolitano/status/2029916364664611242)

**科技就业文章摘要**

文章标题声称，当前科技就业市场的状况比2008年金融危机或2020年新冠疫情引发的经济衰退时期更为严峻。

然而，所提供的内容并未包含实际文章或支持此说法的任何数据。相反，它仅显示了社交媒体平台X（原Twitter）的一条技术错误信息，提示用户浏览器中JavaScript被禁用，而该功能是查看内容所必需的。该信息提示用户启用JavaScript或更换浏览器，并包含标准的页脚链接（帮助中心、服务条款等）。

因此，尽管标题提出了一个重要的经济比较，但可访问的内容并未提供任何细节、证据或分析来支撑关于科技就业趋势、裁员、市场状况或原因的论点。由于网站访问障碍，本应作为摘要核心的信息并不可用。

---

## 2. 展示HN：Moongate – 基于.NET 10并支持Lua脚本的《网络创世纪》服务器模拟器

**原文标题**: Show HN: Moongate – Ultima Online server emulator in .NET 10 with Lua scripting

**原文链接**: [https://github.com/moongate-community/moongatev2](https://github.com/moongate-community/moongatev2)

Moongate v2 是一款基于 .NET 10 构建的现代开源《网络创世纪》服务器模拟器。它采用清晰模块化架构，具备确定性游戏循环处理、强大的数据包工具链以及 Lua 脚本支持。该项目正积极招募开发贡献者与技术评审人员。

核心特性包括：搭载数据包处理功能的 TCP 服务器、基于区块的世界流式传输性能优化策略、采用 MessagePack 的快照+日志持久化系统。项目集成 Lua 运行时以支持游戏逻辑与指令脚本，并内置 HTTP 主机用于管理端点。

目前已实现登录认证、移动交互、物品操作及基础 NPC 寻路等核心系统。项目承袭了 POLServer 与 ModernUO 等先驱的设计理念，并沿用其部分数据资源。尚在开发的重点领域包括完整战斗系统、技能体系、NPC 人工智能及经济功能。

该解决方案采用 AOT（预编译）感知架构，通过源码生成器减少运行时反射。项目仓库中提供了包含详细进度文档在内的开发资源。

---

## 3. Open Camera 是一款适用于安卓的开源相机应用。

**原文标题**: Open Camera is a FOSS Camera App for Android

**原文链接**: [https://opencamera.org.uk/](https://opencamera.org.uk/)

**概述**

Open Camera 是一款适用于 Android 设备（Android 5.0+）的免费开源相机应用。它提供对相机功能的广泛控制，包括曝光、ISO、白平衡和对焦的手动设置。主要功能包括 HDR、全景模式、RAW（DNG）照片拍摄、高清/慢动作视频，并支持 Camera2 API 以实现高级手动控制。

该应用提供独特实用功能，如自动水平校准、通过声音或计时器进行远程控制、GPS 地理标记，以及叠加网格或在照片上添加文字/水印的选项。它注重隐私保护，允许用户去除 Exif 元数据，且应用内无第三方广告。

Open Camera 由 Mark Harman 及贡献者开发，采用 GPL v3 许可。它使用 Google 的 Material Design 图标（Apache 许可 2.0），可在 Google Play 下载。开发者指出，功能可用性可能因设备硬件、Android 版本和相机性能而异。

---

## 4. 使用Anthropic红队强化Firefox安全

**原文标题**: Hardening Firefox with Anthropic's Red Team

**原文链接**: [https://www.anthropic.com/news/mozilla-firefox-security](https://www.anthropic.com/news/mozilla-firefox-security)

2026年2月，Anthropic的AI模型Claude Opus 4.6在两周内于Mozilla Firefox中发现了22个漏洞，其中14个被评定为高危级别。这相当于2025年Firefox所有已修复高危漏洞的近五分之一，显示出AI在加速安全漏洞检测方面的能力。

此次合作始于对Claude在经充分测试的关键代码库中发现复杂漏洞能力的评估。在成功复现历史漏洞后，Claude在20分钟内于JavaScript引擎中发现了一个新的“释放后使用”漏洞。Anthropic向Mozilla提交了112份报告，大部分修复已随Firefox 148版本发布。

尽管Claude在发现漏洞方面表现高效，但在开发功能性攻击方案时遇到困难，仅在两个简化测试案例中取得成功，这显示出当前防御方仍具优势。文章强调了AI辅助安全的最佳实践，包括使用“任务验证器”确认AI输出结果，并向维护者提供详细的概念验证和候选补丁。

Anthropic警告称，AI在漏洞发现与利用能力之间的差距可能不会长期存在，敦促开发者加强软件防护。该公司计划扩大网络安全领域的投入，包括向客户和开源维护者提供其漏洞发现工具。

---

## 5. Ada 2022

**原文标题**: Ada 2022

**原文链接**: [https://www.adaic.org/ada-resources/standards/ada22/](https://www.adaic.org/ada-resources/standards/ada22/)

根据Ada信息交换中心（AdaIC）官方网页，以下是Ada 2022标准的摘要：

**Ada 2022**是Ada编程语言标准的最新重大修订版，正式名称为ISO/IEC 8652:2023。它在Ada 2012的坚实基础上，着重提升了安全性、可靠性和易用性，尤其适用于长期运行的高完整性系统。

主要改进和新特性包括：

*   **增强的契约式编程：** 对前置和后置条件（`Pre`和`Post`特性）的重大扩展以及新的**谓词函数**，使得形式化指定和验证程序行为更为便捷，可在编译时或通过运行时检查捕获错误。
*   **提升的表达能力：** 引入`@`运算符用于简写属性引用（例如`X'Old`变为`@Old`），以及表达式函数更灵活的放置方式，使代码更简洁。
*   **更好的并行性支持：** 新增**同步屏障**等特性以及对并行处理模型（`Parallel_Blocks`）的增强，为并发编程提供了更标准化、更安全的构造。
*   **强化的容器库：** 标准容器库（如向量和映射）获得更新，功能与安全性得到提升。
*   **互操作性与专门需求：** 新增对**SPARK**（可证明安全的Ada子集）的进一步支持、针对实时系统的**ravenscar配置文件**增强，以及更好的**C/C++互操作性**。

总体而言，Ada 2022并非重写，而是一次战略性演进。它在保持完全向后兼容的同时，引入了现代特性，进一步强化了Ada的核心优势：可靠性、可维护性以及对航空航天、国防、交通和金融等关键领域系统的适用性。其目标是减少开发工作量，并增强对软件正确性的信心。

---

## 6. 公用电话亭出发

**原文标题**: Payphone Go

**原文链接**: [https://walzr.com/payphone-go/](https://walzr.com/payphone-go/)

根据提供的有限文本，这篇文章似乎讲述了一个名为**“Payphone Go”**的项目或游戏。

其核心概念似乎涉及**玩家通过移动应用定位并认领现实世界中的公用电话**。日期“3月15日”表明该活动发生在3月15日，可能标志着发布日期或特定事件。

本质上，“Payphone Go”是一种基于位置的互动体验，利用公用电话这一城市遗迹作为游戏的实际锚点。它鼓励玩家探索周围环境，寻找并数字化“认领”这些电话，使其成为游戏框架内的互动点或竞争点。

---

## 7. 健康可穿戴设备的CT扫描

**原文标题**: CT Scans of Health Wearables

**原文链接**: [https://www.lumafield.com/scan-of-the-month/health-wearables](https://www.lumafield.com/scan-of-the-month/health-wearables)

本文通过CT扫描揭示了四款现代健康可穿戴设备的精密内部结构，突显了微型化与生物相容性设计如何将电子设备与人体相融合。

**Oura Ring（2025）**将传感器、弧形柔性电路板、无线充电线圈和异形电池集成于无缝钛金属环中，实现防水且持续的健康监测。

**Dexcom G7（2025）**连续血糖监测仪采用密封贴片设计，内含发丝般纤细的传感器丝、螺旋蓝牙天线和锌空气电池，可无菌可靠运行10天。

**Omnipod（2022）**穿戴式注射器是独立的给药系统，通过弹簧驱动针头、齿轮传动活塞和纽扣电池，实现数小时的自动定量药物输注。

**Jabra Enhance Select 50（2024）**助听器在耳塞大小的设备中集成了双麦克风、数字处理器、可充电电池和微型扬声器，采用堆叠式电路板与无线充电技术。

这些设备共同展现了可穿戴电子设备向高精度、耐用性、舒适性及持续体表运行的发展趋势。文章指出，这一趋势正逐渐模糊外部可穿戴设备与人体集成技术之间的界限。

---

## 8. Astra：一款开源的天文台控制软件

**原文标题**: Astra: An open-source observatory control software

**原文链接**: [https://github.com/ppp-one/astra](https://github.com/ppp-one/astra)

**摘要**

Astra是一款开源、跨平台的软件，专为自动化控制机器人天文台而设计。其核心功能是让用户能够安排观测任务，随后自动执行，并内置了对错误和恶劣天气状况的处理机制。

一个关键特性是它与ASCOM Alpaca标准的集成，确保了与多种现有天文硬件的兼容性。该软件使用Python构建，可在Windows、Linux和macOS上运行。管理通过一个Web界面进行，并可借助cloudflared等工具进行远程访问。

该项目强调提供全面的设置和使用文档。它采用协作开发模式，欢迎贡献，并以GNU GPL v3许可证发布。用户可通过其文档和问题追踪器获得支持。

对于学术用途，该软件提供了引用格式和DOI（10.5281/zenodo.18890151），以便在已发表的研究中进行引用。

---

## 9. 昆虫学家利用粒子加速器大规模成像蚂蚁。

**原文标题**: Entomologists use a particle accelerator to image ants at scale

**原文链接**: [https://spectrum.ieee.org/3d-scanning-particle-accelerator-antscan](https://spectrum.ieee.org/3d-scanning-particle-accelerator-antscan)

昆虫学家利用粒子加速器制作出了整个蚂蚁的高精度、大规模三维图像。这项发表在《生物灵感与仿生学》上的研究介绍了一种名为“AntScan”的技术。

研究团队利用日本的SPring-8同步辐射设施，对四种冲绳蚂蚁进行了微计算机断层扫描。该方法提供了前所未有的分辨率，使科学家不仅能观察外骨骼，还能精细地查看肌肉、腺体及大脑等内部器官。

该研究的主要目标是利用这些全面的解剖蓝图进行仿生工程应用。通过研究蚂蚁身体——尤其是颈部、腰部和腿部关节——如何承载巨大负荷并高效运动的结构，研究人员希望为设计更坚固、更灵活的微型机器人及先进生物力学材料提供参考。

公开的AntScan数据库为生物学家和工程师提供了一个新资源，使他们能够在以往无法达到的尺度上探索这些昆虫的功能形态。

---

## 10. 阿帕奇·奥塔瓦

**原文标题**: Apache Otava

**原文链接**: [https://otava.apache.org/](https://otava.apache.org/)

**Apache Otava 概述**

Apache Otava 是一款专为持续性能工程设计的工具。其主要功能是通过分析性能测试的历史数据来检测性能回归。

Otava 的核心能力是**统计变点检测**。它能自动分析性能测试结果序列，识别出可能表明系统性能出现回归或改进的显著偏差或趋势。

为执行此分析，Otava 集成了多个存储性能指标的常用数据源。它可以从 **CSV 文件、PostgreSQL 数据库、Google BigQuery 以及 Graphite** 时间序列数据库中提取数据。

当 Otava 识别出潜在的性能变化（即“变点”）时，它会触发**通知**以提醒工程团队。这使得团队能够在开发周期早期主动调查和解决性能问题。

本质上，Otava 自动化了性能测试结果的监控与分析，通过提供关于应用速度与稳定性的数据驱动警报，将性能验证左移，并支持持续性能工程实践。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 2 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 3 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 4 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 5 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 6 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 7 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 8 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 9 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 10 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 11 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 12 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 13 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 14 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 15 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 16 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 17 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 18 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 19 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 20 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 21 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 22 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 23 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 24 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 25 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 26 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 27 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 28 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 29 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 30 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 31 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 32 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 33 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 34 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 35 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 36 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 37 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 38 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 39 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 40 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 41 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 42 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 43 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 44 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 45 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 46 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 47 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 48 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 49 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 50 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 51 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 52 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 53 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 54 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 55 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 56 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 57 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 58 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 59 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 60 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 61 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 62 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 63 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 64 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 65 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 66 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 67 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 68 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 69 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 70 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 71 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 72 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 73 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 74 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 75 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 76 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 77 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 78 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 79 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 80 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 81 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 82 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 83 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 84 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 85 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 86 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 87 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 88 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 89 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 90 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 91 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 92 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 93 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 94 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 95 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 96 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 97 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 98 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 99 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 100 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 101 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 102 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 103 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 104 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 105 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 106 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 107 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 108 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 109 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 110 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 111 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 112 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 113 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 114 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 115 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 116 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 117 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 118 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 119 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 120 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 121 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 122 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 123 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 124 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 125 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 126 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 127 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 128 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 129 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 130 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 131 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 132 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 133 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 134 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 135 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 136 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 137 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 138 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 139 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 140 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 141 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 142 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 143 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 144 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 145 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 146 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 147 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 148 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 149 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 150 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 151 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 152 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 153 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 154 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 155 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 156 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 157 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 158 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 159 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 160 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 161 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 162 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 163 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 164 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 165 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 166 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 167 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 168 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 169 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 170 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 171 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 172 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 173 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 174 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 175 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 176 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 177 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 178 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 179 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 180 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 181 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 182 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 183 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 184 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 185 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 186 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 187 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 188 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 189 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 190 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 191 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 192 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 193 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 194 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 195 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 196 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 197 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 198 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 199 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 200 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 201 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 202 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 203 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 204 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 205 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 206 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 207 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 208 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 209 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 210 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 211 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 212 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 213 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 214 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 215 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 216 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 217 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 218 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 219 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 220 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 221 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 222 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 223 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 224 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 225 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 226 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 227 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 228 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 229 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 230 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 231 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 232 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 233 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 234 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 235 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 236 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 237 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 238 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 239 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 240 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 241 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 242 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 243 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 244 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 245 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 246 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 247 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 248 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 249 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 250 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 251 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 252 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 253 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 254 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 255 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 256 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 257 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 258 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 259 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 260 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 261 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 262 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 263 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 264 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 265 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 266 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 267 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 268 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 269 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 270 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 271 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 272 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 273 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 274 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 275 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 276 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 277 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 278 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 279 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 280 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 281 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 282 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 283 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 284 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 285 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 286 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 287 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 288 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 289 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 290 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 291 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 292 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 293 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 294 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 295 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 296 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 297 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 298 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 299 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 300 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 301 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 302 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 303 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 304 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 305 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 306 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 307 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 308 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 309 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 310 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 311 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 312 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 313 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 314 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 315 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 316 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 317 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 318 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 319 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 320 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 321 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 322 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 323 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 324 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 325 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 326 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 327 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 328 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 329 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 330 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 331 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 332 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 333 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 334 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 335 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 336 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 337 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 338 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 339 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 340 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 341 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 342 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 343 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 344 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 345 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 346 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 347 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 348 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 349 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
