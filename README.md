# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-01-28.md)

*最后自动更新时间: 2026-01-28 20:37:59*
## 1. 微软迫使我转向Linux。

**原文标题**: Microsoft forced me to switch to Linux

**原文链接**: [https://www.himthe.dev/blog/microsoft-to-linux](https://www.himthe.dev/blog/microsoft-to-linux)

本文详述了一位软件开发者数十年忠诚于Windows后被迫迁移至Linux的经历。作者的转折点是漏洞百出的Windows 11 24H2更新，该更新导致严重的图形问题和系统不稳定。微软缺乏有效修复，加上侵入式广告、强制更新和用户控制权下降，使得Windows变得“过于费神”。

在切换到CachyOS（基于Arch的Linux发行版）后，作者承认初期遇到诸如睡眠模式故障等障碍。但他们发现自己能有效排查问题，并为工作流程找到了强大的原生替代方案，包括用于音乐制作的Bitwig Studio。文章总结认为，到2026年，Linux将为网页浏览、软件开发提供出色支持，并且通过Proton对游戏的支持也日益完善，性能差距正在缩小。

作者最后强调，他们的转换并非出于自愿，而是因为微软专注于AI集成和跨平台应用，已将Windows降级为“漏洞百出、广告泛滥、臃肿不堪”的产品。他们断言，尽管专业创意软件领域仍存在差距，但Linux如今已成为许多用户可行且尊重用户的选择。

---

## 2. 翼型（2024）

**原文标题**: Airfoil (2024)

**原文链接**: [https://ciechanow.ski/airfoil/](https://ciechanow.ski/airfoil/)

本文通过研究翼型（机翼横截面）周围的气流来探讨飞行的物理学原理。文章首先指出，虽然空气本身不可见，但可以通过箭头（显示局部速度）、移动标记（显示粒子路径）和颜色渐变（显示速度）等方法可视化其运动。

解释的核心深入探讨了空气的微观行为：在静止空气中，气体粒子以高速随机运动，其平均速度为零。风则被定义为大量粒子在特定方向上的*平均速度*，这一宏观运动源于粒子混乱的个体运动。

文章引入了**相对速度**的概念，说明气流可以通过空气流过静止物体（如风）或物体在静止空气中运动（如行驶的汽车）产生。这一原理是理解翼型升力的关键。

最后，文章为后续分析做好铺垫：翼型的形状和角度如何与气流相互作用，产生形成升力的压力差，从而帮助读者直观理解维持飞机飞行的力量。

---

## 3. Mousefood – 为微控制器构建嵌入式终端用户界面

**原文标题**: Mousefood – Build embedded terminal UIs for microcontrollers

**原文链接**: [https://github.com/ratatui/mousefood](https://github.com/ratatui/mousefood)

**Mousefood** 是一个无标准库的 Rust 库，它通过充当 embedded-graphics 后端，支持在微控制器上构建 Ratatui 终端用户界面。该库允许开发者在嵌入式显示屏（如 ILI9341、ST7735 或 SSD1306）上渲染 Ratatui 组件。

主要特性包括：
*   **Unicode 字体支持：** 默认使用 `embedded-graphics-unicodefonts` 以支持 Ratatui 的特殊字符（如制表符、盲文）。对于空间受限的项目，可以禁用此功能，并使用更轻量的 `ibm437` 作为替代方案。
*   **字体样式：** 通过在 `EmbeddedBackendConfig` 中提供相应字体，支持粗体和斜体文本修饰。
*   **可自定义颜色：** 包含一个用于颜色重映射的 `ColorTheme` 系统，内置 ANSI（默认）和 Tokyo Night 等主题。
*   **电子墨水屏支持：** 为 WeAct Studio 和 Waveshare EPD（电子墨水）显示屏提供功能，需要自定义 `flush_callback` 进行更新。
*   **硬件无关：** 已在多种架构上测试，包括 ESP32、STM32 和 RP2040。

该库专为嵌入式限制设计，建议使用优化级别 3 以获得最佳性能。它包含一个用于开发的模拟器，并采用 Apache 2.0 和 MIT 双重许可。

---

## 4. 来自Elixir的任务处理框架Oban现已登陆Python平台。

**原文标题**: Oban, the job processing framework from Elixir, has come to Python

**原文链接**: [https://www.dimamik.com/posts/oban_py/](https://www.dimamik.com/posts/oban_py/)

Oban-py是流行的Elixir作业处理框架的Python移植版本，采用PostgreSQL作为其唯一的协调和存储层。它允许在数据库事务中排队作业，确保原子性。核心处理流程包括插入作业、通过PostgreSQL的`LISTEN/NOTIFY`通知生产者，以及使用`FOR UPDATE SKIP LOCKED`获取作业以实现安全的并发访问。随后，作业作为异步任务执行。

开源版本通过asyncio处理并发，但仅限于单线程执行，因此不适合CPU密集型任务。它还缺少批量操作，并使用基于时间的“救援”机制处理孤立作业，这可能导致长时间运行任务的重复执行。

关键后台进程包括领导者选举系统（通过PostgreSQL中基于TTL的租约实现）、用于救援卡住作业的生命线，以及清理旧记录的修剪器。重试逻辑采用抖动指数退避算法，以防止惊群效应。

商业Pro版本通过添加进程池实现的真正并行性、批量操作、更智能的作业救援心跳机制，以及唯一作业和工作流等功能，解决了开源版本的局限性。文章总结指出，虽然开源版Oban-py非常适合评估或小型项目，但由于其增强的性能和可靠性特性，Pro版本被推荐用于生产级应用。

---

## 5. 计算机历史博物馆推出其馆藏数字门户

**原文标题**: Computer History Museum Launches Digital Portal to Its Collection

**原文链接**: [https://computerhistory.org/press-releases/computer-history-museum-launches-digital-portal-to-its-vast-collection/](https://computerhistory.org/press-releases/computer-history-museum-launches-digital-portal-to-its-vast-collection/)

**摘要**

2026年1月21日，位于加利福尼亚州山景城的计算机历史博物馆宣布推出一个重要的全新数字门户网站，提供对其丰富馆藏的在线访问。这一举措标志着该博物馆在向全球观众开放其庞大的计算历史档案方面迈出了重要一步。

该门户网站的主要目标是让博物馆的实体文物、文件、软件和媒体资源能够被大众便捷获取。它使研究人员、学生、教育工作者和普通公众能够从世界任何地方探索精心策划的藏品、高分辨率图像和详细的编目记录。其主要功能包括高级搜索能力、主题在线展览以及对具有历史意义的软件和硬件的数字保存。

此次发布突显了计算机历史博物馆在数字时代致力于保存和展示计算历史的使命。通过创建这一全面的在线资源，博物馆旨在促进对塑造现代世界的技术革命有更深入的教育、创新和认识。

---

## 6. 展示 HN：HN 街机

**原文标题**: Show HN: The HN Arcade

**原文链接**: [https://andrewgy8.github.io/hnarcade/](https://andrewgy8.github.io/hnarcade/)

**摘要：**

“HN街机”是一个由社区创建的网站，专门收集并托管那些受Hacker News启发或在其上讨论的简单、可直接在浏览器中游玩的小游戏。该项目的主要目标是创建一个经过筛选的互动式档案库，收录那些经常在HN评论区分享的经典和创新游戏，这些游戏可能因时间流逝而难以查找或彻底消失。

网站的主要特点包括：
*   **精选合集：** 收集的游戏通常体量轻巧，采用Web技术（如JavaScript）开发，并具有巧妙或极简的设计。
*   **直接可玩：** 游戏被嵌入或链接，无需下载即可直接在浏览器中游玩。
*   **社区驱动：** 游戏的选择基于Hacker News社区本身的提交和讨论。
*   **保存功能：** 它充当了这些通常是实验性项目的数字档案馆，确保它们能够持续被访问。

这个街机既是一个有趣的消遣之地，也是对HN社区内经常展示的创造性和技术实验精神的致敬。

---

## 7. 我用纯C语言编写了gemma3推理程序。

**原文标题**: I have written gemma3 inference in pure C

**原文链接**: [https://github.com/robitec97/gemma3.c](https://github.com/robitec97/gemma3.c)

**概述**

`gemma3.c` 是一个用纯 C 语言（C11）编写的 Gemma 3 4B IT 语言模型推理引擎，旨在证明现代大语言模型无需依赖 Python、PyTorch 或 GPU 即可运行。它是一个自包含、无依赖的完整 Gemma 3 架构实现，包含了 GQA、混合注意力机制和 SwiGLU。

该引擎直接从内存映射的 SafeTensors 文件加载 BF16 模型权重，并内置了原生的 SentencePiece 分词器。它既支持用于交互式聊天或单次提示的命令行界面，也提供了用于集成的库 API。在 CPU 上运行时，生成速度约为每秒 1-3 个词元。

主要特性包括：流式逐词元输出、可配置的生成参数（温度、top-k/p），以及用于从 Hugging Face 下载模型的脚本。运行时约需 3 GB 内存，模型权重在磁盘上占用约 8 GB。它原生兼容 Linux 和 macOS；Windows 用户建议使用 WSL 或 MinGW。

目前的限制包括：仅支持 CPU 运行、仅具备文本处理能力，且不支持量化。该项目基于 MIT 许可证发布，模型权重则遵循 Google 的 Gemma 许可证。

---

## 8. 我过度设计了一个陀螺

**原文标题**: I Overengineered a Spinning Top

**原文链接**: [https://www.youtube.com/watch?v=Wp5NodfvvF4](https://www.youtube.com/watch?v=Wp5NodfvvF4)

这段文字似乎是YouTube视频页面的标准法律和信息页脚，而非视频《我过度设计了一个陀螺》的实际内容。

因此，对所提供内容的总结如下：

该文本完全由YouTube的通用页脚信息构成。它包括政策链接（版权、条款、隐私）、YouTube/Google的联系方式、公司地址，以及声明YouTube不对视频中展示的产品负责的法律免责声明。由于文章正文内容缺失，其中没有任何关于视频实际主题——即创作者过度设计陀螺的过程——的信息。

**所展示文本的关键点：**
*   这是YouTube的标准法律和行政文本。
*   包含版权信息、政策链接和谷歌的业务详情。
*   包含一项免责声明，即YouTube不出售也不认可视频中展示的产品。
*   **关键的是，它没有提供关于视频主题或内容的任何细节。**

---

## 9. 旋转吧：请不要这样做——自旋锁的常见问题

**原文标题**: Spinning around: Please don't – Common problems with spin locks

**原文链接**: [https://www.siliceum.com/en/blog/post/spinning-around/](https://www.siliceum.com/en/blog/post/spinning-around/)

本文详细阐述了实现自旋锁时常见的陷阱，并建议在现代软件中避免使用。文章首先指出一个存在竞态条件的基本非线程安全自旋锁，随后展示如何通过原子操作修复该问题，但这种方法又引入了新的难题。

讨论的核心问题包括：
1.  **CPU资源消耗**：简单的空转循环会使CPU核心保持高频运行，浪费电力并产生热量。
2.  **性能损失**：在现代多核和NUMA系统中，持续自旋会导致核心间昂贵的内存同步操作，严重降低性能，在同时多线程（SMT/超线程）环境下尤为明显。
3.  **等待机制缺陷**：解决方案是在循环中使用CPU的`PAUSE`指令（或ARM架构的等效指令`__yield()`）。这向CPU表明线程处于等待状态，既能降低功耗，又可避免内存顺序违规导致的性能损失。
4.  **退避策略**：为减少竞争冲突，建议采用指数退避策略，逐步增加锁尝试之间的`PAUSE`指令次数。
5.  **架构差异**：不同CPU架构（英特尔与AMD、新旧型号）中`PAUSE`指令的CPU周期时长差异巨大（约10到超过160个周期）。因此固定的退避计数器可能导致等待时间过长或不足。
6.  **最终解决方案**：文章建议利用CPU时间戳计数器（TSC）实现有时限的退避机制，将总自旋时长限制在微秒级，使等待时间保持稳定且不受架构影响。

贯穿全文的核心观点是：自旋锁实现复杂、易出错，且需要深厚的架构知识才能正确实施。作者强烈建议改用操作系统提供的同步原语。

---

## 10. LM Studio 0.4.0

**原文标题**: LM Studio 0.4.0

**原文链接**: [https://lmstudio.ai/blog/0.4.0](https://lmstudio.ai/blog/0.4.0)

LM Studio 0.4.0 推出了一项重大更新，重点在于提升部署灵活性、性能表现以及焕然一新的用户体验。核心新增功能是 **llmster**，这是一个无头服务器原生守护进程，通过新的命令行界面（CLI），允许将核心软件部署在云服务器、CI流水线或任何无需图形界面的环境中。

在性能方面，本次更新引入了**支持连续批处理的并行请求处理**（通过升级的 llama.cpp 引擎），实现了高吞吐量的并发推理，而非排队等待。全新的**有状态 REST API 端点（`/v1/chat`）** 支持多轮对话，并能集成本地配置的 MCP（模型上下文协议）。

桌面应用程序进行了**全面的界面更新**，新增聊天导出功能（PDF、Markdown、文本）、多聊天分屏视图、面向高级选项的开发者模式以及内置应用文档。命令行界面也得到增强，新增了交互式的 `lms chat` 命令。

总体而言，LM Studio 0.4.0 已从仅限桌面的应用程序，转变为一个既适合本地开发又适用于可扩展服务器端部署的平台。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 2 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 3 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 4 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 5 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 6 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 7 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 8 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 9 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 10 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 11 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 12 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 13 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 14 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 15 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 16 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 17 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 18 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 19 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 20 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 21 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 22 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 23 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 24 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 25 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 26 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 27 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 28 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 29 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 30 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 31 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 32 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 33 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 34 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 35 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 36 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 37 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 38 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 39 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 40 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 41 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 42 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 43 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 44 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 45 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 46 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 47 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 48 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 49 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 50 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 51 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 52 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 53 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 54 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 55 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 56 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 57 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 58 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 59 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 60 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 61 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 62 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 63 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 64 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 65 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 66 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 67 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 68 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 69 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 70 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 71 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 72 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 73 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 74 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 75 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 76 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 77 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 78 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 79 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 80 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 81 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 82 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 83 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 84 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 85 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 86 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 87 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 88 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 89 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 90 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 91 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 92 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 93 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 94 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 95 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 96 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 97 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 98 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 99 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 100 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 101 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 102 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 103 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 104 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 105 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 106 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 107 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 108 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 109 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 110 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 111 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 112 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 113 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 114 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 115 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 116 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 117 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 118 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 119 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 120 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 121 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 122 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 123 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 124 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 125 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 126 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 127 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 128 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 129 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 130 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 131 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 132 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 133 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 134 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 135 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 136 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 137 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 138 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 139 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 140 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 141 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 142 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 143 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 144 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 145 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 146 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 147 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 148 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 149 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 150 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 151 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 152 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 153 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 154 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 155 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 156 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 157 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 158 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 159 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 160 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 161 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 162 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 163 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 164 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 165 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 166 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 167 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 168 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 169 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 170 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 171 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 172 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 173 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 174 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 175 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 176 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 177 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 178 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 179 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 180 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 181 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 182 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 183 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 184 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 185 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 186 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 187 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 188 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 189 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 190 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 191 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 192 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 193 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 194 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 195 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 196 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 197 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 198 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 199 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 200 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 201 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 202 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 203 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 204 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 205 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 206 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 207 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 208 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 209 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 210 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 211 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 212 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 213 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 214 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 215 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 216 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 217 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 218 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 219 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 220 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 221 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 222 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 223 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 224 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 225 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 226 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 227 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 228 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 229 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 230 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 231 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 232 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 233 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 234 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 235 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 236 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 237 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 238 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 239 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 240 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 241 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 242 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 243 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 244 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 245 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 246 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 247 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 248 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 249 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 250 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 251 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 252 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 253 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 254 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 255 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 256 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 257 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 258 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 259 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 260 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 261 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 262 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 263 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 264 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 265 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 266 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 267 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 268 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 269 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 270 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 271 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 272 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 273 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 274 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 275 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 276 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 277 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 278 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 279 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 280 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 281 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 282 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 283 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 284 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 285 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 286 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 287 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 288 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 289 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 290 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 291 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 292 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 293 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 294 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 295 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 296 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 297 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 298 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 299 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 300 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 301 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 302 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 303 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 304 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 305 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 306 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 307 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 308 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 309 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 310 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 311 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 312 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
