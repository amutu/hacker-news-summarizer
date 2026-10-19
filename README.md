# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-10-20.md)

*最后自动更新时间: 2026-10-20 04:56:54*
## 1. MiniMax M3.1 Flash 正式发布

**原文标题**: MiniMax M3.1 Flash

**原文链接**: [https://www.minimax.io/blog/minimax-m31f](https://www.minimax.io/blog/minimax-m31f)

摘要：MiniMax正式发布下一代Flash模型M3.1，其前身"Space Bunny"曾以匿名方式运行并处理超200万亿tokens。M3.1 Flash在智能体任务、编程、计算机操作及网络安全四大领域实现全面跃升，推理速度提升近三倍，使用成本降低70%。性能上，该模型在AutomationBench-AA名列前茅，可端到端完成多行业企业工作流；BankerToolBench得76.2分；DeepSWE v1.1达73.7%；OSWorld V2得61.7分、ALE得29.6分，均居中国模型首位；CyberGym得分82%，在漏洞发现与渗透测试中表现突出。日常推理速度可达200+TPS。定价方面，每百万token输入0.15美元、输出0.60美元、缓存输入0.015美元，以顶流性能实现极高性价比。M3.1 Flash现已通过MiniMax API、M Plan及MiniMax Code开放使用，模型权重稍后发布。MiniMax表示，Flash系列聚焦效率与能力的平衡，而追求极限智能的Pro系列也将随后面世。

---

## 2. 我用单个电机造了一架无人机 [视频]

**原文标题**: I built a drone with only one motor [video]

**原文链接**: [https://www.youtube.com/watch?v=Ndftcft6XhU](https://www.youtube.com/watch?v=Ndftcft6XhU)

摘要：该视频标题为"I built a drone with only one motor"，展示了一位创作者仅使用单个电机便成功制造出一架可飞行无人机的过程，标题中的"[video]"表明这是一则视频作品。然而，所提供的正文内容并非视频的实际描述或文章正文，而是YouTube平台页面的底部信息，包括版权说明、服务条款、隐私政策、安全与运作方式、新功能测试、公司归属（© 2026 Google LLC）、地址（美国加州山景城）、联系电话及邮箱等常规页脚内容，未包含任何关于该无人机设计原理、电机选型、飞行控制方案或测试结果等实质性技术信息。因此，根据现有材料可概括的要点为：这是一则发布在YouTube上的DIY无人机制作视频，核心亮点在于以单电机实现飞行，突破了常规多旋翼无人机需要多个电机的常规设计思路，体现了作者在机械结构与动力控制方面的创新尝试；但具体技术细节尚无法从所给文本中获取，需观看视频本身才能了解完整的制作过程与飞行效果。

---

## 3. Wine成功移植至OpenBSD

**原文标题**: Wine ported to OpenBSD

**原文链接**: [https://marc.info/?l=openbsd-ports&m=179236125692175](https://marc.info/?l=openbsd-ports&m=179236125692175)

摘要：Thomas Frohwein在OpenBSD-ports邮件列表中宣布，Wine已成功移植到OpenBSD平台。该移植的核心难点在于%gs寄存器问题，由Andrii以软件方式模拟%gs前缀指令解决，主要工作由Andrii和Fabien完成。该移植支持64位Windows程序，已测试数十款软件基本成功，包括《巫师3》重制版（需搭配vkd3d-proton）。主要限制是WoW64不可用，32位Windows程序仍无法运行。内置测试因依赖X服务器且部分用例挂起而暂时禁用，但实际游戏测试未见异常。作者建议用户以Notepad++（64位便携版）作为初步测试对象，并提醒Wine属于"风险自担"软件，建议创建独立非特权用户运行，未来或可借助unveil(2)实现沙箱隔离。该移植引发广泛关注，与数年前相比，大量Windows软件已转向64位，需求显著增长。邮件同时感谢brynet、bentley、pertho、vl_ms等贡献者的测试工作，并附提交补丁供社群审阅。

---

## 4. The reverts will continue until morale improves

**原文标题**: The reverts will continue until morale improves

**原文链接**: [http://peter.eisentraut.org/blog/2026/10/09/the-reverts-will-continue-until-morale-improves](http://peter.eisentraut.org/blog/2026/10/09/the-reverts-will-continue-until-morale-improves)

文章之前已经处理过

---

## 5. 在 macOS 上原生运行 Android 应用

**原文标题**: Android apps running native on macOS

**原文链接**: [https://github.com/kksimp/Mac.apk](https://github.com/kksimp/Mac.apk)

Mac.apk 是一款面向 Apple Silicon Mac 的 Android 应用运行器，无需模拟器、虚拟机或 Linux 内核，直接在 macOS 之上实现 Android 应用环境。应用以普通 macOS 进程运行，通过 GPU 渲染，支持窗口化、Dock 集成、深浅色模式跟随及自由缩放，体验接近原生。项目目前处于 Alpha 阶段，部分应用可完整运行，部分兼容有限。系统要求为 macOS 26.4（Tahoe）及以上、任意 Apple Silicon 芯片设备，磁盘占用约 280 MB。安装方式为下载 .dmg 镜像拖入 Applications，首次启动需安装 Runtime 并设为默认文件关联，之后双击 APK 即可运行。Mac.apk 采用 GNU AGPL v3.0 开源协议，另有商业授权可供企业使用，项目由 Voltare 开发，不携带广告也不支持应用内购。需注意，Android 应用以当前 macOS 用户权限运行，无手机式沙箱隔离，用户应仅安装可信来源的 APK。项目源码完整公开，包含 Android 框架重实现、原生运行时、Bionic 适配层及 ARM32 重编译器等组件，欢迎社区贡献。

---

## 6. 喜欢编程，依然值得

**原文标题**: It's still ok to enjoy programming

**原文链接**: [https://chriskiehl.com/article/it-is-still-ok-to-enjoy-programming](https://chriskiehl.com/article/it-is-still-ok-to-enjoy-programming)

在AI能秒级生成代码的时代，网上弥漫着"手写编程已无意义"的悲观论调，作者对此写下回应。他指出，工作中追求效率无可厚非，但工作不等于生活——在个人时间里，享受编程本身无需任何经济或功利理由。作者分享了自己的周末日常：手写一个碰撞检测糟糕的打砖块游戏，尝试将依赖类型语言Agda的思想引入Java以提升类型安全，死磕递归方案（recursion schemes）至精疲力竭。这些探索没有直接实用价值，却带来纯粹的快乐与成长。作者坦言感受到一种微妙的社会压力——仿佛这个时代"不该"再为编程本身感到喜悦。他观察到，对AI末日叙事的持续消费具有传染性，会让人陷入"一切没有意义"的虚无感，但断开信息流后这种感觉便会消退。最后他补充，借助AI进行"氛围编程"（vibe-coding）同样乐趣十足，只是体验方式不同。核心信息：热爱一件事，无需向外界证明其价值。

---

## 7. 《RuneScape》基准评测：面向智能体的MMO游戏（视频）

**原文标题**: RuneScape Bench: MMOs for Agents [video]

**原文链接**: [https://www.youtube.com/watch?v=cNm4zyUtWj0](https://www.youtube.com/watch?v=cNm4zyUtWj0)

摘要：本文对应一条YouTube视频，标题涉及经典MMO游戏《RuneScape》的基准测试，探讨面向智能体（Agent）的MMO游戏设计方向。然而，所提供的正文内容仅为YouTube页面底部的标准页脚信息，包括版权与隐私声明、Google LLC公司地址（位于美国加州山景城）、韩国客户服务热线、内容举报入口及商品免责声明等，并未包含视频的实际简介、章节或任何实质性讨论内容。因此，无法从中提取关于RuneScape评测方法、MMO智能体机制或游戏设计要点等核心信息。总体而言，该页面仅反映了YouTube平台的法律与运营 boilerplate 文本，有效内容缺失。

---

## 8. 海鲜供应链中的阻燃剂

**原文标题**: The fire retardant in the seafood chain

**原文链接**: [https://insideclimatenews.org/news/14102026/ethoxyquin-fire-retardant-in-seafood-chain/](https://insideclimatenews.org/news/14102026/ethoxyquin-fire-retardant-in-seafood-chain/)

上世纪五六十年代，鱼粉因氧化自燃引发90余起船只火灾。1967年，嘉吉公司推出抗氧化剂乙氧基喹作为鱼粉阻燃方案，效果显著，美国及联合国随后强制推广。然而该物质在动物实验中表现出致癌性，2017年欧盟暂停其在饲料中使用，英国、挪威等国已全面禁用，但美国、日本、韩国、澳大利亚仍允许限量使用。近年来，多起美国集体诉讼指控Aldi、Gorton's等企业将含乙氧基喹的海产品虚假标注为"可持续"，均庭外和解。加拿大虽有标签要求，但2024年欧盟审计显示其仅完成40%的抽检计划，监管严重不足。嘉吉称已在全球三文鱼饲料中停用该物质，秘鲁对欧、美、加、澳的鱼粉出口也已实现零添加。然而，当前最主流的替代品丁基羟基茴香醚（BHA）同样被美国国家毒理学项目认定为"可能致癌物"。全球超半数海鲜来自养殖，行业正陷入从致命火灾到致癌阻燃剂、再到另一潜在致癌替代品的困境循环。

---

## 9. Timestral：Mistral时间序列基础模型

**原文标题**: Timestral: Mistral's time-series foundation models

**原文链接**: [https://mistral.ai/news/timestral/](https://mistral.ai/news/timestral/)

Mistral于2026年10月发布Timestral，其首个时间序列基础模型家族。最大模型仅209M参数，便在GIFT-Eval、TIME、fev-bench三大公开基准上均列第一，以更少参数超越此前最优模型。模型输出21分位数的概率性多变量预测，支持过去及已知未来协变量，上下文长度达32,768时间步。家族含5M、28M、123M、209M四档规格，均处于准确率与规模的帕累托前沿，且无需GPU，CPU即可推理。关键技术包括：解耦时程预测（DHF）保全完整历史上下文；协变量感知注意力区分变量角色、防止未来信息泄露；合成数据优先的两阶段训练策略。Timestral可嵌入现有监控流水线，亦可与Mistral语言模型协同，构建从异常检测到根因分析的多模态代理工作流，适用于工业传感、金融等场景。企业可通过Mistral Forge进行领域微调与持续再训练，支持本地部署、VPC及气隙环境，采用修改版MIT许可证，代码已开源。

---

## 10. 动物实验的替代技术终于加速落地

**原文标题**: Alternatives to animal testing are finally taking off

**原文链接**: [https://spectrum.ieee.org/alternatives-to-animal-testing](https://spectrum.ieee.org/alternatives-to-animal-testing)

哈佛大学生物学家Donald Ingber于2009年开发出首个"肺芯片"，以微流控装置模拟人肺呼吸与免疫反应，被视为替代动物实验的重要里程碑，但当时《Science》期刊仍要求补充小鼠数据方可发表，折射出动物模型在生物医学研究中的根深蒂固地位。如今这一格局正在逆转：美国FDA在2025至2026年间先后宣布将动物实验降为例外，并以"非临床测试"取代法规中"动物测试"的表述，明确要求采用器官芯片、细胞模型等替代方案；欧盟、英国及OECD也相继推进相关改革。这些替代方法（统称NAMs）涵盖器官类器官、多器官芯片、计算模拟及AI工具，已在肝毒性预测和心脏心律失常筛查中展现出优于动物实验的准确率。然而挑战依然严峻：NAMs的验证需要全球标准化流程、统一指标及高昂的头对头对比研究，中小企业难以承受；学术与产业间的数据壁垒也阻碍了有效比较。专家普遍认为，技术本身只是转型的一环，监管政策更新、跨学科协作、数据开放共享及科研文化的深层转变，才是推动动物实验全面退出的关键所在。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 2 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 3 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 4 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 5 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 6 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 7 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 8 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 9 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 10 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 11 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 12 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 13 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 14 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 15 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 16 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 17 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 18 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 19 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 20 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 21 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 22 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 23 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 24 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 25 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 26 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 27 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 28 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 29 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 30 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 31 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 32 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 33 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 34 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 35 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 36 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 37 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 38 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 39 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 40 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 41 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 42 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 43 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 44 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 45 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 46 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 47 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 48 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 49 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 50 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 51 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 52 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 53 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 54 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 55 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 56 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 57 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 58 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 59 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 60 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 61 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 62 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 63 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 64 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 65 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 66 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 67 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 68 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 69 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 70 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 71 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 72 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 73 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 74 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 75 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 76 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 77 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 78 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 79 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 80 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 81 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 82 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 83 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 84 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 85 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 86 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 87 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 88 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 89 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 90 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 91 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 92 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 93 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 94 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 95 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 96 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 97 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 98 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 99 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 100 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 101 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 102 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 103 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 104 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 105 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 106 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 107 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 108 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 109 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 110 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 111 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 112 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 113 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 114 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 115 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 116 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 117 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 118 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 119 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 120 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 121 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 122 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 123 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 124 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 125 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 126 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 127 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 128 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 129 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 130 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 131 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 132 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 133 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 134 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 135 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 136 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 137 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 138 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 139 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 140 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 141 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 142 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 143 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 144 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 145 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 146 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 147 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 148 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 149 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 150 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 151 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 152 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 153 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 154 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 155 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 156 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 157 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 158 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 159 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 160 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 161 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 162 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 163 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 164 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 165 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 166 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 167 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 168 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 169 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 170 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 171 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 172 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 173 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 174 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 175 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 176 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 177 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 178 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 179 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 180 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 181 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 182 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 183 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 184 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 185 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 186 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 187 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 188 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 189 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 190 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 191 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 192 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 193 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 194 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 195 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 196 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 197 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 198 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 199 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 200 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 201 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 202 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 203 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 204 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 205 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 206 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 207 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 208 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 209 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 210 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 211 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 212 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 213 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 214 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 215 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 216 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 217 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 218 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 219 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 220 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 221 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 222 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 223 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 224 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 225 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 226 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 227 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 228 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 229 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 230 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 231 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 232 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 233 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 234 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 235 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 236 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 237 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 238 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 239 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 240 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 241 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 242 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 243 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 244 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 245 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 246 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 247 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 248 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 249 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 250 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 251 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 252 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 253 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 254 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 255 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 256 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 257 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 258 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 259 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 260 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 261 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 262 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 263 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 264 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 265 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 266 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 267 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 268 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 269 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 270 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 271 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 272 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 273 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 274 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 275 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 276 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 277 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 278 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 279 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 280 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 281 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 282 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 283 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 284 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 285 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 286 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 287 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 288 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 289 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 290 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 291 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 292 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 293 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 294 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 295 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 296 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 297 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 298 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 299 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 300 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 301 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 302 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 303 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 304 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 305 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 306 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 307 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 308 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 309 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 310 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 311 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 312 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 313 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 314 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 315 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 316 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 317 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 318 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 319 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 320 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 321 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 322 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 323 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 324 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 325 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 326 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 327 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 328 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 329 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 330 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 331 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 332 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 333 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 334 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 335 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 336 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 337 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 338 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 339 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 340 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 341 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 342 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 343 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 344 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 345 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 346 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 347 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 348 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 349 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 350 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 351 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 352 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 353 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 354 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 355 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 356 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 357 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 358 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 359 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 360 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 361 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 362 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 363 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 364 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 365 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 366 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 367 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 368 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 369 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 370 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 371 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 372 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 373 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 374 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 375 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 376 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 377 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 378 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 379 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 380 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 381 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 382 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 383 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 384 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 385 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 386 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 387 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 388 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 389 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 390 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 391 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 392 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 393 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 394 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 395 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 396 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 397 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 398 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 399 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 400 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 401 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 402 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 403 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 404 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 405 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 406 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 407 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 408 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 409 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 410 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 411 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 412 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 413 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 414 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 415 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 416 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 417 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 418 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 419 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 420 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 421 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 422 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 423 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 424 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 425 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 426 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 427 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 428 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 429 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 430 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 431 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 432 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 433 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 434 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 435 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 436 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 437 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 438 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 439 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 440 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 441 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 442 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 443 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 444 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 445 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 446 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 447 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 448 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 449 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 450 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 451 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 452 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 453 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 454 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 455 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 456 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 457 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 458 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 459 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 460 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 461 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 462 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 463 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 464 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 465 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 466 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 467 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 468 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 469 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 470 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 471 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 472 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 473 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 474 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 475 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 476 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 477 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 478 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 479 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 480 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 481 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 482 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 483 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 484 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 485 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 486 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 487 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 488 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 489 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 490 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 491 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 492 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 493 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 494 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 495 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 496 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 497 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 498 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 499 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 500 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 501 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 502 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 503 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 504 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 505 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 506 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 507 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 508 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 509 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 510 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 511 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 512 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 513 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 514 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 515 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 516 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 517 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 518 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 519 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 520 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 521 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 522 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 523 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 524 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 525 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 526 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 527 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 528 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 529 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 530 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 531 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 532 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 533 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 534 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 535 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 536 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 537 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 538 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 539 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 540 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 541 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 542 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 543 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 544 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 545 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 546 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 547 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 548 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 549 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 550 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 551 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 552 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 553 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 554 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 555 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 556 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 557 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 558 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 559 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 560 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 561 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 562 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 563 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 564 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 565 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 566 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 567 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 568 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 569 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 570 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 571 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 572 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 573 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 574 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 575 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
