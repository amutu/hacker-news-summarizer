# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-05-17.md)

*最后自动更新时间: 2026-05-17 20:32:28*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 2 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 3 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 4 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 5 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 6 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 7 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 8 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 9 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 10 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 11 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 12 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 13 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 14 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 15 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 16 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 17 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 18 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 19 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 20 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 21 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 22 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 23 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 24 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 25 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 26 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 27 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 28 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 29 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 30 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 31 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 32 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 33 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 34 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 35 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 36 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 37 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 38 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 39 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 40 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 41 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 42 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 43 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 44 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 45 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 46 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 47 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 48 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 49 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 50 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 51 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 52 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 53 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 54 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 55 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 56 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 57 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 58 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 59 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 60 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 61 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 62 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 63 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 64 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 65 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 66 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 67 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 68 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 69 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 70 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 71 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 72 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 73 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 74 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 75 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 76 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 77 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 78 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 79 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 80 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 81 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 82 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 83 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 84 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 85 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 86 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 87 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 88 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 89 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 90 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 91 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 92 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 93 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 94 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 95 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 96 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 97 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 98 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 99 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 100 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 101 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 102 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 103 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 104 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 105 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 106 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 107 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 108 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 109 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 110 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 111 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 112 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 113 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 114 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 115 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 116 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 117 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 118 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 119 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 120 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 121 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 122 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 123 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 124 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 125 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 126 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 127 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 128 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 129 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 130 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 131 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 132 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 133 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 134 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 135 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 136 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 137 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 138 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 139 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 140 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 141 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 142 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 143 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 144 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 145 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 146 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 147 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 148 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 149 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 150 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 151 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 152 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 153 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 154 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 155 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 156 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 157 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 158 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 159 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 160 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 161 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 162 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 163 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 164 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 165 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 166 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 167 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 168 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 169 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 170 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 171 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 172 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 173 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 174 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 175 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 176 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 177 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 178 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 179 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 180 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 181 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 182 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 183 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 184 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 185 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 186 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 187 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 188 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 189 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 190 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 191 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 192 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 193 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 194 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 195 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 196 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 197 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 198 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 199 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 200 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 201 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 202 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 203 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 204 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 205 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 206 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 207 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 208 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 209 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 210 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 211 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 212 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 213 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 214 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 215 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 216 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 217 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 218 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 219 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 220 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 221 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 222 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 223 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 224 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 225 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 226 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 227 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 228 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 229 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 230 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 231 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 232 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 233 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 234 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 235 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 236 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 237 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 238 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 239 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 240 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 241 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 242 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 243 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 244 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 245 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 246 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 247 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 248 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 249 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 250 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 251 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 252 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 253 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 254 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 255 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 256 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 257 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 258 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 259 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 260 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 261 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 262 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 263 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 264 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 265 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 266 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 267 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 268 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 269 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 270 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 271 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 272 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 273 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 274 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 275 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 276 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 277 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 278 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 279 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 280 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 281 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 282 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 283 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 284 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 285 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 286 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 287 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 288 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 289 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 290 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 291 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 292 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 293 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 294 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 295 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 296 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 297 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 298 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 299 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 300 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 301 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 302 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 303 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 304 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 305 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 306 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 307 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 308 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 309 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 310 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 311 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 312 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 313 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 314 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 315 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 316 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 317 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 318 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 319 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 320 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 321 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 322 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 323 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 324 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 325 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 326 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 327 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 328 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 329 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 330 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 331 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 332 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 333 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 334 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 335 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 336 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 337 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 338 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 339 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 340 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 341 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 342 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 343 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 344 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 345 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 346 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 347 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 348 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 349 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 350 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 351 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 352 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 353 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 354 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 355 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 356 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 357 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 358 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 359 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 360 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 361 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 362 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 363 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 364 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 365 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 366 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 367 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 368 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 369 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 370 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 371 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 372 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 373 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 374 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 375 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 376 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 377 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 378 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 379 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 380 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 381 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 382 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 383 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 384 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 385 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 386 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 387 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 388 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 389 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 390 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 391 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 392 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 393 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 394 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 395 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 396 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 397 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 398 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 399 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 400 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 401 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 402 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 403 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 404 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 405 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 406 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 407 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 408 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 409 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 410 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 411 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 412 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 413 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 414 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 415 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 416 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 417 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 418 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 419 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 420 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 421 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
