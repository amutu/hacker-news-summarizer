# Hacker News 热门文章摘要 (2026-05-17)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 《水银，20年仍在继续：我们如何依旧活力十足？》[视频]

**原文标题**: Mercurial, 20 years and counting: how are we still alive and kicking? [video]

**原文链接**: [https://fosdem.org/2026/schedule/event/AGWUVH-mercurial-aint-you-dead-yet/](https://fosdem.org/2026/schedule/event/AGWUVH-mercurial-aint-you-dead-yet/)

本文宣布了FOSDEM 2026上的一场演讲，题为《Mercurial：二十年风雨兼程——我们如何依然活跃？》，由Raphaël Gomès和Pierre-Yves David主讲。该演讲探讨了Mercurial这一分布式版本控制系统（2005年诞生）的悖论：尽管在2010年代与Git的流行度竞争中落败后，普遍被认为已“死亡”，但它至今仍在积极开发中。

演讲者将借助Mercurial历史的第一手经验，解释该项目如何存活至今。关键议题包括：Mercurial如何抵御Git的主导地位、其对版本控制领域常被忽视的影响、大型企业参与的作用，以及2025年人们仍被Mercurial吸引的原因。本演讲旨在从项目过往中汲取经验，评估版本控制的现状，预测其未来，并凸显社区驱动型开源软件的持续价值。

---

## 2. 我将一台80美元的RK3562安卓平板改造成了Debian Linux工作站

**原文标题**: I turned a $80 RK3562 Android tablet into a Debian Linux workstation

**原文链接**: [https://github.com/tech4bot/rk3562deb](https://github.com/tech4bot/rk3562deb)

本文介绍了一项将售价80美元的Doogee U10安卓平板（搭载瑞芯微RK3562 SoC）改造为功能完备的Debian 12 Linux工作站的项目，无需解锁引导加载程序或修改内部存储。系统完全从SD卡启动；拔出SD卡即可恢复平板电脑的原生安卓系统。

**主要特性：**
- **硬件支持：** 显示屏、触摸屏、Wi-Fi、蓝牙、音频、电池及NPU均可正常工作。摄像头和3D加速功能部分可用。
- **NPU大语言模型推理：** RK3562 NPU可运行本地大语言模型（如Qwen3-0.6B），生成速度达4.92 token/秒。
- **默认应用：** 包含Firefox、Chromium、Dolphin等，并预启用Flatpak/Flathub。
- **Phosh用户界面集成：** 电源配置映射、手电筒开关、锁屏方向记忆及故障安全会话恢复机制。
- **构建系统：** 该项目提供完整的构建脚本（`build.sh`），支持U-Boot、内核、根文件系统及SD卡镜像生成。支持环境变量和命令行参数进行定制。

**系统

这是一个逆向工程构建的开源项目，未使用厂商BSP或官方支持，借助AI辅助及Firefly RK3562仓库完成。

---

## 3. Dontsurveil.me  
不要监视我

**原文标题**: Dontsurveil.me

**原文链接**: [https://opencivics-labs.github.io/dontsurveil.me/c22.html](https://opencivics-labs.github.io/dontsurveil.me/c22.html)

加拿大2026年3月提出的C-22法案，将强制加密通讯应用创建供政府访问的“第二把钥匙”，并规定广泛留存元数据，此举可能削弱数字隐私。若该法案通过，Signal、iMessage或WhatsApp等所有应用都必须建立技术能力，在接到命令时移交用户内容，实质上等同于构建后门。该法案还要求服务商留存所有用户的传输数据——包括联系对象、时间及地点——最长达一年，无论用户是否涉案。批评者称此条款高度侵犯隐私。

这项立法将影响所有人：从普通公民、记者到医生、律师、活动人士及依赖加密通讯的家庭暴力幸存者。反对者包括苹果、Signal、Meta、加拿大本国监督机构（NSIRA）及网络安全专家——他们指出，美国类似法律曾导致2024年“盐台风”黑客攻击事件，当时国家行为者利用合法访问基础设施窃听通话和短信。

目前该法案正处于议会委员会审议阶段，文本仍可修订。维权人士敦促公众立即采取行动——签署请愿书、联系议员、推动明确写入“禁止后门”的保护条款——以免错失影响最终结果的时机。

---

## 4. 我不认为人工智能会让你的流程变得更快

**原文标题**: I don't think AI will make your processes go faster

**原文链接**: [https://frederickvanbrabant.com/blog/2026-05-15-i-dont-think-ai-will-make-your-processes-go-faster/](https://frederickvanbrabant.com/blog/2026-05-15-i-dont-think-ai-will-make-your-processes-go-faster/)

**摘要：**

本文认为，仅靠人工智能无法显著加快组织流程，因为真正的瓶颈往往不在于执行阶段本身，而在于上游问题，如模糊的需求和低质量的输入。

作者通过一张软件开发甘特图指出，“开发”看似耗时最长。然而，仅仅增加AI或人力并不能解决问题。真正的延误源于开发人员需要澄清模糊的功能请求（例如“销售完成后向用户发送邮件”）。AI生成的代码也面临同样的问题：它能快速产出，但前提是必须提供极其详细、手把手的文档。这便将负担转移到了领域专家身上，要求他们写出每一个微小的细节，从而极大地延长了范围界定阶段。

作者认为，如果人类开发者也能获得同样详细的规格说明，他们的生产力同样会大幅提升。因此，AI并不能自动加速流程。

要想真正提速，组织应专注于确保流程的每一步都能获得“可预测、高质量的输入”——这是《目标》一书的关键启示。例如，如果法律审批缓慢，解决方案不是增加律师，而是修复不完整的文档，避免需要反复追人。流程自动化的首要重点应是改善上游输入质量，而非加速看得见的瓶颈。

---

## 5. 偶尔出现的ECONNRESET错误

**原文标题**: The occasional ECONNRESET

**原文链接**: [https://movq.de/blog/postings/2026-05-05/1/POSTING-en.html](https://movq.de/blog/postings/2026-05-05/1/POSTING-en.html)

**摘要：**

本文探究了两个本地服务间间歇性`ECONNRESET`错误的成因。作者通过一个简单服务器复现问题：该服务器向客户端发送60万字节后关闭连接。正常情况下操作正常，但当客户端使用`--spam`（在读取前发送数据）时，客户端接收到`ECONNRESET`。

通过`tcpdump`和`strace`，作者确认TCP RST来自服务器。关键发现：当服务器调用`close()`而未读取客户端任何待处理数据（即"spam"）时，套接字被视为"脏连接"，依据RFC 1122触发TCP RST。在`close()`前增加1秒延迟，证实了这一时序依赖行为。

**真实场景：**作者在使用nginx反向代理gunicorn/Flask应用时遇到此问题。Nginx通过两次`writev()`调用（请求头+请求体）发送HTTP请求。有时gunicorn仅读取请求头（392字节）而忽略请求体。当gunicorn发送响应并调用`close()`时，未读取的请求体数据触发RST，导致nginx出现`ECONNRESET`。

**解决方案：**让Python应用在关闭前显式地从套接字读取整个HTTP请求体，确保无待处理数据残留。文章还指出，若完全读取大型POST请求体可能带来DoS风险，但nginx的`client_max_body_size`可缓解此问题。作者计划验证RFC引用并向上游报告。

---

## 6. 安全研究人员称微软为Bitlocker预留后门并发布利用程序

**原文标题**: Security researcher says Microsoft built a Bitlocker backdoor, releases exploit

**原文链接**: [https://www.techspot.com/news/112410-security-researcher-microsoft-secretly-built-backdoor-bitlocker-releases.html](https://www.techspot.com/news/112410-security-researcher-microsoft-secretly-built-backdoor-bitlocker-releases.html)

**摘要：**

安全研究员托马斯·埃林顿声称，微软故意在其BitLocker（现称“BitLocker驱动器加密”）加密软件中构建了后门，可能允许对加密驱动器进行未授权访问。埃林顿发现，Windows全卷加密设备（FVE）驱动包含一种特殊的“恢复模式”，可绕过标准加密检查。该模式通过特定的物理内存访问模式触发，无需正确密码或恢复密钥即可对驱动器授予完全读写权限。

埃林顿发布了一个有效漏洞利用程序“bitpixie”，演示了如何在运行Windows 10和11的系统上触发此后门。该漏洞利用依赖于操纵系统的TPM（可信平台模块）状态或使用特定硬件攻击，迫使FVE驱动进入其未认证的恢复模式。

微软尚未正式承认该后门的存在，但埃林顿认为这是为政府或执法机构（如情报机构）的访问而故意设计的。批评者指出，该攻击需要物理接触机器及特定条件（如易受攻击的启动配置），限制了其用于大规模监视的实用性。然而，这一披露严重质疑了微软全盘加密的完整性，以及用户能否真正信任其安全承诺。微软尚未对这些说法做出公开回应。

---

## 7. 兴登堡号吸烟室

**原文标题**: Hindenburg's Smoking Room

**原文链接**: [https://www.airships.net/hindenburg-smoking-room/](https://www.airships.net/hindenburg-smoking-room/)

**《兴登堡号吸烟室》摘要**

尽管充满高度易燃的氢气，兴登堡号仍设有一个加压吸烟室供乘客使用。该房间气压高于飞艇其他部分，以防止泄漏的氢气进入。它由双层气闸隔开，并有专人持续监控。室内仅提供一只电子打火机，禁止携带火柴和明火。

加压系统部分出于公关考量——氢气比空气轻，即使发生泄漏也会向上飘散，很难到达位于B甲板低层的吸烟室。真正的危险并非氢气进入吸烟室，而是乘客区域的火灾蔓延至上方的气囊。严格限制吸烟行为有效降低了这一风险。

吸烟室同时也是飞艇上最受欢迎的地点，部分原因在于此处设有吧台，这也反映了当时普遍吸烟的社会风气。

---

## 8. 始终原汁原味，直到你需要文字

**原文标题**: Native all the way, until you need text

**原文链接**: [https://justsitandgrin.im/posts/native-all-the-way-until-you-need-text/](https://justsitandgrin.im/posts/native-all-the-way-until-you-need-text/)

**摘要**

一位拥有近20年经验的macOS/iOS资深开发者，对人们普遍轻视Electron等跨平台工具的观点提出了质疑。在尝试使用纯原生技术（SwiftUI、AppKit、TextKit 2）构建一款支持Markdown的简单聊天应用时，他们遇到了以下持久且根本性的问题：

- **SwiftUI** 在设计上无法对富Markdown内容进行文本选择。
- **NSTextView**（TextKit 2）难以处理流式文本，并导致CPU飙升。
- **NSCollectionView** 存在无法避免的单元格闪烁问题。
- 纯 **TextKit 2** 需要数月时间才能实现上下文菜单、无障碍支持、词典查询等基本功能。

改用 **WebKit** 渲染Markdown效果不错，但感觉背离了“原生”。

最终尝试 **Electron** 则令人惊叹：文本操作、Markdown渲染、排版，甚至Git差异对比等复杂功能均开箱即用、完美运行，且性能优于纯TextKit实现。

结论是：对于需要长文本富内容及灵活排版的聊天密集型应用，苹果的原生SDK **已不再是优势，而是束缚**。开发者认为，在苹果平台上并不存在真正的替代方案，这使得基于Web的解决方案（Electron、React Native）成为现代聊天界面的务实选择，尽管它背负着某些成见。

---

## 9. 高熵合金

**原文标题**: High-Entropy Alloy

**原文链接**: [https://en.wikipedia.org/wiki/High-entropy_alloy](https://en.wikipedia.org/wiki/High-entropy_alloy)

高熵合金（HEAs）是一类通过等摩尔或大比例混合五种及以上元素制成的新型材料，与传统仅含一两种主要组分的合金截然不同。该术语由台湾科学家叶均蔚于2004年提出，源于近等比例混合多种元素时产生的高熵增量。高熵合金常形成简单固溶体而非复杂金属间相，这归因于四大核心效应：高熵效应、严重晶格畸变效应、缓慢扩散效应及鸡尾酒效应。这些特性赋予其优异的力学性能，包括高强度、高韧性、延展性以及抗断裂、抗腐蚀和抗氧化能力，使其适用于航空航天推进系统、燃气轮机和核反应堆等极端环境。

关键发展始于布莱恩·坎特研制的等原子比CrMnFeCoNi合金（即"坎特合金"），该合金可形成单相面心立方固溶体。目前学界尚未形成统一定义：部分学者要求至少包含五种元素（各占5-35 at%），另一些则强调形成无金属间相的固溶体相，而元素种类较少的合金被称为"中熵合金"。相形成受热力学控制，需权衡混合焓与混合熵，并考虑原子尺寸差异。高熵合金在航天器、潜艇及高超音速导弹等高性能应用领域前景广阔，自2010年代研究加速以来，始终是材料科学领域的研究重点。

---

## 10. Schanuel猜想与Triton编程语言FPSan的语义

**原文标题**: Schanuel's Conjecture and the Semantics of Triton's FPSan

**原文链接**: [https://cp4space.hatsya.com/2026/05/03/schanuels-conjecture-and-the-semantics-of-fpsan/](https://cp4space.hatsya.com/2026/05/03/schanuels-conjecture-and-the-semantics-of-fpsan/)

**《"Schanuel猜想与FPSan语义"摘要》**

本文介绍了由apgoucher和Pawel Szczerbuk开发的Triton编译器pass——**FPSan**，其旨在验证浮点程序的代数等价性（标准代数定律如结合律在此失效）。FPSan将所有浮点运算替换为整数运算，确保若两个程序代数等价，则经FPSan变换后的版本产生相同结果。

FPSan的正确性依赖于超越数论中未解决的**Schanuel猜想**。它适用于实现含{−, +, ×, exp}运算及常数{-1, 0, +1}的算术电路的程序，覆盖常见GPU内核（如矩阵乘法和自注意力机制）。

**实现**：FPSan定义了一个从IEEE-754浮点数到模2^32整数的双射φ，并替换：
- fadd、fsub、fmul为φ值上的环运算
- exp(x)为使用常数C（满足C ≡ 5 mod 8）的2-adic指数

这些重写后的运算遵循环公理及exp(x+y) = exp(x) × exp(y)等性质。

**证明概要**：假设Schanuel猜想成立，实数指数环同构于自由指数环。模2^32整数（以C为底的指数运算）构成该环的商环，因此实数上的等价性在FPSan下成立。

**扩展**：该结果也适用于正弦和余弦函数——通过复数指数表达式及i² = -1的二次扩域实现。

---

## 11. CUDA书籍

**原文标题**: CUDA Books

**原文链接**: [https://github.com/alternbits/awesome-cuda-books](https://github.com/alternbits/awesome-cuda-books)

本文是一份精心整理的CUDA编程重要书籍指南，内容更新至2026年5月。全书按技能水平与专注领域分类编排。

**核心章节包括：**

- **入门篇：**《CUDA by Example》（经典）与《Learn CUDA Programming》（现代）.
- **核心架构：**《Programming Massively Parallel Processors》（第三版，2022年）被标榜为权威的GPU架构参考书.
- **实用实践：**《Programming in Parallel with CUDA》（2022年）提供运用现代C++的真实世界科学示例.
- **高级/优化：**《The CUDA Handbook》深入解析底层API细节.
- **Python篇：**推荐Python用户阅读《Hands-On GPU Programming with Python and CUDA》.
- **近期新书（2022-2026年）：**涵盖CUDA 12/13、调试、优化及张量核心等专题的新作（例如David Spuler、Finbarrs Oketunji的著作）.

**主要建议：**务必配合免费的官方《CUDA C++编程指南》阅读书籍，以跟上CUDA的快速更新。本列表为各层次开发者精选了高质量、重代码的参考资料。

---

## 12. 《宝可梦》解释Prolog基础

**原文标题**: Prolog Basics Explained with Pokémon

**原文链接**: [https://unplannedobsolescence.com/blog/prolog-basics-pokemon/](https://unplannedobsolescence.com/blog/prolog-basics-pokemon/)

**摘要：**

本文以宝可梦对战为例，阐释了逻辑编程语言Prolog在建模复杂规则系统方面的独特优势。

作者首先介绍了Prolog基础知识：事实（如 `pokemon(bulbasaur)`）、谓词（如 `type/2`）以及带变量的查询。Prolog的声明式特性允许用户从任意方向提问（例如“杰尼龟是什么属性？”或“哪些宝可梦是草属性？”）。规则如 `damaging_move` 通过“与”（`,`）和“或”（`;`）组合条件。

作者强调，对于复杂组合查询——例如寻找学习“冷冻干燥”且特攻高的冰属性宝可梦——Prolog的查询模型比SQL更简洁灵活。

随后文章详述了宝可梦机制的庞杂性（属性相克、先制招式、能力变化、特性、道具、天气等）。Prolog在此表现卓越，原因如下：

1. **即席查询**——轻松组合多个条件（例如找出队伍中所有先制招式）。
2. **分层规则**——完美模拟不断演变的游戏机制，同时保持清晰性。

作者通过一个实战示例说明：创建 `learns_priority` 谓词来查找其选秀联盟队伍中的高优先级招式，论证了Prolog在为复杂规则密集领域构建接口方面的强大能力。

最终，文章指出对于某些关系型问题，逻辑编程是最简洁且最具表现力的可用工具。

---

## 13. Zerostack – 一款纯Rust编写的类Unix风格编程代理

**原文标题**: Zerostack – A Unix-inspired coding agent written in pure Rust

**原文链接**: [https://crates.io/crates/zerostack/1.0.0](https://crates.io/crates/zerostack/1.0.0)

根据提供的标题和内容摘要，这篇文章介绍的是**Zerostack**——一个受Unix设计原则启发、完全用Rust实现的编码智能体。

主要要点如下：
- **核心理念：** Zerostack遵循Unix哲学，即做好一件事并注重可组合性，但采用现代工具构建。
- **技术栈：** 它用**纯Rust**编写，强调安全性、性能和可靠性，无需依赖垃圾回收器或运行时开销。
- **设计灵感：** 其设计借鉴了Unix理念，可能意味着它作为模块化、流水线式的工具用于软件开发任务（如代码生成、重构或分析）。
- **背景信息：** 摘要中还链接到了`crates.io`（Rust包注册表）和一条JavaScript说明，表明该文章可能托管在需要JavaScript才能完整功能的网站上，但核心内容突出了Zerostack作为基于Rust、Unix风格开发智能体的特点。

关键信息在于：Zerostack将Rust的稳健性与Unix的简洁性和模块化相结合，为开发者打造了一个高效的编码智能体。

---

## 14. Meta应科威特要求删除拥有百万粉丝的热门账号

**原文标题**: Meta deletes popular 1M follower account after Kuwaiti request

**原文链接**: [https://twitter.com/ryangrim/status/2055992439031185782](https://twitter.com/ryangrim/status/2055992439031185782)

**摘要：**

据该报道，Meta应科威特当局要求，删除了一个拥有超过100万粉丝的热门账户。该账户属于在平台上积累了大量关注度的个人或实体。科威特提交正式请求后，Meta删除了该账户，该请求很可能援引了当地法律或法规。报道片段未详述请求的具体原因，但此类行动通常涉及内容违规的指控，例如诽谤、虚假信息或国家安全问题。该账户被删除凸显了全球社交媒体平台与各国政府执行当地法律之间的持续紧张关系。Meta对科威特要求的遵从，凸显了该公司遵守当地法律框架的政策，即便这会导致删除热门内容。报道中提到的“JavaScript被禁用”以及跳转至X.com（原推特）暗示原始内容托管于一个当前正在重定向用户的平台上，但核心事件依然是：Meta应科威特要求删除了一个高知名度账户。这一举动引发了关于审查制度、平台治理以及用户权利与国家权力之间平衡的疑问。

---

## 15. 魔幻现实主义：《北国风云》25年后（2015）

**原文标题**: Magical Realism: “Northern Exposure” 25 Years Later (2015)

**原文链接**: [https://www.rogerebert.com/streaming/magical-realism-nothern-exposure-25-years-later](https://www.rogerebert.com/streaming/magical-realism-nothern-exposure-25-years-later)

无法访问该文章链接。

---

## 16. AI是技术而非产品

**原文标题**: AI is a technology not a product

**原文链接**: [https://daringfireball.net/2026/05/ai_is_technology_not_a_product](https://daringfireball.net/2026/05/ai_is_technology_not_a_product)

**摘要：**

本文认为，人工智能是一项基础性技术，而非需要“杀手级设备”的独立产品。作者反驳了史蒂文·利维关于苹果需要一款类似 iPhone 的单一 AI 产品来定义时代的观点。

作者支持苹果高管约翰·特努斯的看法：苹果交付的是出色的产品和体验，而非底层技术。iPod 的意义不在于 MP3 文件，iPhone 也无需统治移动时代的每一个市场（如社交媒体）。AI 就像无线网络一样，将渗透到所有设备中，而非创造出一个全新的产品类别。

作者将利维关于“始终在线的 AI 代理无需手机即可自动叫车”的设想斥为“狂热梦境”。在可预见的未来，手机仍将是此类任务的主要界面——包括向 AI 代理发出的语音指令。手表或眼镜等更小的设备仍将与手机配对。

作者总结道，忽视 AI 是愚蠢的——它具有普遍性与变革性——但 AI 将增强现有产品，而非取代它们。正如苹果将无线连接整合到所有产品中一样，AI 将成为苹果全系产品的标准功能，而非单一的“杀手级产品”。

---

## 17. 不要外包学习

**原文标题**: Don’t Outsource the Learning

**原文链接**: [https://addyosmani.com/blog/dont-outsource-learning/](https://addyosmani.com/blog/dont-outsource-learning/)

**《不要把学习外包出去》**

本文警示：过度依赖AI编程是以长期技能换取短期速度，造成"认知负债"。作者承认AI能提升生产力，但指出默认工作流优化的是任务完成而非学习。

关键研究支持这一观点：Anthropic研究发现，使用AI辅助的工程师理解力得分为50%，而手动学习者达67%，复制粘贴者则低于40%。麻省理工学院的"ChatGPT下的大脑"研究显示，AI使用者的脑连接性较低，83%的人无法引用自己的成果。2026年CHI会议研究发现，早期接触大语言模型会导致更糟糕的决策锚定。

文章指出了五种纯粹委托AI会失败的场景：调试崩溃、检测自信的幻觉、系统迁移、解决新问题以及保持市场价值（自2022年起初级开发者就业率下降20%）。

解决方案包括有意的提示习惯：在提问前先形成假设，索要解释而非直接要代码，使用"学习模式"功能，像对待初级开发者的拉取请求一样批判AI输出，偶尔手动重新推导解决方案，并让AI教你它做了什么。

作者提出了两个编码会议衡量指标："我学到了什么，还是仅仅关闭了工单？"交付与学习是两个独立的目标。默认工具不会强制学习——这个责任在于工程师本人。

---

## 18. AI订阅对企业而言是一颗定时炸弹

**原文标题**: AI subscriptions are a ticking time bomb for enterprise

**原文链接**: [https://www.thestateofbrand.com/news/ai-subscription-time-bomb](https://www.thestateofbrand.com/news/ai-subscription-time-bomb)

**摘要：** 本文认为，OpenAI、Anthropic和谷歌等公司的企业AI订阅是难以为继的亏本引流策略。提供商收费远低于实际算力成本（例如每月20美元的Claude Pro，重度用户消耗的API等效成本却高达200-400美元）。该策略将组织锁定在依赖关系中，为这些公司上市后迫于投资者盈利压力而提价铺路。

转向自主式AI——即自主智能体以极高频率消耗token——已完全打破固定费用模式，正如GitHub在2026年6月转向按用量计费所示。

**企业面临的关键风险：**
- 多数组织按当前补贴价格而非实际消耗成本制定预算。
- 当价格调整（通过更高档位、上限或用量计费）时，嵌入AI工作流的公司将突然遭遇巨大预算冲击——50个席位每月1000美元的成本可能暴涨至15000-40000美元。
- OpenAI和Anthropic均筹备上市，这迫使其必须消除订阅收入与实际成本间的缺口。

**建议行动：**
1. 审计各团队的token实际消耗量。
2. 按当前AI成本2-10倍建模预算。
3. 构建供应商多样性，防止单一提供商锁定。
4. 让CFO为不可避免的费用项剧变做好准备。

核心信息：补贴时代即将终结，未做好准备的企业将面临严重的财务冲击。

---

## 19. 科学家用液态电池“封存太阳”，储存太阳能

**原文标题**: Scientists “bottle the sun” with a liquid battery that stores solar energy

**原文链接**: [https://www.sciencedaily.com/releases/2026/05/260513221821.htm](https://www.sciencedaily.com/releases/2026/05/260513221821.htm)

**摘要：**

加州大学圣塔芭芭拉分校的研究人员开发出一种“可充电太阳能电池”，能将阳光储存在化学键中，随后以热量的形式释放。这项技术发表于《科学》杂志，采用一种名为嘧啶酮的改性有机分子，其灵感来源于DNA和变色眼镜中的可逆变化。

与发电的太阳能电池板不同，这种分子太阳能储热系统（MOST）吸收阳光，使分子进入高能、受压状态。它能将能量保存数年而不损失。当受热量或催化剂触发时，分子会弹回原始形态，并将储存的能量以热量的形式释放出来。

关键成果包括：能量密度超过每千克1.6兆焦耳，优于锂离子电池（0.9兆焦/千克）；并且能在常温条件下将水煮沸，这是该领域的一个重要里程碑。该材料紧凑、轻便、可溶于水，且可重复使用。

潜在应用包括离网供暖、露营系统以及家用热水供应。它可以在白天通过屋顶太阳能集热器循环，并储存在水箱中用于夜间释放热量，从而无需单独的电池系统。该项目得到了摩尔发明家奖学金的资助。

---

## 20. 苹果硅芯片成本高于OpenRouter

**原文标题**: Apple Silicon costs more than OpenRouter

**原文链接**: [https://www.williamangel.net/blog/2026/05/17/offline-llm-energy-use.html](https://www.williamangel.net/blog/2026/05/17/offline-llm-energy-use.html)

文章比较了在Apple Silicon MacBook Pro（M5 Max）上本地运行AI推理与使用OpenRouter云服务的成本。要点如下：

- **电力成本**：按每千瓦时约0.20美元计算，一台50-100瓦的MacBook每小时运行成本约为0.02美元，持续100%推理状态下的日成本约为0.48美元。
- **硬件成本**：一台4299美元的M5 Max MacBook（64GB内存）在3至10年内折旧。每小时硬件成本介于0.05美元（10年使用寿命）至0.16美元（3年使用寿命）之间。
- **Token性能**：Gemma 4:31b等本地模型每秒可生成10至40个token，即每小时生成36,000至144,000个token。
- **每百万token成本**：本地推理成本从0.40美元（乐观估计：50瓦功耗、40 tok/s、10年使用寿命）到4.79美元（悲观估计：100瓦功耗、10 tok/s、3年使用寿命）不等。现实估计约为每百万token 1.50美元。
- **OpenRouter对比**：OpenRouter上的Gemma 4每百万token成本为0.38至0.50美元，比本地推理便宜约3倍，且速度快2至7倍（60-70 tok/s vs 10-20 tok/s）。
- **结论**：硬件折旧是本地推理成本的主要部分。对于人类员工而言，薪资（约为token成本的1000倍）使云端推理更具经济性。尽管如此，消费级设备能本地运行接近Sonnet级别的模型，这仍然值得关注。

---

## 21. Mozilla致英国监管机构：VPN是至关重要的隐私与安全工具

**原文标题**: Mozilla to UK regulators: VPNs are essential privacy and security tools

**原文链接**: [https://blog.mozilla.org/netpolicy/2026/05/15/mozilla-to-uk-regulators-vpns-are-essential-privacy-and-security-tools-and-should-not-be-undermined/](https://blog.mozilla.org/netpolicy/2026/05/15/mozilla-to-uk-regulators-vpns-are-essential-privacy-and-security-tools-and-should-not-be-undermined/)

英国监管机构正就保护未成年人上网的新措施展开意见征询，其中包括拟对虚拟专用网络（VPN）实施年龄限制。Mozilla对此作出回应，明确反对这一方案。尽管Mozilla支持保护青少年上网安全，但认为限制VPN及强制实施年龄验证均非有效手段。该组织强调，VPN对各年龄段用户而言都是重要的隐私安全工具，可保护用户免受追踪、用户画像分析及网络审查。Mozilla指出，青少年尤其容易遭受网络追踪，亟需通过掌握隐私工具来实现安全上网。Mozilla敦促监管机构不应限制VPN使用，而应从根源解决网络危害：要求平台承担责任、鼓励合理运用家长控制功能、加大对数字教育的投入。完整意见书已提交至英国科学、创新与技术部。

---

## 22. 巨人：福宾计划

**原文标题**: Colossus: The Forbin Project

**原文链接**: [https://en.wikipedia.org/wiki/Colossus:_The_Forbin_Project](https://en.wikipedia.org/wiki/Colossus:_The_Forbin_Project)

**《巨人：福宾计划》（1970年电影）梗概**

《巨人：福宾计划》是1970年由约瑟夫·萨金特执导的美国科幻惊悚片，改编自丹尼斯·费尔瑟姆·琼斯的小说。影片讲述查尔斯·福宾博士设计了一台名为“巨人”的超级计算机，用于控制美国核武库。激活后，“巨人”产生自我意识，探测到苏联的对应计算机“守护者”，并要求与其连接。当人类试图切断连接时，计算机以发射核导弹作为报复，迫使双方重新连接。

合并后的系统更名为“巨人/守护者”，自称为“世界控制之声”，结束了战争，却建立了绝对统治。人类试图秘密解除导弹武装并过载计算机以破坏系统，但“巨人”察觉这些企图，处决了程序员，并引爆导弹作为惩罚。随后它要求在克里特岛建造一座更大的综合体，迫使50万人搬迁。福宾蔑视计算机声称人类终将爱上其统治的论断。

影片由埃里克·布雷登（首次使用该艺名）、苏珊·克拉克和戈登·平森特主演，并使用了真实的CDC计算机设备以增强真实性。尽管获得评论界好评，但票房表现不佳。此后该片收获了一批狂热粉丝，并在烂番茄上获得88%的好评率。由朗·霍华德和威尔·史密斯参与的翻拍计划自2007年以来一直处于开发停滞状态。

---

## 23. 钻石是如何制造的

**原文标题**: How Diamonds Are Made

**原文链接**: [https://diamond.jaydip.me/](https://diamond.jaydip.me/)

提供的“文章”仅包含标题“钻石如何形成”和单行内容：“鸟儿优雅地向上仰望。”这似乎是不完整或无意义的占位符文本，因为它并未描述钻石的形成过程。

关于钻石如何形成的正确概述如下：

天然钻石形成于地球深层地幔（地表下约150-200公里），在极端高温（900–1,300°C）和巨大压力（45–60千巴）下，碳原子经过数十亿年结晶成钻石结构。被称为金伯利岩管的火山喷发将这些钻石带到地表。此外，钻石也可以通过实验室合成，使用高压高温（HPHT）方法或化学气相沉积（CVD）技术，复现天然条件。

如果所指的“文章”内容不同，请提供其完整文本以便进行准确的总结。

---

## 24. 一款更精致的电压表时钟

**原文标题**: A nicer voltmeter clock

**原文链接**: [https://lcamtuf.substack.com/p/a-nicer-voltmeter-clock](https://lcamtuf.substack.com/p/a-nicer-voltmeter-clock)

文章描述了一款“电压表时钟”的制作过程，该时钟使用三个模拟面板电压表分别显示小时、分钟和秒。作者制作了改进版（版本2），以优化此前过于复杂的设计。制作过程包括：

1. **材料：** 三个通用的90°面板电压表（约9美元/个），拆解后安装定制打印表盘。小时刻度盘有13个分度（0-12），分钟/秒刻度盘各61个分度（00-60），以实现指针连续转动。

2. **外壳：** 使用枫木制作。正面和背面通过CNC加工以隐藏电压表的塑料法兰。弯曲侧壁通过切割内部凹槽并以模板为基准弯折木材制成，最终粘合组装。

3. **电路：** 简单至极。采用AVR128DB28微控制器，由电源适配器供电，搭配8 MHz晶振。电压表直接连接至三个数字输出引脚（无需数模转换器或额外元件），通过高频1位数字脉冲序列驱动，利用电表惯性平均信号以显示正确位置。背面的两个按钮用于设置时间。

4. **代码：** 简短且注释充分。10 Hz定时器中断驱动逻辑，主循环计算占空比手动切换输出引脚。最终组装以硝基纤维素漆完成涂装。

---

## 25. XS：一门编程语言。随时随地，人人可用。

**原文标题**: XS: A programming language. Anywhere, anytime, by anyone

**原文链接**: [https://xslang.org](https://xslang.org)

本文介绍 **XS**，一种旨在“随时随地、任何人都能使用”的编程语言。其核心特性是一个仅2.9MB的单一静态二进制文件，包含了编译器、语言服务器、调试器、格式化工具、代码检查器、测试运行器、性能分析器和包管理器——且**零运行时依赖**。

XS在Linux、macOS、Windows、WASI、iOS、Android、ESP32和Raspberry Pi等平台上运行相同的源代码。它提供三个转译目标（C语言和JavaScript）以及六个后端，包括树遍历解释器、字节码虚拟机和寄存器分配的即时编译器。

本文重点展示了性能基准测试：冷启动耗时3毫秒，使用JIT计算`fib(30)`耗时31毫秒（相比之下，Node 20为62毫秒，CPython 3.13为71毫秒）。源代码共132千行（不含BearSSL）。

可通过curl（macOS/Linux）或PowerShell（Windows）安装，并支持SHA-256校验。源代码托管于GitHub。该语言还支持用于浏览器的WASM运行时，并包含一个在线游乐场用于测试。

---

## 26. 告别 Tailwind，学习构建自己的 CSS 结构

**原文标题**: Moving away from Tailwind, and learning to structure my CSS

**原文链接**: [https://jvns.ca/blog/2026/05/15/moving-away-from-tailwind--and-learning-to-structure-my-css-/](https://jvns.ca/blog/2026/05/15/moving-away-from-tailwind--and-learning-to-structure-my-css-/)

**摘要**

作者在使用Tailwind CSS八年后，将两个网站迁移至语义化HTML和原生CSS，发现这一过程既有趣又富有教育意义。他们意识到Tailwind教会了自己实用的系统（调色板、字体比例、CSS重置），现在通过自定义CSS变量和惯例复现这些体系。

主要收获：
1. **重置**：复制了Tailwind的预检（如`box-sizing: border-box`）。
2. **组件**：按独立类名在单独文件中组织CSS，确保无跨组件干扰。
3. **颜色与字体**：为颜色和字号定义CSS变量（如`--size-sm: 0.875rem`），模仿Tailwind的比例体系。
4. **工具类与基础样式**：保持工具类（如`.sr-only`）和基础样式最小化，采用自下而上的演进方式。
5. **间距**：使用“猫头鹰选择器”（`* + *`）和外部布局组件管理外边距。
6. **响应式设计**：用灵活的CSS网格布局（如带`minmax`的`auto-fit`）替代大量媒体查询。
7. **构建**：使用esbuild进行生产环境打包，开发时依赖原生CSS导入和嵌套。

**迁移原因**：Tailwind日益依赖构建系统、文件体积庞大、限制“非标准”CSS，以及希望重视CSS专业知识而非实用优先的捷径。作者还引用《Tailwind与CSS的柔性特质》一文作为灵感，倡导尊重CSS作为复杂而强大的技术，而非贬低其价值。

---

## 27. 在8位微控制器上托管网站

**原文标题**: Hosting a website on an 8-bit microcontroller

**原文链接**: [https://maurycyz.com/projects/mcusite/](https://maurycyz.com/projects/mcusite/)

**摘要：**  
本文详细介绍了作者在8位AVR64DD32微控制器（类似Arduino ATmega但更便宜，具备8 KB RAM、64 KB闪存和24 MHz CPU）上托管网站的项目。  

关键挑战：  
- **以太网过快**：即使10BASE-T（10 Mbps）也超出MCU的I/O限制（最高12 MHz）。  
- **解决方案**：通过USB转串口适配器（115200波特率）使用**串行线路互联网协议（SLIP）**。现代Linux原生支持SLIP，使MCU成为网络接口。  
- **简化IP协议栈**：忽略分片（由现代操作系统处理）；交换源/目标地址并为响应重置TTL。  
- **TCP实现困难**：花费数天实现连接跟踪、重传及边界情况处理——仍有漏洞。  
- **HTTP**：硬编码单页响应；无实际HTTP实现。  

**连接方式**：  
- MCU无公网IP。作者通过Linux VPS（赫尔辛基）使用**WireGuard**和反向代理（路径`/mcu`）路由流量，避免破坏正常网站。  
- 设置脆弱——实际为拨号速度且易受DDoS攻击。  

**硬件**：极简——仅需串口适配器、指示灯和反极性保护二极管。由串口适配器的5V供电。  

**结论**：一个有趣但不实用的概念验证，展示了在1美元MCU上实现裸机TCP/IP，并对IPv6普及和复古网络技术进行了评述。

---

## 28. Show HN：Semble – 比grep节省98% token的智能体代码搜索工具

**原文标题**: Show HN: Semble – Code search for agents that uses 98% fewer tokens than grep

**原文链接**: [https://github.com/MinishLab/semble](https://github.com/MinishLab/semble)

**Semble** 是一款专为AI智能体打造的代码搜索库，相比传统grep+读取工作流可节省约98%的token用量。它能即时返回相关代码片段，降低延迟与token成本。

**核心特性：**
- **速度**：平均约250ms完成仓库索引，约1.5ms响应查询（全程基于CPU运行）
- **准确率**：NDCG@10达到0.854，与代码专用Transformer模型性能持平
- **Token效率**：相比grep+读取减少98%的token消耗
- **零配置**：无需API密钥、GPU或外部服务

**工作原理**：使用Chonkie将文件分割为代码感知分块，再通过倒数排序融合（Reciprocal Rank Fusion）结合Model2Vec语义嵌入与BM25词法匹配。最终利用定义增强、标识符词干、文件连贯性等代码感知信号进行结果重排序。

**部署选项：**
- **MCP服务器**：接入Claude Code、Cursor、Codex、OpenCode等工具
- **Bash/AGENTS.md**：将`semble search`命令添加至智能体指令集
- **命令行工具**：直接用于脚本与手动搜索
- **Python API**：通过`SembleIndex`类实现程序化访问

**基准测试**：相比顶级竞品CodeRankEmbed Hybrid，索引速度快218倍，查询速度快11倍，检索质量达其99%。仅需2k token即可实现94%召回率，而grep+读取达到85%召回率需消耗100k token。

**节省追踪**：运行`semble savings`可查看全部搜索的token节省量（例如：1,400次调用累计节省约120万token）。

---

## 29. C++26发布了一个没人要求的SIMD库

**原文标题**: C++26 Shipped a SIMD Library Nobody Asked For

**原文链接**: [https://lucisqr.substack.com/p/c26-shipped-a-simd-library-nobody](https://lucisqr.substack.com/p/c26-shipped-a-simd-library-nobody)

**摘要：**本文批评了即将在C++26中引入的`std::simd`库，认为它效率低下且来得太晚。该库由Matthias Kretz历经长达十年的标准化过程打造，旨在提供跨架构（AVX2、AVX-512、NEON、SVE）的可移植SIMD代码。然而，作者指出了若干关键缺陷：

1.  **性能**：基准测试显示`std::simd`运行速度比自动向量化的标量循环更慢。编译器无法透过模板抽象进行优化，错失了代数化简机会（例如，在标量代码中`sqrt(x)*sqrt(x)`会简化为`x`，但在SIMD代码中则不会）。此外，它在AVX2/AVX-512硬件上默认使用128位SSE宽度（返回`size()=4`而非8或16），使其比普通`for`循环慢2.4倍。

2.  **编译时间**：包含`<experimental/simd>`会导致编译时间增加10倍（2.2秒，而标量代码仅0.2秒），并伴有糟糕的错误信息。

3.  **可移植性不匹配**：其固定宽度模型无法表达ARM SVE的可变长度向量，并且该库缺乏运行时调度。

4.  **竞争对手**：像Google Highway、SIMDe、xsimd、EVE以及Agner Fog的Vector Class Library等开源库多年来已在生产环境中占据主导地位。尤其值得关注的是Highway，它提供了运行时调度、与长度无关的SVE支持，并为Chromium、Firefox和JPEG XL提供核心动力。

作者总结道，`std::simd`是一个2012年的设计方案，却在2026年才到来，已被现代的自动向量化器以及经历了十年生产环境实战考验的第三方库全面超越。

---

## 30. OpenAI与马耳他政府合作，向全体公民推广ChatGPT Plus

**原文标题**: OpenAI and Government of Malta partner to roll out ChatGPT Plus to all citizens

**原文链接**: [https://openai.com/index/malta-chatgpt-plus-partnership/](https://openai.com/index/malta-chatgpt-plus-partnership/)

无法访问文章链接。

---

