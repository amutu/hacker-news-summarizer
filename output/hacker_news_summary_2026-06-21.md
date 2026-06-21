# Hacker News 热门文章摘要 (2026-06-21)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. JSON-LD 个人网站解析

**原文标题**: JSON-LD Explained for Personal Websites

**原文链接**: [https://hawksley.dev/blog/json-ld-explained-for-personal-websites/](https://hawksley.dev/blog/json-ld-explained-for-personal-websites/)

本文介绍了如何使用JSON-LD（JSON链接数据）为个人网站添加结构化数据，以提升搜索引擎和大型语言模型对网站内容的理解。JSON-LD通过`<head>`中的`<script type="application/ld+json">`标签添加，采用Schema.org词汇表。

涵盖的关键节点：

- **WebSite**：描述整个网站（名称、URL、语言、发布者）。完整版放在首页，其他页面可用精简版。
- **WebPage**：代表页面本身，包含面包屑导航链接。
- **Person**：个人网站必备，定义作者姓名、图像、国籍、所属机构及社交资料（`sameAs`）。每个页面均需包含。
- **ProfilePage**：用于“关于”页面，链接至Person节点。
- **SoftwareApplication**：描述软件项目（名称、类别、操作系统、价格——免费设为0）。
- **BreadcrumbList**：在搜索结果中显示页面层级，适用于较长路径。
- **CollectionPage**：用于列表页面（如博客索引、链接页面）。
- **Blog**：在博客首页作为博文的容器。
- **BlogPosting**：为单篇博文添加元数据（标题、发布日期、作者、图像、许可协议）。

最佳实践包括：使用唯一的`@id`哈希，在不同页面复用节点引用（例如`#person`），以及添加`sameAs`链接以消除歧义。作者强调，为了获得更丰富的搜索结果预览和更准确的大语言模型引用，应尽可能描述详实而非仅保持精简。

---

## 2. 优先选择重复而非错误的抽象（2016）

**原文标题**: Prefer duplication over the wrong abstraction (2016)

**原文链接**: [https://sandimetz.com/blog/2016/1/20/the-wrong-abstraction](https://sandimetz.com/blog/2016/1/20/the-wrong-abstraction)

**《桑迪·梅茨：重复优于错误的抽象》概要**

桑迪·梅茨认为，错误的抽象远比代码重复代价高昂。她描述了一种常见的破坏性模式：开发者（程序员甲）发现重复代码后将其提取为抽象（方法或类），便不再深究。随着时间推移，新需求无法完美适配该抽象。后续的程序员（程序员乙、丙）不断添加参数和条件逻辑，强制抽象处理新情况。代码最终沦为缠绕着条件语句的混乱结构，既难理解又脆弱。

梅茨指出，现有代码通过“沉没成本谬误”施加强大影响——代码越复杂混乱，我们越感到有压力要保留它，即使它已阻碍开发进程。

她的解决方案反直觉却有效：**以退为进**。通过内联将抽象代码重新放回每个调用处，再删除各调用方不需要的部分。此举能清除错误抽象与复杂条件语句，揭示每个调用方的真实独特需求。只有在此之后，才应重新提炼真正的重复代码，构建更好的抽象。

核心建议是：尽早放弃错误抽象。前进最快的方式往往始于后退——不是撤退，而是向更好方向前进。该方法能减少痛苦、加速功能开发，并造福所有未来的开发者。

---

## 3. 《超越一切理性》（免费《横扫千军》风格即时战略游戏）

**原文标题**: Beyond All Reason (Free Total Annihilation Inspired RTS)

**原文链接**: [https://www.beyondallreason.info](https://www.beyondallreason.info)

**《Beyond All Reason》文章摘要**

《Beyond All Reason》（BAR）是一款受《横扫千军》启发、免费开源的即时战略游戏。游戏以宏大的电影化战斗为特色，包含数千个完全模拟的单位、弹射物和可破坏地形。它强调战略深度：地形形态决定可行战术，山脉会阻挡雷达，核战争则会改变地貌。

玩家可指挥超过10个兵种级别，包括巨型实验单位，操控两大主要阵营（Armada与Cortex），第三阵营（Legion）正在开发中。核心玩法在于平衡资源收入与军事生产，既可实施精准的早期突袭，也可组建压倒性的后期部队。

该游戏受到玩家和评论家（包括克里斯·泰勒）的广泛赞誉，他们称赞其精良品质、持续更新及令人上瘾的规模——常被称为《星际争霸2》以来最好的RTS。值得关注的是，经过七年开发，BAR正与发行商Hooded Horse合作，准备在Steam正式发布。

主要特色包括世界级的操作体验、动态PVE模式（Raptors与Scavengers）以及专注的社区。文章还展示了《Vittra》和《永恒之果》等最新地图，并提供指南、单位对比和开发者日志的链接。BAR被形容为献给该类型游戏的一封"情书"，如今正迈向专业化。

---

## 4. (如何用Python编写一个Lisp解释器) (2010)

**原文标题**: (How to Write a (Lisp) Interpreter (In Python)) (2010)

**原文链接**: [https://norvig.com/lispy.html](https://norvig.com/lispy.html)

以下是文章的精要总结：

本文讲解了如何用Python基于Scheme方言构建一个名为Lispy的Lisp解释器。文章强调，正如Steve Yegge和Alan Kay所言，理解解释器是理解计算机工作原理的关键。

该解释器包含两个主要部分：**解析**（将代码转换为抽象语法树）和**执行**（评估该语法树）。Lispy的解析器通过在括号周围添加空格并拆分来对输入进行分词，然后构建嵌套列表。`eval`函数根据Scheme的简洁语法处理这些列表——基础版本仅有五种语法形式：变量引用、数字字面量、条件语句（`if`）、定义（`define`）和过程调用。

第一个语言“Lispy计算器”支持算术运算、条件判断和变量定义。它使用一个包含标准数学和列表操作的全局环境。第二个语言“完整Lispy”则增加了`quote`、`set!`（赋值）和`lambda`（匿名过程），从而能够创建具有局部变量作用域的用户自定义函数。

读取-求值-输出循环（REPL）支持交互式使用。文章证明了Scheme极简的语法（仅需括号和五个关键字）与Python或Java等语言形成了鲜明对比，使其成为教授解释器基础原理的理想选择。完整代码简洁且功能完备，展示了实现一个可运行的语言解释器是多么简单。

---

## 5. Claude上的身份验证

**原文标题**: Identity verification on Claude

**原文链接**: [https://support.claude.com/en/articles/14328960-identity-verification-on-claude](https://support.claude.com/en/articles/14328960-identity-verification-on-claude)

以下是文章的简要总结：

Anthropic正在针对特定使用场景实施身份验证，以防止滥用、执行政策并遵守法律要求。该流程使用第三方合作伙伴**Persona Identities**，需要提供有效的**政府签发带照片身份证件**（护照、驾照或国民身份证）以及带有摄像头的设备进行实时自拍。验证通常可在五分钟内完成。

数字身份证、复印件、非政府签发证件及临时纸质身份证件均不被接受。数据通过加密保护；Anthropic是数据控制方，但图像由Persona存储而非Anthropic，且仅用于验证目的——不会用于模型训练或与第三方共享。

若验证失败，用户可以重试或联系客服。若因违反政策、所在地区不受支持或未满18岁使用，账号可能被封禁；被封禁用户可通过平台申诉。如有疑问，用户可通过在线表单联系。

---

## 6. 可销售软件的最小可行单元

**原文标题**: The minimum viable unit of saleable software

**原文链接**: [https://brandur.org/minimum-viable-unit](https://brandur.org/minimum-viable-unit)

**摘要**

Brandur认为，在人工智能时代，尽管大语言模型降低了定制开发成本，付费软件产品仍存在“可行区间”。他提出了“可销售软件最低可行单元”的概念：低于此价格点，用大模型自建比购买更划算。

**核心观点：**

1. **大语言模型并未让软件免费**——开发仍需人工监督、反馈循环和持续维护。一名年薪20万美元的工程师构建Jira的克隆产品，需要数月才能与每月400美元的订阅费用持平。

2. **自建阈值**——对于昂贵产品（如Salesforce，50个席位每月2.5万美元），克隆开发具有经济可行性（需1.5名全职工程师）。但对于价格适中的工具，购买仍更合理。

3. **可行区间**——产品需满足：  
   - 具备足够创新性，大语言模型难以简单复制  
   - 定价足够低，不会刺激用户自建  
   - 总许可成本低于累计开发与维护费用

4. **River案例**——Brandur的项目River（Go/Postgres任务队列）对最多20名开发者收取每月125美元，其高级功能需要精心的API设计才能复刻。他认为该产品位于最低可行单元阈值之上。

**结论：** 虽然大语言模型改变了“购买vs自建”的权衡，但具有真正创新性且定价合理的软件仍能支撑小型企业的可持续运营。

---

## 7. Show HN：CleverCrow：为您喜爱的项目提供代币

**原文标题**: Show HN: CleverCrow: give tokens to your favorite projects

**原文链接**: [https://clevercrow.io](https://clevercrow.io)

**CleverCrow 简介**

CleverCrow 是一个颠覆AI开发模式的平台：它不再让随机生成的AI拉取请求淹没维护者的队列，而是让社区为自己关心的特定开源问题提供资金。

**运作方式：**

1. **支持者提供资金**，针对未解决的开源问题（或整个仓库）。资金汇集，直到积累到足够的金额，维护者才会开始工作。

2. **维护者保持控制：** 他们在沙盒中审查AI代理起草的方案（无git访问权限），批准方案后，代理在独立环境中编码和测试，并生成草稿拉取请求。

3. **迭代审查：** 维护者最多可要求五轮修订。未经批准，不会合并任何内容。

4. **公平计费：** 每次运行仅扣除代币成本及20%的平台费用。**未使用的资金将在合并或关闭后**退还到支持者的钱包。

**核心差异化优势：**
- **社区资助的计算资源** – 支持者付费；维护者无需自掏腰包
- **强安全边界** – AI代理在无凭证的沙盒中运行；独立的锁定服务负责应用差异
- **可预测的小额承诺**（5美元，而非500美元） – 降低支持者的参与门槛
- **支持者可招募维护者** – 为未注册仓库的问题提供资金，会生成邀请函发送给维护者

该平台针对的是被低质量AI贡献淹没的开源维护者，以及希望快速修复所依赖依赖项的社区成员。

---

## 8. 一张软盘上的嵌入式Linux

**原文标题**: An Embedded Linux on a Single Floppy

**原文链接**: [https://github.com/w84death/floppinux](https://github.com/w84death/floppinux)

**FLOPPINUX 概述**

FLOPPINUX 是一套完整的开源Linux发行版，可完全装进一张1.44MB软盘。它专为在极简硬件上运行而设计，仅需Intel 486DX 33MHz处理器、20MB内存及一个软驱。该项目旨在复活老旧硬件、支持嵌入式系统并服务于教育场景。

核心特性包括：支持i486架构的最新Linux内核（6.14.11）、Vi文本编辑器、基础文件操作工具以及264KB持久化存储空间。FLOPPINUX可直接启动进入可用的Linux终端，并完全支持自定义。

项目提供可下载的软盘镜像（1.44MB）、含源代码的GitHub仓库，以及用于构建专属版本的教程工作坊。社区资源涵盖技术文章、视频演示及Hackaday、Hacker News、XDA-Developers等平台上的讨论。

FLOPPINUX为自由开源软件，开发工作通过Liberapay捐赠获得支持。项目邀请用户探索、改造并利用这款极简Linux发行版创造趣味应用。

---

## 9. AMD MI355X 占用率计算：从基本原理出发的指南

**原文标题**: Occupancy Math on the AMD MI355X: A From-First-Principles Guide

**原文链接**: [https://indianspeedster.github.io/blog/occupancy-math-mi355x/](https://indianspeedster.github.io/blog/occupancy-math-mi355x/)

## 摘要

本文提供了一份基于第一性原理的AMD MI355X GPU（CDNA4架构）占用率计算指南。占用率定义为SIMD单元中波前槽位被填充的比例（每个SIMD最多8个波前，每个CU共32个），其值由四种限制器中最先耗尽的那一种决定：**向量寄存器（VGPR）、标量寄存器（SGPR）、局部数据共享（LDS）或工作组/屏障槽位。**

关键架构细节：每个CU包含4个SIMD单元，每个SIMD拥有512项/通道的VGPR文件（常规寄存器与累加寄存器共享）、约800个SGPR，以及160 KB的LDS（4个SIMD共享）。寄存器文件为每个SIMD独享，而LDS为每个CU共享——这对正确计算至关重要。

每个限制器的占用率公式为：`floor(硬件预算 / 每个波前或工作组的成本)`。LDS的计算结果是以工作组/CU为单位，需先通过工作组与波前的比例转换为波前/SIMD，再与寄存器限制进行比较。

具体实例（MXFP8 GEMM计算块：256线程、128个VGPR、32 KB LDS）：
- **CDNA3**（64 KB LDS）：LDS限制为2个波前/SIMD → **25%占用率**（受LDS限制）
- **CDNA4**（160 KB LDS）：LDS允许5个波前，VGPR限制为4个 → **50%占用率**（受寄存器限制）

本文的核心观点：**最大化占用率通常并非正确目标。** 吞吐量取决于矩阵引擎的利用率，而非SIMD的满载程度。一项微基准测试表明，即使占用率急剧下降，矩阵核心仍能保持约97%的峰值性能，这证明指令级并行（ILP）和精细的寄存器使用比原始占用率数字更为重要。

---

## 10. 用APL编写的3D体素游戏引擎

**原文标题**: A 3D voxel game engine written in APL

**原文链接**: [https://github.com/namgyaaal/avoxelgame](https://github.com/namgyaaal/avoxelgame)

本文介绍了一个用APL编写的3D体素游戏引擎，该引擎作为实验性赌注而创建，用于测试APL在游戏开发中的适用性。该引擎高度实验性且存在较多错误。

**操作说明：** 标准WASD移动、空格跳跃、鼠标视角、Q退出、I显示渲染信息、F切换无碰撞模式、L锁定/解锁鼠标、数字键1-5选择方块。

**系统

**安装配置：** 在macOS/Linux系统上，用户必须通过CMake构建并安装LSE，将生成的库文件与SDL3文件放置在同一目录。游戏通过`./main.apls`运行。在Windows系统上，编译需要SDL3开发库；可通过Dyalog会话输入`]link.create # ./avg`和`state.Play`运行游戏。着色器已预打包，但可通过编辑GLSL文件并运行`compile_shaders.sh`进行修改，需安装DirectX Shader Compiler、glslc和spirv-cross。

**已知问题：** Windows系统性能显著下降、DirectX12后端不受支持、单次会话无法多次运行游戏、可能发生系统错误999以及内存泄漏。

**致谢：** 纹理素材由Madeline Vergani（@RubenVerg）提供。

---

## 11. 15分钟家庭莱姆病蜱虫检测

**原文标题**: 15-minute at-home Lyme disease tick test

**原文链接**: [https://www.bostonglobe.com/2026/06/17/business/lyme-disease-tick-test/](https://www.bostonglobe.com/2026/06/17/business/lyme-disease-tick-test/)

**莱姆警报蜱虫检测文章摘要**

莱姆警报是一种新型家用莱姆病检测工具，但检测对象是蜱虫而非人类。用户需将最多五只蜱虫研磨于塑料容器中，插入经化学处理的试纸条，若存在莱姆病菌则试纸变色。15分钟即可获得结果，远快于耗时一周、费用50至450美元的实验室检测。该检测售价40美元，将于八月上市。

创始人艾琳·达维奇是儿科骨科医师助理兼麻省理工学院斯隆商学院毕业生，她研发此检测旨在减少不必要的就医和抗生素使用。她指出高风险地区超半数蜱虫携带莱姆病菌，但近半数并未携带。72小时内快速治疗可预防重症。

全球莱姆联盟的阿尔敏·阿拉埃迪尼博士提醒，假阳性可能引发恐慌，且该检测无法识别如α-半乳糖综合征等其他蜱传疾病。达维奇承认这一局限，并计划未来推出针对其他病原体的版本。

莱姆警报还配备智能手机应用程序，用于匿名上报蜱虫位置，结合NASA卫星数据与动物迁徙模式，通过人工智能预测疾病传播趋势。其目标是改善公共卫生监测，并为蜱虫叮咬受害者争取治疗先机。

---

## 12. Wildcard (YC W25) 正在招聘一名应用机器学习工程师

**原文标题**: Wildcard (YC W25) is hiring an applied ML engineer

**原文链接**: [https://www.ycombinator.com/companies/wildcard/jobs/SEmo4di-founding-applied-ml-engineer](https://www.ycombinator.com/companies/wildcard/jobs/SEmo4di-founding-applied-ml-engineer)

**概要：** Wildcard（YC W25）正在招聘创始应用机器学习工程师，负责其面向电商品牌的智能体商务优化平台，帮助品牌管理在AI购物智能体中的可见度。公司由Kaushik Mahorker（前Scale AI成员）创立，月增长率达50%。

**职位：** 这是首位工程岗——并非加入团队，而是组建团队。职责融合产品工程、应用机器学习及客户对接工作，包括构建定制ML模型、归因系统、排序/评估系统、提示词发现、智能体及可扩展基础设施。

**

**薪酬：** 薪资13万-25万美元 + 0.50%-4.00%股权。工作地点旧金山，仅限美国公民/签证持有者。

**面试流程：** 快速沟通、工程挑战、1-2天工作试岗，随后发放录用通知。

---

## 13. Loupe – 一款提升用户对原生应用可见数据认知的iOS应用

**原文标题**: Loupe – A iOS app that raises awareness about what native apps can see

**原文链接**: [https://github.com/mysk-research/loupe](https://github.com/mysk-research/loupe)

**Loupe 应用简介**

Loupe 是一款免费开源的 iOS 和 iPadOS 应用，通过向用户展示其设备在静默状态下向应用暴露的数据，来演示设备指纹识别技术。该应用读取 iOS 公共 API（任何第三方应用均可调用）中的真实值，并以原始形式（未经聚合或哈希处理）呈现。其目的是提高人们对应用如何在不获取姓名、邮箱或位置等个人信息的情况下识别设备的认知。

指纹识别信号根据获取成本分为三个层级：被动（无需提示，例如区域设置、时区、电池）、需要权限（需 iOS 弹窗授权，例如通讯录、位置）以及高级（侧信道技术，例如 URL scheme 探测和钥匙串持久化）。

隐私是核心功能：除非用户主动导出，否则任何数据都不会离开设备，也不会上传或共享。该应用几乎完全由 AI 编码工具构建。它需要 Xcode 26 或更高版本，使用文件夹引用以方便添加文件，并且也支持 macOS 构建（尽管尚未完全完善）。

该项目采用 MIT 许可证，而应用名称、标志和设计文件版权归 Mysk 所有。开发者鼓励用户通过尝试其以隐私优先的浏览器 Psylo 来提供支持。

---

## 14. 开发者不懂CORS（2019）

**原文标题**: Developers don't understand CORS (2019)

**原文链接**: [https://fosterelli.co/developers-dont-understand-cors](https://fosterelli.co/developers-dont-understand-cors)

**概要：**

这篇2019年的文章指出，许多Web开发者误解了CORS（跨源资源共享），并以Zoom的一个漏洞作为警示案例。Zoom在用户机器上运行本地Web服务器，以便在点击会议链接时打开原生应用。Zoom没有采用带有正确CORS头部的标准AJAX请求，而是通过将服务器响应编码在图片尺寸中绕过了浏览器安全机制——这种"黑客手段"允许任意网站与本地服务器通信。这造成了重大漏洞，因为互联网上的每个网站都能触发特权操作（例如未经同意启动应用）。

作者纠正了原始漏洞报告中的一个误解：Chrome*确实*会针对localhost遵守CORS规则。Zoom本可以通过实现一个将`Access-Control-Allow-Origin`头部设置为`https://zoom.us`的REST API，并利用内容安全策略阻止iframe嵌入来保障该功能安全。然而，不安全的变通方案却将用户暴露于风险之中。

除了Zoom之外，文章指出开发者对CORS普遍存在困惑，列举了不安全的默认配置和Stack Overflow上的建议。作者质疑CORS API是否过于复杂，或者是否需要更好的教育，但结论是：为图方便而绕过同源策略会导致严重的安全缺陷。正确理解和使用CORS对于安全的跨源通信至关重要。

---

## 15. 使用内存间接调用在Linux/x86-64上进行系统调用插桩，第一部分

**原文标题**: System call instrumentation on Linux/x86‑64 using memory‑indirect calls, part I

**原文链接**: [https://www.humprog.org/~stephen/blog/2026/06/15/#system-call-instrumentation-on-intel-negative-result](https://www.humprog.org/~stephen/blog/2026/06/15/#system-call-instrumentation-on-intel-negative-result)

本文探讨了在Linux/x86-64架构下对系统调用进行插桩的技术，重点研究如何用跳转或调用指令替换2字节的`syscall`指令以实现监控。核心难点在于，有效的跳转指令至少需要5字节，而`syscall`仅占2字节。

作者回顾了现有方法：
- **指令双关法**（E9Patch, Liteinst）：用5字节跳转覆盖`syscall`，将下一条指令的字节用作跳转偏移量的一部分，仅提供约256字节的有效范围。需要统计回退或虚拟内存技巧。
- **zpoline**：将`syscall`替换为`call *%rax`（因`%rax`保存系统调用号，为较小的非负值）。需在零地址映射可执行代码，这会破坏空指针保护，且需特权内存映射。

随后，作者研究了使用x86分段和远调用（`lcall`）的替代方案。在探索2字节和3字节`lcall`形式（如`lcall *(%rax)`）后，认为它们仍会访问`%rax`值附近的低端内存，因此不适用。然而，作者发现6字节远调用形式具有潜力，可提供精确（虽不可调）的内存访问。他们提出将此与指令双关法结合，以实现更全面的系统调用插桩覆盖。

---

## 16. 在Proxmox VE中轻松运行微型虚拟机

**原文标题**: Running MicroVMs in Proxmox VE, the Easy Way

**原文链接**: [https://taoofmac.com/space/blog/2026/06/18/1845](https://taoofmac.com/space/blog/2026/06/18/1845)

本文介绍了 **pve-microvm**，这是一个自定义的 Debian 软件包，它将 QEMU 轻量级 **microvm** 虚拟机类型作为一等客户机集成到 Proxmox VE 中。

**问题所在：** 传统虚拟机启动缓慢（由于 BIOS/GRUB/遗留硬件模拟，需 5-10 秒），而 LXC 容器共享主机内核且缺乏强隔离性。作者希望获得虚拟机级别的安全性，同时拥有容器般的启动速度。

**解决方案：** pve-microvm 剥离了所有遗留硬件（无 BIOS、无 GRUB、无 VGA、无 PCI 桥接），通过仅使用 virtio 设备直接启动主机提供的内核。这使得 Linux 客户机的**启动时间低于 300 毫秒**，并具备完整的 KVM 硬件隔离。

**主要特性：**
- 内置自定义的 12MB Linux 6.12.22 内核和 1MB initrd
- 基于 OCI 镜像（Debian、Alpine、Fedora 等）构建根文件系统
- 支持 21 种客户操作系统类型，包括 NetBSD、Plan9 和 OpenWrt
- 集成了 Proxmox 的 Web 界面、防火墙、存储（LVM、ZFS、Ceph）及备份系统
- 使用 PCIe virtio（非过渡型）实现可靠的 Linux 设备绑定；MMIO 传输方式适用于 NetBSD

**当前应用：** 作者在混合集群（从 Atom x5-Z8350 到 i7-12700）的 microVM 中运行着 Gitea、Caddy 代理、AI 智能体，甚至群晖 DSM 系统。

**局限性：** 不支持在线迁移；离线迁移可正常工作（共享存储上约需 2 秒）。内核位于宿主机而非客户机内部——这意味着可在不接触根文件系统的情况下实现单点内核更新。

---

## 17. Show HN：Pulse – Claude Code 的仪表盘，从手机批准工具调用

**原文标题**: Show HN: Pulse – Dashboard for Claude Code, approve tool calls from your phone

**原文链接**: [https://github.com/nikitadoudikov/claude-pulse](https://github.com/nikitadoudikov/claude-pulse)

**Pulse for Claude Code** 是一款本地仪表盘工具，通过提供实时可见性、成本追踪和远程审批功能来增强 Claude Code——所有数据均不会离开您的设备。

**主要功能：**
- **实时会话监控：** 通过 `127.0.0.1:4317` 的仪表盘追踪 Token 消耗、上下文填充量及 Claude 的活动状态
- **手机审批：** 通过 ntfy 推送带有“允许/全部允许/拒绝”按钮的通知，无需 Wi-Fi 或开放端口即可在任何地方使用
- **会话恢复：** 将崩溃的会话恢复为可读的文本记录；自动对活跃会话进行快照
- **搜索：** 对磁盘上所有会话进行全文搜索
- **预算控制：** 按小时/天/周设置用量限制并触发警报

**隐私与设置：** 零依赖、无遥测，仅以只读方式读取 Claude 的日志文件。可选手机通知功能需配置 ntfy 主题。局域网访问为可选启用。

**快速开始：** 运行 `npx pulse-for-claude-code`（需 Node 18+），使用 `claude-pulse install-hooks` 安装钩子，然后重启 Claude Code。

---

## 18. Show HN: TownSquare —— 一个轻量级的网站状态展示层

**原文标题**: Show HN: TownSquare, a tiny presence layer for websites

**原文链接**: [https://townsquare.cauenapier.com/](https://townsquare.cauenapier.com/)

**概述：**

TownSquare是一个轻量级网站“实时在场层”，通过让访问者实时看到彼此、移动并互动，使页面充满生机。无需账户或算法——只需在`</body>`标签前添加一个`<script>`标签。安装后，访客即刻出现，可通过点击/轻触或方向键移动，按T键聊天，按J键跳跃，或按H键击掌。

该产品强调简洁、趣味和人际连接，被描述为“实时共享的小瞬间”。添加免费，耗时约一分钟。TownSquare还拥有一个不断壮大的“公共广场”网络（每个网站拥有自己的社区），展示在互动地图上，并附有注册广场、交换消息和GitHub星标的实时统计数据。

文章包含现场演示和社区评价，并指出近期在Hacker News上的曝光导致了暂时的拥挤和延迟（已用欢迎消息妥善处理）。内容审核的改进正在积极开发中。

---

## 19. 开源维护者面临真实的倦怠问题

**原文标题**: Burnout is real for open source maintainers

**原文链接**: [https://openjsf.org/blog/burnout-is-real-for-open-source-maintainers](https://openjsf.org/blog/burnout-is-real-for-open-source-maintainers)

**摘要：开源维护者倦怠——Lodash 的故事**

John-David Dalton，广泛使用的 JavaScript 库 Lodash（npm 日下载量超一亿）的创建者，探讨了维护者倦怠的现实。Lodash 最初只是一个副业项目，后来演变为关键基础设施，但因母亲离世和友好离婚等重大人生事件，Dalton 的维护工作放缓。面对持续贡献的压力，他选择退后一步，一度担心失去相关性，却发现社区信任依然存在。

恢复过程大约花了五年时间，包括治疗、锻炼、编码之外的爱好以及设定更健康的工作边界。Dalton 强调，长期可持续性比持续产出更重要。如今，Lodash 在 OpenJS 基金会的支持下进入新阶段，引入了技术指导委员会、安全分类小组和现代工具，将责任从单一个人分担出去。

给生态系统的关键启示：许多被依赖的软件包由小团队或个人维护。支持维护者、贡献改进并尊重他们的边界有助于防止倦怠。关键在于，要记住每个依赖背后都是一个活生生的人。关于倦怠的坦诚对话凸显了开源未来需要治理和可持续维护模式。

---

## 20. 比例-积分-微分（PID）控制器

**原文标题**: Proportional-Integral-Derivative (PID) controllers

**原文链接**: [https://en.wikipedia.org/wiki/PID_controller](https://en.wikipedia.org/wiki/PID_controller)

以下是该文章的简要总结：

比例-积分-微分（PID）控制器是一种用于工业系统自动连续控制的反馈机制。其工作原理是计算误差值\( e(t) \)，即期望设定值（SP）与测量过程变量（PV）之差。随后，控制器通过三项作用实施校正：**比例（P）**分量响应当前误差大小，提供即时修正；**积分（I）**分量累积过往误差，消除稳态偏差；**微分（D）**分量根据误差变化率预测未来误差，减少超调并提升稳定性。

输出信号\( u(t) \)是这三项的加权和，其整定常数（\( K_p, K_i, K_d \)）根据具体应用调整。

该概念源于船舶转向控制，尤其由尼古拉斯·米诺尔斯基于1922年正式确立。20世纪30年代，实用工业应用随气动控制器兴起。PID控制器广泛适用于温度调节、电机速度控制和巡航控制等任务，但在处理具有过度延迟的系统时可能效果不佳。尽管不保证最优控制，PID因其简洁性及仅依赖过程变量响应的特点而被广泛使用。

---

## 21. 缓慢呼吸调节大脑功能与风险行为

**原文标题**: Slow breathing modulates brain function and risk behavior

**原文链接**: [https://www.cell.com/neuron/fulltext/S0896-6273(26)00339-9](https://www.cell.com/neuron/fulltext/S0896-6273(26)00339-9)

无法访问该文章链接。该网址似乎包含占位年份（2026），而非实际出版的卷期信息，因此服务器无法检索到具体文章。请提供有效链接或文章文本以供摘要。

---

## 22. Go语言中过多的空指针检查

**原文标题**: Excessive nil pointer checks in Go

**原文链接**: [https://konradreiche.com/blog/excessive-nil-pointer-checks-in-go/](https://konradreiche.com/blog/excessive-nil-pointer-checks-in-go/)

**摘要：**  
本文认为，Go 语言中过多的空指针检查往往意味着糟糕的设计，而非防御性编程。  

**核心观点：**  
1. **依赖项空检查**（例如使用前检查 `r.redis != nil`）是错误的。如果依赖项为空，错误应发生在构造阶段——事后检查只会掩盖问题。解决方案是快速失败：在初始化时验证，绝不使用空依赖项构造对象。  

2. **构造函数空检查**（对空输入返回错误）虽好一些，但仍未抓住关键。真正的解决方法是确保空值永不进入系统：在初始化处立即处理错误。  

3. **请求级空检查**（例如深层函数中的 `if req == nil`）重复了同样的错误。应在边界（HTTP 处理器、RPC 调度）验证不受信任的数据，随后在内部信任这些数据。深层代码不应重新验证。  

4. **静默失败的代价高于崩溃。** 掩盖错误会延迟发现、混淆根本原因，并需要通过复杂监控来重建丢失的信号。显式错误则响亮、即时且可追溯。  

5. **真正的修复**在于建立不变性：设计时确保边界处的状态有效，内部代码无需检查即可依赖这些状态。  

**结论：**  
空检查只应出现在信任边界或用于建模有意的可选性。到处散布的空检查意味着代码库从未定义其不变性——这是设计问题，而非安全措施。

---

## 23. 化石燃料占货运吨位的40%，却消耗了一半的燃料

**原文标题**: Fossil Fuels Are 40% of Freight Shipping Tonnage, but Half Its Fuel Use

**原文链接**: [https://cleantechnica.com/2026/06/16/shipping-freight-energy-fossil-cargo/](https://cleantechnica.com/2026/06/16/shipping-freight-energy-fossil-cargo/)

**摘要：**

本文认为，航运燃料争论存在误区，因为它聚焦于用替代燃料取代当前船用燃料，却忽视了能源转型本身将如何减少航运燃料需求。目前，化石燃料约占海运吨位的40%，但消耗了约一半的航运能源，因为它们属于长途大宗贸易。随着煤炭、石油和天然气需求下降，这些运输工作将基本消失，从而缩小燃料问题。

此外，铁矿石原料运输——另一项主要的长途贸易——预计也将因钢铁生产和回收方式的转变而减少。与此同时，不断增长的航运领域（如海上风电、渡轮、短途航线）更适合电气化，可采用电池、岸电和混合动力运营。

作者主张“分母优先”的方法：在化石货物减少、电气化扩展以及运营效率（慢速航行、风能辅助）应用之后，仅对剩余的燃料消耗工作进行燃料统计。此后，才应考虑将生物甲醇或生物柴油等残留液体燃料用于仍需高密度能源的较小规模航程。氨、氢和合成燃料因成本、安全及全生命周期问题而被批评为薄弱解决方案。最终，航运业的第一次燃料转型并非一种新分子，而是大量长途化石燃料运输的消失。

---

## 24. 鸡尾酒优化：一个整数规划问题

**原文标题**: Cocktail Optimization, an Integer Programming Problem

**原文链接**: [https://bunkum.us/2026/06/18/cocktail-ingredients-milp](https://bunkum.us/2026/06/18/cocktail-ingredients-milp)

本文讨论了作者从使用自定义整数规划算法转向现代求解器的经历，具体以“鸡尾酒优化”问题为背景。作者最初编写了一个自定义的分支定界算法，旨在利用有限的原料（例如30种原料的预算）最大化可调制的鸡尾酒数量。尽管作者对此感到自豪，但该算法速度缓慢，需要数分钟才能找到最优解，且常常无法确认最终结果。

随后，作者使用`glpk.js`（GLPK混合整数线性规划求解器的JavaScript移植版）测试了同一问题。与之形成鲜明对比的是，该求解器在毫秒级内便找到了最终最优解。对于30种原料，求解器确定可调制29种鸡尾酒。

文章强调了现代、研究密集型求解器相较于手工算法的巨大优势。作者总结道，这些求解器——基于数千小时工程研发的技术奇迹——完全超越自定义解决方案。本文既是一篇个人反思，也是利用成熟优化工具解决整数规划问题的实际力证。

---

## 25. 从图书馆租借缝纫机

**原文标题**: Renting a sewing machine from the library

**原文链接**: [https://www.bbc.com/future/article/20260618-the-weird-and-wonderful-libraries-of-finland](https://www.bbc.com/future/article/20260618-the-weird-and-wonderful-libraries-of-finland)

芬兰重新定义公共图书馆：从书籍借阅到社区服务中心，提供缝纫机、体育器材和会议室等远超传统范畴的共享资源。这一模式旨在促进民主、社会包容与实用资源共享。

**核心要点：**
- **功能转型：** 图书馆的价值不再以书籍借阅量衡量，而在于其促进社会运作的能力。赫尔辛基的奥迪图书馆提供活动空间、棋盘游戏及缝纫机等工具，体现务实共享文化。
- **国际对比：** 英美多所图书馆关闭之际，芬兰却在扩建图书馆网络。55%的芬兰人每月至少到访一次图书馆（英美年均人均访问量约2.5次）。
- **民主职能：** 法律要求图书馆必须促进民主、言论自由与公民参与。馆内提供数字援助（税务、养老金、简历指导），作为"共享客厅"促进平等与信任。
- **社会影响：** 一位难民出身的议员回忆，第一张借书卡曾是她归属感的象征。研究表明，图书馆每投入1美元可产生3-5美元社会效益，芬兰人将其评为最受珍视的公共服务。

芬兰人均图书馆投入达65.78欧元（英国仅10英镑），将图书馆定位为日常民主与包容的关键基础设施。

---

## 26. 康懋达CallBack 8020智能翻盖手机

**原文标题**: The Commodore Callback 8020 smart flip phone

**原文链接**: [https://www.wired.me/story/commodore-made-a-digital-detox-phone-that-isnt-dumb](https://www.wired.me/story/commodore-made-a-digital-detox-phone-that-isnt-dumb)

Commodore Callback 8020是一款专为数字排毒设计的新型翻盖手机，融合复古美学与有限的现代功能。该设备搭载Jolla的Sailfish OS系统，可运行WhatsApp、Uber和Spotify等基本安卓应用，但屏蔽社交媒体、浏览器和电子邮件等干扰性应用程序。专利待批的系统机制阻止侧载这些应用，不过用户可申请例外。

核心配置包括联发科Helio G81处理器、32GB microSD卡、定制FiiO耳机、耳机插孔、发烧级DAC、可拆卸电池、FM收音机，以及配备复古摄像机模式的4800万像素索尼摄像头。该手机支持T9文本输入或语音转录，可播放Commodore 64芯片音乐铃声与游戏，并设有LED通知灯。

首席执行官克里斯蒂安·辛普森在成为父亲后开发了这款手机，因发现其他排毒设备功能过于局限。该产品面向需要"周末备用机"的用户，通过物理闭合翻盖的动作示意远离屏幕，让有意断联更易实现。设备全球通用，售价500至640美元，6月30日开启预售。Commodore近期售出3万台C64 Ultimate机型，此次进军数字极简主义领域正由该收益支撑。

---

## 27. 一台DGX Spark上的两颗Qwen3模型：驻留计算

**原文标题**: Two Qwen3 models on one DGX Spark: the residency math

**原文链接**: [https://www.devashish.me/p/two-qwen3-models-on-one-dgx-spark](https://www.devashish.me/p/two-qwen3-models-on-one-dgx-spark)

**摘要：** 本文详述作者在单台DGX Spark（119.67 GiB统一内存）上，使用vLLM和LiteLLM同时运行两个Qwen3模型（80B FP8和4B）以实现智能体工作流的经历。关键挑战与解决方案包括：

1. **gpu_memory_utilization陷阱**：vLLM的该设置是*总*GPU内存的占比，而非*空闲*内存占比。两个共存进程的该值之和须低于约0.95，为CUDA开销留出空间。作者最终对80B模型设为0.80，对4B模型设为0.10。

2. **模型选择**：Qwen3-Next-80B-Thinking检查点忽略`tool_choice: "auto"`设置，从不发出工具调用，导致智能体SDK失效。切换至Instruct变体后问题解决。

3. **上下文长度增加破坏共驻**：将80B模型设为0.85/64k后，仅剩约12.5 GiB空闲内存，不足以满足4B模型14.36 GiB的需求。降级至0.80/32k并将4B模型降至0.10/16k后问题解决。

4. **经验性显存分配规则**：先加载较大模型，用`nvidia-smi`检查实际占用，再根据剩余内存减去约5 GiB开销来分配较小模型。对Qwen3-Next而言，Mamba状态对齐机制意味着将`max_model_len`减半并不会等比降低KV缓存需求。

---

## 28. 大脑并非为承受如此多的坏消息而设计

**原文标题**: The brain was not designed for this much bad news

**原文链接**: [https://www.sciencedaily.com/releases/2026/06/260614012006.htm](https://www.sciencedaily.com/releases/2026/06/260614012006.htm)

**摘要：**

本文认为，现代新闻消费压垮了为应对本地、即时威胁而进化的大脑。人类存在“消极偏见”——对负面信息赋予更高权重，因为历史上错过威胁可能致命。然而到2026年，我们古老的神经系统必须同时处理全球战争、金融冲击和气候灾难，导致普遍的“新闻疲劳”。

路透社研究所数据显示，全球40%的人现在主动回避新闻，创下有记录以来最高值。一项关于“问题性新闻消费”的研究发现，17%的美国成年人出现严重症状，其中61%报告频繁感到痛苦。当新闻针对少数族裔身份群体时，他们承受着更沉重的认知负担。

解决方案并非回避新闻——因为民主社会需要知情的公民。研究人员建议培养更健康的消费习惯：将新闻浏览限定在固定时段，选择深度文章而非情绪化的社交媒体碎片，区分信息与可采取的行动，识别旨在煽动情绪的“引战内容”。核心要义是：我们的大脑本非为如此大规模的信息输入而生，但我们可以有意识地进行调适。

---

## 29. 早期招聘漏斗两端现均告断裂

**原文标题**: The early hiring funnel is now breaking on both ends

**原文链接**: [https://hbr.org/2026/06/ai-has-broken-hiring-heres-how-to-fix-it](https://hbr.org/2026/06/ai-has-broken-hiring-heres-how-to-fix-it)

文章《AI已摧毁招聘流程，如何修复？》指出，生成式人工智能从根本上颠覆了传统的招聘方式。过去，雇主偏爱简历精美、面试表现优异的候选人。然而，如今AI工具让求职者能轻松生成完美简历和结构化应答，这些信号已不再可靠。面试中的"出色表现"变得可规模化且成本低廉，与候选人实际能力脱节。这给招聘者带来了严峻问题：从简历筛选到初面，招聘漏斗的早期阶段已全面失效。作者建议，企业必须摒弃这些过时的评估信号，采用更具实质性的新方法，才能识别真正的人才。

---

## 30. Linux 中 Epoll 与 io_uring 的对比

**原文标题**: Epoll vs. io_uring in Linux

**原文链接**: [https://sibexi.co/posts/epoll-vs-io_uring/](https://sibexi.co/posts/epoll-vs-io_uring/)

**摘要：**

本文比较了 Linux 的异步 I/O 机制：**epoll**（就绪模型）与 **io_uring**（完成模型）。作者以构建反向代理（TinyGate）为例，说明 epoll 需要**每次 I/O 事件执行两次系统调用**（epoll_wait + read/write），导致上下文切换开销高昂。2019 年引入的 io_uring（内核 5.1+）使用用户与内核空间之间的**共享环形缓冲区**。它在 I/O **完成**时（而非就绪时）通知，并支持批量操作——一次 io_uring_enter() 调用即可提交并收割大量 I/O，大幅减少系统调用。借助 `SQPOLL` 标志，稳态系统调用可趋近于零（但会占用一个内核线程的 CPU 资源）。

**主要区别：** epoll 需要注册步骤（epoll_ctl）加就绪检查；io_uring 则跳过两者——准备、提交和等待完成所需的步骤更少。代码示例展示了 epoll 的三次系统调用与 io_uring 更简化的流程。

**io_uring 其他特性：** 通过缓冲区注册和 `IORING_OP_SEND_ZC`（内核 6.0+）实现零拷贝 I/O；通过完成队列条目的 `res` 字段实现异步错误处理。

**结论：** 对于现代 Linux 系统（内核 ≥5.1），io_uring 是更优选择。作者主张放弃对旧内核的支持，因为 io_uring 为高性能异步 I/O 提供了重要的架构改进。

---

