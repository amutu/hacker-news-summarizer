# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-21.md)

*最后自动更新时间: 2026-02-21 20:35:29*
## 1. 解析而非验证与Rust中的类型驱动设计

**原文标题**: Parse, Don't Validate and Type-Driven Design in Rust

**原文链接**: [https://www.harudagondi.space/blog/parse-dont-validate-and-type-driven-design-in-rust/](https://www.harudagondi.space/blog/parse-dont-validate-and-type-driven-design-in-rust/)

本文介绍了Rust中的“解析而非验证”原则与类型驱动设计，倡导将程序不变量编码进类型系统而非依赖运行时验证。

核心思想是通过使用新类型（如`NonZeroF32`或`NonEmptyVec<T>`）强化函数参数，这些类型在构造时即保证特定属性（如非零、非空）。这将验证过程转移到单一的前置“解析”步骤（例如`NonZeroF32::new()`），此后类型自身携带保证。这与“验证式”方法形成对比——后者返回`Option`/`Result`并要求重复检查，导致冗余代码和潜在运行时错误。

强调的主要优势包括：
*   **使非法状态无法表示**：像`String`（已验证的`Vec<u8>`）这类类型确保系统中不存在无效数据。
*   **提升API清晰度与安全性**：函数签名明确声明其要求（例如`divide(a: f32, b: NonZeroF32)`）。
*   **实现编译器辅助的正确性**：错误在编译时而非运行时被捕获。
*   **减少样板代码**：消除初始解析后重复的验证检查。

文章最后总结了类型驱动设计的准则：使非法状态无法表示，并尽早证明不变量，从而摆脱验证逻辑散落代码各处、容易出错的“霰弹式解析”。

---

## 2. 我验证了我的领英身份。以下是我提交的信息

**原文标题**: I verified my LinkedIn identity. Here's what I handed over

**原文链接**: [https://thelocalstack.eu/posts/linkedin-identity-verification-privacy/](https://thelocalstack.eu/posts/linkedin-identity-verification-privacy/)

为了获得LinkedIn的认证徽章，作者发现这一流程由美国第三方公司Persona处理。该服务收集大量个人数据，包括完整的护照扫描件、实时自拍照、提取的面部几何数据以及行为生物特征。Persona随后将这些信息与多个数据库进行交叉比对，实质上完成了一次背景调查。

关键的是，作者发现Persona会利用这些文件训练其人工智能系统，并将数据分享给17家位于北美的分包处理商。尽管数据可能存储在德国，但Persona在美国注册的性质使得所有信息都受美国《云法案》约束，这意味着无论物理存储位置如何，美国当局都有权要求获取这些数据。

文章警告称，欧盟数据在《欧美数据隐私框架》等机制下的法律保护并不稳固。此外，Persona的条款将责任上限设为50美元，并规定若发生数据泄露需通过个人仲裁解决。

核心结论是：用户用高度敏感、不可更改的生物识别和身份数据换取了一个装饰性的徽章，却往往不了解这种交换的规模，也不清楚数据泄露后追索权的局限性。作者建议已认证用户申请删除数据，并敦促其他人慎重考虑这枚徽章是否值得以重大隐私代价换取。

---

## 3. Canvas_ity：一个用于C++的轻量级、单头文件、类似<canvas>的2D光栅化器

**原文标题**: Canvas_ity: A tiny, single-header <canvas>-like 2D rasterizer for C++

**原文链接**: [https://github.com/a-e-k/canvas_ity](https://github.com/a-e-k/canvas_ity)

**概述**

Canvas_ity 是一个紧凑的单头文件 C++ 库，用于渲染二维矢量图形，其设计旨在紧密模仿 W3C HTML5 Canvas API。它优先考虑高质量的渲染效果、易用性和较小的代码体积，而非追求原始速度。该库支持几乎所有核心画布功能，包括路径、描边、填充、渐变、图案、图像、字体、阴影和合成，但针对 C++ 对 API 进行了适配（例如，避免使用基于字符串的样式规范）。

主要特点包括：
*   **高质量输出**：使用梯形区域抗锯齿、伽马校正混合和双三次重采样，以实现平滑且感知准确的结果。
*   **易于使用**：无外部依赖、线程安全、不使用全局状态，并在嵌入式向量内进行可预测的内存管理。
*   **紧凑性**：整个实现大约为 2300 行 C++03 代码，生成的二进制文件体积小（约 36 KiB）。

值得注意的局限性包括其基本的文本渲染（无提示、字距调整等）、非安全的 TrueType 字体解析以及缺乏 GPU 加速。该库在宽松的 ISC 许可证下分发。

---

## 4. 你的安全审查表格上不该写什么（1988年）

**原文标题**: What not to write on your security clearance form (1988)

**原文链接**: [https://milk.com/wall-o-shame/security_clearance.html](https://milk.com/wall-o-shame/security_clearance.html)

在这篇1988年的文章中，莱斯·厄内斯特回忆了一起童年事件，此事后来影响了他的安全许可申请。1943年，十二岁的他和朋友根据一本密码学书籍设计了一套简易密码。厄内斯特丢失了眼镜盒，里面装着折叠的密码密钥。一位市民拾获后怀疑涉及间谍活动，将其交给了联邦调查局；该局耗费巨资展开调查，最终追溯到厄内斯特本人。

多年后，厄内斯特申请一份需要安全许可的暑期工作时，如实回答了“是”关于是否曾被联邦调查局调查的问题，并解释道：“我曾被怀疑是日本间谍。”安全官员听完原委后情绪激动，撕毁了表格，指示他重新填写一份且不得提及此事，并警告说披露此事将使他永远无法获得许可。厄内斯特照做后获得了许可，由此领悟到在此类表格上完全诚实可能适得其反。这则轶事以幽默的方式揭示了安全审查程序中的官僚主义荒诞。

---

## 5. 一位中央情报局分析师的个人陈述

**原文标题**: Personal Statement of a CIA Analyst

**原文链接**: [https://antipolygraph.org/statements/statement-038.shtml](https://antipolygraph.org/statements/statement-038.shtml)

**《一名中情局分析员个人陈述》摘要**

本文是一位前中情局分析员以第一人称叙述的亲身经历，详细描述了其在一次例行安全复审中接受测谎检查的负面体验。核心论点是：测谎过程存在缺陷，是一种伪科学的“恐吓仪式”，而非可靠的谎言检测工具。

该分析员描述称，测谎过程压力极大且充满指控意味。考官采用了攻击性且不专业的手段，包括反复逼问、对性行为进行毫无根据的影射，并威胁要因其过往已申报的次要个人往来而断送其职业生涯。尽管该分析员拥有长期成功的工作记录和最高机密安全许可，却仍被预设为有罪，并遭受旨在逼供的心理压力。

陈述总结认为，测谎对国家安全适得其反。它驱走了诚实、合格的人员——作者在此经历后不久便离开了中情局——同时可能漏掉那些经过训练以通过测试的真正安全威胁。作者主张在情报界废除测谎，认为它制造了虚假的安全感，并损害了士气和信任。

---

## 6. 你能理解多久以前的英语？

**原文标题**: How far back in time can you understand English?

**原文链接**: [https://www.deadlanguagesociety.com/p/how-far-back-in-time-understand-english](https://www.deadlanguagesociety.com/p/how-far-back-in-time-understand-english)

本文描述了一项语言实验：作者虚构了一篇博客文章，用逐渐古老的英语形式写成，时间跨度从2000年回溯至1000年。身为语言学家的作者通过构建这些段落，展示了英语在千年间的演变过程。

文章以现代非正式的“博主式”英语开篇，并随时间倒推，每个部分代表一个世纪。读者被邀请留意理解开始变得困难的节点。作者解释道，近三百年（1700–2000年）的英语因拼写标准化和语法稳定而基本可读，显著变化的仅是文体“风格”。

理解障碍通常出现在1500至1600年代，这是由于拼写、语法和词汇发生了重大转变。到了1300年及更早时期，文本对现代读者而言几乎如同外语，需要翻译才能理解。

核心结论是：虽然现代英语使用者能相对轻松地阅读1700年代的文本，但年代越久远，语言变化就越剧烈。这项实验直观展现了英语的演化历程，强调了我们现代语言是千年持续变革的产物。

---

## 7. Inputlag.science – 游戏输入延迟知识库

**原文标题**: Inputlag.science – Repository of knowledge about input lag in gaming

**原文链接**: [https://inputlag.science](https://inputlag.science)

**《Inputlag.science——游戏输入延迟知识库》摘要**

本网站是理解游戏系统输入延迟的核心知识库。它将输入延迟定义为用户操作与屏幕上可见效果之间的延迟，这是一个随着系统日益复杂而逐渐加剧的问题。

文章指出，这种增加的延迟往往不易察觉，但在现代游戏中可能引发显著问题。其根源在于系统复杂性，以及开发者常常未能充分认识导致延迟的所有因素。

为此，网站明确了“延迟链”中的三个主要组成部分：
1.  **控制器**
2.  **游戏引擎**
3.  **显示器**

该网站旨在帮助开发者和消费者理解这些延迟问题、各环节的细微差别以及精确测量输入延迟的方法，尤其侧重于控制器与游戏引擎方面的探讨。

---

## 8. 2026年2月20日Cloudflare服务中断事件

**原文标题**: Cloudflare outage on February 20, 2026

**原文链接**: [https://blog.cloudflare.com/cloudflare-outage-february-20-2026/](https://blog.cloudflare.com/cloudflare-outage-february-20-2026/)

2026年2月20日，Cloudflare发生持续6小时的服务中断，影响了使用其自带IP（BYOIP）服务的客户。此次事件源于一次旨在优化流程的自动化变更中出现的内部软件故障。一个有缺陷的API查询错误解读了参数，导致清理任务系统性地删除了约1,100个BYOIP前缀（占总数的25%），而非仅针对计划移除的部分。

这导致BGP路由被撤销，使得受影响的服务无法访问。尽管部分客户可通过控制面板自行修复，但由于另一个次级故障清除了边缘服务器上的服务绑定，仍有约300个客户需要工程师手动恢复。此次中断影响了包括CDN、Spectrum和Magic Transit在内的多项服务，导致连接超时。

Cloudflare将故障归因于测试环境中的测试不足，以及针对自动化任务场景的测试覆盖不完整。此次变更是公司“橙色代码：小范围故障”计划的一部分，旨在提升系统可靠性。作为回应，Cloudflare提出了改进措施：标准化API模式以防止参数误读，并重新设计系统以分离运行状态与配置状态。这将使未来出现问题时，能通过健康检查机制更快回滚至已知良好的配置。

---

## 9. Loon：一门具备隐形类型、安全所有权和代数效应的函数式语言

**原文标题**: Loon: A functional lang with invisible types, safe ownership, and alg. effects

**原文链接**: [https://loonlang.com](https://loonlang.com)

**摘要：**

Loon 是一种新的编程语言，专为在 Web 浏览器中使用 JavaScript 运行而设计。它是一种 LISP 方言，这意味着它采用独特且括号密集的语法。该语言强调多种先进和现代的编程概念。

其宣传的主要特性包括**隐形类型**（可能是一种强大的类型推断形式，能最大限度地减少显式类型注解）、**安全所有权**（一种用于管理内存和资源的系统，旨在防止错误，类似于 Rust）以及**代数效应**（一种以函数式、可组合的方式处理副作用和控制流的机制）。

其核心理念在于，Loon 将 LISP 的简洁性和表达力与这些复杂的编译时保证及效应管理系统相结合。这旨在为开发者提供一种既编写优雅又具备鲁棒性的语言，能够防止与类型、内存和程序效应相关的常见错误类别——同时无需插件或特殊设置即可直接在浏览器环境中执行。

---

## 10. 一个推理服务提供商如何证明他们没有提供量化模型

**原文标题**: How an inference provider can prove they're not serving a quantized model

**原文链接**: [https://tinfoil.sh/blog/2026-02-03-proving-model-identity](https://tinfoil.sh/blog/2026-02-03-proving-model-identity)

Tinfoil的Modelwrap是一个通过密码学方式证明推理服务商正在运行特定、未经篡改模型的系统，旨在解决行业中存在服务商为降低成本秘密使用量化或降级版本的问题。

其工作原理是创建对精确模型权重的公开可验证承诺。该核心创新将默克尔树（用于生成代表整个模型的微型根哈希）与**dm-verity**（Linux内核子系统）相结合。dm-verity通过在运行时透明验证每次模型权重磁盘读取与认证根哈希的一致性来强制保障完整性。任何比特位不匹配都会导致读取失败。

该保障通过认证机制与安全硬件飞地绑定。虽然标准认证仅证明初始启动状态，但Modelwrap的配置确保飞地内核将在运行期间*强制执行*权重承诺。这提供了运行时保障，且无需修改vLLM等推理软件。

该方法既适用于公开模型（任何人都可验证哈希值），也适用于私有专有模型（所有者可在不泄露权重的情况下验证一致性）。性能开销极小，仅影响初始模型加载时间，不影响推理速度。Modelwrap已开源，支持独立验证和使用。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 2 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 3 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 4 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 5 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 6 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 7 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 8 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 9 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 10 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 11 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 12 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 13 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 14 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 15 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 16 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 17 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 18 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 19 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 20 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 21 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 22 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 23 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 24 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 25 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 26 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 27 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 28 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 29 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 30 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 31 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 32 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 33 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 34 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 35 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 36 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 37 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 38 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 39 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 40 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 41 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 42 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 43 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 44 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 45 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 46 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 47 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 48 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 49 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 50 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 51 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 52 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 53 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 54 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 55 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 56 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 57 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 58 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 59 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 60 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 61 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 62 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 63 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 64 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 65 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 66 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 67 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 68 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 69 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 70 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 71 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 72 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 73 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 74 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 75 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 76 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 77 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 78 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 79 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 80 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 81 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 82 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 83 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 84 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 85 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 86 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 87 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 88 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 89 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 90 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 91 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 92 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 93 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 94 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 95 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 96 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 97 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 98 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 99 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 100 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 101 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 102 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 103 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 104 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 105 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 106 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 107 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 108 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 109 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 110 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 111 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 112 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 113 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 114 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 115 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 116 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 117 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 118 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 119 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 120 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 121 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 122 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 123 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 124 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 125 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 126 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 127 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 128 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 129 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 130 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 131 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 132 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 133 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 134 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 135 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 136 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 137 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 138 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 139 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 140 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 141 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 142 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 143 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 144 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 145 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 146 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 147 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 148 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 149 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 150 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 151 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 152 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 153 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 154 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 155 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 156 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 157 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 158 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 159 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 160 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 161 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 162 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 163 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 164 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 165 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 166 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 167 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 168 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 169 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 170 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 171 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 172 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 173 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 174 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 175 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 176 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 177 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 178 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 179 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 180 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 181 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 182 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 183 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 184 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 185 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 186 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 187 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 188 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 189 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 190 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 191 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 192 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 193 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 194 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 195 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 196 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 197 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 198 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 199 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 200 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 201 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 202 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 203 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 204 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 205 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 206 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 207 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 208 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 209 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 210 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 211 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 212 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 213 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 214 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 215 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 216 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 217 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 218 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 219 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 220 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 221 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 222 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 223 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 224 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 225 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 226 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 227 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 228 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 229 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 230 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 231 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 232 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 233 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 234 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 235 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 236 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 237 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 238 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 239 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 240 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 241 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 242 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 243 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 244 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 245 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 246 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 247 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 248 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 249 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 250 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 251 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 252 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 253 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 254 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 255 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 256 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 257 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 258 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 259 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 260 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 261 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 262 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 263 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 264 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 265 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 266 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 267 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 268 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 269 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 270 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 271 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 272 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 273 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 274 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 275 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 276 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 277 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 278 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 279 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 280 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 281 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 282 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 283 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 284 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 285 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 286 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 287 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 288 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 289 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 290 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 291 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 292 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 293 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 294 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 295 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 296 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 297 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 298 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 299 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 300 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 301 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 302 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 303 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 304 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 305 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 306 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 307 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 308 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 309 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 310 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 311 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 312 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 313 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 314 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 315 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 316 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 317 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 318 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 319 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 320 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 321 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 322 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 323 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 324 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 325 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 326 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 327 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 328 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 329 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 330 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 331 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 332 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 333 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 334 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 335 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 336 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
