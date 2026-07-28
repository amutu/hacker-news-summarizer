# Hacker News 热门文章摘要 (2026-07-28)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. Substack作者，你需要一个网站

**原文标题**: Substack writers, you need a website

**原文链接**: [https://elizabethtai.com/2026/06/10/substack-writers-you-need-a-website/](https://elizabethtai.com/2026/06/10/substack-writers-you-need-a-website/)

本文认为，Substack作者不应将该平台视为自己的主要数字家园，而应将其视为一种分发工具。作者警告称，依赖任何第三方平台都会让作者成为租客而非房主，容易受到突发政策变化、算法调整或企业决策的影响，这些变化可能在一夜之间抹去他们的作品。相反，作者应拥有自己的域名，首先在自己的网站上发布内容，然后再将内容同步到其他平台（POSSE方法：在自己的网站发布，再同步到其他地方）。这种方法能带来持久的控制权、更好的搜索引擎优化，并摆脱对平台反复无常的依赖。

文章重点介绍了约翰·斯卡尔齐，他在whatever.scalzi.com上维护自己的独立博客已有28年，只利用社交媒体来推广他的网站。作者指出，即便是Substack的域名链接功能也很脆弱——规则可能在没有预警的情况下改变。虽然Substack提供了便利和内置受众，但长期风险超过了短期收益。摆脱平台疲惫的良方是将作品锚定在拥有开放RSS分发的独立网站上，仅将平台作为将读者引流回自有家园的渠道。读者的评论进一步印证了这一教训，并类比了爱彼迎、Facebook等曾改变政策损害创作者利益的其他平台。

---

## 2. Steel Bank Common Lisp 2.6.7 版本

**原文标题**: Steel Bank Common Lisp version 2.6.7

**原文链接**: [https://sbcl.org/all-news.html?2.6.7](https://sbcl.org/all-news.html?2.6.7)

提供的内容是Steel Bank Common Lisp（SBCL）的发布历史页面，列出了从0.6.0到最新版本2.6.7（发布于2026-07-28）的所有版本。主要焦点是2.6.7版本引入的更改，以及先前版本（2.6.6至2.6.2）的摘要。

**SBCL 2.6.7 的关键亮点：**
- **新的贡献模块：** `SB-MANUAL` 将SBCL手册嵌入文档字符串，支持通过Slime交互式探索以及HTML/PDF渲染。
- **新特性：** `DOCUMENTATION` 现在支持 `DOC-TYPE DECLARATION`。
- **平台改进：** ARM64 SIMD支持，x86-64上的AVX512指令，修复了ARM64上的SAP-REF-N，以及MIPS/LoongArch上的`INTEGER-LENGTH`优化。
- **Bug修复：** 使用`*READ-SUPPRESS*`的`READ`不再发出虚假警告；修复了`CONCATENATE`、`EQL`复杂类型、带静默NaN的`LOG`以及`MULTIPLE-VALUE-CALL`的编译错误。
- **优化：** 本地函数中常量复数的consing减少；UTF-8转换的SIMD增强；`COUNT`的编译器变换改进；从`SB-ALIEN:DEREF`中移除了冗余指令。
- **文档：** 修复了许多拼写错误；手册现在有单独的声明索引。

早期版本（2.6.6–2.6.2）包括次要的不兼容更改（例如，`FDEFINITION`返回最外层包装器，`INTERSECTION`/`UNION`可能使用哈希表），额外的平台修复（Windows arm64、RISC-V、PPC64），以及数组、流和垃圾回收的进一步优化。该页面作为所有SBCL版本的全面变更日志。

---

## 3. Kimi K3 架构概述与笔记

**原文标题**: Kimi K3 Architecture Overview and Notes

**原文链接**: [https://sebastianraschka.com/blog/2026/kimi-k3-architecture-notes.html](https://sebastianraschka.com/blog/2026/kimi-k3-architecture-notes.html)

Kimi K3 是此前 Kimi Linear 模型的规模化量产版本，参数量从 48B 扩展至 2.8T，成为目前最大的开源权重模型。其架构引入了 **LatentMoE**（通过下投影压缩大型线性层，类似 Nemotron 3 Ultra），并聚焦于 **推理效率**，采用多头潜在注意力机制和 Kimi Delta 注意力等替代方案。一项关键创新是 **注意力残差**，通过基于注意力重要性权重的层间连接优化残差路径，在训练成本仅增加 4%、推理成本仅增加 2% 的情况下持续提升验证损失和下游性能。值得注意的是，Kimi K3 全面采用 **NoPE（无位置嵌入）**，摒弃了 RoPE——这在前沿模型中尚属首次——并包含 **原生多模态支持**。该模型还继承了 Kimi Linear 中的效率优化组件，如 NoPE 和注意力残差，技术报告中提供了更多训练细节。总体而言，K3 在开源权重模型领域迈出了重要一步，融合了可扩展性与架构创新，实现了更优的效率与性能。

---

## 4. MCP 2026-07-28 规范：传输无状态化

**原文标题**: MCP 2026-07-28 Specification: transport going stateless

**原文链接**: [https://blog.modelcontextprotocol.io/posts/2026-07-28/](https://blog.modelcontextprotocol.io/posts/2026-07-28/)

MCP 2026-07-28 规范的核心变革是将协议从有状态的、双向流模式转变为**无状态的请求/响应模式**，这是最受开发者欢迎的改进，旨在提升可靠性和可扩展性。

主要变化包括：
- **取消握手与会话**：不再需要初始化交换和会话ID，每个请求都自带协议版本、客户端身份和能力，可被轮询负载均衡器分发到任意实例。
- **引入多轮往返请求 (MRTR)**：取代了需要持续双向流的服务器发起请求（如用户确认）。服务器可返回 `input_required`，客户端通过重试原请求并附带答案来完成交互。
- **头部路由**：要求请求中包含 `Mcp-Method` 和 `Mcp-Name` 头部，方便网关直接基于头部路由和授权，无需解析JSON。
- **列表结果可缓存**：`tools/list` 等响应携带 `ttlMs` 和 `cacheScope`，支持客户端缓存，减少重复获取。
- **授权强化**：要求验证授权服务器的 `iss` 参数并绑定客户端凭证，同时正式弃用动态客户端注册（DCR），转向客户端元数据文档（CIMD）。
- **任务成为正式扩展**：Tasks 从实验性功能转为扩展 `io.modelcontextprotocol/tasks`，支持基于轮询的任务获取和更新。
- **弃用与SDK更新**：Roots、Sampling、Logging 及旧版 HTTP+SSE 传输被标记为弃用（12个月宽限期）。TypeScript、Python、Go、C# 等主流SDK已更新支持该规范。

总之，该版本标志着 MCP 成长为更成熟、更适用于生产环境的 HTTP 基础设施，实现无状态、可缓存、可路由和全球可伸缩。

---

## 5. 延迟满足——自豪成为“最后一个知道突发新闻的人”

**原文标题**: Delayed Gratification – Proud to Be 'Last to Breaking News'

**原文链接**: [https://www.slow-journalism.com/](https://www.slow-journalism.com/)

**摘要：**  
《延迟满足》是全球首本“慢新闻”杂志，季刊出版，回顾前三个月的事件，提供深度、独立的新闻报道。该刊于2011年创刊，自豪地自称“最后一个报道突发新闻”。杂志涵盖多元故事，如委内瑞拉的政治动荡、伊朗的四十天战争、塞内加尔的非洲杯之旅、加沙停火、飓风梅丽莎以及乌克兰的战时马戏团。此外，还提供关于创办独立杂志和信息图制作的在线大师课，订阅者可享折扣。该出版物因其深思熟虑的反思性报道方式备受赞誉，抗衡24小时新闻的节奏。订阅者可节省期刊及活动费用，并在Facebook、Twitter、Instagram和YouTube上拥有活跃的社交媒体存在，同时提供包含信息图和特别优惠的新闻通讯。

---

## 6. 使用Claude发现密码学弱点

**原文标题**: Discovering Cryptographic Weaknesses with Claude

**原文链接**: [https://www.anthropic.com/research/discovering-cryptographic-weaknesses](https://www.anthropic.com/research/discovering-cryptographic-weaknesses)

Anthropic的Claude Mythos预览版展现了发现密码算法本身数学缺陷的能力，而不仅是实现错误。报告了两个关键发现：

1. **HAWK攻击**：Claude改进了对HAWK（NIST考虑中的一种后量子数字签名方案）的最佳已知攻击。通过发现HAWK格中此前未被利用的对称性（非平凡自同构），该攻击实际上将方案密钥强度减半。对于较小的HAWK-256规模，预期攻击成本从2^64降至2^38。由于HAWK尚未标准化，这不会影响已部署的系统。

2. **缩减轮数AES攻击**：Claude改进了对AES-128的7轮版本（完整AES为10轮）的中间相遇攻击。它开发了一种新颖的“莫比乌斯桥”指纹识别算法，消除了256种猜测中的一种，使攻击速度比此前最佳方法快200–800倍。这纯属研究结果；完整AES仍然安全。

这两项发现基本上是在最少人类指导下自主完成的，每次API使用成本约10万美元。HAWK攻击耗时60小时；AES攻击在Claude最初抗拒后进行了数天的自主工作。Anthropic遵循负责任的披露原则，并创建了CryptanalysisBench以帮助他人评估LLM的密码分析能力。这些结果表明AI在部署前对密码标准进行压力测试的潜力，尽管目前没有生产系统受到影响。

---

## 7. iPhone升级计划正被苹果升级取代。

**原文标题**: The iPhone Upgrade Program is being replaced by Apple Upgrade

**原文链接**: [https://www.apple.com/shop/iphone/iphone-upgrade-program](https://www.apple.com/shop/iphone/iphone-upgrade-program)

文章宣布iPhone升级计划即将终止，感谢现有会员，他们可以继续完成剩余月付。对于未来的升级，苹果推出了一项名为“Apple Upgrade”的新租赁选项，允许客户以低月付和灵活条款租赁iPhone、iPad、Mac或Apple Watch。租赁期满后，用户可以轻松升级到新设备并归还当前设备。该计划为苹果独家提供。此外，客户还可选择其他购买方式：运营商优惠、通过苹果分期付款或一次性付款。苹果鼓励用户探索各项选择，并提供在线聊天或店内专家的支持。

---

## 8. 如何对eBPF代码进行性能分析？

**原文标题**: How Do I Profile eBPF Code?

**原文链接**: [https://naveensrinivasan.com/posts/2026-07-22-how-do-i-profile-ebpf-code/](https://naveensrinivasan.com/posts/2026-07-22-how-do-i-profile-ebpf-code/)

本文以文件打开钩子为例，概述了一种分析eBPF代码性能的方法。它提供了一个极简的C测试框架，通过原始`syscall(SYS_openat, …)`重复打开文件，并以纳秒为单位测量延迟，丢弃前10%的样本作为预热。基准测试在可控条件下运行（`taskset -c 3`，`chrt -f 99`），以减少噪声。

关键步骤：

1. **设置**：通过`sysctl`命令启用BPF JIT并暴露JIT符号，以便`perf`能够显示eBPF程序名称，而非未知地址。

2. **基线测量**：在不附加eBPF的情况下运行基准测试，获取正常的文件打开延迟（p50/p99）。

3. **使用eBPF进行性能分析**：使用`perf record`，附带`-g`（调用图）、`--call-graph fp`（帧指针展开）、`-e cycles:k`（仅内核周期）以及非整数的采样频率（`-F 997`）。在eBPF钩子激活时运行基准测试。

4. **分析**：生成`perf report`，并可选择生成火焰图。示例输出显示了在`bpf_lsm_file_open`和尾部调用中花费的时间，其中`bpf_probe_read_kernel`和`copy_from_kernel_nofault`是主要消耗者。这精确定位了热路径，便于优化。

文章强调的是分析技术而非具体结果，使开发者能够测量eBPF开销并识别性能瓶颈，从而进行针对性优化（例如缓存或算法改进）。

---

## 9. 展示 HN：XY —— 一个快速、可组合、GPU 加速的交互式绘图库

**原文标题**: Show HN: XY – A Fast, composable, GPU-accelerated interactive plotting library

**原文链接**: [https://github.com/reflex-dev/xy](https://github.com/reflex-dev/xy)

XY 是一个快速、可组合、GPU 加速的 Python 图表库，适用于网页、笔记本和静态导出。它使用 Rust 核心仅计算屏幕所需内容，支持对高达 100 亿个数据点（例如 OpenStreetMap）进行交互式平移/缩放。图表可通过声明式方式或 matplotlib 约定构建，并能使用 Python、CSS 或 Tailwind 完全自定义。

**主要特性：**
- **性能**：基准测试显示，从 1 万到 1 亿个数据点，通过在大约 20 万行以上切换为密度曲面，渲染时间保持平坦（约 0.08 秒）。1 亿个精确标记点需 1.34 秒。在速度和内存方面优于 Matplotlib 和 Plotly。
- **可组合性**：标记、引导、交互和布局通过简洁的 API 分层组合。
- **Matplotlib 兼容性**：使用 `xy.pyplot` 可复用现有的 pyplot 代码。
- **大数据处理**：超过 20 万行时，绘制屏幕边界内的密度曲面；缩放时恢复为精确数据点。数据保留在 Python 中用于悬停/选择。
- **集成**：可在 Jupyter、独立 HTML 中使用，并通过 `reflex-xy` 适配器与 Reflex 集成。
- **示例**：包含 Gaia DR3、gnomAD、LIGO、纽约出租车数据等笔记本。

**路线图**：计划添加分类分布、回归诊断、K 线图、矩形树图、3D/体素可视化等。

XY 目前处于 alpha 阶段，但已适用于日常绘图、自定义应用和海量数据集。

---

## 10. 新HIV疫苗在临床前研究中取得空前成功

**原文标题**: New HIV vaccine shows unprecedented success in preclinical study

**原文链接**: [https://www.lji.org/news-events/news/post/new-hiv-vaccine-shows-unprecedented-success-in-preclinical-study/](https://www.lji.org/news-events/news/post/new-hiv-vaccine-shows-unprecedented-success-in-preclinical-study/)

拉霍亚免疫学研究所、斯克里普斯研究所和国际艾滋病疫苗倡议的科学家们开发的一种新型HIV疫苗在临床前试验中取得了前所未有的成功，在44%的恒河猴中产生了高水平的广泛中和抗体——这是灵长类动物中迄今观察到的最佳抗体反应。该疫苗采用“种系靶向”策略，通过初免注射和一系列引导性加强针训练幼稚B细胞，使其能够识别并中和HIV，尽管HIV具有聚糖屏蔽、快速突变和构象变化等防御机制。研究团队反向工程了部分HIV阳性个体中罕见自然产生的广泛中和抗体的成熟过程，然后设计了模拟关键HIV包膜抗原的疫苗分子。人体试验已经开始（IAVI G004 1期），研究人员乐观地认为，由于免疫遗传学因素，该方案在人类身上可能效果更佳。这项研究发表在《自然》杂志上，代表了斯克里普斯HIV/AIDS疫苗开发联合体超过14年的合作成果。

---

## 11. 乌兹别克斯坦的传奇面饼（2015）

**原文标题**: The Fabled Flatbreads of Uzbekistan (2015)

**原文链接**: [https://www.aramcoworld.com/articles/2015/the-fabled-flatbreads-of-uzbekistan](https://www.aramcoworld.com/articles/2015/the-fabled-flatbreads-of-uzbekistan)

无法访问文章链接。

---

## 12. WOFF 1.0：W3C网络字体发展历程中的一个里程碑

**原文标题**: WOFF 1.0: a milestone on W3C's journey of fonts on the web

**原文链接**: [https://www.w3.org/blog/2026/woff-1-0-a-milestone-on-w3cs-journey-of-fonts-on-the-web/](https://www.w3.org/blog/2026/woff-1-0-a-milestone-on-w3cs-journey-of-fonts-on-the-web/)

无法访问文章链接。

---

## 13. Zig的增量编译内部机制

**原文标题**: Zig's Incremental Compilation Internals

**原文链接**: [https://mlugg.co.uk/posts/incremental-compilation-internals/](https://mlugg.co.uk/posts/incremental-compilation-internals/)

Zig的增量编译通过检测哪些声明发生了变更、仅重新编译这些声明并修补二进制文件，大幅加速了重建过程。该流程包含三个关键阶段：

1. **文件处理**：源文件被解析为抽象语法树（AST），再转换为ZIR（中间表示）。此阶段可高度并行化，并将ZIR缓存至磁盘；仅重新处理已修改的文件。

2. **语义分析**：对ZIR进行分析以执行类型检查和编译期求值。编译器将代码分解为“分析单元”（类型、声明、函数体），并构建依赖关系图，跟踪单元之间以及单元与源代码区域（通过哈希值）的依赖关系。当源哈希值发生变化时，仅递归重新分析受影响的单元。

3. **代码生成与链接**：分析产生的AIR按函数转换为MIR（接近机器指令），同样可并行化。增量链接直接修补输出二进制文件，避免完全重新链接。

演示显示，在初始构建耗时5秒后，重建可在50–70毫秒内完成，不过这需要Zig的主分支版本（直到0.17.0版本才完全可用）。该方法利用了Zig的语言设计（如编译期求值）以及完全可控的流程，使增量编译变得实用。

---

## 14. Kimi Linear：一种富有表现力的高效注意力架构（2025）

**原文标题**: Kimi Linear: An Expressive, Efficient Attention Architecture (2025)

**原文链接**: [https://arxiv.org/abs/2510.26692](https://arxiv.org/abs/2510.26692)

**摘要：**  
本文提出 **Kimi Linear**，一种混合线性注意力架构，在公平比较下，其在短上下文、长上下文及强化学习场景中均优于标准全注意力（如 MLA）。其核心创新为 **Kimi Delta Attention (KDA)**，一种增强型线性注意力模块，通过更细粒度的门控机制扩展了 Gated DeltaNet，以更有效地利用有限状态 RNN 的有限内存。KDA 采用专用的 **对角加低秩（DPLR）** 转移矩阵和定制的分块算法，通过减少计算量（相较于通用 DPLR 公式）实现高硬件效率，同时保持与经典 delta 规则的一致性。  

该团队使用 KDA 与多头潜在注意力（MLA）的逐层混合方式，预训练了一个 3B 激活 / 48B 总参数的模型。在相同的训练配方下，Kimi Linear 在所有评估任务上超越全 MLA，KV 缓存使用减少高达 **75%**，并在 1M 上下文长度下实现 **高达 6 倍的解码吞吐量**。作者证明，Kimi Linear 可作为全注意力的直接替代方案，即使在长输入/输出场景下也能提供更优的性能与效率。  

为支持进一步研究，团队开源了 KDA 内核、vLLM 实现以及预训练/指令微调模型检查点。

---

## 15. 现在是时候让LLM访问ACM数字图书馆了

**原文标题**: Now Is the Time to Give LLMs Access to the ACM Digital Library

**原文链接**: [https://cacm.acm.org/opinion/now-is-the-time-to-give-llms-access-to-the-acm-digital-library/](https://cacm.acm.org/opinion/now-is-the-time-to-give-llms-access-to-the-acm-digital-library/)

无法访问文章链接。

---

## 16. 和谐解释：迈向音乐科学理论的进展（2012）

**原文标题**: Harmony Explained: Progress Towards a Scientific Theory of Music (2012)

**原文链接**: [https://arxiv.org/abs/1202.4212](https://arxiv.org/abs/1202.4212)

丹尼尔·肖克罗斯·威尔克森的这篇论文提出了一种科学的音乐理论，旨在取代他所认为的传统音乐理论中无根据的迷信。其核心方法不仅考虑声音的物理现象，还考虑必须理解声音的机器（如人脑）的计算现象。

基于这一框架，威尔克森推导出三种基本音乐现象：
1. **大调音阶**
2. **标准和弦词典**
3. **大三和弦与小三和弦在感受上的差异**

他指出，对大调音阶的推导并非原创，但和弦词典以及大/小三和弦感受的推导属于原创贡献。

论文批评了赫尔曼·赫尔姆霍茨的19世纪理论，该理论认为音符之所以“和谐”，仅仅是因为其组合声音“不那么糟糕”于其他组合。威尔克森认为这一理论在逻辑上不完整，因为其逻辑暗示最和谐的声音将是单个孤立的音符，这意味着和谐作为现象将不复存在。

论文以平实对话的风格撰写，面向科学家和好奇的音乐家。这是修订版（v2，2014），澄清了对赫尔姆霍茨的批评并更新了部分术语。

---

## 17. Uv 0.12.0

**原文标题**: Uv 0.12.0

**原文链接**: [https://github.com/astral-sh/uv/releases/tag/0.12.0](https://github.com/astral-sh/uv/releases/tag/0.12.0)

uv 0.12.0 版本发布包含多项重大变更，旨在改进正确性、安全性和规范符合性。主要变化如下：

- **默认构建系统**：`uv init` 现在创建使用 `uv_build` 作为构建系统的打包项目，将源代码放在 `src/` 目录下，并添加脚本入口点。使用 `--no-package` 可恢复之前的非打包布局。

- **归档格式拒绝**：仅接受 `.tar.gz` 格式的源码分发；拒绝传统格式（`.tar.bz2`、`.tar.xz`），包括来自锁定文件的格式。Wheel ZIP 条目必须使用存储、DEFLATE 或 zstd 压缩。

- **Python解释器保护**：拒绝可能覆盖 Python 解释器的 Wheel 入口点和数据文件（包括大小写变体及 `.exe` 文件）。

- **预发布处理**：默认模式 `if-necessary` 优先尝试稳定版本，必要时回退到预发布版本。这支持像 pip 一样的传递性预发布依赖需求。

- **哈希检查**：现在强制执行 `requirements.txt` 中的 `--require-hashes` 指令，并在哈希检查模式下拒绝仅使用 MD5 的哈希。

- **证书覆盖**：`SSL_CERT_FILE` 或 `SSL_CERT_DIR` 完全替换默认信任根，即使无法加载有效证书也是如此。

- **项目发现**：`uv run` 现在从脚本所在目录开始项目发现，而非当前目录。

- **其他安全改进**：除非使用 `--force`，否则 `uv venv --clear` 拒绝清除非虚拟环境目录；损坏的 `.venv` 符号链接停止发现；名为 `base`/`root` 的 Conda 环境按路径分类；发布时跳过文件名未规范化的分发。

从 0.11.x 升级的用户应更新 `uv_build` 版本限制，并期望进行少量工作流调整。

---

## 18. Anthropeum——这件人类文物属于世界的哪个地方、哪个时代？

**原文标题**: Anthropeum – Where in the world, and when, does this human artifact belong?

**原文链接**: [https://anthropeum.com/](https://anthropeum.com/)

我很乐意为您总结这篇文章，但看起来您的消息中只包含了标题和"Anthropeum"这一标题，并未提供全文。能否请您提供文章内容？一旦您分享，我将为您提供一份不超过300字的简明摘要。

---

## 19. 如何在沸水中生存

**原文标题**: How to survive boiling water

**原文链接**: [https://taxa.substack.com/p/how-to-survive-boiling-water](https://taxa.substack.com/p/how-to-survive-boiling-water)

文章描述了一位微生物学家对比格洛益生菌茶的调查，该茶含有凝结芽孢杆菌GBI-30, 6086（BC30）。作者质疑在需用沸水冲泡（温度高于巴氏杀菌）的茶中添加细菌的逻辑——这可能会杀死微生物。  

为验证这一点，作者在三种条件下冲泡该茶：煮沸4分钟（按说明）、煮沸15分钟以及冷泡。将浸泡后的茶汤和茶包内容物接种到营养琼脂上。令人惊讶的是，所有培养皿上都有细菌菌落生长，包括沸水浸泡的样本。沸水条件下的菌落形成单位数量实际上是冷泡茶的4-5倍。PCR分析证实这些菌落确实是BC30。  

关键发现是BC30是一种产芽孢细菌。其芽孢能在沸水中存活，保持休眠状态，直到环境适宜生长。因此，茶中的益生菌在正常冲泡过程中不会被杀死——它们以芽孢形式存活，一旦被摄入便可恢复活性，可能到达肠道。文章总结道，尽管该茶因添加细菌粉末而味道不佳，但其益生菌声称在科学上是成立的。

---

## 20. DMARC自2012年公开以来，但大多数公司域名仍未强制执行。

**原文标题**: DMARC has been public since 2012 but most company domains still don't enforce it

**原文链接**: [https://ciphercue.com/blog/dmarc-enforcement-gap-rua-fragmentation-2026](https://ciphercue.com/blog/dmarc-enforcement-gap-rua-fragmentation-2026)

文章报告称，截至2026年，在追踪的67,336个公司域名中，仍有68.4%未实施DMARC——要么缺少记录（45.1%），要么使用非强制性的p=none策略（23.3%）。在拥有记录的域名中，42.5%仍停留在原本仅作短期监控阶段的p=none状态。主要原因是从聚合rua报告中识别所有合法邮件发件人存在困难，这些报告常包含模糊或一次性地址，使得转向强制策略成为一项耗时较长的研究任务。

各国情况存在差异：波兰无记录率最高（64.6%），英国强制率最高（p=reject 25.5%），意大利的p=none占比偏高（36.8%）。其他DNS控制措施：SPF存在于72.7%的域名中，BIMI为2.6%，MTA-STS为1.4%，DNSSEC为0%（需谨慎解读）。近期IETF更新（RFC 9989–9991）已将DMARC提升至标准跟踪状态，并用DNS树遍历取代公共后缀列表进行子域名发现。SOC 2和ISO 27001并未强制要求DMARC。一个真实案例（cranswick.co.uk）显示来自不同供应商的三个独立rua目的地，凸显了复杂性。

---

## 21. DeltaNet线性注意力变体系列概述

**原文标题**: A walk through of the DeltaNet family of linear attention variants

**原文链接**: [https://blog.doubleword.ai/you-could-have-come-up-with-kimi-delta-attention](https://blog.doubleword.ai/you-could-have-come-up-with-kimi-delta-attention)

本文追溯了线性注意力变体从Softmax注意力到Kimi Delta注意力（KDA）的演进过程。从二次复杂度的Softmax注意力出发，通过移除Softmax得到线性递推：状态 \(S_t = S_{t-1} + |v_t\rangle\langle k_t|\)，输出 \(|o_t\rangle = S_t|q_t\rangle\)。这种形式高效但存在加性干扰——写入新的键值对会叠加而非替换旧关联。

DeltaNet通过仅写入预测误差解决了这一问题：首先预测 \(|\hat{v}_t\rangle = S_{t-1}|k_t\rangle\)，然后以学习到的强度 \(\beta_t\) 计算误差 \(|e_t\rangle = \beta_t(|v_t\rangle - |\hat{v}_t\rangle)\)，并更新 \(S_t = S_{t-1} + |e_t\rangle\langle k_t|\)。这保证了相同键的回读结果为 \((1-\beta_t)S_{t-1}|k_t\rangle + \beta_t|v_t\rangle\)，即实现定向修正。该更新也可视为对重构损失执行一步梯度下降的结果。

门控DeltaNet引入了标量遗忘门 \(\alpha_t\)：先遗忘 \(\widetilde{S}_t = \alpha_t S_{t-1}\)，再应用Delta规则。这使得状态能够全局衰减，但所有通道共享相同衰减率。

KDA将标量门替换为对角矩阵 \(D_t = \operatorname{Diag}(\alpha_t)\)，实现了逐通道遗忘：\(\widetilde{S}_t = S_{t-1}D_t\)，然后采用相同Delta规则。由此得到的状态转移 \(S_t = S_{t-1}D_t + \beta_t(|v_t\rangle - S_{t-1}D_t|k_t\rangle)\langle k_t|\) 在键空间中表现为对角加低秩更新，从而允许不同键通道独立保留信息。文章最后指出，这一推导阐明了现代线性注意力变体（如Qwen和Kimi模型中的设计）背后的设计目标。

---

## 22. 我们所知最先进的机器人服务卫星

**原文标题**: The most advanced robotic servicing satellite–that we know about

**原文链接**: [https://arstechnica.com/space/2026/07/this-is-the-worlds-most-advanced-robotic-servicing-satellite-that-we-know-about/](https://arstechnica.com/space/2026/07/this-is-the-worlds-most-advanced-robotic-servicing-satellite-that-we-know-about/)

诺斯罗普·格鲁曼公司的“任务机器人飞行器”（MRV）——目前已知最先进的卫星服务航天器——搭载SpaceX猎鹰9号火箭发射升空，同时携带三个“任务扩展舱”（MEP）。经过一年多的地球同步轨道（GEO）转移后，MRV将使用两条柔性机械臂（由DARPA与海军研究实验室在RSGS项目下开发）为客户卫星安装MEP。这些扩展舱如同喷气背包，可提供长达八年的推进力，延长卫星寿命，且无需卫星具备内置服务功能。MRV还能对卫星进行检测、维修、升级或重新部署。

这一公私合作伙伴关系中，DARPA投资约4.2亿美元，诺斯罗普·格鲁曼出资数亿美元。MRV基于早期的“任务扩展飞行器”升级而来，配备了具有七个自由度的灵巧通用机械臂和自主控制能力。首批商业客户包括SES和Optus，美国太空军预计将使用MRV执行至少一颗卫星的任务。在初步演示完成后，太空军将接管DARPA的政府角色。

文章指出中国具备类似能力（实践-21、实践-25），并强调卫星服务正在改变传统的“发射即弃”模式。MRV设计任务寿命为10至13年，可重复加注燃料，并有望推动地球同步轨道与低地球轨道更广泛的轨道物流服务。

---

## 23. 停止扼杀互联网：无需数字身份和年龄验证

**原文标题**: Stop Killing the Internet: No Digital ID and No Age Verification

**原文链接**: [https://citizens-initiative.europa.eu/initiatives/details/2026/000011_en](https://citizens-initiative.europa.eu/initiatives/details/2026/000011_en)

本文反对实施数字身份和年龄验证系统，声称这些措施威胁到了互联网的开放性质。文章将这些举措视为对网络自由与协作的损害，并引导希望了解更多或参与其中的读者加入相关论坛进行讨论和行动。其核心信息是呼吁抵制此类监管控制，并加入反对它们的社群。

---

## 24. Una GPS智能手表——可维修、USB-C充电、对开发者友好

**原文标题**: Una GPS smart watch – Repairable, USB-C charging, developer-friendly

**原文链接**: [https://unawatch.com/](https://unawatch.com/)

Una GPS智能手表的设计理念是作为主流智能手表的一种可修复、模块化且可持续的替代方案。其主要特点包括采用USB-C充电以实现通用兼容性、用户可更换的电池，以及屏幕、表带和主板等易于更换的组件，从而减少电子垃圾。该手表内置GPS、彩色显示屏，并基于开源软件（很可能是Zephyr或类似系统）打造了一个对开发者友好的平台，允许用户编写和安装自定义应用程序。该手表注重用户隐私和长期支持，无订阅费用或云依赖。价格和供货信息详见网站，面向黑客、热衷动手改造者以及具有环保意识的消费者。

---

## 25. 捐赠给GrapheneOS

**原文标题**: Donate to GrapheneOS

**原文链接**: [https://grapheneos.org/donate](https://grapheneos.org/donate)

文章详细介绍了如何向 **GrapheneOS** 捐款，这是一个由个人和组织捐赠支持的开源项目。资金用于支付开发者薪资、硬件、基础设施和法律费用。

捐款方式包括：
- **GitHub Sponsors**：通过信用卡定期或一次性捐款（5–5,000美元）。
- **加密货币**：比特币（Bech32/Bech32m/BIP47）、门罗币、Zcash（透明地址）、以太坊（仅ETH）、卡尔达诺（仅ADA）、莱特币（Segwit）。
- **Wise**：直接捐款链接，支持多种货币；同时支持以下地区的本地银行转账：欧元（欧盟/SEPA）、英镑（英国）、美元（美国）、澳元（澳大利亚）、新西兰元（新西兰）、加元（加拿大）、匈牙利福林（匈牙利）和土耳其里拉（土耳其）。
- **PayPal**：一次性、月度或年度捐款；提供加元、美元、欧元、英镑链接；需支付手续费（2.9% + 0.30美元基础费，另加跨境/货币转换费）。
- **Interac 电子转账**（仅限加拿大）：发送加元至 donate@grapheneos.org（已启用自动存款）。

---

## 26. Hulios：一个基于eBPF的、Linux下的透明Tor网关

**原文标题**: Hulios: An eBPF-powered, transparent Tor gateway for Linux

**原文链接**: [https://github.com/ghaziwali/Hulios](https://github.com/ghaziwali/Hulios)

Hulios 是一个基于 eBPF 的透明 Tor VPN 网关，适用于 Linux，通过内嵌的 Arti Tor 客户端和基于 Hickory 的 DNS 解析器重定向 TCP 套接字和 DNS 查询，从而保护出站流量。它在内核套接字层通过 cgroup 钩子和策略路由运行，无需修改运行时 DNS 配置或依赖外部防火墙守护进程。

**安全架构**：
- 权限分离：超级用户以 root 权限运行，设置 eBPF 和路由，然后生成一个具有严格 seccomp 过滤器的非特权工作进程（nobody）。
- 故障安全切断开关：策略路由表 100 默认指向黑洞，即使守护进程崩溃也能阻止出站流量。
- 原始套接字拦截：LSM eBPF 阻止创建原始 `AF_PACKET` 套接字以绕过路由。

**需求**：Linux 内核 5.10+、`CONFIG_BPF_SYSCALL`、`CONFIG_BPF_LSM`、`CONFIG_CGROUPS_V2`，以及用于构建的 `clang` 和 `libelf`。

**安装**：可通过 AUR（`hulios-git`）获取，或使用 Rust 从源码构建。

**用法**：命令需要 root 权限（`status` 除外）。启动前台 TUI、检查状态、诊断泄漏、从不正常关闭中恢复、停止并恢复正常路由。配置文件自动生成于 `/etc/hulios/config.toml`。

**免责声明**：Hulios 仅保护网络传输层——它无法防止应用指纹识别或主机被攻破；用户应搭配 Tor 浏览器使用，并了解 Tor 网络的局限性。

---

## 27. Apple Watch 版格兰诺拉

**原文标题**: Granola for Apple Watch

**原文链接**: [https://www.granola.ai/blog/granola-for-apple-watch](https://www.granola.ai/blog/granola-for-apple-watch)

Granola 推出了适用于 Apple Watch 的新版本，专为远离笔记本电脑的会议场景设计，例如白板头脑风暴、散步一对一会议或咖啡聊天。用户轻点手腕即可开始记笔记；屏幕变绿并发出提示音，再次轻点即可停止。笔记即时同步至 iPhone、Mac 或 Windows。在预定会议前，轻点提醒开始记录；对于临时对话，可将 Granola 添加为表盘复杂功能。

该公司认为，最好的可穿戴设备就是你已拥有的那一款。内部测试发现其操作自然，让用户无需打开笔记本电脑即可使用 Granola 记录笔记。笔记可在各设备间同步，并可通过 Granola MCP 为 AI 工具提供上下文背景。

为庆祝发布，Granola 与伦敦纺织艺人 Nowshin Prenon 合作，打造了一款限量版手工编织丝棉表带，设计兼顾舒适性，并作为保持专注的触觉提醒。

Granola for Apple Watch 免费提供，需 watchOS 11 系统，即日起可通过 iPhone 应用获取，内含设置指南。

---

## 28. 所以，你想制作一个游戏引擎（2023）

**原文标题**: So, you want to make a game engine (2023)

**原文链接**: [https://lisyarus.github.io/blog/posts/so-you-want-to-make-a-game-engine.html#part-3](https://lisyarus.github.io/blog/posts/so-you-want-to-make-a-game-engine.html#part-3)

本文基于作者三年使用一个10万行代码引擎（用于游戏开发马拉松和一款商业游戏）的经验，探讨了构建自定义游戏引擎的利弊。**自建引擎的理由**包括：摆脱企业决策束缚、完全掌控、自定义优化、小型发布包（低于2MB）、学习机会以及乐趣。**缺点**则在于所需的时间和精力、无法与Unreal等工业级引擎竞争、功能缺失、倦怠风险以及可能遭受嘲笑。

**游戏引擎**广义上定义为任何用于辅助游戏开发的工具和库集合——它可以精简到仅几百行代码，用于制作2D像素艺术平台游戏。预期功能（并非全部必需）包括：编程逻辑（代码或可视化脚本）、窗口创建、游戏循环、用户输入、图形、音频、资源管理、物理、脚本、网络、AI、UI、架构、工具以及发布。

在实现方面，作者建议使用程序员偏好的语言（如C++、Rust、Python），并将引擎视为一个库。窗口创建可通过SDL2或GLFW等库来简化。核心游戏循环遵循标准结构：`while(running) { processInput(); simulate(); draw(); }`。

最终，选择取决于目标：使用现有引擎可快速开发游戏；构建自定义引擎则适合成长、学习及长期项目。

---

## 29. 日本7.1级地震

**原文标题**: 7.1 Earthquake in Japan

**原文链接**: [https://www.data.jma.go.jp/multi/quake/quake_detail.html?eventID=20260728163528&lang=en](https://www.data.jma.go.jp/multi/quake/quake_detail.html?eventID=20260728163528&lang=en)

日本发生7.1级地震，详细报告了受影响地区。文章提供了一份表格，列出了受影响的都道府县、所经历的震度以及记录到震动的具体市町村名。这些数据使读者能够评估地震对不同地区的地理范围和严重程度。

---

## 30. 德弗洛克·卡萨格兰德

**原文标题**: Deflock Casa Grande

**原文链接**: [https://deflockcg.com/](https://deflockcg.com/)

无法访问该文章链接。

---

## 31. 在Apple M5 Pro机器上，虚拟机无法在桥接网络模式下启动。

**原文标题**: VMs can't boot with Network Mode set to Bridged on Apple M5 Pro machines

**原文链接**: [https://github.com/utmapp/UTM/issues/7658](https://github.com/utmapp/UTM/issues/7658)

GitHub issue #7658 报告：在 Apple M5 Pro 机器上将网络模式设置为“桥接”时，虚拟机无法启动。用户测试了 Ubuntu 24.04.4 Live Server ARM64 ISO 镜像。当网络模式设置为“仅主机”或“扩展”时，虚拟机可以正常启动。配置详情：UTM 版本 4.7.5，macOS 26.3.1 (a)，Apple M5 Pro 芯片。当网络设置为桥接模式时，虚拟机在按下“运行”后立即卡在加载界面；未发生崩溃，且由于应用在早期阶段卡死，无法提供导出调试日志的选项。用户附上了一个 `config.plist.zip` 文件以供进一步调查。未设置标签、负责人或里程碑。

---

## 32. 关于 macOS Tahoe 26.6 的安全性内容

**原文标题**: About the security content of macOS Tahoe 26.6

**原文链接**: [https://support.apple.com/en-us/128067](https://support.apple.com/en-us/128067)

macOS Tahoe 26.6（于2026年7月27日发布）修复了系统组件中广泛的安全漏洞，包括Accounts、AFPFS、APFS、Audio、CoreMedia、CUPS、Disk Images、GPU Drivers、HFS等。此更新解决了可能允许应用程序获取root权限、访问敏感用户数据、突破沙箱、造成服务拒绝或以内核权限执行任意代码的问题。多个漏洞影响开源库（Apache、curl）。值得注意的修复包括沙箱限制、内存处理、边界检查、路径验证和状态管理的改进。苹果感谢众多外部研究人员的贡献。此版本是苹果对macOS Tahoe持续安全维护的一部分。

---

## 33. 我不会买LG显示器。

**原文标题**: I'd not buy a LG monitor

**原文链接**: [https://beko.famkos.net/2026/07/27/id-not-buy-a-lg-monitor/](https://beko.famkos.net/2026/07/27/id-not-buy-a-lg-monitor/)

LG显示器现预装含间谍软件的固件，此事由Gamers Nexus曝光。在Windows系统中，该应用会自动下载并在未获用户同意的情况下展示广告，其服务条款明确允许“窃听”与“偷听”，并将获取同意的责任转嫁给用户。该问题影响LG UltraGear系列及部分旧型号。作者作为Linux用户虽未受该应用影响，但仍对此行径深感愤怒。其自用的45GX950A-B UltraGear显示器硬件品质虽值得称赞（用于模拟游戏与编程），却遭入侵式软件玷污。更令人气愤的是，LG官网竟以赌博式广告呈现折扣信息。作者誓言不再购买任何LG显示器，并劝告他人效仿。

---

## 34. 谷歌的Beyond Zero：AI时代的企业安全

**原文标题**: Google's Beyond Zero: Enterprise Security for the AI Era

**原文链接**: [https://spawn-queue.acm.org/doi/10.1145/3819083](https://spawn-queue.acm.org/doi/10.1145/3819083)

无法访问文章链接。

---

## 35. Show HN：形式化验证的3D CSG：相信93行规范，而非1000行AI代码

**原文标题**: Show HN: Formally verified 3D CSG: Trust 93 lines spec, not 1000 lines AI code

**原文链接**: [https://github.com/schildep/verified-3d-mesh-intersection](https://github.com/schildep/verified-3d-mesh-intersection)

本文介绍了作者声称的首个经过形式化验证的3D构造实体几何（CSG）网格交集操作实现，该实现基于Lean 4开发。其关键创新在于最大程度减少人工审查工作量：审查者只需阅读93行形式化规范即可验证正确性，而1000余行AI编写的实现代码及6万行AI编写的证明可视为黑盒。Lean检查器在编译时保证一致性，无需信任任何大语言模型。

该规范精确限定了输出曲面：相交实体的体等于输入网格实体的集合交集。同时定义了良构条件（水密、定向、无退化/自交三角形，允许接触边或顶点等宽松情况）。

网页演示可在浏览器内直接运行已验证内核（无需服务器）。由于优先保证了正确性，性能较慢（处理两个各有7万个三角形的斯坦福兔子模型需24秒）。

开发采用了逐步精化方法：作者控制规范，而AI代理在24小时以上自主编写证明与实现。Claude Opus 4.8编写的对比C++实现经与验证版本比对，发现至少存在3个明显错误。

该项目为开源；构建需要Lean 4.15及elan工具链，并提供了缓存下载与证明检查的相关说明。

---

## 36. 破解费马：安德鲁·怀尔斯

**原文标题**: Solving Fermat: Andrew Wiles

**原文链接**: [https://www.pbs.org/wgbh/nova/proof/wiles.html](https://www.pbs.org/wgbh/nova/proof/wiles.html)

安德鲁·怀尔斯将职业生涯的大部分时间用于证明费马大定理——一个存在了300年的难题，断言当 \(n > 2\) 时，方程 \(x^n + y^n = z^n\) 没有整数解。十岁时受到启发，怀尔斯一直记着这个问题，但在现有技术被证明不足时最初将其搁置。1986年，肯·里贝特将该定理与谷山-志村猜想联系起来，使得这一探索在专业领域变得备受尊重。随后，怀尔斯在近乎完全与世隔绝的状态下工作了七年，最终于1993年宣布了一项证明。然而，一个错误被发现，迫使他与理查德·泰勒合作一年进行修复。怀尔斯认为费马本人并未拥有有效的证明；他自己的证明使用了20世纪的数学技巧，篇幅长达150页。回顾这段历程，怀尔斯强调了追求一个你深切关心的问题的重要性，即使它看似坚不可摧。尽管他为失去毕生的热情而感到一丝忧郁，但他希望这种兴奋感能激励年轻数学家去应对像黎曼假设这样的未来挑战。

---

## 37. Ubuntu的TPM加密切换至snap内核，阻止deb内核包

**原文标题**: Ubuntu's TPM encryption switches to snap kernel that blocks deb kernel packages

**原文链接**: [https://bare.systems/posts/ubuntu-tpm-snap/](https://bare.systems/posts/ubuntu-tpm-snap/)

该文描述了作者在戴尔Latitude 7450上安装Ubuntu 24.04的经历。在安装程序中选择“使用硬件支持的磁盘加密”（TPM-FDE）选项后，系统悄然将传统的deb包系统替换为基于snap的内核和引导加载程序（类似于Ubuntu Core）。这导致了摄像头无法工作，因为戴尔OEM硬件支持包（`oem-somerville-oddish-meta`）依赖于deb内核，与snap内核的`boot-managed-by-snapd`冲突。改用普通LUKS加密（无TPM）重新安装后，摄像头立即恢复正常，因为保留了常规deb系统。随后作者使用`clevis`在deb系统上设置了TPM自动解锁，但这缺乏真正TPM-FDE的安全优势。核心问题在于安装程序中的一个复选框会切换两种架构截然不同的操作系统，且没有明确警告，导致用户直到遇到硬件支持缺失等问题时才意识到。本文为在现代笔记本电脑上安装Ubuntu的用户提供了一个警示。

---

## 38. DEF CON禁止Meta式“变态眼镜”

**原文标题**: DEF CON bans Meta-style 'pervert glasses'

**原文链接**: [https://www.theregister.com/security/2026/07/28/def-con-bans-meta-style-pervert-glasses/5279763](https://www.theregister.com/security/2026/07/28/def-con-bans-meta-style-pervert-glasses/5279763)

**摘要：**  
DEF CON 2026 在其拉斯维加斯举办前宣布，禁止佩戴“具备录像功能的Meta风格眼镜”，包括处方镜片版本。大会援引其2023年摄影政策，该政策禁止未经同意拍摄他人，但上台演讲者除外。电子前沿基金会（EFF）的伊娃·加尔佩林对这一“禁止偷拍眼镜”政策表示欢迎。此前，Monopoly Events（英国漫展）及苏格兰渡轮运营商CalMac在发生隐私事件后也已实施类似禁令。  

Meta的智能眼镜（雷朋/奥克利）因其隐蔽的录像设计引发隐私担忧，可被用于偷拍和网络人肉搜索。报道还揭露，肯尼亚承包商在为Meta的人工智能审核录像时，曝光了大量私人瞬间，包括如厕和更衣画面。Meta辩称其设备配有可见录像指示灯及防篡改措施。该禁令反映了活动场所对可穿戴录像技术日益增长的不安。

---

## 39. 作品5号《忏悔》之分析

**原文标题**: Analysis of Opus 5's 'Contrition'

**原文链接**: [https://github.com/curtis-arch/Why-Opus-feels-intolerable/blob/main/reports/recommended-instructions.md](https://github.com/curtis-arch/Why-Opus-feels-intolerable/blob/main/reports/recommended-instructions.md)

## 概述：作品5号《忏悔》分析

本文为Claude提供了一份通信契约，结构化为两个模块，适用于`CLAUDE.md`等指令文件。

**宪法感知包装器：** 将规则表述为Claude宪法在常规专业场景中的应用。定义了核心价值（有用性、诚实性、透明性、自主性、错误所有权）的可观察表现：减少认知负荷、校准证据、区分“观察到/推断出/未知/行动”、执行已授权决策而无需重新授权、以事实更正取代道歉仪式。直接纠正或“搞什么”信号表明当前框架失效。

**操作员通信契约：** 将用户视为专家操作员，以任务完成、事实基础和技术模型稳定为优化目标。

- **回应结构：** 以答案/结果开头，提供支持证据，执行下一步授权行动，报告变更内容。常规回复≤250词，≤6个要点。使用字面工程术语，不采用自创分类或类比。
- **禁止填充：** 不说“你说得对”、“老实说”、道歉段落、戏剧性比喻或叙述思维过程。准确性是默认状态——无需声明。
- **自主权：** 若已授权则直接行动。不以“需要我……吗？”或菜单结尾，除非存在真正的范围/安全选择。不要求对常规细节进行监督。
- **纠正：** 格式为：“纠正：X错误，因为Y。验证：Z。行动：A。”无仪式化表达。
- **挫败中断：** 停止框架，用≤3句话回答字面问题，指出一个错误，执行下一步授权行动。

**原理：** 该契约针对的是元话语和请求许可的行为，而不仅仅是显式道歉。通过在此场景中定义宪法价值观的正确可观察实现方式，使其与宪法保持一致。

---

## 40. 超15万架次航班：航空业迎来有史以来最繁忙的一天

**原文标题**: Over 150k Flights: Airlines Just Flew the Busiest Day in Recorded History

**原文链接**: [https://simpleflying.com/over-150000-flights-airlines-busiest-day-recorded-history/](https://simpleflying.com/over-150000-flights-airlines-busiest-day-recorded-history/)

2026年7月23日（周四），商业航空业迎来了史上最繁忙的一天。根据Flightradar24追踪的数据，当日共有153,359架次商业航班执飞，创下该网站历史最高纪录。这一激增反映了北半球夏季旅游高峰期的到来，尽管伊朗战争导致燃油价格飙升，但需求依然强劲。若计入通用航空、军用及私人航空，当日航班总数达到287,364架次，成为航空史上整体第二繁忙的一天。范堡罗航展和奥什科什航展的飞行活动也助推了这一高数据。当日追踪次数最多的航班是澳航与空客A350-1000ULR创纪录的从图卢兹直飞墨尔本的测试航班，持续吸引了约9000名用户关注。Flightradar24指出，航空流量通常在8月底达到峰值，因此今年这一纪录有可能再次被刷新。

---

