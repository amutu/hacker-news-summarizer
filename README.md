# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-07-17.md)

*最后自动更新时间: 2026-07-17 20:32:28*
## 1. Zilog Z80迎来50周年

**原文标题**: The Zilog Z80 has turned 50

**原文链接**: [https://goliath32.com/blog/z80.html](https://goliath32.com/blog/z80.html)

**Zilog Z80问世50周年纪念**

本文纪念1976年7月推出的Zilog Z80处理器诞生50周年。文章追溯了Z80的发展脉络——其根源可追溯至Datapoint 2200终端，该终端基于TTL的CPU衍生出英特尔8008（一款14位地址、18引脚、内置调用堆栈的芯片）。8008的局限性催生了8080处理器，它增加了16位地址空间、外部堆栈及三条电源轨，但接口设计依然复杂。

不满英特尔管理层的Federico Faggin共同创立了Zilog，并聘请Masatoshi Shima设计改进型8080兼容芯片。Z80完全二进制兼容8080，同时新增关键特性：两个变址寄存器（IX、IY）、用于快速中断的组切换寄存器对、三种中断模式、位操作指令、BCD算术运算以及LDIR等块传输指令。该芯片仅需单一+5V电源和单一时钟信号，通过明确的总线控制信号（MREQ、IORQ、RD、WR、M1）简化了硬件设计。

Z80在早期个人电脑、家用电脑、嵌入式系统和工业应用中取得了巨大成功，助力CP/M和Microsoft BASIC成为行业标准。该架构衍生出众多兼容芯片，包括初代Game Boy搭载的Sharp LR35902。Zilog后来回归Z80微控制器路线，推出eZ80等产品。作者作为青少年时期曾设计Z80电脑的亲历者指出，原版Z80直到两年前才停产，凸显了其非凡的生命力。

---

## 2. 首次在地球大小的宜居带系外行星上发现大气层

**原文标题**: First atmosphere found on Earth-like planet in habitable zone of distant star

**原文链接**: [https://www.bbc.com/news/articles/cy4kdd1e0ejo](https://www.bbc.com/news/articles/cy4kdd1e0ejo)

**摘要：**

天文学家首次在一颗位于遥远恒星宜居带内的类地岩石行星上探测到大气层。该行星编号为LHS 1140 b，距地球48光年，围绕一颗冷红矮星运行。尽管目前已发现超过6000颗系外行星，但这是首次在可能支持液态水存在的“适居带”岩石世界上确认大气层。

这项由哈佛大学科林·切鲁宾博士领导的研究，被视为寻找太阳系外生命的重要里程碑。然而，目前仅探测到氦气这一种气体，它无法维持生命，但其他支持生命的气体可能存在于大气层深处。

研究人员强调，他们尚未发现生命。这一发现与其他候选行星形成对比，例如K2-18b上潜在生物特征气体证据不确定，TRAPPIST-1行星的数据也仍然模糊。这项发现让科学家距离回答“地球之外是否存在生命”这一问题更近一步。

---

## 3. 学习SQLite运行的一些要点

**原文标题**: Learning a few things about running SQLite

**原文链接**: [https://jvns.ca/blog/2026/07/17/learning-about-running-sqlite/](https://jvns.ca/blog/2026/07/17/learning-about-running-sqlite/)

**摘要：**  
作者分享了将 SQLite 用作 Django 站点数据库时的实用经验，强调 SQLite 仍是需要细心管理的复杂数据库。  

**要点：**  
1. **ANALYZE 至关重要：** 针对 4000 行数据的全文搜索查询原本耗时 5 秒，运行 `ANALYZE`（生成统计信息以优化查询计划）后降至 0.05 秒。  
2. **数据库清理挑战：** 大量 DELETE 操作可能触发 5 秒超时，导致其他工作进程崩溃。作者通过分批清理缓解此问题，并考虑使用定时维护或改用 Postgres 处理并发写入。  
3. **ORM 性能：** 截至目前，由于数据库规模较小（约 1 万行），Django ORM 查询无需优化即可良好运行。  
4. **备份策略：** 采用两种方法：  
   - **Restic：** `VACUUM INTO` → gzip → 备份至 S3，但存在内存溢出（OOM）和锁表现象。  
   - **Litestream：** 增量复制实现高效备份，保留设置为 400 小时。  
5. **多数据库：** 将表拆分到独立 SQLite 文件中（例如用于 Mess with DNS）可简化管理，但当前项目仍使用单一数据库。  

作者自 2022 年起持续学习，并提供了关于 SQLite 与 Django 的进一步阅读参考资料。

---

## 4. 框架 – Linux X服务器（汇编语言实现）

**原文标题**: Frame – Linux X server in Assembly

**原文链接**: [https://isene.org/2026/07/Frame.html](https://isene.org/2026/07/Frame.html)

文章描述了作者创造"frame"的过程——一个完全用汇编语言编写的Linux X服务器，共计约2万行代码。它是名为"CHasm"的更大项目的一部分，该项目还包括用汇编编写的窗口管理器（"tile"）、终端（"glass"）和登录管理器（"bolt"），总计约10万行代码。这套软件栈取代了传统配置（gdm、X11、i3、conky、wezterm、zsh），而后者代码规模要大五十倍以上。作者强调frame的极简主义：无依赖、无库、无垃圾回收器，闲置时CPU占用近乎为零。基准测试显示，frame在空闲时的CPU使用率约为Xorg的三分之一，但由于面板和WiFi的影响，功耗相近。桌面在用户操作前完全静止。作者还使用名为Fe₂O₃的Rust工具套件完成大多数任务，Firefox是仅存的GUI应用程序。系统稳定性足以日常使用，偶发问题借助人工智能助手Claude解决。所有软件均已发布至公有领域。文章最后强调，拥有并完全掌控根据个人需求定制的软件，正是其优势所在。

---

## 5. Kimi K3：我们仍能从鹈鹕基准测试中学到什么

**原文标题**: Kimi K3, and what we can still learn from the pelican benchmark

**原文链接**: [https://simonwillison.net/2026/Jul/16/kimi-k3/](https://simonwillison.net/2026/Jul/16/kimi-k3/)

**摘要：**

2026年7月16日，中国人工智能实验室月之暗面发布了Kimi K3，这是一个拥有2.8万亿参数的模型，他们称其为首个“开放3T级模型”。在自我报告的基准测试中，它超越了Claude Opus 4.8和GPT-5.5，但落后于Claude Fable 5和GPT-5.6 Sol。其定价为每百万输入/输出代币3美元/15美元，是迄今为止最昂贵的中国AI模型。

作者在21个月后回顾了他们的“鹈鹕基准测试”（生成一只骑自行车的鹈鹕的SVG图像）。虽然这项测试最初与模型质量相关性良好，但这种联系已经减弱——GLM-5.2现在在该测试上的表现优于Fable 5等旗舰模型。最大的局限性在于，该测试忽略了智能体工具调用和长上下文可靠性。

然而，作者仍然认为这项练习有其价值：它迫使作者尝试模型，提供成本/推理估算，确认基本的SVG和空间推理能力，并允许跨模型系列版本进行比较。具体到Kimi K3，测试显示它目前只有“最大”推理努力，为生成鹈鹕使用了13,241个推理代币（花费0.25美元），可能有一个85代币的隐藏系统提示，并且能从图像输入中生成出色的替代文本。与Kimi 2.5相比，这只鹈鹕有了显著改进。

---

## 6. 开源人工智能的现状

**原文标题**: The state of open source AI

**原文链接**: [https://stateofopensource.ai/](https://stateofopensource.ai/)

**摘要：开源AI现状（2026年7月）**

开源AI在多数任务上已具备与闭源模型相当的能力，在24个月内将8%的差距缩小至持平。推理成本在36个月内骤降50倍，开源权重模型如今承担了大部分生产环境中的token处理量，OpenRouter上流量最高的五个模型均为开源模型。

尽管在采用率上领先（79%的开发者使用开源模型，而闭源模型为71%），开源模型仍面临显著的“运营鸿沟”：仅有51%进入生产环境，而闭源模型这一比例为63%。关键挑战在于基础设施成本、安全合规、运维及部署复杂性，而非模型能力本身。

该生态系统已具备规模化商业可行性。Databricks（年化收入54亿美元）、DeepSeek（估值超500亿美元）和Mistral（年经常性收入4亿美元）引领五种经过验证的营收模式。开源模型因主权考量而被战略性采用——超过70个国家已制定AI战略，自主托管权重的能力为用户提供了摆脱供应商锁定的退出权。受国家政策驱动，中国是开源权重的最大来源地。

下一前沿领域是“智能体框架”——即位于模型之上的工具层，其竞争将决定AI工作流的控制权归属。报告认为，开源已赢得模型之战，但关于运营工具和智能体基础设施的争夺仍在继续。

---

## 7. 人们应对问题的三种方式（除了解决它）

**原文标题**: Three ways people respond to a problem (other than solving it)

**原文链接**: [https://improvesomething.today/responses-to-problems/](https://improvesomething.today/responses-to-problems/)

**摘要：**本文指出了除实际解决问题之外的三种常见应对方式，并强调识别这些模式对实现有效变革至关重要。

1.  **转移问题：** 这是一种局部优化，改善某个方面会导致其他方面恶化。由于激励机制不匹配，这种现象在大型组织中很常见。解决办法不是责怪个人，而是从更高层面修复系统和激励机制。
2.  **维系问题：** 基于“希尔基原则”，机构和个人会逐渐依赖它们本应解决的问题。要解决某个问题，必须找出谁从其存在中受益，并将其纳入计划，因为进步有时需要“放手”某些问题。
3.  **催生新问题：** 解决问题不可避免地会带来新的问题（波兹曼之问）。作者指出，消除问题一只不过是将问题二推到了前台。咨询顾问必须接受自己永远无法彻底解决所有问题这一事实。

文章总结道，虽然解决问题者能够过上更好的生活，但那些能够选择无视问题的人过得最好。作者建议使用可视化图表帮助团队就哪些问题真正值得解决达成共识。

---

## 8. 通向Lisp之路：选择哪种Lisp

**原文标题**: A Road to Lisp: Which Lisp

**原文链接**: [https://scotto.me/blog/2026-07-17-which-lisp/](https://scotto.me/blog/2026-07-17-which-lisp/)

《选择Lisp之路：该学哪个方言》——本文指导初学者在Common Lisp（CL）与Clojure这两种最活跃的Lisp方言中做出选择。

**Common Lisp**是成熟的标准语言（ANSI 1994），以功能全面著称。它具备强大的条件与重启系统、灵活的面向对象系统（CLOS），并通过SBCL等实现编译为高效的本地代码。但其缺乏惰性序列等现代特性，且社区规模较小且由志愿者驱动。该语言在科研、原型开发和长期运行进程领域表现卓越。

**Clojure**是由Rich Hickey设计的现代函数式Lisp，主要运行于JVM（可通过ClojureScript运行于JavaScript）。它强调不可变数据结构、持久化集合与显式并发，适合大规模数据处理与复杂系统。其核心优势在于与Java的无缝互操作及稳定向后兼容的设计。该社区活跃，被广泛用于生产环境（如Nubank、沃尔玛）。主要缺点是JVM产生的错误信息混乱。

文章结论指出：选择哪个方言并不如初学者想象的那么重要——学习任一语言都能掌握基础Lisp概念，后续切换将十分容易。文章提供了两者的学习资源，推荐CL学习《实用Common Lisp》，Clojure学习《Clojure精要》。

---

## 9. 弗兰克·劳埃德·赖特的第一栋住宅

**原文标题**: Frank Lloyd Wright’s first home

**原文链接**: [https://www.architecturaldigest.com/story/frank-lloyd-wright-home-and-studio-everything-you-need-to-know](https://www.architecturaldigest.com/story/frank-lloyd-wright-home-and-studio-everything-you-need-to-know)

本文详细介绍了弗兰克·劳埃德·赖特位于伊利诺伊州橡树园的首座住宅与工作室的历史、建筑风格及修复过程。赖特于1889年至1909年在此居住。22岁时，他凭借老板路易斯·沙利文提供的贷款，建造了这座简朴的木瓦风格住宅。1895年，为容纳不断壮大的家庭，他对房屋进行了扩建；1898年，又增建了工作室侧翼，在此设计出许多早期的草原风格杰作。该建筑拥有独特的细节设计，如带天窗的筒拱顶游戏室、八角形空间，以及赖特"压缩与释放"手法的早期实例。室内设计凸显天然材质与绿色大地色调。1909年赖特离开后，建筑一度失修并被分割。1974年，弗兰克·劳埃德·赖特信托基金会购入该建筑，耗时13年、耗资250万美元，精心将其修复至1909年的原貌。如今，这座住宅与工作室作为故居博物馆开放，提供导览服务，并于1976年被认定为美国国家历史地标。

---

## 10. 展示HN：400万维基百科事件的缩放时间线

**原文标题**: Show HN: A zoomable timeline of 4M Wikipedia events

**原文链接**: [https://app.everything.diena.co/](https://app.everything.diena.co/)

以下是文章的简要总结：

**总结：** 该帖子介绍了"Diena"，一个可缩放、交互式的时间线工具，可视化了从维基百科提取的约400万条事件。该工具允许用户浏览从宇宙大爆炸至今的历史，通过缩放可以查看从宏观地质年代到具体年份或日期的各种事件。其主要特点包括连续的时间尺度、按类别筛选的功能，以及与维基百科的无缝集成，以便深入了解任何事件的背景。Diena旨在为全部有记载（及史前）历史提供一个独特的宏观视角，使用户能够以直观的视觉形式探索维基百科庞大的事件数据集。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 2 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 3 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 4 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 5 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 6 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 7 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 8 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 9 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 10 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 11 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 12 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 13 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 14 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 15 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 16 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 17 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 18 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 19 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 20 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 21 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 22 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 23 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 24 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 25 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 26 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 27 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 28 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 29 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 30 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 31 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 32 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 33 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 34 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 35 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 36 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 37 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 38 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 39 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 40 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 41 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 42 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 43 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 44 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 45 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 46 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 47 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 48 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 49 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 50 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 51 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 52 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 53 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 54 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 55 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 56 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 57 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 58 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 59 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 60 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 61 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 62 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 63 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 64 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 65 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 66 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 67 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 68 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 69 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 70 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 71 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 72 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 73 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 74 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 75 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 76 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 77 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 78 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 79 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 80 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 81 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 82 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 83 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 84 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 85 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 86 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 87 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 88 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 89 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 90 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 91 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 92 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 93 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 94 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 95 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 96 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 97 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 98 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 99 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 100 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 101 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 102 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 103 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 104 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 105 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 106 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 107 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 108 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 109 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 110 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 111 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 112 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 113 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 114 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 115 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 116 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 117 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 118 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 119 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 120 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 121 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 122 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 123 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 124 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 125 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 126 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 127 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 128 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 129 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 130 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 131 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 132 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 133 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 134 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 135 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 136 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 137 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 138 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 139 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 140 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 141 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 142 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 143 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 144 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 145 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 146 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 147 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 148 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 149 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 150 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 151 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 152 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 153 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 154 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 155 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 156 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 157 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 158 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 159 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 160 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 161 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 162 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 163 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 164 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 165 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 166 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 167 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 168 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 169 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 170 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 171 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 172 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 173 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 174 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 175 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 176 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 177 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 178 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 179 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 180 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 181 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 182 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 183 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 184 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 185 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 186 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 187 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 188 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 189 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 190 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 191 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 192 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 193 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 194 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 195 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 196 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 197 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 198 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 199 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 200 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 201 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 202 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 203 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 204 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 205 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 206 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 207 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 208 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 209 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 210 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 211 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 212 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 213 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 214 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 215 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 216 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 217 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 218 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 219 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 220 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 221 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 222 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 223 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 224 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 225 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 226 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 227 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 228 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 229 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 230 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 231 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 232 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 233 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 234 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 235 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 236 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 237 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 238 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 239 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 240 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 241 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 242 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 243 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 244 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 245 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 246 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 247 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 248 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 249 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 250 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 251 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 252 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 253 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 254 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 255 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 256 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 257 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 258 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 259 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 260 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 261 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 262 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 263 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 264 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 265 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 266 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 267 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 268 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 269 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 270 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 271 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 272 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 273 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 274 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 275 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 276 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 277 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 278 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 279 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 280 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 281 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 282 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 283 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 284 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 285 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 286 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 287 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 288 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 289 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 290 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 291 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 292 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 293 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 294 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 295 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 296 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 297 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 298 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 299 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 300 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 301 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 302 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 303 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 304 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 305 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 306 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 307 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 308 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 309 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 310 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 311 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 312 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 313 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 314 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 315 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 316 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 317 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 318 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 319 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 320 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 321 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 322 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 323 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 324 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 325 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 326 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 327 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 328 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 329 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 330 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 331 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 332 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 333 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 334 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 335 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 336 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 337 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 338 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 339 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 340 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 341 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 342 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 343 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 344 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 345 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 346 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 347 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 348 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 349 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 350 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 351 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 352 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 353 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 354 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 355 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 356 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 357 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 358 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 359 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 360 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 361 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 362 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 363 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 364 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 365 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 366 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 367 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 368 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 369 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 370 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 371 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 372 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 373 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 374 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 375 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 376 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 377 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 378 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 379 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 380 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 381 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 382 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 383 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 384 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 385 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 386 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 387 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 388 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 389 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 390 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 391 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 392 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 393 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 394 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 395 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 396 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 397 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 398 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 399 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 400 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 401 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 402 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 403 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 404 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 405 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 406 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 407 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 408 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 409 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 410 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 411 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 412 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 413 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 414 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 415 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 416 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 417 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 418 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 419 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 420 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 421 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 422 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 423 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 424 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 425 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 426 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 427 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 428 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 429 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 430 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 431 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 432 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 433 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 434 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 435 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 436 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 437 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 438 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 439 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 440 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 441 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 442 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 443 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 444 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 445 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 446 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 447 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 448 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 449 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 450 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 451 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 452 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 453 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 454 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 455 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 456 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 457 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 458 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 459 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 460 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 461 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 462 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 463 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 464 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 465 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 466 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 467 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 468 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 469 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 470 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 471 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 472 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 473 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 474 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 475 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 476 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 477 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 478 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 479 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 480 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
