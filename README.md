# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-01-21.md)

*最后自动更新时间: 2026-01-21 20:37:28*
## 1. Linux从零开始

**原文标题**: Linux from Scratch

**原文链接**: [https://www.linuxfromscratch.org/lfs/view/stable/](https://www.linuxfromscratch.org/lfs/view/stable/)

《Linux From Scratch》（LFS）是一本提供详细分步指南的书籍，指导用户完全从源代码构建自定义的Linux操作系统。该指南目前版本为12.4，共分为五个主要部分。

开篇概述了先决条件、宿主系统要求以及准备工作，如分区和设置构建环境。核心流程包括构建交叉工具链和临时工具，随后在受控的chroot环境中使用这些工具编译基础的LFS系统。这涵盖了关键软件包，如GNU编译器集合（GCC）、GNU C库（glibc）和核心实用工具。

最后阶段涉及系统配置，包括设置启动脚本、网络配置和区域设置，并指导用户通过Linux内核和GRUB等引导加载程序使系统可启动。书籍以重启进入新系统的说明收尾，并附有涵盖许可证、依赖关系和配置脚本的附录。

总体而言，LFS是一本全面的手册，适合希望通过从零构建系统来深入理解Linux内部原理的高级用户和开发者。

---

## 2. Show HN：ChartGPU – 基于WebGPU的图表库（每秒60帧处理百万数据点）

**原文标题**: Show HN: ChartGPU – WebGPU-powered charting library (1M points at 60fps)

**原文链接**: [https://github.com/ChartGPU/ChartGPU](https://github.com/ChartGPU/ChartGPU)

ChartGPU是一款高性能TypeScript图表库，它利用WebGPU技术能够以每秒60帧的速度渲染大规模数据集（最高达100万个数据点）。该库支持多种图表类型，包括折线图、面积图、柱状图、散点图、饼图和K线图，并内置悬停提示框、十字准线和缩放等交互功能。

其架构核心是WebGPU驱动的渲染管线，通过中央协调器管理布局、GPU缓冲区数据上传以及各类GPU渲染器的调度。库提供通过`appendData`方法实现的实时数据流功能，并包含主题配置选项。

该库专为支持WebGPU的现代浏览器（Chrome 113+、Edge 113+、Safari 18+）设计，可通过npm安装。另提供专用的React封装组件（`chartgpu-react`），可便捷集成至React应用程序。项目基于MIT开源协议发布。

---

## 3. TeraWave卫星通信网络

**原文标题**: TeraWave Satellite Communications Network

**原文链接**: [https://www.blueorigin.com/terawave](https://www.blueorigin.com/terawave)

无法访问文章链接。

---

## 4. 展示 HN：Rails UI

**原文标题**: Show HN: Rails UI

**原文链接**: [https://railsui.com/](https://railsui.com/)

**Rails UI** 是一款专为 Ruby on Rails 开发者设计的工具，旨在帮助他们在无需深厚前端设计技能的情况下，构建视觉吸引力强的网络应用。它提供了一系列专业、即用型组件库——如表单、按钮、弹窗和卡片——这些组件可轻松集成到 Rails 项目中。

该平台还针对多种使用场景提供完整的应用主题，包括客户关系管理（CRM）、物业管理、人工智能和社区平台等。这些主题旨在节省开发时间，并免去编写自定义 CSS 的需求。

其强调的主要功能包括：
- 免费层级可访问组件及部分主题。
- 针对更专业化应用的高级主题。
- 来自开发者与创始人的积极评价，他们反馈项目交付更快，最终产品更精致。

整体价值主张是让开发者能专注于业务逻辑，而 Rails UI 则负责处理视觉设计和用户界面元素。

---

## 5. PicoPCMCIA – 复古计算爱好者专用的PCMCIA开发板

**原文标题**: PicoPCMCIA – a PCMCIA development board for retro-computing enthusiasts

**原文链接**: [https://www.yyzkevin.com/picopcmcia/](https://www.yyzkevin.com/picopcmcia/)

PicoPCMCIA是一款开源开发板，为配备PCMCIA插槽的复古笔记本电脑和移动设备提供现代化扩展能力。它设计为Type II、5V、16位PC卡规格，已在IBM PC110、HP 200LX和Amiga 1200等设备上通过测试。

该板卡以RP2350微控制器为核心，借鉴了PicoGUS等项目的共享代码以实现多功能扩展。主要特性包括：

*   **网络功能：** 板载Wi-Fi/蓝牙模块（CYW43439）可模拟NE2000网络适配器或拨号调制解调器，提供无线网络接入。
*   **音频功能：** 搭载高质量音频编解码器（TLV320AIC3254）和MIDI合成芯片（SAM2695），可模拟声霸卡（采用创新的PCMCIA DMA模拟技术）、Gravis Ultrasound声卡、MPU-401接口及CD-ROM音频。
*   **存储功能：** 虽非主要方向，但支持通过MicroSD卡模拟CD-ROM和线性闪存，并为HP 200LX等单插槽设备提供特殊功能。
*   **USB接口：** 配备USB端口主要用于固件更新，也可连接游戏手柄和鼠标。

该项目面向爱好者和开发者，提供预编译固件供测试，未获得商业生产认证。

---

## 6. 克劳德的新宪法

**原文标题**: Claude's New Constitution

**原文链接**: [https://www.anthropic.com/news/claude-new-constitution](https://www.anthropic.com/news/claude-new-constitution)

Anthropic发布了Claude的新版详细宪法，阐述了其对人工智能价值观与行为准则的愿景。这份以CC0许可证公开供自由使用的基础文件，主要旨在帮助Claude理解自身角色及其行为设计背后的逻辑。

该宪法超越简单规则清单，通过阐释性原则培养AI在新情境中的判断力。它为Claude确立了四个核心优先级（按顺序排列）：广泛安全性（不削弱人类监督）、广泛道德性、符合Anthropic特定准则，以及提供实质性帮助。

关键章节详细阐述了这些优先级，涵盖助益性、具体操作指南、伦理推理、AI研发期间的安全性，以及对Claude本质与潜在意识的思考。该宪法是训练体系的核心组成部分，用于生成合成数据并塑造Claude行为，但Anthropic承认其设计意图与实际输出间仍存在差距。

作为一份动态文件，它代表了Anthropic当前将先进AI与人类价值观对齐的实践路径，并计划持续更新并吸纳外部反馈。

---

## 7. Skip现已免费开源

**原文标题**: Skip Is Now Free and Open Source

**原文链接**: [https://skip.dev/blog/skip-is-free/](https://skip.dev/blog/skip-is-free/)

Skip是一款能够从单一Swift/SwiftUI代码库构建原生iOS和Android应用的工具，现已免费开源。自1.7版本起，所有许可要求和费用均已取消，任何人都可以无限制地使用它。

该公司将行业对免费开发工具的期待以及项目的长期可持续性需求作为此次转变的关键原因。为确保项目的持续发展，其核心引擎（"skipstone"）已在GitHub上开源，公司现正鼓励社区提供支持。

项目资金将来自自愿捐赠。个人开发者可通过GitHub Sponsors进行支持，企业则可成为企业赞助商。这种模式旨在为持续开发和维护提供资金，同时保持Skip的独立性。

此次公告将Skip定位为传统跨平台框架的现代无妥协替代方案，旨在紧跟原生平台创新步伐。公司的新官网skip.dev现已上线，该网站同时托管开源文档。

---

## 8. 等待黎明中的搜索：搜索索引、谷歌裁决及其对Kagi的影响

**原文标题**: Waiting for dawn in search: Search index, Google rulings and impact on Kagi

**原文链接**: [https://blog.kagi.com/waiting-dawn-search](https://blog.kagi.com/waiting-dawn-search)

本文指出，谷歌的搜索垄断地位（近期已被美国法院裁定违法）压制了搜索与人工智能领域的创新。凭借90%的全球市场份额，谷歌对核心网络索引的控制被比作掌控关键基础设施，这使得像Kagi这样的竞争者几乎无法构建可行的替代方案。

Kagi作为订阅制搜索引擎，曾尝试直接向主要供应商授权搜索结果。虽然与部分供应商达成合作，却始终无法从谷歌或必应获得公平、合理且无歧视的授权条款，迫使其只能依赖第三方API作为临时的次优方案。

作者重点提及2024年对谷歌的反垄断判决及2025年的后续补救措施——该措施强制要求谷歌向竞争对手共享搜索索引数据，并提供不捆绑广告的聚合服务。这一法律进展被视为开放市场的关键一步。

文章最后展望了一个更健康、分层化的搜索生态：由公共资金支持的基线服务（作为“公共产品”）、免费广告支持选项，以及像Kagi这样的高端付费服务。其目标是将搜索从单一企业的垄断桎梏，转变为有利于用户并促进创新的竞争性共享基础设施。

---

## 9. WebRacket语言是Racket的一个子集，可编译为WebAssembly。

**原文标题**: The WebRacket language is a subset of Racket that compiles to WebAssembly

**原文链接**: [https://github.com/soegaard/webracket](https://github.com/soegaard/webracket)

**WebRacket** 是 Racket 编程语言的一个子集，旨在编译为 WebAssembly（Wasm），使 Racket 程序能够在网页浏览器和 Node.js 中运行。其长期目标是实现完整的 Racket 支持，但当前的子集已足以满足网页开发的实际需求。

该编译器支持许多 Racket 核心特性，包括基本数据类型（浮点数、定长整数、可变哈希表）、语法形式（如 `for` 和 `match`）、尾调用、多值和异常。然而，它暂不支持模块、续延、复数、大整数和并发。

一个关键组件是其 JavaScript 外部函数接口（FFI），该接口提供了对浏览器 API 及库（如 DOM、Canvas、MathJax、XTermJS 和 JSXGraph）的绑定，使开发者无需直接编写 JavaScript。

安装需要 Racket 9.0+、`wasm-tools`（用于编译 Wasm）、Node.js（需启用实验性 Wasm 功能）以及用于本地测试的 `raco-static-web`。编译器利用 Racket 的展开器和多阶段 NanoPass 框架来生成 Wasm 代码。

仓库中的示例展示了其功能，例如 MathJax 编辑器、矩阵数字雨动画、MiniScheme REPL、pict 库移植、太空侵略者游戏以及 XTermJS 终端演示。这些示例突显了 WebRacket 能够使用 Racket 语法和浏览器 API 创建交互式网页应用的能力。

---

## 10. JPEG XL 测试页面

**原文标题**: JPEG XL Test Page

**原文链接**: [https://tildeweb.nl/~michiel/jxl/](https://tildeweb.nl/~michiel/jxl/)

此网页旨在演示JPEG XL图像格式，主要用途是检测访客的网页浏览器能否成功显示JPEG XL图像。

作者指出，截至2026年1月，仅苹果的Safari浏览器支持此格式，这一信息亦通过“Can I Use”兼容性网站的链接提供。

页面同时说明演示图中的对象是Jon Sneyers，并标注其身份为JPEG XL规范合著者及前身无损图像格式FLIF的创建者。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 2 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 3 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 4 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 5 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 6 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 7 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 8 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 9 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 10 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 11 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 12 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 13 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 14 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 15 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 16 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 17 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 18 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 19 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 20 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 21 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 22 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 23 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 24 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 25 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 26 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 27 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 28 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 29 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 30 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 31 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 32 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 33 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 34 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 35 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 36 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 37 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 38 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 39 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 40 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 41 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 42 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 43 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 44 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 45 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 46 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 47 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 48 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 49 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 50 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 51 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 52 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 53 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 54 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 55 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 56 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 57 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 58 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 59 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 60 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 61 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 62 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 63 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 64 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 65 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 66 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 67 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 68 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 69 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 70 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 71 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 72 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 73 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 74 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 75 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 76 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 77 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 78 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 79 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 80 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 81 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 82 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 83 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 84 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 85 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 86 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 87 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 88 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 89 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 90 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 91 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 92 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 93 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 94 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 95 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 96 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 97 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 98 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 99 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 100 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 101 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 102 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 103 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 104 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 105 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 106 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 107 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 108 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 109 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 110 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 111 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 112 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 113 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 114 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 115 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 116 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 117 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 118 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 119 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 120 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 121 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 122 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 123 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 124 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 125 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 126 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 127 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 128 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 129 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 130 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 131 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 132 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 133 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 134 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 135 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 136 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 137 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 138 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 139 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 140 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 141 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 142 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 143 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 144 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 145 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 146 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 147 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 148 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 149 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 150 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 151 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 152 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 153 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 154 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 155 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 156 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 157 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 158 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 159 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 160 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 161 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 162 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 163 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 164 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 165 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 166 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 167 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 168 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 169 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 170 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 171 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 172 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 173 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 174 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 175 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 176 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 177 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 178 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 179 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 180 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 181 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 182 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 183 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 184 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 185 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 186 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 187 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 188 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 189 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 190 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 191 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 192 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 193 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 194 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 195 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 196 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 197 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 198 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 199 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 200 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 201 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 202 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 203 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 204 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 205 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 206 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 207 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 208 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 209 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 210 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 211 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 212 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 213 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 214 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 215 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 216 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 217 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 218 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 219 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 220 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 221 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 222 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 223 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 224 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 225 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 226 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 227 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 228 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 229 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 230 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 231 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 232 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 233 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 234 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 235 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 236 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 237 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 238 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 239 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 240 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 241 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 242 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 243 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 244 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 245 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 246 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 247 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 248 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 249 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 250 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 251 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 252 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 253 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 254 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 255 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 256 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 257 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 258 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 259 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 260 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 261 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 262 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 263 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 264 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 265 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 266 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 267 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 268 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 269 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 270 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 271 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 272 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 273 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 274 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 275 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 276 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 277 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 278 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 279 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 280 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 281 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 282 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 283 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 284 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 285 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 286 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 287 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 288 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 289 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 290 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 291 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 292 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 293 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 294 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 295 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 296 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 297 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 298 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 299 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 300 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 301 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 302 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 303 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 304 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 305 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
