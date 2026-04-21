# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-04-21.md)

*最后自动更新时间: 2026-04-21 20:38:11*
## 1. Vercel数据泄露：OAuth攻击暴露平台环境变量风险

**原文标题**: The Vercel breach: OAuth attack exposes risk in platform environment variables

**原文链接**: [https://www.trendmicro.com/en_us/research/26/d/vercel-breach-oauth-supply-chain.html](https://www.trendmicro.com/en_us/research/26/d/vercel-breach-oauth-supply-chain.html)

Vercel于2026年4月披露的安全漏洞是一起始于2024年6月左右的OAuth供应链攻击。攻击者入侵了Context.ai开发的第三方OAuth应用，该应用此前已获得Vercel员工授权。这使得攻击者得以侵入一名Vercel员工的Google Workspace账户，进而渗透至Vercel内部系统。

此次漏洞影响扩大的关键因素在于Vercel的环境变量模型。虽然"敏感"变量经过加密处理，但未明确标记的变量均以明文存储，任何拥有内部访问权限的人员均可读取。这一设计缺陷使攻击者能够枚举并窃取未公开项目子集中的客户密钥。

该事件凸显出若干关键风险：OAuth信任关系可能绕过传统安全边界，平台设计选择可能引发系统性漏洞，且从凭证暴露到客户通知往往存在严重延迟。本次事件中，有客户报告在Vercel公开披露前9天就收到了OpenAI发出的密钥泄露警报。

Vercel首席执行官还指出，攻击者可能利用人工智能加速攻击进程，其操作速度和对平台的理解程度异乎寻常。此次漏洞事件表明，亟需进行架构层面的改进，例如将第三方OAuth应用视为高风险供应商，并采用默认安全的密钥管理机制。

---

## 2. Britannica11.org – 1911年《大英百科全书》的结构化版本

**原文标题**: Britannica11.org – a structured edition of the 1911 Encyclopædia Britannica

**原文链接**: [https://britannica11.org/](https://britannica11.org/)

**概述：**

Britannica11.org是著名的《大英百科全书第十一版》（1910-1911年间首次出版）的数字化、结构化版本。该在线版本完整保留了这部经典参考著作的全部内容，它被视为20世纪初学术与公共领域知识的里程碑。

该网站的主要特点是其增强的可访问性和易用性。它支持全文检索，方便用户高效查找文章；具备交叉引用功能，便于在相关条目间轻松跳转；并带有注释，为原文提供额外的背景说明或解释。

该项目为历史学家、研究人员以及对第一次世界大战前时代的观点、知识和文化风貌感兴趣的普通读者提供了宝贵的资源。通过将历史资料进行结构化以适应现代网络，Britannica11.org使得这一重要的学术文献库更易于研究和参考。

---

## 3. Cal.diy：cal.com的开源社区版

**原文标题**: Cal.diy: open-source community edition of cal.com

**原文链接**: [https://github.com/calcom/cal.diy](https://github.com/calcom/cal.diy)

**摘要：** Cal.diy 是 Cal.com 的一个开源、社区驱动的分支版本，专为自托管个人日程安排平台而设计。它移除了所有企业级功能和许可要求，为希望完全掌控自身基础设施的用户提供了一个完全基于 MIT 许可的代码库。

该项目基于 Next.js、tRPC、React、Tailwind CSS、Prisma 和 Daily.co 构建。部署需要 Node.js、PostgreSQL 和 Yarn。使用 Docker Compose（`yarn dx`）可快速启动开发环境，其中包含本地数据库和测试用户。如需手动设置，用户需配置环境变量，通过 Prisma 设置数据库，并运行开发服务器。

部署主要通过 Docker 进行，相关镜像可在 DockerHub 获取。关键配置包括为 `NEXTAUTH_SECRET` 和 `CALENDSO_ENCRYPTION_KEY` 生成安全值，并设置用于推送通知的 VAPID 密钥。Docker Compose 配置支持使用本地或远程数据库运行应用。

Cal.diy 严格限于个人非生产用途，需要用户具备高级服务器管理技能。如有商业需求，建议使用 Cal.com。

---

## 4. Framework Laptop 13 Pro

**原文标题**: Framework Laptop 13 Pro

**原文链接**: [https://frame.work/laptop13pro](https://frame.work/laptop13pro)

**《Framework Laptop 13 Pro 概览》**

Framework Laptop 13 Pro 是一款专为专业人士和科技爱好者设计的高性能、用户可自行维修和升级的笔记本电脑。其核心理念是通过提供一款易于维护、定制和随时间推移进行升级的设备，来对抗电子废弃物。

**主要特点：**

*   **模块化与可维修设计：** 笔记本电脑采用模块化组件构建，用户可单独更换或升级。这包括主板（搭载最新的英特尔酷睿 Ultra 处理器）、内存（最高 96GB DDR5）、存储（M.2 SSD）乃至接口。
*   **扩展卡系统：** 笔记本电脑采用可更换的扩展卡系统（USB-C、USB-A、HDMI、DisplayPort 等），而非固定接口。这些扩展卡可插入机身两侧，使用户能根据具体需求自定义笔记本电脑的连接性。
*   **高性能规格：** 它搭载第 13 代英特尔酷睿或更新的英特尔酷睿 Ultra "Meteor Lake" 处理器，集成 Arc 显卡，配备高分辨率 13.5 英寸显示屏（2256x1504，3:2 宽高比）和 61Wh 电池。
*   **升级路径：** 用户可将笔记本电脑作为完整系统购买，也可选择 DIY 版自行安装组件，或选择预装的 "Pro" 配置。其设计确保未来几代的主板和其他部件将保持兼容，从而延长设备的使用寿命。
*   **可持续性重点：** Framework 强调产品的耐用性、可维修性，并通过其市场提供备件。公司还为旧部件和系统提供回收计划。

本质上，Framework Laptop 13 Pro 是一款功能强大、面向未来的机器，它优先考虑用户所有权、定制化和环境可持续性，而非传统笔记本电脑的"一次性"特性。

---

## 5. 软件工程定律

**原文标题**: Laws of Software Engineering

**原文链接**: [https://lawsofsoftwareengineering.com](https://lawsofsoftwareengineering.com)

本文精选了56条影响软件工程的“定律”或原则。这些并非正式定律，而是观察到的模式、格言和经验法则，它们塑造了软件系统的构建方式、团队运作模式以及决策制定过程。

这些定律被归类到软件开发的关键领域：**架构**（如康威定律、CAP定理）、**团队**（如布鲁克斯定律、邓巴数字）、**规划**（如侯世达定律、帕金森定律）、**质量**（如童子军规则、技术债务）、**规模**（如阿姆达尔定律）、**设计**（如DRY原则、KISS原则）以及**决策**（如奥卡姆剃刀、确认偏误）。

核心观点是：软件工程受人类行为和系统行为的支配，远不止于纯粹代码。这些原则揭示了反复出现的挑战：复杂性的必然性（泰斯勒定律）、过度设计的陷阱（YAGNI原则、第二系统效应）、团队的社会动态（林格尔曼效应），以及决策中常见的认知偏差（邓宁-克鲁格效应、沉没成本谬误）。

最终，这份合集是一个实用的思维工具包，提供了经过验证的智慧，帮助工程师预见问题、改进系统设计、更现实地管理项目，并做出更明智的决策。

---

## 6. 十年过去：《斯蒂芬的香肠卷》仍是最具影响力的解谜游戏之一

**原文标题**: 10 years: Stephen's Sausage Roll still one of the most influential puzzle games

**原文链接**: [https://thinkygames.com/features/10-years-of-grilling-stephens-sausage-roll-remains-one-of-the-most-influential-puzzle-games-ever-created/](https://thinkygames.com/features/10-years-of-grilling-stephens-sausage-roll-remains-one-of-the-most-influential-puzzle-games-ever-created/)

本文庆祝《史蒂芬的香肠卷》发行十周年，赞誉其作为一款具有奠基意义且影响深远的解谜游戏。这款由斯蒂芬·拉韦尔于2016年发布的推箱子风格游戏，以其精妙的设计备受推崇——仅凭简单的机制（一把叉子、香肠和烤架）便衍生出极大的深度与挑战性。其毫不妥协的难度与“纯粹”的解谜核心，使之成为该类型的标杆之作。

文章强调了游戏对玩家和开发者产生的持久影响，它催生了一批“类香肠”游戏并推动了现代推箱子设计的发展。文中还提及拉韦尔通过开发PuzzleScript工具作出的平行贡献，该工具助力更多人创作出基于网格的解谜游戏。

为阐明这种影响力，文章引用了多位知名解谜游戏开发者（艾伦·黑兹尔登、帕特里克·特雷纳、格温·弗雷、科里·马丁和约瑟夫·曼斯菲尔德）的评述。他们一致认为《史蒂芬的香肠卷》塑造了自身的设计理念，展现了极简主义的力量，甚至促使他们转向解谜游戏开发领域。众人共同肯定了这部杰作的地位，认为它拓展了该类型的创作边界。

---

## 7. 奶酪周期表

**原文标题**: A Periodic Map of Cheese

**原文链接**: [https://cheesemap.netlify.app/](https://cheesemap.netlify.app/)

本文提出了一份奶酪的“周期图谱”，分析了奶源类型与制作工艺之间尚未探索的组合。这些空白领域被归类为化学上不可能实现，或仅因文化、物流或经济原因而未被尝试。

文章重点关注那些有望实现且具备可行性的空白领域，创新可能催生出卓越的新品种奶酪。关键案例如下：
*   **牦牛奶格鲁耶尔干酪**：采用传统瑞士工艺处理高脂肪、高蛋白的牦牛奶，可能创造出浓郁醇厚的奶酪，其缺失仅因地理阻隔。
*   **布法罗与牦牛布理软酪**：水牛奶和牦牛奶的极高脂肪含量，可制成口感异常浓郁绵密的布理风格奶酪。
*   **蓟花凝乳酶布法罗软酪**：将水牛奶的丰润与蓟花凝乳酶（常用于西班牙绵羊奶酪）的植物酶结合，可能创造出独特油润微苦的软质奶酪。
*   **布裹熟成绵羊切达**：将布裹熟成技术应用于绵羊奶，可能产出比传统牛奶奶酪更紧实、浓烈且带有结晶的硬质奶酪。

文章也提及更具挑战性的可能性，例如为增添风味而制作的烟熏新鲜骆驼奶酪，或硬质驯鹿奶酪——后者在化学层面颇具潜力，但因产奶量极低而实践困难。

总体而言，这份图谱揭示出奶酪世界的许多“空白”并非绝路，而是传统与地理尚未交汇的创新机遇。

---

## 8. 使用Flipper Zero编辑商店价格标签

**原文标题**: Edit store price tags using Flipper Zero

**原文链接**: [https://github.com/i12bp8/TagTinker](https://github.com/i12bp8/TagTinker)

**摘要**

TagTinker 是一款专为红外电子货架标签（ESL）协议教育研究而设计的 Flipper Zero 应用程序。其用途是让用户能够研究信号结构、分析通信帧，并**仅对用户个人拥有或获得明确书面授权测试的硬件**进行受控的显示实验。

该工具包含显示文本、图像和测试图案的功能，以及一个用于准备单色图形的本地网页工具。它基于他人公开的逆向工程成果构建，特别是 Furrtek 的 PrecIR 项目。

文档反复且着重强调，该软件**不可用于商业或零售环境**。严格禁止的行为包括：在已部署的第三方系统上进行测试、修改价格或产品数据、干扰商业运营或绕过安全控制。维护者明确声明，对任何未经授权、非法或有害的工具使用行为概不负责。

该项目以源代码为先，要求用户自行构建应用程序。它采用 GPL v3.0 许可证授权，并作为一个独立研究项目发布，与任何 ESL 供应商或零售商均无关联。

---

## 9. 聚变发电厂模拟器

**原文标题**: Fusion Power Plant Simulator

**原文链接**: [https://www.fusionenergybase.com/fusion-power-plant-simulator](https://www.fusionenergybase.com/fusion-power-plant-simulator)

本文介绍了一个假设聚变电站的模拟器，重点关注决定其性能和净发电量的关键参数。

核心指标是**科学增益（Qsci）**，即聚变产生的功率与维持反应所需外部加热功率的比值。模拟器允许用户调整该参数及其他变量。

关键运行控制包括**单脉冲加热能量**和**脉冲频率**（或稳态运行）。可选择**燃料类型**（如氘-氚、氘-氘），这将影响反应产物。

**功率转换系统**是发电的核心。用户可模拟简单系统或采用“分流转换”方案——分别利用中子和带电粒子的能量，且各路径转换效率可调。**包层倍增因子**可提升能量捕获效率。

最终的净发电量计算必须考虑损耗：**加热系统自身效率**、**热能到电能的转换效率**以及**厂用电**——维持电站运行所需的功率。显示界面将呈现加热功率、总发电量及扣除厂用电后净功率之间的平衡关系。

本质上，该模拟器阐明实现高科学增益仅是第一步；实用的聚变电站需要高效的支持系统，才能将聚变能量转化为可供电网使用的净盈余电能。

---

## 10. Show HN: GoModel – 基于 Go 语言的开源 AI 网关

**原文标题**: Show HN: GoModel – an open-source AI gateway in Go

**原文链接**: [https://github.com/ENTERPILOT/GOModel/](https://github.com/ENTERPILOT/GOModel/)

GoModel是一个用Go语言编写的开源AI网关，它提供了一个统一的、兼容OpenAI的API，用于与多个大型语言模型提供商交互，包括OpenAI、Anthropic、Gemini、Groq等。它通过允许用户进行标准API调用，同时GoModel根据指定的模型将请求路由到相应的后端，从而简化了开发流程。

主要特性包括高性能、支持核心OpenAI端点（聊天补全、嵌入、文件、批处理）以及提供商原生直通路由。它提供高级功能，如两层响应缓存（精确匹配和语义缓存）以降低成本和延迟，可配置的防护措施，以及用于监控使用情况和成本的管理仪表板。

部署通过Docker非常简单，配置通过环境变量管理。该项目强调安全性，建议在生产环境中使用主密钥。其路线图包括智能路由、预算管理和扩展的提供商支持。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 2 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 3 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 4 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 5 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 6 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 7 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 8 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 9 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 10 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 11 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 12 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 13 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 14 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 15 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 16 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 17 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 18 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 19 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 20 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 21 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 22 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 23 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 24 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 25 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 26 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 27 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 28 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 29 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 30 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 31 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 32 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 33 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 34 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 35 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 36 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 37 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 38 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 39 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 40 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 41 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 42 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 43 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 44 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 45 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 46 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 47 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 48 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 49 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 50 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 51 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 52 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 53 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 54 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 55 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 56 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 57 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 58 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 59 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 60 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 61 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 62 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 63 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 64 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 65 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 66 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 67 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 68 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 69 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 70 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 71 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 72 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 73 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 74 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 75 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 76 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 77 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 78 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 79 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 80 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 81 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 82 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 83 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 84 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 85 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 86 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 87 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 88 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 89 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 90 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 91 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 92 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 93 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 94 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 95 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 96 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 97 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 98 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 99 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 100 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 101 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 102 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 103 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 104 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 105 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 106 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 107 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 108 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 109 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 110 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 111 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 112 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 113 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 114 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 115 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 116 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 117 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 118 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 119 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 120 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 121 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 122 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 123 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 124 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 125 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 126 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 127 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 128 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 129 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 130 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 131 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 132 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 133 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 134 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 135 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 136 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 137 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 138 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 139 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 140 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 141 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 142 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 143 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 144 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 145 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 146 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 147 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 148 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 149 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 150 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 151 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 152 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 153 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 154 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 155 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 156 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 157 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 158 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 159 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 160 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 161 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 162 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 163 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 164 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 165 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 166 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 167 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 168 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 169 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 170 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 171 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 172 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 173 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 174 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 175 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 176 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 177 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 178 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 179 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 180 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 181 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 182 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 183 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 184 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 185 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 186 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 187 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 188 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 189 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 190 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 191 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 192 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 193 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 194 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 195 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 196 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 197 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 198 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 199 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 200 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 201 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 202 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 203 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 204 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 205 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 206 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 207 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 208 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 209 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 210 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 211 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 212 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 213 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 214 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 215 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 216 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 217 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 218 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 219 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 220 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 221 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 222 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 223 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 224 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 225 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 226 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 227 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 228 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 229 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 230 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 231 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 232 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 233 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 234 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 235 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 236 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 237 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 238 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 239 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 240 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 241 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 242 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 243 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 244 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 245 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 246 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 247 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 248 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 249 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 250 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 251 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 252 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 253 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 254 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 255 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 256 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 257 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 258 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 259 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 260 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 261 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 262 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 263 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 264 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 265 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 266 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 267 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 268 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 269 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 270 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 271 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 272 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 273 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 274 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 275 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 276 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 277 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 278 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 279 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 280 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 281 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 282 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 283 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 284 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 285 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 286 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 287 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 288 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 289 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 290 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 291 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 292 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 293 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 294 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 295 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 296 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 297 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 298 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 299 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 300 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 301 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 302 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 303 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 304 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 305 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 306 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 307 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 308 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 309 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 310 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 311 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 312 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 313 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 314 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 315 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 316 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 317 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 318 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 319 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 320 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 321 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 322 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 323 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 324 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 325 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 326 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 327 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 328 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 329 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 330 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 331 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 332 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 333 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 334 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 335 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 336 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 337 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 338 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 339 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 340 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 341 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 342 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 343 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 344 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 345 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 346 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 347 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 348 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 349 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 350 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 351 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 352 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 353 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 354 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 355 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 356 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 357 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 358 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 359 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 360 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 361 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 362 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 363 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 364 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 365 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 366 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 367 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 368 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 369 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 370 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 371 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 372 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 373 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 374 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 375 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 376 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 377 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 378 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 379 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 380 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 381 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 382 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 383 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 384 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 385 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 386 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 387 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 388 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 389 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 390 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 391 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 392 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 393 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 394 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 395 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
