# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-04-19.md)

*最后自动更新时间: 2026-04-19 20:41:21*
## 1. Vercel 2026年4月安全事件

**原文标题**: Vercel April 2026 security incident

**原文链接**: [https://www.bleepingcomputer.com/news/security/vercel-confirms-breach-as-hackers-claim-to-be-selling-stolen-data/](https://www.bleepingcomputer.com/news/security/vercel-confirms-breach-as-hackers-claim-to-be-selling-stolen-data/)

主要面向开发者的云平台Vercel于2026年4月披露一起安全事件，此前黑客声称已入侵其系统。该公司确认部分内部系统遭到未授权访问，但表示服务仍正常运行，仅少数客户受到影响。

此次披露源于名为"ShinyHunters"的威胁行为者在论坛发帖，声称要出售窃取的访问密钥、源代码和数据库信息等数据。该行为者还泄露了包含580名Vercel员工信息的文件，并分享了内部仪表盘截图。但ShinyHunters关联的其他行为者否认参与此事，且数据真实性无法独立核实。

Vercel表示正在事件响应专家协助下展开调查，已通报执法部门并联系受影响客户。公司建议用户作为预防措施检查并更新环境变量和密钥。尽管黑客声称曾与Vercel商讨200万美元赎金，该公司在初步报告中未公开确认任何谈判信息。

---

## 2. 溴元素瓶颈：冲突如何可能中断全球存储芯片生产

**原文标题**: The Bromine Chokepoint: How Strife Could Halt Production of World’s Memory Chips

**原文链接**: [https://warontherocks.com/cogs-of-war/the-bromine-chokepoint-how-strife-in-the-middle-east-could-halt-production-of-the-worlds-memory-chips/](https://warontherocks.com/cogs-of-war/the-bromine-chokepoint-how-strife-in-the-middle-east-could-halt-production-of-the-worlds-memory-chips/)

本文警告称，全球内存芯片生产因依赖以色列的溴而面临一个关键但被忽视的脆弱性。溴被加工成溴化氢气体，这是蚀刻DRAM和NAND闪存芯片的关键化学品，而这两种芯片是所有现代电子产品和人工智能基础设施的核心。

这一风险源于三个因素：1）主导内存芯片制造的韩国，其97.5%的溴来自以色列；2）用于半导体提纯溴的专业设施集中在以色列，其他地方没有即时的备用产能；3）这些生产设施位于以色列内盖夫沙漠，处于伊朗导弹射程内，即使未受直接打击也易受干扰。

供应冲击将立即产生全球性影响。由于库存仅够数周，三星和SK海力士等芯片制造商将被迫优先生产高利润的人工智能芯片，导致用于智能手机、个人电脑和军事系统的通用内存出现短缺和价格飙升。这将不成比例地影响发展中国家，并给美国国防和人工智能基础设施带来压力。

作者敦促韩国、美国和以色列协调行动，通过储备、将溴列为关键矿物以及最重要的——在以色列以外建设新的提纯产能（这一过程需要数年）等措施来降低风险。核心论点是，全球内存供应链存在一个单点故障，而当前政策并未解决这一问题。

---

## 3. 展示 HN：Faceoff – 一款用于追踪 NHL 比赛的终端界面

**原文标题**: Show HN: Faceoff – A terminal UI for following NHL games

**原文链接**: [https://www.vincentgregoire.com/faceoff/](https://www.vincentgregoire.com/faceoff/)

**Faceoff** 是一款基于终端的应用程序，允许用户实时追踪 NHL 冰球比赛。它提供全面的功能套件，包括带日期导航的实时赛程、自动刷新的比分以及详细的比赛视图（逐场播报、技术统计和得分摘要）。对于即将开始的比赛，它还提供赛前预览，包含守门员对比等对阵数据。

除了实时追踪外，该应用还包含联盟排名（支持多种视图）、各分类球员数据领先榜、可查看阵容和赛程的球队浏览器，以及带有职业生涯数据的详细球员资料。界面响应迅速，可自适应终端宽度，并以用户本地时区显示比赛时间。

该应用基于 Textual TUI 框架构建，并通过 Python 客户端使用 NHL 的公共 API。用户可通过 `uvx faceoff` 轻松运行，或通过 pip 安装。开发者声明，Faceoff 是一个非官方的粉丝制作项目，与 NHL 无任何关联。

---

## 4. 我用自己设计的编程语言编写了一个CHIP-8模拟器。

**原文标题**: I wrote a CHIP-8 emulator in my own programming language

**原文链接**: [https://github.com/navid-m/chip8emu](https://github.com/navid-m/chip8emu)

本文宣布了一个CHIP-8模拟器的创建，该项目模拟了1970年代微型计算机上使用的简单复古CHIP-8解释型编程语言。

关键点在于该模拟器是用作者自创的名为Spectre的编程语言编写的。要构建此模拟器，用户需安装Spectre工具链并编译主源文件。

该项目名为`chip8emu`，采用GPL-3.0-only许可证，由Navid M.创建。

---

## 5. 我学Unity的方式不对。

**原文标题**: I learned Unity the wrong way

**原文链接**: [https://darkounity.com/blog/how-i-learned-unity-the-wrong-way](https://darkounity.com/blog/how-i-learned-unity-the-wrong-way)

作者描述了自己学习Unity的过程：在掌握基础之前，就专注于着色器和复杂脚本这类高级且视觉效果突出的功能。这种“错误方式”导致了挫败感、低效的工作流程，以及项目脆弱易崩溃。

核心错误在于忽视了基础概念，如场景组织、基本的C#编程模式以及Unity的组件系统。由于跳过了这些，作者的知识体系建立在摇摇欲坠的基础上，无法有效调试或创建可扩展的系统。

转折点出现在作者退一步彻底学习基础教程，专注于可脚本化对象、事件系统和正确的项目架构等原则。这一重建的基础彻底改变了开发流程，带来了更清晰、更易维护的代码以及更大的信心。

关键启示是：扎实掌握基础对于在Unity中长期成功至关重要。文章建议初学者抵制直接跳入高级图形技术的诱惑，转而投入时间学习核心概念，因为这种基础知识最终能实现更快、更稳健的游戏开发。

---

## 6. A. J. 艾尔——《濒死之际所见》（1988）

**原文标题**: A. J. Ayer – ‘What I Saw When I Was Dead’ (1988)

**原文链接**: [https://www.philosopher.eu/others-writings/a-j-ayer-what-i-saw-when-i-was-dead/](https://www.philosopher.eu/others-writings/a-j-ayer-what-i-saw-when-i-was-dead/)

在1988年的文章中，无神论哲学家A. J. 艾耶尔讲述了他在心脏骤停后的濒死体验。他描述了一个生动的幻觉景象：他感知到一个痛苦的红光统治着宇宙，并感到必须修复时空中的一个缺陷，但这一努力最终失败了。

尽管承认这一体验很可能是心脏停止后大脑仍在运作所产生的错觉，但他注意到一个朋友有着相似的"红光"记忆，这形成了奇特的呼应。他利用这一事件从哲学角度审视了来世存在的可能性。

艾耶尔认为，即使意识在临床死亡后持续存在，也不能证明上帝或美好来世的存在。他引用了相信灵魂存续的无神论哲学家的观点。他还指出，关于人格同一性的哲学问题——即是什么让一个人在不同时间保持为同一个人——似乎需要一个连续存在的身体，他认为这一观点竟意外地与基督教肉体复活的教义相契合。

最终，艾耶尔得出结论：他的非凡经历并未为死后生命提供可信证据，这与他终生秉持的哲学观点——意识依赖于大脑——保持一致。

---

## 7. 《BYTE》杂志档案，始于1975年第1期

**原文标题**: Archive of BYTE magazine, starting with issue #1 in 1975

**原文链接**: [https://archive.org/details/byte-magazine-1975-09](https://archive.org/details/byte-magazine-1975-09)

**《BYTE》杂志第00卷第01期（1975年9月）摘要**

这是《BYTE》杂志于1975年9月发行的创刊号。本期确立了杂志对新兴个人及业余计算革命的关注，其封面主题“世界上最伟大的玩具”正是这一宗旨的缩影。

内容分为三个主题板块：
*   **前景：** 聚焦实用硬件项目与应用，包括回收利用旧集成电路、解读键盘接口，以及“生命”细胞自动机程序等文章。
*   **背景：** 提供基础知识，涵盖微处理器选择指南、RGS 008A微型计算机套件评测，以及构建串行接口和编写汇编器的教程。
*   **核心：** 包含杂志的核心介绍与社区内容，阐释了“什么是《BYTE》？”、其创刊故事、俱乐部新闻、书评、读者来信以及趣味文摘。

总体而言，这期创刊号为《BYTE》奠定了基调，使其成为面向爱好者的实践性技术资源。它在理论与即时可构建的项目之间取得平衡，反映了早期个人计算基于DIY套件的文化。内容涵盖硬件构建、软件编程和社区建设，旨在教育并赋能读者进入这一全新领域。

---

## 8. Notion泄露所有公开页面编辑者的电子邮件地址

**原文标题**: Notion leaks email addresses of all editors of any public page

**原文链接**: [https://twitter.com/weezerOSINT/status/2045849358462222720](https://twitter.com/weezerOSINT/status/2045849358462222720)

**概述：**

Notion存在一个安全漏洞，允许任何人查看所有编辑过公开页面的用户的电子邮件地址，即使没有Notion账户。当浏览器中禁用JavaScript时，此问题会出现。

在JavaScript关闭的情况下访问公开的Notion页面时，页面会显示原始的JSON数据。这些数据中包含一个部分，列出了每位文档贡献者的用户ID和**完整电子邮件地址**。

这意味着任何公开分享的Notion页面（如发布的路线图、博客文章或文档）都可能无意中将其编辑者的个人电子邮件地址暴露在公共互联网上。只需查看页面源代码或通过不执行JavaScript的工具访问页面，就会发生泄露。

该漏洞构成了严重的隐私侵犯，因为它绕过了Notion的正常界面和共享权限，在相关用户不知情或未同意的情况下暴露了可能敏感的联络信息。

---

## 9. 七种编程元语言（2022）

**原文标题**: The seven programming ur-languages (2022)

**原文链接**: [https://madhadron.com/programming/seven_ur_languages.html](https://madhadron.com/programming/seven_ur_languages.html)

本文认为，大多数编程语言都属于七种基本“元语言”之一，每种元语言代表了一种独特的思维与代码构建范式。学习同一元语言下的新语言较为容易，但在不同元语言之间转换则需要建立新的思维模型。

这七种元语言分别是：
1.  **ALGOL：** 最古老且最常见，基于赋值、条件判断和循环的序列（如 C、Java、Python）。
2.  **Lisp：** 以其括号化的前缀语法和强大的宏系统为特征，允许程序员重定义语言本身（如 Common Lisp、Clojure）。
3.  **ML（函数式）：** 以一等函数、递归迭代和精密的类型系统为核心（如 Haskell、OCaml）。
4.  **Self（面向对象）：** 纯粹基于对象间消息传递，通常在实时编程环境中运行（如 Smalltalk，它是许多面向对象语言的灵感来源）。
5.  **Forth（基于栈）：** 使用数据栈和逆波兰表示法，允许完全控制解析器与语法（如 Forth、PostScript）。
6.  **APL（基于数组）：** 通过简洁的符号运算符处理多维数组，使代码极为精炼（如 APL、J、K）。
7.  **Prolog（基于逻辑）：** 程序由事实与规则组成；运行时会搜索查询的解决方案（如 Prolog，SQL 是相关实例）。

作者建议所有程序员首先掌握 ALGOL 家族的语言，随后为实用目的学习 SQL（一种基于逻辑的语言）。探索其他范式有助于拓宽解决问题的工具箱，并为软件设计带来新的视角。

---

## 10. Claude Opus 4.6与4.7版本间系统提示的变化

**原文标题**: Changes in the system prompt between Claude Opus 4.6 and 4.7

**原文链接**: [https://simonwillison.net/2026/Apr/18/opus-system-prompt/](https://simonwillison.net/2026/Apr/18/opus-system-prompt/)

本文详细介绍了Claude Opus系统提示在2026年2月发布的4.6版本与4月发布的4.7版本之间的关键变化。作者通过模拟Git历史记录来突出这些差异。

主要更新包括将品牌更名为"Claude平台"，并新增了"Claude in Powerpoint"等工具。儿童安全指引大幅扩展并设置了专用XML标签，同时制定了更严格的拒绝处理规则。

为提升用户体验，新版提示要求Claude减少对话延续的强制性、降低冗长度并增强主动性。新增章节指示Claude应利用现有工具（如新的`tool_search`功能）处理细微歧义，而非立即要求用户澄清。

具体行为规范有所增删：新增指令禁止在怀疑饮食失调时提供精确营养建议，并防止在复杂问题上强迫用户进行"是/否"回答。同时移除了避免使用表情符号及"真诚地"等词汇的指引，推测是因新版模型已无需此类约束。关于特朗普总统任期的事实性说明也被删除，这反映了知识截止日期的更新。

文章指出，虽然Anthropic公开了系统提示，但完整工具描述并未公布。某用户提示显示当前有22个可用工具，作者认为这与4.6版本相比没有变化。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 2 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 3 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 4 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 5 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 6 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 7 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 8 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 9 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 10 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 11 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 12 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 13 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 14 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 15 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 16 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 17 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 18 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 19 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 20 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 21 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 22 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 23 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 24 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 25 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 26 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 27 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 28 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 29 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 30 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 31 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 32 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 33 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 34 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 35 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 36 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 37 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 38 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 39 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 40 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 41 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 42 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 43 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 44 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 45 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 46 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 47 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 48 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 49 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 50 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 51 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 52 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 53 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 54 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 55 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 56 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 57 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 58 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 59 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 60 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 61 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 62 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 63 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 64 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 65 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 66 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 67 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 68 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 69 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 70 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 71 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 72 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 73 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 74 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 75 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 76 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 77 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 78 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 79 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 80 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 81 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 82 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 83 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 84 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 85 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 86 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 87 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 88 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 89 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 90 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 91 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 92 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 93 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 94 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 95 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 96 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 97 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 98 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 99 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 100 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 101 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 102 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 103 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 104 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 105 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 106 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 107 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 108 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 109 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 110 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 111 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 112 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 113 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 114 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 115 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 116 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 117 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 118 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 119 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 120 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 121 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 122 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 123 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 124 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 125 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 126 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 127 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 128 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 129 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 130 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 131 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 132 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 133 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 134 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 135 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 136 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 137 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 138 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 139 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 140 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 141 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 142 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 143 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 144 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 145 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 146 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 147 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 148 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 149 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 150 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 151 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 152 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 153 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 154 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 155 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 156 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 157 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 158 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 159 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 160 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 161 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 162 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 163 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 164 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 165 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 166 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 167 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 168 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 169 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 170 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 171 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 172 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 173 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 174 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 175 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 176 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 177 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 178 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 179 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 180 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 181 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 182 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 183 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 184 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 185 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 186 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 187 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 188 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 189 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 190 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 191 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 192 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 193 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 194 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 195 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 196 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 197 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 198 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 199 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 200 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 201 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 202 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 203 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 204 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 205 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 206 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 207 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 208 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 209 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 210 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 211 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 212 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 213 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 214 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 215 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 216 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 217 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 218 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 219 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 220 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 221 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 222 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 223 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 224 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 225 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 226 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 227 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 228 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 229 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 230 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 231 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 232 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 233 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 234 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 235 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 236 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 237 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 238 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 239 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 240 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 241 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 242 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 243 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 244 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 245 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 246 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 247 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 248 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 249 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 250 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 251 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 252 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 253 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 254 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 255 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 256 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 257 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 258 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 259 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 260 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 261 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 262 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 263 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 264 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 265 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 266 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 267 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 268 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 269 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 270 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 271 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 272 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 273 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 274 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 275 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 276 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 277 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 278 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 279 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 280 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 281 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 282 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 283 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 284 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 285 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 286 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 287 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 288 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 289 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 290 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 291 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 292 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 293 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 294 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 295 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 296 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 297 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 298 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 299 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 300 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 301 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 302 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 303 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 304 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 305 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 306 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 307 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 308 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 309 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 310 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 311 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 312 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 313 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 314 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 315 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 316 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 317 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 318 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 319 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 320 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 321 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 322 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 323 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 324 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 325 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 326 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 327 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 328 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 329 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 330 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 331 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 332 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 333 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 334 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 335 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 336 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 337 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 338 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 339 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 340 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 341 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 342 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 343 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 344 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 345 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 346 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 347 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 348 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 349 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 350 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 351 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 352 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 353 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 354 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 355 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 356 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 357 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 358 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 359 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 360 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 361 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 362 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 363 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 364 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 365 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 366 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 367 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 368 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 369 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 370 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 371 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 372 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 373 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 374 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 375 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 376 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 377 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 378 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 379 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 380 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 381 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 382 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 383 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 384 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 385 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 386 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 387 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 388 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 389 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 390 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 391 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 392 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 393 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
