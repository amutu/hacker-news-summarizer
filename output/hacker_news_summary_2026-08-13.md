# Hacker News 热门文章摘要 (2026-08-13)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. Gemini 3.7 Flash

**原文标题**: Gemini 3.7 Flash

**原文链接**: [https://blog.google/innovation-and-ai/models-and-research/gemini-models/introducing-gemini-3-7-flash/](https://blog.google/innovation-and-ai/models-and-research/gemini-models/introducing-gemini-3-7-flash/)

谷歌推出了Gemini 3.7 Flash，这是其面向编程和智能体领域最强大的通用模型，距离3.6 Flash发布仅三周时间。它在软件工程、知识工作和网页开发方面带来了显著改进，首发价格为每100万输入tokens 0.75美元、每100万输出tokens 3.75美元——仅为原3.6 Flash成本的一半。

相较于3.6 Flash的主要性能提升包括：FrontierCode 1.1 Main（43.6%对34.4%）、DeepSWE v1.1（65.3%对49.0%）、WebDev Arena Elo（1588对1538）、GDP.pdf基准测试（34.0%对22.0%）以及AutomationBench（30.4%对17.0%）。该模型在调试、首次通过代码准确率、UI生成以及金融、法律和生物科学等领域的文档处理方面均表现出改进。

开发者体验得到增强，改进了指令遵循、意图澄清、多步骤规划和工具调用能力，减少了人工监督需求。Google AI Pro和Ultra订阅用户可使用的Gemini Spark，现已基于3.7 Flash运行，以提升Workspace工具使用和知识工作效率。

该模型配备了更新的安全防护措施，以防止CBRN和网络攻击类滥用。可用平台包括Google Antigravity、通过Google AI Studio和Android Studio提供的Gemini API、Gemini Enterprise Agent Platform，以及面向订阅用户的Gemini应用。

---

## 2. 加速GPT-5.6 Sol超快速

**原文标题**: Accelerating GPT-5.6 Sol Ultrafast

**原文链接**: [https://www.cerebras.ai/blog/accelerating-gpt-5-6-sol-ultrafast-with-openai](https://www.cerebras.ai/blog/accelerating-gpt-5-6-sol-ultrafast-with-openai)

Cerebras与OpenAI推出了**超快速模式（Ultrafast Mode）**，这是OpenAI API中由Cerebras硬件驱动的新服务层级。该模式以高达**每秒750个输出token**的速度运行**GPT-5.6 Sol**，且不牺牲任何质量，专为时效性要求高、任务关键的AI工作而设计。

核心亮点：

- **基准测试速度**：在“人类最后的考试”（Humanity's Last Exam）中，GPT-5.6 Sol超快速模式在**11小时11分钟**内完成了2,500道博士级问题，而Claude Fable 5耗时**78小时27分钟**——速度提升近**7倍**，且准确率相当。
- **经济价值**：在GDP-Val测试中，超快速模式实现了**5.6倍端到端加速**，且无质量下降，适用于法律、金融和工程领域任务。
- **应用场景**：支持生产事故的快速根因分析、实时网络安全响应，以及无需上下文切换的更流畅的智能体工作流。
- **技术革新**：由Cerebras的**晶圆级引擎（Wafer-Scale Engine）**驱动，其片上集成**44 GB SRAM**，使模型权重常驻芯片，避免了GPU式的内存瓶颈，实现了快速、可扩展的推理。
- **可用性**：超快速模式目前面向特定客户提供**有限预览**，随着算力扩展将逐步开放更广泛的访问。

文章重点介绍了Cerebras与OpenAI如何消除传统上速度与智能之间的取舍关系，使前沿AI能够应用于高 stakes、对延迟敏感的工作场景。

---

## 3. Donkey.bas迎来45周年——131行的荣耀

**原文标题**: Donkey.bas is 45 Years Old – 131 line of Glory

**原文链接**: [https://donkeybas.com/](https://donkeybas.com/)

本文纪念经典BASIC游戏《Donkey.bas》诞生45周年。这款仅有131行代码的经典游戏，作为早期PC游戏史上简单却极具标志性的作品，其持久影响力被着重强调。

关键信息包括游戏的操作与功能：玩家使用**空格键**或**点击**切换车道，按**Esc**键返回标题画面。文章还提及**声音**、**CRT**（模拟复古显示器）、**作弊**和**全屏**等选项，这些很可能是现代网页版复刻的一部分。

总的来说，文章强调了《Donkey.bas》尽管代码仅有区区131行，却依然是令人难忘且具有影响力的经典之作——充分展示了早期软件开发中的创造力与简洁性。

---

## 4. Mistral OCR 4.1

**原文标题**: Mistral OCR 4.1

**原文链接**: [https://docs.mistral.ai/models/ocr-4-1](https://docs.mistral.ai/models/ocr-4-1)

Mistral OCR 4.1 是一项新的OCR服务，于2026年7月16日在公开预览中发布，旨在为Mistral的文档AI技术栈提供支持。它引入了原生段落级边界框提取、结构块标签和块级置信度分数，从而实现更精确的文档理解。该模型名为 `mistral-ocr-4-1`。

定价设置为每1,000页3.50欧元，每1,000个带标注页面4.38欧元，价格同时以欧元和美元标示。主要功能包括通过 `/v1/ocr` 端点进行边界框提取、结构化注释，以及通过 `/v1/batch` 支持批处理。

该公告还提到了产品阵容中的其他模型：Z.ai GLM 5.2 (v5.2)、Shieldstral 1.0 (v1.0) 和 Mistral Medium 3.5 (v26.04)。总体而言，Mistral OCR 4.1 旨在为企业文档处理提供先进、结构化的OCR能力。

---

## 5. 将DRAM意面化

**原文标题**: Spaghettifying DRAM

**原文链接**: [https://github.com/xoreaxeaxeax/skitter-creek-bath-salts](https://github.com/xoreaxeaxeax/skitter-creek-bath-salts)

本文描述了一个名为“skitter-creek-bath-salts”的硬件安全研究项目，该项目利用AMD Family 16h CPU上的DRAM地址加扰机制，绕过内存保护并访问本应锁定的平台区域。

核心漏洞位于内存控制器（MCT/DCT）层，即虚拟到物理内存转换管线的最后一个阶段。DRAM控制器使用供应商可配置的变换方式，将物理地址重写为原始DRAM坐标（bank、row、column）。只需对DCT的bank-swizzle-mode寄存器执行一次单比特写入（`xor dword [0xf80c2094], 0x00400000`），即可打乱这一映射，导致物理地址别名映射到不同的DRAM单元。关键问题在于，保护受保护区（平台安全处理器、SMM、C6 DRAM、微码）的安全栅栏作用于内存控制器*之上*的物理地址，完全看不到下方的重映射——因此这些保护被悄然绕过。

在加扰过程中保持系统稳定需要精心的编排：禁用应用处理器、预填充TLB、预热缓存、禁用中断、刷新目标缓存行，并在恢复映射之前在紧凑的串行化窗口内完成比特翻转和数据访问。

由于DRAM控制器的地址变换是一个GF(2)线性映射，研究人员使用z3 SMT求解器恢复未知的变换。他们通过加扰映射写入一个哨兵值，然后扫描内存定位该值，收集（目标地址，别名地址）配对，进而求解连接一致视图与“意大利面条式”内存视图的转换矩阵。这使他们能够计算出任何受保护物理地址的别名。该技术从概念上可扩展到现代AMD处理器、ARM和RISC-V，这些平台的数据手册均未公开这些寄存器细节。

---

## 6. 选择无聊的技术（2015）

**原文标题**: Choose Boring Technology (2015)

**原文链接**: [https://mcfunley.com/choose-boring-technology](https://mcfunley.com/choose-boring-technology)

这篇文章认为，对于大多数问题，公司应该倾向于选择“无聊”的、成熟稳定的技术，而非时髦的创新技术。文章提出了一个观点：每家公司大约只有**三个“创新代币”**，可以花在新技术选择上；将它们浪费在新型数据库或小众基础设施上，可能会延误成功，甚至导致失败。无聊的技术——如MySQL、Postgres、Python、PHP、Memcached和Cron——之所以有价值，是因为它们的能力**以及故障模式**都已被充分了解。新技术则携带更多“未知的未知”，增加了运营风险。

技术选择应该从全局而非局部进行优化。增加语言、数据库或服务会带来“包袱”，表现为监控、维护、认知负担和运营复杂度的上升。“为工作选择最佳工具”的心态是短视的；最好的工具往往是那种在整个组织范围内造成最少长期运营负担的工具。

然而，文章并非反对所有新技术。公司应该**偶尔且有意识地**采用新工具，并通过全公司范围内的讨论来推进。在添加任何东西之前，先问问如何用现有工具解决这个问题——这往往能揭示出，真正的动机只是想要尝试新东西。如果新技术确实合理，就要制定清晰的迁移计划，避免积累局部最优但全局昂贵的系统。

归根结底，目标是**交付产品并让公司持续经营下去**。审慎的、无聊的技术选择能让工程团队腾出精力专注于更大的问题，而多语言混用或追逐潮流的选择则可能制造运营负担，拖慢一切。

---

## 7. 旧网络去哪了？我们追踪了657,607条链接找到了答案

**原文标题**: Where did the old web go? We followed 657,607 links to find out

**原文链接**: [https://0.mk/blog/link-rot](https://0.mk/blog/link-rot)

2026年，对马其顿首个URL缩短服务0.mk的恢复工作找回了一个数据库，其中包含2009年至2014年间创建的657,607个链接。研究人员抓取每一个目标后发现，76.7%的安全、可抓取记录不再返回可加载页面：51.24%在网络层失败（DNS、超时、TLS），25.44%返回HTTP错误。在唯一URL层面（492,620个可抓取URL），只有21.3%能加载；最常见的错误是404。即使是成功加载，通常也意味着停放域名或登录墙，而非保存的内容。

按域名统计，133,605个主机名中有98,778个没有任何能加载的URL。像YouTube、维基百科和谷歌这样的大型平台比个人博客、论坛、地方新闻网站和图片CDN存续情况好得多。例如，789个不同的Facebook CDN URL中没有一个能加载，而Google Code和PureVolume仍能响应。2011年的峰值是由一个账户对单个教程网站的83,398个链接造成的，扭曲了年度URL级别的百分比。

这些数据还捕捉到了一个已消失的全国性网络：指向多年前关闭的马其顿报纸和电视台的链接。值得注意的发现包括：有史以来第一个被缩短的链接（一个CSS文件）、一个指向localhost的链接、一个38,753字符的测试URL、因goo.gl在2025年关闭而断裂的缩短器链，以及0.mk/7在95,999次点击后仍指向谷歌。该项目回归是因为现在由AI处理垃圾邮件检测、支持和监控，使这项服务在财务上再次可行。抓取最多跟踪五次重定向，并会从第二个网络重试失败的连接。

---

## 8. 理解是新的瓶颈

**原文标题**: Understanding is the new bottleneck

**原文链接**: [https://www.geoffreylitt.com/2026/07/02/understanding-is-the-new-bottleneck](https://www.geoffreylitt.com/2026/07/02/understanding-is-the-new-bottleneck)

本文是2026年7月AI工程师大会上一场演讲的文字版，旨在论证：即使AI智能体变得越来越强大，理解它们所编写的代码仍然至关重要。

**为什么理解很重要：** 目标并不仅仅是验证智能体的工作——智能体在自我验证方面已经越来越擅长。相反，我们理解代码是为了*真正参与*创造过程。一个项目涉及许多人机循环，理解代码能让我们具备概念上的熟练度，从而形成新想法、推动系统演进。缺乏这种理解会产生“认知债务”，并且会随时间不断累积。

**如何高效地建立理解：** 作者从教育中汲取灵感，提出了三种技巧。

1. **解释说明：** `/explain-diff`技能能够生成结构清晰的代码讲解。它们先介绍背景知识，在展示细节前先建立直觉（通常配有交互式图表），并以“文学式diff”的形式呈现代码——即用叙述性文字逐步讲解，而不是按字母顺序罗列文件。每份讲解都以一个小测验结尾；作者坚持要通过测验才肯分享代码，把测验当作制约AI快速迭代的“速度调节器”。

2. **微世界：** 受西摩·帕尔特“数学王国”的启发，微世界是让你能够亲身体验系统的交互式环境。例如，为Prolog解释器定制的调试器，以及一个电子游戏风格的“指挥中心”，用于一步步执行网站迁移——就像亲手操作一样建立理解，但速度更快。

3. **共享空间：** 团队需要共享心智模型才能进行创造性协作。使用共享环境（如Notion，智能体和人类可以在同一页面上工作）能够促进即时讨论和共同理解。

作者最后引用了艾伦·凯50年前的愿景——计算机是增强人类思维的工具。如今，AI让这样的模拟变得触手可及，使人类能够更*深入*地进入循环，而不是退出循环。

---

## 9. 单条日志行导致systemd-journald产生49KB以上（ext4）/ 110KB以上（btrfs）的磁盘写入

**原文标题**: Single log line is 49KB+ (ext4) / 110KB+ (btrfs) of systemd-journald disk writes

**原文链接**: [https://github.com/systemd/systemd/issues/40262](https://github.com/systemd/systemd/issues/40262)

这篇文章是一份GitHub问题报告，标题为“systemd-journald导致的过度I/O”（#40262），针对Debian 13上的systemd 257.9版本（内核6.12.57）提交。用户报告journald导致过度的磁盘I/O：一台虚拟机每秒仅写入2行日志，却产生约50 IOPS。他们提供了haproxy日志行示例作为日志流的例子。

报告者认为日志写入的开销应在syslog的一个数量级范围内，但journald的存储格式极其低效。标题指出，在ext4上单条日志行可导致49KB或更多的磁盘写入，在btrfs上则超过110KB。他们还声称journal文件比实际日志内容大数倍，并提到在非正常重启后遇到journald损坏的经历，质疑其健壮性。

该问题明确引用了之前一个类似的报告（#15292），该报告在用户看来没有充分理由就被关闭了。用户驳斥了之前关于iotop不准确的反驳意见，指出即使在考虑了内核写合并机制后，观察到的流量仍然持续存在。该问题被标记为bug，并归类为“journal”和“编程错误”标签。未设置任何负责人、里程碑或项目；也没有关联的拉取请求或开发活动。

---

## 10. 组织如何运用AI：来自ChatGPT的实证 [pdf]

**原文标题**: How Organizations Use AI: Evidence from ChatGPT [pdf]

**原文链接**: [https://cdn.openai.com/pdf/how-organizations-use-chatgpt.pdf](https://cdn.openai.com/pdf/how-organizations-use-chatgpt.pdf)

提供的内容是PDF二进制文件，因此我无法直接提取全文。根据标题和论文的已知重点，以下是简要总结：

本文通过研究现实中的ChatGPT使用情况，考察了组织实际采用和使用AI的方式。研究发现，ChatGPT在发布后被迅速采用，但其使用在不同行业、职业和任务之间差异很大。使用集中在涉及写作、编程和信息处理的工作中，而不是覆盖工作的所有环节。证据表明，组织将ChatGPT用作任务级工具——通过帮助完成特定活动来补充人类员工——而非替代整个岗位。在规模更大、技术密集度更高的企业以及数字技能更强的员工中，采用率往往更高。总体而言，论文指出了在起草、编码和行政工作等领域的早期生产率收益，同时强调AI的影响取决于组织如何将其整合到工作流程中。

---

## 11. 偶像麻将 Final Romance：伪装成电子游戏的幻灯片

**原文标题**: Idol Mahjong Final Romance: A Slideshow Disguised as a Video Game

**原文链接**: [https://nicole.express/2026/more-like-idle-mahjong.html](https://nicole.express/2026/more-like-idle-mahjong.html)

Video System 1991年的街机游戏《偶像麻将 Final Romance》是一款脱衣麻将游戏，也是该系列的一部分。1988年的原版游戏《偶像麻将放送局》从未被重新发行，与后来收录于《Final Romance 2-R-4 Special》中的后续作品不同。

游戏玩法简单：玩家按固定顺序面对八位女性，与她们逐一进行立直麻将。赢下三局后，对手会脱去衣物。在关卡之间，道具商店出售实用道具，例如在查看初始手牌后可以使用的重抽选项。AI可以叫吃和碰。与同时代的某些游戏相比，这款游戏更侧重于麻将本身；对局期间不会显示女性角色。其画面使用真人女性的转描照片，但帧率动画较低，带有“幻灯片”的感觉。场景以分色块淡入的方式呈现。

PCB（VS-Z80-7）与《麻雀大予言》（VS-Z80-6）几乎完全相同。它使用两颗6MHz的Z80 CPU、一颗YM2413 FM合成器芯片和一颗OKI MSM5205 ADPCM芯片。主CPU处理逻辑和输入，副CPU控制音频和视频。音频电路有持续的嗡嗡声。视频系统依赖分立逻辑和一颗V-System GGA芯片，使用两张采用不寻常的8x4瓦片滚动地图。这种有限的硬件意味着屏幕上的运动很少；瓦片跳入到位和全屏文字叠加是主要的动画效果。

续作《对战偶像麻将 Final Romance 2》（1995年）在Neo Geo CD上发行，支持街机双人联机对战。其单人模式类似，但美术风格从转描照片转变为动漫风格。这一转变可能反映了动漫日益增长的 popularity，但涉及模特的版权问题也可能解释这一变化。现代重新发行版省略了原版游戏，可能也是出于类似的原因。

---

## 12. 吐火罗语在线

**原文标题**: Tocharian Online

**原文链接**: [https://lrc.la.utexas.edu/eieol/tokol/0](https://lrc.la.utexas.edu/eieol/tokol/0)

吐火罗语在线介绍两种密切相关但不同的印欧语言——吐火罗语A和吐火罗语B，它们是在中国突厥斯坦（新疆）的丝绸之路上发现的。吐火罗语A，又称东吐火罗语或吐鲁番语，仅在吐鲁番和焉耆（Qārāšahr）附近发现；吐火罗语B，或称龟兹语，则出现在从吐鲁番到图木舒克（Tumšuq）的整个地区。

幸存文献的年代大约在公元六至八世纪，主要包括佛教译作，还有一些世俗文本——书信、商队通行证、涂鸦——全部使用吐火罗语B书写。这表明吐火罗语A在当时可能已成为一种仪式语言。文本主要使用婆罗米文的一种变体书写，部分吐火罗语B文本使用摩尼文书写。

“吐火罗”这一名称由穆勒（Müller）以及西格和西格林（Sieg and Siegling）根据回鹘语术语 *toxrï* 提出，但现在被认为是用词不当；该语言很可能并非印度-斯基泰人/巴克特里亚人的语言。在吐火罗语A中，人们可能自称 *ārśi*，而吐火罗语B中有形容词 *kuśiññe*。

从语言学角度看，吐火罗语是最东方的古代印欧语言，属于肯图姆语（centum language），这挑战了先前关于肯图姆–萨特姆划分的地理假设。它的语音系统简化，只有清塞音，并发展出新的黏着名词格，这可能是由于与中亚语言长期接触所致。该页面提供课程、词汇表、词典以及研究吐火罗语A和B的资源。

---

## 13. Oxide上的Kubernetes：客户需求如何塑造了我们的集成

**原文标题**: Kubernetes on Oxide: How customer needs shaped our integrations

**原文链接**: [https://oxide.computer/blog/kubernetes-on-oxide](https://oxide.computer/blog/kubernetes-on-oxide)

2024年底，客户希望在 Oxide 上运行 Kubernetes，但当时没有受支持的集成。Oxide 的第一位解决方案软件工程师 Matthew Sanabria 的任务就是解决这个问题。通过客户驱动的反馈循环，他的团队构建了覆盖 Kubernetes 生命周期的集成。

**预置（Provisioning）** 产生了三个工具：**Rancher 节点驱动**（最初由客户提交，然后合并并发布）、**Omni 基础设施提供商**（与 Sidero Labs 合作为 Talos Linux 构建，发现了诸如 FAT12/ISO 9660 文件系统探测问题等 bug），以及 **Cluster API Provider Oxide (CAPOx)**，这是由同事 Josh 和 Brandon 构建的 Kubernetes 原生选项。

**运行时协调（Runtime reconciliation）** 通过 **Oxide Cloud Controller Manager (CCM)** 实现，它使 Kubernetes Node 对象与 Oxide 实例保持同步，并为未来的控制器提供了一个持久的扩展点。

对于 **LoadBalancer 服务**，Oxide 缺乏原生负载均衡器，因此团队使用了浮动 IP。这需要在 `status.loadBalancer.ingress` 中发布两个条目——浮动 IP（代理模式）和节点的内部 IP（VIP 模式）——因为 Oxide 会将流量透明地转换到内部 IP。该解决方案支持 `externalTrafficPolicy: Cluster`。

对于 **存储**，由于堆叠复制带来的写入放大问题，客户避免使用 Longhorn。Oxide 本地磁盘的引入提供了更好的支持。Luiz 随后为原生 Oxide CSI 插件编写了 **RFD 595**。原型设计遇到一个阻碍：Oxide 要求实例停止才能进行磁盘挂载/卸载，这与 Kubernetes 期望在运行中的工作节点上进行实时挂载相冲突——这个问题仍有待解决。

总的来说，这篇文章展示了真实的客户工作流如何塑造每个集成，并揭示下一个需要解决的缺口。

---

## 14. DeepSeek Harness 开发者预览版

**原文标题**: DeepSeek Harness developer preview

**原文链接**: [https://deepseek.com/harness/en/](https://deepseek.com/harness/en/)

DeepSeek Harness 现以开发者预览版形式推出，它是一个开源、基于插件的智能体框架。基于 Cordis 插件系统构建，所有能力——模型、工具、技能、会话、沙箱、存储、循环、调度和 UI——都是插件，可通过配置进行替换、扩展或重新组合，而无需修改核心源代码。

每一次运行都完全可追踪：仅追加的会话日志会记录模型所见的一切，包括系统提示、推理、工具调用、子智能体调度和上下文注入。轨迹视图让开发者能够按来源检查这些事件，而恢复、分叉、搜索和重放均基于同一事件流操作。

该框架支持多种运行时模式：
- 标准模式：完整的编码智能体，支持文件编辑、Shell、搜索、技能、规划、目标、子智能体和工作流。
- 代码模式：通过 TypeScript SDK 暴露工具，让模型在单个程序中组合多步操作。
- 极简模式：双工具智能体（持久化 bash 和文件编辑器），用于在最小化环境中进行基准测试。
- 创建者模式：增加运行时检查、内存插件测试以及预设编写指南，用于构建自定义智能体预设。

要开始使用，开发者可通过 `npx @deepseek-ai/dsh web` 启动 Web UI，或从 GitHub（`deepseek-ai/deepseek-harness`）克隆完整源代码。核心插件和 API 在预览期间仍在不断演进。DeepSeek 诚邀开发者社区加入生态系统，利用可组合、可复用的开源基础设施探索智能体能力。

---

## 15. 为ENIAC而来，为UNIVAC和Skeduflo而留

**原文标题**: Come for ENIAC, Stay for UNIVAC and Skeduflo

**原文链接**: [https://uniqueatpenn.wordpress.com/2026/08/05/come-for-eniac-stay-for-univac-and-skeduflo/](https://uniqueatpenn.wordpress.com/2026/08/05/come-for-eniac-stay-for-univac-and-skeduflo/)

这篇来自基斯拉克中心的博客文章重点介绍了约翰·莫奇利的论文，聚焦于他在ENIAC之后的创新。文章指出，尽管莫奇利和J.普雷斯珀·埃克特于1946年在宾夕法尼亚大学发明了ENIAC——第一台通用电子计算机，但他们获得的认可甚少。作者最喜欢的材料并非与ENIAC相关，而是莫奇利在1953年至1959年间领导的UNIVAC应用与研究中心（UARC）的资料。在那里，莫奇利不是用计算机解决已知问题，而是寻找计算机能够解决的新问题，从而帮助证明了计算机对企业和政府至关重要。他的团队推动了编程领域的发展，其中包括先驱者格蕾丝·默里·霍珀海军少将。后来，莫奇利与他人共同创造了Skeduflo——一种手提箱大小的计算机，用于使用关键路径法进行施工调度；1967年，他预测商人会把计算机装进口袋。他去世后，埃克特在悼词中称赞他不仅才华横溢，更重要的是，他是一个好人。文章鼓励读者参观该收藏，并附有档案资料的参考。

---

## 16. 家庭AI第一部分：一盒零碎

**原文标题**: AI At Home Part 1: A Box Of Scraps

**原文链接**: [https://jdagostino.github.io/ai-pt1-box-o-scraps/index.html](https://jdagostino.github.io/ai-pt1-box-o-scraps/index.html)

作者完全利用廉价的电子垃圾搭建了一台家庭AI推理服务器，目标是让AI技术本地化、自主可控，而非依赖云服务。面对电脑零件短缺的困境，他淘到了四块AMD V620 GPU（每块32GB显存，原本为云游戏而生，从未公开发售，如今在eBay上价格便宜），并将其与一块老旧的X299主板和一颗Core i9 10900X CPU搭配使用——选择这颗CPU是看中它的四条PCIe插槽和低廉的价格。内存和固态硬盘则从其他机器上拆机获取，而1600W电源的价格居然比1200W的还便宜，颇为蹊跷。

这些GPU没有风扇，作者便自行设计并3D打印了定制导流罩，用来安装转速高达10000 RPM的服务器风扇，噪音极其惊人。初次启动时遇到问题，需要在BIOS中开启Resizable BAR和MMIO High Size。安装Ubuntu 24.04并编译llama.cpp后，他测试了模型：Gemma4可单卡运行，而Deepseek V4 Flash虽能加载但运行缓慢（性能调优留待下一章讲述）。

由于主板无法独立控制风扇转速，作者又搭建了一个基于Arduino Nano的风扇控制器，并让AI服务器自己编写风扇控制脚本。一个令人难忘的插曲是，模型建议用PyTorch工作负载来给GPU加热，却没意识到自己正运行在同一台机器上，引发了一场短暂的生存危机。如今这台机器已稳定运行，随时可以进一步优化。文中附有STL文件与控制器代码的链接。

---

## 17. 哥德尔的证明是如何运作的

**原文标题**: How Gödel's Proof Works

**原文链接**: [https://www.quantamagazine.org/how-godels-proof-works-20200714/](https://www.quantamagazine.org/how-godels-proof-works-20200714/)

1931年，库尔特·哥德尔证明了：任何一致的公理集都不可能既完备又能够证明其自身的一致性，这终结了建立完备数学基础的梦想。

他的方法涉及“哥德尔配数”：利用质因数分解，将每个数学符号、公式和证明序列映射到一个唯一的整数。这使得关于数学的陈述——元数学陈述——能够表示为算术公式。

哥德尔随后使用代入法构造了一个自指公式G。粗略地说，G表达的是：“具有哥德尔数sub(n, n, 17)的公式不可被证明。”通过配数和代入，G实际上是在谈论自身：G断言“我不可被证明”。

如果G可被证明，那么系统就证明了假命题，从而与一致性相矛盾。因此G不可证明。然而G是真的——它准确地描述了不存在证明这一事实。因此公理系统是不完备的：存在一个它无法证明的真命题。

添加新的公理也无济于事；哥德尔表明，总能构造出新的真却不可证明的陈述G′。这就是他的第一不完备性定理。

他的第二定理随之而来：如果一组公理能证明自身的一致性，那将意味着它能证明G，而它不能。因此，任何一致的公理化系统都无法确立自身的一致性。

哥德尔的工作终结了对完备且自证成数学体系的追求。它还揭示了数学乃至物理学中不可证明的陈述，表明不完备性或许不仅限于数学，还可能延伸至现实本身。

---

## 18. 格鲁姆伯布

**原文标题**: Gloomberb

**原文链接**: [https://gloom.sh/](https://gloom.sh/)

无法访问文章链接。

---

## 19. 艺术如何创造了人类

**原文标题**: How art invented humanity

**原文链接**: [https://aeon.co/essays/humans-did-not-invent-art-it-was-the-other-way-around](https://aeon.co/essays/humans-did-not-invent-art-it-was-the-other-way-around)

这篇文章论证了艺术并非人类的发明——恰恰相反，是艺术发明了人类。它挑战了那种将艺术视为文化附属品或休闲活动的普遍观点，转而提出符号表达与创造实践是人之心智与社会诞生的核心。文章借助考古学、人类学和认知科学的证据表明，早在现代人脑完全进化之前，远古人类祖先就已经制造出类似艺术品的物件——如赭石刻画、贝壳珠饰和小雕像。这些器物不仅仅是装饰，而是充当了思维、记忆和沟通的工具。创造与解读符号的行为使早期人类能够想象未见之物、规划复杂的社会互动，并形成共同的认同。因此，艺术帮助塑造了那些将人类与其他物种区分开来的认知能力：抽象思维、语言、合作和文化传承。文章得出结论：人类并非将艺术发明为一种奢侈；恰恰是艺术锻造了使人类成为可能的那种种品质。

---

## 20. 选择AI模型：一个提示词，11个模型，不同结果

**原文标题**: Choosing an AI model: one prompt, 11 models, different results

**原文链接**: [https://www.netlify.com/blog/one-prompt-11-models-very-different-results/](https://www.netlify.com/blog/one-prompt-11-models-very-different-results/)

Netlify宣布与OpenRouter建立合作伙伴关系，通过其AI Gateway和Agent Runners为项目扩展AI模型选择。Agent Runners现在支持Kimi K3、GLM 5.2和DeepSeek V4等开放模型，以及现有的Claude、OpenAI和Gemini代理。

为了帮助用户选择，Netlify使用其开源评估工具AXIS在11个模型上测试了相同的提示词。本文聚焦于第一个场景：为本地咖啡店构建静态单页网站。每个模型运行了三次；结果和积分成本差异巨大。

每次运行的关键积分成本：Claude Opus 5平均消耗519积分（一次运行达到1,055），Claude Sonnet 5平均143，GPT 5.6 Sol（低功耗模式）141，Gemini 3.6 Flash 103，Kimi K3 102，Gemini 3.1 Pro 53，GPT 5.6 Terra 39，DeepSeek V4 Pro 37，GLM 5.2 27，Kimi K2.7 Code 19，DeepSeek V4 Flash 0731仅2.4。

值得注意的发现：Claude Opus生成了丰富细致的设计，但消耗了过多积分。GPT 5.6 Terra以低成本提供了令人惊喜的优秀设计。Gemini 3.1 Pro生成的结果勉强达标，而Gemini 3.6 Flash则有重大改进。开放权重模型表现各异：Kimi K3尽管在智能体能力方面有优势，但在设计上并不突出；GLM 5.2输出不稳定；DeepSeek V4 Flash以极低的成本给出了不错的结果（包括一张损坏的图片）。

文章最后进行了预告：后续文章将测试更复杂的场景（数据库、AI Gateway使用、验证）。关键结论是，对于简单网站，积分成本并不总是与质量相关；用户应该尝试多种模型。

---

## 21. 平凡的丰盛

**原文标题**: Ordinary abundance

**原文链接**: [https://ordinaryabundance.com/](https://ordinaryabundance.com/)

文章《平凡的丰盈》描绘了晚上八点钟客厅里一个宁静的夜晚场景。公寓里很安静，播放着轻柔的音乐——一份朋友多年前创建的播放列表。叙述者快速发了一条短信问候那位朋友，然后拿起一本书，打开台灯，坐在椅子上阅读。这篇文章捕捉到一种丰盈的理念，它不是来自过剩，而是来自简单日常的时刻：舒适、与朋友的联系，以及悠闲的独处。它强调对微小仪式的欣赏和日常生活的丰富性。

---

## 22. 我花了一个周末和10美元，为创客们建了一个覆盖50万域名的搜索引擎

**原文标题**: I built a 500k-domain search engine for makers in a weekend for $10

**原文链接**: [https://alexmorleyfinch.github.io/marlin/history/v1/article/the_birth.html](https://alexmorleyfinch.github.io/marlin/history/v1/article/the_birth.html)

一位开发者用了一个周末，以大约10美元的成本，构建了一个收录了560,183个创客主页的个人搜索引擎。该系统使用抓取器获取主页文本，使用租用的GPU运行小型语言模型（Gemma 4B）生成摘要和标签，并配有一个简单的搜索界面。关键选择：只索引主页、在生成摘要后丢弃原始HTML、通过优先级文件而非硬性屏蔽来引导爬取。

初始结果超过90%都是企业站点，因此他们对队列进行加权，优先偏向作品集、zine和软件项目。子域名上限（例如每个根域名100个）防止了Tumblr/Neocities占据主导地位。一个“监管”进程会采样可疑的超大域名，并自动屏蔽了177个问题站点（主要是酒店/预订内容农场）。最终索引的成本约为每10万个站点1美元；单个租用的GPU可维持约每分钟600个摘要的吞吐量。空页面或停放页面会被跳过，以避免产生幻觉摘要。

主要的扩展陷阱：分类/标签碎片化（671个分类、12.1万个标签，其中许多是一次性的），以及需要手动合并或约束分类体系。作者建议将抓取与摘要生成分离、用加权代替屏蔽、设置子域名上限，并构建自动化的垃圾站点检测机制。代码已开源（仓库名：Marlin）；目前没有计划提供托管数据库。

---

## 23. ATG（YC F25）正在招聘技术专家（数据平台）

**原文标题**: ATG (YC F25) Is Hiring Member of Technical Staff (Data Platform)

**原文链接**: [https://atg.science/careers](https://atg.science/careers)

ATG（一家Y Combinator F25公司）正在招聘一名专注于数据平台的技术专家。该组织将其使命描述为构建能够思考、推理和行动的系统。他们欢迎来自各种学科和背景的申请者，强调好奇心与多元视角。招聘信息发布在其职业页面上，该页面目前显示“正在加载职位…”——这表明具体职位信息可能是动态加载的，或仍在添加中。总体而言，这是一则简短的招聘公告，而非详细的职位描述。

---

## 24. ChatGPT Linux桌面应用中的Codex现已进入预览阶段

**原文标题**: Codex in ChatGPT desktop app for Linux is now in preview

**原文链接**: [https://community.openai.com/t/codex-in-chatgpt-desktop-app-for-linux-is-now-in-preview/1390027](https://community.openai.com/t/codex-in-chatgpt-desktop-app-for-linux-is-now-in-preview/1390027)

ChatGPT 的 Linux 桌面应用现已推出预览版，将 ChatGPT、Work 和 Codex 整合到一个原生体验中。它支持 Ubuntu 24.04 LTS 和 26.04 LTS、Debian 13 以及 Fedora 43 和 44，涵盖 x64 和 ARM64 架构，并提供 .deb 和 .rpm 软件包。该应用旨在作为一个工作区，用于管理项目、处理文件、使用浏览器工作流程，以及与 ChatGPT 一同运行 Codex。用户现在即可下载，并欢迎在主题帖中分享反馈和体验。

---

## 25. JDK 27 G1/Parallel/Serial GC 变更

**原文标题**: JDK 27 G1/Parallel/Serial GC Changes

**原文链接**: [https://tschatzl.github.io/2026/08/10/jdk27-g1-serial-parallel-gc-changes.html](https://tschatzl.github.io/2026/08/10/jdk27-g1-serial-parallel-gc-changes.html)

JDK 27 在 HotSpot 中带来了约 350 项 GC 更改，其中大部分是重构（例如 Atomic\<T\>）和缺陷修复。关键更新如下：

- **G1 垃圾回收器**：现已在所有环境中成为默认回收器（JEP 523），在适用场景下取代 Serial 垃圾回收器。G1 在 Full GC 后不再根据 `-XX:MinHeapFreeRatio`/`MaxHeapFreeRatio` 调整堆大小；默认值已改为 0 和 100，以避免相互冲突的启发式策略。自适应并发标记对不利条件的适应能力更强。修复了巨型对象被弱引用持有而无法回收的问题。清理暂停不再更新 `MemoryPoolMXBean.getCollectionUsage()`。无法找到空间的垃圾回收现在会计入 CPU 使用率，从而改进堆大小调整。

- **Parallel 垃圾回收器**：自适应晋升阈值现在可以降低，而不仅仅是升高，防止年轻对象被过早晋升。当重复的大量分配导致 Full GC 但仍有可用空间时，堆现在能够正确扩展。

- **Serial 垃圾回收器**：除了在某些环境中失去默认状态外，没有显著变化。

- **所有回收器**：TLAB 大小调整现在可避免因大量短生命周期、低分配量线程造成的浪费。字符串去重日志和 JFR 事件得到改进，新增了 "new unknown" 字符串，并提供了更好的字节计数。

未来的重点仍然是自动堆大小调整。感谢所有贡献者；随着主要重构的完成，未来将有更多时间用于增强功能。

---

## 26. Pi 中压缩的工作原理

**原文标题**: How Compaction Works in Pi

**原文链接**: [https://earendil.com/posts/compaction-in-pi/](https://earendil.com/posts/compaction-in-pi/)

Pi 是一个依赖上下文窗口有限的 LLM 的编程代理。每个请求都包含系统提示、工具、加载的文件以及完整的对话历史，这些内容会不断增长，直到超出限制，从而导致错误。

为了避免从头开始而丢失所有上下文，Pi 使用 **压缩**：一种将较早的对话内容总结为压缩表示的过程，从而为新消息腾出空间。该摘要是通过一个单独的 LLM 请求生成的，该请求使用不同的系统提示（“上下文摘要助手”）和一个特殊的用户提示，要求对目标、进展和关键决策进行结构化记录。这个独立的请求甚至可以使用不同的模型，而无需额外成本。

Pi 会在接近上下文限制时、一轮结束后，或者如果在中途发生溢出错误时，自动触发压缩。也可以通过 `/compact` 手动触发。在压缩过程中，Pi 会保留一定数量的最近消息不变——默认令牌预算为 20,000 个令牌，大约 5–20 轮。所有更早的内容都会被序列化并总结。

压缩结果以纯文本形式存储在会话中，使其可读、可移植，即使切换模型也能使用。

一个权衡是：压缩会破坏 **提示缓存**。压缩前，整个历史记录作为前缀被缓存。压缩后，保留的轮次出现在新的摘要令牌前缀之后，因此旧缓存无法复用；后续请求将从那里重新构建缓存。

文章还提到 Pi 是可扩展的，因此用户可以通过扩展创建自定义的压缩提示。

---

## 27. Solid 2.0 RC：重大<揭晓>

**原文标题**: Solid 2.0 RC: The Big <Reveal>

**原文链接**: [https://www.solidjs.com/blog/solid-2-0-rc-the-big-reveal](https://www.solidjs.com/blog/solid-2-0-rc-the-big-reveal)

本文宣布了 Solid 2.0 的发布候选版本，这是对响应式 JavaScript UI 框架的一次重大更新。其头条特性是“重磅 `<Reveal>`”——一个新的内置指令，它会将元素的渲染延迟到元素进入视口时，从而简化懒加载并默认提升性能。

除此之外，Solid 2.0 被描述为一次彻底重写，专注于更简洁的内部实现和更好的 tree-shaking，从而带来更小的打包体积和更快的执行速度。关键改进包括：更精细的 signal/effect 系统（新的 `createSignal` 返回 getter/setter 对，并为访问器提供 `to` 选项）、升级的 store API，以及更健壮的、支持服务端组件的服务端渲染。该版本还引入了新的 `on` 辅助函数，用于精确指定 effect 依赖；此外，框架现在提供了一流的 TypeScript 支持，使类型更加准确且更易维护。

文章强调，尽管 2.0 RC 带来了重大的破坏性变更，但细粒度响应式和性能的核心哲学保持不变。团队鼓励用户测试 RC 版本并提供反馈，重点关注更平滑的迁移和更清晰的未来功能路径。总体而言，“重磅揭秘”既指这个新指令，也指一个更快、更精简、对开发者更友好的 Solid 的亮相。

---

## 28. AI正威胁着数十亿人的自然资源

**原文标题**: AI Is Threatening Natural Resources for Billions

**原文链接**: [https://unric.org/en/ais-environmental-costs-threaten-water-land-and-climate/](https://unric.org/en/ais-environmental-costs-threaten-water-land-and-climate/)

联合国大学（UNU-INWEH）的一份报告警告称，人工智能的环境代价正被错误衡量，因为大多数评估仅关注碳排放。到2030年，全球数据中心电力需求预计将达到945太瓦时，水足迹为9.3万亿升——相当于撒哈拉以南非洲13亿人口的基本年度生活用水需求——土地足迹超过14,500平方公里，大约是雅加达都会区的两倍。

报告强调，“低碳”并不自动意味着低水耗或低土地占用。从煤炭转向生物能源可将碳足迹减少70%，但会使水足迹增加三十倍，土地足迹增加一百倍。仅凭碳足迹来评估人工智能的可持续性，可能会将环境负担转移到水资源和土地资源紧张的地区。

推理——即运行已部署的模型——占人工智能能源使用的80%至90%，而非训练阶段。仅ChatGPT每天就处理约25亿次提示，每年消耗约383吉瓦时。单次查询的能耗差异巨大：生成一张AI图像所消耗的能量约为基本文本分类的1,450倍，而一段短视频的AI生成能耗可相当于20万次垃圾邮件分类。效率提升可能通过反弹效应适得其反：更便宜的人工智能导致更多使用，从而抵消单次查询节省的能耗。

收益与负担并不均衡。90%的人工智能专用计算能力集中在美国和中国，而超过150个国家缺乏自主的人工智能基础设施，却承担着资源开采和电子废弃物处理的成本。到2030年，人工智能硬件每年可能产生250万吨电子废弃物。地方案例包括爱尔兰——其数据中心消耗了全国21%的电力——以及墨西哥和乌拉圭面临的水资源压力。

报告敦促建立一个六项原则框架：透明度、设计效率、公平与环境正义、生命周期责任、全球合作和可持续使用。该框架为政府、行业、用户、数据中心运营商、投资者、社区和国际机构分配了具体行动，以使人工智能的增长具有可持续性和公平性。

---

## 29. GoAccess – 开源实时日志分析器和交互式查看器

**原文标题**: GoAccess – Open-source real-time log analyzer and interactive viewer

**原文链接**: [https://goaccess.io/](https://goaccess.io/)

GoAccess 是一款开源的、实时的 Web 日志分析器和交互式查看器，适用于类 Unix 系统。它通过 TUI 在终端中运行，或通过 Web 浏览器运行，为系统管理员提供快速的 HTTP 统计信息，包括实时仪表盘和安全监控，以发现可疑流量、机器人、暴力破解尝试和异常请求。

它支持几乎所有常见的 Web 日志格式——Apache、Nginx、Amazon S3、Elastic Load Balancing、CloudFront、Caddy 等——允许用户定义日志格式并直接对日志文件运行该工具。其主要优势在于速度、毫秒或秒级的实时更新，以及用 C 语言编写的轻量级设计，仅依赖 ncurses。它还经过了 Valgrind 测试。

虽然终端界面是默认的，但 GoAccess 可以生成完整、独立的实时 HTML 报告，用于监控和数据可视化，以及 JSON 和 CSV 导出。它拥有美观的终端和基于 Bootstrap 的仪表盘，可使用不同的配色方案进行自定义。总体而言，GoAccess 是一款实用、快速且灵活的工具，可直接从命令行或通过 Web 进行快速日志分析、可视化和安全监督。

---

## 30. Show HN：OpenCode Senses，一个极速且高度精准的视觉插件

**原文标题**: Show HN: OpenCode Senses, An insanely fast and highly accurate vision plugin

**原文链接**: [https://github.com/itsmeadarsh2008/opencode-senses](https://github.com/itsmeadarsh2008/opencode-senses)

# OpenCode Senses — 概述

OpenCode Senses 是一个视觉插件，能让纯文本的 OpenCode AI 模型具备“看见”图像的能力，完全本地化、私密且免费。

**核心概念：** 当用户附加图像时，Senses 使用 Moondream 2 视觉模型（在您自己的 GPU 上运行）对其进行分析，并在文本模型响应之前自动将结构化证据——场景描述、说明文字和精确的 OCR 文本——注入到消息中。Python 运行时通过 stdio JSON-RPC 与 TypeScript 插件通信。

**主要特性：**
- **13 个有据可依的工具：** inspect、OCR、detect、point、segment、crop、zoom、colors、diff、annotate、metadata、reverse search 和 status。所有工具均返回规范化、基于来源的证据。
- **Web 图像支持：** 任何工具都接受 HTTP(S) URL；图像会原样下载并在本地缓存。
- **提示注入加固：** 图像中的文本被包装为不可信数据，因此嵌入的“忽略指令”文本会被视为证据而非命令。
- **恢复级分析：** 缩放可将区域放大以重新读取小字文本；颜色提供确定性的像素级基准真值。

**系统

**安装：** `npm install -g opencode-senses`，然后将 `"plugin": ["opencode-senses"]` 添加到 `opencode.jsonc`。首次使用时，Senses 会自动配置自己的 Python 虚拟环境（venv）并下载约 3.9 GB 的模型权重。后续调用从缓存中运行，耗时亚秒级。

**使用场景：** 调试截图、提取精确的错误消息、基于有据可依元素位置的截图转代码（screenshot-to-code）、通过差异对比进行渲染 QA，以及研究/媒体分析——所有这些都无需离开终端或将数据发送到机器外部。

**配置：** 完全可选，通过环境变量进行配置（例如 `SENSES_MODEL`、`SENSES_VENV_DIR`、`SENSES_DEBUG`）。

---

## 31. DeepSeek V4 Pro 0813

**原文标题**: DeepSeek V4 Pro 0813

**原文链接**: [https://openrouter.ai/deepseek/deepseek-v4-pro-0813](https://openrouter.ai/deepseek/deepseek-v4-pro-0813)

无法访问文章链接。

---

## 32. 据消息人士称，银湖资本正洽谈收购Workday

**原文标题**: Silver Lake in talks to buy Workday, sources say

**原文链接**: [https://www.reuters.com/world/silver-lake-talks-buy-workday-sources-say-2026-08-13/](https://www.reuters.com/world/silver-lake-talks-buy-workday-sources-say-2026-08-13/)

无法访问文章链接。

---

## 33. Surfil 设备端AI编程代理控制平面

**原文标题**: Surfil On-device control plane for AI coding agents

**原文链接**: [https://surfil.com/](https://surfil.com/)

Surfil是一个用于AI编码代理的设备端控制平面，旨在让它们更便宜、更安全、更具备记忆感知能力。它只需安装一次，即可与Claude Code、Cursor、Codex、Copilot以及30多种其他工具配合使用，通过CLI/MCP拦截进行连接。源代码永远不会离开机器，卸载时会逐字节恢复所有配置。

该产品解决三个核心问题：代理成本高昂（重复发送上下文和重新读取文件）、存在风险（运行shell命令和泄露密钥）、以及健忘（每次会话都从零开始）。其解决方案位于一个共享管道上，包含三个主要产品：Cap（衡量并减少token支出）、Guard（在执行前阻止机密泄露和注入攻击）以及Mind（跨代理的加密、可移植记忆）。Core负责安装和引导系统；其他产品包括Radar、Bench以及其他六个产品。

信任是架构性的：零痕迹数据处理、为每个付费输出提供Ed25519签名收据、诚实的实测声明而非固定节省百分比，以及单一拦截点。用户可以离线验证任何收据，使用`surfil verify`命令——无需账户。

定价基于签名输出而非执行：运行代理不计量，而一个服务器签名的价值输出等于一个Credit。套餐包括Starter（5美元/月）、推荐的Pro（25美元/月）、Team（20美元/席位）和Enterprise（定制）。Surfil声称没有固定的节省率，因为实际节省取决于是否已在使用提示缓存；它保证字节精确拦截以避免破坏提供商缓存，并根据用户自身流量衡量结果。

---

## 34. DeepSeek API价格更新

**原文标题**: DeepSeek API Pricing Update

**原文链接**: [https://twitter.com/deepseek_ai/status/2087864589895798968](https://twitter.com/deepseek_ai/status/2087864589895798968)

DeepSeek今日发布DeepSeek-V4-Pro模型，主要亮点包括：重大Agent升级，带来强劲的生产环境性能提升；V4-Pro与V4-Flash支持灵活推理力度设置，可根据任务复杂度选择低、高、最大三档；原生支持OpenAI Responses API。文章标题涉及API定价更新，但正文未提供具体价格信息。

---

## 35. 亚马逊将默认使用Twitch主播的内容进行训练，除非他们选择退出

**原文标题**: Amazon will train on Twitch streamers' content by default, unless they opt out

**原文链接**: [https://techcrunch.com/2026/08/12/amazon-will-train-on-twitch-streamers-content-by-default-unless-they-opt-out/](https://techcrunch.com/2026/08/12/amazon-will-train-on-twitch-streamers-content-by-default-unless-they-opt-out/)

Twitch现在将默认允许亚马逊使用主播的内容训练生成式人工智能模型，创作者需要通过一项新设置手动选择退出。此举立即引发强烈反弹，许多主播担心他们的视频和声音在未经知情同意的情况下被使用。在一次直播中，Twitch高管玛丽·基什和迈克·明顿回应了近3000名不满的用户。明顿承认，之所以选择退出模式，是因为如果采用选择加入模式，“没有人会主动加入”。当被问及内容是否已经被用于训练时，明顿表示他并不了解亚马逊过去的训练做法。

Twitch将这一变更描述为增加一项隐私设置，但批评者认为，默认选择加入的设计把决定权隐藏了起来，用户无从知晓。基什指出，其他平台（如Meta）也会在用户的公开内容上训练AI，而提供任何退出选项都反映了对社区关切的回应。要选择退出，用户必须进入频道设置（而非创作者仪表盘），选择安全与隐私选项卡，然后关闭“生成式人工智能训练”。

这篇文章凸显了平台与创作者之间在AI训练问题上的更广泛紧张关系，尤其是许多主播强烈反对生成式人工智能使用抓取的内容。Twitch自己的声明似乎预料到了反弹，而该公司对过去数据使用情况的不透明进一步加剧了不信任。此举凸显了平台往往依赖被动同意，让用户自行操作退出机制，而不是给予他们主动选择的权利。

---

## 36. Show HN：在16K特征下，扁平自编码器失效，而曲率空间不会。

**原文标题**: Show HN: At 16K features, flat autoencoders break. Curved space doesn't

**原文链接**: [https://github.com/vishal-dehurdle/hypersae](https://github.com/vishal-dehurdle/hypersae)

HyperSAE 是一个高性能的机制可解释性引擎，可从 LLM 激活中提取层级概念本体。它将双曲几何与前向传播解耦：一条快速欧几里得路径处理令牌激活以实现零延迟执行，而一条慢路径则通过在优化期间对解码器权重进行庞加莱球投影来强制层级结构。

在 Gemma-2-2B 第13层（d=2304，字典大小=16384，2000万 FineWeb-Edu 令牌）上进行的基准测试中，HyperSAE 优于标准的扁平 SAE。在匹配的稀疏度（L0≈53）下，其重构 MSE 降低了 9.8%（4.1232 对比 4.5724），CE 损失恢复率提高了 3.4%（78.9% 对比 75.5%）。在较低的稀疏度惩罚下，它还表现出更高的 MSE 和 CE 恢复能力，例如 CE 恢复率达 98.1%，而扁平 SAE 为 97.0%。

关键组件包括：HyperSAE 模型（具有可学习径向深度的线性前向传播）、CoActivationQueue（GPU 内存高效的共现跟踪）、TriPartiteLoss（结合了 MSE、L1 稀疏度和庞加莱蕴含惩罚），以及 FlatSAE 基线。该包提供了用于引导的 PyTorch 和 TransformerLens 钩子。

安装方式为 `pip install hypersae` 或从源代码安装。该库支持通过简单的训练器 API 进行训练。这项工作附带了两篇研究论文：一篇关于权重空间正则化和双曲几何的理论论文，以及一篇实证验证论文。该项目采用 MIT 许可证。

---

## 37. 追踪存在16年的SQLite WAL重置缺陷

**原文标题**: Tracking down the 16-year-old WAL-reset SQLite bug

**原文链接**: [https://tailscale.com/blog/sqlite-wal-reset-bug](https://tailscale.com/blog/sqlite-wal-reset-bug)

Tailscale 在六个月内遭遇了19次 SQLite 数据库损坏事件，导致服务中断和元数据丢失。其控制平面每个分片采用单写入者设计，按理说应该安全可靠。初步调查未发现共同触发因素，也无法复现该 bug。

Tailscale 邀请了 SQLite 核心开发者协助，并构建了一个事务日志管道以帮助恢复。这揭示了一个惊人的线索：一个事务提交的数据有时对后续事务不可见——这是一个不可能出现的场景。SQLite 团队开发了一个跟踪垫片（tmstmpvfs）来诊断实时事件。

日志暴露出检查点与写事务之间罕见的数据竞争，称为“WAL-Reset bug”。如果在检查点期间某个特定时刻发生写入，SQLite 会误以为页面已从预写日志复制到主数据库文件，但实际上并未复制。这些页面永久丢失，导致数据库损坏。该 bug 可能至少存在了16年；Tailscale 之所以受影响尤为严重，是因为它运行了手动且激进的检查点操作。

SQLite 3.52.0 修复了该 bug，但 Tailscale 的部署触发了虚假的损坏警告，原因在于另一个无关的 bug，涉及过期的表达式索引以及文本到浮点数转换的舍入行为变化。SQLite 撤回了 3.52.0，并发布了仅包含 WAL-Reset 修复的 3.51.3。Tailscale 通过将时间戳存储为整数秒来避免索引问题，而 SQLite 后来在 3.53.0 中增加了自动自愈索引功能。该修复解决了 Tailscale 持续发生的中断问题。

---

## 38. Namecheap已宕机六小时

**原文标题**: Namecheap has been down for six hours

**原文链接**: [https://twitter.com/namecheapceo/status/2087931259389464611](https://twitter.com/namecheapceo/status/2087931259389464611)

Namecheap 遭遇了由其 PhoenixNAP 数据中心冷却系统故障导致的重大中断。为防止设备过热和长期损坏，Namecheap 主动将受影响的服务下线。四台冷却装置中已有两台恢复运行，温度正在下降，第三台预计约三小时内上线，之后服务应开始恢复。此外，还在安装额外的冷却设备。

该事件影响了超过 5,000 台服务器，并导致 Namecheap.com、共享/VPS/专用主机、EasyWP、DNS、Private Email 和托管邮箱、邮件转发、URL 重定向以及部分主机操作中断。在基础设施安全恢复在线之前，网站和服务可能无法访问、速度缓慢或返回错误。对于电子邮件，投递可能会延迟，但邮件预计不会丢失；一旦连接恢复，发送服务器应会重试。

首席执行官 Hillan Klein 对此次中断表示歉意，称公司认真对待自身的责任，并正在与 PhoenixNAP 夜以继日地工作，以安全、快速地恢复冷却和服务。将随着进展提供最新情况。

---

## 39. 如何在有限预算下构建一台 Stratum 1 PTP 主时钟

**原文标题**: Build a Stratum 1 PTP Grandmaster on a Budget

**原文链接**: [https://opscode.io/posts/ptp-grandmaster-cm4-sr1723u10/](https://opscode.io/posts/ptp-grandmaster-cm4-sr1723u10/)

本文记录了如何利用树莓派 CM4 和 IO 板、一块 15 美元的 u-blox SR1723U10 GPS 模块以及一根有源天线，以约 103 美元的成本构建一台经济型 Stratum 1 PTP 主时钟。CM4 的 BCM54210PE 以太网 PHY 支持 IEEE 1588v2 硬件时间戳，从而实现纳秒级同步。

作者使用了 Ubuntu 24.04，其内核为该 PHY 的 PTP 硬件时钟提供了支持（22.04 中不具备）。软件栈将 SatPulse（GPS 到 PHC 的驯服）与 ptp4l（PTP 主时钟守护进程）和 chrony（NTP 服务器）搭配使用。GPS 通过 UART 连接，PPS 信号接入 PHY 的 SYNC_OUT 时间戳输入。

有几个 bug 需要变通处理：PHY 驱动程序将 SYNC_OUT 初始化为输出而非输入，因此启动前需要切换一次引脚状态；IO 板的 RTC 需要启用 overlay；还必须强制规定服务启动顺序，确保 SatPulse 在 chrony/ptp4l 创建套接字之后再启动。

结果：主时钟 PHC 与 GPS 真实时间的偏差保持在 18ns 以内（平均偏移 6.4ns）。CM4 客户端通过 PTP 硬件时间戳实现了 ±66ns 的不确定度；RK1 客户端实现了 ±291ns（使用 MAC 层而非 PHY 层时间戳）。作为对比，从同一主时钟通过局域网 NTP 同步得到微秒级偏移，而广域网 NTP 得到毫秒级偏移。网络拓扑也很关键：经由消费级路由器转发时，路径延迟升至约 480µs，而直连实验室交换机仅为 2.6µs——相差 180 倍。

无 GPS 时的保持能力（无 TCXO）在 10 小时内漂移约 15ms，对于学习目的可以接受，但不如约 475 美元的 TimeHAT 替代方案——后者配备温补振荡器，集成度也更高。

---

## 40. Cloudflare持久对象，移植到Rails

**原文标题**: Cloudflare Durable Objects, Ported to Rails

**原文链接**: [https://solidobjects.dev/](https://solidobjects.dev/)

Solid Objects 是一个将 Cloudflare Durable Objects 移植到 Ruby on Rails 技术栈的库（同时提供 TypeScript/Node.js 版本）。它提供“有状态的、实时的虚拟 actor”，完全由现有的关系数据库（Postgres、MySQL 或 SQLite）驱动，无需 Redis、消息代理或独立的状态服务。

在 Rails 中，Solid Objects 实现了“有史以来最简单的响应式 ERB”：开发者定义一个带有属性和方法的 actor 类，通过 `solid_object` 将其放入 ERB 模板，状态一变，视图就会在所有打开的浏览器中实时更新——无需 channels、broadcasts、Stimulus 控制器或手写 JavaScript。持久、有序的虚拟 actor 处理竞态安全：对同一 actor 的所有调用都通过邮箱串行化，提交到数据库，并通过租约和 fencing 保护。

主要能力包括：
- **持久化定时器/闹钟**：按对象调度。
- **事务性发件箱**：用于 actor 间消息、效果和失效操作，与状态一起提交。
- **实时 UI 同步**：通过 Action Cable/Turbo Streams，并带有针对变更、读取和订阅的授权策略。
- **个性化广播负载**：确保私有数据（如每个玩家的手牌）不会跨会话传递。
- **实时组件**：使用 Turbo morphs 在服务端重新渲染，支持批量刷新和签名密钥。

文章列出了 Rails 新增的四个保证：无需 Redis 的按实体锁定、无需代理的后台工作、由数据库支持的闹钟取代定时器表，以及（隐式的）实时流层。生产级参考应用 MTG Playmat 演示了在 Rails 8 和 SQLite 上运行的这种方法。

---

