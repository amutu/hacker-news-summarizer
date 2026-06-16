# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-06-16.md)

*最后自动更新时间: 2026-06-16 20:33:42*
## 1. 美国撤回海洋传感器对加拿大研究造成"冲击"，厄尔尼诺现象临近

**原文标题**: U.S. pulling ocean sensors a 'shock' for Canadian research as El Niño nears

**原文链接**: [https://www.timescolonist.com/local-news/us-pulling-ocean-sensors-a-shock-for-canadian-research-as-el-nino-nears-12422874](https://www.timescolonist.com/local-news/us-pulling-ocean-sensors-a-shock-for-canadian-research-as-el-nino-nears-12422874)

**摘要：**

美国决定移除北太平洋一组关键海洋传感器网络。加拿大科学家表示，此举将严重干扰重要的气候与天气预报，尤其是在厄尔尼诺现象临近之际。这些传感器隶属于美国国家海洋和大气管理局（NOAA）的热带大气海洋（TAO）观测阵列，用于监测海洋温度及海况，协助预测厄尔尼诺和拉尼娜模式。加拿大研究人员在不列颠哥伦比亚省及北极地区的渔业管理、海岸安全及长期气候模型中高度依赖该数据。此次撤除被形容为“震惊”，因其在最需要精准预测之际，给监测能力留下了显著空白。加拿大缺乏自身等效的浮标船队，且暂无替代美国系统的即时计划，这引发了各方担忧，认为风暴及海洋热浪的预警时间将会缩短，进而影响生态体系与沿海社区。

---

## 2. 本地运行模型现已表现良好

**原文标题**: Running local models is good now

**原文链接**: [https://vickiboykis.com/2026/06/15/running-local-models-is-good-now/](https://vickiboykis.com/2026/06/15/running-local-models-is-good-now/)

本文探讨了作者在编码和开发任务中使用本地AI模型的经历，截至2026年6月，发现其表现惊人地出色。作者使用配备64GB内存的M2 Mac电脑，通过llama.cpp、Ollama和LM Studio等工具，运行Mistral 7B、Gemma 3、GPT-OSS以及Qwen系列变体等模型。

**核心要点：**

- **质量飞跃：** 本地模型性能大幅提升。此前落后于API模型，GPT-OSS首个实现了几乎无需二次核验。采用Gemma 4（如26b-a4b、12b-qat）后，自主编码循环的准确率和速度已达到前沿模型的约75%。

- **应用场景：** 作者使用本地模型重构Python代码、编写单元测试、校对博客文章以及搭建代码仓库。为保障安全，其在Docker容器中运行自主工作流。

- **部署方案：** 文章详细介绍了使用**Pi**（代理框架）配合**LM Studio**（推理服务器）的配置方案。通过Docker隔离会话，并在`models.json`中配置Pi指向本地端点。核心组件包括Docker Compose文件及用于安全启动代理的bash脚本。

- **优势与局限：** 本地模型具有透明性（实时令牌监控、上下文窗口调优）和灵活性（自由切换模型与量化方案）等优势。但仍受硬件限制（推理速度慢、上下文窗口小、64GB内存占用），且偶尔出现提示模板不匹配问题。

- **结论：** 作者认为本地模型尚未达到生产级软件开发要求，但对其快速发展的生态给予高度评价，并鼓励开发者积极尝试。

---

## 3. 苹果即将让"隐藏邮件地址"功能变得毫无用处

**原文标题**: Apple is about to make Hide My Email useless

**原文链接**: [https://arseniyshestakov.com/2026/06/16/apple-is-about-to-make-hide-my-email-useless/](https://arseniyshestakov.com/2026/06/16/apple-is-about-to-make-hide-my-email-useless/)

Apple于2026年6月15日宣布，“通过Apple登录”和iCloud+“隐藏邮件地址”功能生成的别名，今后将统一归属@private.icloud.com子域名，而非此前的@icloud.com域名。这一调整使得第三方服务更容易屏蔽所有这些别名，而不会影响常规iCloud邮件账户。作者认为，此举削弱了隐私保护与可否认性——这原本正是“隐藏邮件地址”的核心价值，如今它反而像那些常被屏蔽的免费临时邮箱。文章呼吁苹果重新考虑这一决定，并建议用户在变更生效前在@icloud.com上生成更多别名，并指出每小时至少可创建30个。

---

## 4. SpaceX将以600亿美元收购Cursor

**原文标题**: SpaceX to buy Cursor for $60B

**原文链接**: [https://www.reuters.com/legal/transactional/spacex-buy-anysphere-60-billion-2026-06-16/](https://www.reuters.com/legal/transactional/spacex-buy-anysphere-60-billion-2026-06-16/)

无法访问该文章链接。

---

## 5. TIL：无需curl，利用Bash的/dev/tcp即可发起HTTP请求

**原文标题**: TIL: You can make HTTP requests without curl using Bash /dev/TCP

**原文链接**: [https://mareksuppa.com/til/bash-dev-tcp-http-without-curl/](https://mareksuppa.com/til/bash-dev-tcp-http-without-curl/)

**摘要：**

本文介绍如何使用 Bash 内置的 `/dev/tcp` 功能发起 HTTP 请求，适用于无法使用 curl 或 wget 的场景（如精简版 Docker 容器）。

Bash 可通过重定向语法 `exec 3<>/dev/tcp/host/port` 打开原始 TCP 套接字，接着用 `printf` 手动构造 HTTP 请求，并用 `cat` 读取响应。例如：

```bash
exec 3<>/dev/tcp/service/8642
printf 'GET /health HTTP/1.1\r\nHost: service\r\nConnection: close\r\n\r\n' >&3
cat <&3
```

`Connection: close` 头部至关重要，缺少它将导致 `cat` 持续等待数据而挂起。此方法仅适用于明文 HTTP（不支持 TLS）。它是 Bash 特有的编译时功能（非 POSIX 标准），通过 `--enable-net-redirections` 选项启用，在 dash 或 zsh 中无法使用。

虽然它无法替代 curl——缺乏解析、重定向、压缩、重试及 TLS 处理能力——但在无法安装额外工具的极简环境中，可作为一种快速调试手段用于连通性检测。

---

## 6. 《卡尔文与霍布斯》与诚实的代价

**原文标题**: Calvin and Hobbes and the price of integrity

**原文链接**: [https://therepublicofletters.substack.com/p/calvin-and-hobbes-and-the-price-of](https://therepublicofletters.substack.com/p/calvin-and-hobbes-and-the-price-of)

《卡尔文与霍布斯》创作者比尔·沃特森将艺术完整性置于商业成功之上，本文即围绕这一主题展开。文章从一则大学轶事切入：沃特森曾在宿舍天花板上临摹米开朗基罗的画作，却在离校前将其粉刷覆盖，以此昭示他对创作过程的专注远胜于最终成品。

多年后，当该漫画于1995年声名鼎盛之际，沃特森以停更《卡尔文与霍布斯》之举震惊业界——他自认在每日截稿压力下已穷尽创作可能。他拒绝包括霍布斯玩偶在内的丰厚周边合约，认为这些商业行为会贬损漫画的魔力并玷污艺术愿景。他坚持让这部作品保持"单兵作战"模式以维护其纯粹性，甚至直言不讳地称其联合报社为"企业寄生虫"。

本文将沃特森的博弈诠释为道德抉择：为捍卫作品主导权，他拒绝了那个时代（如加菲猫商业帝国）标志性的授权暴利。尽管承受着续更压力，他仍执意按照自己的方式终结漫画，这巩固了他作为不妥协艺术家的不朽地位——一个视创作满足感高于名利的人。

---

## 7. 机械腕表（2022）

**原文标题**: Mechanical Watch (2022)

**原文链接**: [https://ciechanow.ski/mechanical-watch/](https://ciechanow.ski/mechanical-watch/)

**《机械手表》摘要（2022）**

本文解析了机械手表机芯的内部运作原理，重点介绍了无需电池即可实现精准计时的七个关键部件。

**动力：** 能量储存于**发条**中——即位于**发条盒**内的螺旋扭力弹簧。上链时收紧发条，释放时带动发条盒旋转，为手表提供动力。摩擦式打滑机制可防止过度上链。

**齿轮：** 发条盒旋转一圈需转化为秒针约2400圈旋转。为避免不切实际的两齿轮结构，**轮系**（包括发条轮、秒轮、三轮和四轮）逐级放大转速。每个大齿轮驱动同轴上的更小**齿轮轴**，齿形采用摆线轮廓以提高传动效率。

**擒纵机构：** **擒纵轮**与**擒纵叉**控制能量释放。擒纵叉交替锁止与释放擒纵轮，使轮齿以受控步进方式"逃脱"。叉臂末端的合成红宝石可减少摩擦与磨损。

**摆轮：** **摆轮**与**游丝**（扭力弹簧）以精准频率振荡，构成手表的计时核心。摆轮上的**宝石滚轴**撞击擒纵叉，解锁擒纵轮并推动摆轮，维持其振荡。调节游丝刚度与摆轮转动惯量即可设定节拍速率。

这些部件协同运作，将储存的发条能量转化为表针稳定、规律的转动。

---

## 8. GPT‑NL：面向荷兰的主权语言模型

**原文标题**: GPT‑NL: a sovereign language model for the Netherlands

**原文链接**: [https://www.tno.nl/en/digital/artificial-intelligence/gpt-nl/](https://www.tno.nl/en/digital/artificial-intelligence/gpt-nl/)

**GPT‑NL 概要：面向荷兰的主权语言模型**

GPT‑NL 是由 TNO、SURF 及荷兰法医研究所（NFI）联合开展的项目，旨在构建独立的荷兰语语言模型及生态系统。该项目由荷兰经济事务与气候政策部提供 1350 万欧元资助，致力于增强数字自主权，并确保人工智能以符合公共价值观的方式负责任地发展。

核心原则包括：
- **主权性**：在荷兰/欧洲境内开发，避免依赖非欧洲供应商。
- **开放透明**：源代码开源；公开数据集洞察及受控许可下的模型权重。
- **可信赖**：从头训练以避免数据来源不明、版权风险或个人信息问题。数据收集排除有害内容、重复数据及机密信息，同时保护知识产权并对个人信息进行匿名化处理。
- **互惠互利**：通过内容委员会建立公平的数据供应链，实现创作者收益共享。
- **高效性**：在模型规模与训练过程中注重能源与水资源效率。
- **公共资助与问责**：公共投资确保透明度及与社会目标的契合。

GPT‑NL 证明了强大的人工智能能够与公共价值观共存，为荷兰创造更公平、更自主的未来。

---

## 9. 但剃牦牛毛也挺有趣的

**原文标题**: But yak shaving is fun

**原文链接**: [https://parksb.github.io/en/article/32.html](https://parksb.github.io/en/article/32.html)

**摘要：**

本文探讨了“无效迂回”（yak shaving）这一概念——即由初始目标引发的一连串无关任务，常常导致人们偏离最初的目的。文章解释了该术语源自《莱恩和史丁比》剧集，并由麻省理工学院学生卡林·维耶里推广开来。

作者讲述了自己因发现现有工具过于受限，而从零开始构建静态网站生成器的经历，并承认这正是一次“无效迂回”。尽管工程师和管理者常因时间和预算风险而警告不要从头开始构建，但文章认为，“无效迂回”可以很有趣且富有教育意义。

一个关键例子是高德纳创建TeX。为了排版一本书，他最终发明了一门编程语言（WEB）、一种范式（文学编程）、一个算法（Knuth-Plass换行算法）、一套字体（Computer Modern）以及一种格式（DVI）——这场持续十年的“无效迂回”最终取得了成功。

文章总结道，大多数“无效迂回”都会失败，但对学习者而言，其效果却异常显著，往往比完成原始任务能获得更多知识。即使未能抵达终点，学习过程本身也让此举物有所值，正如《计算机系统要素》等项目所证明的那样。归根结底，“无效迂回”既有趣又富有价值。

---

## 10. 没人点你的分享按钮

**原文标题**: Nobody clicks your share buttons

**原文链接**: [https://ankursethi.com/links/nobody-clicks-your-share-buttons/](https://ankursethi.com/links/nobody-clicks-your-share-buttons/)

研究表明，网站上的社交分享按钮使用率极低。英国政府一项覆盖680万次页面浏览的研究发现，分享按钮点击率仅为0.21%（每476名访问者中仅有1人点击），且从未有用户主动要求该功能——他们更倾向于复制粘贴链接。Moovweb对6100万次移动端会话的分析显示，仅有0.2%的用户与分享按钮互动，而他们点击广告的可能性是分享按钮的12倍。Luke Wroblewski从1800万次页面浏览中收集的众包数据显示，不同组织和受众的平均互动率仅为0.25%。

人们并非点击分享按钮，而是复制粘贴网址或使用浏览器自带的分享功能。2012年，《大西洋月刊》的Alexis Madrigal指出，分析数据中很大一部分流量显示为“直接访问”——并非来自输入的网址或书签，而是来自粘贴到短信、邮件或Slack聊天中的链接。本文作者也证实了这一模式，其网站的首要流量来源正是“直接/无来源”。关键结论：社交分享按钮几乎无人问津，因为用户自然倾向于手动分享链接。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 2 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 3 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 4 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 5 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 6 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 7 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 8 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 9 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 10 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 11 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 12 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 13 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 14 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 15 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 16 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 17 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 18 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 19 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 20 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 21 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 22 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 23 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 24 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 25 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 26 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 27 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 28 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 29 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 30 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 31 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 32 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 33 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 34 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 35 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 36 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 37 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 38 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 39 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 40 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 41 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 42 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 43 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 44 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 45 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 46 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 47 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 48 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 49 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 50 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 51 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 52 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 53 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 54 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 55 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 56 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 57 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 58 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 59 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 60 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 61 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 62 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 63 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 64 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 65 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 66 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 67 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 68 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 69 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 70 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 71 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 72 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 73 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 74 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 75 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 76 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 77 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 78 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 79 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 80 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 81 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 82 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 83 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 84 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 85 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 86 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 87 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 88 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 89 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 90 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 91 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 92 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 93 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 94 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 95 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 96 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 97 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 98 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 99 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 100 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 101 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 102 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 103 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 104 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 105 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 106 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 107 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 108 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 109 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 110 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 111 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 112 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 113 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 114 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 115 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 116 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 117 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 118 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 119 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 120 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 121 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 122 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 123 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 124 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 125 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 126 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 127 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 128 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 129 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 130 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 131 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 132 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 133 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 134 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 135 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 136 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 137 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 138 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 139 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 140 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 141 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 142 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 143 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 144 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 145 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 146 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 147 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 148 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 149 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 150 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 151 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 152 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 153 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 154 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 155 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 156 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 157 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 158 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 159 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 160 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 161 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 162 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 163 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 164 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 165 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 166 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 167 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 168 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 169 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 170 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 171 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 172 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 173 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 174 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 175 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 176 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 177 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 178 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 179 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 180 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 181 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 182 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 183 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 184 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 185 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 186 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 187 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 188 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 189 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 190 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 191 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 192 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 193 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 194 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 195 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 196 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 197 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 198 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 199 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 200 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 201 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 202 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 203 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 204 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 205 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 206 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 207 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 208 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 209 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 210 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 211 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 212 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 213 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 214 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 215 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 216 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 217 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 218 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 219 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 220 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 221 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 222 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 223 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 224 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 225 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 226 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 227 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 228 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 229 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 230 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 231 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 232 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 233 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 234 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 235 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 236 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 237 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 238 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 239 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 240 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 241 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 242 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 243 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 244 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 245 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 246 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 247 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 248 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 249 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 250 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 251 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 252 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 253 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 254 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 255 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 256 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 257 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 258 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 259 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 260 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 261 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 262 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 263 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 264 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 265 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 266 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 267 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 268 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 269 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 270 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 271 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 272 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 273 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 274 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 275 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 276 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 277 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 278 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 279 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 280 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 281 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 282 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 283 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 284 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 285 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 286 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 287 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 288 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 289 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 290 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 291 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 292 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 293 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 294 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 295 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 296 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 297 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 298 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 299 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 300 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 301 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 302 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 303 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 304 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 305 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 306 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 307 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 308 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 309 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 310 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 311 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 312 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 313 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 314 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 315 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 316 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 317 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 318 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 319 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 320 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 321 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 322 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 323 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 324 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 325 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 326 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 327 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 328 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 329 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 330 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 331 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 332 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 333 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 334 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 335 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 336 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 337 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 338 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 339 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 340 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 341 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 342 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 343 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 344 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 345 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 346 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 347 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 348 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 349 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 350 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 351 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 352 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 353 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 354 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 355 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 356 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 357 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 358 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 359 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 360 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 361 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 362 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 363 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 364 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 365 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 366 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 367 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 368 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 369 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 370 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 371 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 372 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 373 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 374 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 375 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 376 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 377 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 378 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 379 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 380 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 381 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 382 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 383 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 384 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 385 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 386 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 387 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 388 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 389 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 390 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 391 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 392 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 393 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 394 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 395 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 396 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 397 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 398 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 399 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 400 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 401 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 402 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 403 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 404 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 405 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 406 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 407 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 408 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 409 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 410 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 411 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 412 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 413 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 414 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 415 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 416 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 417 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 418 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 419 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 420 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 421 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 422 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 423 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 424 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 425 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 426 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 427 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 428 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 429 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 430 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 431 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 432 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 433 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 434 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 435 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 436 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 437 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 438 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 439 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 440 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 441 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 442 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 443 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 444 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 445 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 446 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 447 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 448 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 449 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 450 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 451 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
