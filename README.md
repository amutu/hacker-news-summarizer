# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-07.md)

*最后自动更新时间: 2026-03-07 20:37:56*
## 1. Docker容器十年历程

**原文标题**: A Decade of Docker Containers

**原文链接**: [https://cacm.acm.org/research/a-decade-of-docker-containers/](https://cacm.acm.org/research/a-decade-of-docker-containers/)

**《Docker容器十年回顾》摘要**

本文回顾了Docker容器自2013年问世以来带来的变革性影响。文章指出，Docker最核心且持久的贡献并非容器技术本身（类似Linux容器LXC等技术早已存在），而是创造了一种简单、标准化的开发者体验。通过将应用及其依赖打包成可移植、"一次构建，随处运行"的**Docker镜像**，Docker彻底解决了普遍存在的"在我机器上能运行"的难题，使容器技术得以普及。

这项以开发者为核心的技术创新点燃了现代云原生生态。标准化的镜像格式成为软件部署的基本单元，直接推动了**以Kubernetes为代表的编排平台**的兴起，实现了大规模容器管理。文章将Docker定位为行业焦点从以基础设施为中心的虚拟机转向以应用为中心的容器的催化剂，为微服务架构、持续集成/持续部署（CI/CD）及DevOps实践奠定了基础。

尽管Docker公司在商业化进程中面临挑战，并将编排领域让位于Kubernetes，但其开源容器平台已成为无处不在的基础设施。文章总结道，Docker留下的真正遗产是**其标准化的容器化模型**——这一模型已成为构建、分发和运行分布式应用的事实基础，在过去十年间从根本上重塑了软件开发和部署的格局。

---

## 2. 可能改变癌症治疗的毫秒瞬间

**原文标题**: The Millisecond That Could Change Cancer Treatment

**原文链接**: [https://spectrum.ieee.org/flash-radiotherapy](https://spectrum.ieee.org/flash-radiotherapy)

FLASH放疗是一种前景广阔的新技术，它能在不到十分之一秒的瞬间释放超高剂量辐射。这种颠覆传统数周治疗模式的方法，已在大量研究中被证实能有效杀灭肿瘤，同时对周围健康组织造成的损伤显著降低。

该效应于20世纪90年代被偶然发现，并在2014年一篇里程碑式论文中得到验证。虽然确切的生物学机制仍是未解之谜，但主流理论认为，健康细胞与癌细胞在处理辐射产生的活性氧物种时存在差异。

当前主要挑战在于开发能将这种高剂量、高精度射线束送达人体深部的技术。研究人员正在改造粒子加速器，欧洲核子研究中心和斯坦福大学/SLAC等机构是该领域的核心研发力量。实现FLASH放疗的主要候选粒子包括电子、质子和碳离子，它们在成本、复杂性和抵达深部肿瘤的能力方面各有优势。

若能成功推广至临床广泛应用，FLASH疗法有望通过实现更强效、更快速、副作用更少且可及性更广的治疗方式，彻底改变癌症治疗格局。

---

## 3. 从现有乐高NXT积木中提取固件

**原文标题**: Dumping Lego NXT firmware off of an existing brick

**原文链接**: [https://arcanenibble.github.io/dumping-lego-nxt-firmware-off-of-an-existing-brick.html](https://arcanenibble.github.io/dumping-lego-nxt-firmware-off-of-an-existing-brick.html)

作者试图为Pybricks项目存档乐高NXT原始固件（版本1.01）。初步研究未发现现存副本，而使用官方固件更新工具或JTAG等标准方法要么具有破坏性，要么需要侵入式硬件访问。

通过研究NXT的软件架构，作者发现了“IO映射”功能——这是固件驱动程序与其虚拟机（VM）之间的一种文档化接口。通过分析公开可用的固件源代码，他们发现虚拟机的IO映射包含一个可写函数指针（`pRCHandler`），用于处理来自主机的直接命令。

这暴露了一个关键漏洞：该函数指针可通过标准USB通信协议进行读取和写入。作者使用Python和PyUSB库，通过读取虚拟机IO映射进行了概念验证。他们成功读取了`pRCHHandler`指针的内存地址，证实通过覆盖该指针可实现任意代码执行——这一重大安全漏洞可在无需硬件修改的情况下导出完整固件。

---

## 4. Ki编辑器——一款基于抽象语法树操作的编辑器。

**原文标题**: Ki Editor - an editor that operates on the AST

**原文链接**: [https://ki-editor.org/](https://ki-editor.org/)

**摘要**

Ki Editor 是一款从根本上改变开发者与代码交互方式的代码编辑器，它直接操作抽象语法树（AST）。其核心创新在于实现**一流的语法节点交互**，允许程序员将逻辑代码结构（如函数或条件语句）作为单个单元进行操控，而非编辑原始文本。这弥合了编码意图与操作之间的鸿沟，使复杂的重构和转换更直观且更不易出错。

编辑器通过**多重光标**功能强化了这一能力，该功能可用于对语法节点进行并行操作。此特性旨在彻底改变批量编辑，实现跨代码库不同部分的高精度、同步且一致的更改。

最后，Ki Editor 通过**选择模式**系统**重新定义了模态编辑**。这些模式标准化并扩展了不同粒度（如单词、行，尤其是语法节点）的导航与选择，在移动和编辑命令方面提供了前所未有的灵活性和一致性。

本质上，Ki Editor 定位为一款超越传统文本操作的工具，旨在使结构化代码编辑尽可能直接高效。

---

## 5. macOS代码注入：趣味探索，不求盈利（2024）

**原文标题**: macOS code injection for fun and no profit (2024)

**原文链接**: [https://mariozechner.at/posts/2024-07-20-macos-code-injection-fun/](https://mariozechner.at/posts/2024-07-20-macos-code-injection-fun/)

本文详细介绍了如何在macOS上进行基础代码注入，旨在教育目的，灵感源于该平台缺乏类似Live++的C/C++代码热重载工具。作者逐步演示了创建一个简单的测试程序和一个注入工具的过程，该工具能够附加到正在运行的进程、读写其内存并注入新代码。

关键步骤包括：
1.  **环境配置：** 使用CMake构建两个程序，并为注入工具签署`com.apple.security.cs.debugger`权限以授予类似调试器的权限。
2.  **附加进程：** 注入工具从文件中读取目标进程的PID和函数地址，然后使用`task_for_pid()`获取Mach任务端口以进行控制。
3.  **控制执行：** 使用`task_suspend()`暂停进程，使用`task_resume()`恢复进程，以安全地修改内存。
4.  **内存操作：** 使用`vm_write()`和`vm_read_overwrite()`读写和修改目标进程内的数据（例如更改全局变量）。
5.  **代码注入：** 将新函数（`bar()`）编译到注入工具中。注入工具使用`vm_allocate()`在目标进程中分配内存，将`bar()`的机器代码复制到该内存区域，并使用`vm_protect()`使其可执行。
6.  **重定向执行：** 最终目标是用“蹦床代码”（一小段跳转到新注入函数的代码）覆盖原始函数（`foo()`），尽管提供的摘录未完全详述此最后步骤。

本文作为实用指南，逐步介绍了使用macOS的Mach API进行基本进程操作和代码注入的技术。

---

## 6. 编译Prolog到Forth [pdf]

**原文标题**: Compiling Prolog to Forth [pdf]

**原文链接**: [https://vfxforth.com/flag/jfar/vol4/no4/article4.pdf](https://vfxforth.com/flag/jfar/vol4/no4/article4.pdf)

这份PDF似乎是一篇题为《将Prolog编译为Forth》的技术论文。虽然正文内容因PDF编码和格式数据而模糊不清，但标题和结构揭示了其核心主题。

文章的核心主题是设计和实现一个编译器，将高级逻辑编程语言Prolog翻译成低级、基于堆栈的编程语言Forth。由于两种语言之间存在根本差异，这是一项非平凡的任务：Prolog是声明式的，基于统一和回溯；而Forth是命令式、过程式的，并在显式数据堆栈上运行。

论文可能涵盖的关键点包括：
*   **挑战：** 解释Prolog基于逻辑的执行模型（归结、回溯搜索、统一）与Forth过程式、面向堆栈模型之间的语义鸿沟。
*   **编译策略：** 描述将Prolog概念映射到Forth原语所选用的方法。这将涉及使用Forth的词、堆栈（可能包括数据和返回堆栈）以及内存结构来表示Prolog的回溯控制流、变量绑定（统一）和子句数据库（事实和规则）。
*   **实现细节：** 概述编译器本身的架构，可能讨论中间表示或在Forth中实现的虚拟机模型，以承载Prolog运行时系统。
*   **结果与评估：** 评估编译结果，例如编译代码的性能特征、生成的Forth代码的效率，以及这种跨范式编译所涉及的权衡。

本质上，这篇论文记录了两个截然不同编程范式之间的桥梁，提出了一种在Forth系统典型的受限且高效环境中执行Prolog程序的解决方案。

---

## 7. 重现史前欧洲人的复杂烹饪技艺

**原文标题**: Re-creating the complex cuisine of prehistoric Europeans

**原文链接**: [https://arstechnica.com/science/2026/03/recreating-the-complex-cuisine-of-prehistoric-europeans/](https://arstechnica.com/science/2026/03/recreating-the-complex-cuisine-of-prehistoric-europeans/)

《公共科学图书馆·综合》期刊发表的一项新研究，通过分析6000至9000年前陶制烹饪容器上的残留物，重建了史前东欧狩猎-采集-渔猎族群的复杂饮食体系。研究人员结合扫描电子显微镜与脂质同位素分析技术，对来自沿海和内陆遗址的58块陶器碎片进行了检测。

研究显示这些族群拥有多样化、地域化的饮食结构。他们不仅食用鱼类和其他动物，还采集多种野生植物，包括野草、豆类、水果、浆果、绿叶蔬菜和根茎类植物。不同区域呈现出独特的食谱特征：顿河流域居民使用野生豆类和草籽，伏尔加河上游人群偏爱荚蒾浆果和小籽植物，波罗的海族群则将鱼类与浆果、块茎类食物混合食用。丹麦地区还发现了乳制品证据。

为验证推测，科学家使用复刻陶罐进行烹饪实验，在明火上烹煮浆果与鱼类等组合，并将残留物与古代样本对比。研究得出结论：早期欧洲人已能对特定本土食材进行主动加工和组合，形成精致的烹饪制备方式，这超越了对其生存方式的简单化认知。

---

## 8. 我们训练学生写得更糟，以证明他们不是机器人。

**原文标题**: We're Training Students to Write Worse to Prove They're Not Robots

**原文链接**: [https://www.techdirt.com/2026/03/06/were-training-students-to-write-worse-to-prove-theyre-not-robots-and-its-pushing-them-to-use-more-ai/](https://www.techdirt.com/2026/03/06/were-training-students-to-write-worse-to-prove-theyre-not-robots-and-its-pushing-them-to-use-more-ai/)

**《“我们正在训练学生写得更差，以证明他们不是机器人”一文摘要》**

文章指出，教育领域广泛使用的AI检测工具正在产生一种适得其反的效果：它正在训练学生故意写得更差，以避免被误判为作弊。这些工具常常将拼写正确、语法规范、结构清晰的写作标记为可能由AI生成。

因此，学生们正在学习如何刻意在作业中引入错误、别扭的措辞和非正式语言，仅仅是为了让文章在算法看来更“像人写的”。这形成了一个有害的反馈循环：目标从创作优质作品，转向了规避自动化监控。

文章认为，其中最大的讽刺在于，这种压力实际上正驱使更多学生去使用AI工具。他们用AI生成初稿，然后手动“降低质量”——加入错误。这比原创写作更耗时，且在教育效果上适得其反。或者，有些人可能会认为，既然无论如何都会被怀疑，那还不如索性大量使用AI。

文章批评这种动态对教学有害，它教导学生重视“看起来真实”的表象，而非实际的写作技巧和批判性思维。文章总结道，过度依赖有缺陷的检测软件，正在破坏其本意要保护的教育成果，制造了一种不信任的氛围，并 incentivizing 更糟糕的写作。

---

## 9. Plasma Bigscreen – KDE等离子体的10英尺界面

**原文标题**: Plasma Bigscreen – 10-foot interface for KDE plasma

**原文链接**: [https://plasma-bigscreen.org](https://plasma-bigscreen.org)

**Plasma Bigscreen** 是一款专为电视优化的开源 Linux 界面，旨在将电视、家庭影院电脑和机顶盒转变为可定制、由用户掌控的媒体中心。它基于 KDE Plasma 桌面环境和更广泛的 Linux 开源技术栈构建。

该界面专为 10 英尺（约 3 米）观看距离设计，可通过电视遥控器（通过 CEC）、游戏手柄、键盘、鼠标或通过 KDE Connect 使用手机轻松操作。中央的“主屏幕侧边栏”提供对应用、设置和运行任务的快速访问。

主要功能包括：专为电视优化的系统管理设置应用、支持 Steam、Kodi 和 Jellyfin 等流行应用（可通过包管理器或 Flathub 安装），以及对主屏幕布局、壁纸和主题的深度自定义。

该项目强调用户隐私、开放性和自由，旨在替代专有的封闭式电视平台。它由 KDE 社区开发，欢迎在编码、设计、翻译和测试方面做出贡献。Plasma Bigscreen 可在支持的 Linux 发行版上作为标准桌面环境安装。

---

## 10. 展示 HN：ANSI-Saver – 一款 macOS 屏幕保护程序

**原文标题**: Show HN: ANSI-Saver – A macOS Screensaver

**原文链接**: [https://github.com/lardissone/ansi-saver](https://github.com/lardissone/ansi-saver)

**ANSI-Saver** 是一款 macOS 屏保程序，用于展示来自 16colo.rs 档案库或用户本地收藏的经典 BBS 时代 ANSI 艺术图。它通过 libansilove 库渲染 .ANS 和 .ICE 等文件，以真实的 CP437 字体呈现，并以 60 帧/秒的速度在屏幕上平滑滚动。

主要功能包括可配置的滚动速度、针对 Retina 显示屏的渲染缩放，以及两种显示模式：连续垂直滚动（类似 BBS 文件列表）或单幅作品间的淡入淡出切换。用户还可选择在作品间显示文件名分隔符。

安装方式简单：为 Apple Silicon 或 Intel 芯片的 Mac（需 macOS Sequoia 15.0 或更高版本）下载预构建的二进制文件，或使用 Xcode 从源代码构建。由于缺少 Apple 代码签名，首次启动时用户需在系统设置中批准该屏保。

配置通过系统设置完成，用户可添加 16colo.rs 图包 URL（例如 ACiD 100、Mist 0222）或指向本地 ANSI 文件文件夹。作品会缓存在本地，并支持重新获取图包。该项目为开源（MIT 许可证），并感谢 libansilove 和 16colo.rs 档案库对 ANSI 艺术的保存。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 2 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 3 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 4 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 5 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 6 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 7 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 8 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 9 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 10 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 11 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 12 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 13 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 14 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 15 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 16 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 17 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 18 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 19 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 20 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 21 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 22 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 23 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 24 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 25 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 26 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 27 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 28 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 29 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 30 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 31 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 32 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 33 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 34 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 35 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 36 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 37 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 38 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 39 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 40 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 41 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 42 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 43 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 44 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 45 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 46 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 47 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 48 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 49 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 50 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 51 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 52 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 53 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 54 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 55 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 56 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 57 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 58 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 59 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 60 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 61 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 62 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 63 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 64 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 65 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 66 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 67 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 68 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 69 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 70 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 71 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 72 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 73 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 74 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 75 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 76 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 77 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 78 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 79 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 80 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 81 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 82 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 83 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 84 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 85 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 86 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 87 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 88 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 89 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 90 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 91 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 92 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 93 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 94 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 95 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 96 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 97 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 98 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 99 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 100 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 101 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 102 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 103 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 104 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 105 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 106 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 107 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 108 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 109 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 110 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 111 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 112 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 113 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 114 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 115 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 116 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 117 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 118 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 119 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 120 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 121 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 122 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 123 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 124 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 125 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 126 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 127 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 128 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 129 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 130 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 131 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 132 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 133 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 134 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 135 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 136 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 137 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 138 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 139 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 140 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 141 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 142 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 143 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 144 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 145 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 146 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 147 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 148 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 149 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 150 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 151 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 152 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 153 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 154 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 155 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 156 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 157 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 158 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 159 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 160 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 161 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 162 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 163 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 164 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 165 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 166 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 167 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 168 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 169 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 170 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 171 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 172 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 173 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 174 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 175 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 176 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 177 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 178 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 179 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 180 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 181 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 182 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 183 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 184 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 185 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 186 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 187 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 188 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 189 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 190 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 191 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 192 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 193 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 194 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 195 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 196 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 197 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 198 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 199 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 200 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 201 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 202 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 203 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 204 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 205 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 206 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 207 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 208 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 209 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 210 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 211 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 212 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 213 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 214 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 215 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 216 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 217 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 218 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 219 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 220 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 221 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 222 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 223 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 224 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 225 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 226 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 227 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 228 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 229 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 230 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 231 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 232 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 233 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 234 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 235 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 236 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 237 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 238 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 239 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 240 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 241 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 242 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 243 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 244 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 245 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 246 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 247 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 248 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 249 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 250 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 251 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 252 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 253 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 254 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 255 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 256 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 257 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 258 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 259 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 260 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 261 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 262 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 263 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 264 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 265 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 266 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 267 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 268 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 269 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 270 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 271 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 272 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 273 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 274 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 275 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 276 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 277 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 278 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 279 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 280 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 281 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 282 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 283 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 284 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 285 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 286 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 287 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 288 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 289 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 290 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 291 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 292 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 293 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 294 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 295 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 296 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 297 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 298 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 299 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 300 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 301 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 302 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 303 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 304 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 305 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 306 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 307 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 308 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 309 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 310 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 311 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 312 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 313 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 314 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 315 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 316 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 317 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 318 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 319 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 320 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 321 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 322 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 323 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 324 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 325 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 326 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 327 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 328 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 329 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 330 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 331 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 332 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 333 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 334 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 335 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 336 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 337 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 338 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 339 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 340 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 341 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 342 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 343 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 344 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 345 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 346 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 347 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 348 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 349 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 350 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
