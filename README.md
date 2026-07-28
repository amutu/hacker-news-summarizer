# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-07-28.md)

*最后自动更新时间: 2026-07-28 20:38:45*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 2 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 3 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 4 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 5 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 6 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 7 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 8 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 9 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 10 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 11 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 12 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 13 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 14 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 15 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 16 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 17 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 18 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 19 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 20 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 21 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 22 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 23 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 24 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 25 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 26 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 27 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 28 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 29 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 30 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 31 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 32 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 33 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 34 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 35 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 36 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 37 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 38 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 39 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 40 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 41 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 42 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 43 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 44 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 45 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 46 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 47 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 48 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 49 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 50 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 51 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 52 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 53 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 54 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 55 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 56 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 57 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 58 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 59 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 60 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 61 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 62 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 63 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 64 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 65 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 66 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 67 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 68 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 69 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 70 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 71 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 72 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 73 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 74 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 75 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 76 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 77 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 78 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 79 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 80 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 81 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 82 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 83 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 84 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 85 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 86 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 87 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 88 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 89 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 90 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 91 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 92 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 93 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 94 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 95 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 96 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 97 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 98 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 99 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 100 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 101 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 102 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 103 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 104 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 105 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 106 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 107 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 108 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 109 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 110 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 111 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 112 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 113 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 114 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 115 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 116 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 117 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 118 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 119 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 120 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 121 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 122 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 123 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 124 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 125 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 126 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 127 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 128 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 129 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 130 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 131 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 132 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 133 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 134 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 135 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 136 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 137 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 138 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 139 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 140 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 141 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 142 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 143 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 144 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 145 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 146 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 147 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 148 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 149 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 150 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 151 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 152 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 153 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 154 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 155 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 156 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 157 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 158 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 159 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 160 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 161 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 162 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 163 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 164 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 165 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 166 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 167 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 168 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 169 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 170 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 171 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 172 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 173 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 174 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 175 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 176 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 177 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 178 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 179 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 180 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 181 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 182 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 183 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 184 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 185 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 186 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 187 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 188 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 189 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 190 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 191 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 192 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 193 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 194 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 195 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 196 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 197 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 198 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 199 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 200 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 201 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 202 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 203 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 204 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 205 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 206 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 207 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 208 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 209 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 210 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 211 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 212 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 213 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 214 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 215 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 216 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 217 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 218 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 219 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 220 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 221 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 222 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 223 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 224 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 225 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 226 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 227 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 228 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 229 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 230 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 231 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 232 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 233 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 234 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 235 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 236 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 237 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 238 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 239 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 240 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 241 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 242 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 243 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 244 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 245 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 246 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 247 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 248 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 249 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 250 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 251 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 252 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 253 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 254 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 255 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 256 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 257 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 258 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 259 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 260 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 261 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 262 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 263 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 264 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 265 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 266 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 267 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 268 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 269 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 270 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 271 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 272 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 273 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 274 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 275 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 276 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 277 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 278 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 279 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 280 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 281 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 282 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 283 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 284 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 285 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 286 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 287 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 288 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 289 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 290 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 291 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 292 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 293 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 294 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 295 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 296 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 297 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 298 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 299 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 300 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 301 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 302 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 303 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 304 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 305 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 306 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 307 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 308 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 309 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 310 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 311 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 312 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 313 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 314 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 315 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 316 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 317 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 318 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 319 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 320 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 321 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 322 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 323 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 324 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 325 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 326 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 327 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 328 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 329 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 330 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 331 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 332 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 333 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 334 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 335 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 336 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 337 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 338 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 339 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 340 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 341 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 342 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 343 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 344 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 345 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 346 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 347 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 348 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 349 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 350 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 351 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 352 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 353 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 354 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 355 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 356 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 357 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 358 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 359 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 360 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 361 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 362 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 363 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 364 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 365 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 366 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 367 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 368 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 369 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 370 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 371 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 372 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 373 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 374 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 375 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 376 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 377 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 378 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 379 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 380 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 381 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 382 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 383 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 384 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 385 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 386 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 387 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 388 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 389 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 390 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 391 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 392 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 393 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 394 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 395 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 396 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 397 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 398 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 399 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 400 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 401 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 402 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 403 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 404 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 405 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 406 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 407 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 408 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 409 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 410 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 411 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 412 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 413 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 414 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 415 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 416 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 417 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 418 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 419 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 420 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 421 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 422 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 423 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 424 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 425 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 426 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 427 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 428 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 429 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 430 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 431 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 432 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 433 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 434 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 435 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 436 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 437 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 438 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 439 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 440 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 441 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 442 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 443 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 444 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 445 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 446 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 447 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 448 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 449 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 450 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 451 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 452 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 453 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 454 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 455 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 456 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 457 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 458 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 459 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 460 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 461 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 462 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 463 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 464 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 465 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 466 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 467 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 468 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 469 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 470 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 471 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 472 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 473 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 474 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 475 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 476 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 477 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 478 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 479 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 480 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 481 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 482 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 483 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 484 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 485 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 486 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 487 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 488 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 489 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 490 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 491 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
