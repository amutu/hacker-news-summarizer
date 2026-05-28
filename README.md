# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-05-28.md)

*最后自动更新时间: 2026-05-28 20:33:47*
## 1. Claude Opus 4.8

**原文标题**: Claude Opus 4.8

**原文链接**: [https://www.anthropic.com/news/claude-opus-4-8](https://www.anthropic.com/news/claude-opus-4-8)

**Claude Opus 4.8 发布公告摘要**

Anthropic 发布了旗舰模型升级版 Claude Opus 4.8，定价与 Opus 4.7 相同（输入 500 万 tokens，输出 2500 万 tokens）。主要改进包括：

**能力提升：** 在编码、智能体任务、推理和知识工作方面均超越前代。值得注意的是，它是唯一在 Super-Agent 基准测试中完成所有案例的模型，在面向浏览器智能体的 Online-Mind2Web 上取得 84% 的准确率，并在 Legal Agent 和 CursorBench 评估中创下纪录。

**诚实性与对齐：** 忽略代码缺陷的概率比 Opus 4.7 低四倍。展现出更强的亲社会特质和更低的不对齐行为率。

**新功能：**
- **精力控制：** 用户可调整 Claude 投入的"精力"——从较低（更快、更便宜）到额外/最大（更深入思考、更多 tokens）。
- **动态工作流（Claude Code）：** Claude 可规划并运行数百个并行子智能体，以完成代码库迁移等大规模任务。
- **Messages API 更新：** 可在任务中途更新系统指令，且不破坏提示缓存。

**快速模式** 现价比前代模型便宜三倍。

**未来计划：** Anthropic 正在开发低成本模型，并准备在安全防护措施完善后，更广泛地发布 Mythos 类模型（目前处于网络安全预览阶段）。

---

## 2. 持久化工作流就用Postgres

**原文标题**: Just Use Postgres for Durable Workflows

**原文链接**: [https://www.dbos.dev/blog/postgres-is-all-you-need-for-durable-execution](https://www.dbos.dev/blog/postgres-is-all-you-need-for-durable-execution)

**摘要：**  
本文认为，直接基于PostgreSQL构建持久化工作流比依赖Temporal、Airflow或AWS Step Functions等外部编排器更简单、更高效。  

**核心思想：** 持久化工作流将程序进度检查点存入数据库，从而在崩溃后恢复。外部编排器通过单独管理步骤调度和状态增加了不必要的复杂性。相反，应用服务器可以直接将PostgreSQL用作编排器：客户端在Postgres表中创建工作流条目；服务器轮询并执行工作流，将步骤输出检查点存入同一数据库。Postgres的锁机制和完整性约束可防止重复执行。  

**优势：**  
- **可扩展性与可用性**依赖于Postgres成熟的解决方案（垂直扩展、流复制、分片）。  
- **可观测性**内置于系统中：工作流数据存储在Postgres表中，无需专用工具即可执行复杂SQL查询（例如查找近期错误）。  
- **可靠性与安全性**得到提升，因为Postgres是唯一关键组件；若Postgres已在运行，则不会引入新的攻击面或单点故障。  

本文最后推荐使用Postgres支持的持久化执行作为外部编排器更简单、更稳健的替代方案，并推广DBOS作为实现此方法的工具。

---

## 3. 男子价值20万美元乐高收藏被砖块与迷你人偶公司窃取

**原文标题**: Bricks and Minifigs Stole a Man's $200k Lego Collection

**原文链接**: [https://mybricklog.com/blog/bricks-minifigs-corporate-stole-old-mans-200000-lego-collection](https://mybricklog.com/blog/bricks-minifigs-corporate-stole-old-mans-200000-lego-collection)

**摘要：**

题为《Bricks and Minifigs盗走男子价值20万美元乐高收藏》的文章并非真正关于盗窃，而是推广名为**MyBrickLog**的网站，该网站自称是免费的乐高收藏追踪器及价格指南。该网站让收藏者能够管理自己的乐高套装、心愿清单及人仔。

其宣传的主要功能包括：追踪用户拥有的乐高套装（及数量）、标记套装为已密封、已拆封或已拼齐、查询已停售套装的零售价与二手市场价、创建并分享心愿清单、追踪每套套装的人仔，以及浏览已发布的所有系列及子系列中超过2万款乐高套装。该网站需启用JavaScript才能运行。该误导性标题疑为点击诱饵，因内容完全聚焦于该应用对收藏者的实用性。

---

## 4. 《创：战纪》中命令行历史场景的细节挑刺

**原文标题**: Nitpicking the shell history scene in 'Tron: Legacy'

**原文链接**: [https://www.chiark.greenend.org.uk/~sgtatham/quasiblog/tron-legacy/](https://www.chiark.greenend.org.uk/~sgtatham/quasiblog/tron-legacy/)

以下是文章的简明摘要：

西蒙·塔塔姆分析了电影《创：战纪》中的一个截图，图中萨姆·弗林在他父亲的电脑上查看Unix shell历史记录。塔塔姆原本以为会看到虚构的电脑术语，却惊讶地发现了一份相当合理的历史记录抄本，并将其作为同事的学习素材。

文本中的关键观察包括：
- 命令`bin/history`（而非单纯的`history`）是个错误；shell历史记录是内建命令，而非外部程序。塔塔姆推测电影制作团队使用脚本生成了与剧情相关的历史记录。
- 登录序列（`root`登录失败，`backdoor`登录成功）表明`backdoor`与`root`共享UID，这解释了萨姆为何能看到root的历史记录。塔塔姆推测萨姆创建了后门账户，预见到父亲可能会封锁他的权限。
- 操作系统为"SolarOS"（SunOS/Solaris的虚构混合体），但`uname -a`输出错误地同时列出了`sun4m`（SPARC架构）和`i386`（x86架构）。此外，左侧的`top`和`iostat`窗口更接近Linux而非Solaris风格，而`cat /proc/meminfo`命令更是Linux专属。
- 塔塔姆最初以为`./configure`命令出现在`make`之后是位置错误，但随后意识到这其实合理：这个`configure`脚本使用`-o`参数输出配置文件，而非生成Makefile，因此`make`、`make install`、`./configure`的顺序是通顺的。

总体而言，塔塔姆对截图细节的严谨程度比预想的更为惊叹，认为尽管存在若干不准确之处，但它仍是技术讨论的丰富素材。

---

## 5. 《Bitburner：编程驱动的增量游戏》

**原文标题**: Bitburner, programming-based incremental game

**原文链接**: [https://bitburner-official.github.io/](https://bitburner-official.github.io/)

**Bitburner** 是一款免费开源、以放置/挂机玩法为核心的增量游戏，要求并真正教授玩家通过编程技能推进进程。玩家在反乌托邦赛博朋克未来中扮演匿名黑客，利用JavaScript（或其他脚本语言）实现游戏自动化操作。

**核心机制：**
- **编写脚本**入侵服务器、窃取资金并削弱安全防护。
- **扩展黑客网络**，获取数千个节点的最高权限。
- **购买升级**，包括服务器、内存、黑客工具及义体强化装置。
- **管理股票市场与企业**，通过算法交易进行操控。

**独特特色：**
- **完整JavaScript脚本环境**内置于游戏（玩家编写`.script`格式文件）。
- **渐进式难度**——早期需手动操作，中后期则要求复杂自动化。
- **无内购机制**——完全基于学习与技能提升的成长路径。
- **剧情元素**——揭开BitNode与“全控公司”阴谋的谜团。

该游戏吸引程序员与解谜爱好者，提供真实的编程挑战：更优脚本带来更快进展。它巧妙平衡挂机机制与主动开发，成为游戏与学习融合的独特产物。

---

## 6. 《永久的上层乌鸦》

**原文标题**: The Permanent Upper Crow

**原文链接**: [https://permanent-upper-crow.jasonwu.ink/](https://permanent-upper-crow.jasonwu.ink/)

**《“永久上层乌鸦”概述》**

本文似乎描述了一个被称为“永久上层乌鸦”的概念或实体，尽管提供的内容十分有限。根据标题和语境，它可能指代在等级或竞争环境（如商业、政治或社会结构）中一个持久或永恒的角色。“上层乌鸦”暗示着一位顶尖玩家或主导个体，通过战略操纵、资源控制或已建立的影响力，维持着永久的优势地位。

关键点应包括：一个抵制变革的、不可动摇的精英阶层；该角色维持权力的机制（例如，人际关系网、杠杆手段或恐吓）；以及这对体系中其他成员的影响。“永久”一词暗示了一种静态或停滞的结构，其中向上流动被阻断，而“乌鸦”的隐喻可能唤起一种依赖他人努力而兴旺的食腐动物或机会主义者的形象。

由于缺乏完整文章，此摘要基于标题隐含的固化的权力与系统性不平等主题而做出推测。若能提供更多上下文，则可给出更准确的摘要。

---

## 7. Show HN：继续？Y/N：一个关于AI代理权限疲劳的60秒小游戏

**原文标题**: Show HN: Continue? Y/N: A 60-second game about AI agent permission fatigue

**原文链接**: [https://llmgame.scalex.dev](https://llmgame.scalex.dev)

以下是文章的精简摘要：

**标题：** *展示 HN：继续？Y/N：一款关于 AI 智能体许可疲劳的 60 秒游戏*

**摘要：** 本文介绍了“继续？Y/N”这款时长 60 秒的浏览器小游戏，旨在模拟并批判人机交互中的“许可疲劳”。游戏向玩家呈现 AI 智能体发出的快速请求流，要求授予访问文件、运行命令或发送电子邮件等权限。玩家必须迅速决定批准或拒绝每个请求。其核心机制揭示了用户如何因频繁重复的提示而变得麻木，可能在未仔细思考的情况下授予危险权限。游戏通过逐步升级的利害关系——从简单任务到可能危及安全或数据的操作——模拟了需要持续监督的 AI 智能体现实场景。其目的是提高人们对 AI 工作流中自动批准风险以及持续决策带来的心理负担的认识。创作者将其定位为既有趣又有挑战性的体验，同时也是对当前 AI 助手设计的微妙批评，强调需要更智能的权限系统，在维护安全的同时减轻用户疲劳。

---

## 8. 我痛恨写作——直到我明白其中自有科学（2024）

**原文标题**: I hated writing–until I learned there's a science to it(2024)

**原文链接**: [https://www.science.org/content/article/i-hated-writing-until-i-learned-there-s-science-it](https://www.science.org/content/article/i-hated-writing-until-i-learned-there-s-science-it)

**摘要**

本文讲述了作者在发现一套科学、结构化的写作方法后，从厌恶写作到觉得写作得心应手甚至乐在其中的转变。作为一名研究人员，作者起初在写作中挣扎，饱受焦虑和拖延之苦。转折点在于认识到写作并非天生才能，而是一项拥有可识别认知过程与有效技巧的技能。

关键要点包括：

- **理解写作的“为何”：** 作者认识到，优秀的写作优先考虑清晰度和读者理解，而非复杂词汇或华丽辞藻。这种思维转变减轻了压力。
- **结构化方法：** 诸如列提纲、初稿“自由写作”（将创作与编辑分离）以及运用叙事框架（如新闻的“倒金字塔”结构或论文的清晰叙事弧线）等技巧，彻底改变了写作过程。
- **反馈与修改：** 科学写作强调将迭代反馈和修改视为实现清晰的核心，而非将初稿视为最终成品。
- **心理益处：** 将写作分解成可管理的小步骤（例如“写25分钟”）减少了不堪重负感。将写作视为一项可习得的技能——如同进行实验——去除了“天赋”带来的情感负担。

最终，作者主张，通过应用来自认知科学和修辞学的循证策略，任何人都能成为胜任且自信的写作者，克服与写作相关的普遍恐惧。

---

## 9. 树莓派6与微控制器开发的最新消息

**原文标题**: News about Raspberry Pi 6 and Microcontroller Development

**原文链接**: [https://www.jeffgeerling.com/blog/2026/news-about-raspberry-pi-6-and-microcontroller-development/](https://www.jeffgeerling.com/blog/2026/news-about-raspberry-pi-6-and-microcontroller-development/)

**树莓派6与MCU开发资讯摘要（2026年5月）**

在Reddit AMA中，树莓派工程师透露了关键更新。**Pi 6**开发已确认，但因全球DRAM短缺而推迟发布。CEO Eben Upton预计最早在2028年初上市，打破了通常3-4年的更新周期。Pi 6将专注于更快的CPU和I/O接口，而非新增端口或集成NPU，公司认为CPU足以胜任AI计算。

**Pi Zero 2W**的短缺归因于AI芯片需求高涨导致的基板供应限制，新供应商将解决此问题。由于从单面PCB升级的成本以及昂贵的新型LPDDR内存，**Pi Zero 3**短期内不太可能推出。Zero 2W仍使用廉价且储备充足的LPDDR2。问世十年的**Pi 3B**依然畅销，年销量近百万台。

**微控制器**方面，RP2350芯片通过硅片修订解决了功耗、安全挑战及漏电流缺陷。Pico因成本和空间考虑仍采用micro USB接口，但已计划改用USB-C。2025年，微控制器出货量首次超过树莓派SBC销量。

最后，公司强调软件支持是核心差异化优势，承诺将95%的工程时间投入库、驱动和操作系统开发。

---

## 10. 最不可能的书包

**原文标题**: The Most Unlikely School Bag

**原文链接**: [https://www.carryology.com/insights/carry-culture/the-tale-of-the-worlds-most-unlikely-school-bag/](https://www.carryology.com/insights/carry-culture/the-tale-of-the-worlds-most-unlikely-school-bag/)

本文探讨了日本小学生使用的方方正正、质地坚硬的皮质书包——*randoseru*（ランドセル），每个小学生都会背整整六年。它出人意料的起源可追溯至19世纪50年代的荷兰军用背包，这种背包经过重新设计，并于1887年作为礼物赠送给后来的大正天皇，随后被日本采纳。它不仅仅是一个书包，更是一种文化平等器，旨在隐藏家庭财富，促进集体一致性。这款书包由超过300个部件构成，经过严格的耐用性测试，能作为孩子们上下学途中防摔、防雨的防护装备。然而，其坚硬的结构显著增加了重量（空包重1-1.5千克），导致了“重书包综合症”，尽管传统因素压倒了人体工学考量。购买一个*randoseru*（售价200至1000美元以上）是一项被称为“*ran-katsu*”（ランドセル活動）的家庭仪式，祖父母也常参与其中。历史上，这款书包的颜色男孩为黑色，女孩为红色；如今颜色选择已增多，反映出缓慢的社会变迁。在使用了六年后，这些耐用的书包很少被丢弃；它们或被作为充满回忆的纪念品保留，或被捐赠，或被升级改造。最终，*randoseru*作为童年深刻的象征留存下来，传递着对秩序、独立和集体归属的期待——一个传统与实用性的矛盾体，却依然是日本人生活中珍视的一部分。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 2 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 3 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 4 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 5 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 6 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 7 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 8 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 9 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 10 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 11 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 12 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 13 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 14 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 15 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 16 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 17 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 18 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 19 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 20 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 21 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 22 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 23 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 24 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 25 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 26 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 27 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 28 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 29 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 30 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 31 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 32 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 33 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 34 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 35 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 36 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 37 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 38 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 39 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 40 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 41 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 42 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 43 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 44 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 45 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 46 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 47 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 48 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 49 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 50 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 51 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 52 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 53 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 54 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 55 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 56 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 57 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 58 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 59 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 60 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 61 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 62 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 63 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 64 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 65 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 66 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 67 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 68 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 69 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 70 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 71 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 72 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 73 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 74 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 75 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 76 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 77 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 78 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 79 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 80 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 81 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 82 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 83 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 84 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 85 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 86 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 87 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 88 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 89 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 90 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 91 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 92 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 93 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 94 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 95 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 96 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 97 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 98 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 99 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 100 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 101 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 102 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 103 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 104 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 105 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 106 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 107 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 108 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 109 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 110 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 111 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 112 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 113 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 114 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 115 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 116 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 117 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 118 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 119 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 120 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 121 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 122 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 123 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 124 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 125 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 126 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 127 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 128 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 129 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 130 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 131 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 132 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 133 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 134 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 135 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 136 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 137 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 138 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 139 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 140 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 141 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 142 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 143 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 144 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 145 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 146 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 147 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 148 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 149 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 150 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 151 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 152 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 153 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 154 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 155 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 156 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 157 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 158 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 159 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 160 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 161 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 162 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 163 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 164 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 165 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 166 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 167 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 168 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 169 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 170 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 171 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 172 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 173 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 174 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 175 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 176 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 177 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 178 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 179 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 180 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 181 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 182 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 183 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 184 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 185 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 186 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 187 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 188 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 189 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 190 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 191 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 192 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 193 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 194 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 195 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 196 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 197 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 198 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 199 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 200 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 201 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 202 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 203 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 204 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 205 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 206 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 207 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 208 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 209 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 210 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 211 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 212 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 213 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 214 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 215 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 216 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 217 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 218 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 219 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 220 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 221 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 222 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 223 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 224 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 225 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 226 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 227 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 228 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 229 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 230 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 231 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 232 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 233 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 234 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 235 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 236 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 237 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 238 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 239 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 240 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 241 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 242 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 243 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 244 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 245 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 246 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 247 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 248 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 249 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 250 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 251 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 252 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 253 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 254 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 255 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 256 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 257 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 258 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 259 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 260 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 261 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 262 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 263 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 264 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 265 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 266 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 267 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 268 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 269 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 270 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 271 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 272 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 273 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 274 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 275 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 276 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 277 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 278 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 279 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 280 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 281 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 282 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 283 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 284 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 285 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 286 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 287 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 288 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 289 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 290 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 291 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 292 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 293 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 294 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 295 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 296 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 297 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 298 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 299 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 300 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 301 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 302 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 303 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 304 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 305 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 306 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 307 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 308 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 309 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 310 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 311 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 312 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 313 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 314 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 315 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 316 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 317 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 318 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 319 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 320 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 321 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 322 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 323 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 324 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 325 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 326 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 327 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 328 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 329 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 330 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 331 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 332 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 333 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 334 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 335 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 336 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 337 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 338 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 339 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 340 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 341 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 342 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 343 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 344 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 345 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 346 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 347 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 348 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 349 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 350 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 351 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 352 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 353 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 354 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 355 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 356 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 357 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 358 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 359 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 360 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 361 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 362 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 363 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 364 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 365 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 366 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 367 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 368 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 369 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 370 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 371 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 372 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 373 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 374 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 375 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 376 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 377 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 378 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 379 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 380 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 381 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 382 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 383 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 384 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 385 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 386 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 387 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 388 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 389 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 390 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 391 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 392 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 393 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 394 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 395 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 396 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 397 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 398 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 399 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 400 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 401 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 402 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 403 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 404 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 405 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 406 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 407 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 408 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 409 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 410 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 411 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 412 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 413 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 414 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 415 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 416 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 417 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 418 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 419 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 420 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 421 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 422 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 423 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 424 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 425 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 426 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 427 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 428 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 429 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 430 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 431 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 432 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
