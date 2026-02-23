# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-23.md)

*最后自动更新时间: 2026-02-23 20:35:18*
## 1. 年龄验证陷阱：验证年龄损害了每个人的数据保护

**原文标题**: The Age Verification Trap: Verifying age undermines everyone's data protection

**原文链接**: [https://spectrum.ieee.org/age-verification](https://spectrum.ieee.org/age-verification)

本文认为，实施年龄验证系统以限制网络内容不仅对未成年人，而是对所有用户都构成了重大的数据保护风险。

研究者韦德尔·D·卡瓦略指出，这类系统本质上需要收集敏感个人数据（如身份证件或生物特征信息）以确认年龄。这形成了一个高度敏感信息的集中“蜜罐”，极易成为数据泄露、身份盗窃和监控的主要目标。

此外，文章指出，这些系统通过强制所有用户提交侵入式验证才能访问年龄限制内容，破坏了隐私保护，实质上终结了匿名浏览。作者暗示这种权衡并不相称——为了一项未必能有效保护儿童的合规措施，牺牲了普遍的数据安全。

本质上，核心论点是：年龄验证强制措施对全体网络用户的数据保护和隐私构成了系统性威胁，代表了一种危险的政策陷阱。

---

## 2. 瓢虫采用Rust语言

**原文标题**: Ladybird adopts Rust

**原文链接**: [https://ladybird.org/posts/adopting-rust/](https://ladybird.org/posts/adopting-rust/)

瓢虫浏览器项目已决定采用内存安全的Rust语言替代代码库中的C++。尽管Rust在2024年因其与网络面向对象编程模型适配度低而曾被否决，但其生态系统的成熟度以及在Firefox和Chromium中的广泛应用，使其成为符合长期发展需求的务实选择。

首个移植的核心子系统是JavaScript引擎LibJS。借助AI工具辅助人工翻译，约2.5万行代码的移植工作在大约两周内完成。核心目标是确保**与C++版本输出结果完全字节一致**，因此当前Rust代码有意沿用了C++的编程模式。通过超过6.5万项测试及实际网页浏览验证，功能与性能均实现零倒退。

未来Rust开发将与现有C++工作并行推进。核心团队将审慎管理移植流程，新的Rust代码将通过既定接口与C++代码共存。当前首要任务仍是确保兼容性，后续计划将移植代码重构为更符合Rust语言特性的形式。

---

## 3. 展示 HN：PgDog——无需更改应用即可扩展 Postgres

**原文标题**: Show HN: PgDog – Scale Postgres without changing the app

**原文链接**: [https://github.com/pgdogdev/pgdog](https://github.com/pgdogdev/pgdog)

PgDog是一款基于Rust开发的PostgreSQL代理，旨在无需修改应用即可扩展数据库。它提供连接池、跨副本的负载均衡以及分片支持。该工具智能解析查询，将写操作路由至主库、读操作路由至副本，并能自动处理故障转移。在分片方面，支持基于分区和基于架构的方法，通过分片键路由查询，甚至支持通过两阶段提交实现跨分片操作以保证一致性。PgDog还包含唯一ID生成、在线分片键更新以及无需停机的重新分片流程等功能。它支持通过Kubernetes、AWS或Docker部署，并通过OpenMetrics提供监控。配置采用文件方式，致力于成为PostgreSQL扩展的无缝解决方案。

---

## 4. 美国人正在破坏Flock监控摄像头。

**原文标题**: Americans are destroying Flock surveillance cameras

**原文链接**: [https://techcrunch.com/2026/02/23/americans-are-destroying-flock-surveillance-cameras/](https://techcrunch.com/2026/02/23/americans-are-destroying-flock-surveillance-cameras/)

本文报道了美国各地针对Flock Safety公司自动车牌识别（ALPR）摄像头的破坏行为日益增多的趋势。这种破坏行为源于公众对监控技术协助美国移民与海关执法局（ICE）实施驱逐行动的愤怒。

作为一家估值数十亿美元的初创企业，Flock运营着一个庞大的摄像头网络以追踪车辆动向。尽管该公司声明未直接与ICE共享数据，但报告显示，有权访问数据的当地警察部门已将这些数据提供给联邦当局，从而助长了移民执法行动。

作为回应，一些社区正在推动终止合同，而另一些则采取了直接行动。从加利福尼亚州到康涅狄格州，都出现了摄像头被砸毁、切断和喷涂的案例。文章列举了具体事例，例如在加利福尼亚州的拉梅萨市，尽管居民反对，市议会仍投票决定保留摄像头，此后不久这些摄像头便遭到破坏。

这种反弹是更广泛的隐私与监控辩论的一部分。一个名为DeFlock的项目绘制了全国约8万个此类摄像头的位置，数十个城市已拒绝采用该技术。一些警察部门也已采取措施阻止联邦机构访问其ALPR系统。Flock公司拒绝就其被破坏摄像头的数量置评。

---

## 5. “维京人”是一种职业描述，而非遗传问题：古代DNA研究揭示

**原文标题**: 'Viking' was a job description, not a matter of heredity: Ancient DNA study

**原文链接**: [https://www.science.org/content/article/viking-was-job-description-not-matter-heredity-massive-ancient-dna-study-shows](https://www.science.org/content/article/viking-was-job-description-not-matter-heredity-massive-ancient-dna-study-shows)

根据《科学》杂志的文章，以下是简明摘要：

一项针对维京时代墓葬古DNA的里程碑式研究，从根本上重塑了我们对维京人身份的理解。通过分析欧洲各地400多具人类遗骸的基因组，研究人员发现，“维京人”并非一种独特的遗传或种族身份，而主要是一种职业描述或活动。

关键发现表明，维京时代（约公元750-1050年）是一个人口广泛流动和文化交流的时期。遗传数据显示：

*   **来源多样：** 以维京风格器物（如剑和船）陪葬的个体在遗传上具有多样性。他们不仅来自斯堪的纳维亚，还来自南欧和亚洲，这表明不同背景的人都可以接受维京人的生活方式。
*   **本地融入：** 在苏格兰等地区，研究发现当地人以维京墓葬形式下葬，表明他们已完全接纳维京文化。反之，在一些没有维京考古记录的地区也发现了斯堪的纳维亚的遗传谱系。
*   **家族流动：** 对爱沙尼亚遗骸的分析显示，在一次袭击中丧生的四兄弟被合葬在一起，表明维京远征可能是家族事业。
*   **非单一族群：** 不存在单一的“维京”基因库。来自现今瑞典、挪威和丹麦的不同群体在遗传上彼此有别，且前往不同的目的地（例如，瑞典人主要向东前往波罗的海地区，挪威人则前往爱尔兰和苏格兰）。

本质上，研究得出结论：维京人身份更多是一种社会和文化角色——涉及劫掠、贸易和探索——可以由不同遗传背景的个体承担，而非特定、同质的斯堪的纳维亚人群的遗传特质。

---

## 6. UNIX99，一款适用于TI-99/4A的类UNIX操作系统

**原文标题**: UNIX99, a UNIX-like OS for the TI-99/4A

**原文链接**: [https://forums.atariage.com/topic/380883-unix99-a-unix-like-os-for-the-ti-994a/](https://forums.atariage.com/topic/380883-unix99-a-unix-like-os-for-the-ti-994a/)

**《UNIX99：为TI-99/4A打造的类UNIX操作系统》概要**

本文探讨了**UNIX99**项目，该项目旨在为经典的**TI-99/4A**家用计算机（约1981年）开发一个类Unix操作系统。鉴于该系统的硬件限制极为严苛——仅配备3MHz的TMS9900 CPU、通常只有**16KB内存**，且无内置存储设备，这一成果是一项重要的技术成就。

项目开发者已成功将一个小型、自定义的类Unix内核移植到该机器上。主要特性与成果包括：
*   具备少量基本Unix命令（如`ls`、`cat`、`echo`）的**命令行界面**。
*   支持**FAT16文件系统**，可通过现代外设（NanoPEB/CF7+）在SD卡上存储和加载数据。
*   **多任务处理能力**，内核能够同时运行两个简单进程。
*   **内存管理**机制，利用TI的卡带空间存放内核，并采用存储体切换技术以在16KB内存限制下工作。

该项目被定位为**概念验证与教育性质**，旨在复古硬件上展示操作系统核心原理。它并非完整的Unix移植，而是一个受其设计启发的最小化自定义内核。项目仍在持续开发中，开发者定期在论坛上发布更新、技术细节及汇编源代码，并邀请复古计算社区参与讨论。当前主要挑战仍是原硬件内存极度有限，且缺乏内存管理单元（MMU）。

---

## 7. 爱思唯尔关闭其金融期刊引证联盟。

**原文标题**: Elsevier shuts down its finance journal citation cartel

**原文链接**: [https://www.chrisbrunet.com/p/elsevier-shuts-down-its-finance-journal](https://www.chrisbrunet.com/p/elsevier-shuts-down-its-finance-journal)

本文详细揭露了布莱恩·M·卢西教授在爱思唯尔金融期刊体系内策划的大型引用联盟事件及其后续影响。该计划中，卢西在担任多家爱思唯尔期刊编辑期间，绕过同行评审程序，违规审核并发表了多篇自己合著的论文。这种编辑权力的滥用，结合其与紧密合作的作者及编辑群体（包括其频繁合作者塞缪尔·维涅）进行的系统性“引用堆叠”操作，人为抬高了引用次数和期刊影响因子。

此次丑闻导致12篇累计引用超5000次的论文被撤稿，卢西和维涅也被免去五家爱思唯尔期刊的编辑职务。一份匿名预印本及后续学术分析提供了该协同引用圈的数据证据，该圈层在2020年爱思唯尔推出“金融期刊生态系统”后日益猖獗。

文章指出，这桩丑闻是爱思唯尔利润驱动模式下滋生的“公开秘密”——该模式从大量自引出版物中获益。文章进一步提出对潜在金融腐败的严重质疑，暗示卢西和维涅的私人咨询公司可能通过出售作者署名权、编委职位或出版建议等方式将此计划变现。核心指控在于，这实质上是学术出版最高层默许的“论文工厂”，通过利用系统性激励来牟取利益与声望。

---

## 8. 展示HN：Sowbot——开源硬件农业机器人（ROS2，RTK GPS）

**原文标题**: Show HN: Sowbot – open-hardware agricultural robot (ROS2, RTK GPS)

**原文链接**: [https://sowbot.co.uk/](https://sowbot.co.uk/)

Sowbot是一个开源硬件农业机器人生态系统，旨在帮助研究人员和农民采用可持续、可扩展的机器人技术，无需依赖专有系统。其目标是通过提供可复现的平台来缩短开发时间，从而弥合“原型鸿沟”。

该系统的核心是**“开放核心”**——一个坚固防水的计算单元，内置两块开源硬件单板计算机。一块负责实时控制、导航与安全功能，另一块则处理感知与人工智能任务（如物体检测）。它具备厘米级精度的RTK GPS、CAN总线通信功能，且所有原理图均为开源授权。

该核心驱动着**“Sowbot”**参考平台——一款模块化、可直接投入田间作业的机器人，配备四个高扭矩轮毂电机、钠离子电池及悬挂系统。为便于开发，还提供更小型的**Sowbot Mini**和**Pico**平台。

**软件**方面提供多种技术栈。系统采用开源**Lizard**框架进行实时任务编排，并可基于**RoSys**实现快速Python控制，或通过**DevKit ROS**实现完整的ROS 2集成、仿真与互操作性。

总体而言，Sowbot致力于为初创企业和研究人员提供稳定开放的基础平台，使其能专注于农业算法创新，而非底层软硬件集成工作。

---

## 9. Show HN: Shibuya – 基于 Rust 的高性能 WAF，集成 eBPF 与机器学习引擎

**原文标题**: Show HN: Shibuya – A High-Performance WAF in Rust with eBPF and ML Engine

**原文链接**: [https://ghostklan.com/shibuya.html](https://ghostklan.com/shibuya.html)

涩谷是一款用Rust开发的开源高性能Web应用防火墙（WAF）。其核心功能包括集成超过615条OWASP核心规则集（CRS）规则、用于异常检测和攻击分类的双机器学习引擎，以及通过eBPF/XDP实现近即时（约1微秒）内核级数据包拦截。

其突出差异化特性包括可扩展的WASM插件系统、用于在生产环境中无风险测试规则的“影子模式”，以及对OpenAPI和GraphQL API的原生保护。该产品还独特地内置了名为“足轻”的漏洞应用实验室用于测试。

该项目提供完整的36页SvelteKit仪表板进行管理监控。其开源“轻量版”免费提供多租户、RBAC和联邦学习等企业级功能，同时提供付费企业版。性能基准测试显示其P99延迟开销低于5毫秒。

---

## 10. 灯塔：极端隔离如何改变身心

**原文标题**: The Lighthouse: How extreme isolation transforms the body and mind

**原文链接**: [https://www.newscientist.com/article/2231732-the-lighthouse-how-extreme-isolation-transforms-the-body-and-mind/](https://www.newscientist.com/article/2231732-the-lighthouse-how-extreme-isolation-transforms-the-body-and-mind/)

本文以电影《灯塔》为案例，探讨极端隔离对心理和生理的影响。影片讲述了偏远岛屿上两名灯塔看守人精神状态随时间逐渐恶化的故事。

主要观点包括：
*   **幻觉与精神困扰：** 心理学家萨里塔·罗宾逊指出，幻觉在隔离状态下很常见，尤其是在感官剥夺时，并引用了1950年代的实验——志愿者在独处数小时后便出现幻觉。
*   **健康影响：** 文章认为社交隔离对身心健康均有损害，因为人类本质上是社会性生物。
*   **压力与情感联结：** 在这种高压情境下，催产素分泌增加可能导致强烈而不稳定的社交纽带，正如影片中人物关系所展现的那样。
*   **电影呈现：** 文章强调影片如何通过鲜明的意象、声音和演员表演，视觉化地呈现了这种陷入疯狂与执念的过程。

总之，文章借助《灯塔》中的心理恐怖元素，探讨了隔离对人心的真实而深远的影响，包括幻觉、精神恶化以及压力下复杂的社会动态。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 2 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 3 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 4 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 5 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 6 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 7 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 8 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 9 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 10 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 11 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 12 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 13 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 14 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 15 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 16 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 17 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 18 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 19 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 20 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 21 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 22 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 23 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 24 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 25 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 26 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 27 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 28 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 29 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 30 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 31 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 32 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 33 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 34 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 35 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 36 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 37 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 38 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 39 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 40 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 41 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 42 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 43 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 44 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 45 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 46 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 47 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 48 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 49 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 50 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 51 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 52 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 53 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 54 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 55 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 56 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 57 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 58 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 59 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 60 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 61 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 62 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 63 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 64 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 65 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 66 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 67 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 68 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 69 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 70 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 71 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 72 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 73 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 74 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 75 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 76 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 77 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 78 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 79 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 80 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 81 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 82 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 83 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 84 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 85 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 86 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 87 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 88 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 89 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 90 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 91 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 92 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 93 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 94 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 95 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 96 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 97 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 98 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 99 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 100 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 101 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 102 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 103 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 104 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 105 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 106 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 107 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 108 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 109 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 110 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 111 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 112 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 113 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 114 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 115 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 116 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 117 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 118 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 119 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 120 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 121 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 122 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 123 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 124 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 125 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 126 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 127 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 128 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 129 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 130 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 131 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 132 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 133 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 134 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 135 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 136 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 137 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 138 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 139 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 140 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 141 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 142 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 143 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 144 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 145 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 146 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 147 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 148 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 149 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 150 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 151 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 152 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 153 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 154 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 155 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 156 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 157 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 158 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 159 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 160 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 161 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 162 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 163 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 164 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 165 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 166 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 167 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 168 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 169 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 170 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 171 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 172 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 173 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 174 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 175 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 176 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 177 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 178 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 179 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 180 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 181 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 182 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 183 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 184 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 185 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 186 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 187 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 188 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 189 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 190 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 191 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 192 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 193 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 194 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 195 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 196 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 197 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 198 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 199 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 200 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 201 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 202 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 203 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 204 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 205 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 206 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 207 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 208 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 209 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 210 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 211 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 212 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 213 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 214 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 215 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 216 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 217 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 218 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 219 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 220 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 221 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 222 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 223 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 224 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 225 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 226 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 227 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 228 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 229 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 230 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 231 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 232 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 233 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 234 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 235 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 236 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 237 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 238 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 239 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 240 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 241 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 242 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 243 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 244 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 245 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 246 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 247 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 248 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 249 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 250 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 251 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 252 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 253 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 254 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 255 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 256 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 257 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 258 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 259 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 260 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 261 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 262 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 263 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 264 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 265 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 266 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 267 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 268 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 269 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 270 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 271 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 272 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 273 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 274 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 275 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 276 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 277 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 278 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 279 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 280 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 281 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 282 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 283 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 284 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 285 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 286 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 287 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 288 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 289 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 290 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 291 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 292 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 293 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 294 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 295 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 296 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 297 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 298 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 299 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 300 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 301 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 302 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 303 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 304 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 305 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 306 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 307 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 308 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 309 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 310 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 311 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 312 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 313 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 314 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 315 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 316 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 317 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 318 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 319 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 320 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 321 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 322 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 323 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 324 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 325 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 326 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 327 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 328 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 329 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 330 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 331 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 332 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 333 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 334 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 335 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 336 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 337 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 338 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
