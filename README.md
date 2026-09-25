# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-09-26.md)

*最后自动更新时间: 2026-09-26 04:55:26*
## 1. Ollaya：面向开源 Jev 式决策模型的本地运行平台

**原文标题**: Ollaya – Ollama for open-source, Jev-style decision models

**原文链接**: [https://ollaya.dev/](https://ollaya.dev/)

Ollaya 是一个专为开源决策模型设计的本地运行平台，定位类似 Ollama，对标 TypeSafe Jev 服务。用户可对任意文本或 JSON 提出带类型的选择、评分或是否问题，模型在单次前向传播中即返回带校准概率的答案，无需逐 token 生成。核心模型 Laya 由 Convai Innovations 开发，支持英语及 100+ 语言，在 RTX 4090 上五题请求端到端仅约 8–10ms，远快于 Jev 托管 API 的 236–276ms。Ollaya 完整兼容 TypeSafe 的 /v1/systemone 等接口，官方 Python SDK 0.7.1 可零改动对接。平台已开放 laya（多语言）、decider（基于 Qwen3.5）、nli、gliclass 等多个模型权重，更多模型（含 GGUF 格式）即将推出。隐私方面，服务默认监听 127.0.0.1，基于 ONNX Runtime 支持 CPU 与 NVIDIA GPU；权重源自 Hugging Face 并经 sha256 校验，采用 Apache-2.0 许可，无按 token 计费。概率校准误差（ECE）仅 0.081，优于 Jev 的 0.246。平台覆盖 macOS、Windows、Linux 及 Docker，提供桌面应用与命令行两种形态，安装仅需一条命令：ollaya run laya。

---

## 2. 艾伦·凯：香农为我们提供了应对噪声信道的途径 [视频]

**原文标题**: Alan Kay: Shannon gave us a way of dealing with noisy channels [video]

**原文链接**: [https://www.youtube.com/watch?v=Cjntrqhn8pk](https://www.youtube.com/watch?v=Cjntrqhn8pk)

本视频为计算机先驱艾伦·凯（Alan Kay）的演讲片段，主题围绕克劳德·香农（Claude Shannon）在信息论领域的奠基性贡献。香农于1948年提出信息论，核心解决了在噪声信道中如何可靠传输信息的问题，确立了信道容量与纠错码等关键概念，奠定了现代通信与计算的理论基础。艾伦·凯作为面向对象编程、图形用户界面及"动态媒体"理念的倡导者，在此视频中回顾并阐释香农思想的深远意义，强调其不仅限于通信工程，更为计算机科学、人工智能及系统设计提供了重要的思维框架。该视频以对话或访谈形式呈现，适合对计算机科学史、信息论及跨学科思维感兴趣的观众观看。

---

## 3. 展示 HN：Jev 玩《宝可梦 红》

**原文标题**: Show HN: Jev Plays Pokémon Red

**原文链接**: [https://jev-pokemon.vercel.app/](https://jev-pokemon.vercel.app/)

本文为 Hacker News 上一则开源项目展示帖，介绍 AI 代理 Jev 实机游玩《宝可梦 红》的直播演示。页面以"JEV 实时直播"为核心，游戏默认静音，用户可手动开启音效；右侧面板同步展示 Jev 每一步的决策内容及对应概率，让观众直观观察 AI 的推理与选择过程。页面中 NPC"大木博士"的一句旁白点出 Jev 能顺利通关全赖预设指南的引导，借此巧妙引出页底嵌入的产品推介——FRIGADE。FRIGADE 是一款 AI 助手，可自主学习产品界面，在应用内为每位用户实时推荐下一步操作，主打"无需人工编写指南"的自我学习能力。整页将趣味性 AI 游戏演示与商业推广结合，意在说明 AI 代理的潜力，同时引导开发者关注这一面向终端用户的产品引导工具。

---

## 4. Go 语言中的跨平台 SIMD 支持

**原文标题**: Platform-independent SIMD in Go

**原文链接**: [https://go.dev/blog/simd-experiment](https://go.dev/blog/simd-experiment)

Go 1.26 与 1.27 分别引入面向 amd64、arm64（NEON）及 Wasm 的实验性 SIMD API，并在 1.27 中新增完全可移植的 simd 包，设计借鉴 C++ 的 Highway 库。该包移除固定向量尺寸，仅保留各平台指令的交集，再以高效模拟填补差异，目标是实现"一次编写、近似汇编性能"的 SIMD 代码，同时在无 SIMD 的平台上仍可运行。simd 定义 10 种向量类型（Int8s、Float32s 等），涵盖加载/存储、算术、比较、掩码、类型转换、移位旋转及零成本重塑等操作；比较产生与元素宽度对应的掩码值，用于条件选择与过滤。对于尚未覆盖的操作，提供 ToArch() 与 simd.FromArch() 转换机制，开发者可针对 amd64、arm64、Wasm 分别编写平台特定实现，编译器会在编译期消除类型断言开销；不支持 SIMD 的平台则统一回退至模拟实现。启用方式为构建时设置 GOEXPERIMENT=simd。当前版本尚缺跨元素归约（ReduceSum 预计 1.28 补齐）。此举使加密、数据处理、AI 等大量非内核级应用也能便捷获得 SIMD 加速，而不再局限于手写汇编的极致性能场景。

---

## 5. 谷歌"捕日者"首个轨道AI数据中心试验卫星将于10月1日发射

**原文标题**: Google's first Suncatcher orbital data center test launches October 1

**原文链接**: [https://arstechnica.com/google/2026/09/googles-first-suncatcher-orbital-data-center-test-launches-october-1/](https://arstechnica.com/google/2026/09/googles-first-suncatcher-orbital-data-center-test-launches-october-1/)

谷歌去年宣布的"登月级"项目"捕日者"（Project Suncatcher）迈出关键一步：首颗实验卫星MVP将于10月1日搭乘SpaceX猎鹰9号拼车任务发射。该卫星约冰箱大小，搭载4颗谷歌自研TPU AI加速器，航天平台由Planet Labs提供，太阳能供电仅约1千瓦。此次为加速验证而推出的临时测试，远小于原计划2027年的双星发射规模，在轨运行仅数月。最大挑战是散热——AI芯片产热远超太空散热器设计容量，谷歌采用可塑导热材料与铝铜热管将热量导入辐射器，但TPU每运转约15分钟即须停机冷却。此外，太空辐射可能损坏芯片或导致比特翻转，所幸此次使用的为地面同款TPU而非航天级硬件，有报道称商用设备在太空仍具一定可行性。谷歌将在卫星上运行Gemini模型开展测试。长远目标是构建以高速激光互联的AI卫星星座，但距真正产品化仍需数年。该构想回应了地面数据中心能耗巨大、选址争议等痛点，马斯克与贝索斯等此前也曾提出类似太空数据中心方案。

---

## 6. 给研究生新生的建议——什么是研究？

**原文标题**: Advice to a Beginning Graduate Student (2001)

**原文链接**: [https://www.cs.cmu.edu/~mblum/research/pdf/grad.html](https://www.cs.cmu.edu/~mblum/research/pdf/grad.html)

摘要：本文是计算机科学家Manuel Blum于2001年面向研究生新生的演讲，围绕"阅读、计算、研究、写作"四个核心环节展开。阅读方面，他强调书籍具有随机访问特性，不应拘泥于从头读到尾，提倡"边读边写"以理解艰深内容。学习方面，以有限自动机与图灵机之别在于"有无纸笔"为喻，凸显写作的巨大力量。思考方面，建议遇到难题时想象"给自己一个提示"，并认真分析他人解法追问"我本应如何想到"；强调矛盾与悖论是强有力的知识来源，并列举停机问题、量子力学等实例。博士起步阶段，他指出导师未必能提供现成答案，学生须主动阅读、思考、工作，并要真心热爱课题。博士中期，引用安那托尔·法朗士名言，主张聚焦极窄领域后逐渐洞察全局；鼓励尝试证伪，因答案常出乎意料，如中位数问题由n log n降为O(n)。写作方面，引用Billings箴言：先有可言之物，再说出来，说完即止，最后给出准确标题。他特别建议请同行而非仅导师审阅论文。全文兼具幽默与深刻，是极具实操价值的研究生生存指南。

---

## 7. 第一性原理思维

**原文标题**: First Principles Thinking

**原文链接**: [https://sunilsadasivan.com/writing/first-principles-thinking/](https://sunilsadasivan.com/writing/first-principles-thinking/)

文章以Sunil Pai的"高级工程师死亡螺旋"为切入点，探讨资深工程师如何突破经验固化带来的思维困境。作者提出，破局关键在于第一性原理思维——回归问题本质，追问"我们为什么做这件事""它为用户带来什么"，将代码层面的工作与真实世界的需求相连接。作者观察到，最出色的资深工程师虽来自不同背景，却共享一种习惯：从本质出发思考，保持对全局的清醒认知，从而使方案简洁而高效。实践层面，作者认同Pai"关注动量而非结果"的理念：将工作拆解为最小可执行单元，以行动驱动下一步。面对AI代理（agentic）开发这一重大范式转换，作者指出，适应最快的人愿意将既有经验和旧有技术假设暂时"收进盒子"，以全然开放的姿态重新审视问题。他提醒，不应先被技术本身所吸引而忽略根本目的，而应先厘清"我们究竟想做什么"，再思考AI如何赋能。第一性原理思维与AI代理的结合，能大幅加速学习迭代循环，让"小步快跑、持续深入"成为自然节奏，形成AI时代的全新心流。文章以"让人的思考长存"收束，强调技术剧变中人类独立思考的不可替代性。

---

## 8. Git-bug：嵌入 Git 的分布式离线优先缺陷追踪器

**原文标题**: Git-bug: Distributed, offline-first bug tracker embedded in Git

**原文链接**: [https://github.com/git-bug/git-bug](https://github.com/git-bug/git-bug)

摘要：Git-bug 是一款完全嵌入 Git 的分布式缺陷追踪工具，无需添加任何项目文件即可使用。核心优势包括：通过标准 git 远程实现分布式协作、完全离线可用、避免供应商锁定（数据始终留存本地）、毫秒级操作速度。它提供命令行（CLI）、交互式终端 UI 及内置 Web UI 三种界面，后端基于 GraphQL API 通信，Web UI 还兼具代码浏览与提交历史查看功能。工作流上支持三种模式：原生 git-bug 推送/拉取协作、与 GitHub/GitLab/Jira/Launchpad 的桥接双向同步，以及开发中的公开 Web 门户。用户可创建身份、撰写缺陷、按状态与关键词筛选搜索、评论及关闭缺陷。项目以 Go 语言编写，磁盘数据采用正式规范的 DAG 实体格式，支持 Shell 自动补全与 Man 手册。采用 GPLv3 许可证，欢迎社区贡献。

---

## 9. 美国上诉法院维持对Anthropic的供应链风险认定

**原文标题**: U.S. appeals court upholds designation of Anthropic as supply chain risk

**原文链接**: [https://www.cnbc.com/2026/09/25/pentagon-anthropic-ai-risk-appeals-court.html](https://www.cnbc.com/2026/09/25/pentagon-anthropic-ai-risk-appeals-court.html)

摘要：华盛顿联邦上诉法院以2比1维持了五角大楼将AI公司Anthropic列为"供应链风险"的认定，禁止美军及国防承包商使用其Claude模型。多数意见认为，国防部有充分依据认定Claude的持续整合构成国家安全风险，相关决策权归属总统与国防部长。法院同意延迟裁定生效，给予Anthropic申请重审或上诉最高法院的时间。双方纠纷源于Claude在国防部GenAI.mil平台部署谈判破裂：军方要求全面无限制使用权限，Anthropic则要求确保技术不被用于全自动武器或国内大规模监控。国防部长赫格塞思指责Anthropic意图攫取军事行动否决权。此前Anthropic曾是美方早期合作伙伴，2025年7月曾签2亿美元合同。特朗普多次在社交媒体抨击其CEO阿莫迪，后者因呼吁行业放缓AI开发而遭公开批评。Anthropic已在旧金山和华盛顿分别起诉，旧金山法院裁定一项认定违法，华盛顿上诉法院则维持了第二项认定，Anthropic表示将考虑进一步法律行动。

---

## 10. 缺陷：VSCode 编辑器被圆角边框"感染"

**原文标题**: Bug: Border radius has infected VSCode editor

**原文链接**: [https://github.com/microsoft/vscode/issues/338035](https://github.com/microsoft/vscode/issues/338035)

该 issue（#338035）由用户 Wes Coderre 于 2026 年 9 月 25 日在 microsoft/vscode 仓库提交，报告 VS Code 1.139.0（Universal 版，macOS 26.5.1）在启用默认设置（已禁用全部扩展）下，文本编辑器、文件资源管理器、终端及 Copilot 聊天面板均出现了明显的圆角边框（border radius）。用户以"感染""瘟疫"等夸张措辞表达强烈不满，认为这些多余曲线干扰视线，影响编码效率，并感叹桌面应用未能幸免于网页设计趋势的波及。该 issue 已被维护者 Hawk Ticehurst 标记为重复问题（duplicate）并关闭，未分配里程碑，亦无关联的分支或拉取请求。仓库当前拥有约 19.3 万星标和 4.3 万派生仓库。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 2 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 3 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 4 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 5 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 6 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 7 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 8 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 9 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 10 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 11 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 12 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 13 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 14 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 15 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 16 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 17 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 18 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 19 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 20 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 21 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 22 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 23 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 24 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 25 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 26 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 27 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 28 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 29 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 30 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 31 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 32 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 33 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 34 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 35 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 36 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 37 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 38 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 39 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 40 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 41 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 42 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 43 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 44 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 45 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 46 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 47 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 48 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 49 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 50 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 51 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 52 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 53 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 54 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 55 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 56 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 57 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 58 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 59 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 60 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 61 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 62 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 63 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 64 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 65 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 66 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 67 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 68 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 69 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 70 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 71 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 72 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 73 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 74 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 75 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 76 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 77 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 78 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 79 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 80 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 81 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 82 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 83 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 84 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 85 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 86 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 87 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 88 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 89 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 90 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 91 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 92 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 93 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 94 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 95 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 96 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 97 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 98 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 99 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 100 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 101 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 102 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 103 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 104 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 105 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 106 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 107 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 108 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 109 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 110 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 111 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 112 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 113 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 114 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 115 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 116 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 117 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 118 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 119 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 120 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 121 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 122 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 123 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 124 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 125 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 126 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 127 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 128 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 129 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 130 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 131 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 132 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 133 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 134 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 135 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 136 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 137 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 138 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 139 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 140 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 141 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 142 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 143 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 144 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 145 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 146 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 147 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 148 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 149 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 150 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 151 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 152 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 153 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 154 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 155 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 156 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 157 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 158 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 159 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 160 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 161 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 162 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 163 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 164 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 165 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 166 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 167 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 168 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 169 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 170 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 171 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 172 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 173 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 174 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 175 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 176 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 177 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 178 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 179 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 180 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 181 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 182 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 183 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 184 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 185 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 186 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 187 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 188 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 189 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 190 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 191 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 192 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 193 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 194 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 195 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 196 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 197 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 198 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 199 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 200 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 201 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 202 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 203 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 204 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 205 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 206 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 207 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 208 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 209 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 210 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 211 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 212 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 213 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 214 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 215 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 216 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 217 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 218 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 219 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 220 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 221 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 222 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 223 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 224 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 225 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 226 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 227 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 228 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 229 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 230 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 231 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 232 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 233 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 234 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 235 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 236 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 237 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 238 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 239 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 240 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 241 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 242 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 243 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 244 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 245 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 246 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 247 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 248 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 249 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 250 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 251 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 252 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 253 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 254 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 255 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 256 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 257 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 258 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 259 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 260 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 261 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 262 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 263 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 264 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 265 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 266 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 267 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 268 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 269 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 270 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 271 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 272 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 273 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 274 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 275 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 276 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 277 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 278 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 279 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 280 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 281 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 282 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 283 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 284 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 285 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 286 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 287 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 288 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 289 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 290 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 291 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 292 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 293 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 294 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 295 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 296 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 297 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 298 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 299 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 300 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 301 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 302 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 303 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 304 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 305 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 306 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 307 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 308 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 309 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 310 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 311 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 312 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 313 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 314 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 315 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 316 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 317 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 318 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 319 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 320 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 321 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 322 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 323 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 324 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 325 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 326 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 327 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 328 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 329 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 330 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 331 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 332 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 333 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 334 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 335 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 336 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 337 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 338 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 339 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 340 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 341 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 342 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 343 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 344 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 345 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 346 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 347 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 348 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 349 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 350 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 351 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 352 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 353 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 354 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 355 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 356 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 357 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 358 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 359 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 360 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 361 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 362 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 363 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 364 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 365 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 366 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 367 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 368 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 369 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 370 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 371 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 372 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 373 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 374 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 375 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 376 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 377 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 378 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 379 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 380 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 381 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 382 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 383 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 384 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 385 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 386 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 387 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 388 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 389 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 390 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 391 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 392 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 393 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 394 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 395 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 396 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 397 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 398 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 399 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 400 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 401 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 402 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 403 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 404 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 405 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 406 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 407 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 408 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 409 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 410 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 411 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 412 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 413 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 414 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 415 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 416 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 417 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 418 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 419 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 420 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 421 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 422 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 423 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 424 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 425 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 426 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 427 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 428 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 429 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 430 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 431 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 432 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 433 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 434 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 435 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 436 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 437 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 438 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 439 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 440 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 441 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 442 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 443 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 444 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 445 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 446 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 447 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 448 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 449 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 450 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 451 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 452 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 453 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 454 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 455 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 456 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 457 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 458 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 459 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 460 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 461 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 462 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 463 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 464 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 465 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 466 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 467 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 468 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 469 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 470 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 471 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 472 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 473 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 474 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 475 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 476 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 477 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 478 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 479 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 480 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 481 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 482 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 483 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 484 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 485 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 486 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 487 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 488 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 489 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 490 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 491 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 492 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 493 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 494 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 495 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 496 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 497 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 498 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 499 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 500 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 501 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 502 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 503 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 504 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 505 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 506 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 507 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 508 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 509 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 510 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 511 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 512 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 513 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 514 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 515 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 516 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 517 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 518 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 519 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 520 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 521 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 522 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 523 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 524 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 525 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 526 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 527 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 528 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 529 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 530 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 531 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 532 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 533 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 534 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 535 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 536 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 537 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 538 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 539 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 540 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 541 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 542 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 543 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 544 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 545 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 546 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 547 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 548 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 549 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 550 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 551 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
