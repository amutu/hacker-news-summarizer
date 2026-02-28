# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-28.md)

*最后自动更新时间: 2026-02-28 20:37:54*
## 1. Obsidian Sync 现已推出无头客户端

**原文标题**: Obsidian Sync now has a headless client

**原文链接**: [https://help.obsidian.md/sync/headless](https://help.obsidian.md/sync/headless)

**《无头同步功能概述 – Obsidian 帮助文档》**

Obsidian 为其付费同步服务推出了无头客户端，允许用户将知识库同步至 Linux 服务器或无图形界面的系统。这实现了笔记在服务器端的自动化同步。

**核心要点：**

*   **用途：** 该客户端专为在远程服务器上同步知识库而设计（例如用于备份、发布或自动化处理），适用于无法安装完整桌面应用的场景。
*   **工作原理：** 它作为命令行工具运行。用户需在另一台设备的网页浏览器中完成身份验证以关联其 Obsidian 账户，随后客户端将在后台运行，保持服务器知识库的同步。
*   **设置流程：** 包括下载客户端、运行初始命令以启动身份验证流程，然后执行同步命令。知识库在服务器上以常规 Markdown 文件形式存储。
*   **应用场景：** 主要用途包括将知识库自动备份到服务器，或将笔记同步至 Web 服务器以进行静态网站生成（例如使用 Quartz 等工具）。
*   **重要限制：**
    *   需要有效的 Obsidian Sync 订阅。
    *   它是从您的主设备到无头客户端的**单向同步**；您无法在服务器上编辑笔记并期望这些更改同步回其他设备。
    *   目前仅适用于 Linux 系统。

本质上，无头同步客户端将 Obsidian 的生态系统扩展到了服务器环境，无需手动干预即可促进自动化工作流程和备份。

---

## 2. 我此生最幸福的时刻

**原文标题**: The happiest I've ever been

**原文链接**: [https://ben-mini.com/2026/the-happiest-ive-ever-been](https://ben-mini.com/2026/the-happiest-ive-ever-been)

2020年1月，作者对新的企业工作感到空虚，于是成为了一支青少年篮球队的志愿主教练。意外承担起这一角色后，他发现了深刻的目标感和幸福感。他热爱执教带来的具体而真实的联结——帮助孩子们培养技能与自信、置身于体育馆中、拥有掌控感和责任感。

他的球队仅输掉了第一场比赛，但真正的胜利在于他目睹了球员们的个人成长，这反过来也提升了他在生活各方面的自信。赛季因新冠疫情而中断，但这段经历带来了持久的领悟。

反思这段经历为何让他如此快乐，他归纳出四个关键原因：天生乐于帮助孩子、需要身体与现实世界的互动、享受掌控感的满足，以及对篮球运动本身深切的热爱。

最后，他将自己的经历与科技行业普遍存在的空虚感联系起来，质疑可扩展的数字产品是获得价值感和成就感的唯一途径这一观念。他希望自己的故事能激励他人去发现真正让自己快乐的事物。

---

## 3. 已验证的规范驱动开发（VSDD）

**原文标题**: Verified Spec-Driven Development (VSDD)

**原文链接**: [https://gist.github.com/dollspace-gay/d8d3bc3ecf4188df049d7a4726bb2a00](https://gist.github.com/dollspace-gay/d8d3bc3ecf4188df049d7a4726bb2a00)

**已验证的规范驱动开发（VSDD）**是一种由AI统筹的统一方法论，它将三种方法融合为单一流程：**规范驱动开发（SDD）**用于定义契约，**测试驱动开发（TDD）**用于强制执行实现，以及**验证驱动开发（VDD）**用于对抗性审查。

该流程由不同的AI与人类角色共同管理：**构建者**（如Claude）编写规范、测试和代码；**对抗者**（如Gemini）提供极度严格的审查；**追踪者**（Chainlink）确保可追溯性；而人类**架构师**则拥有最终决策权。

**VSDD流程**包含六个阶段：
1.  **规范固化：** 定义严密的行为契约，并关键性地设计一个**验证架构**，将纯粹、可证明的核心逻辑与副作用分离。
2.  **测试先行实现：** 构建者根据规范编写失败的测试，然后编写最简代码使其通过（严格的TDD）。
3.  **对抗性精炼：** 对抗者对规范、测试和代码进行无情的批判，以发现缺陷。
4.  **反馈整合：** 识别出的问题被循环回相应的早期阶段进行修正。
5.  **形式化强化：** 对可验证的核心执行计划的正式证明、模糊测试和安全审计。
6.  **收敛：** 当对抗者只能吹毛求疵且所有验证证明均通过时，流程结束，实现“零误差”代码。

其核心原则包括**规范至上**、**验证优先**设计、**红-绿循环**TDD，以及从每行代码到其源规范需求的**完全可追溯性**。

---

## 4. 应对反重力禁令与恢复访问权限

**原文标题**: Addressing Antigravity Bans and Reinstating Access

**原文链接**: [https://github.com/google-gemini/gemini-cli/discussions/20632](https://github.com/google-gemini/gemini-cli/discussions/20632)

谷歌近日宣布调整其反重力服务条款违规处理政策，此前因大规模账号封禁导致Gemini CLI和Gemini Code Assist服务中断。封禁最初针对使用第三方工具或代理访问反重力资源的用户，但执行机制同时波及了相关服务。

为解决此问题，谷歌已撤销近期封禁，受影响账号预计在一两天内恢复访问。未来将启用新的自助恢复流程：首次违规用户将收到明确通知，并需通过谷歌表单重新确认遵守服务条款，审核通过后自动恢复访问权限；二次违规将导致永久封禁。

公告明确指出，使用第三方软件窃取或借助Gemini CLI的OAuth认证访问后端服务属于直接违规。谷歌称新流程为用户提供了纠正无意违规的公平途径，但讨论区多位评论者对此提出质疑，包括服务条款的模糊性、付费用户未获预警、以及限制第三方客户端工具的逻辑依据。

---

## 5. 沃西：基于Rust的Wolfram Mathematica重实现

**原文标题**: Woxi: Wolfram Mathematica Reimplementation in Rust

**原文链接**: [https://github.com/ad-si/Woxi](https://github.com/ad-si/Woxi)

**《Woxi：用Rust重写的Wolfram Mathematica》概述**

Woxi是一个用Rust编写的Wolfram语言开源解释器。其主要目标是实现该语言的功能性子集，使其能够用于命令行脚本编写和Jupyter笔记本环境。一个关键特性是其与Jupyter的兼容性，包括图形输出功能，用户可在项目提供的基于浏览器的JupyterLite实例中进行测试。

该项目注重性能，声称通过消除内核启动和许可证验证的开销，运行速度比官方WolframScript更快。安装过程简便，可通过Rust的`cargo`包管理器或从源代码构建完成。

使用方式通过命令行操作（`woxi eval`用于表达式计算，`woxi run`用于运行脚本）和REPL环境进行演示。项目包含完整的Jupyter内核，可通过专用命令安装。开发采用协作模式，鼓励贡献者提交拉取请求。函数实现状态通过公开的CSV文件跟踪，测试套件要求所有测试在Woxi和WolframScript两个平台均能通过，以确保功能一致性。

---

## 6. 康托抄袭戴德金的新证据？

**原文标题**: New evidence that Cantor plagiarized Dedekind?

**原文链接**: [https://www.quantamagazine.org/the-man-who-stole-infinity-20260225/](https://www.quantamagazine.org/the-man-who-stole-infinity-20260225/)

本文报道了新的证据，表明格奥尔格·康托尔在其1874年关于无穷的开创性论文中，可能抄袭了理查德·戴德金的关键思想。证据的核心是一封新发现的、此前被认为已遗失的康托尔于1873年11月30日写给戴德金的信件。

文章回顾了康托尔与戴德金自1872年相识后开始的通信。1873年末，康托尔写信向戴德金提出了一个关于比较无穷集合大小的根本性问题，特别是实数是否比整数更多。这暗示戴德金的回复包含了核心的概念突破。

尽管两位数学家都曾在1872年独立发表了关于实数的类似工作，但历史上普遍认为康托尔在1874年提出了革命性的证明，确立了无穷的不同“大小”，从而创立了集合论。这封信的发现挑战了这一叙事，表明戴德金对这一核心思想做出了关键却未获承认的贡献。文章将此描述为雄心勃勃且焦虑不安的康托尔对其更为内敛严谨的同事戴德金可能实施的剽窃行为。

---

## 7. Show HN：现在我懂了——将科学论文转化为交互式网页

**原文标题**: Show HN: Now I Get It – Translate scientific papers into interactive webpages

**原文链接**: [https://nowigetit.us](https://nowigetit.us)

**概述：**

“Now I Get It”是一款基于网络的工具，旨在让科学论文更易于理解。用户可以上传研究文章的PDF文件，该平台会自动生成一个可分享的交互式网页，用通俗语言解释论文内容。

其核心功能是一个简单的上传流程，建议文件大小不超过10 MB。上传后，系统会通过几个步骤处理文档：安全检查、读取论文内容，最后生成并发布交互式解释页面。

该平台还设有一个公共展示区，用户可以浏览最近创建的解释页面。每个生成的页面都会显示技术细节，如使用的输入和输出令牌数量以及总处理成本，并提供复制链接或重新生成解释的选项。

本质上，“Now I Get It”充当了复杂科学文献的AI驱动翻译器和展示者，旨在通过将晦涩的论文重新包装成更易于理解、适合网络浏览的格式，弥合专业研究与广大读者之间的鸿沟。

---

## 8. 沃纳·赫尔佐格：游走于真实与虚构之间

**原文标题**: Werner Herzog Between Fact and Fiction

**原文链接**: [https://www.thenation.com/article/culture/werner-herzog-future-truth/](https://www.thenation.com/article/culture/werner-herzog-future-truth/)

本文评论了维尔纳·赫尔佐格的新书《真理的未来》，该书旨在阐释他提出的“狂喜真理”——一种诗意的、超越性的真理，赫尔佐格常通过虚构与风格化而非事实精确性，在其电影中追寻这种真理。评论者劳里·普雷斯利认为此书令人深感失望，称其不过是赫尔佐格早年回忆录与访谈中轶事和观点的仓促拼凑，缺乏连贯的论述或新见解。

文章虽认可赫尔佐格毕生追寻这种缥缈真理的重要意义，但批评本书未能如其所承诺的那样，切实探讨“虚假新闻”和人工智能生成内容等当代挑战。普雷斯利指出，赫尔佐格的才华不在于哲学阐释，而在于通过影像与叙事唤起惊奇感——正如其出色的回忆录所展现的那样。评论最后希望这本令人失望的著作仅是赫尔佐格创作旅程中的一次失足，而非其探索的终点。

---

## 9. 整件事就是个骗局

**原文标题**: The whole thing was a scam

**原文链接**: [https://garymarcus.substack.com/p/the-whole-thing-was-scam](https://garymarcus.substack.com/p/the-whole-thing-was-scam)

本文指控OpenAI首席执行官萨姆·阿尔特曼采取欺骗与腐败手段，以削弱竞争对手Anthropic及其首席执行官达里奥·阿莫代伊。

核心指控在于，阿尔特曼公开表达对阿莫代伊支持的同时，暗地敲定一项商业交易，夺走了Anthropic的发展机遇。作者援引《纽约时报》报道称，阿尔特曼早在展现支持姿态前就已筹划此交易，并将其描述为精心策划的“表演”。

文章进一步指责美国政府不公且带有惩罚性地对待Anthropic，在拒绝其条款的同时，却接受了来自竞争对手（暗指OpenAI）的类似条款——而后者提供了更多政治献金。作者认为，这标志着制度已从由市场决定的资本主义，腐败蜕变为由人脉与金钱决定结果的寡头政治。

尽管作者对阿莫代伊与Anthropic过往行为有所批评，但仍指出当前局面根本缺乏“公平竞争”——由于幕后交易与政治干预，Anthropic从未获得真正的机会。

---

## 10. 《魔界村》——“前方危险更甚”

**原文标题**: Ghosts'n Goblins – “Worse danger is ahead”

**原文链接**: [https://superchartisland.com/ghostsn-goblins/](https://superchartisland.com/ghostsn-goblins/)

本文追溯了1986年《魔界村》在日本和英国同时登顶销量榜首的历程，展现了不同的游戏市场格局。在日本，卡普空发行的红白机版本大获成功；而在家用电脑销量远超游戏机的英国，最受欢迎的版本则是精英系统公司为Commodore 64和ZX Spectrum开发的移植版。

文章探讨了游戏的创作渊源，指出设计师藤原得郎将恶魔主题与卡通魅力相融合，并刻意设计了极高难度。文中详述了精英公司如何通过既有合作获得英国发行权，以及将街机游戏移植到英国家用电脑面临的技术挑战——克里斯·巴特勒和基思·伯希尔等开发者最终创造了各具特色却广受好评的版本。

文章还分析了游戏的文化影响：其经典的“落难少女”叙事模式（后被《超级食肉男孩》等游戏借鉴）与英国媒体的评价——尽管存在技术妥协，媒体仍盛赞其画面表现和激烈动作。最终，《魔界村》成为两地共通的经典之作，彰显了1980年代中期全球游戏市场既相互关联又各具特色的本质。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 2 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 3 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 4 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 5 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 6 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 7 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 8 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 9 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 10 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 11 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 12 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 13 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 14 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 15 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 16 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 17 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 18 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 19 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 20 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 21 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 22 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 23 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 24 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 25 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 26 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 27 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 28 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 29 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 30 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 31 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 32 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 33 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 34 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 35 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 36 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 37 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 38 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 39 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 40 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 41 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 42 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 43 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 44 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 45 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 46 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 47 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 48 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 49 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 50 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 51 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 52 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 53 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 54 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 55 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 56 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 57 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 58 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 59 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 60 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 61 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 62 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 63 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 64 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 65 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 66 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 67 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 68 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 69 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 70 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 71 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 72 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 73 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 74 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 75 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 76 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 77 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 78 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 79 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 80 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 81 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 82 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 83 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 84 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 85 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 86 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 87 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 88 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 89 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 90 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 91 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 92 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 93 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 94 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 95 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 96 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 97 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 98 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 99 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 100 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 101 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 102 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 103 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 104 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 105 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 106 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 107 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 108 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 109 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 110 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 111 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 112 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 113 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 114 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 115 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 116 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 117 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 118 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 119 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 120 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 121 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 122 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 123 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 124 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 125 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 126 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 127 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 128 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 129 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 130 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 131 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 132 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 133 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 134 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 135 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 136 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 137 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 138 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 139 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 140 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 141 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 142 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 143 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 144 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 145 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 146 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 147 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 148 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 149 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 150 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 151 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 152 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 153 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 154 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 155 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 156 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 157 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 158 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 159 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 160 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 161 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 162 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 163 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 164 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 165 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 166 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 167 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 168 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 169 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 170 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 171 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 172 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 173 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 174 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 175 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 176 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 177 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 178 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 179 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 180 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 181 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 182 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 183 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 184 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 185 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 186 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 187 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 188 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 189 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 190 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 191 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 192 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 193 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 194 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 195 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 196 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 197 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 198 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 199 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 200 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 201 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 202 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 203 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 204 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 205 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 206 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 207 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 208 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 209 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 210 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 211 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 212 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 213 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 214 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 215 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 216 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 217 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 218 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 219 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 220 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 221 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 222 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 223 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 224 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 225 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 226 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 227 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 228 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 229 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 230 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 231 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 232 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 233 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 234 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 235 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 236 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 237 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 238 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 239 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 240 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 241 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 242 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 243 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 244 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 245 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 246 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 247 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 248 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 249 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 250 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 251 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 252 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 253 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 254 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 255 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 256 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 257 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 258 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 259 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 260 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 261 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 262 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 263 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 264 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 265 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 266 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 267 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 268 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 269 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 270 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 271 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 272 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 273 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 274 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 275 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 276 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 277 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 278 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 279 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 280 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 281 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 282 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 283 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 284 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 285 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 286 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 287 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 288 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 289 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 290 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 291 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 292 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 293 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 294 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 295 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 296 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 297 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 298 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 299 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 300 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 301 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 302 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 303 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 304 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 305 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 306 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 307 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 308 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 309 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 310 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 311 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 312 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 313 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 314 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 315 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 316 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 317 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 318 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 319 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 320 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 321 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 322 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 323 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 324 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 325 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 326 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 327 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 328 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 329 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 330 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 331 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 332 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 333 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 334 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 335 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 336 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 337 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 338 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 339 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 340 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 341 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 342 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 343 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
