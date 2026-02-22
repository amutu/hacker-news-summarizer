# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-22.md)

*最后自动更新时间: 2026-02-22 20:35:11*
## 1. 我创建了Timeframe，我们家的电子纸仪表板。

**原文标题**: I built Timeframe, our family e-paper dashboard

**原文链接**: [https://hawksley.org/2026/02/17/timeframe.html](https://hawksley.org/2026/02/17/timeframe.html)

过去十年间，乔尔·霍克斯利开发了名为**Timeframe**的家庭仪表盘系统，该系统能在电子墨水屏上展示日历、天气和智能家居数据。项目最初使用背光魔镜和越狱Kindle制作原型，旨在满足家庭中对无干扰、一瞥即知的信息需求。

经过多种显示屏测试后，他最终选用Visionect电子墨水屏，因其出色的可读性和低功耗特性，并由定制的Ruby on Rails后端驱动。市场测试显示高昂成本是阻碍他人使用的门槛。2021年经历房屋火灾后，霍克斯利采用全新的高分辨率Boox Mira Pro屏幕重建系统，实现了**实时更新**和更精细的信息展示。

一次重大的后端改造将**Home Assistant**集成为主要数据源，通过利用其现有集成功能大幅简化了代码。这一转变使仪表盘成为家庭的简明**状态指示器**，仅显示相关警报（如未关的门或已完成的洗衣），而非持续的数据流。

如今，Timeframe已成为日常生活中可靠的存在。霍克斯利希望将其产品化，但指出仍面临挑战：需要进一步强化软件、完成Home Assistant集成，并降低当前硬件配置的高成本与复杂度。

---

## 2. 注意力媒体 ≠ 社交网络

**原文标题**: Attention Media ≠ Social Networks

**原文链接**: [https://susam.net/attention-media-vs-social-networks.html](https://susam.net/attention-media-vs-social-networks.html)

文章认为，主流社交媒体平台已从根本上从真正的社交网络转变为“注意力媒体”。作者回顾了Web 2.0早期乐观的时代，那时像早期的推特这样的平台促进了用户之间的直接联系和有意义的通知。

随着无限滚动和旨在占用用户时间的操纵性、无关通知等功能的引入，情况发生了变化。作者的核心不满在于社交信息流的退化——它从显示所选朋友的更新，转变为算法推广随机陌生人的内容，使体验变得令人不堪重负且缺乏人情味。

因此，作者放弃了这些服务，认为它们对人们宝贵的注意力充满敌意。文章最后提出，去中心化平台Mastodon是对原始社交网络理想的回归。在Mastodon上，用户的信息流仅包含有意选择的账户的更新，创造了一种平静、可预测且由用户控制的体验，不受算法操纵和注意力攫取策略的影响。

---

## 3. 修复你的工具

**原文标题**: Fix your tools

**原文链接**: [https://ochagavia.nl/blog/fix-your-tools/](https://ochagavia.nl/blog/fix-your-tools/)

作者讲述了一次调试开源库的挫败经历。当调试器中的断点被莫名忽略后，他们陷入了“隧道视野”，绕过了工具问题转而编写额外的日志代码——这是一种低效且耗时的方法。

关键顿悟在于：急于解决核心缺陷的迫切感反而阻碍了进展。作者暂停下来修复调试器本身，而这仅需一个简单的配置调整。工具恢复正常后，他们迅速获得了诊断和解决原始问题所需的洞察。

文章的核心教训是一个悖论：修复问题的紧迫性可能使程序员忽视那些对任务至关重要的故障工具。作者建议开发者优先修复工具，因为这种对基础效率的投资终将节省时间，并带来更好的结果。

---

## 4. 展示 HN：适用于 macOS 的本地优先 Linux 微虚拟机

**原文标题**: Show HN: Local-First Linux MicroVMs for macOS

**原文链接**: [https://shuru.run](https://shuru.run)

本文介绍**Shuru**——一款专为AI智能体工作负载设计的本地优先工具，可在macOS上运行轻量级临时Linux微虚拟机。

它基于Apple Silicon原生构建，采用苹果Virtualization.framework框架，无需Docker或模拟层即可实现接近原生的性能。其核心理念是**默认临时性**：每个虚拟机都从纯净的Alpine Linux根文件系统启动，确保除非显式保存，否则不会产生持久化变更。

主要特性包括：
*   **检查点功能：** 用户可将虚拟机磁盘状态保存为命名快照（类似git提交），支持即时恢复、分支创建与复用
*   **安全性：** 虚拟机默认离线运行，提供可选的NAT网络连接与可配置资源（CPU、内存、磁盘）
*   **端口转发：** 即使没有完整网络访问权限，仍可通过vsock隧道将客户机端口暴露给主机

通过简洁的命令行工具（`shuru run`），用户可启动虚拟机、执行命令并管理检查点。主要应用场景是为AI智能体提供安全隔离的沙箱环境，用于执行代码、使用工具、运行评估测试，以及常规开发测试。

仅需一行命令即可完成安装，Shuru致力于成为macOS上AI驱动任务的快速可弃置基础设施层。

---

## 5. FreeBSD上的Linux模拟器体验如同魔法般神奇

**原文标题**: Linuxulator on FreeBSD Feels Like Magic

**原文链接**: [https://hayzam.com/blog/02-linuxulator-is-awesome/](https://hayzam.com/blog/02-linuxulator-is-awesome/)

作者是一名Visual Studio Code用户，描述了在FreeBSD和OpenWRT项目中通过使用VS Code的Remote SSH扩展（这些平台官方并不支持该扩展）克服了重大生产力障碍的经历。

在FreeBSD上，解决方案包括启用Linuxulator模拟层（`linux_base-rl9`）并配置SSH连接以使用Linux环境路径。一个关键技巧是通过SSH客户端设置`BASH_ENV`变量，使其仅针对VS Code会话加载自定义路径文件（`.bash_linux`），从而保持主系统环境的整洁。

令人惊讶的是，该配置运行得非常完美。所有重要的VS Code扩展和语言服务器均无故障运行。唯一的小问题是Rollup缺少FreeBSD二进制文件，但通过npm覆盖强制使用其WASM构建版本，这个问题也轻松解决了。

作者总结道，这种利用FreeBSD强大的Linux ABI兼容性的“神奇”配置提供了快速且功能齐全的远程开发体验，消除了之前使用NFS或SSHFS挂载时的挫败感和性能问题。

---

## 6. 新鲜文件资源管理器 – 用于导航近期工作的VS Code扩展

**原文标题**: Fresh File Explorer – VS Code extension for navigating recent work

**原文链接**: [https://github.com/FreHu/vscode-fresh-file-explorer](https://github.com/FreHu/vscode-fresh-file-explorer)

**Fresh File Explorer** 是一款 VS Code 扩展，旨在帮助开发者通过聚焦待处理的更改和最近的 Git 历史来导航近期工作。其核心功能是**智能文件树**，可按目录分组显示已修改的文件，同时展示文件数量和已删除文件（可一键恢复）。用户可在查看未提交的更改或可配置时间窗口内修改的文件之间切换。

主要功能包括：通过**热图着色**可视化编辑的新近程度、用于重要文件或笔记的**置顶区域**，以及按作者或提交进行**筛选**以排除大型自动化更改带来的干扰。它支持**多仓库**设置，并提供专门的**搜索工具**，例如仅在“新鲜”文件中搜索或链式搜索。

该扩展通过保持近期更改的视觉可访问性，解决了工作流中的常见痛点，例如提交后丢失上下文或需要恢复已删除文件。它定位为专注于单一视图的替代方案，相较于 GitLens 等更全面的工具，更优先提供对当前工作的即时概览。

---

## 7. 展示 HN：用 CSS 构建的 3D 麻将

**原文标题**: Show HN: 3D Mahjong, Built in CSS

**原文链接**: [https://voxjong.com](https://voxjong.com)

这是一篇“Show HN”帖子，宣布推出**VoxJong**——一款主要使用CSS构建的3D麻将接龙游戏。

开发者的主要成就是利用**CSS实现核心的3D渲染与布局**（可能辅以少量JavaScript处理游戏逻辑），创建了完全可玩的三维牌面匹配游戏。该项目展示了先进的CSS技术，包括3D变换和等距投影。

重点突出的功能是**等距视角与俯视视角的切换**，允许玩家改变对牌面布局的观察角度。帖子还提到了缩放控制功能，体现出对用户交互和视觉清晰度的关注。

本质上，这个项目展示了一项将经典2D益智游戏转化为交互式3D体验的技术实验，凸显了在游戏开发中对网页技术（特别是CSS）的创新与高效运用。

---

## 8. 什么是数据库事务？

**原文标题**: What is a database transaction?

**原文链接**: [https://planetscale.com/blog/database-transactions](https://planetscale.com/blog/database-transactions)

数据库事务是作为单一原子工作单元执行的一系列操作（读取、写入、更新、删除）。它以`BEGIN`语句开始，以`COMMIT`（应用所有更改）或`ROLLBACK`（撤销所有更改）结束。这种原子性确保了数据完整性，尤其是在多用户并发访问数据库时。

其关键特性是**一致性读取**，它隔离了事务对数据的视图，使其不受其他并发事务在提交前所做更改的影响。MySQL和Postgres以不同方式实现这一点：Postgres采用**多版本并发控制（MVCC）**，创建新的行版本；而MySQL使用**撤销日志**来重建先前的行状态。

数据库提供四种**隔离级别**来控制这种可见性，并在一致性与性能之间进行权衡：可串行化（最严格）、可重复读、读已提交和读未提交（最弱，允许"脏读"）。这些级别定义了允许出现哪些现象——如幻读或不可重复读。

在严格的可串行化级别下处理对相同数据的**并发写入**时，两种数据库也有差异。MySQL采用**行级锁定**（可能导致死锁），而Postgres使用**可串行化快照隔离（SSI）**，通过乐观检测冲突并中止其中一个事务来解决冲突。

总之，事务为SQL数据库中可靠、并发的数据操作提供了关键基础，不同系统通过独特的架构机制来实现核心保证。

---

## 9. 国际盒模型认知日（2014年）

**原文标题**: International box-sizing Awareness Day (2014)

**原文链接**: [https://css-tricks.com/international-box-sizing-awareness-day/](https://css-tricks.com/international-box-sizing-awareness-day/)

本文宣布将2月1日定为“国际盒模型认知日”，以庆祝CSS属性`box-sizing: border-box`。这一日期旨在纪念保罗·爱尔兰（Paul Irish）倡导该属性全面应用的有影响力的文章。

作者建议通过选择器`*, *:before, *:after`全局应用此属性，确保所有元素及其伪元素均采用border-box模型，从而覆盖默认的content-box模型。该模型备受推崇，因为它使元素指定的宽度即为最终渲染宽度，包含内边距和边框。这消除了默认模型下所需的繁琐计算——在默认模型中，内边距和边框会增加总宽度，而border-box模型让布局（尤其是使用百分比时）变得更加可预测和易于管理。

文章提供了一个详细、针对特定版本且包含浏览器厂商前缀的CSS代码块，以确保广泛的浏览器兼容性，但也指出Autoprefixer等工具可自动处理此类问题。最后再次强调该属性的核心优势：通过确保盒子尺寸的行为符合直觉来简化CSS开发，这一原则对于创建网格列和保持布局一致性尤为宝贵。

---

## 10. Xweather Live – 交互式全球矢量天气地图

**原文标题**: Xweather Live – Interactive global vector weather map

**原文链接**: [https://live.xweather.com/](https://live.xweather.com/)

**概述：**

Xweather Live 是一款基于网页的交互式全球天气地图，通过动态矢量图形可视化实时及预报天气数据。其核心特色在于动态地图，能以清晰流畅的动画展示关键气象要素，如风场模式（采用流线显示）、降水、气压系统和温度。

该平台注重用户交互，允许个人缩放、平移和切换不同天气图层以自定义视图。它通过展示未来几天的天气状况提供实用预报，便于用户规划行程。

面向天气爱好者和普通大众，它将复杂数据转化为易于理解且引人入胜的可视化形式。该服务可直接通过网页浏览器访问，无需专业软件，通常可免费使用。本质上，Xweather Live 是一个动态交互的全球天气动态图集。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 2 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 3 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 4 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 5 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 6 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 7 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 8 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 9 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 10 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 11 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 12 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 13 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 14 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 15 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 16 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 17 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 18 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 19 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 20 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 21 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 22 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 23 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 24 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 25 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 26 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 27 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 28 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 29 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 30 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 31 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 32 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 33 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 34 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 35 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 36 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 37 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 38 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 39 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 40 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 41 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 42 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 43 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 44 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 45 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 46 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 47 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 48 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 49 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 50 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 51 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 52 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 53 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 54 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 55 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 56 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 57 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 58 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 59 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 60 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 61 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 62 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 63 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 64 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 65 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 66 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 67 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 68 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 69 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 70 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 71 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 72 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 73 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 74 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 75 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 76 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 77 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 78 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 79 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 80 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 81 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 82 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 83 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 84 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 85 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 86 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 87 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 88 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 89 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 90 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 91 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 92 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 93 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 94 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 95 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 96 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 97 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 98 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 99 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 100 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 101 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 102 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 103 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 104 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 105 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 106 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 107 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 108 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 109 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 110 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 111 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 112 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 113 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 114 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 115 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 116 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 117 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 118 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 119 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 120 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 121 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 122 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 123 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 124 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 125 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 126 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 127 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 128 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 129 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 130 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 131 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 132 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 133 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 134 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 135 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 136 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 137 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 138 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 139 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 140 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 141 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 142 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 143 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 144 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 145 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 146 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 147 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 148 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 149 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 150 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 151 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 152 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 153 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 154 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 155 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 156 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 157 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 158 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 159 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 160 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 161 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 162 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 163 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 164 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 165 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 166 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 167 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 168 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 169 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 170 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 171 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 172 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 173 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 174 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 175 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 176 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 177 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 178 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 179 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 180 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 181 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 182 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 183 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 184 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 185 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 186 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 187 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 188 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 189 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 190 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 191 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 192 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 193 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 194 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 195 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 196 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 197 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 198 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 199 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 200 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 201 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 202 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 203 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 204 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 205 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 206 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 207 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 208 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 209 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 210 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 211 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 212 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 213 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 214 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 215 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 216 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 217 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 218 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 219 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 220 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 221 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 222 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 223 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 224 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 225 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 226 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 227 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 228 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 229 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 230 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 231 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 232 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 233 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 234 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 235 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 236 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 237 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 238 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 239 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 240 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 241 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 242 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 243 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 244 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 245 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 246 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 247 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 248 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 249 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 250 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 251 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 252 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 253 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 254 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 255 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 256 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 257 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 258 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 259 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 260 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 261 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 262 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 263 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 264 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 265 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 266 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 267 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 268 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 269 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 270 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 271 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 272 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 273 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 274 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 275 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 276 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 277 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 278 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 279 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 280 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 281 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 282 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 283 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 284 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 285 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 286 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 287 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 288 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 289 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 290 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 291 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 292 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 293 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 294 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 295 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 296 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 297 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 298 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 299 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 300 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 301 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 302 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 303 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 304 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 305 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 306 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 307 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 308 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 309 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 310 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 311 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 312 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 313 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 314 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 315 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 316 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 317 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 318 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 319 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 320 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 321 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 322 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 323 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 324 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 325 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 326 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 327 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 328 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 329 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 330 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 331 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 332 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 333 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 334 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 335 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 336 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 337 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
