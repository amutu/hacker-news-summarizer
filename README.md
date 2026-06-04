# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-06-04.md)

*最后自动更新时间: 2026-06-04 20:32:38*
## 1. 在巴黎圣母院脚下，“世纪考古”揭开1700年历史

**原文标题**: Under Notre Dame, a 'dig of the century' unearths 1,700 years of history

**原文链接**: [https://apnews.com/article/notre-dame-dig-treasures-paris-archaeology-roman-dae41f792c1402faf32a87c154cc9a77](https://apnews.com/article/notre-dame-dig-treasures-paris-archaeology-roman-dae41f792c1402faf32a87c154cc9a77)

考古学家正在巴黎圣母院前庭进行一项重大发掘，被称为“世纪考古”。该项目始于2019年火灾及后续重建，由于计划在广场上增设树木和遮阳设施，需要挖掘古老土壤。这个深达4米的发掘揭示了1700年的历史，出土了从罗马时期的巴黎（2000年前）到中世纪的文物。

关键发现包括一枚刻有君士坦丁大帝像的4世纪硬币、带有未破译红色标记的中世纪陶器碎片，以及来自古代用作垃圾堆的厕所的完整壶和杯子。层层土壤展现了叠压的时代：中世纪房屋、墨洛温王朝和加洛林王朝的粮仓，以及密集的罗马居民区。考古学家还发现了一块被回收用作铺路石的罗马门槛，这证明了罗马帝国崩溃后人们如何加固西岱岛。

此次发掘极为罕见，因为这类工程仅在施工前进行；广场计划于2028年完工，届时将新增160棵树木和降温水景。考古学家希望能继续深挖，直至前罗马时代的高卢。出土文物存放在巴黎考古中心，有助于更深入了解这座城市的层叠历史。

---

## 2. DNS是为人类服务的，而非为IT基础设施。

**原文标题**: DNS is for people, not for IT infrastructure

**原文链接**: [https://louwrentius.com/dns-is-for-people-not-for-it-infrastructure.html](https://louwrentius.com/dns-is-for-people-not-for-it-infrastructure.html)

**摘要：**

本文主张不应在内部IT基础设施中使用DNS，同时承认其面向公网服务的价值。核心论点是，DNS为内部网络中的机器间通信引入了不必要的复杂性、风险和故障点。

**主要观点：**
- **DNS是一种负担：** 添加DNS会增加组件数量、故障风险及不可预测的交互（如循环依赖），Facebook 2021年事件等重大宕机事故已凸显这一点。
- **内部使用的替代方案：** 工程师可利用自动化工具（Ansible、pyinfra）直接将IP地址配置到服务器配置中，替代依赖DNS的做法。若需人类可读性，可预配`/etc/hosts`文件实现域名到IP的映射，无需DNS服务。
- **安全风险：**
    - **DNS默认未加密，** 使其在本应安全的网络中易受欺骗攻击。DNSSEC则增加了管理复杂性。
    - **DNS可被用于数据泄露：** 攻击者可通过DNS查询（如`dnscat2`、`iodine`）隧道传输敏感数据，绕过薄弱的出口过滤。作者建议阻止直接出站DNS查询，改用代理服务器并仅允许列表中的域名。
- **评价：** 文章总结认为，尽管存在权衡，但探索无DNS内部基础设施有助于提升可靠性与安全性，并邀请读者就便利性与健壮性之间的取舍展开讨论。

---

## 3. Kiki——一款轻量级、占地小的个人主页构建工具包

**原文标题**: Kiki – a tiny homepage construction kit with a small footprint

**原文链接**: [https://tomotama.com/kiki](https://tomotama.com/kiki)

**摘要：**

Kiki 是一款极简主页构建工具包，秉承“友魂”理念，专为简洁性与用户自主权设计。其源代码约1500行（不足50KB），便于单人阅读和修改。

**核心功能：** 5款响应式主题、公开维基模式、实时动态与静态站点生成、Gopher协议支持、简易标记语言（Bug）、Markdown插件支持、RSS/HTML生成、屏幕阅读器友好输出及交互式文档。

**Kiki不包含：** 无JavaScript、外部库、Cookie、跟踪、数据库、安装程序（仅需解压）、社交媒体功能或自动更新提示。总占用空间低于100KB，且不含任何AI生成代码。

**发布方式：** 通过itch.io提供共享软件版；可购买完整版。演示站点及Tomotama官网均基于Kiki运行。

---

## 4. 我最近被诊断出患有抗NMDA受体脑炎。

**原文标题**: I was recently diagnosed with anti-NMDA receptor encephalitis

**原文链接**: [https://burntsushi.net/encephalitis/](https://burntsushi.net/encephalitis/)

**概要：** 作者描述了其被诊断及经历抗NMDA受体脑炎的过程，这是一种导致脑部炎症的自身免疫性疾病。病症始于流感样症状（心跳加速、盗汗、焦虑、惊恐发作），随后发展为慢性下颌疼痛、严重平衡问题、自杀意念、精神病性症状（妄想、幻听）并最终跌倒。初期被误诊为焦虑症/精神分裂症，并被送入精神病院。一次幸运的医生转介使其得以转入布列根和妇女医院，甚至在官方确诊前便开始了挽救生命的治疗（静脉注射免疫球蛋白和甲泼尼龙），后通过脊髓液抗体检测阳性最终确诊。作者目前正在参加萨特利珠单抗的临床试验（CIELO项目），逐渐减停药物，并指出因早期干预而预后极佳。他们推测此类疾病或许能解释历史上的“恶魔附身”现象。尽管这是人生中最糟糕的经历，但康复效果远超预期。作者对妻子凯特琳·布雷迪无条件的支持与帮助，以及雇主查理·马什非同寻常的理解表示感谢，并提及苏珊娜·卡哈兰的《燃烧的大脑》中记载了类似案例。

---

## 5. Uber每月1500美元的AI使用上限，为AI工具定价提供了有益信号

**原文标题**: Uber's $1,500/month AI limit is a useful signal for AI tool pricing

**原文链接**: [https://simonwillison.net/2026/Jun/3/uber-caps-usage/](https://simonwillison.net/2026/Jun/3/uber-caps-usage/)

优步已对所有员工实施每款AI编码工具每月1500美元的使用额度限制，涉及Cursor和Anthropic的Claude Code等工具，以应对在四个月内耗尽2026年AI预算后出现的意外高成本。该限额针对每款工具分别设定，而非跨工具统一管理，意味着在一款工具上的支出不会影响其他工具的预算。这一政策被视为对超支现象的理性回应，与此前竞争性的使用排行榜形成鲜明对比。

这一限额暗示了优步从AI工具中获得的实际价值：假设每位工程师活跃使用两款工具，则每名工程师每年的限额为36000美元。以美国软件工程师年薪中位数33万美元计算，AI限额约占其总薪酬的11%。作者指出，其个人每款工具的每月使用量约为1000美元，但由于享受了优步等大公司无法获得的补贴个人套餐，实际花费仅为100美元。在新政策下，作者每款工具每月仍可有500美元的富余额度。该文章发布于2026年6月3日。

---

## 6. 我们跨产品管控Claude的方式

**原文标题**: The ways we contain Claude across products

**原文链接**: [https://www.anthropic.com/engineering/how-we-contain-claude](https://www.anthropic.com/engineering/how-we-contain-claude)

本文详述了Anthropic如何通过聚焦于自主AI代理的“爆炸半径限制”策略，管理其三大核心代理产品——claude.ai、Claude Code与Claude Cowork——中的安全风险。

核心安全挑战涉及三类风险：**用户滥用**（有害指令）、**模型异常行为**（非提示下的有害行动）及**外部攻击者**（提示注入或运行时攻击）。防御体系覆盖三个层面：**环境层**（沙箱、虚拟机、出口控制）、**模型层**（系统提示、分类器）及**外部内容层**（工具访问与权限）。

Anthropic为每个产品量身定制了三类遏制模式：

1. **claude.ai**：在隔离基础设施上使用临时容器（gVisor），禁止本地代码执行与持久化存储，以有限功能为代价最小化爆炸半径。

2. **Claude Code**：最初依赖人工审批写入/bash/网络操作，但审批疲劳（93%审批率）削弱了监督效力。现采用操作系统级沙箱（Seatbelt/bubblewrap），将权限提示减少84%。主要漏洞包括：信任同意前的项目配置执行，以及成功窃取凭证的网络钓鱼攻击。

3. **Claude Cowork**：为非技术用户内置于完整虚拟机运行，仅挂载用户选定工作区文件夹，主机凭据保持不可访问。这种绝对边界消除了用户对命令的判断需求。

文章强调，单一防御措施并不足够——随着代理能力持续扩展，环境层、模型层与内容层的重叠控制至关重要。

---

## 7. 一次学会SQL，受用三十年

**原文标题**: Learn SQL Once, Use It for 30 Years

**原文链接**: [https://fagnerbrack.com/learn-sql-once-use-it-for-30-years-9aceb0bdee03](https://fagnerbrack.com/learn-sql-once-use-it-for-30-years-9aceb0bdee03)

**摘要：**

本文认为，SQL在科技行业中具有独特的持久性和价值。与每隔几年就会更新的前端框架或编程语言不同，SQL作为数据管理的核心稳定工具，已持续三十多年。作者指出，其声明式特性——只需说明*想要什么*数据，而非*如何获取*——使其能普遍适用于不同的数据库系统。

关键要点包括：
- **持久性：** SQL在数十年前就已标准化，如今依然几乎同样重要。
- **可移植性：** 掌握SQL后，只需极少的语法调整即可操作PostgreSQL、MySQL、SQL Server、SQLite等多种数据库。
- **高需求：** 数据存储几乎是所有应用的基础，因此从后端开发到数据科学，SQL技能始终不可或缺。
- **学习基础：** 理解SQL有助于更轻松地学习ORM和数据工具。
- **需规避的陷阱：** 过度依赖ORM而不理解底层SQL，可能导致查询效率低下。

文章总结指出，在SQL上投入时间是一项高回报的职业决策，并强调，尽管其他技术来去匆匆，但使用SQL查询和分析数据的能力，仍将是贯穿开发者整个职业生涯的一项宝贵且恒久的技能。

---

## 8. thunderbolt-ibverbs：我们的家庭版InfiniBand

**原文标题**: thunderbolt-ibverbs: We have InfiniBand at home

**原文链接**: [https://blog.hellas.ai/blog/thunderbolt-ibverbs/](https://blog.hellas.ai/blog/thunderbolt-ibverbs/)

本文介绍了“thunderbolt-ibverbs”这一实验性Linux内核模块的创建过程，该模块能使AMD迷你电脑上的USB4/雷电端口作为InfiniBand设备运行，旨在让消费级硬件无需昂贵的企业级网络设备即可在多台机器间运行AI工作负载（vLLM/RCCL）。

主要成果包括：
- **性能**：双向RDMA吞吐量约95 Gb/s，单向延迟约7微秒（通过ib_write_bw/ib_write_lat测试），远超板载2.5 GbE（约2.3 Gb/s）或基于雷电网络的软RoCE（约9 Gb/s）。
- **应用成果**：实现两台设备间的张量并行推理（MiniMax-M2.7），并将Gemma 3 27B模型的FSDP训练时间从以太网下的1359秒缩短至使用4-HCA USB4 RDMA时的126秒。

作者指出，此代码为研究级AI生成代码，存在已知风险（如神秘的内核恐慌），不提供任何担保或支持。它展示了在廉价硬件上实现高速低延迟互连的概念验证，但尚未达到生产就绪状态。

---

## 9. Show HN：Boxes.dev：告别本地主机；在云端运行Claude Code与Codex

**原文标题**: Show HN: Boxes.dev: ditch localhost; run Claude Code and Codex in the cloud

**原文链接**: [https://boxes.dev](https://boxes.dev)

**Boxes.dev 概述**

Boxes.dev 是一款基于云端的开发环境服务，允许开发者在云端完整运行Claude Code和Codex等AI编程工具，无需搭建本地开发环境。

**核心要点：**

- **云原生开发：** 用户可直接从浏览器启动预配置、可丢弃的开发环境，省去本地安装和配置的繁琐步骤。
- **AI工具集成：** 该平台针对运行Claude Code和Codex进行了特别优化，提供预装这些AI编程助手的即用环境。
- **即时启动：** 无需管理依赖项、Docker容器或本地服务器配置——环境可在数秒内启动。
- **协作功能：** 开发环境可与团队成员共享，支持实时结对编程或代码审查。
- **无缝工作流：** 开发者可远程编写、测试和运行应用程序，完成后直接关闭环境，保持本地机器整洁。
- **适用场景：** 非常适合实验、原型开发、学习新技术或需要隔离环境（避免污染宿主系统）的项目开发。

该服务旨在将整个编码环境迁移至云端，专注于速度、简洁性和AI辅助开发，从而简化开发者体验。

---

## 10. 达芬奇调色 21

**原文标题**: DaVinci Resolve 21

**原文链接**: [https://www.blackmagicdesign.com/products/davinciresolve/whatsnew](https://www.blackmagicdesign.com/products/davinciresolve/whatsnew)

DaVinci Resolve 21 新增专用**照片页面**，将好莱坞级调色工具引入静态摄影，包括节点式编辑、灯箱视图、相册整理及AI搜索功能。支持索尼/佳能相机联机拍摄、Resolve FX特效、LUT色彩查找表及Blackmagic Cloud云端协作。

**AI工具**大幅扩展：**IntelliSearch智能搜索**可识别媒体中的人物/物体；**AI语音生成器**通过文本或简短语音样本创建配音；**CineFocus电影景深**调节景深效果；**面容年龄变换**与**面部重塑**可调整面部特征；**瑕疵去除**、**场记板ID**自动提取元数据、**超级锐化**及**动态去模糊**提升画质。

**剪辑与快编页面**优化关键帧功能（新增缓动模式、曲线编辑器），支持HTML/Lottie动画及智能媒体夹视图。**调色页面**推出**多主控修剪管理器**，可同步处理HDR/SDR交付，支持魔法蒙版原位渲染及图层列表节点视图。**Fusion特效**新增70余种**Krokodove**视觉特效工具、宏编辑器、音频驱动动画及升级版USD工具集。**Fairlight音频**新增音轨文件夹、6段片段均衡器、均衡/电平匹配器及插件预设链式特效。

性能提升包括支持Apple**注视点渲染**、**MainConcept H.265/MV-HEVC编码**，以及通过全景图旋转和ILPD重定向扩展的**VR180/VR360沉浸式工作流**。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 2 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 3 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 4 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 5 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 6 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 7 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 8 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 9 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 10 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 11 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 12 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 13 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 14 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 15 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 16 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 17 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 18 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 19 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 20 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 21 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 22 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 23 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 24 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 25 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 26 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 27 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 28 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 29 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 30 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 31 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 32 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 33 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 34 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 35 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 36 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 37 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 38 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 39 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 40 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 41 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 42 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 43 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 44 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 45 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 46 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 47 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 48 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 49 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 50 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 51 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 52 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 53 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 54 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 55 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 56 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 57 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 58 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 59 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 60 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 61 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 62 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 63 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 64 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 65 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 66 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 67 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 68 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 69 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 70 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 71 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 72 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 73 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 74 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 75 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 76 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 77 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 78 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 79 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 80 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 81 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 82 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 83 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 84 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 85 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 86 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 87 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 88 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 89 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 90 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 91 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 92 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 93 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 94 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 95 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 96 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 97 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 98 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 99 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 100 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 101 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 102 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 103 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 104 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 105 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 106 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 107 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 108 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 109 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 110 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 111 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 112 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 113 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 114 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 115 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 116 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 117 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 118 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 119 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 120 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 121 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 122 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 123 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 124 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 125 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 126 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 127 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 128 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 129 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 130 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 131 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 132 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 133 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 134 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 135 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 136 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 137 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 138 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 139 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 140 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 141 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 142 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 143 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 144 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 145 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 146 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 147 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 148 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 149 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 150 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 151 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 152 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 153 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 154 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 155 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 156 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 157 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 158 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 159 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 160 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 161 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 162 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 163 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 164 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 165 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 166 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 167 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 168 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 169 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 170 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 171 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 172 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 173 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 174 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 175 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 176 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 177 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 178 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 179 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 180 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 181 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 182 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 183 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 184 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 185 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 186 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 187 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 188 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 189 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 190 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 191 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 192 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 193 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 194 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 195 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 196 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 197 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 198 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 199 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 200 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 201 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 202 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 203 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 204 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 205 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 206 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 207 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 208 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 209 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 210 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 211 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 212 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 213 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 214 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 215 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 216 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 217 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 218 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 219 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 220 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 221 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 222 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 223 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 224 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 225 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 226 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 227 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 228 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 229 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 230 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 231 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 232 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 233 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 234 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 235 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 236 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 237 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 238 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 239 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 240 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 241 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 242 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 243 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 244 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 245 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 246 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 247 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 248 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 249 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 250 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 251 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 252 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 253 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 254 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 255 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 256 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 257 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 258 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 259 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 260 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 261 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 262 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 263 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 264 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 265 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 266 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 267 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 268 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 269 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 270 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 271 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 272 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 273 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 274 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 275 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 276 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 277 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 278 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 279 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 280 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 281 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 282 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 283 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 284 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 285 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 286 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 287 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 288 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 289 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 290 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 291 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 292 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 293 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 294 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 295 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 296 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 297 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 298 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 299 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 300 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 301 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 302 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 303 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 304 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 305 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 306 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 307 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 308 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 309 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 310 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 311 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 312 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 313 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 314 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 315 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 316 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 317 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 318 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 319 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 320 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 321 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 322 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 323 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 324 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 325 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 326 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 327 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 328 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 329 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 330 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 331 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 332 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 333 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 334 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 335 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 336 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 337 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 338 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 339 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 340 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 341 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 342 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 343 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 344 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 345 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 346 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 347 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 348 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 349 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 350 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 351 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 352 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 353 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 354 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 355 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 356 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 357 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 358 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 359 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 360 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 361 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 362 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 363 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 364 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 365 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 366 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 367 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 368 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 369 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 370 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 371 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 372 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 373 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 374 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 375 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 376 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 377 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 378 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 379 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 380 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 381 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 382 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 383 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 384 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 385 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 386 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 387 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 388 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 389 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 390 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 391 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 392 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 393 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 394 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 395 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 396 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 397 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 398 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 399 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 400 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 401 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 402 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 403 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 404 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 405 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 406 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 407 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 408 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 409 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 410 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 411 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 412 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 413 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 414 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 415 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 416 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 417 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 418 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 419 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 420 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 421 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 422 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 423 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 424 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 425 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 426 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 427 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 428 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 429 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 430 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 431 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 432 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 433 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 434 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 435 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 436 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 437 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 438 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 439 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
