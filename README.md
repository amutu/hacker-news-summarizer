# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-03.md)

*最后自动更新时间: 2026-02-03 20:38:13*
## 1. Qwen3-Coder-Next

**原文标题**: Qwen3-Coder-Next

**原文链接**: [https://qwen.ai/blog?id=qwen3-coder-next](https://qwen.ai/blog?id=qwen3-coder-next)

**Qwen3-Coder-Next** 是阿里巴巴通义千问团队开发的先进大语言模型（LLM），专为代码生成与理解而设计。它在上一代模型Qwen2.5-Coder的基础上，实现了性能与能力的显著提升。

该模型以**卓越的编程能力**著称，在LiveCodeBench和HumanEval等主流基准测试中取得顶尖成绩，常超越DeepSeek-Coder、GPT-4o等其他领先模型。它支持**超过100种编程语言**，并基于6万亿token的高质量大规模数据集进行训练。

其关键特性包括**128K token的大上下文窗口**，能够处理并生成复杂长项目的代码。该模型不仅在代码生成方面表现突出，在调试、代码补全和技术问题解决等任务上也同样出色。模型提供多种参数规模（如1.5B、7B、32B），以满足不同的计算需求。

Qwen3-Coder-Next基于**Apache 2.0许可证**开源发布，可免费用于研究与商业用途，致力于推动开发者社区的开放访问与创新。

---

## 2. Deno 沙盒

**原文标题**: Deno Sandbox

**原文链接**: [https://deno.com/blog/introducing-deno-sandbox](https://deno.com/blog/introducing-deno-sandbox)

Deno Sandbox 是 Deno 推出的一项新服务，旨在安全地运行不可信代码，尤其适用于需要网络访问和 API 密钥的 LLM 生成代码。它通过提供可在 1 秒内启动的轻量级 Linux 微虚拟机，解决了此类代码窃取敏感信息的独特风险。

其核心安全特性包括：
*   **受保护的密钥**：API 密钥永远不会直接暴露给沙箱内的代码。系统仅显示占位符，真实密钥仅在发起经批准的对外请求时才会生效，从而防止密钥被盗。
*   **网络出口控制**：沙箱的网络访问可被限制在特定允许的主机（如 `api.openai.com`），以阻断未授权的连接。

该服务与 Deno Deploy 深度集成，只需一条 `sandbox.deploy()` 命令即可将代码从沙箱直接迁移至生产环境。沙箱支持通过快照实现预装工具的持久化，并通过数据卷提供读写存储。

该服务按计算时间和内存使用量计费，已包含在 Deno Deploy 套餐中。Deno Sandbox 现已开放公测。

---

## 3. Xcode 26.3 释放智能代理编码的强大潜能

**原文标题**: Xcode 26.3 unlocks the power of agentic coding

**原文链接**: [https://www.apple.com/newsroom/2026/02/xcode-26-point-3-unlocks-the-power-of-agentic-coding/](https://www.apple.com/newsroom/2026/02/xcode-26-point-3-unlocks-the-power-of-agentic-coding/)

**文章摘要：Xcode 26.3 引入智能体编程**

苹果宣布推出 Xcode 26.3，引入**智能体编程**——这是一项新功能，允许开发者直接在 Xcode 开发环境中集成并利用先进的 AI 编程智能体。这些智能体，包括 **Anthropic 的 Claude 智能体**和 **OpenAI 的 Codex**，能够自主处理复杂的开发任务。

此功能基于 Xcode 26 中引入的 AI 辅助编码工具构建。智能体现在能以更高的自主性运行，帮助分解任务、做出架构决策，并利用 Xcode 的内置工具。它们旨在在整个应用开发生命周期中进行协作，能够搜索文档、探索文件结构、更新项目设置，并使用 Xcode Previews 可视化验证代码。

据苹果称，其目标是**大幅提升开发者的生产力和创造力**，通过简化工作流程，让开发者能更专注于创新。该集成将这些外部 AI 模型的推理能力与 Xcode 为开发苹果平台应用的原生能力相结合。

除了对 Claude 和 Codex 的内置支持外，Xcode 26.3 还通过**模型上下文协议**开放其功能，这是一个开放标准，允许开发者连接其他兼容的 AI 智能体和工具。

**可用性：** Xcode 26.3 目前作为发布候选版本提供给 Apple Developer Program 成员，即将在 App Store 公开发布。集成 AI 智能体的使用需遵守 Anthropic 和 OpenAI 各自的条款。

---

## 4. AliSQL：阿里巴巴开源MySQL，集成向量与DuckDB引擎

**原文标题**: AliSQL: Alibaba's open-source MySQL with vector and DuckDB engines

**原文链接**: [https://github.com/alibaba/AliSQL](https://github.com/alibaba/AliSQL)

AliSQL是阿里巴巴开源的MySQL分支，专为大规模生产环境优化。其核心特性之一是集成了DuckDB存储引擎，允许用户通过标准SQL直接执行轻量级分析查询。此外，它原生支持高维向量存储，并通过优化的HNSW算法实现高性能近似最近邻（ANN）搜索，为语义搜索等AI应用提供支持。

该项目基于MySQL 8.0.44版本持续开发，路线图中包含对DDL操作、故障恢复时间（RTO）及复制性能的优化计划。从源码构建需使用CMake等标准工具及C++17编译器。

AliSQL采用GPL-2.0开源协议，并通过GitHub仓库欢迎社区贡献。用户可通过GitHub Issues或阿里云基于DuckDB的分析服务获取技术支持。

---

## 5. 代理技能

**原文标题**: Agent Skills

**原文链接**: [https://agentskills.io/home](https://agentskills.io/home)

**摘要：智能体技能**

智能体技能是标准化的、可移植的指令、脚本和资源包，用于增强AI智能体的能力。它们解决了智能体在可靠且准确地执行现实任务时，常因缺乏特定上下文或流程知识而受限的普遍问题。

技能的核心价值在于其可复用性和互操作性。开发者可以一次性构建某项能力，并将其部署到多个兼容的智能体产品中。对于团队和企业而言，技能提供了一种将组织知识和可重复的工作流程封装成版本可控的软件包的方式。这使得智能体能够执行专业领域任务（如法律审查）、获得新能力（如创建演示文稿），以及执行一致的多步骤流程。

智能体技能格式由Anthropic开发，并作为开放标准发布，以鼓励广泛的生态系统采用和贡献。目前，该格式已获得主流AI开发工具的支持。入门资源包括完整规范、开发者集成指南以及示例技能库。

---

## 6. Prek：一个更优、更快的即插即用预提交替代工具，采用Rust语言精心打造。

**原文标题**: Prek: A better, faster, drop-in pre-commit replacement, engineered in Rust

**原文链接**: [https://github.com/j178/prek](https://github.com/j178/prek)

**概述**

Prek 是一款基于 Rust 的、可直接替代流行 pre-commit 框架的工具，旨在实现更快的速度、更高的效率且无需依赖。它完全兼容现有的 pre-commit 配置，同时提供显著的性能改进和新功能。

主要优势包括：
*   **速度与效率：** 运行速度比 pre-commit 快数倍，占用更少磁盘空间，并以共享、并行化的方式管理工具链和钩子安装。
*   **无依赖：** Prek 以单一二进制文件分发，无需 Python 或其他运行时环境。
*   **增强功能：** 内置对单体仓库的支持，与 `uv` 集成以管理 Python 环境，为多种语言提供改进的工具链管理，并包含常用钩子的原生 Rust 实现以获得更佳性能。
*   **更好的用户体验：** 该工具提供更直观的命令行界面，支持在特定目录运行钩子、选择多个钩子以及 shell 自动补全等功能。

Prek 已被 CPython、Apache Airflow 和 FastAPI 等主要项目采用。可通过多种包管理器（Homebrew、pip、npm、Cargo）、独立安装程序或直接从 GitHub Releases 安装。

---

## 7. 法国弃用Zoom和Teams，欧洲寻求数字自主以摆脱美国影响

**原文标题**: France dumps Zoom and Teams as Europe seeks digital autonomy from the US

**原文链接**: [https://apnews.com/article/europe-digital-sovereignty-big-tech-9f5388b68a0648514cebc8d92f682060](https://apnews.com/article/europe-digital-sovereignty-big-tech-9f5388b68a0648514cebc8d92f682060)

本文详述了欧洲日益增强的"数字主权"推动力，这是一项旨在减少对美国大型科技公司依赖的战略举措。这一趋势源于对数据隐私的担忧、对美国政治胁迫的恐惧（格陵兰问题和对国际刑事法院检察官的制裁凸显了紧张关系），以及提升欧洲科技竞争力的愿望。

关键案例包括：法国要求公务员在2027年前从Zoom和微软Teams转向本土服务，奥地利军方采用开源软件LibreOffice，德国石勒苏益格-荷尔斯泰因州将数千名员工迁移至开源电子邮件和文件共享系统。欧盟专员汉娜·维尔库宁等欧洲官员警告，过度依赖外国技术可能被"武器化"。

对此，微软等美国公司正在推广"主权云"服务，通过将数据中心和员工设在欧洲来确保数据受欧盟法律管辖。然而，欧洲的转变动机已发生变化：虽然开源软件的成本节约曾是主要考量，但现在的核心驱动力是战略自主权和避免供应商锁定。

---

## 8. 那些等号到底是怎么回事？

**原文标题**: What's up with all those equals signs anyway?

**原文链接**: [https://lars.ingebrigtsen.no/2026/02/02/whats-up-with-all-those-equals-signs-anyway/](https://lars.ingebrigtsen.no/2026/02/02/whats-up-with-all-those-equals-signs-anyway/)

本文解释了为何网络上流传的旧邮件摘录中频繁出现等号（=）。这源于20世纪80年代一种常见的邮件编码标准——“可打印字符引用编码”（quoted-printable），该标准用于处理长行和非ASCII字符（如带重音符号的字母）以便传输。

等号主要发挥两种功能：
1.  **换行延续**：一行末尾的等号后接回车换行符（CRLF），表示该行被人工分割，解码时应重新拼接。
2.  **字符编码**：等号后接两个十六进制数字（例如=C2=A0）代表特殊字符，如不换行空格。

作者认为，这些共享邮件中可见的等号是处理不当的结果。可能的错误是有人将邮件的行尾从标准CRLF转换为Unix风格（NL），从而破坏了解码逻辑。一个有缺陷的解码器未能正确移除换行标记，同时也错误处理了编码字符，导致原始等号残留在文本中。简而言之，这些符号是解码缺陷的技术痕迹，并非密文或扫描错误。

---

## 9. Puget Systems 2025年度最可靠硬件

**原文标题**: Puget Systems Most Reliable Hardware of 2025

**原文链接**: [https://www.pugetsystems.com/labs/articles/puget-systems-most-reliable-hardware-of-2025/](https://www.pugetsystems.com/labs/articles/puget-systems-most-reliable-hardware-of-2025/)

本文汇总了Puget Systems公司2025年工作站配置硬件的内部可靠性数据。该数据基于其自身的RMA与测试记录，重点标注了故障率极低的组件。

主要发现包括：
*   **CPU：** 英特尔至强W-2500/3500系列实现零故障，成为最可靠的工作站处理器。消费级CPU中，英特尔酷睿Ultra 7 265K与AMD锐龙9000 X3D系列表现突出。
*   **GPU：** 英伟达GeForce RTX 50系列公版显卡是最可靠的消费级GPU。专业级GPU中，英伟达RTX Ada架构与RTX PRO Blackwell系列（高功耗的6000型号除外）均表现优异。
*   **主板：** 技嘉B860M AORUS ELITE WIFI6E ICE与华硕TUF B850M-PLUS WIFI故障率最低。
*   **内存：** 金士顿是整体最可靠的制造商，其ValueRAM DDR5-5600 32GB台式机内存条尤为出色。
*   **存储：** 三星870 QVO 8TB SATA固态硬盘在2025年实现零故障，金士顿KC3000 M.2固态硬盘紧随其后。
*   **电源：** 海盗船SF1000铂金SFX电源无故障报告，略胜于长期稳定的振华LEADEX系列。

报告指出，主板因结构复杂通常故障率最高，但多数问题已在Puget Systems内部测试阶段发现。

---

## 10. 兔子数据库

**原文标题**: Bunny Database

**原文链接**: [https://bunny.net/blog/meet-bunny-database-the-sql-service-that-just-works/](https://bunny.net/blog/meet-bunny-database-the-sql-service-that-just-works/)

Bunny Database 是一款新推出的托管式 SQL 服务，目前处于公开预览阶段，它在传统虚拟机托管数据库和昂贵的 DBaaS 平台之间提供了“第三种选择”。该服务基于 libSQL 的分支构建，兼容 SQLite，旨在实现简单易用、经济实惠和低延迟。

主要特性包括一键部署、多语言 SDK 支持，以及能够从全球 41 个区域提供读取服务，以降低全球用户的延迟。它提供三种部署类型：自动区域选择、单区域部署或自定义多区域部署。

该服务采用透明、基于用量的定价模式（每十亿次读取 0.30 美元，每百万次写入 0.30 美元，存储每 GB 每月 0.10 美元），无“无服务器税”，并在空闲时自动缩减以节省成本。预览期间，服务免费提供，限制为 50 个数据库，每个数据库容量为 1 GB。

即将推出的路线图功能包括自动备份、数据库文件导入/导出以及自动生成的 API。该服务可与 Bunny.net 的其他服务（如 Edge Scripting 和 Magic Containers）无缝集成。

文章将 Bunny Database 定位为开发者的理想解决方案，尤其适合那些希望获得简单、全球高性能数据库，同时避免主流 DBaaS 产品复杂性和高成本的开发者。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 2 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 3 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 4 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 5 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 6 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 7 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 8 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 9 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 10 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 11 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 12 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 13 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 14 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 15 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 16 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 17 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 18 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 19 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 20 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 21 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 22 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 23 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 24 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 25 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 26 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 27 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 28 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 29 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 30 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 31 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 32 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 33 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 34 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 35 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 36 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 37 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 38 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 39 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 40 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 41 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 42 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 43 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 44 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 45 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 46 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 47 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 48 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 49 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 50 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 51 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 52 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 53 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 54 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 55 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 56 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 57 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 58 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 59 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 60 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 61 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 62 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 63 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 64 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 65 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 66 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 67 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 68 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 69 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 70 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 71 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 72 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 73 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 74 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 75 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 76 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 77 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 78 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 79 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 80 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 81 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 82 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 83 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 84 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 85 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 86 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 87 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 88 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 89 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 90 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 91 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 92 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 93 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 94 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 95 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 96 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 97 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 98 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 99 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 100 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 101 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 102 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 103 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 104 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 105 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 106 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 107 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 108 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 109 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 110 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 111 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 112 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 113 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 114 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 115 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 116 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 117 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 118 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 119 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 120 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 121 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 122 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 123 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 124 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 125 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 126 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 127 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 128 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 129 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 130 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 131 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 132 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 133 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 134 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 135 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 136 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 137 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 138 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 139 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 140 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 141 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 142 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 143 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 144 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 145 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 146 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 147 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 148 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 149 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 150 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 151 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 152 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 153 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 154 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 155 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 156 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 157 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 158 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 159 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 160 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 161 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 162 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 163 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 164 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 165 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 166 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 167 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 168 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 169 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 170 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 171 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 172 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 173 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 174 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 175 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 176 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 177 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 178 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 179 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 180 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 181 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 182 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 183 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 184 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 185 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 186 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 187 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 188 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 189 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 190 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 191 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 192 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 193 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 194 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 195 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 196 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 197 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 198 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 199 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 200 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 201 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 202 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 203 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 204 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 205 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 206 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 207 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 208 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 209 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 210 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 211 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 212 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 213 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 214 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 215 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 216 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 217 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 218 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 219 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 220 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 221 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 222 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 223 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 224 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 225 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 226 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 227 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 228 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 229 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 230 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 231 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 232 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 233 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 234 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 235 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 236 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 237 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 238 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 239 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 240 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 241 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 242 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 243 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 244 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 245 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 246 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 247 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 248 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 249 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 250 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 251 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 252 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 253 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 254 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 255 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 256 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 257 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 258 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 259 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 260 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 261 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 262 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 263 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 264 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 265 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 266 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 267 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 268 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 269 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 270 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 271 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 272 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 273 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 274 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 275 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 276 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 277 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 278 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 279 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 280 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 281 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 282 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 283 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 284 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 285 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 286 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 287 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 288 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 289 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 290 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 291 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 292 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 293 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 294 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 295 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 296 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 297 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 298 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 299 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 300 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 301 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 302 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 303 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 304 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 305 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 306 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 307 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 308 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 309 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 310 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 311 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 312 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 313 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 314 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 315 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 316 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 317 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 318 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
