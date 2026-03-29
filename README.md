# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-29.md)

*最后自动更新时间: 2026-03-29 20:36:28*
## 1. 旅行者1号运行于69KB内存和一台8轨磁带录音机之上。

**原文标题**: Voyager 1 runs on 69 KB of memory and an 8-track tape recorder

**原文链接**: [https://techfixated.com/a-1977-time-capsule-voyager-1-runs-on-69-kb-of-memory-and-an-8-track-tape-recorder-4/](https://techfixated.com/a-1977-time-capsule-voyager-1-runs-on-69-kb-of-memory-and-an-8-track-tape-recorder-4/)

旅行者1号于1977年发射，是人类制造的最遥远人造物体，在距离地球超过150亿英里的太空中运行。尽管技术条件极其有限——仅配备69KB内存的计算机和一台坚固的定制八轨磁带录音机（2007年因电力限制而非故障关闭），它仍在持续从星际空间传回独特的科学数据。

该探测器原定执行为期五年的木星与土星探测任务，其重要发现包括木卫一上的活火山和土卫六的浓厚大气层。2012年，它成为首个穿越太阳系边界进入星际空间的航天器。

2025年，NASA工程师实施了一项关键的高风险操作，成功唤醒了长期休眠的推进器，在备用系统逐渐失效的情况下避免了通信中断。此举挽救了整个任务，使旅行者1号得以继续航行。

依靠放射性同位素发电机提供动力，该航天器预计将持续传回工程数据至2036年左右。它携带的金唱片收录了地球的声音与影像，作为留给潜在外星发现者的时间胶囊。旅行者1号的持久运行，堪称严谨保守的工程设计与人类智慧的非凡见证。

---

## 2. C++26标准会议完成，行程报告

**原文标题**: C++26 is done ISO C++ standards meeting, Trip Report

**原文链接**: [https://herbsutter.com/2026/03/29/c26-is-done-trip-report-march-2026-iso-c-standards-meeting-london-croydon-uk/](https://herbsutter.com/2026/03/29/c26-is-done-trip-report-march-2026-iso-c-standards-meeting-london-croydon-uk/)

ISO C++委员会已正式完成C++26标准的制定。此次发布被视为自C++11以来最重要的更新，包含四大核心进展：

1.  **反射机制**：允许代码在编译时检查和生成其他代码，为构建抽象提供了强大的新引擎。
2.  **内存安全**：现有代码以C++26重新编译后将更安全，读取未初始化的局部变量不再属于未定义行为，且“强化版”标准库为常用类型提供边界检查。
3.  **契约编程**：引入对前置条件、后置条件和断言（`contract_assert`）的语言级支持，提升代码正确性与功能安全。
4.  **`std::execution`**：提供异步与并行编程的统一模型，推动结构化并发。

鉴于开发者需求强烈且编译器厂商将快速实现，委员会预计该标准将迅速被采纳。当前工作已转向C++29，重点仍将通过安全配置提案和进一步减少未定义行为，持续强化内存安全。

---

## 3. “氛围编程”耻辱墙

**原文标题**: The "Vibe Coding" Wall of Shame

**原文链接**: [https://crackr.dev/vibe-coding-failures](https://crackr.dev/vibe-coding-failures)

这篇文章题为《“氛围编程”耻辱墙》，记录了一种日益严重的趋势：由于不加批判地使用AI生成代码（这种做法被称为“氛围编程”）而导致重大软件故障频发。

主要观点如下：
*   **定义：** 氛围编程是指用自然语言描述所需功能，不经适当审查或理解便接受AI生成的代码，并直接将其部署到生产环境中的做法。
*   **记录的影响：** 文章列举了2025年至2026年间34起具体的、高严重性事件，包括大规模生产中断（例如亚马逊损失630万笔订单）、重大数据泄露、关键安全漏洞（CVE）以及影响数百万用户的供应链受损事件。
*   **根本原因：** 这些故障有一个共同原因：开发者部署了他们并不理解的代码。AI生成的代码看似正确，但在安全性、逻辑或操作层面存在根本性缺陷。
*   **风险加剧：** 问题正在恶化，归因于AI的CVE数量急剧增加，研究发现几乎所有使用主流AI编码工具构建的应用程序都存在普遍漏洞（如缺少CSRF保护）。
*   **结论：** 文章认为，AI只有在理解其输出的开发者手中才是强大工具。若缺乏数据结构、算法和系统设计的基础知识，依赖“氛围”而非理解将带来重大责任风险。

---

## 4. 认知黑暗森林

**原文标题**: The Cognitive Dark Forest

**原文链接**: [https://ryelang.org/blog/posts/cognitive-dark-forest/](https://ryelang.org/blog/posts/cognitive-dark-forest/)

本文认为，互联网正演变为一片“认知黑暗森林”——一个创新日益危险的敌对环境。文章将早期开放、共享理念与代码有益的“光明草甸”式互联网，与当今由企业和政府主导的、高度垄断与掠夺的生态格局进行对比。

核心威胁来自人工智能。虽然AI降低了执行成本，但也使拥有庞大资源的强大平台能够迅速吸收并复制任何成功的新创意，令竞争失去意义。此外，每一次指令输入和公共创新都会成为这些AI系统的训练数据，既暴露集体意图，也让“森林”得以预判趋势。

因此，最理性的生存策略是隐藏：在私密中创新，停止知识共享。这将扼杀曾推动过去进步的活力公共生态。文章的核心悖论在于：任何抵抗或超越该系统的尝试，最终都会反哺系统——新创意被吸收后，反而让AI变得更强大。作者指出，就连撰写这篇警示文章本身也在助长此动态，这恰恰说明并不存在能够批判“黑暗森林”的外部立场。

---

## 5. 更多关于版本控制

**原文标题**: More on Version Control

**原文链接**: [https://bramcohen.com/p/more-on-version-control](https://bramcohen.com/p/more-on-version-control)

在这篇对先前文章的后续更新中，Bram Cohen进一步阐述了他提出的版本控制系统方案。他澄清道，除了"安全变基"外，他的设计还能支持"安全压缩"操作（选择更早的主祖先节点），完整保留历史记录而非Git的破坏性处理方式。这使得系统在保持常用命令输出相似的同时，能提供更丰富的信息并减少操作陷阱。

Cohen认为，Git虽然简单可靠但功能缺失，迫使使用者手动管理历史记录。他的目标是创建一个足够吸引人迁移的系统，在提交时需确定差异内容的前提下，提供更安全的变基/压缩、更完善的本地撤销和遴选功能——他认为这种取舍是行为模式上的进步，但需要构建稳健且保守更新的核心架构。

他探讨了若干技术细节："左"/"右"标签的指导性属性、近期独立发明的"锚定"CRDT算法（他将其与早先的"代际计数"构想结合），以及合并实现中仅含删除的代码段默认不触发冲突的特性。

文章最后简要讨论了人工智能，对比了AI生成代码（可能产生难以阅读的"意大利面条式代码"）的风险与AI辅助写作（他曾用于前篇文章）的较低风险。不过本文是采用"手工匠作"方式完成的。

---

## 6. Pretext：用于多行文本测量和布局的TypeScript库

**原文标题**: Pretext: TypeScript library for multiline text measurement and layout

**原文链接**: [https://github.com/chenglou/pretext](https://github.com/chenglou/pretext)

Pretext 是一个 TypeScript 库，用于在不触发浏览器布局重排的情况下测量和布局多行文本。它通过 canvas 利用浏览器的字体引擎来准确高效地测量文本，支持复杂文字、表情符号和双向文本。

该库提供两种主要使用场景：
1. **快速高度测量**：使用 `prepare()` 一次性分析文本，然后通过 `layout()` 根据给定宽度计算高度和行数——完全通过算术运算，避免 DOM 操作。
2. **手动分行布局**：使用 `prepareWithSegments()` 及 `layoutWithLines()` 或 `layoutNextLine()` 等函数，为 Canvas、SVG 或自定义布局实现逐行渲染控制。

主要特性包括支持 `white-space: normal`（默认）和 `pre-wrap`、区域感知分词，以及用于文本自适应收缩的实用工具如 `walkLineRanges()`。它避免了 DOM 测量带来的性能损耗，适用于高性能虚拟化列表、精确的 UI 布局和服务器端渲染。

注意：它遵循 CSS 默认设置如 `overflow-wrap: break-word`，且目前为避免误差，在 macOS 上不使用 `system-ui` 字体。

---

## 7. 我的MacBook键盘坏了，修理费用贵得离谱。

**原文标题**: My MacBook Keyboard Is Broken and It's Insanely Expensive to Fix

**原文链接**: [https://tobiasberg.net/posts/my-macbook-keyboard-is-broken-and-its-insanely-expensive-to-fix/](https://tobiasberg.net/posts/my-macbook-keyboard-is-broken-and-its-insanely-expensive-to-fix/)

作者的MacBook Pro右方向键卡住，导致笔记本几乎无法使用。清洁无效后，他们发现苹果将键盘铆接在上壳上，简单的键盘维修竟需要更换整个外壳。仅零件费用就高达约730欧元，占笔记本原价的很大比例，还需额外支付专业维修的人工费。

作者认为维修费用荒谬，转而选择用Karabiner Elements软件进行键位重映射，禁用故障键并向该项目捐款。这次经历让作者对苹果阻碍可维修性的设计感到沮丧。

作者最后表示，下次购买笔记本将优先考虑ThinkPad或Framework等注重可维修性的品牌，并希望未来政府能出台法规，强制消费电子产品提高可维修性。

---

## 8. 打字与键盘

**原文标题**: Typing and Keyboards

**原文链接**: [https://lzon.ca/posts/series/grateful/typing-and-keyboards/](https://lzon.ca/posts/series/grateful/typing-and-keyboards/)

这篇博客文章回顾了作者对打字和键盘的毕生热爱。他回忆起上世纪90年代在小学学习打字的经历，这为他如今娴熟的打字技能奠定了基础。青少年时期，他购买的第一款发烧级键盘是雷蛇黑寡妇，这把键盘陪伴他使用了十多年。

如今，他使用一套定制设备：RK R65键盘、Epomaker数字小键盘和红武士键帽，并称赞这套组合带来的打字体验提升。作者还提到可编程固件（如VIA/QMK）在个性化设置中的实用性。

他感激早年接受的打字训练，并认为打字依然是至关重要且极具价值的技能，让他能够以思维的速度进行写作和编程。文章最后，作者表达了对年轻一代计算机素养下降的担忧，并邀请同好们相互交流。

---

## 9. Neovim 0.12.0

**原文标题**: Neovim 0.12.0

**原文链接**: [https://github.com/neovim/neovim/releases/tag/v0.12.0](https://github.com/neovim/neovim/releases/tag/v0.12.0)

本文宣布Neovim 0.12.0版本正式发布，为各大操作系统提供最新稳定版的直接下载链接与安装指南。

核心信息包括：
*   **发布时间：** 0.12.0版本于3月29日正式发布。
*   **获取方式：** 提供Windows（MSI/Zip格式）、macOS（x86_64与arm64压缩包）及Linux（x86_64与arm64 AppImage/压缩包）的预编译二进制文件。
*   **安装指引：** 针对各平台提供从下载、解压到运行Neovim的简明步骤命令。
*   **扩展资源：** 发布内容附带了更新日志、版本说明及新闻文档（在Nvim内使用`:help news`命令查看）。

本文作为简洁的下载中心，为用户提供跨系统架构的清晰指引，帮助用户快速获取这款文本编辑器的最新版本。

---

## 10. RISE RISC-V 运行器：GitHub上免费的原生RISC-V持续集成服务

**原文标题**: The RISE RISC-V Runners: free, native RISC-V CI on GitHub

**原文链接**: [https://riseproject.dev/2026/03/24/announcing-the-rise-risc-v-runners-free-native-risc-v-ci-on-github/](https://riseproject.dev/2026/03/24/announcing-the-rise-risc-v-runners-free-native-risc-v-ci-on-github/)

RISE项目推出了名为RISE RISC-V Runners的免费托管GitHub Actions服务，为开源项目提供即时可用的原生RISC-V硬件持续集成环境。

该服务直接解决了RISC-V推广的关键障碍，使项目无需自行采购管理物理硬件或仅依赖模拟器。开发者可便捷地在真实RISC-V芯片上测试软件，捕获硬件相关缺陷。

使用方式简单：安装对应的GitHub应用（支持组织或个人账户），并将工作流中的`runs-on`标签改为`ubuntu-24.04-riscv`。平台随即会在Scaleway提供的专用裸机RISC-V服务器上自动配置临时运行器，确保性能稳定。该环境支持容器化工作流的Docker-in-Docker方案。

整个平台完全开源，无需审批流程或等待名单。RISE鼓励开发者使用该服务，为其贡献的项目提议添加RISC-V持续集成，并参与运行器基础设施的开源开发。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 2 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 3 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 4 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 5 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 6 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 7 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 8 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 9 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 10 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 11 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 12 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 13 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 14 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 15 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 16 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 17 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 18 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 19 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 20 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 21 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 22 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 23 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 24 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 25 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 26 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 27 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 28 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 29 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 30 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 31 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 32 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 33 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 34 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 35 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 36 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 37 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 38 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 39 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 40 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 41 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 42 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 43 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 44 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 45 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 46 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 47 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 48 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 49 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 50 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 51 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 52 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 53 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 54 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 55 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 56 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 57 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 58 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 59 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 60 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 61 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 62 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 63 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 64 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 65 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 66 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 67 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 68 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 69 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 70 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 71 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 72 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 73 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 74 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 75 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 76 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 77 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 78 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 79 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 80 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 81 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 82 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 83 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 84 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 85 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 86 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 87 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 88 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 89 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 90 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 91 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 92 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 93 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 94 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 95 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 96 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 97 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 98 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 99 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 100 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 101 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 102 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 103 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 104 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 105 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 106 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 107 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 108 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 109 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 110 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 111 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 112 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 113 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 114 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 115 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 116 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 117 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 118 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 119 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 120 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 121 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 122 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 123 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 124 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 125 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 126 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 127 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 128 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 129 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 130 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 131 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 132 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 133 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 134 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 135 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 136 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 137 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 138 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 139 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 140 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 141 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 142 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 143 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 144 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 145 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 146 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 147 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 148 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 149 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 150 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 151 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 152 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 153 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 154 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 155 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 156 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 157 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 158 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 159 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 160 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 161 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 162 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 163 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 164 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 165 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 166 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 167 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 168 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 169 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 170 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 171 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 172 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 173 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 174 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 175 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 176 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 177 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 178 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 179 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 180 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 181 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 182 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 183 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 184 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 185 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 186 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 187 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 188 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 189 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 190 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 191 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 192 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 193 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 194 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 195 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 196 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 197 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 198 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 199 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 200 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 201 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 202 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 203 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 204 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 205 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 206 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 207 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 208 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 209 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 210 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 211 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 212 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 213 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 214 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 215 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 216 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 217 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 218 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 219 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 220 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 221 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 222 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 223 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 224 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 225 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 226 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 227 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 228 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 229 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 230 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 231 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 232 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 233 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 234 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 235 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 236 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 237 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 238 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 239 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 240 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 241 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 242 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 243 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 244 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 245 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 246 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 247 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 248 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 249 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 250 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 251 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 252 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 253 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 254 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 255 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 256 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 257 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 258 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 259 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 260 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 261 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 262 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 263 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 264 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 265 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 266 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 267 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 268 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 269 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 270 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 271 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 272 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 273 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 274 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 275 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 276 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 277 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 278 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 279 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 280 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 281 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 282 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 283 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 284 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 285 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 286 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 287 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 288 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 289 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 290 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 291 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 292 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 293 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 294 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 295 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 296 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 297 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 298 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 299 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 300 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 301 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 302 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 303 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 304 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 305 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 306 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 307 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 308 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 309 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 310 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 311 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 312 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 313 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 314 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 315 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 316 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 317 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 318 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 319 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 320 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 321 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 322 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 323 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 324 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 325 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 326 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 327 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 328 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 329 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 330 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 331 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 332 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 333 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 334 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 335 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 336 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 337 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 338 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 339 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 340 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 341 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 342 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 343 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 344 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 345 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 346 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 347 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 348 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 349 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 350 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 351 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 352 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 353 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 354 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 355 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 356 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 357 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 358 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 359 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 360 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 361 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 362 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 363 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 364 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 365 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 366 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 367 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 368 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 369 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 370 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 371 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 372 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
