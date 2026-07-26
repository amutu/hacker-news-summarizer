# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-07-26.md)

*最后自动更新时间: 2026-07-26 20:38:46*
## 1. Decker，一个建立在HyperCard和经典macOS遗产之上的平台

**原文标题**: Decker, a platform that builds on the legacy of Hypercard and classic macOS

**原文链接**: [https://beyondloom.com/decker/](https://beyondloom.com/decker/)

Decker 是一个免费开源的多媒体平台，用于创建交互式文档，如电子杂志、游戏和演示文稿。它受到HyperCard和经典MacOS的启发，提供了怀旧的“抖动朋克”美学、深度撤销历史、现代键盘/触控支持以及批量编辑功能。完成的项目可以保存为独立的HTML文件，在任何浏览器中运行，也可以在MacOS、Windows、BSD和Linux上原生使用。

Decker采用一种新颖的脚本语言Lil，受Lua和Q启发，包含隐式标量向量算术和类似SQL的查询语言。它提供内置的交互式小部件、可复制并作为文本共享的自定义小部件定义，以及一个用于无头操作和脚本的命令行工具（Lilt）。文档使用与Git/SVN兼容的面向行的文本格式。

该平台没有广告、遥测或用户追踪。它包含详尽的文档、示例项目（例如推箱子、打砖块、CHIP-8解释器），以及用于绘图、统计、动画、寻路等的库。源代码在GitHub上可用（MIT许可证），MacOS和Windows的二进制版本在Itch.io上发布，该平台还设有社区论坛和定期举办的“Decker奇幻训练营”游戏开发大赛（下一届：2026年7月）。

---

## 2. 设计是妥协

**原文标题**: Design is compromise

**原文链接**: [https://stephango.com/design-is-compromise](https://stephango.com/design-is-compromise)

文章指出，“妥协”一词被不公平地污名化，而实际上它是决策和优秀设计中不可避免的一部分。妥协不过是优先级排序——在两者之间做出选择。企业常常将产品标榜为“不妥协”，但这根本不可能；每一个选择都天然地拒绝了其他选项。更合适的说法是“权衡”，它清晰地表明你是在用弱点换取优势。有主见的设计之所以出色，正是因为它在某些方面明显较弱，从而在其他方面显著更强。试图取悦所有人只会导致平庸——这本身就是一种妥协。优秀设计的关键在于为你的受众做出正确的权衡，而非完全避免妥协。

---

## 3. 伦敦盖特威克机场推出了机器人泊车服务

**原文标题**: London Gatwick has launched a robotic airport parking service

**原文链接**: [https://aerospaceglobalnews.com/news/gatwick-airport-robotic-parking-stanley-robotics/](https://aerospaceglobalnews.com/news/gatwick-airport-robotic-parking-stanley-robotics/)

伦敦盖特威克机场成为英国首个引入机器人停车服务的机场，并与斯坦利机器人公司合作推出了该服务。乘客驾车驶入南航站楼附近的私人停车舱，停好车后自行保管钥匙。一辆自动机器人会滑入车辆底部，通过轮胎将其抬起，并运送到安全的存储区域。系统利用乘客返程航班的详细信息，确保在其返回时车辆已在取车舱内等候。该设施距离航站楼仅几步之遥，并提供免费穿梭巴士。

与传统代客泊车不同，客户全程保留车钥匙，这带来了额外的安心感。如有需要，现场工作人员可代为取出车内紧急物品。机器人停车通过让车辆停得更近，最大限度地提高了空间利用效率，无需新增基础设施即可增加容量。该服务适用于大多数标准车辆，但有如下限制：最大重量2.6吨，高度2.3米，轴距3.3米，轮毂直径21英寸。不支持当天即停即走，需提前预约。

盖特威克机场交通负责人奥利·贝德福德称其为“真正的游戏规则改变者”，而斯坦利机器人公司首席执行官克莱芒·布萨尔则强调，随着机场的发展，该技术有助于应对未来停车需求。这是斯坦利机器人公司在英国机场的首次部署，此前已在国际多个地点投入使用。

---

## 4. GitHub的安全团队到底做什么？

**原文标题**: What does GitHub's security team even do?

**原文链接**: [https://orchidfiles.com/github-security-team/](https://orchidfiles.com/github-security-team/)

这篇文章批评了GitHub安全团队未能主动打击恶意软件仓库。作者指出，使用简单的GitHub搜索查询（例如 `path:readme.md "## 📥 Download"`）就能轻易找到数千个分发木马程序的仓库。这些仓库模式一致：一个带有表情符号标题的自述文件，以及一个包含恶意文件的压缩包链接。在发现并公布了一份包含10,000个此类仓库的列表及检测脚本后，该文章登上了Hacker News首页。GitHub的唯一回应是在数小时内删除了这些特定仓库。然而，当作者重新运行脚本时，新的恶意仓库又出现了，并且整整一个月未被封禁，尽管同一模式已公之于众。文章质疑，为何拥有数十亿美元收入、专门安全团队和AI工具的GitHub，无法实施持续监控或快速处理新报告的安全威胁。作者推测，官僚惰性或缺乏主动性可能是原因，并对比了GitHub一次性快速删除与未能建立可持续检测机制的失败。

---

## 5. 如何屏蔽部分机器人

**原文标题**: How to Block Some of the Bots

**原文链接**: [https://nochan.net/b/Internet-Crap/20260606-How-To-Block-Some-Of-The-Bots/](https://nochan.net/b/Internet-Crap/20260606-How-To-Block-Some-Of-The-Bots/)

无法访问文章链接。

---

## 6. Show HN：CheapSecurity – 适用于Linux SBC的轻量级自建CCTV系统

**原文标题**: Show HN: CheapSecurity – Lightweight, Self-Hosted CCTV for Linux SBCs

**原文链接**: [https://github.com/gmrandazzo/CheapSecurity](https://github.com/gmrandazzo/CheapSecurity)

**CheapSecurity** 是一款轻量级、自托管的CCTV系统，适用于Linux单板计算机（如树莓派）和USB网络摄像头。它优先考虑隐私保护，所有录像均存储在本地，无需云订阅或重复费用。核心功能包括实时MJPEG流、基于帧差法的运动检测、带预运动缓冲的自动录制、带快照的邮件警报，以及Telegram集成（自动上传视频及通过机器人命令获取快照和片段）。夜间模式通过软件CLAHE及亮度和对比度增强改善低光画面。存储管理可按时间、总大小和可用磁盘空间清理录像。网页仪表盘支持切换设置、查看录像及批量操作（下载ZIP、发送至Telegram、删除）。

---

## 7. 浣熊吉莫西患有一种罕见的脊柱疾病。以下是关于此病的具体情况。

**原文标题**: Jimothy the raccoon has a rare spinal condition. Here's what that means

**原文链接**: [https://www.popsci.com/science/whats-jimothy-raccoon-condition/](https://www.popsci.com/science/whats-jimothy-raccoon-condition/)

来自西雅图的浣熊吉莫西（Jimothy）因患有名为“短脊柱综合征”的罕见遗传疾病，导致其身体异常圆润且没有脖子，从而成为网络红人。生态学家朱利安·埃弗里（Julian Avery）解释称，这种病症源于有缺陷的隐性基因，导致脊柱椎骨缩短或融合。尽管外形奇特，吉莫西似乎相当健康——能够正常觅食、攀爬和活动，大脑和内脏器官均未受损。其作为浣熊物种的适应能力也有助于它的生存。

吉莫西面临的主要风险并非其病症，而是人类干预。投喂它可能使其对汽车或野生动物驱逐等威胁放松警惕。包括华盛顿州鱼类与野生动物部在内的专家呼吁人们保持不干涉态度：在尊重距离内欣赏，切勿干预。吉莫西的名气持续升温，有市议员宣布“吉莫西之夏”并举办社区艺术比赛。它的发现者基安娜·霍尔（Kiana Hall）希望它的故事能鼓励人们以负责任的态度欣赏本地野生动物。

---

## 8. Htmx 4.0，首个独家在Game Boy上发布的JavaScript库

**原文标题**: Htmx 4.0, the first JavaScript library to release exclusively on the Game Boy

**原文链接**: [https://swag.htmx.org/en-cad/products/htmx-4-the-game](https://swag.htmx.org/en-cad/products/htmx-4-the-game)

Htmx 4.0 被幽默地宣布为首个仅登陆 Game Boy® 平台的 JavaScript 库，以实体游戏卡带形式发售，售价 35.93 加元。该游戏号称“四关泡菜收集大冒险”，让玩家“将客户端 JS 压缩至最小尺寸”，并在击败名为 Warren 的角色后解锁 htmx 4.0 源代码。商品列表还包括相关周边：“极客终端马克杯”（20.12 加元）、“htmx 骏马海报”（21.56 加元）以及“黄色骏马 htmx 复古款”（10.06 加元）。质量保证仅针对印刷或可见问题，不支持常规退货。本文以讽刺笔调戏谑 htmx JavaScript 库的新版本，将其包装成一款复古电子游戏。

---

## 9. 数据导向设计入门 [pdf]

**原文标题**: Introduction to Data-Oriented Design [pdf]

**原文链接**: [https://www.gamedevs.org/uploads/introduction-to-data-oriented-design.pdf](https://www.gamedevs.org/uploads/introduction-to-data-oriented-design.pdf)

提供的内容是原始的PDF二进制文件，不可读文本。然而，根据标题《数据导向设计简介》，一篇典型的文章摘要会涵盖以下关键点：

数据导向设计（DOD）是一种软件设计理念，专注于数据的有效组织和处理，强调缓存局部性和内存访问模式，而非传统的面向对象抽象。该文章很可能解释DOD如何优先考虑数据在内存中的存储方式（例如，使用结构体数组而非数组结构体），以最大化CPU缓存利用率并减少缓存未命中。

核心原则包括：
- **数据与逻辑分离**：数据结构设计用于高效的批量处理，而非映射现实世界对象。
- **聚焦热数据路径**：识别性能关键循环，并将数据组织为连续内存以便处理。
- **批量处理**：使用简单、无分支的算法处理大型同质数据数组，以利用SIMD指令。
- **避免不必要的间接引用**：用直接数组索引和扁平数据结构替代指针和虚函数调用。

该文章还可能讨论权衡因素，例如代码可读性降低但性能显著提升，尤其在游戏、模拟和实时系统中。它常将DOD与面向对象设计（OOD）对比，并通过实体组件系统等示例加以说明。

由于实际PDF内容无法访问，此摘要反映了数据导向设计入门文章的常见主题。

---

## 10. 支撑代币转售与欺诈的中继市场

**原文标题**: The relay market powering token resellers and fraud

**原文链接**: [https://vectoral.com/blog/token-relay-market](https://vectoral.com/blog/token-relay-market)

该文揭露了一个蓬勃发展的地下API中继市场，该市场以折扣价转售OpenAI、Anthropic等AI模型的访问权限。中继站（或称"中转站"）利用被盗、泄露或拼凑的API密钥，以低于官方定价最高97.8%的价格代理流量至美国模型。该生态系统分为四层：上游卡商/账号商出售虚拟信用卡和批量账户；中游账号池聚合管理数百个账户；下游中继站将账号池打包成计费的中文产品；终端用户——包括开发者、初创公司及商业买家——则利用该基础设施进行廉价推理和模型蒸馏。

大多数中继站运行在开源网关（one-api或new-api）上，这些工具本身合法，但一旦搭载未经授权的密钥即构成非法行为。常见的滥用手段包括：自动批量注册免费试用、退款攻击、预付卡支付以及开放推理。一种新策略"钱包拒绝服务"通过向供应商发送海量请求来消耗其预算。

该市场已成熟且持续增长：存在比价网站、联盟计划，甚至每天抽取50张价值100美元的API密钥。前十名中继站每月吸引360万次访问。供应商可通过提高准入门槛、监控支付与行为、聚类账户及设定消费上限来防御，但欺诈行为始终是场猫鼠游戏。作者预测，随着KYC验证的推广，滥用方式将发生转变。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 2 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 3 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 4 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 5 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 6 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 7 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 8 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 9 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 10 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 11 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 12 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 13 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 14 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 15 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 16 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 17 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 18 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 19 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 20 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 21 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 22 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 23 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 24 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 25 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 26 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 27 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 28 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 29 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 30 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 31 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 32 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 33 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 34 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 35 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 36 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 37 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 38 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 39 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 40 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 41 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 42 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 43 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 44 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 45 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 46 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 47 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 48 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 49 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 50 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 51 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 52 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 53 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 54 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 55 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 56 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 57 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 58 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 59 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 60 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 61 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 62 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 63 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 64 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 65 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 66 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 67 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 68 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 69 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 70 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 71 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 72 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 73 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 74 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 75 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 76 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 77 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 78 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 79 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 80 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 81 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 82 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 83 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 84 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 85 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 86 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 87 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 88 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 89 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 90 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 91 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 92 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 93 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 94 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 95 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 96 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 97 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 98 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 99 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 100 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 101 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 102 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 103 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 104 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 105 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 106 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 107 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 108 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 109 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 110 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 111 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 112 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 113 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 114 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 115 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 116 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 117 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 118 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 119 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 120 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 121 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 122 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 123 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 124 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 125 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 126 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 127 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 128 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 129 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 130 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 131 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 132 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 133 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 134 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 135 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 136 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 137 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 138 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 139 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 140 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 141 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 142 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 143 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 144 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 145 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 146 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 147 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 148 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 149 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 150 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 151 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 152 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 153 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 154 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 155 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 156 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 157 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 158 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 159 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 160 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 161 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 162 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 163 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 164 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 165 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 166 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 167 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 168 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 169 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 170 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 171 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 172 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 173 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 174 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 175 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 176 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 177 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 178 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 179 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 180 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 181 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 182 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 183 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 184 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 185 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 186 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 187 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 188 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 189 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 190 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 191 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 192 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 193 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 194 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 195 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 196 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 197 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 198 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 199 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 200 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 201 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 202 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 203 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 204 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 205 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 206 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 207 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 208 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 209 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 210 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 211 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 212 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 213 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 214 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 215 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 216 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 217 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 218 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 219 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 220 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 221 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 222 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 223 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 224 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 225 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 226 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 227 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 228 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 229 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 230 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 231 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 232 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 233 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 234 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 235 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 236 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 237 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 238 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 239 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 240 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 241 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 242 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 243 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 244 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 245 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 246 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 247 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 248 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 249 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 250 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 251 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 252 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 253 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 254 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 255 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 256 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 257 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 258 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 259 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 260 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 261 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 262 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 263 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 264 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 265 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 266 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 267 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 268 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 269 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 270 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 271 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 272 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 273 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 274 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 275 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 276 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 277 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 278 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 279 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 280 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 281 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 282 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 283 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 284 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 285 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 286 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 287 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 288 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 289 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 290 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 291 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 292 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 293 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 294 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 295 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 296 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 297 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 298 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 299 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 300 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 301 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 302 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 303 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 304 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 305 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 306 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 307 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 308 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 309 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 310 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 311 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 312 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 313 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 314 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 315 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 316 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 317 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 318 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 319 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 320 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 321 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 322 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 323 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 324 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 325 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 326 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 327 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 328 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 329 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 330 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 331 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 332 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 333 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 334 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 335 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 336 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 337 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 338 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 339 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 340 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 341 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 342 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 343 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 344 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 345 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 346 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 347 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 348 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 349 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 350 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 351 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 352 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 353 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 354 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 355 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 356 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 357 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 358 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 359 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 360 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 361 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 362 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 363 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 364 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 365 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 366 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 367 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 368 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 369 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 370 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 371 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 372 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 373 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 374 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 375 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 376 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 377 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 378 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 379 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 380 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 381 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 382 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 383 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 384 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 385 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 386 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 387 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 388 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 389 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 390 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 391 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 392 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 393 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 394 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 395 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 396 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 397 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 398 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 399 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 400 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 401 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 402 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 403 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 404 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 405 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 406 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 407 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 408 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 409 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 410 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 411 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 412 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 413 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 414 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 415 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 416 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 417 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 418 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 419 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 420 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 421 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 422 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 423 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 424 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 425 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 426 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 427 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 428 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 429 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 430 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 431 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 432 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 433 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 434 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 435 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 436 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 437 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 438 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 439 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 440 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 441 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 442 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 443 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 444 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 445 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 446 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 447 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 448 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 449 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 450 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 451 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 452 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 453 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 454 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 455 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 456 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 457 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 458 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 459 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 460 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 461 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 462 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 463 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 464 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 465 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 466 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 467 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 468 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 469 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 470 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 471 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 472 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 473 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 474 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 475 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 476 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 477 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 478 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 479 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 480 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 481 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 482 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 483 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 484 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 485 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 486 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 487 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 488 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 489 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
