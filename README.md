# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-01-31.md)

*最后自动更新时间: 2026-01-31 20:37:30*
## 1. 移动运营商可以获取您的GPS定位信息。

**原文标题**: Mobile carriers can get your GPS location

**原文链接**: [https://an.dywa.ng/carrier-gnss.html](https://an.dywa.ng/carrier-gnss.html)

本文揭示，移动运营商可通过内置蜂窝协议获取用户的精确GPS位置，而不仅仅是粗略的基站数据。文中解释，RRLP（2G/3G）和LPP（4G/5G）等标准允许网络在用户无感知的情况下，以米级精度向设备请求并接收全球导航卫星系统坐标。

作者指出，这一功能虽非机密，却未广为人知，并已被美国缉毒局、以色列辛贝特等机构用于监控，包括新冠肺炎接触者追踪。文章提出的关键担忧在于，外国政府行为者是否可能利用这些协议进行全球间谍活动。

文章赞扬苹果iOS 26.3更新限制了通过基站共享的“精确位置”数据，但认为这远远不够。最后强调，要完全保护隐私，用户应能禁用对运营商的全球导航卫星系统响应，并在收到位置请求时获得通知。

---

## 2. Genode OS是一个用于构建高度安全的专用操作系统的工具套件。

**原文标题**: Genode OS is a tool kit for building highly secure special-purpose OS

**原文链接**: [https://genode.org/about/index](https://genode.org/about/index)

**概述**

Genode OS 是一个用于构建高度安全的专用操作系统的框架。其核心设计原则是递归的沙盒架构，每个程序都在隔离环境中运行，仅拥有所需的最小资源和访问权限。程序可以创建和管理子沙盒，形成策略强制的层级结构。与传统操作系统相比，这种架构极大地减少了攻击面。

该框架结合了 Unix 小型可组合组件的理念与 L4 微内核原则，并将其扩展至所有传统操作系统功能——如内核、驱动程序和文件系统——均作为用户级组件实现。

它支持多种 CPU 架构（x86、ARM、RISC-V），并可在多个内核上运行，包括多种 L4 系列微内核、Linux 及其自定义内核。功能涵盖虚拟化支持和超过 100 个即用型组件。

Genode 是开源项目，同时也通过 Genode Labs 提供商业支持。

---

## 3. 揭秘ARM SME以优化通用矩阵乘法

**原文标题**: Demystifying ARM SME to Optimize General Matrix Multiplications

**原文链接**: [https://arxiv.org/abs/2512.21473](https://arxiv.org/abs/2512.21473)

本文介绍了**MpGEMM**，一个专为优化ARM可扩展矩阵扩展（SME）架构上的通用矩阵乘法（GEMM）而设计的开源库。作者指出，现有线性代数库未能充分利用SME的潜力，尤其对于大型矩阵而言。

通过对SME架构特征的系统分析，作者总结出优化指导原则。MpGEMM通过以下关键技术实现这些原则：
*   **缓存感知分区**以提升数据局部性。
*   结合即时转置的**高效数据打包**以减少开销。
*   利用多向量加载和全部可用瓦片寄存器的**专用微内核**，以最大化计算吞吐量。

该库在Apple M4 Pro处理器上使用DeepSeek和LLaMA模型的实际工作负载进行评估。结果显示，MpGEMM相比厂商优化的Apple Accelerate库平均获得**1.23倍的加速**，并显著优于其他开源方案。这项工作表明，基于架构感知的原则性设计能够为高性能计算和深度学习中的关键计算内核释放更高性能。

---

## 4. 美国已调查关于WhatsApp聊天不私密的说法

**原文标题**: US has investigated claims WhatsApp chats aren't private

**原文链接**: [https://www.bloomberg.com/news/articles/2026-01-29/us-has-investigated-claims-that-whatsapp-chats-aren-t-private](https://www.bloomberg.com/news/articles/2026-01-29/us-has-investigated-claims-that-whatsapp-chats-aren-t-private)

无法访问文章链接。

---

## 5. 芬兰将禁止青少年使用社交媒体，终结“不受控制的人类实验”。

**原文标题**: Finland to end "uncontrolled human experiment" with ban on youth social media

**原文链接**: [https://yle.fi/a/74-20207494](https://yle.fi/a/74-20207494)

芬兰正考虑禁止15岁以下儿童使用社交媒体，此前限制校园手机使用的举措被认为成效显著。总理彼得里·奥尔波支持该提案，指出对儿童身体活动与心理健康的担忧，公众支持率已升至约三分之二。

研究员西尔娅·科索拉将芬兰青少年广泛使用社交媒体的现象描述为“失控的人类实验”，认为这与自残行为增加、饮食失调及性别间价值观差异有关，进一步激化了讨论。

政府正参考澳大利亚于2023年12月实施的类似禁令，该政策对未能阻止16岁以下用户访问的平台处以罚款。初步报告显示，禁令虽让部分家长感到宽慰，但也引发了儿童的困惑和规避行为。

然而，旅居澳大利亚的希欧娜·坎迪警告不应照搬澳洲模式，认为其属于被动应对。她建议芬兰应依托其享誉全球的教育体系，加大对儿童数字素养与安全教育投入，而非单纯依赖立法禁令。

---

## 6. CPython内部机制详解

**原文标题**: CPython Internals Explained

**原文链接**: [https://github.com/zpoint/CPython-Internals](https://github.com/zpoint/CPython-Internals)

本文是一份个人学习指南与博客，专注于解析CPython解释器（版本3.8.0a0）的内部工作原理。主要面向具备Python经验的程序员，旨在帮助他们理解解释器的实现机制。

核心内容分为以下几个主要部分：
*   **对象：** 深入探讨基础Python类型（如`dict`、`int`、`str`、`list`）以及更高级类型（如生成器和类）的实现。
*   **模块与库：** 涵盖标准模块（如`io`、`pickle`）和库（如`re`、`asyncio`）的内部原理。
*   **解释器：** 解释关键的运行时机制，包括全局解释器锁（GIL）、垃圾回收、内存管理和导入系统。
*   **扩展：** 讨论使用C API、Cython和C++扩展Python的方法。
*   **语法与编译：** 概述从解析语法到生成最终代码对象的整个过程，即将Python源代码转换为字节码的流程。

作者还整理了一份推荐学习材料清单（书籍、博客、视频），并鼓励通过拉取请求（用于修正、新文章、翻译）或议题（用于建议和提问）进行贡献。该仓库既是CPython内部原理的详细参考，也是一个开源知识库。

---

## 7. 现代网页的动态AVIF

**原文标题**: Animated AVIF for the Modern Web

**原文链接**: [https://arthur.pizza/2025/12/animated-avif-for-the-modern-web/](https://arthur.pizza/2025/12/animated-avif-for-the-modern-web/)

本文阐述了如何创建动画AVIF文件，作为动画GIF的现代化优化替代方案。作者指出，尽管GIF格式已过时且效率低下，但对于短循环动画，AVIF能提供更优的压缩效果与画质。

指南的核心是使用FFmpeg的技术操作流程。它概述了一个两步转换过程：首先，将视频源（如WEBM文件或GIF）转换为Y4M中间格式，并可选择设置帧率与尺寸限制；其次，使用SVT-AV1编码器以特定质量参数（`-crf 30`）将Y4M文件编码为最终的动画AVIF。

文中特别指出，截至2025年底，在某些系统（特别是Debian 13）上直接一步从视频转换为AVIF可能会失败，因此必须通过Y4M中间步骤过渡。作者希望未来不再需要这种变通方案。整体目标是提供一种实用的方法，以生成更适合网络使用的动画AVIF文件。

---

## 8. 死亡笔记：L、匿名性与逃避熵（2011）

**原文标题**: Death Note: L, Anonymity and Eluding Entropy (2011)

**原文链接**: [https://gwern.net/death-note-anonymity](https://gwern.net/death-note-anonymity)

本文通过信息论与计算机安全的视角，分析《死亡笔记》中的主角夜神月，将其与侦探L的猫鼠游戏构建为一个优化问题：夜神月必须最小化信息泄露。

核心论点是，夜神月最初的匿名性（基于约70亿人口，需约33比特信息才能唯一识别）因一系列战略失误而迅速瓦解。作者以“比特”为单位量化这些失误导致匿名性损失的程度：

1.  **使用独特手法（心脏麻痹）**：揭示存在超自然且精准的杀手，引起L的警觉。
2.  **按日本时区安排死亡时间**：此模式泄露约6比特，将搜索范围缩小至日本。
3.  **对L的诱饵（Lind L. Tailor）作出反应**：确认其身处关东地区，损失约1.6比特。
4.  **使用父亲的警察权限**：最大的失误，通过直接关联调查损失约11比特。
5.  **杀害FBI探员**：再损失约6比特。

通过这些受自负驱使的非必要行动，夜神月挥霍了超过25比特的匿名性，使L得以接近并进行直接监视，最终注定败局。文章总结，夜神月的根本缺陷在于傲慢——他优先追求宏大戏剧性的宣告，而非操作安全。文中指出，若想保持隐匿，理性的使用者应模仿自然死因、避免规律行为，并间接运用死亡笔记的力量，以免制造可追踪的独特现象。

---

## 9. Guix系统初体验：来自Nix用户的视角

**原文标题**: Guix System First Impressions as a Nix User

**原文链接**: [https://nemin.hu/guix.html](https://nemin.hu/guix.html)

本文详述了一位NixOS用户尝试Guix系统的体验，这是一个基于Scheme语言的声明式Linux发行版。作者因1.5.0版本改进了KDE支持而被Guix吸引。

安装过程简单直接，但软件包下载速度极慢。安装后，由于自由驱动程序与作者的NVIDIA显卡不兼容，KDE Plasma桌面环境无法正常运行。通过更新和社区帮助解决问题的尝试均未成功。

解决方案是使用**Nonguix**仓库获取非自由软件。然而首次尝试安装专有NVIDIA驱动时引发了内核恐慌。作者随后改用旧版Nonguix镜像，手动更新配置以使用更快的服务器，并成功安装了非自由的Linux内核和固件——同时避开了有问题的NVIDIA驱动包。最终获得了一个基础但可用的桌面环境。

作者的目标是复现其在NixOS中的工作流程。他们成功配置了Firefox、Thunderbird、LibreOffice等核心工具，以及Rust、Zig和Scheme的开发环境。但也注意到一些妥协：Discord无法使用，配置Steam和NVIDIA显卡卸载功能（两者均属非自由软件）仍然困难，这正符合Guix的自由软件理念。

总体而言，尽管在硬件支持和非自由软件方面遭遇了初步障碍，作者仍对Guix系统配置完成后所展现的声明式特性和功能表示赞赏。

---

## 10. 放弃向上游提交我的补丁，欢迎随时接手。

**原文标题**: "Giving up upstream-ing my patches & feel free to pick them up"

**原文链接**: [https://mail.openjdk.org/pipermail/hotspot-dev/2026-January/118080.html](https://mail.openjdk.org/pipermail/hotspot-dev/2026-January/118080.html)

作者张冰武（xtex）宣布，在长达一年尝试将其Oracle贡献者协议（OCA）提交至OpenJDK上游未果后，决定放弃这一努力。尽管于2025年1月提交了协议并多次发送跟进邮件，但仅收到致歉，未获实质性进展或明确拒绝。由于拖延导致兴趣与空闲时间耗尽，作者最终决定终止此计划。

作者已公开所有补丁供他人采纳提交。这些补丁包括：修复损坏的`llvm-config`检查、扩展Zero VM变体的默认线程栈大小以防止栈溢出，以及针对龙芯JDK分支的多个修补程序。作者表示，他人可自由重写这些补丁以满足OCA原创性要求，无需标注原作者信息。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 2 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 3 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 4 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 5 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 6 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 7 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 8 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 9 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 10 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 11 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 12 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 13 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 14 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 15 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 16 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 17 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 18 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 19 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 20 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 21 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 22 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 23 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 24 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 25 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 26 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 27 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 28 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 29 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 30 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 31 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 32 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 33 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 34 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 35 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 36 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 37 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 38 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 39 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 40 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 41 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 42 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 43 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 44 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 45 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 46 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 47 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 48 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 49 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 50 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 51 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 52 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 53 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 54 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 55 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 56 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 57 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 58 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 59 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 60 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 61 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 62 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 63 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 64 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 65 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 66 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 67 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 68 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 69 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 70 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 71 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 72 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 73 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 74 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 75 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 76 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 77 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 78 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 79 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 80 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 81 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 82 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 83 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 84 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 85 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 86 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 87 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 88 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 89 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 90 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 91 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 92 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 93 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 94 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 95 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 96 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 97 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 98 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 99 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 100 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 101 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 102 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 103 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 104 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 105 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 106 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 107 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 108 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 109 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 110 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 111 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 112 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 113 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 114 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 115 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 116 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 117 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 118 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 119 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 120 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 121 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 122 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 123 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 124 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 125 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 126 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 127 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 128 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 129 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 130 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 131 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 132 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 133 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 134 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 135 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 136 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 137 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 138 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 139 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 140 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 141 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 142 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 143 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 144 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 145 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 146 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 147 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 148 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 149 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 150 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 151 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 152 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 153 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 154 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 155 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 156 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 157 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 158 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 159 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 160 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 161 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 162 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 163 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 164 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 165 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 166 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 167 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 168 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 169 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 170 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 171 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 172 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 173 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 174 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 175 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 176 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 177 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 178 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 179 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 180 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 181 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 182 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 183 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 184 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 185 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 186 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 187 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 188 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 189 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 190 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 191 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 192 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 193 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 194 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 195 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 196 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 197 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 198 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 199 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 200 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 201 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 202 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 203 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 204 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 205 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 206 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 207 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 208 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 209 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 210 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 211 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 212 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 213 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 214 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 215 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 216 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 217 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 218 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 219 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 220 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 221 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 222 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 223 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 224 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 225 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 226 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 227 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 228 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 229 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 230 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 231 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 232 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 233 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 234 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 235 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 236 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 237 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 238 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 239 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 240 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 241 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 242 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 243 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 244 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 245 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 246 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 247 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 248 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 249 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 250 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 251 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 252 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 253 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 254 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 255 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 256 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 257 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 258 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 259 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 260 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 261 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 262 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 263 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 264 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 265 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 266 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 267 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 268 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 269 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 270 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 271 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 272 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 273 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 274 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 275 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 276 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 277 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 278 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 279 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 280 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 281 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 282 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 283 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 284 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 285 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 286 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 287 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 288 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 289 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 290 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 291 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 292 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 293 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 294 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 295 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 296 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 297 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 298 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 299 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 300 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 301 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 302 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 303 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 304 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 305 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 306 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 307 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 308 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 309 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 310 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 311 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 312 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 313 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 314 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 315 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
