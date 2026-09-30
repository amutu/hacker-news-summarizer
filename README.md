# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-10-01.md)

*最后自动更新时间: 2026-10-01 04:58:07*
## 1. Gemini 4 Argon：谷歌开启前沿智能新纪元

**原文标题**: Gemini 4 Argon

**原文链接**: [https://blog.google/innovation-and-ai/models-and-research/gemini-models/gemini-4-argon/](https://blog.google/innovation-and-ai/models-and-research/gemini-models/gemini-4-argon/)

2026年9月30日，Google DeepMind发布前沿模型Gemini 4 Argon，通过Fairwind计划向受信任的网络安全防御者开放。该模型具备行业领先的100万token输出上限，擅长长周期复杂任务，在软件编程（DeepSWE v1.1达77.9%）、金融法律等知识工作（Vals Index领先）、自动化办公流程（AutomationBench 51.3%）及长视频理解（LVBench 91.7%）等基准中均居首位。内部应用方面，Argon已助力量子算法优化提速40%、释放超300TiB数据中心内存，并完成从C/C++到Rust的大规模代码迁移。网络安全领域，Argon可自主发现、验证和修补漏洞，配合Wiz的Scan for Good项目发现了此前前沿模型未能识别的全球医疗软件关键漏洞。定价为输入2美元/百万token、输出10美元/百万token，缓存输入享95%折扣。发布前，Google在防滥用、防提示注入、错位监控及沙盒加固四方面强化安全机制，并参与美国政府预发布审查流程，后续将逐步面向付费API客户和Google AI Ultra订阅用户开放。

---

## 2. EDG C++ 前端项目正式公开

**原文标题**: EDG C++ front-end goes public

**原文链接**: [https://edgcpp.org/#transition](https://edgcpp.org/#transition)

EDG C++ 前端项目现已向公众开放。根据项目现有信息，其核心服务之一为"财政赞助"（Fiscal Sponsorship），即代表 EDG 接收并统一管理相关捐赠资金，为支持该项目或相关事业的机构和个人提供合规的捐赠渠道。

---

## 3. 出人意料复杂的脑波揭示大脑运作机制

**原文标题**: Surprisingly Complex Waves Reveal the Brain's Inner Workings

**原文链接**: [https://www.quantamagazine.org/surprisingly-complex-waves-reveal-the-brains-inner-workings-20260930/](https://www.quantamagazine.org/surprisingly-complex-waves-reveal-the-brains-inner-workings-20260930/)

长期以来，科学家将大脑皮层电信活动视为简单的平面波，仅当作大脑"运转"的副产物。然而，2026年多项研究颠覆了这一认知。芝加哥大学的Jacobs和Das团队利用颅内高分辨率电极，在人类受试者中首次观测到脑波的复杂形态——包括向外扩散的源波、向中心汇聚的汇波，以及类似飓风的旋转螺旋波。不同认知任务对应不同波形：旋转波在空间记忆任务中更频繁出现，暗示其有助于处理更复杂的记忆行为。同期，深圳医学科学院的叶之文与华盛顿大学的Steinmetz在小鼠脑中观察到类似的旋转波，左右半球呈镜像同步，感觉皮层中甚至存在螺旋形神经元回路以支撑这些波形。研究者认为，这些波并非"引擎声"，而是帮助大脑在秒级时间尺度上实时重组活动、协调脑区、实现信息编码与回忆的关键机制。MIT的Miller指出，波的动态灵活性优于固定的神经连接架构，使大脑能快速适应日常需求。不过，纽约大学的Buzsáki持异议，认为波仅是突触级活动的映射，本身不承载计算功能。目前学界尚无定论，但证据不断积累，指向复杂脑波在认知加工中扮演着核心角色。

---

## 4. Magnitude（YC S25）：面向 Agent 的自优化推理引擎

**原文标题**: Launch HN: Magnitude (YC S25) – Self-optimizing inference engine for agents

**原文链接**: [https://github.com/magnitudedev/magnitude](https://github.com/magnitudedev/magnitude)

Magnitude 是一款开源 AI 推理引擎，专为本地运行大模型的智能体（Agent）设计。其核心优势在于：在用户实际设备上自动编译和调优计算内核，使推理速度较 llama.cpp 提升近 2 倍（Metal 解码快 92%，CUDA 快 19%）。引擎支持 Apple Silicon、NVIDIA、AMD GPU 及纯 CPU，覆盖 macOS、Windows、Linux 三大平台，无固定硬件门槛。桌面应用下载即用，内置 CLI，用户可在"Discover"中下载推荐模型，通过"Connections"一键接入 Pi、OpenCode、Hermes、Codex、Claude Code、Cline 等主流 Agent，其余 Agent 可通过 OpenAI 兼容 API 对接。此外，Magnitude 还具备多项优化：内存占用降低 27% 且任务结束自动释放；并发会话共享前缀缓存避免 slowdown；针对主流开源模型家族手写定制内核。项目完全免费，所有数据本地运行、无需联网，采用 Apache 2.0 协议，让开发者以零 Token 成本获得高速、私密的本地模型推理体验。

---

## 5. Edge Functions 提速 5 倍：从 V8 隔离到 Firecracker 微虚拟机

**原文标题**: 5x faster Edge Functions: V8 isolates to Firecracker MicroVMs

**原文链接**: [https://www.netlify.com/blog/edge-functions-firecracker-microvms/](https://www.netlify.com/blog/edge-functions-firecracker-microvms/)

Netlify 将边缘函数的执行架构从 V8 隔离环境全面迁移至 Firecracker 微虚拟机，每日服务约十亿次调用。新架构将计算纳入自有边缘网络，请求不再外发互联网，中位延迟从 25–40 毫秒降至 5–6 毫秒，p99 快 47.4%，可用性达 99.998%，冷启动平均仅约 9 毫秒（占比 1.2%）。技术上，每个函数运行于独立 MicroVM，启动不足 1 毫秒，借助快照实现"缩零再恢复"；路由采用 rendezvous 哈希锁定同节点以维持热缓存，超阈值后自动分散防热点；边缘节点为每次请求生成含运行时、平台与函数镜像的机器规格，经哈希得到服务 ID，确保租户间强隔离。项目由 Netlify 与 Unikraft 团队协同完成。对用户完全透明，写法不变、无需迁移、同价运行。新架构还带来三项新可能：npm 包支持正式转正、CPU 与内存等运算限制有望放宽、自有网络内任意计算场景成为现实。

---

## 6. 彭博终端简史

**原文标题**: A brief history of the Bloomberg terminal

**原文链接**: [https://spectrum.ieee.org/bloomberg-terminal](https://spectrum.ieee.org/bloomberg-terminal)

彭博终端是现代金融行业的标志性工具，为华尔街交易员和分析师提供了前所未有的全球市场实时信息窗口。本文由南卡罗来纳大学教授、Ann Johnson科学与技术与社会研究所联合主任艾莉森·马什撰写，刊载于《科技》杂志"计算·过去与未来"专栏，并结合史密森尼国家美国历史博物馆藏品，回顾彭博终端的发展历史。文章以一台20世纪90年代初的彭博终端键盘为引——该键盘配备轨迹球、扬声器及耳机麦克风接口，展现了早期终端的人机交互设计。彭博终端自问世以来，彻底重塑了全球金融信息传播方式，将原本分散、滞后的市场数据整合为统一的实时终端平台，成为金融从业者不可或缺的"数字工作台"。它不仅是一项技术产品，更深刻影响了金融市场运作模式、从业者工作流程乃至全球商业文化的演进。本文从科技史与社会学双重视角，梳理了彭博终端从无到有的发展历程及其在金融与科技交汇领域的重要里程碑意义。

---

## 7. Halfspace：基于距离场的实体建模实验性IDE

**原文标题**: Halfspace experimental IDE for solid modeling with distance fields

**原文链接**: [https://www.mattkeeter.com/projects/halfspace/](https://www.mattkeeter.com/projects/halfspace/)

Halfspace是基于距离场的实体建模实验性IDE，作为Fidget几何内核的展示应用，支持实时光栅化渲染及模型导出为图像或三角网格。作者自2025年4月起开发，强调代码完全由人工编写而非AI辅助。文章将操作隐式曲面类比编写汇编，提出两条缓解路径：构建高层形状标准库与降低底层操作门槛，Halfspace两者兼取。实体建模聚焦具有明确内外边界的可物理制造模型，区别于游戏模型中常见的无限薄面片。文章重点强调将距离场置于核心地位，通过锯齿波示例展示C0不连续导致法线计算错误的问题，并说明优化梯度均匀性可改善网格质量。技术栈以Rust为核心，结合egui、wgpu、Rhai等库，同时构建Web与本地双平台应用。Halfspace的构建也反哺了Fidget内核演进，最大成果是fidget-wgpu将光栅化与着色完全迁移至GPU，消除了CPU回传，实现跨平台原生渲染性能。作者声明项目仍处于实验阶段，不建议用于关键应用，代码以MPLv2许可证开源。

---

## 8. 我们曾说过"不支持 MCP"

**原文标题**: You said no MCP

**原文链接**: [https://earendil.com/posts/you-said-no-mcp/](https://earendil.com/posts/you-said-no-mcp/)

Pi 此前在官网和播客中多次明确表态不支持 MCP，如今却已将其纳入核心功能。官方解释：一年间的 MCP 已今非昔比，而引入 MCP 所需的沙箱与解释器能力恰好也能让 Pi 更便捷地集成 Jev 分类器。为此 Pi 推出了 Codemode——运行在 harness 侧的 JavaScript 沙箱，允许 agent 灵活编排与组合工具调用，其状态保留在会话记录而非文件系统中；配置 MCP 后 Codemode 自动加载。官方指出，MCP 在 Pi 中更应类比为"OpenAPI 加智能工具发现"：工具应返回结构化数据并依文档可发现，而非如部分旧服务器那样将文本直接塞入上下文。为适配新型模型的延迟工具加载、会话内系统消息等能力，工具元数据也相应升级。文章以分析 Linear 问题跟踪器中用户挫败情绪为例，展示了 Codemode 并发调用 Linear MCP 与 Jev 分类器，在不额外占用上下文的前提下完成 167 条 issue 的情绪标注。核心态度是积极参与塑造 MCP 生态，推动其在轻量 harness 中更好用，而非置身事外。

---

## 9. 提交说明作为思考工具

**原文标题**: Commit description as a thinking tool

**原文链接**: [https://yedhu.me/posts/commit-description-as-a-thinking-tool/](https://yedhu.me/posts/commit-description-as-a-thinking-tool/)

文章作者分享了对AI编程时代提交描述的独特见解。在AI时代之前，撰写详细的提交描述本身就是一种反思机制：通过梳理"做了什么"与"为什么这么做"，开发者能够重新审视决策、发现更优方案，并记录临时方案的退出条件供未来维护者参考。如今AI代理虽能自动撰写代码和提交消息，却因缺乏散布于聊天、项目管理工具中的完整上下文，可能编造不合理的"原因"，为后续维护埋下隐患；即便提供充足上下文，其产出仍可能看似合理却无法被验证。因此作者坚持亲自撰写提交描述，核心理由有三：一是借此反思AI产出是否符合预期；二是检验自己是否真正理解了所发布的内容——若无法解释"为什么"，说明并未真正理解；三是某些"暂行方案及其退出条件"往往因过于显然而无人记录，写提交描述能强制将这些隐性决策显性化，便于将来决定是否保留。文章的核心主张是：AI可以代劳代码与描述，但"写下为什么"这一过程，才是检验开发者是否真正理解所交付内容的思考工具。

---

## 10. 我本可访问17万亿条微软记录

**原文标题**: I Could've Accessed 17T Microsoft Records

**原文链接**: [https://blog.faav.net/how-i-couldve-accessed-17-trillion-microsoft-records](https://blog.faav.net/how-i-couldve-accessed-17-trillion-microsoft-records)

16岁安全研究员Faav借助自研AI工具Antares，发现微软内部分析服务Titan存在JWT签名验证缺失漏洞。Titan的/v2/Query接口虽要求Azure AD令牌认证，却仅校验令牌内容（租户、受众、应用ID、用户），完全不验证签名。Faav构造alg:none无签名令牌，将upn字段设为"admin"，绕过全部四层认证，以管理员身份执行任意SQL。该漏洞可触达30个活跃路由、17个ClickHouse数据库、9863张表，合计约17.3万亿条记录，涵盖约2.5万条员工邮箱及组织信息、Bing搜索分析样本等。Faav仅提取元数据与单行样本评估影响，未接触客户数据或PII，随即上报MSRC。09/09端点锁定修复，Faav获5000美元奖励。文章经微软审编，删节部分章节与数据。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 2 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 3 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 4 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 5 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 6 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 7 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 8 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 9 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 10 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 11 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 12 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 13 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 14 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 15 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 16 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 17 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 18 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 19 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 20 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 21 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 22 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 23 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 24 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 25 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 26 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 27 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 28 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 29 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 30 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 31 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 32 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 33 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 34 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 35 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 36 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 37 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 38 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 39 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 40 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 41 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 42 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 43 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 44 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 45 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 46 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 47 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 48 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 49 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 50 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 51 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 52 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 53 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 54 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 55 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 56 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 57 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 58 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 59 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 60 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 61 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 62 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 63 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 64 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 65 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 66 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 67 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 68 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 69 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 70 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 71 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 72 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 73 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 74 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 75 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 76 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 77 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 78 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 79 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 80 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 81 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 82 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 83 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 84 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 85 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 86 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 87 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 88 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 89 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 90 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 91 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 92 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 93 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 94 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 95 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 96 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 97 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 98 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 99 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 100 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 101 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 102 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 103 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 104 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 105 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 106 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 107 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 108 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 109 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 110 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 111 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 112 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 113 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 114 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 115 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 116 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 117 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 118 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 119 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 120 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 121 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 122 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 123 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 124 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 125 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 126 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 127 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 128 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 129 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 130 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 131 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 132 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 133 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 134 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 135 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 136 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 137 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 138 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 139 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 140 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 141 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 142 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 143 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 144 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 145 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 146 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 147 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 148 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 149 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 150 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 151 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 152 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 153 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 154 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 155 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 156 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 157 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 158 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 159 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 160 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 161 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 162 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 163 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 164 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 165 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 166 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 167 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 168 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 169 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 170 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 171 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 172 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 173 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 174 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 175 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 176 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 177 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 178 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 179 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 180 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 181 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 182 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 183 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 184 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 185 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 186 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 187 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 188 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 189 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 190 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 191 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 192 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 193 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 194 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 195 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 196 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 197 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 198 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 199 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 200 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 201 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 202 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 203 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 204 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 205 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 206 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 207 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 208 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 209 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 210 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 211 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 212 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 213 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 214 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 215 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 216 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 217 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 218 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 219 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 220 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 221 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 222 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 223 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 224 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 225 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 226 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 227 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 228 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 229 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 230 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 231 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 232 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 233 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 234 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 235 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 236 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 237 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 238 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 239 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 240 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 241 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 242 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 243 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 244 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 245 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 246 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 247 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 248 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 249 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 250 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 251 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 252 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 253 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 254 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 255 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 256 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 257 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 258 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 259 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 260 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 261 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 262 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 263 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 264 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 265 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 266 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 267 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 268 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 269 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 270 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 271 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 272 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 273 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 274 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 275 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 276 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 277 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 278 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 279 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 280 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 281 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 282 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 283 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 284 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 285 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 286 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 287 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 288 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 289 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 290 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 291 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 292 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 293 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 294 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 295 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 296 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 297 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 298 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 299 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 300 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 301 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 302 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 303 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 304 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 305 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 306 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 307 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 308 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 309 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 310 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 311 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 312 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 313 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 314 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 315 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 316 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 317 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 318 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 319 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 320 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 321 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 322 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 323 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 324 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 325 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 326 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 327 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 328 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 329 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 330 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 331 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 332 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 333 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 334 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 335 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 336 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 337 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 338 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 339 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 340 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 341 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 342 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 343 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 344 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 345 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 346 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 347 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 348 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 349 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 350 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 351 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 352 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 353 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 354 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 355 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 356 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 357 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 358 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 359 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 360 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 361 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 362 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 363 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 364 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 365 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 366 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 367 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 368 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 369 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 370 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 371 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 372 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 373 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 374 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 375 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 376 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 377 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 378 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 379 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 380 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 381 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 382 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 383 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 384 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 385 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 386 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 387 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 388 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 389 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 390 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 391 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 392 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 393 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 394 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 395 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 396 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 397 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 398 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 399 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 400 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 401 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 402 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 403 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 404 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 405 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 406 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 407 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 408 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 409 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 410 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 411 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 412 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 413 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 414 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 415 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 416 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 417 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 418 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 419 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 420 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 421 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 422 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 423 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 424 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 425 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 426 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 427 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 428 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 429 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 430 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 431 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 432 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 433 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 434 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 435 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 436 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 437 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 438 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 439 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 440 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 441 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 442 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 443 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 444 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 445 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 446 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 447 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 448 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 449 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 450 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 451 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 452 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 453 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 454 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 455 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 456 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 457 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 458 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 459 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 460 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 461 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 462 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 463 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 464 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 465 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 466 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 467 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 468 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 469 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 470 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 471 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 472 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 473 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 474 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 475 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 476 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 477 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 478 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 479 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 480 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 481 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 482 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 483 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 484 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 485 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 486 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 487 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 488 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 489 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 490 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 491 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 492 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 493 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 494 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 495 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 496 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 497 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 498 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 499 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 500 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 501 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 502 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 503 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 504 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 505 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 506 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 507 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 508 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 509 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 510 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 511 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 512 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 513 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 514 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 515 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 516 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 517 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 518 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 519 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 520 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 521 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 522 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 523 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 524 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 525 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 526 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 527 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 528 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 529 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 530 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 531 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 532 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 533 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 534 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 535 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 536 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 537 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 538 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 539 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 540 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 541 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 542 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 543 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 544 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 545 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 546 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 547 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 548 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 549 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 550 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 551 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 552 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 553 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 554 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 555 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 556 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
