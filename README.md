# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-06-26.md)

*最后自动更新时间: 2026-06-26 20:33:05*
## 1. 预览GPT‑5.6 Sol：下一代模型

**原文标题**: Previewing GPT‑5.6 Sol: a next-generation model

**原文链接**: [https://openai.com/index/previewing-gpt-5-6-sol/](https://openai.com/index/previewing-gpt-5-6-sol/)

无法访问该文章链接。所提供的URL并非OpenAI官方网站（openai.com/index/...）上的文章。截至我知识更新的2024年7月，OpenAI尚未公布名为“GPT‑5.6 Sol”的预览版或模型。该链接可能是虚构的、过时的或错误的。请验证URL或提供文章文本以供摘要。

---

## 2. 美国政府将决定谁可以使用GPT-5.6

**原文标题**: U.S. government will decide who gets to use GPT-5.6

**原文链接**: [https://www.washingtonpost.com/technology/2026/06/26/openai-says-us-government-will-vet-users-its-latest-ai-model/](https://www.washingtonpost.com/technology/2026/06/26/openai-says-us-government-will-vet-users-its-latest-ai-model/)

**无法访问文章链接。**（该链接指向未来的日期——2026年6月26日，因此该文章目前尚不存在。截至2023年10月，无任何公开记录或存档版本可供查阅。）

---

## 3. 微虚拟机：运行隔离沙箱并实现完整生命周期控制

**原文标题**: MicroVMs: Run isolated sandboxes with full lifecycle control

**原文链接**: [https://aws.amazon.com/blogs/aws/run-isolated-sandboxes-with-full-lifecycle-control-aws-lambda-introduces-microvms/](https://aws.amazon.com/blogs/aws/run-isolated-sandboxes-with-full-lifecycle-control-aws-lambda-introduces-microvms/)

**AWS Lambda MicroVMs 公告摘要**

AWS Lambda 推出了 **MicroVMs**，这是一种新的无服务器计算原语，专为在隔离的有状态环境中运行不受信任的代码而设计。它填补了虚拟机（隔离性强但速度慢）、容器（速度快但隔离性较弱）和函数（无状态）之间的空白。

**主要特性：**
- 通过 Firecracker 实现 **VM 级隔离**，用户之间无共享内核。
- 从预初始化的快照**近乎即时启动/恢复**，无需冷启动。
- **有状态执行** – 跨会话保留内存、磁盘和进程，空闲时支持挂起/恢复。

**应用场景：** AI 编程助手、代码沙箱、漏洞扫描器、游戏服务器——任何需要按用户隔离执行的多租户应用程序。

**工作原理：**
1. **创建 MicroVM 镜像** – 通过 Dockerfile 打包代码（如 Flask 应用），在 S3 中压缩；Lambda 构建、初始化并快照运行状态。
2. **启动** – 从快照恢复；获得唯一的端点 URL；支持空闲策略（空闲后自动挂起，自动恢复）。
3. **运行** – 通过认证令牌发送 HTTPS 流量；MicroVM 在空闲超时后挂起，并在下次请求时恢复，保留状态。

**定价与可用性：** 最多 16 个 vCPU、32 GB 内存、32 GB 磁盘；仅支持 ARM64；在美国东部（俄亥俄、弗吉尼亚北部）、美国西部（俄勒冈）、欧洲（爱尔兰）、亚太（东京）区域可用。定价详见 Lambda 页面。

---

## 4. 薄纱语言：一种具备真实协程与无暂停内存管理的Rust风味语言

**原文标题**: Gossamer: a Rust-flavoured language with real goroutines and pause-free memory

**原文链接**: [https://gossamer-lang.org/](https://gossamer-lang.org/)

**《Gossamer：一种融合Rust风格与真实协程及无暂停内存管理的编程语言》摘要**

Gossamer是一门新型编程语言，旨在将Rust的安全性与表达力同Go的并发模型（协程）相结合，并专注于无暂停内存管理。其核心理念强调清晰性与自上而下的自然数据流。

主要特性包括：
- **富有表现力且清晰的语法：** 语言优先考虑可读性与简洁性。采用正向管道操作符（`|>`）实现整洁的线性数据转换，避免深层嵌套的函数调用。
- **默认不可变性：** 与Rust类似，变量默认不可变（除非显式声明），提升安全性与可预测性。
- **“唯一明确方式”：** Gossamer通过为常见任务提供单一惯用方法，减少复杂性，尽量避免令人困惑的语法选择。
- **自上而下的数据流：** 语法确保代码按执行顺序（从上至下而非由内向外）阅读。这使得逻辑流程比嵌套函数应用更直观、更易理解。

本质上，Gossamer致力于成为一门更友好的“Rust风格”语言，在保留强安全保证的同时，通过更优的语法与成熟的并发模型（协程）改善开发者体验。其“无暂停内存”特性尤为突出，表明该语言专注于低延迟、实时性能，且不存在垃圾回收暂停带来的不可预测性。

---

## 5. HN 展示：在 Claude、Codex 和 Cursor 中直接实现智能模型路由

**原文标题**: Show HN: Smart model routing directly in Claude, Codex and Cursor

**原文链接**: [https://github.com/workweave/router](https://github.com/workweave/router)

**摘要：Weave Router——AI工具智能模型路由**

Weave Router 是一种即插即用代理，可自动为每次请求在Anthropic、OpenAI、Gemini及开源模型（通过OpenRouter）中选择最佳AI模型。它采用小型设备端嵌入器（非"基于感觉"的提示）结合Avengers-Pro集群评分算法，实现智能请求路由。

**核心特性：**
- **单一端点** (`localhost:8080`) 兼容Anthropic Messages、OpenAI Chat Completions及Gemini原生API，支持流式传输、工具调用和视觉能力。
- **BYOK（自带密钥）**：提供商密钥存储于本地设备，且加密保存。
- **可观测性**：通过OTLP追踪实现；仪表板位于`localhost:8080/ui`，支持集成Honeycomb、Datadog、Grafana。

**快速上手：**
- **托管路由**：运行`npx @workweave/router`（无需克隆/Docker/Postgres）。自动配置Claude Code、Codex CLI或opencode。可选参数：`--claude`、`--codex`、`--opencode`、`--scope project`、`--local`。
- **自托管**：使用包含`OPENROUTER_API_KEY`的`.env.local`文件，执行`make full-setup`。启动Postgres+路由器，生成`rk_...`密钥。
- **集成工具**：Claude Code (`make install-cc`)、Codex（修改config.toml）、opencode（合并配置）、Cursor（覆盖基础URL）。
- **灵活切换**：客户端可在路由器和直接提供商之间切换，无需重新配置。

**两种密钥类型**：上游提供商密钥（`sk-or-...`）与路由器密钥（`rk_...`）。

---

## 6. 脑部超声成像

**原文标题**: Ultrasound imaging of the brain

**原文链接**: [https://alephneuro.com/blog/ultrasound-brain](https://alephneuro.com/blog/ultrasound-brain)

**摘要：**

本文探讨了脑成像领域的一项突破性技术——利用超声波创建无创、高分辨率的人机接口。现有方法存在局限：脑电图成像模糊，而植入电极需手术且仅能捕捉极小部分的脑活动。作者提出**神经血管超声技术**，通过绘制与神经元放电相关的血流图谱，无需钻孔即可提供媲美磁共振成像的细节。

关键里程碑：研究团队成功通过完整颅骨获取了活体人脑最详细的三维血管影像，体积分辨率达到计算机断层扫描的100倍。该成果利用经美国食品药品监督管理局批准的**微泡造影剂**突破衍射极限——当单个微泡流经血管时，可对其实现精确定位。

长期目标是实现**无造影剂成像**，这依托两大趋势：更廉价、更小巧的超声硬件（如手机大小的设备）以及先进的机器学习技术。现有系统浪费了99.9%的原始超声数据；基于大规模数据集训练的端到端人工智能模型可从红细胞中恢复更多信号。为此，研究人员正在构建全球最大规模的神经血管超声数据集。

该技术还可应用于中风、阿尔茨海默病及创伤性脑损伤的医学诊治，相关技术流程及数据集均已开源。

---

## 7. 《面向MLSys的现代GPU编程》

**原文标题**: Modern GPU Programming for MLSys

**原文链接**: [https://mlc.ai/modern-gpu-programming-for-mlsys/](https://mlc.ai/modern-gpu-programming-for-mlsys/)

本文概述了一本名为《MLSys的现代GPU编程》的书籍，该书是一本为机器学习系统构建高性能GPU内核的实用指南，重点优化GEMM（矩阵乘法）和FlashAttention等关键操作，并专门针对**Blackwell GPU架构**。

全书分为四个部分。**第一部分**建立硬件直觉，涵盖GPU执行模型、数据布局、Tensor Core以及TMA（张量内存加速器）和内存屏障等异步操作。**第二部分**介绍**TIRx**（一种Python领域特定语言），用于编写接近硬件的可运行底层内核代码。

**第三部分**提供了分块GEMM内核的逐步优化路径，从简单顺序版本逐步推进到TMA流水线、持久调度、线程束专业化及双CTA集群等高级技术。**第四部分**应用这些技术构建完整的**FlashAttention 4**内核，包括在线Softmax重缩放、因果掩码和分组查询注意力（GQA）。

本书源自卡内基梅隆大学课程，强调现代硬件的思维模型、异步协调及实践性内核构建，超越简单优化技巧，实现最先进的性能。

---

## 8. 什么是诺模图，它为何会引起我的兴趣？

**原文标题**: What Is a Nomogram and Why Would It Interest Me?

**原文链接**: [https://lefakkomies.github.io/pynomo-doc/introduction/introduction.html#what-is-a-nomogram-and-why-would-it-interest-me](https://lefakkomies.github.io/pynomo-doc/introduction/introduction.html#what-is-a-nomogram-and-why-would-it-interest-me)

**摘要：**  
列线图（或称诺模图）是一种利用对齐的刻度尺与直尺求解数学公式的图形计算器。由菲尔伯特·莫里斯·多卡涅于1880年发明，在电子计算器与计算机普及前，工程师们广泛使用它进行快速、实用的计算。尽管如今已不常见，但列线图仍适用于便捷的快速计算，且制作成本低廉。  

本文阐释了列线图通常处理含三个及以上变量的方程。1920年的一个示例展示了复杂的滑块曲柄机构方程，并通过等值线读取给定数值对应的结果。列线图还能求解代数方法无法分离的隐变量。  

PyNomo是一款简化列线图设计的软件工具。用户需运用基础代数将方程整理为十种支持类型之一，随后调整示例脚本即可生成PDF格式的列线图。刻度间距、标签、颜色及示例等值线等自定义选项虽非必需，但易于添加。  

列线图已在众多领域得到应用：铁路建设、水流调节、医学血液生理学、弹道学、机械车间、统计学、运筹学、化学、航空学、天文学、工程学及军事领域。它们既能提供快速的数值解答，也能直观展现变量关系，成为一种自文档化工具。正如理查德·汉明所言：“计算的目的是洞察，而非数字。”

---

## 9. 奥姆·马利克逝世

**原文标题**: Om Malik has died

**原文链接**: [https://om.co/2026/06/24/1966-2026/](https://om.co/2026/06/24/1966-2026/)

所提供的并非一篇文章，而是一篇题为"Om Malik去世"的论坛帖子，内容包含一个要求通过评论之外的方式分享链接的请求，以及一个"加载中……"的提示。其中并未包含任何关于知名科技作家、GigaOm创始人Om Malik去世的真实信息。该文本缺乏相关事件的任何细节、背景或证实。因此，核心要点在于此处并无实质性文章，仅是一个带有误导性标题的不完整占位内容。

---

## 10. 萨姆·诺布尔博物馆的“奇异头饰”展览令人叹为观止

**原文标题**: The "Bizarre Headgear" Exhibit at the Sam Noble Museum Is Incredible

**原文链接**: [https://svpow.com/2026/05/15/the-bizarre-headgear-exhibit-at-the-sam-noble-museum-is-incredible/](https://svpow.com/2026/05/15/the-bizarre-headgear-exhibit-at-the-sam-noble-museum-is-incredible/)

**摘要：**  
本文介绍了俄克拉荷马州诺曼市萨姆·诺布尔博物馆正在举办的“奇异头冠”特展，展期持续至2026年8月底。展览汇集了种类繁多的角龙类恐龙及其他头部结构奇特的动物，左侧陈列中生代恐龙，右侧为新生代哺乳动物。亮点包括鹦鹉嘴龙的骨骼与生态复原并列展示、早期角龙类头骨（如辽角龙、黎明角龙、古角龙、原角龙）标本柜、以及三角龙和幼年犹他角龙的完整骨架。展区还包含谢恩·福克斯的雕塑、安德烈·阿图钦与马克·哈雷特的画作。非恐龙一侧陈列了超过65件哺乳动物头骨，涵盖长鼻目、鲸目及长角甲虫，另有一件锤头鲨模型。展览由加斯顿设计的罗布·加斯顿策划。作者盛赞展品密度与多样性，称其为见过最令人震撼的特展。票价合理（成人票最高12美元）。文末感谢博物馆工作人员，并提及近期角龙类系统发育研究成果。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 2 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 3 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 4 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 5 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 6 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 7 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 8 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 9 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 10 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 11 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 12 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 13 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 14 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 15 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 16 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 17 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 18 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 19 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 20 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 21 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 22 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 23 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 24 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 25 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 26 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 27 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 28 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 29 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 30 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 31 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 32 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 33 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 34 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 35 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 36 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 37 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 38 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 39 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 40 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 41 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 42 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 43 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 44 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 45 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 46 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 47 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 48 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 49 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 50 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 51 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 52 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 53 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 54 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 55 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 56 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 57 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 58 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 59 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 60 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 61 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 62 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 63 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 64 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 65 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 66 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 67 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 68 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 69 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 70 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 71 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 72 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 73 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 74 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 75 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 76 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 77 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 78 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 79 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 80 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 81 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 82 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 83 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 84 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 85 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 86 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 87 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 88 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 89 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 90 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 91 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 92 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 93 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 94 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 95 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 96 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 97 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 98 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 99 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 100 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 101 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 102 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 103 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 104 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 105 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 106 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 107 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 108 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 109 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 110 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 111 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 112 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 113 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 114 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 115 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 116 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 117 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 118 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 119 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 120 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 121 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 122 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 123 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 124 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 125 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 126 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 127 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 128 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 129 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 130 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 131 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 132 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 133 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 134 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 135 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 136 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 137 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 138 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 139 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 140 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 141 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 142 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 143 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 144 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 145 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 146 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 147 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 148 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 149 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 150 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 151 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 152 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 153 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 154 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 155 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 156 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 157 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 158 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 159 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 160 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 161 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 162 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 163 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 164 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 165 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 166 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 167 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 168 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 169 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 170 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 171 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 172 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 173 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 174 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 175 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 176 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 177 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 178 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 179 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 180 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 181 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 182 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 183 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 184 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 185 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 186 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 187 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 188 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 189 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 190 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 191 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 192 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 193 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 194 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 195 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 196 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 197 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 198 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 199 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 200 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 201 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 202 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 203 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 204 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 205 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 206 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 207 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 208 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 209 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 210 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 211 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 212 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 213 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 214 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 215 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 216 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 217 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 218 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 219 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 220 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 221 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 222 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 223 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 224 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 225 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 226 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 227 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 228 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 229 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 230 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 231 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 232 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 233 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 234 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 235 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 236 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 237 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 238 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 239 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 240 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 241 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 242 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 243 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 244 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 245 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 246 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 247 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 248 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 249 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 250 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 251 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 252 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 253 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 254 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 255 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 256 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 257 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 258 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 259 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 260 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 261 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 262 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 263 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 264 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 265 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 266 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 267 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 268 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 269 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 270 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 271 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 272 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 273 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 274 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 275 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 276 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 277 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 278 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 279 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 280 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 281 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 282 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 283 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 284 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 285 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 286 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 287 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 288 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 289 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 290 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 291 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 292 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 293 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 294 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 295 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 296 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 297 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 298 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 299 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 300 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 301 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 302 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 303 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 304 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 305 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 306 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 307 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 308 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 309 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 310 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 311 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 312 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 313 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 314 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 315 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 316 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 317 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 318 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 319 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 320 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 321 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 322 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 323 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 324 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 325 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 326 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 327 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 328 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 329 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 330 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 331 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 332 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 333 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 334 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 335 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 336 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 337 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 338 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 339 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 340 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 341 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 342 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 343 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 344 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 345 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 346 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 347 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 348 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 349 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 350 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 351 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 352 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 353 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 354 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 355 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 356 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 357 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 358 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 359 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 360 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 361 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 362 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 363 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 364 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 365 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 366 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 367 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 368 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 369 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 370 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 371 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 372 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 373 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 374 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 375 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 376 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 377 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 378 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 379 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 380 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 381 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 382 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 383 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 384 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 385 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 386 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 387 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 388 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 389 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 390 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 391 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 392 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 393 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 394 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 395 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 396 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 397 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 398 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 399 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 400 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 401 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 402 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 403 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 404 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 405 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 406 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 407 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 408 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 409 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 410 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 411 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 412 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 413 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 414 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 415 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 416 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 417 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 418 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 419 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 420 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 421 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 422 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 423 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 424 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 425 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 426 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 427 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 428 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 429 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 430 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 431 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 432 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 433 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 434 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 435 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 436 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 437 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 438 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 439 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 440 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 441 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 442 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 443 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 444 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 445 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 446 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 447 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 448 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 449 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 450 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 451 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 452 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 453 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 454 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 455 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 456 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 457 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 458 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 459 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 460 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 461 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
