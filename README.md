# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-06-21.md)

*最后自动更新时间: 2026-06-21 20:33:22*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 2 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 3 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 4 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 5 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 6 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 7 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 8 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 9 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 10 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 11 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 12 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 13 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 14 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 15 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 16 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 17 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 18 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 19 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 20 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 21 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 22 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 23 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 24 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 25 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 26 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 27 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 28 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 29 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 30 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 31 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 32 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 33 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 34 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 35 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 36 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 37 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 38 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 39 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 40 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 41 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 42 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 43 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 44 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 45 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 46 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 47 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 48 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 49 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 50 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 51 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 52 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 53 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 54 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 55 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 56 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 57 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 58 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 59 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 60 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 61 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 62 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 63 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 64 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 65 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 66 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 67 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 68 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 69 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 70 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 71 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 72 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 73 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 74 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 75 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 76 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 77 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 78 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 79 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 80 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 81 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 82 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 83 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 84 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 85 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 86 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 87 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 88 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 89 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 90 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 91 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 92 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 93 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 94 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 95 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 96 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 97 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 98 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 99 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 100 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 101 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 102 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 103 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 104 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 105 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 106 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 107 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 108 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 109 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 110 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 111 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 112 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 113 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 114 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 115 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 116 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 117 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 118 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 119 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 120 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 121 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 122 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 123 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 124 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 125 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 126 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 127 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 128 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 129 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 130 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 131 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 132 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 133 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 134 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 135 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 136 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 137 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 138 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 139 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 140 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 141 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 142 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 143 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 144 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 145 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 146 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 147 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 148 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 149 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 150 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 151 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 152 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 153 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 154 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 155 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 156 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 157 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 158 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 159 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 160 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 161 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 162 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 163 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 164 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 165 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 166 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 167 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 168 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 169 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 170 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 171 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 172 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 173 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 174 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 175 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 176 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 177 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 178 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 179 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 180 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 181 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 182 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 183 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 184 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 185 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 186 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 187 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 188 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 189 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 190 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 191 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 192 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 193 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 194 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 195 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 196 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 197 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 198 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 199 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 200 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 201 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 202 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 203 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 204 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 205 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 206 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 207 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 208 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 209 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 210 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 211 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 212 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 213 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 214 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 215 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 216 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 217 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 218 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 219 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 220 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 221 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 222 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 223 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 224 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 225 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 226 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 227 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 228 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 229 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 230 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 231 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 232 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 233 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 234 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 235 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 236 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 237 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 238 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 239 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 240 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 241 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 242 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 243 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 244 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 245 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 246 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 247 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 248 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 249 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 250 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 251 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 252 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 253 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 254 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 255 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 256 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 257 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 258 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 259 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 260 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 261 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 262 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 263 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 264 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 265 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 266 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 267 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 268 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 269 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 270 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 271 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 272 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 273 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 274 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 275 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 276 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 277 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 278 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 279 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 280 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 281 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 282 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 283 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 284 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 285 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 286 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 287 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 288 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 289 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 290 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 291 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 292 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 293 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 294 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 295 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 296 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 297 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 298 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 299 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 300 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 301 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 302 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 303 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 304 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 305 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 306 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 307 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 308 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 309 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 310 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 311 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 312 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 313 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 314 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 315 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 316 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 317 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 318 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 319 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 320 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 321 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 322 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 323 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 324 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 325 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 326 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 327 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 328 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 329 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 330 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 331 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 332 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 333 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 334 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 335 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 336 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 337 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 338 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 339 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 340 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 341 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 342 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 343 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 344 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 345 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 346 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 347 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 348 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 349 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 350 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 351 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 352 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 353 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 354 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 355 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 356 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 357 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 358 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 359 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 360 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 361 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 362 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 363 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 364 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 365 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 366 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 367 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 368 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 369 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 370 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 371 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 372 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 373 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 374 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 375 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 376 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 377 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 378 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 379 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 380 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 381 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 382 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 383 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 384 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 385 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 386 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 387 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 388 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 389 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 390 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 391 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 392 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 393 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 394 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 395 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 396 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 397 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 398 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 399 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 400 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 401 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 402 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 403 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 404 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 405 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 406 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 407 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 408 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 409 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 410 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 411 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 412 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 413 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 414 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 415 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 416 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 417 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 418 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 419 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 420 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 421 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 422 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 423 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 424 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 425 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 426 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 427 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 428 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 429 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 430 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 431 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 432 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 433 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 434 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 435 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 436 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 437 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 438 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 439 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 440 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 441 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 442 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 443 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 444 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 445 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 446 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 447 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 448 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 449 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 450 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 451 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 452 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 453 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 454 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 455 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 456 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
