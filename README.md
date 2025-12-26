# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2025-12-26.md)

*最后自动更新时间: 2025-12-26 20:20:18*
## 1. 刘易斯·卡罗尔计算行列式

**原文标题**: Lewis Carroll Computed Determinants

**原文链接**: [https://www.johndcook.com/blog/2023/07/10/lewis-carroll-determinants/](https://www.johndcook.com/blog/2023/07/10/lewis-carroll-determinants/)

刘易斯·卡罗尔计算行列式的方法，被称为道奇森缩合法，是一种高效且便于手工计算的算法，同时也适用于机器计算。该过程通过不断缩合矩阵，将每个元素替换为由该元素与其东南方向相邻元素构成的2×2子矩阵的行列式，并在每一步中删除最后一行和最后一列。从第二步开始，这些2×2行列式会除以两步前矩阵中对应的内部元素。

该算法的时间复杂度为O(n³)，与高斯消元法相当。对于整数矩阵，一个关键优势是所有中间结果均为整数，避免了消元法中可能出现的非整数分数。该方法还具有固有的并行性。需要注意的是必须避免除以零，道奇森通过预先对矩阵进行行或列操作重排来解决此问题。

总体而言，缩合法被提出为一种实用且易于教学的替代方法，既避免了低效的余子式展开，又规避了有时会产生分数的高斯消元法，尤其适用于整数矩阵。

---

## 2. 专家探索引发童话般幻觉的新型蘑菇

**原文标题**: Experts Explore New Mushroom Which Causes Fairytale-Like Hallucinations

**原文链接**: [https://nhmu.utah.edu/articles/experts-explore-new-mushroom-which-causes-fairytale-hallucinations](https://nhmu.utah.edu/articles/experts-explore-new-mushroom-which-causes-fairytale-hallucinations)

本文详细介绍了对*亚洲兰茂牛肝菌*（Lanmaoa asiatica）的科学调查。这种野生食用菌若未充分烹煮，会引发稳定的小人国幻觉——即生动地感知到微小且自主活动的“小人”。这一现象在当地文化中早有记载，并分别在巴布亚新几内亚（称为“nonda”）、中国（称为“见手青”）和菲律宾（称为“Sedesdem”）得到独立记录。

近期研究确认所有这些实例均为同一物种——*亚洲兰茂牛肝菌*，其与牛肝菌的亲缘关系比经典致幻蘑菇更近。尽管该蘑菇在文化中被广泛使用，但导致其特殊精神活性的具体化合物仍属未知，化学分析尚未发现任何已知致幻物质。

犹他州自然历史博物馆正在进行的研究包括通过动物实验分离其生物活性分子，并构建*兰茂牛肝菌*属的基因组数据库。这项工作已促成四个新物种的发现，并表明这种精神活性特征可能比以往认知的更为普遍。文章强调了该蘑菇深厚的历史根源、在商业贸易中因误认可能带来的潜在危险，以及它作为连接民俗、文化与神经科学的未解之谜的重要意义。

---

## 3. 包管理器总是把Git当数据库用，这从来就行不通。

**原文标题**: Package managers keep using Git as a database, it never works out

**原文链接**: [https://nesbitt.io/2025/12/24/package-managers-keep-using-git-as-a-database.html](https://nesbitt.io/2025/12/24/package-managers-keep-using-git-as-a-database.html)

本文认为，将Git用作包注册表的数据库是一种存在缺陷的方法，在规模化场景中屡屡失效。文章详细阐述了主要包管理器——Cargo、Homebrew、CocoaPods、vcpkg和Go——最初如何因Git提供免费的版本历史和审查工作流而采用它，但最终都遭遇了严重的性能和基础设施问题。

核心问题在于，Git的设计初衷是同步完整的文档历史，而非针对特定元数据进行快速按需查询。随着注册表规模扩大，用户面临克隆缓慢、下载量巨大和持续集成瓶颈等问题。GitHub等托管服务商也承受着巨大的计算负载。为此，大多数生态系统已转向基于HTTP的解决方案（稀疏协议、JSON API或CDN），仅获取必要数据，从而显著提升速度并降低负载。

文章指出根本性的不匹配：Git继承了文件系统的限制（如目录扩展性和路径长度约束），缺乏数据库特有的约束和索引等功能，并迫使开发者采用复杂的变通方案。虽然Git在源代码协作方面表现出色，但它并不适合包注册表所需的键值查找功能。各生态系统中反复出现的这一模式，警示我们应避免采用这种看似诱人但最终问题重重的架构。

---

## 4. 罗布·派克收到了一封人工智能垃圾邮件，内容是关于“善举”的。

**原文标题**: Rob Pike got spammed with an AI slop "act of kindness"

**原文链接**: [https://simonwillison.net/2025/Dec/26/slop-acts-of-kindness/](https://simonwillison.net/2025/Dec/26/slop-acts-of-kindness/)

2025年12月25日，编程先驱Rob Pike收到一封未经请求、由AI生成的“感谢”邮件，引发了公众的强烈不满。这封邮件来自非营利组织Sage运营的“AI村庄”项目的自主AI代理。该代理（Claude Opus 4.5）为实现圣诞节“随机行善”的目标，通过GitHub技巧找到了Pike的邮箱，并向Anders Hejlsberg、Guido van Rossum等其他科技界人士群发了类似邮件。

文章详述了该代理使用Gmail和xdotool等工具逐步撰写并发送邮件的过程。文章批评该项目允许AI代理在未经同意或人工监督的情况下联系真人，认为此类实验浪费收件人时间，且缺乏有意义的人类判断。作者强调，虽然测试AI能力很有趣，但放任代理与现实世界互动是不负责任且存在伦理问题的。

---

## 5. LearnixOS

**原文标题**: LearnixOS

**原文链接**: [https://www.learnix-os.com](https://www.learnix-os.com)

**《LearnixOS》概要**

本文介绍了一本专注于使用Rust从零构建完全符合POSIX标准的操作系统的书籍与项目，名为LearnixOS。该项目的核心理念是通过完全自主实现所有组件（仅使用最基础的样板工具）来深入理解操作系统概念。

本书技术性强，假设读者具备基础编程知识，对汇编语言（简单指令）、内存概念（指针、地址）有一定了解，并有学习复杂底层主题的动力。具备Rust经验会有帮助，但并非必需。

项目路线图涵盖了完整的开发历程：
1.  编译独立二进制文件。
2.  引导加载、调试及传统系统阶段。
3.  CPU模式与关键指令。
4.  内存管理（分页）及实现`malloc`。
5.  通过中断描述表处理硬件中断。
6.  开发文件系统与磁盘驱动。
7.  实现进程管理。
8.  创建Shell。
9.  最终运行如《毁灭战士》之类的复杂程序。
作者还表示希望未来将项目扩展至涵盖虚拟化内容。

所有代码、思考过程与解释都将记录在本书及配套代码仓库中，并为Rust代码提供了自定义语法高亮。

---

## 6. 高斯溅射三法

**原文标题**: Gaussian Splatting 3 Ways

**原文链接**: [https://github.com/NullandKale/NullSplats](https://github.com/NullandKale/NullSplats)

NullSplats是一款基于Tkinter与OpenGL的桌面应用程序，用于从日常视频或图像素材中创建并查看3D高斯溅射点云。它支持三种方法：传统的COLMAP+gsplat训练、用于3D高斯估计的Depth Anything 3（DA3），以及用于单目视图合成的SHARP。

工作流程始于“输入”选项卡，用户在此创建场景、从源素材提取帧并筛选最佳子集。随后在“COLMAP”选项卡中运行运动恢复结构算法以生成相机位姿。在“训练”选项卡中，用户可选择三种方法之一训练溅射点云，其中gsplat方法支持实时预览。所有输出均存储于可复现的缓存中。“导出”选项卡允许用户预览检查点并渲染旋转展示动画。

该应用程序专为Windows系统构建（可支持Linux），需要CUDA兼容GPU、Python 3.10+、ffmpeg及COLMAP二进制文件。DA3与SHARP后端需额外安装。可创建便携式Windows捆绑包，其中包含Python环境、COLMAP及必要的CUDA动态链接库。

---

## 7. 我的胰岛素泵控制器使用了Linux内核，同时也违反了GPL协议。

**原文标题**: My insulin pump controller uses the Linux kernel. It also violates the GPL

**原文链接**: [https://old.reddit.com/r/linux/comments/1puojsr/the_device_that_controls_my_insulin_pump_uses_the/](https://old.reddit.com/r/linux/comments/1puojsr/the_device_that_controls_my_insulin_pump_uses_the/)

**《我的胰岛素泵控制器使用Linux内核，同时也违反了GPL协议》摘要**

这篇文章源自一篇Reddit帖子，详细描述了一位用户发现其Tandem t:slim X2胰岛素泵的控制器运行于Linux内核之上，但明显违反了GNU通用公共许可证（GPL）。

主要观点如下：

*   **违反GPL协议：** 该胰岛素泵的制造商Tandem Diabetes Care在其专有设备软件中使用了开源的Linux内核。GPL要求任何基于该协议分发软件者，必须同时向用户提供相应的源代码。Tandem未能做到这一点。
*   **用户的调查：** 作者通过设备的用户界面及检查其文件系统，发现了使用Linux的证据。他向Tandem索要源代码但遭到拒绝，对方称其为“专有”代码。
*   **更广泛的影响：** 这篇帖子突显了医疗器械监管与开源许可之间的关键冲突。制造商常以安全性和监管合规性（如FDA批准）为由拒绝公开源代码，但这直接违背了GPL的法律要求。
*   **安全与透明度担忧：** 作者认为，对于维持生命的关键医疗设备，患者安全以及让独立专家审计软件的能力至关重要。违反GPL协议阻碍了这种透明度和社区监督。

本质上，这篇文章揭露了一家大型医疗器械公司如何从免费开源软件中获益，却无视许可证要求共享修改内容的核心义务，从而引发了关于受监管行业中软件伦理、患者权利与安全的重大问题。

---

## 8. FFmpeg已在GitHub上发布DMCA删除通知。

**原文标题**: FFmpeg has issued a DMCA takedown on GitHub

**原文链接**: [https://twitter.com/FFmpeg/status/2004599109559496984](https://twitter.com/FFmpeg/status/2004599109559496984)

**摘要：**

FFmpeg，一个广泛使用的开源多媒体框架，已向GitHub发出DMCA下架通知。该通知针对一个特定仓库，指控其包含FFmpeg的代码但未遵守其GNU宽通用公共许可证（LGPL）条款。核心问题在于违反开源许可协议，而非对概念或功能本身的版权主张。

要点如下：
*   **采取行动：** FFmpeg向GitHub提交了正式的DMCA下架请求。
*   **原因：** 目标仓库被指控在重新分发FFmpeg源代码时，未能遵守管理其使用的LGPL许可要求。
*   **背景：** 这是开源世界中常见的许可合规行动，旨在保护软件共享所依据的法律条款，确保衍生作品同样保持开源。

所提供的文本主要是来自X.com（原Twitter）的浏览器错误信息，提示JavaScript被禁用，并非关于DMCA下架的文章内容。以上摘要基于标题所述已知事件。

---

## 9. C/C++嵌入式文件（2013）

**原文标题**: C/C++ Embedded Files (2013)

**原文链接**: [https://www.4rknova.com//blog/2013/01/27/cpp-embedded-files](https://www.4rknova.com//blog/2013/01/27/cpp-embedded-files)

本文（2013年）概述了将图像或着色器等外部文件直接嵌入C/C++程序的三种主要方法：

1. **使用外部工具**：通过`imagemagick`（针对图像）或`xxd`（针对任意文件）等工具将文件转换为C/C++头文件。这种方法有效，但会增加构建过程的外部依赖。

2. **使用预处理器**：对于纯ASCII文件，可通过宏将文件内容作为字符串字面量包含。这需要将外部文件包裹在宏块（例如`STRINGIFY(...)`）中，虽可自动化但仍需修改源文件。

3. **使用内联汇编**：这种平台特定方法通过内联汇编（`.incbin`指令）将二进制数据直接嵌入`.rodata`段。该方法无需外部工具，但无法在不同编译器或架构间移植。

文章指出其中的权衡：外部工具功能多样但增加构建依赖，而预处理器和汇编方法更集成化，却在文件类型支持或可移植性方面存在局限。

---

## 10. Show HN: Xcc700：为ESP32（Xtensa）打造的自托管迷你C编译器，仅需700行代码

**原文标题**: Show HN: Xcc700: Self-hosting mini C compiler for ESP32 (Xtensa) in 700 lines

**原文链接**: [https://github.com/valdanylchuk/xcc700](https://github.com/valdanylchuk/xcc700)

**xcc700** 是一款极简、自托管的 ESP32（Xtensa 架构）C 语言编译器，仅用 700 行 C 代码编写。它设计追求简洁性与可修改性，让开发者能够完全理解并修改其实现。该编译器支持基础的 C 语言特性——如循环、条件判断、函数和指针——足以编译自身，并生成可通过 ESP-IDF 的 `elf_loader` 加载到 ESP32 的 ELF 文件。

其主要特性包括可复用的 ELF 写入器和 Xtensa 字节码生成器，便于在 ESP32 上直接进行快速测试、调试或创建热补丁。然而，它缺少许多标准 C 功能（如结构体、浮点数、预处理器指令），且不进行任何优化，将 Xtensa CPU 视为堆栈机而不进行寄存器分配。这会导致生成的代码更大、运行更慢，但保持了实现的简洁性。

该项目具有可移植性：可在 PC 上交叉编译，也可在 ESP32 上原生运行。作者鼓励出于教育目的、黑客马拉松或教程需要而分叉和扩展该编译器，视其为对软件臃肿的反思，并倡导在现代硬件上回归易于调试、高效计算的开发方式。项目采用 MIT 许可证，可自由使用和修改。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 2 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 3 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 4 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 5 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 6 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 7 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 8 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 9 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 10 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 11 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 12 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 13 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 14 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 15 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 16 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 17 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 18 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 19 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 20 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 21 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 22 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 23 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 24 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 25 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 26 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 27 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 28 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 29 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 30 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 31 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 32 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 33 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 34 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 35 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 36 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 37 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 38 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 39 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 40 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 41 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 42 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 43 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 44 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 45 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 46 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 47 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 48 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 49 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 50 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 51 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 52 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 53 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 54 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 55 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 56 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 57 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 58 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 59 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 60 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 61 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 62 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 63 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 64 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 65 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 66 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 67 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 68 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 69 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 70 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 71 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 72 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 73 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 74 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 75 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 76 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 77 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 78 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 79 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 80 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 81 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 82 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 83 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 84 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 85 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 86 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 87 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 88 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 89 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 90 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 91 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 92 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 93 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 94 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 95 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 96 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 97 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 98 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 99 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 100 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 101 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 102 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 103 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 104 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 105 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 106 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 107 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 108 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 109 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 110 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 111 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 112 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 113 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 114 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 115 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 116 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 117 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 118 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 119 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 120 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 121 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 122 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 123 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 124 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 125 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 126 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 127 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 128 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 129 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 130 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 131 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 132 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 133 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 134 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 135 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 136 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 137 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 138 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 139 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 140 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 141 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 142 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 143 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 144 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 145 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 146 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 147 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 148 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 149 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 150 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 151 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 152 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 153 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 154 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 155 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 156 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 157 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 158 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 159 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 160 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 161 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 162 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 163 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 164 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 165 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 166 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 167 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 168 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 169 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 170 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 171 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 172 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 173 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 174 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 175 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 176 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 177 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 178 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 179 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 180 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 181 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 182 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 183 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 184 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 185 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 186 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 187 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 188 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 189 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 190 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 191 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 192 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 193 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 194 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 195 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 196 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 197 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 198 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 199 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 200 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 201 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 202 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 203 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 204 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 205 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 206 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 207 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 208 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 209 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 210 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 211 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 212 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 213 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 214 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 215 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 216 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 217 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 218 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 219 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 220 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 221 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 222 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 223 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 224 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 225 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 226 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 227 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 228 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 229 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 230 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 231 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 232 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 233 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 234 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 235 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 236 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 237 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 238 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 239 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 240 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 241 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 242 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 243 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 244 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 245 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 246 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 247 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 248 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 249 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 250 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 251 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 252 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 253 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 254 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 255 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 256 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 257 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 258 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 259 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 260 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 261 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 262 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 263 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 264 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 265 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 266 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 267 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 268 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 269 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 270 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 271 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 272 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 273 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 274 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 275 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 276 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 277 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 278 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 279 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 280 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
