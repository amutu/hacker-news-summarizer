# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-13.md)

*最后自动更新时间: 2026-03-13 20:38:03*
## 1. 展示HN：频道冲浪——像看有线电视一样观看YouTube

**原文标题**: Show HN: Channel Surfer – Watch YouTube like it’s cable TV

**原文链接**: [https://channelsurfer.tv](https://channelsurfer.tv)

**摘要：**

“频道冲浪者”是一款网络应用程序，它通过YouTube内容重现了观看传统有线电视的体验。由RDU开发，该应用将精选的YouTube频道呈现为独立的电视频道。用户只需按下一个按钮即可开始观看，无需搜索或选择特定视频。其核心理念是被动、线性的观看方式——就像在有线电视上切换频道一样——内容会持续播放而无需用户干预。这款工具专为那些寻求更轻松、无需频繁决策的YouTube观看方式的人群设计，让人回想起广播电视的“后仰式”观看体验。

---

## 2. 我能在本地运行AI吗？

**原文标题**: Can I run AI locally?

**原文链接**: [https://www.canirun.ai/](https://www.canirun.ai/)

本文证实，您可以在自有硬件上本地运行AI模型，并以Meta的Llama 3.1 8B作为典型范例。

关键信息如下：

*   **模型：** Llama 3.1 8B，这是Meta于2024年7月发布的80亿参数模型。
*   **本地可行性：** 该模型在质量与推理速度之间取得了出色平衡，非常适合在消费级硬件（如拥有足够内存的现代笔记本电脑或台式机）上进行本地部署。
*   **文件大小：** 模型提供多种“量化”版本以降低内存需求，范围从极小的4.1 GB（Q2_K）到完整精度的16 GB（F16）文件。用户可根据自身系统配置选择合适版本。
*   **能力：** 该模型在**对话**、**代码**和**推理**任务中展现出多功能性。
*   **上下文长度：** 它支持128K令牌的长上下文窗口，能够处理大量对话或文档。

总之，文章将Llama 3.1 8B定位为本地AI实用且强大的选择，提供多种文件大小以适应不同硬件，同时在各类应用中保持强劲性能。

---

## 3. Hammerspoon

**原文标题**: Hammerspoon

**原文链接**: [https://github.com/Hammerspoon/hammerspoon](https://github.com/Hammerspoon/hammerspoon)

Hammerspoon是一款macOS自动化工具，它将操作系统与Lua脚本引擎连接起来。它充当桥梁，使用户能够编写自定义Lua脚本，通过一系列内置扩展控制其OS X环境的各个方面。

安装时，用户可选择手动下载应用程序，或使用Homebrew通过命令`brew install hammerspoon --cask`进行安装。默认情况下，Hammerspoon在用户于`~/.hammerspoon/init.lua`创建配置文件前不具备任何功能。

该项目为用户提供了多种资源，包括入门指南、API文档、示例配置，以及通过IRC和Google群组提供的社区支持。它是早期Mjolnir项目的分支，不同之处在于通过将扩展集成在核心应用程序内提供了更一体化的体验。

未来的开发目标侧重于扩展其扩展中的系统API覆盖范围、改进扩展间的集成度，并提升整体用户体验。

---

## 4. 斯坦福研究人员首次记录到蓝鲸心率（2019年）

**原文标题**: Stanford researchers report first recording of a blue whale's heart rate (2019)

**原文链接**: [https://news.stanford.edu/stories/2019/11/first-ever-recording-blue-whales-heart-rate](https://news.stanford.edu/stories/2019/11/first-ever-recording-blue-whales-heart-rate)

**《斯坦福研究人员首次记录蓝鲸心率》（2019年）摘要**

斯坦福大学研究人员首次成功记录了一头野生蓝鲸的心率，揭示了其惊人的生理极限。数据通过一套特制的传感器设备采集，该设备以吸盘固定于加州海岸附近的一头蓝鲸身上。

关键发现显示，蓝鲸的心率变化极大，已逼近生物学极限。当深潜觅食时，其心率骤降至**每分钟2次**，比预期值慢约30至50倍。这种极度的心动过缓有助于节省氧气，支持长时间潜水。

相反，当蓝鲸在潜水间隙浮出水面呼吸时，心率会加速至峰值**每分钟37次**。这种高速心率能迅速恢复血液中的含氧量。然而，记录到的最高心率仍比预测值低50%至85%，表明蓝鲸的心脏可能已接近其生理极限。

这项发表于《美国国家科学院院刊》的研究，为了解地球上已知最大动物——蓝鲸的生理机制提供了关键见解。它展示了蓝鲸的心血管系统如何独特地支撑其庞大身躯与深潜生活方式，在水下最小化耗氧的同时，于水面实现最大化摄氧。该研究也有助于科学家理解这些海洋巨兽的能量需求，以及它们如何受环境生理性制约。

---

## 5. Show HN: Context Gateway – 在信息抵达LLM前压缩代理上下文

**原文标题**: Show HN: Context Gateway – Compress agent context before it hits the LLM

**原文链接**: [https://github.com/Compresr-ai/Context-Gateway](https://github.com/Compresr-ai/Context-Gateway)

**Context Gateway** 是 YC 支持的 Compresr 推出的一款工具，可在长对话历史记录发送至 LLM API 前，自动为 AI 代理进行压缩和优化。

其主要目的是消除当代理对话触及上下文窗口限制时的用户等待时间。该网关无需暂停进行压缩，而是通过后台预计算摘要，实现**即时历史记录压缩**。

**主要功能：**
*   作为 AI 代理（如 Claude Code、Cursor、OpenClaw）与 LLM 之间的中间件。
*   当上下文使用率达到可配置阈值（默认：75%）时自动触发压缩。
*   提供 TUI 向导简化设置，用户可选择代理、配置摘要模型/API 密钥并设置偏好。
*   通过日志文件（`history_compaction.jsonl`）提供透明度。

**快速开始：** 用户可通过 shell 命令安装，并运行交互式向导完成配置。

总之，Context Gateway 是一款性能优化工具，旨在通过主动、无感的压缩防止上下文限制中断，使 AI 代理交互无缝顺畅。

---

## 6. 卡塔尔氦气停产使芯片供应链面临两周倒计时。

**原文标题**: Qatar helium shutdown puts chip supply chain on a two-week clock

**原文链接**: [https://www.tomshardware.com/tech-industry/qatar-helium-shutdown-puts-chip-supply-chain-on-a-two-week-clock](https://www.tomshardware.com/tech-industry/qatar-helium-shutdown-puts-chip-supply-chain-on-a-two-week-clock)

卡塔尔主要的氦气生产设施——拉斯拉凡综合设施自3月2日起因伊朗无人机袭击而停产，导致全球约30%的供应中断。卡塔尔能源公司已宣布遭遇不可抗力，且暂无立即重启计划。

此次中断对半导体行业构成重大威胁，尤其对韩国影响显著——该国2025年近65%的氦气依赖卡塔尔供应。氦气在芯片制造过程中对硅片冷却至关重要，且无可替代材料。行业专家警告，若停产持续超过两周，可能引发长达数月的供应链危机，分销商将被迫紧急转移设备并寻找新供应商。

对此，韩国政府已启动对中东关键半导体材料供应的调查。尽管SK海力士声称已实现氦气供应多元化并保有充足库存，台积电目前也未预见显著影响，但局势依然脆弱。韩国与台湾各占全球芯片产能的18%。

此次事件与2022年乌克兰战争引发的氦气及氖气短缺危机相呼应，当时已促使韩国寻求供应多元化。当前危机再次凸显全球芯片供应链的脆弱性及其对地缘政治动荡区域的依赖。

---

## 7. TUI Studio – 可视化终端用户界面设计工具

**原文标题**: TUI Studio – visual terminal UI design tool

**原文链接**: [https://tui.studio/](https://tui.studio/)

**概述**

TUI Studio 是一款可视化、类似 Figma 的设计工具，用于创建终端用户界面（TUI）。它允许开发者通过将组件拖放到带有实时 ANSI 预览的实时画布上，来设计完全在终端中运行的应用程序。

**主要特性：**
*   **可视化编辑器：** 提供拖放界面和实时画布，支持绝对定位、Flexbox 和网格布局。
*   **组件库：** 包含超过 20 个内置 TUI 组件，如按钮、输入框、表格、模态框和进度条。
*   **主题支持：** 提供八种预配置的颜色主题（例如 Dracula、Nord），可实时更新设计。
*   **多框架导出（计划中）：** 旨在为六个流行的 TUI 框架（Ink、Bubble Tea、Blessed、Textual、OpenTUI 和 Tview）生成生产就绪代码，不过此功能在当前 Alpha 版本中尚不可用。
*   **便携式项目：** 将设计保存为 `.tui` JSON 文件，便于共享、版本控制和协作。

**当前状态与获取方式：**
该工具目前处于早期 Alpha 阶段，可免费下载适用于 macOS（Apple Silicon）、Windows 和 Docker 的版本。用户需注意，由于缺少代码签名，macOS 和 Windows 可能会显示安全警告，需要手动步骤才能运行应用程序。

---

## 8. Parallels确认MacBook Neo可在虚拟机中运行Windows。

**原文标题**: Parallels confirms MacBook Neo can run Windows in a virtual machine

**原文链接**: [https://www.macrumors.com/2026/03/13/macbook-neo-runs-windows-11-vm/](https://www.macrumors.com/2026/03/13/macbook-neo-runs-windows-11-vm/)

Parallels已确认其虚拟化软件Parallels Desktop兼容苹果新款平价笔记本MacBook Neo，使其能够在虚拟机中运行Windows。这得益于MacBook Neo搭载的A18 Pro芯片采用了与苹果M系列Mac芯片相同的ARM架构。

但该公司提醒，MacBook Neo的硬件配置将严重限制性能表现，特别是其不可升级的8GB统一内存。由于Windows 11虚拟机至少需要4GB内存，仅剩4GB内存供macOS及其他同时运行的Mac应用程序使用。

Parallels表示，MacBook Neo仅适合轻度、偶发性的Windows使用场景（例如访问遗留商业应用程序或仅支持Windows的工具软件），可能提供"可接受的体验"。该设备**明确不推荐**用于运行对CPU或GPU要求较高的Windows软件。

对于需要更强Windows虚拟机性能的用户，文章建议考虑性能更强的替代方案，例如搭载M5芯片的基础款MacBook Air（起售价1099美元，配备16GB内存）或翻新版M4 MacBook Air，这些机型均标配更大内存。

---

## 9. 埃隆·马斯克在AI编码项目遇挫之际，将更多xAI创始人排挤出局。

**原文标题**: Elon Musk pushes out more xAI founders as AI coding effort falters

**原文链接**: [https://www.ft.com/content/e5fbc6c2-d5a6-4b97-a105-6a96ea849de5](https://www.ft.com/content/e5fbc6c2-d5a6-4b97-a105-6a96ea849de5)

**摘要：**

据报道，埃隆·马斯克正推动其人工智能初创公司xAI的更多创始成员离职，因为该公司的核心项目——一款AI编程助手——难以达到性能预期。这些离职事件表明公司内部存在动荡和技术挑战。

这篇文章由《金融时报》发布，内容需付费阅读。可见文本主要为《金融时报》的订阅推广，详细列出了不同价格层级及数字访问、新闻通讯和优质内容等权益。核心新闻片段非常简短，指出xAI的领导层变动与其AI编程项目进展不顺有关。在可访问的部分中，未提及离职创始人的具体姓名，也未提供技术缺陷的进一步细节。

---

## 10. 你的手机就是一台完整的电脑。

**原文标题**: Your phone is an entire computer

**原文链接**: [https://medhir.com/blog/your-phone-is-an-entire-computer](https://medhir.com/blog/your-phone-is-an-entire-computer)

本文认为，现代智能手机（如iPhone）本质上已是功能完备的计算机，但被制造商（主要是苹果）人为限制。作者以采用与iPhone 16 Pro相同A18 Pro芯片的新款MacBook Neo为例，指出苹果政策的不一致之处。

MacBook允许用户从网络下载软件、运行开发工具，甚至安装Linux等替代操作系统，而iPhone却被锁定在iOS和App Store生态中。作者认为，以“用户安全”为由实施限制实属虚伪，其真正动机是通过App Store生态系统维持控制权与利润。

核心论点是：移动设备硬件层面的限制不可接受，它们既限制了用户自由，又助长了企业与政府的控制。作者主张将“获取Root权限的权利”作为维修权运动的一部分，强调设备所有者应拥有法律与技术能力，在自有设备上安装任何软件（包括macOS等桌面操作系统）。文章最后表达了将iPhone改造成通用计算机的愿景，强调用户选择权应高于人为的硬件限制。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 2 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 3 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 4 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 5 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 6 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 7 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 8 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 9 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 10 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 11 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 12 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 13 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 14 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 15 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 16 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 17 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 18 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 19 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 20 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 21 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 22 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 23 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 24 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 25 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 26 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 27 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 28 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 29 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 30 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 31 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 32 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 33 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 34 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 35 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 36 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 37 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 38 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 39 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 40 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 41 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 42 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 43 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 44 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 45 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 46 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 47 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 48 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 49 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 50 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 51 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 52 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 53 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 54 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 55 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 56 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 57 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 58 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 59 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 60 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 61 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 62 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 63 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 64 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 65 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 66 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 67 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 68 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 69 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 70 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 71 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 72 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 73 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 74 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 75 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 76 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 77 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 78 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 79 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 80 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 81 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 82 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 83 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 84 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 85 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 86 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 87 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 88 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 89 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 90 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 91 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 92 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 93 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 94 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 95 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 96 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 97 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 98 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 99 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 100 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 101 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 102 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 103 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 104 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 105 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 106 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 107 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 108 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 109 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 110 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 111 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 112 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 113 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 114 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 115 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 116 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 117 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 118 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 119 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 120 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 121 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 122 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 123 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 124 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 125 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 126 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 127 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 128 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 129 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 130 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 131 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 132 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 133 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 134 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 135 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 136 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 137 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 138 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 139 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 140 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 141 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 142 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 143 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 144 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 145 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 146 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 147 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 148 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 149 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 150 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 151 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 152 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 153 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 154 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 155 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 156 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 157 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 158 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 159 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 160 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 161 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 162 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 163 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 164 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 165 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 166 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 167 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 168 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 169 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 170 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 171 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 172 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 173 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 174 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 175 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 176 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 177 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 178 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 179 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 180 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 181 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 182 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 183 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 184 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 185 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 186 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 187 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 188 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 189 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 190 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 191 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 192 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 193 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 194 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 195 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 196 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 197 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 198 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 199 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 200 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 201 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 202 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 203 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 204 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 205 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 206 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 207 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 208 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 209 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 210 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 211 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 212 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 213 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 214 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 215 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 216 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 217 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 218 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 219 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 220 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 221 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 222 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 223 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 224 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 225 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 226 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 227 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 228 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 229 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 230 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 231 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 232 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 233 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 234 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 235 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 236 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 237 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 238 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 239 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 240 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 241 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 242 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 243 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 244 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 245 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 246 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 247 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 248 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 249 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 250 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 251 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 252 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 253 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 254 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 255 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 256 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 257 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 258 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 259 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 260 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 261 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 262 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 263 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 264 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 265 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 266 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 267 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 268 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 269 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 270 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 271 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 272 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 273 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 274 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 275 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 276 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 277 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 278 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 279 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 280 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 281 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 282 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 283 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 284 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 285 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 286 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 287 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 288 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 289 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 290 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 291 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 292 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 293 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 294 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 295 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 296 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 297 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 298 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 299 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 300 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 301 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 302 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 303 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 304 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 305 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 306 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 307 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 308 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 309 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 310 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 311 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 312 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 313 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 314 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 315 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 316 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 317 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 318 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 319 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 320 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 321 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 322 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 323 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 324 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 325 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 326 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 327 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 328 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 329 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 330 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 331 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 332 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 333 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 334 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 335 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 336 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 337 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 338 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 339 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 340 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 341 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 342 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 343 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 344 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 345 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 346 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 347 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 348 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 349 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 350 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 351 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 352 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 353 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 354 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 355 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 356 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
