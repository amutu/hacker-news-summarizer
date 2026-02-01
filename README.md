# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-01.md)

*最后自动更新时间: 2026-02-01 20:35:42*
## 1. 苹果I型电脑广告（1976年）

**原文标题**: Apple I Advertisement (1976)

**原文链接**: [http://apple1.chez.com/Apple1project/Gallery/Gallery.htm](http://apple1.chez.com/Apple1project/Gallery/Gallery.htm)

这则1976年的广告介绍了苹果公司的首款产品Apple I。它被定位为一款完整、低成本、集成于单块印刷电路板的微型计算机系统，售价666.66美元，包含4KB内存。

其核心卖点在于高度集成与易用性。该主板集成了MOS 6502微处理器、内置视频终端和存储器，无需昂贵嘈杂的电传打字机。用户只需连接键盘和视频显示器（或通过调制器连接电视）即可直接使用。系统支持显示960个字符，并内置可直接输入和调试程序的固件，省去了传统的前置开关与指示灯面板。

技术优势包括采用高效的新型4K动态内存芯片，使主板可搭载8KB内存并支持扩展至65KB。广告还宣传其可靠快速的数据存储磁带接口，并随机附赠Apple BASIC软件。

整体而言，广告将Apple I塑造为一款强大、经济、易用的系统，旨在为更广泛的用户开启编程、运行软件和游戏体验的计算机世界。

---

## 2. 冒险游戏制作工具：用于创建冒险游戏的开源软件

**原文标题**: Adventure Game Studio: OSS software for creating adventure games

**原文链接**: [https://www.adventuregamestudio.co.uk/](https://www.adventuregamestudio.co.uk/)

冒险游戏制作工具（AGS）是一款免费开源软件套件，专为创作点击式冒险游戏而设计。其核心功能是一个基于Windows的集成开发环境（IDE），将图形处理、脚本编写和测试工具整合为流畅的工作流程。使用AGS开发的游戏具有跨平台特性，可在Windows、Linux、iOS和Android系统上运行。

该软件由一个活跃的志愿者运营社区提供支持，通过论坛、Discord和社交媒体为用户提供帮助。官方网站作为社区枢纽，设有游戏展示区，收录了《五日陌生人》和《如果在冬夜，四位旅人》等获奖知名作品，并定期举办游戏开发马拉松等活动。

用户可直接从网站下载软件，网站同时接受捐赠以支持社区资源的服务器和维护成本。

---

## 3. Netbird – 开源零信任网络

**原文标题**: Netbird – Open Source Zero Trust Networking

**原文链接**: [https://netbird.io/](https://netbird.io/)

**Netbird – 开源零信任网络**

Netbird 是一个开源平台，旨在简化零信任网络访问（ZTNA）的实施。它提供了一个安全、加密的网状网络，无论设备物理位置如何，都能像在同一本地网络一样连接设备和私有资源（如服务器或数据库）。

其核心解决方案通过在每个设备上安装轻量级代理，取代了传统复杂的VPN。该代理遵循“永不信任，始终验证”的零信任原则，在授权用户与其所需特定资源之间自动建立安全的点对点WireGuard隧道。访问通过中央仪表板进行管理，基于用户身份和既定策略，而不仅仅是网络位置。

强调的主要特性和优势包括：
*   **易于使用：** 自动配置和对等节点发现，实现快速设置。
*   **安全性：** 端到端加密，无需开放入站防火墙端口，且强制身份验证。
*   **开源：** 完全透明，支持自托管，并提供永久免费的核心版本。
*   **高效性：** 与VPN网关相比，直接的点对点连接降低了延迟和带宽成本。

Netbird 定位为一种易于采用的替代方案，适用于寻求以零信任模型现代化远程访问、同时希望避免高成本或复杂性的企业、开发者和家庭实验室用户。

---

## 4. 我教会了我的邻居把音量调低。

**原文标题**: I taught my neighbor to keep the volume down

**原文链接**: [https://idiallo.com/blog/teaching-my-neighbor-to-keep-the-volume-down](https://idiallo.com/blog/teaching-my-neighbor-to-keep-the-volume-down)

2007年，作者因一款无需视线对准的射频遥控器而转用Dish Network电视服务。然而，当一位吵闹的邻居也安装了带射频遥控器的Dish Network后，作者的电视开始自动换台和调节音量。经排查，作者发现两台遥控器使用相同频率，导致彼此都能控制对方的机顶盒。

作者试图友好解决问题，上门向邻居解释干扰现象，却遭到粗鲁回绝。面对邻居继续高声播放电视，作者将射频遥控器放在卧室，每当邻居电视音量超过一定阈值，便用遥控器关闭其电视。通过数周这种持续的“巴甫洛夫式”条件反射，邻居在无意识中学会了压低音量以避免电视突然关闭。作者从未重设遥控器，而是将信号干扰转化为约束行为的工具，最终在没有进一步冲突的情况下解决了噪音问题。

---

## 5. 今日我学到了：苹果在塔霍湖上再次破坏了时间机器功能。

**原文标题**: TIL: Apple Broke Time Machine Again on Tahoe

**原文链接**: [https://taoofmac.com/space/til/2026/02/01/1630](https://taoofmac.com/space/til/2026/02/01/1630)

本文详述了macOS更新（可能是“Tahoe”）如何导致作者使用Synology NAS作为SMB目标的Time Machine备份失效。问题的根源在于苹果更改了默认的SMB安全设置，从而引发了与NAS的兼容性问题。

作者提出了两种解决方案：
1.  **在Mac上的临时修复**：编辑`/etc/nsmb.conf`文件，手动配置SMB设置（如启用签名和设置协议版本），以兼容NAS。
2.  **更稳健的长期方案**：在配备ZFS存储的Proxmox服务器上，使用Docker容器（`mbentley/timemachine`）设置专用的Time Machine服务器，以控制SMB实现，避免依赖Synology软件。

文章批评苹果公司多次通过静默更改和沟通不畅破坏Time Machine功能，并以此次问题及一个长期存在的iOS恢复错误为例，指出这些都给用户带来了糟糕的体验。

---

## 6. 现代数据库系统的高效字符串压缩技术

**原文标题**: Efficient String Compression for Modern Database Systems

**原文链接**: [https://cedardb.com/blog/string_compression/](https://cedardb.com/blog/string_compression/)

本文探讨了在现代数据库（如CedarDB）中高效字符串压缩的重要性，其中字符串是最常见的数据类型，并在查询中被大量使用。其主要目标不仅是节省存储空间，更是通过减少数据移动和提升CPU缓存利用率，显著提高查询性能。

CedarDB最初采用字典压缩，将唯一字符串替换为小型整数键。这使得可以利用高效的整数比较和SIMD指令进行快速查询评估，但在处理大量不同值时表现不佳。

为解决此问题，本文介绍了FSST（快速静态符号表），这是一种通过1字节编码替换频繁出现的子字符串的压缩方法。虽然FSST能有效压缩重复数据，但直接在FSST压缩的字符串上评估查询效率低下。

提出的解决方案是结合两种技术：首先对数据应用字典压缩，然后使用FSST压缩字典本身。这种混合方法既保留了字典键（小型、固定大小的整数）的快速过滤优势，又通过利用字典字符串内部的模式实现了FSST的卓越压缩比，从而在性能和存储之间达到了最佳平衡。

---

## 7. 构建一个固执己见且极简的编码助手，我学到了什么

**原文标题**: What I learned building an opinionated and minimal coding agent

**原文链接**: [https://mariozechner.at/posts/2025-11-30-pi-coding-agent/](https://mariozechner.at/posts/2025-11-30-pi-coding-agent/)

作者在厌倦了Claude Code等工具日益复杂和不可预测的特性后，构建了一个极简且具有明确设计理念的编程智能体框架。他们的系统 **pi-coding-agent** 基于三个自定义组件构建：**pi-ai**（一个统一的多提供商LLM API，支持跨提供商上下文传递和令牌追踪等功能）、**pi-agent-core**（用于工具执行的智能体循环）以及 **pi-tui**（终端用户界面框架）。

该项目的理念是仅包含核心功能，刻意省略了计划模式、子智能体和MCP支持等常见元素。其关键设计目标包括：精确控制模型上下文、完整的交互可检查性、简洁的会话格式，以及对自托管模型的可靠支持。作者指出了创建统一API过程中的挑战，例如提供商之间的不一致性和精确成本追踪的难度，但总结认为这种专注、极简的方法已在其工作流程中被证明是有效的。

---

## 8. MicroPythonOS图形操作系统提供类似Android的用户体验

**原文标题**: MicroPythonOS graphical operating system delivers Android-like user experience

**原文链接**: [https://www.cnx-software.com/2026/01/29/micropythonos-graphical-operating-system-delivers-android-like-user-experience-on-microcontrollers/](https://www.cnx-software.com/2026/01/29/micropythonos-graphical-operating-system-delivers-android-like-user-experience-on-microcontrollers/)

**摘要：**

MicroPythonOS 是一款面向微控制器的开源图形操作系统，深受 Android 和 iOS 启发。它基于原生的 MicroPython 构建，由一个处理硬件和多任务的核心“精简操作系统”组成，所有其他功能——包括 WiFi 配置和系统更新——均作为独立应用程序运行。

其主要特点包括：采用 LVGL 构建的类 Android 触摸屏用户界面（支持手势和主题）、便于应用安装的集成应用商店，以及无线固件更新功能。该系统设计为快速轻量，适用于资源受限的设备。

虽然主要面向 ESP32 微控制器（如 ESP32-S3-Touch-LCD-2），但它具有跨平台性，也能在支持 MicroPython 的系统上运行，包括 Raspberry Pi RP2350、Windows、Linux 和 macOS——后者对开发很有用。预装应用包括启动器、WiFi、应用商店、系统更新和设置，此外还有相机和 IMU 查看器等应用可供使用。

其潜在应用范围涵盖智能家居控制器、教育工具、便携式设备和机器人等领域。在 ESP32 上支持的硬件包括 WiFi、蓝牙、触摸屏、摄像头和各种传感器。该项目将在 FOSDEM 2026 上展示，其源代码和文档均可在线获取。

---

## 9. Clearspace（YC W23）正在招聘应用研究员（机器学习方向）

**原文标题**: Clearspace (YC W23) Is Hiring an Applied Researcher (ML)

**原文链接**: [https://www.ycombinator.com/companies/clearspace/jobs/GOWiDwp-research-engineer-at-clearspace](https://www.ycombinator.com/companies/clearspace/jobs/GOWiDwp-research-engineer-at-clearspace)

Clearspace（YC W23）正在旧金山招聘专注于机器学习的研究工程师。公司使命是开发技术，保护人类注意力免受社交媒体中常见的强迫性手机使用和操控性设计功能的影响。

该职位负责主导生产级网络流量分类模型的实现、创建数据收集工具，并与创始人共同确定研究方向。理想的候选人应具备解决问题的能力，能深入思考数据规模、特征工程和推理需求。

关键要求包括计算机科学或相关领域的学士学位、具备训练生产级序列模型（尤其是时间序列数据）的经验，以及愿意现场办公。有网络流量处理或研究生科研经验者优先。

该职位年薪范围为15万至20万美元，另加0.50%至1.00%的股权。Clearspace是一家成立于2022年的五人初创公司。

---

## 10. Amiga Unix（Amix）

**原文标题**: Amiga Unix (Amix)

**原文链接**: [https://www.amigaunix.com/doku.php/home](https://www.amigaunix.com/doku.php/home)

本文是关于Amiga UNIX（Amix）的全面指南，这是AT&T System V Release 4 Unix为Amiga电脑移植的版本，由Commodore于1990年发布。文章将Amix主要定位为爱好者眼中的历史奇物，而非适合现代使用的实用操作系统。

主要内容涵盖：
*   **历史与性质：** Amix是Amiga 2500UX和3000UX官方但小众的SVR4 Unix变体，尽管它也能在其他兼容硬件及WinUAE模拟器上运行。
*   **网站目的：** 该维基旨在保存Amix的历史，并提供运行它的实用信息，同时承认由于其年代久远及与System V的差异，安装和管理即使对经验丰富的用户也构成显著挑战。
*   **内容范围：** 提供硬件兼容性资源、安装教程（针对真实硬件和模拟器）、软件管理（包括补丁和X11图形界面）以及各种技巧提示。
*   **注意事项与受众：** 文章强烈提醒读者，Amix已过时、无支持、不安全，且不代表现代类Unix系统。它仅适合对计算历史感兴趣或想体验1990年代早期Unix环境的人士，不适用于一般用途或学习当代Unix。
*   **社区与资源：** 指南提供了下载源链接、求助论坛（特别是English Amiga Board）及其他参考网站，同时征集内容贡献以扩展其资料库。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 2 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 3 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 4 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 5 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 6 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 7 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 8 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 9 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 10 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 11 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 12 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 13 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 14 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 15 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 16 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 17 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 18 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 19 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 20 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 21 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 22 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 23 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 24 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 25 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 26 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 27 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 28 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 29 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 30 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 31 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 32 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 33 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 34 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 35 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 36 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 37 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 38 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 39 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 40 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 41 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 42 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 43 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 44 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 45 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 46 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 47 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 48 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 49 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 50 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 51 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 52 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 53 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 54 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 55 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 56 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 57 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 58 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 59 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 60 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 61 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 62 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 63 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 64 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 65 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 66 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 67 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 68 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 69 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 70 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 71 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 72 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 73 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 74 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 75 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 76 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 77 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 78 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 79 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 80 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 81 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 82 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 83 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 84 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 85 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 86 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 87 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 88 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 89 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 90 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 91 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 92 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 93 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 94 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 95 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 96 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 97 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 98 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 99 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 100 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 101 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 102 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 103 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 104 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 105 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 106 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 107 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 108 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 109 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 110 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 111 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 112 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 113 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 114 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 115 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 116 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 117 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 118 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 119 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 120 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 121 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 122 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 123 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 124 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 125 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 126 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 127 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 128 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 129 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 130 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 131 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 132 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 133 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 134 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 135 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 136 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 137 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 138 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 139 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 140 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 141 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 142 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 143 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 144 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 145 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 146 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 147 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 148 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 149 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 150 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 151 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 152 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 153 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 154 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 155 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 156 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 157 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 158 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 159 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 160 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 161 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 162 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 163 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 164 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 165 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 166 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 167 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 168 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 169 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 170 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 171 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 172 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 173 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 174 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 175 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 176 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 177 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 178 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 179 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 180 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 181 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 182 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 183 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 184 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 185 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 186 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 187 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 188 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 189 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 190 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 191 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 192 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 193 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 194 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 195 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 196 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 197 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 198 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 199 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 200 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 201 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 202 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 203 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 204 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 205 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 206 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 207 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 208 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 209 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 210 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 211 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 212 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 213 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 214 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 215 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 216 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 217 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 218 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 219 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 220 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 221 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 222 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 223 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 224 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 225 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 226 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 227 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 228 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 229 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 230 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 231 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 232 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 233 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 234 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 235 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 236 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 237 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 238 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 239 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 240 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 241 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 242 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 243 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 244 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 245 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 246 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 247 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 248 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 249 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 250 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 251 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 252 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 253 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 254 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 255 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 256 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 257 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 258 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 259 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 260 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 261 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 262 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 263 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 264 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 265 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 266 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 267 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 268 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 269 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 270 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 271 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 272 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 273 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 274 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 275 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 276 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 277 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 278 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 279 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 280 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 281 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 282 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 283 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 284 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 285 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 286 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 287 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 288 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 289 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 290 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 291 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 292 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 293 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 294 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 295 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 296 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 297 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 298 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 299 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 300 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 301 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 302 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 303 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 304 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 305 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 306 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 307 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 308 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 309 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 310 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 311 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 312 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 313 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 314 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 315 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 316 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
