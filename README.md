# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-05-10.md)

*最后自动更新时间: 2026-05-10 20:33:32*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 2 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 3 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 4 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 5 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 6 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 7 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 8 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 9 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 10 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 11 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 12 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 13 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 14 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 15 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 16 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 17 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 18 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 19 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 20 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 21 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 22 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 23 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 24 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 25 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 26 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 27 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 28 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 29 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 30 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 31 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 32 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 33 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 34 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 35 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 36 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 37 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 38 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 39 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 40 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 41 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 42 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 43 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 44 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 45 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 46 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 47 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 48 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 49 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 50 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 51 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 52 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 53 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 54 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 55 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 56 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 57 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 58 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 59 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 60 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 61 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 62 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 63 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 64 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 65 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 66 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 67 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 68 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 69 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 70 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 71 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 72 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 73 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 74 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 75 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 76 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 77 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 78 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 79 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 80 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 81 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 82 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 83 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 84 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 85 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 86 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 87 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 88 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 89 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 90 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 91 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 92 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 93 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 94 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 95 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 96 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 97 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 98 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 99 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 100 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 101 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 102 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 103 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 104 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 105 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 106 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 107 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 108 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 109 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 110 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 111 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 112 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 113 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 114 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 115 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 116 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 117 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 118 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 119 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 120 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 121 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 122 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 123 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 124 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 125 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 126 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 127 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 128 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 129 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 130 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 131 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 132 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 133 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 134 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 135 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 136 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 137 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 138 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 139 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 140 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 141 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 142 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 143 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 144 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 145 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 146 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 147 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 148 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 149 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 150 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 151 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 152 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 153 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 154 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 155 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 156 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 157 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 158 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 159 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 160 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 161 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 162 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 163 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 164 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 165 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 166 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 167 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 168 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 169 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 170 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 171 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 172 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 173 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 174 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 175 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 176 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 177 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 178 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 179 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 180 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 181 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 182 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 183 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 184 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 185 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 186 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 187 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 188 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 189 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 190 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 191 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 192 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 193 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 194 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 195 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 196 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 197 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 198 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 199 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 200 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 201 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 202 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 203 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 204 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 205 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 206 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 207 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 208 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 209 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 210 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 211 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 212 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 213 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 214 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 215 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 216 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 217 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 218 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 219 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 220 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 221 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 222 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 223 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 224 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 225 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 226 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 227 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 228 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 229 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 230 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 231 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 232 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 233 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 234 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 235 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 236 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 237 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 238 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 239 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 240 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 241 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 242 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 243 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 244 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 245 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 246 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 247 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 248 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 249 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 250 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 251 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 252 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 253 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 254 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 255 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 256 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 257 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 258 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 259 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 260 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 261 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 262 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 263 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 264 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 265 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 266 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 267 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 268 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 269 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 270 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 271 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 272 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 273 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 274 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 275 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 276 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 277 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 278 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 279 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 280 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 281 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 282 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 283 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 284 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 285 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 286 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 287 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 288 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 289 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 290 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 291 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 292 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 293 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 294 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 295 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 296 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 297 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 298 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 299 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 300 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 301 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 302 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 303 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 304 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 305 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 306 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 307 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 308 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 309 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 310 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 311 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 312 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 313 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 314 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 315 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 316 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 317 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 318 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 319 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 320 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 321 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 322 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 323 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 324 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 325 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 326 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 327 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 328 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 329 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 330 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 331 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 332 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 333 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 334 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 335 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 336 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 337 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 338 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 339 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 340 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 341 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 342 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 343 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 344 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 345 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 346 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 347 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 348 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 349 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 350 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 351 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 352 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 353 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 354 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 355 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 356 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 357 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 358 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 359 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 360 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 361 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 362 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 363 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 364 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 365 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 366 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 367 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 368 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 369 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 370 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 371 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 372 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 373 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 374 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 375 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 376 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 377 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 378 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 379 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 380 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 381 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 382 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 383 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 384 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 385 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 386 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 387 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 388 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 389 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 390 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 391 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 392 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 393 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 394 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 395 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 396 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 397 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 398 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 399 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 400 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 401 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 402 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 403 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 404 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 405 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 406 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 407 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 408 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 409 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 410 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 411 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 412 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 413 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 414 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
