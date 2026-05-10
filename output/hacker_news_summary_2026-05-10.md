# Hacker News 热门文章摘要 (2026-05-10)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 硬件认证作为垄断推手

**原文标题**: Hardware Attestation as Monopoly Enabler

**原文链接**: [https://grapheneos.social/@GrapheneOS/116550899908879585](https://grapheneos.social/@GrapheneOS/116550899908879585)

**摘要：**

题为《硬件认证作为垄断工具》的文章探讨了苹果与谷歌如何通过硬件级认证技术逐步限制用户对设备的控制权。专注于安全性的移动操作系统GrapheneOS指出，这些公司正在部署功能，阻止替代操作系统或自定义软件在其硬件上运行。其实现方式依赖于远程认证——设备必须证明其运行的是经批准的软件，才能访问特定服务或功能。这导致用户被锁定在原始制造商的生态系统中，扼杀了竞争与创新。文章认为，这种做法实际上将安全硬件变成了实施垄断的工具，因为它限制了消费者的选择权以及对设备进行修改或维修的能力。GrapheneOS警告称，尽管这些认证机制被包装为安全措施，但其最终目的是维护苹果和谷歌对移动计算平台的集中控制。

---

## 2. 安全事件报告：CVE-2024-YIKES

**原文标题**: Incident Report: CVE-2024-YIKES

**原文链接**: [https://nesbitt.io/2026/02/03/incident-report-cve-2024-yikes.html](https://nesbitt.io/2026/02/03/incident-report-cve-2024-yikes.html)

**事件报告摘要：CVE-2024-YIKES**

一场严重的供应链攻击始于`left-justify`（每周npm下载量8.47亿次）维护者的YubiKey被盗。随后他落入AI推荐的钓鱼网站陷阱，泄露了凭据。攻击者向`left-justify`发布了恶意更新，窃取了其他包维护者的凭据，包括`vulpine-lz4`——一个被集成到Python构建工具`snekpack`中的Rust库。

被攻陷的`vulpine-lz4`添加了针对CI环境的构建脚本，导致snekpack 3.7.0版本中植入恶意软件，在约420万台开发者机器上安装了反向Shell和SSH后门。该事件由一次偶然事件解决：一个不相关的加密货币蠕虫（`cryptobro-9000`）将snekpack升级到了回滚后的干净版本（3.7.1），有效修补了受感染的机器。

**关键点：**
- 攻击途径：通过AI生成链接实施的网络钓鱼导致凭据被盗。
- 影响：420万台机器被攻陷；供应链跨越npm、Rust和Python生态系统。
- 解决方案：由加密货币蠕虫意外修复。
- 根本原因：YubiKey被盗且仅使用单因素认证。
- 促成因素：过度依赖小型传递依赖项、自动合并以及缺乏有效的安全审查。
- 事件在无主动安全干预下得到解决；事后复盘被一再推迟。

---

## 3. 本地人工智能应当成为常态

**原文标题**: Local AI needs to be the norm

**原文链接**: [https://unix.foo/posts/local-ai-needs-to-be-norm/](https://unix.foo/posts/local-ai-needs-to-be-norm/)

**摘要：本地AI应成为常态**

作者反对当前应用将AI功能外包给云端API（如OpenAI或Anthropic）的趋势，称其既懒惰又有害。这种做法催生了脆弱且侵犯隐私的软件，一旦服务器故障或计费到期便会崩溃。

**关键观点：**
- 现代设备拥有强大且闲置的神经网络引擎——本地使用它们可避免不必要的服务器依赖。
- 云端AI会引发数据留存、用户同意、审计和安全问题，同时增加复杂性（网络、运行时间、速率限制、成本）。
- 对于许多任务（摘要、分类、提取），本地模型已足够且更可靠。

**具体案例：** Brutalist Report的iOS应用完全在设备端使用苹果本地模型API生成文章摘要——无需绕道服务器，不记录用户日志，也无需隐私政策。

**可用工具（苹果生态）：**
- 使用Swift类型和`@Generable`注释进行结构化输出的简单本地模型调用。
- 例如：将文章摘要直接提取为类型化字段（TLDR、要点、关键词），无需解析JSON。

**谬误："本地模型不够智能"**
- 大多数应用功能不需要博士级智力——它们需要可靠的数据转换（摘要、分类、提取）。
- 仅在真正必要时使用云端模型；将用户数据保留在设备端。

**行动号召：** 当你仅需要一个功能时，别再交付分布式系统。通过无需隐私政策来建立信任，而非撰写一份隐私政策。

---

## 4. 人类痕迹

**原文标题**: Traces Of Humanity

**原文链接**: [https://tracesofhumanity.org/hello-world/](https://tracesofhumanity.org/hello-world/)

题为《人性的痕迹》的文章，宣告了作者在博客停更七年后回归。作者以先前主导开发注重安全性的操作系统Qubes OS而闻名，并曾撰写过关于计算机系统安全的技术博客。他反思了自身价值观的转变：过去其工作主要受追求真理（知识）与自由的驱动，对传统人道主义价值观的重视相对较少。如今步入不惑之年的他，将自己的世界观描述为一种理性与人道主义、实用主义与美感、个人主义与社群之间更复杂的对立与斗争。该博客的目的正是记录这种个人冲突。作者暗示，关于人类幸福他并无确切的答案，并指出人道主义固有的挣扎与不确定性或许正是其核心本质。他邀请读者参与互动，珍视理性对话，并引导读者前往“关于”页面获取联系信息。

---

## 5. YC 最大的丑闻

**原文标题**: YC's Biggest Scandals

**原文链接**: [https://ycombinator.fyi/](https://ycombinator.fyi/)

本文详细披露了一系列与Y Combinator（YC）初创公司相关的丑闻与失败案例，尤其是在CEO Garry Tan领导期间。最严重的案件（证据001）涉及**Delve**，这家YC公司因伪造超过493份审计报告，并向其他YC初创公司出售欺诈性合规软件（利用YC网络内的信任关系），于2026年被逐出YC。

其他备受关注的丑闻包括：
- **Central（S24届）**：假扮客户窃取同属YC体系的Warp公司运营手册，随后推出完全雷同的克隆产品。
- **Naive（S25届）**：将开源框架重新包装成专有的"自主AI员工"，违反MIT许可证，借此融资超200万美元。
- **Pickle（W25届）**：窃取GPL许可代码后，推出售价799美元的AR眼镜，被广泛指控为CGI骗局。
- **Optifye.ai（W25届）**：为服装工厂打造AI监控摄像头，将工人标记为编号矩形，被称作"血汗工厂即服务"，导致YC删除其推广材料。
- **Embark Trucks（W16届）**：通过SPAC上市时估值52亿美元却零营收，随后股价暴跌99%。
- **Convoy（关联企业）**：融资超10亿美元、估值达38亿美元，最终仅以1600万美元出售——资产蒸发99.6%。

文章还揭示了**抄袭型初创公司**、**浅层生成式AI包装**和**欺诈行为**的固定模式，常见结局包括：创始人虚耗光阴、投资者血本无归、YC声誉蒙尘。

---

## 6. Lakebase 架构实现更快的 Postgres 写入

**原文标题**: Lakebase architecture delivers faster Postgres writes

**原文链接**: [https://www.databricks.com/blog/how-lakebase-architecture-delivers-5x-faster-postgres-writes](https://www.databricks.com/blog/how-lakebase-architecture-delivers-5x-faster-postgres-writes)

本文详细阐述了Neon与Databricks采用的Lakebase架构如何通过解决"全页写入"（FPW）瓶颈，将Postgres的写入吞吐量提升高达5倍。

**问题所在：** 传统Postgres会在每次检查点后向预写式日志（WAL）写入完整的8KB页面，以防止"残页"导致数据损坏。这会使WAL体积膨胀高达15倍，形成严重的性能瓶颈。

**解决方案：** Lakebase将计算与存储分离。由于计算层无状态且不使用本地磁盘，残页现象不会发生，因此无需FPW。然而，直接禁用FPW会导致存储层增量链无限增长，降低读取速度。其创新在于**镜像生成下推**：存储层（页服务器）在增量链超过阈值时自动生成完整页面镜像，不再依赖计算层的检查点进程。

**关键成果：**
- **写入吞吐量：** 在32 vCPU计算节点上速度提升高达4.5倍（43.9万 vs 9.6万 NOPM）。
- **WAL流量：** 减少94%（每事务从58KB降至不足4KB）。
- **读取延迟：** P99读取延迟下降30-50%，且读取稳定性显著提升。
- **生产验证：** 某56 vCPU客户WAL流从30 MB/s降至1 MB/s；使用同步表（Synced Tables）的客户数据摄入从每秒1.7万行跃升至6.2万行（增长3倍）。

该更新于三月底已在所有Lakebase Serverless及Neon数据库上无缝完成部署，未造成客户停机。

---

## 7. 我重返AWS，并回想起当初离开的原因

**原文标题**: I returned to AWS and was reminded why I left

**原文链接**: [http://fourlightyears.blogspot.com/2026/05/i-returned-to-aws-and-was-reminded-hard.html](http://fourlightyears.blogspot.com/2026/05/i-returned-to-aws-and-was-reminded-hard.html)

**《重返AWS后，我明白了当初为何离开》摘要**

安德鲁·斯图尔特（Andrew Stuart）作为长达15年的AWS早期拥护者，描述了因长期积累的不满而与该平台关系恶化的过程。主要问题包括：AWS多年未构建客户端库（依赖社区力量）、对Python 3的缓慢采纳，以及对DynamoDB的强烈厌恶（指责其高成本和糟糕设计）。他批评了"贵得离谱"的出站流量费（每GB 0.09美元）、复杂的计费陷阱，以及IAM和整个AWS系统噩梦般的复杂性。Lambda被认为相较于传统服务器并无真正优势，反而导致供应商锁定。他还指控AWS对开源项目（如OpenSearch、Valkey、DocumentDB）存在掠夺性行为。

斯图尔特多年前就离开了AWS，仅保留了Route53域名、S3备份和Workmail。当他最近回归，在Bedrock上测试Claude并在192核EC2实例上进行基准测试时，AWS将他的账户标记为可疑活动并予以暂停。这导致他的企业邮箱停用了四天，而支持团队毫无回应。尽管他遵循了所有安全指示并与支持人员沟通，账户仍然受限。

他总结道，发誓要彻底迁移出AWS，转移域名和邮箱，并后悔曾对该平台的信任。这次经历证实了他当初离开的决定是正确的。

---

## 8. 在首次SSH连接时阻止中间人攻击，适用于任何VPS或云服务商

**原文标题**: Stop MitM on the first SSH connection, on any VPS or cloud provider

**原文链接**: [https://www.joachimschipper.nl/Stop%20MITM%20on%20the%20first%20SSH%20connection,%20on%20any%20VPS%20or%20cloud%20provider.html](https://www.joachimschipper.nl/Stop%20MITM%20on%20the%20first%20SSH%20connection,%20on%20any%20VPS%20or%20cloud%20provider.html)

本文提出一种技术，仅利用cloud-init（无需专有提供商工具）来防御首次连接新云虚拟机时的中间人（MitM）攻击。

**问题：** 标准的"首次信任"（TOFU）存在缺陷——面对未知主机密钥时回答"yes"会让攻击者拦截连接。通过cloud-init注入永久SSH主机密钥同样存在风险，因为cloud-init的用户数据通常可被访问（例如通过元数据服务、SSRF攻击或提供商系统）。

**解决方案：** 通过cloud-init注入**临时**SSH主机私钥。管理员仅信任此临时密钥，足够短时间SSH登录虚拟机，生成真实（长期）主机密钥，并获取其公钥。随后脚本利用OpenSSH的密钥轮换机制，将真实主机密钥安全添加至管理员工作站的`~/.ssh/known_hosts`文件。

**核心优势：**
- **安全性：** 临时密钥从不存储于`~/.ssh/known_hosts`中并被丢弃。攻击者即使后来获取cloud-init数据，得到的也只是一串无用的过期密钥。
- **抵御管理员工作站被攻破：** 真实SSH主机私钥从未触及管理员机器，因此即便工作站被入侵也无法获取该密钥。
- **抵御虚拟机被攻破：** 脚本依赖OpenSSH自带的解析器进行密钥轮换，防止被入侵的虚拟机向管理员的`known_hosts`文件注入恶意数据。

---

## 9. 路易斯·罗斯曼提出为受到威胁的OrcaSlicer开发者支付法律费用

**原文标题**: Louis Rossmann offers to pay legal fees for a threatened OrcaSlicer developer

**原文链接**: [https://www.tomshardware.com/3d-printing/louis-rossmann-tells-3d-printer-maker-bambu-lab-to-go-bleep-yourself-over-its-lawsuit-against-enthusiast-right-to-repair-advocate-offers-to-pay-the-legal-fees-for-a-threatened-orcaslicer-developer](https://www.tomshardware.com/3d-printing/louis-rossmann-tells-3d-printer-maker-bambu-lab-to-go-bleep-yourself-over-its-lawsuit-against-enthusiast-right-to-repair-advocate-offers-to-pay-the-legal-fees-for-a-threatened-orcaslicer-developer)

**摘要：**

知名维修权倡导者及YouTube博主路易·罗斯曼公开表示，愿意为开源3D打印软件OrcaSlicer的开发者支付法律费用。此前，中国3D打印机制造商拓竹科技被曝威胁对该开发者采取法律行动。争议源于拓竹试图锁定其打印机生态系统并限制第三方软件使用，罗斯曼认为这违反了维修权和消费者所有权原则。

罗斯曼批评拓竹的策略是"针对小人物"，以此震慑业余爱好者和开发者挑战其专有限制。他将此诉讼称为"勒索"，并主动提出承担开发者的法律费用以对抗该公司行为。该事件凸显了专有生态系统控制与开源社区之间的紧张关系，罗斯曼利用自身平台支持开发者，并警告此类诉讼将威胁创新与用户自由。拓竹尚未对此提议作出回应。

---

## 10. 数学家该如何是好？（2010）

**原文标题**: What's a mathematician to do? (2010)

**原文链接**: [https://mathoverflow.net/questions/43690/whats-a-mathematician-to-do](https://mathoverflow.net/questions/43690/whats-a-mathematician-to-do)

**摘要：**

这篇2010年MathOverflow上的帖子提出疑问：“一个普通人能为数学做出什么贡献？”发帖者担忧，只有高斯、欧拉这样的天才才能创造新数学，而缺乏非凡天赋的人只能沦为“炮灰”。

社区的回答——尤其是著名数学家比尔·瑟斯顿的回复——给出了令人安心的反论：

1. **数学是一项人类的、群体性的活动。** 瑟斯顿认为，数学的价值不仅在于定理，更在于促进清晰的理解。他指出，如果数学理解不被积极传承，就会退化，因此解释、教学和澄清的工作至关重要。

2. **你不需要成为天才就能做出贡献。** 多位用户指出，大多数数学家并非高斯级别的天才。许多伟大发现源于热情、坚持以及“天时地利”。正如费曼和广中平祐所建议的，只要长期深入研究某个主题，就能产生原创见解。

3. **阐述与教学至关重要。** 用现代语言重述旧观点或指导他人并非次要工作——这正是数学得以存续和发展的方式。好的阐述常常能催生新的理解。

4. **热情胜于理性。** 瑟斯顿建议跟随内心而非冷静的逻辑。真正的问题并非“我能变得伟大吗？”，而是“我如何通过数学增进人类福祉？”

简而言之，这篇帖子强调，数学需要各种类型的贡献者——教师、阐释者以及坚持不懈的学习者——而不仅仅是罕见的天才。

---

## 11. 幂等性很简单，直到第二个请求发生变化。

**原文标题**: Idempotency is easy until the second request is different

**原文链接**: [https://blog.dochia.dev/blog/idempotency/](https://blog.dochia.dev/blog/idempotency/)

**摘要：幂等性不仅仅是一个重放缓存**

幂等性看似简单——存储一个键，重试时重放响应——但当第二次请求与第一次不同时便会失效。棘手的情况包括：
- **并发重试**（两个请求同时到达）
- **部分本地成功**（支付已创建，但在发布事件前崩溃）
- **下游状态未知**（提供商已接受支付，但在记录结果前进程消亡）
- **同一键、不同指令**（客户端对不同的金额重复使用相同的键）

作者认为，**幂等性关乎的是效果**，而不仅仅是防止重复写入。一个稳健的解决方案需要：
1. **原子性所有权**：通过`INSERT ... ON CONFLICT`来防止重复执行。
2. **请求哈希化**：对*规范指令*（而非原始字节）进行哈希，并规范字段顺序、默认值，同时忽略传输元数据。
3. **作用域键**（按租户、操作等划分）：避免交叉污染。
4. **针对每种场景的明确策略**：相同指令则重放，相同键下不同指令则拒绝并返回**409冲突**。
5. **恢复机制**：针对处理中状态和提供商超时，因为数据库本身无法知晓崩溃后资金是否已转移。

一张最小的幂等性表应包括租户、操作、键、请求哈希、状态、响应和过期字段。Redis锁有助于处理并发问题，但无法解决持久化结果存储的问题。

**核心要点**：如果你的设计只能处理干净的重放，那它只是一个重放缓存——而非真正的幂等性。困难在于清晰且一致地处理所有故障模式。

---

## 12. 走路变慢？问题可能出在耳朵，而非膝盖

**原文标题**: Walking slower? Your ears, not your knees, might be the problem

**原文链接**: [https://www.wsj.com/health/wellness/hearing-loss-walking-speed-iphone-study-c53c482a](https://www.wsj.com/health/wellness/hearing-loss-walking-speed-iphone-study-c53c482a)

无法访问该文章链接。

---

## 13. Linux上的太空接龙弹珠台

**原文标题**: Space Cadet Pinball on Linux

**原文链接**: [https://brennan.io/2026/05/09/pinball-and-escrow/](https://brennan.io/2026/05/09/pinball-and-escrow/)

**摘要：**

本文介绍了如何在Linux上安装并运行经典Windows XP游戏《太空军校生弹球》。作者斯蒂芬·布伦南指出，GitHub上已有逆向工程的开源版本，最简便的安装方式是通过Flatpak：

`flatpak install com.github.k4zmu2a.spacecadetpinball`

如需更高分辨率图形（1024×768，而非原版480p），用户可从archive.org获取《Full Tilt! Pinball》游戏数据。使用方法为：将下载的ZIP文件解压至游戏数据目录（`~/.var/app/.../SpaceCadetPinball`），然后删除原始捆绑数据文件夹（必要时使用`sudo`），以强制游戏使用新文件。

作者指出原版与Full Tilt版本之间存在细微规则差异，例如回球道指示灯的表现。他也赞赏这种保存努力，同时承认下载受版权保护的游戏数据涉及法律问题。他主张在尊重版权与支持软件保存之间寻求平衡，理想情况下，对已停售的商业产品采用源代码托管方式。

---

## 14. 展示HN：独立网站/博客索引目录

**原文标题**: Show HN: An index of indie web/blog indexes

**原文链接**: [https://theindex.fyi](https://theindex.fyi)

本文介绍《索引之索引》，该精选元索引汇集了38个用于发现独立网站与小众网站的工具与目录，并按六大类别整理：

1. **策展型目录**（例如Blogroll Club、ooh.directory、PersonalSit.es）——由人工维护的个人博客与网站清单，通常接受提交。

2. **RSS与信息聚合器**（例如RSS.Social、indieblog.page、feedle）——独立博客的实时订阅源，适合以信息流形式关注小众网络。

3. **搜索引擎**（例如Marginalia Search、Wiby、Kagi Small Web）——爬取非商业轻量级网站的索引，便于特定内容发现。

4. **随机发现工具**（例如Blog of the Day、The Forest）——将用户引向意外独立网站，提供偶遇式浏览体验。

5. **约束型俱乐部**（例如1MB Club、no-js.club、Dark Theme Club）——基于页面体积或JavaScript使用等技术限制的索引。

6. **独立网络基础设施**（例如IndieWeb Webring、Now Now Now、omg.lol目录）——包含网站环、/now页面目录等互联工具。

本页面欢迎用户提交遗漏条目，强调社区驱动、非商业化的网络探索精神。

---

## 15. 《一美元假币制造者》

**原文标题**: The One Dollar Counterfeiter

**原文链接**: [https://www.amusingplanet.com/2026/05/emerich-juettner-one-dollar.html](https://www.amusingplanet.com/2026/05/emerich-juettner-one-dollar.html)

埃默里希·尤特纳是一位住在纽约、生活贫困、身体虚弱的老年移民，他通过制作粗糙的一美元假钞，意外地成了一名造假者。他利用基本的金属雕刻和摄影技能，在妻子去世后，他靠拾荒为生，于1938年开始印制假钞。他造的假钞质量拙劣——模糊不清、边缘不整，有时甚至拼写错误——但他利用了一个事实：很少有人会仔细检查一美元纸币。他每次只通过小商店和小贩放出少量假钞，从而避开了侦查。

美国特勤局立案编号880，启动了史上规模最大、耗资最多的伪钞调查，花费十年时间追捕神秘的“880先生”。1948年，尤特纳最终被捕，起因是学童在一块空地上发现了他刻制的印版，而他的公寓发生火灾后，线索最终追踪到他。他承认近十年来一直在制造假钞，并坚称他从未给过任何人超过一张假钞，这样任何人都不会损失超过一美元。

在审判中，他并不贪婪且处境令人同情，因此只被判了四个多月的轻刑和1美元罚款。尤特纳成了民间英雄，他的故事被改编成1950年的电影《880先生》。他从这部电影中获得的收入比造假钞还多，此后在长岛平静生活，直至1955年去世。

---

## 16. Show HN：用汇编语言写个网页服务器，给人生找点（没）意义

**原文标题**: Show HN: Building a web server in assembly to give my life (a lack of) meaning

**原文链接**: [https://github.com/imtomt/ymawky](https://github.com/imtomt/ymawky)

本文介绍**ymawky**，一款专为Apple Silicon Mac设计的纯ARM64汇编编写的静态文件网络服务器。这是一个仅使用系统调用、无libc依赖、每个连接都创建独立进程的个人项目。

**核心特性：**
- 支持HTTP方法：GET、PUT、DELETE、OPTIONS、HEAD
- 处理静态文件、MIME类型检测、字节范围请求及百分号编码
- 包含路径遍历防护、基于超时的慢速攻击防护，以及原子化PUT操作（先写入临时文件再重命名）
- 通过`err/`目录提供自定义错误页面，对文件夹请求显示目录列表
- 通过`config.S`可配置（文档根目录、超时时间、最大文件大小、并发进程数）

**安全措施：**
- 拒绝路径长度超过4096字节、包含符号链接或`..`遍历的请求
- 限制在`www/`文档根目录内；拒绝访问临时文件
- 对请求头和数据的接收强制实施超时机制

**局限性：**
- 仅支持MacOS/ARM64；移植到Linux需要大量改动（不同的系统调用约定、结构体布局、信号处理及重定位语法）
- 仅监听`127.0.0.1`；未实现自定义地址
- 不支持服务端代码或查询参数解析

作者表示这只是一个趣味性实验项目，可能存在未被发现的安全漏洞，但其中包含了周全的安全性和配置选项。

---

## 17. 八款更多8位时代微处理器（2024）

**原文标题**: Eight More 8-bit Era Microprocessors (2024)

**原文链接**: [https://thechipletter.substack.com/p/eight-more-8-bit-era-microprocessors](https://thechipletter.substack.com/p/eight-more-8-bit-era-microprocessors)

本文审视了20世纪70年代至80年代初八款鲜为人知的8位微处理器，这些产品因商业失败或影响力有限而湮没于历史，并总结了其失败教训。

关键条目包括：
- **TMX-1795（德州仪器，1971年）：** 一款开创性但未投产的设计，后来助力推翻一项微处理器专利——德州仪器错失良机。
- **Mostek Mk 5065（1974年）：** 经授权采用摩托罗拉已停滞的设计，虽引入后来6800与6502处理器的特性，但依赖竞争对手实属不智。
- **英特尔8085（1976年）：** 8080的小幅升级版，却因英特尔迫使首席设计师法金离职，最终败给性能更优的Zilog Z80。
- **Signetics 2650（1975年）：** 仿小型机架构，但姗姗来迟，且仅8KB的内存分段设计成为致命缺陷。
- **RCA 1802（1974年）：** 首款CMOS微处理器，曾用于航天器，却因过度简化而缺失常规功能。
- **电子阵列9002（1976年）：** 低成本设计却受限于4KB内存，公司旋即倒闭。
- **Intersil 6100（1975年）：** 兼容PDP-8却为12位架构，在8位处理器主导的市场中，向后兼容优势尽失。
- **TMS 9900（德州仪器，1976年）：** 为TI-99/4电脑设计的16位处理器，性能迟缓，最终酿成德州仪器3.3亿美元的惨败。

贯穿始终的教训：创新本身不足为恃——上市时机、实用特性与留住核心人才，方为成功关键。

---

## 18. 《线性代数思维》（2023）

**原文标题**: Think Linear Algebra (2023)

**原文链接**: [https://allendowney.github.io/ThinkLinearAlgebra/index.html](https://allendowney.github.io/ThinkLinearAlgebra/index.html)

**《思维线性代数》（2023）概述**

《思维线性代数》是一本以代码为先导、基于案例的教材，通过实际应用教授线性代数。每章围绕一个实际问题展开——例如模拟网络流量、模拟鸟群飞行或分析电路——使用Python库如NumPy、SciPy、SymPy和NetworkX。读者在Jupyter笔记本中构建可运行的解决方案，获得即时反馈和直观理解，之后再接触正式理论。

本书面向那些在传统数学学习中遇到困难或偏爱实践学习的人群。它强调数学符号与代码之间的转换，涵盖矩阵乘法、特征向量、投影、仿射变换、LU分解、零空间和最小二乘回归等主题。应用范围从PageRank和GPS追踪到台球物理、结构桁架和社会调查分析。

关键学习成果包括：用向量和矩阵描述问题、用标准算法求解问题、交互式可视化概念、以及在工程、数据科学、图形学和机器人学中应用相关工具。本书采用知识共享许可协议（非商业用途，需注明出处），其中多个章节已通过Colab在线开放获取。

---

## 19. 调车场算法动画

**原文标题**: Shunting-Yard Animation

**原文链接**: [https://somethingorotherwhatever.com/shunting-yard-animation/](https://somethingorotherwhatever.com/shunting-yard-animation/)

名为《调度场算法动画》的文章仅包含一段简短的免责声明，而非实质性内容。该声明指出，应用要么成功加载（使用户甚至怀疑自己是否看到过文字），要么完全加载失败，仅显示免责声明。作者为未能使应用具备正常功能致歉，暗示其未付出足够努力。核心信息是：应用性能不可靠，且作者对其故障不承担任何责任。文中未提供任何技术细节、功能说明或操作指引。

---

## 20. 西班牙已成为欧洲电价最低的市场之一

**原文标题**: Spain has become one of Europe’s cheapest power markets

**原文链接**: [https://janrosenow.substack.com/p/spain-just-became-one-of-europes](https://janrosenow.substack.com/p/spain-just-became-one-of-europes)

西班牙已成为欧洲最便宜的电力批发市场之一，2026年初平均电价为每兆瓦时44欧元——远低于意大利（127欧元）、德国（96欧元）和英国（103欧元）。这一转变源于风能和太阳能发电的急剧增长，二者在2026年初合计供应了西班牙44%的电力，而化石燃料发电占比降至17%。

关键转折点出现在2022年，当时风能和太阳能发电首次超过所有化石燃料发电。因此，天然气电厂设定边际批发电价的频率大幅下降——从2022年的55%降至2026年初的9%——使西班牙电价与波动的天然气市场脱钩。

然而，存在几点注意事项。首先，低批发电价并未直接转化为家庭电费账单：由于税费、附加费、电网费用和系统成本，2025年西班牙消费者支付的电价为每千瓦时0.27欧元（高于欧盟平均水平）。其次，随着整合可再生能源所需平衡服务和电网升级的增加，系统成本正在上升。第三，西班牙的核电机组（约占发电量的19%）计划在2027年至2035年间退役，若无足够的低碳替代能源，天然气可能重新获得定价主导权。

文章还指出，2025年4月影响伊比利亚半岛的大停电并非由可再生能源引起，而是因电压不稳定问题所致，现有技术可解决该问题。西班牙的经验表明，大规模可再生能源部署能显著降低电力批发价格，但关于系统韧性、成本分摊及核电退役影响的问题依然存在。

---

## 21. 9位母亲（YC P26）正在招聘

**原文标题**: 9 Mothers (YC P26) Is Hiring

**原文链接**: [https://jobs.ashbyhq.com/9-mothers?utm_source=x8pZ4B3P3Q](https://jobs.ashbyhq.com/9-mothers?utm_source=x8pZ4B3P3Q)

提供的文本并非完整文章，而是一则经过截断的招聘信息或"9 Mothers (YC P26)"的落地页面。可见内容包含职位名称及公司名称，随后显示"您需要启用JavaScript才能运行此应用"的信息。这表明实际的职位列表、公司描述及申请详情均隐藏在JavaScript渲染的界面之后，仅凭当前文本无法获取。

**关键信息：**
- **公司：** 9 Mothers (YC P26)——YC P26批次的孵化企业。
- **目的：** 该页面为招聘公告板（"9 Mothers Jobs"）。
- **技术说明：** 未启用JavaScript无法访问内容，因此所供文本中未提供更多细节（如职位、要求或公司描述）。

---

## 22. 任务瘫痪与人工智能

**原文标题**: Task Paralysis and AI

**原文链接**: [https://g5t.de/articles/20260510-task-paralysis-and-ai/index.html](https://g5t.de/articles/20260510-task-paralysis-and-ai/index.html)

本文探讨了作者在任务瘫痪（区别于分析瘫痪）方面的个人经历，以及其将人工智能作为应对工具的使用情况。作者怀疑自己可能患有未确诊的注意缺陷多动障碍，并列举了难以开启任务、追求新鲜感以及每两到三年频繁更换工作等表现。他们解释称，任务瘫痪会导致大脑感到"卡住"，而非过度思考。

作者对人工智能持矛盾态度。他们承认AI对艺术家的破坏性影响、导致失业问题，以及企业在数据盗用与个人盗版行为之间存在的伦理双重标准。然而，作者发现AI在克服任务瘫痪方面特别有用，尤其在编程领域。AI能帮助他们在无需面临"从零开始"的动机障碍下执行创意。

其隐患在于成瘾性行为：AI通过缩短从想法到结果的周期来快速提供多巴胺。作者承认自己花费超过100欧元购买代币、升级套餐，并使用各种技巧最大化使用量。他们将此体验比作瘾君子寻求下一剂快感。尽管获益良多，作者也认识到依赖风险与不可持续的开支问题。文章结尾注明，本文未使用人工智能撰写。

---

## 23. GitHub正在沉没

**原文标题**: GitHub is sinking

**原文链接**: [https://dbushell.com/2026/04/29/github-is-sinking/](https://dbushell.com/2026/04/29/github-is-sinking/)

**摘要：**  
本文宣称GitHub在被微软收购后已严重退化——变得不可靠、被机器人充斥，并饱受“垃圾内容”和虚假星标经济困扰。作者认为GitHub如今已是“沉船”，其可靠性差，且正走向“劣化”（如Copilot）。他们强调，**Git并非GitHub**——Git是开源、分布式的，无需任何中心化服务即可运行。网络效应并非留下的正当理由，替代品已然存在。  

**关键点：**  
- GitHub的可靠性已恶化（宕机、机器人泛滥）。  
- 用户正在迁移（例如：Lonami、Hashimoto、Armin Ronacher）。  
- 替代方案包括：**Codeberg**（非营利、社区驱动）、**Tangled**（alpha阶段、AT协议）、**Gitea**（云/托管式Git）、**GitLab**（企业级但臃肿）、**Bitbucket**（不推荐但可作为备选）。  
- 使用**Forgejo**（推荐）、Gitea或GitLab自托管是可行的。  
- Git锻造平台并非必需；通过SSH直接使用原生Git即可满足多数用例，正如Linux邮件列表所证明的。  

**结论：** 逐步远离GitHub。用其他任何平台替代它。

---

## 24. 当地人并不知道

**原文标题**: The locals don't know

**原文链接**: [https://www.quarter--mile.com/The-Locals-Dont-Know](https://www.quarter--mile.com/The-Locals-Dont-Know)

**摘要：**  
本文反驳了“像当地人一样生活”的常见旅行建议，指出当地人日常活动往往平淡且缺乏真实感——比如点外卖、看电视或参与体育博彩。作者认为，游客未被日常生活的倦怠习惯所束缚，反而能自由地真正探索、享受景点或创造独特的冒险，无需感到不自在。当地人可能将热门体验斥为“旅游陷阱”，但作者指出，游客常在这些活动中找到真实乐趣——比如日落时租一艘脚踏船——而当地人却待在室内。文章鼓励旅行者拥抱自己感兴趣的一切，无论俗套与否，并建议当地人也能重新找回那种玩乐心态。脚注提醒，“旅游陷阱”往往是身份标签而非品质评判，建议避开明显针对游客的餐厅，但其他时候尽可无拘无束地探索。

---

## 25. 卡西欧S100X日本漆艺限定版（仅限日本页面）

**原文标题**: Casio S100X Japanese Lacquer Edition (JP Page Only)

**原文链接**: [https://www.casio.com/jp/basic-calculators/premium/en-s100x-jc1-u/](https://www.casio.com/jp/basic-calculators/premium/en-s100x-jc1-u/)

无法访问文章链接。

---

## 26. 河獭的惊人回归

**原文标题**: The River Otter's Remarkable Comeback

**原文链接**: [https://www.rewildingmag.com/the-river-otters-remarkable-comeback/](https://www.rewildingmag.com/the-river-otters-remarkable-comeback/)

本文详述了北美五大湖流域水獭（Lontra canadensis）的显著复兴。由于过度捕猎、污染和栖息地丧失，该物种至20世纪中期几乎绝迹。到20世纪80年代，其踪迹已极为罕见。1986年，俄亥俄州自然资源部开始重新引入水獭，从路易斯安那州和阿肯色州将123只水獭放归至水质洁净、食物丰富的河流，成为转折点。纽约州的水獭项目随后在16个地点迁移了279只水獭，安大略省则在阿尔冈昆省立公园等区域记录到自然再殖民现象。栖息地整体修复工作推动了种群恢复，包括湿地再淹没、水坝拆除以及1972年《五大湖水质协议》（减少了有毒物质排放）。如今，俄亥俄州、密歇根上半岛、乔治亚湾及安大略省伊利湖沿岸的河流中均可发现繁盛的水獭种群。作为顶级捕食者，水獭有助于调控鱼类数量，其存在标志着水质清洁与生态系统健康。然而，挑战依然存在，包括道路致死、全氟烷基物质等新兴污染物、滨岸开发及气候变化。对阿尼什纳比等原住民群体而言，水獭的回归象征着文化复兴。这一恢复成果由政府部门、非营利组织及志愿者共同维系。文章总结指出，水獭的复兴证明了生态系统能够自我修复，而持续的跨境合作与公众参与对其未来至关重要。

---

## 27. 我已禁用查询字符串

**原文标题**: I’ve banned query strings

**原文链接**: [https://chrismorgan.info/no-query-strings](https://chrismorgan.info/no-query-strings)

这篇2026年博客文章的作者宣布，其网站chrismorgan.info将禁止未经授权的查询字符串。作者对外部方在其网址中添加跟踪参数（如`?ref=`或UTM标签`?utm_source=`）的行为感到不满，认为这是对用户的滥用。作者主张，引荐信息应通过Referer标头获取，若该标头缺失，则很可能是出于合理的隐私原因。

目前，该网站不使用任何查询字符串。如果作者未来需要使用查询字符串，他们将仅允许已知且经过授权的参数。作者承认，这一策略可能导致过时的缓存失效网址（例如样式表中的`?t=`或`?h=`）失效，但认为这是可以接受的。欢迎访问者尝试向任何网页网址添加查询字符串，观察结果。该功能是通过网站Caddyfile配置实现的。

---

## 28. 我们看到某个有效的方法，然后才理解它。

**原文标题**: We see something that works, and then we understand it

**原文链接**: [https://lemire.me/blog/2025/12/04/we-see-something-that-works-and-then-we-understand-it/](https://lemire.me/blog/2025/12/04/we-see-something-that-works-and-then-we-understand-it/)

**总结：**

文章认为，人类的理解往往发生在实践成功之后，而非反之。作者丹尼尔·勒米尔指出，我们常常在真正理解某个工具、技术或流程为何有效、如何融入更大的理论框架之前，就已经在实际使用它。

要点包括：

1.  **实践优先：** 许多重要创新（如蒸汽机、早期医疗手段、机器学习模型）在深层科学理论对其加以解释之前，就已得到部署并被证明有效。“知道怎么做”先于“知道为什么”。
2.  **理解是回溯性的：** 我们常常先观察一个运行良好的系统，然后再构建一个理论解释来合理化其成功。这个解释可能不完善或不完整，但它有助于我们改进、传授和推广。
3.  **对学习与解决问题的启示：** 勒米尔认为，我们不应要求在行动前先获得完全的理论清晰度，而应拥抱迭代式实验。观察实践中的有效做法，能为后续的理解提供原始数据。
4.  **提醒：** 作者指出，并非所有成功都会带来正确的理解——从有效结果中进行的推断可能具有误导性——但这一模式在进步过程中依然占据主导地位。

最终，文章倡导一种务实的观点：理解是我们发现有效方法后所构建的产物，而非发现它的先决条件。

---

## 29. Chrome的AI功能可能占用你电脑4GB存储空间

**原文标题**: Chrome's AI features may be hogging 4GB of your computer storage

**原文链接**: [https://www.theverge.com/tech/924933/google-chrome-4gb-gemini-nano-ai-features](https://www.theverge.com/tech/924933/google-chrome-4gb-gemini-nano-ai-features)

谷歌Chrome可能会在用户不知情的情况下，自动下载与其Gemini Nano AI关联的大型AI模型文件（名为"weights.bin"），从而占用高达4GB的存储空间。这款设备端模型支持诈骗检测、写作辅助和自动填充等功能，但需要占用大量本地存储空间。许多用户直到发现可用空间不断减少才意识到该文件已被下载。

用户可在Chrome数据文件夹中的"OptGuideOnDeviceModel"目录下检查该文件是否存在。但直接删除文件无法解决问题——若AI功能仍处于开启状态，Chrome会自动重新下载该文件。若要永久释放空间，用户需进入Chrome设置>系统，关闭"设备端AI"选项。

谷歌承认了该问题，表示当设备资源不足时该模型会自动卸载，并指出自2月起用户已可在设置中直接禁用并移除该模型。但批评者认为谷歌未事先明确告知用户存储空间需求，导致不必要的混淆和存储空间损失。文章建议需要释放空间的用户关闭该功能。

---

## 30. 在Linux中解码原始数码照片（1997年）

**原文标题**: Decoding raw digital photos in Linux (1997)

**原文链接**: [https://dechifro.org/dcraw/](https://dechifro.org/dcraw/)

**《解码Linux中的原始数码照片（1997）》摘要**

本文介绍了**dcraw**，这是作者创建的一个自由开源的ANSI C程序，用于在任何操作系统上解码来自任何相机的原始数码照片。它作为相机厂商提供的专有Windows/Mac软件的替代方案而开发。

**要点：**
- 原始照片（未处理的CCD数据）比有损的JPEG质量更高。Dcraw解码这些原始文件。
- 该程序体积小（约10,500行）、可移植（使用标准C库），并且在使用得当的情况下能输出比厂商工具更好的效果。
- Dcraw支持**731款相机**，并能读取多种原始格式（CRW、CR2、NEF、RAF等），将其视为原始“照片”而非单一的“RAW格式”。
- 文章提供了编译指南、GIMP插件链接以及**常见问题解答**，涵盖常见问题：Windows Vista的内存限制、EXIF数据读取、色彩校正，以及16位输出为何偏暗。
- 作者强调，dcraw有意设计为命令行工具而非库，以保持简单并适应快速变化的文件格式。
- 它已被其他软件（Adobe Photoshop、Picasa、RawTherapee等）广泛采用，并移植到了Amiga、BeOS、OS/2和RISC OS平台。
- 对于不支持的相机，作者请求提供原始照片样本（最好带有色卡）以添加支持。

---

