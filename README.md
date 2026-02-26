# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-26.md)

*最后自动更新时间: 2026-02-26 20:36:05*
## 1. AirSnitch：揭秘并破解Wi-Fi网络中的客户端隔离机制 [pdf]

**原文标题**: AirSnitch: Demystifying and breaking client isolation in Wi-Fi networks [pdf]

**原文链接**: [https://www.ndss-symposium.org/wp-content/uploads/2026-f1282-paper.pdf](https://www.ndss-symposium.org/wp-content/uploads/2026-f1282-paper.pdf)

**《AirSnitch：揭秘与攻破Wi-Fi网络中的客户端隔离机制》摘要**

本研究论文介绍了“AirSnitch”——一种利用Wi-Fi网络中客户端隔离机制在设计与实现上的根本性弱点的新型攻击。客户端隔离是一种安全功能，旨在防止连接到同一接入点的客户端设备之间直接通信，常见于公共热点和企业网络。

核心发现是，客户端隔离通常仅在IP层（第三层）或更高层实施，而底层协议则未受保护。AirSnitch通过工作在数据链路层（第二层），特别是使用原始802.11帧来利用这一漏洞。该攻击无需与目标网络关联，可由附近设备发起。

其方法主要涉及两种技术：
1.  **流量推断：** 通过监控Wi-Fi帧的低级时序和元数据，攻击者可以推断出被隔离客户端与互联网之间的通信模式及敏感信息（如访问的网站），从而破坏隐私。
2.  **直接的客户端间通信：** 论文展示了在同一网络上两个被隔离客户端之间建立隐蔽数据通道的方法，完全绕过了隔离策略。这可能促成恶意软件传播，或实现酒店、咖啡馆等场所中客户间的直接攻击。

研究结论指出，广泛部署的客户端隔离机制存在根本性缺陷且防护不足。它揭示了网络安全中的一个关键误解：仅在更高层隔离客户端无法防范来自底层的攻击。论文呼吁重新评估隔离机制的设计，并提出在链路层采用更强的加密隔离或强制加密作为潜在的解决方案。

---

## 2. 发布 HN：Cardboard（YC W26）—— 智能代理视频编辑器

**原文标题**: Launch HN: Cardboard (YC W26) – Agentic video editor

**原文链接**: [https://www.usecardboard.com/](https://www.usecardboard.com/)

**概述：**

Cardboard 是一款基于人工智能（智能体驱动）的视频编辑平台，旨在自动化和加速编辑流程。它致力于在数分钟内将原始素材转化为精良、可发布的视频。

**核心功能与特性：**
*   **AI驱动编辑：** 核心功能利用人工智能（具体为Claude Sonnet模型）为多种视频格式（如访谈视频、vlog、混剪、播客片段和发布视频）自动生成高质量的首轮剪辑。
*   **人机协同控制：** 平台强调协作，允许用户使用传统编辑器控件对AI生成的剪辑进行细化调整，保持创作主导权。
*   **高级AI工具：** 包含语义编辑（用自然语言描述修改）、智能静音移除、自动字幕生成、语音合成以及基于内容的片段搜索等功能。
*   **实时协作：** 支持团队在平台内对剪辑进行实时协同编辑。

**目标用户与应用场景：**
该平台主要面向需要快速制作专业视频内容的创作者和团队，旨在消除手动编辑中重复繁琐的“苦差事”。

**商业模式：**
Cardboard采用订阅制，起价为每月60美元，并提供免费试用。

---

## 3. 我每天烤一个派，坚持了一年，这改变了我的生活。

**原文标题**: I baked a pie every day for a year and it changed my life

**原文链接**: [https://www.theguardian.com/lifeandstyle/2026/feb/22/a-new-start-after-60-i-baked-a-pie-every-day-for-a-year-and-it-changed-my-life](https://www.theguardian.com/lifeandstyle/2026/feb/22/a-new-start-after-60-i-baked-a-pie-every-day-for-a-year-and-it-changed-my-life)

61岁退休后，因担心失去职业身份，薇姬·哈丁·伍德开启了一项为期一年的计划：每天烘焙并送出一个派。她的目标是在被诊断出轻度认知障碍后，保持人际联系、激发创造力，并证明自己的能力。

她选用本地食材，将派赠予家人、朋友、陌生人甚至无家可归者，在俄勒冈州塞勒姆社区被誉为“派女士”。这项计划为她带来了规律的生活和深刻的人际联结，收到派的人常表达深切感激。

曾作为城市规划师、擅长在混乱中建立秩序的哈丁·伍德，从烘焙中获得了相似的满足感。十二年后，这段经历让她明白，自我价值远不止于职业生涯，这激励她不断投身新的创意项目。如今她仍习惯将遇见的人视为潜在的赠派对象，这印证了该项目对她人生观的持久影响。

---

## 4. 氛围编程会像创客运动一样终结吗？

**原文标题**: Will vibe coding end like the maker movement?

**原文链接**: [https://read.technically.dev/p/vibe-coding-and-the-maker-movement](https://read.technically.dev/p/vibe-coding-and-the-maker-movement)

本文认为，“氛围编程”（利用AI进行快速应用开发）不太可能遵循与创客运动相同的轨迹，原因在于两个关键差异。

首先，与早期的业余技术浪潮不同，氛围编程跳过了“场景天才”阶段——即一个受保护的、轻松低风险的实验期，社区在此期间培养出深刻的判断力。相反，它直接进入了高压生产，产出的速度超过了开发者评估能力的成熟速度，导致了一种扭曲的、“轻躁狂”的创作关系。

其次，经济结果不同。创客运动中，尽管工具变得更便宜，价值仍流向成熟的制造中心。同样，氛围编程使原型设计民主化，但真正的价值积累在模型和基础设施层的“上游”，这可能导致个体程序员变得可替代。

作者提出了一个新的隐喻：**消费**。氛围编程正在消耗AI生成的过剩认知能量。关键在于有意识地利用这种过剩来创造持久资产：通过快速迭代培养**品味**，通过公开演示获取**关注**，通过**礼物**（开源项目）建立社会资本，或从工作中收集具有内在价值的**结构化信号/数据**。这种重构表明，尽管“通过制造实现转变”的理想可能不再成立，但对AI能力的战略性消费仍能创造有意义、持久的价值。

---

## 5. Palm OS 用户界面指南（2003）[pdf]

**原文标题**: Palm OS User Interface Guidelines (2003) [pdf]

**原文链接**: [https://cs.uml.edu/~fredm/courses/91.308-spr05/files/palmdocs/uiguidelines.pdf](https://cs.uml.edu/~fredm/courses/91.308-spr05/files/palmdocs/uiguidelines.pdf)

**Palm OS 用户界面设计指南摘要（2003年）**

本文档概述了为 Palm OS 掌上设备（PDA）创建应用程序的核心设计原则。它强调界面应针对移动设备的限制和使用场景进行优化，并以用户数据为中心。

核心理念是 **“聚焦于用户数据”**，这意味着应用程序应在启动时立即呈现信息，尽量减少导航至空白屏幕或菜单的操作。界面必须简单、快速、高效，以适应短暂而频繁的交互。

主要指导原则包括：
*   **直接交互：** 用户应直接在屏幕上操作数据（例如使用触控笔），而非通过复杂的对话框。
*   **一致性：** 遵循平台在按钮、菜单和行为方面的标准对于直观使用至关重要。
*   **简洁性与反馈：** 界面必须简洁明了，并对每个用户操作提供清晰、即时的反馈。
*   **为平台设计：** 应用程序必须考虑硬件限制，如小型灰度屏幕、依赖触控笔/点击输入，以及需要通过硬件按钮进行单手操作。

文档详细说明了以下方面的具体标准：
*   **表单与提示框：** 布局、控件（尤其是按钮）放置以及模态行为。
*   **菜单与命令：** 标准化常用命令（如新建、删除、发送）及其位置。
*   **文本与输入：** 通过 Graffiti 或屏幕键盘高效处理文本输入。
*   **用户注意力：** 信息优先级排序，并设计干扰最小化的中断（提示框）。

总体而言，这些指南是构建快速、直观且与 Palm OS 环境原生契合的应用程序的蓝图，其核心是将用户数据和任务完成置于首位。

---

## 6. Show HN: Rev-dep – 用 Go 构建的 knip.dev 替代方案，速度提升 20 倍

**原文标题**: Show HN: Rev-dep – 20x faster knip.dev alternative build in Go

**原文链接**: [https://github.com/jayu/rev-dep](https://github.com/jayu/rev-dep)

Rev-dep是一款专为JavaScript和TypeScript项目打造的高性能依赖分析工具，采用Go语言构建以追求极致速度。它如同“依赖图谱的检查器”，旨在为大型代码库强制执行架构规则并清理无效代码。

其核心特性包括基于配置的治理机制，能通过单次并行化扫描检测循环依赖、未使用导出项、孤立文件及模块边界违规等问题——据称可在约500毫秒内完成对50万行代码的审计。该工具提供一流的单体仓库支持，并配备用于调试依赖关系的探索式命令行界面。

作为Knip等基于Node的工具的更快速替代方案，它致力于降低持续集成成本与等待时间。用户可通过npm/yarn/pnpm安装，并配置其自动修复特定问题，从而成为维护代码库健康状态的主动守门员。

---

## 7. Show HN: Hacker Smacker——一眼识别优秀（和糟糕）的HN评论者

**原文标题**: Show HN: Hacker Smacker – spot great (and terrible) HN commenters at a glance

**原文链接**: [https://hackersmacker.org](https://hackersmacker.org)

**《Show HN: Hacker Smacker》简介**

Hacker Smacker 是一款浏览器扩展，旨在通过直接在讨论帖中视觉化突出评论者的质量，以提升 Hacker News（HN）的阅读体验。

其核心功能是分析用户的历史评论 karma 值，并在其用户名旁添加简单的颜色标签：绿色代表高 karma 的“优秀”评论者，黄色代表一般，红色代表低 karma 的“糟糕”评论者。目的是帮助读者在开始阅读前，快速识别哪些评论可能富有洞见或存在问题。

该工具被定位为一个轻量级的个人项目。创作者强调，它仅基于公开的 karma 数据采用简单启发式算法，并承认 karma 并非评论质量的完美指标。它旨在作为一个有趣的实验，帮助“在噪音中发现信号”，而非最终定论。

主要特点包括非侵入式设计（小型彩色圆点）、开源代码，以及对隐私的关注——所有数据均在本地处理，不会发送至外部服务器。该项目已在 HN 上分享，以征求社区反馈，并探讨此类基于声誉的过滤系统的优缺点。

---

## 8. Nano Banana 2：谷歌最新AI图像生成模型

**原文标题**: Nano Banana 2: Google's latest AI image generation model

**原文链接**: [https://blog.google/innovation-and-ai/technology/ai/nano-banana-2/](https://blog.google/innovation-and-ai/technology/ai/nano-banana-2/)

谷歌DeepMind发布了**Nano Banana 2**，这是一款新型AI图像生成模型，融合了前代产品Nano Banana Pro的先进能力与Gemini Flash模型的高速特性。核心功能包括：通过**先进的世界知识**实现精准主体渲染、在图像内进行**精确的文本生成与翻译**，以及通过提升主体一致性和指令遵循能力实现的**增强型创作控制**。该模型还支持多种宽高比和最高4K的分辨率。

Nano Banana 2现已登陆多款谷歌产品，包括**Gemini应用**（为多数用户替代Nano Banana Pro）、AI模式下的**谷歌搜索**、**AI Studio与API**、**Google Cloud的Vertex AI**、**Google Flow**以及用于广告活动创建的**Google Ads**。

伴随模型发布，谷歌正通过将其**SynthID**数字水印技术与**C2PA内容凭证**相结合，推进**AI内容识别**计划，为AI生成媒体提供更清晰的内容溯源。

---

## 9. 沃尔夫拉姆S组合子挑战

**原文标题**: The Wolfram S Combinator Challenge

**原文链接**: [https://www.combinatorprize.org/](https://www.combinatorprize.org/)

**《沃尔夫勒姆 S 组合子挑战》摘要**

本文宣布沃尔夫勒姆基金会为一项特定计算问题提供 20,000 美元奖金：确定 **仅凭 S 组合子是否具有计算通用性**。该问题由斯蒂芬·沃尔夫勒姆在摩西·舍恩芬克尔引入 S 和 K 组合子（已知两者共同具备通用性）100 周年之际提出。

**挑战** 在于为此猜想提供明确的证明或证伪。提交作品必须是原创、署名的技术论文，呈现完整且精确的解决方案。评审委员会将评估所有提交作品，首个令人满意的解决方案将获奖。

主要 **提交指南** 包括：作品必须原创且非匿名；提交者授予沃尔夫勒姆非独家出版权；获奖者须配合身份验证与法律文件签署。该竞赛将持续开放直至问题解决。

文章提供了关于组合子的背景链接，并引用了沃尔夫勒姆的其他奖项，将此挑战定位为计算理论中一个定义明确的历史性问题。

---

## 10. 展示 HN：Deff – 在终端中并排查看 Git 差异

**原文标题**: Show HN: Deff – side-by-side Git diff review in your terminal

**原文链接**: [https://github.com/flamestro/deff](https://github.com/flamestro/deff)

**Deff** 是一款基于终端的交互式工具，用于并排查看 Git 差异。它使用 Rust 构建，允许开发者在终端中直接导航和检查代码变更，支持语法高亮、增删行着色、键盘与鼠标操作等功能。

核心特性包括多种差异对比策略：可将本地分支与其上游分支对比（默认 `upstream-ahead`），或指定明确的基准与目标提交（`range` 模式）。通过 `--include-uncommitted` 标志还可包含未提交和未跟踪的变更。导航方式灵活，提供类 Vim 快捷键、按文件横向滚动以及差异内容内搜索。

该工具会将审阅状态持久化保存在本地（`.git/deff/reviewed/`），并支持主题选择（`dark`、`light` 或 `auto`）。可通过 Shell 脚本安装或使用 Cargo 从源码构建。Deff 设计用于在任何 Git 仓库中运行，旨在通过命令行直接简化和优化代码审阅工作流。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 2 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 3 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 4 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 5 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 6 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 7 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 8 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 9 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 10 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 11 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 12 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 13 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 14 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 15 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 16 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 17 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 18 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 19 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 20 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 21 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 22 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 23 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 24 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 25 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 26 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 27 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 28 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 29 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 30 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 31 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 32 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 33 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 34 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 35 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 36 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 37 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 38 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 39 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 40 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 41 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 42 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 43 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 44 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 45 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 46 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 47 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 48 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 49 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 50 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 51 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 52 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 53 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 54 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 55 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 56 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 57 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 58 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 59 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 60 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 61 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 62 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 63 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 64 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 65 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 66 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 67 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 68 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 69 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 70 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 71 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 72 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 73 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 74 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 75 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 76 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 77 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 78 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 79 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 80 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 81 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 82 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 83 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 84 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 85 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 86 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 87 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 88 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 89 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 90 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 91 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 92 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 93 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 94 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 95 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 96 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 97 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 98 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 99 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 100 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 101 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 102 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 103 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 104 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 105 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 106 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 107 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 108 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 109 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 110 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 111 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 112 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 113 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 114 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 115 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 116 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 117 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 118 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 119 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 120 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 121 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 122 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 123 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 124 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 125 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 126 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 127 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 128 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 129 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 130 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 131 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 132 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 133 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 134 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 135 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 136 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 137 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 138 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 139 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 140 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 141 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 142 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 143 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 144 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 145 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 146 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 147 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 148 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 149 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 150 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 151 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 152 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 153 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 154 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 155 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 156 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 157 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 158 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 159 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 160 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 161 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 162 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 163 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 164 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 165 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 166 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 167 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 168 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 169 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 170 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 171 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 172 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 173 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 174 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 175 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 176 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 177 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 178 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 179 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 180 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 181 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 182 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 183 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 184 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 185 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 186 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 187 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 188 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 189 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 190 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 191 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 192 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 193 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 194 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 195 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 196 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 197 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 198 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 199 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 200 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 201 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 202 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 203 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 204 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 205 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 206 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 207 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 208 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 209 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 210 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 211 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 212 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 213 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 214 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 215 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 216 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 217 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 218 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 219 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 220 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 221 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 222 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 223 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 224 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 225 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 226 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 227 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 228 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 229 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 230 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 231 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 232 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 233 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 234 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 235 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 236 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 237 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 238 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 239 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 240 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 241 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 242 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 243 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 244 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 245 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 246 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 247 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 248 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 249 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 250 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 251 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 252 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 253 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 254 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 255 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 256 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 257 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 258 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 259 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 260 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 261 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 262 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 263 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 264 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 265 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 266 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 267 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 268 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 269 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 270 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 271 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 272 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 273 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 274 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 275 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 276 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 277 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 278 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 279 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 280 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 281 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 282 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 283 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 284 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 285 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 286 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 287 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 288 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 289 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 290 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 291 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 292 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 293 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 294 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 295 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 296 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 297 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 298 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 299 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 300 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 301 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 302 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 303 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 304 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 305 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 306 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 307 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 308 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 309 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 310 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 311 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 312 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 313 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 314 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 315 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 316 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 317 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 318 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 319 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 320 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 321 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 322 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 323 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 324 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 325 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 326 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 327 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 328 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 329 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 330 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 331 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 332 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 333 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 334 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 335 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 336 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 337 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 338 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 339 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 340 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 341 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
