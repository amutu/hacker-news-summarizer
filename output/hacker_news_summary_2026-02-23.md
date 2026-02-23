# Hacker News 热门文章摘要 (2026-02-23)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 年龄验证陷阱：验证年龄损害了每个人的数据保护

**原文标题**: The Age Verification Trap: Verifying age undermines everyone's data protection

**原文链接**: [https://spectrum.ieee.org/age-verification](https://spectrum.ieee.org/age-verification)

本文认为，实施年龄验证系统以限制网络内容不仅对未成年人，而是对所有用户都构成了重大的数据保护风险。

研究者韦德尔·D·卡瓦略指出，这类系统本质上需要收集敏感个人数据（如身份证件或生物特征信息）以确认年龄。这形成了一个高度敏感信息的集中“蜜罐”，极易成为数据泄露、身份盗窃和监控的主要目标。

此外，文章指出，这些系统通过强制所有用户提交侵入式验证才能访问年龄限制内容，破坏了隐私保护，实质上终结了匿名浏览。作者暗示这种权衡并不相称——为了一项未必能有效保护儿童的合规措施，牺牲了普遍的数据安全。

本质上，核心论点是：年龄验证强制措施对全体网络用户的数据保护和隐私构成了系统性威胁，代表了一种危险的政策陷阱。

---

## 2. 瓢虫采用Rust语言

**原文标题**: Ladybird adopts Rust

**原文链接**: [https://ladybird.org/posts/adopting-rust/](https://ladybird.org/posts/adopting-rust/)

瓢虫浏览器项目已决定采用内存安全的Rust语言替代代码库中的C++。尽管Rust在2024年因其与网络面向对象编程模型适配度低而曾被否决，但其生态系统的成熟度以及在Firefox和Chromium中的广泛应用，使其成为符合长期发展需求的务实选择。

首个移植的核心子系统是JavaScript引擎LibJS。借助AI工具辅助人工翻译，约2.5万行代码的移植工作在大约两周内完成。核心目标是确保**与C++版本输出结果完全字节一致**，因此当前Rust代码有意沿用了C++的编程模式。通过超过6.5万项测试及实际网页浏览验证，功能与性能均实现零倒退。

未来Rust开发将与现有C++工作并行推进。核心团队将审慎管理移植流程，新的Rust代码将通过既定接口与C++代码共存。当前首要任务仍是确保兼容性，后续计划将移植代码重构为更符合Rust语言特性的形式。

---

## 3. 展示 HN：PgDog——无需更改应用即可扩展 Postgres

**原文标题**: Show HN: PgDog – Scale Postgres without changing the app

**原文链接**: [https://github.com/pgdogdev/pgdog](https://github.com/pgdogdev/pgdog)

PgDog是一款基于Rust开发的PostgreSQL代理，旨在无需修改应用即可扩展数据库。它提供连接池、跨副本的负载均衡以及分片支持。该工具智能解析查询，将写操作路由至主库、读操作路由至副本，并能自动处理故障转移。在分片方面，支持基于分区和基于架构的方法，通过分片键路由查询，甚至支持通过两阶段提交实现跨分片操作以保证一致性。PgDog还包含唯一ID生成、在线分片键更新以及无需停机的重新分片流程等功能。它支持通过Kubernetes、AWS或Docker部署，并通过OpenMetrics提供监控。配置采用文件方式，致力于成为PostgreSQL扩展的无缝解决方案。

---

## 4. 美国人正在破坏Flock监控摄像头。

**原文标题**: Americans are destroying Flock surveillance cameras

**原文链接**: [https://techcrunch.com/2026/02/23/americans-are-destroying-flock-surveillance-cameras/](https://techcrunch.com/2026/02/23/americans-are-destroying-flock-surveillance-cameras/)

本文报道了美国各地针对Flock Safety公司自动车牌识别（ALPR）摄像头的破坏行为日益增多的趋势。这种破坏行为源于公众对监控技术协助美国移民与海关执法局（ICE）实施驱逐行动的愤怒。

作为一家估值数十亿美元的初创企业，Flock运营着一个庞大的摄像头网络以追踪车辆动向。尽管该公司声明未直接与ICE共享数据，但报告显示，有权访问数据的当地警察部门已将这些数据提供给联邦当局，从而助长了移民执法行动。

作为回应，一些社区正在推动终止合同，而另一些则采取了直接行动。从加利福尼亚州到康涅狄格州，都出现了摄像头被砸毁、切断和喷涂的案例。文章列举了具体事例，例如在加利福尼亚州的拉梅萨市，尽管居民反对，市议会仍投票决定保留摄像头，此后不久这些摄像头便遭到破坏。

这种反弹是更广泛的隐私与监控辩论的一部分。一个名为DeFlock的项目绘制了全国约8万个此类摄像头的位置，数十个城市已拒绝采用该技术。一些警察部门也已采取措施阻止联邦机构访问其ALPR系统。Flock公司拒绝就其被破坏摄像头的数量置评。

---

## 5. “维京人”是一种职业描述，而非遗传问题：古代DNA研究揭示

**原文标题**: 'Viking' was a job description, not a matter of heredity: Ancient DNA study

**原文链接**: [https://www.science.org/content/article/viking-was-job-description-not-matter-heredity-massive-ancient-dna-study-shows](https://www.science.org/content/article/viking-was-job-description-not-matter-heredity-massive-ancient-dna-study-shows)

根据《科学》杂志的文章，以下是简明摘要：

一项针对维京时代墓葬古DNA的里程碑式研究，从根本上重塑了我们对维京人身份的理解。通过分析欧洲各地400多具人类遗骸的基因组，研究人员发现，“维京人”并非一种独特的遗传或种族身份，而主要是一种职业描述或活动。

关键发现表明，维京时代（约公元750-1050年）是一个人口广泛流动和文化交流的时期。遗传数据显示：

*   **来源多样：** 以维京风格器物（如剑和船）陪葬的个体在遗传上具有多样性。他们不仅来自斯堪的纳维亚，还来自南欧和亚洲，这表明不同背景的人都可以接受维京人的生活方式。
*   **本地融入：** 在苏格兰等地区，研究发现当地人以维京墓葬形式下葬，表明他们已完全接纳维京文化。反之，在一些没有维京考古记录的地区也发现了斯堪的纳维亚的遗传谱系。
*   **家族流动：** 对爱沙尼亚遗骸的分析显示，在一次袭击中丧生的四兄弟被合葬在一起，表明维京远征可能是家族事业。
*   **非单一族群：** 不存在单一的“维京”基因库。来自现今瑞典、挪威和丹麦的不同群体在遗传上彼此有别，且前往不同的目的地（例如，瑞典人主要向东前往波罗的海地区，挪威人则前往爱尔兰和苏格兰）。

本质上，研究得出结论：维京人身份更多是一种社会和文化角色——涉及劫掠、贸易和探索——可以由不同遗传背景的个体承担，而非特定、同质的斯堪的纳维亚人群的遗传特质。

---

## 6. UNIX99，一款适用于TI-99/4A的类UNIX操作系统

**原文标题**: UNIX99, a UNIX-like OS for the TI-99/4A

**原文链接**: [https://forums.atariage.com/topic/380883-unix99-a-unix-like-os-for-the-ti-994a/](https://forums.atariage.com/topic/380883-unix99-a-unix-like-os-for-the-ti-994a/)

**《UNIX99：为TI-99/4A打造的类UNIX操作系统》概要**

本文探讨了**UNIX99**项目，该项目旨在为经典的**TI-99/4A**家用计算机（约1981年）开发一个类Unix操作系统。鉴于该系统的硬件限制极为严苛——仅配备3MHz的TMS9900 CPU、通常只有**16KB内存**，且无内置存储设备，这一成果是一项重要的技术成就。

项目开发者已成功将一个小型、自定义的类Unix内核移植到该机器上。主要特性与成果包括：
*   具备少量基本Unix命令（如`ls`、`cat`、`echo`）的**命令行界面**。
*   支持**FAT16文件系统**，可通过现代外设（NanoPEB/CF7+）在SD卡上存储和加载数据。
*   **多任务处理能力**，内核能够同时运行两个简单进程。
*   **内存管理**机制，利用TI的卡带空间存放内核，并采用存储体切换技术以在16KB内存限制下工作。

该项目被定位为**概念验证与教育性质**，旨在复古硬件上展示操作系统核心原理。它并非完整的Unix移植，而是一个受其设计启发的最小化自定义内核。项目仍在持续开发中，开发者定期在论坛上发布更新、技术细节及汇编源代码，并邀请复古计算社区参与讨论。当前主要挑战仍是原硬件内存极度有限，且缺乏内存管理单元（MMU）。

---

## 7. 爱思唯尔关闭其金融期刊引证联盟。

**原文标题**: Elsevier shuts down its finance journal citation cartel

**原文链接**: [https://www.chrisbrunet.com/p/elsevier-shuts-down-its-finance-journal](https://www.chrisbrunet.com/p/elsevier-shuts-down-its-finance-journal)

本文详细揭露了布莱恩·M·卢西教授在爱思唯尔金融期刊体系内策划的大型引用联盟事件及其后续影响。该计划中，卢西在担任多家爱思唯尔期刊编辑期间，绕过同行评审程序，违规审核并发表了多篇自己合著的论文。这种编辑权力的滥用，结合其与紧密合作的作者及编辑群体（包括其频繁合作者塞缪尔·维涅）进行的系统性“引用堆叠”操作，人为抬高了引用次数和期刊影响因子。

此次丑闻导致12篇累计引用超5000次的论文被撤稿，卢西和维涅也被免去五家爱思唯尔期刊的编辑职务。一份匿名预印本及后续学术分析提供了该协同引用圈的数据证据，该圈层在2020年爱思唯尔推出“金融期刊生态系统”后日益猖獗。

文章指出，这桩丑闻是爱思唯尔利润驱动模式下滋生的“公开秘密”——该模式从大量自引出版物中获益。文章进一步提出对潜在金融腐败的严重质疑，暗示卢西和维涅的私人咨询公司可能通过出售作者署名权、编委职位或出版建议等方式将此计划变现。核心指控在于，这实质上是学术出版最高层默许的“论文工厂”，通过利用系统性激励来牟取利益与声望。

---

## 8. 展示HN：Sowbot——开源硬件农业机器人（ROS2，RTK GPS）

**原文标题**: Show HN: Sowbot – open-hardware agricultural robot (ROS2, RTK GPS)

**原文链接**: [https://sowbot.co.uk/](https://sowbot.co.uk/)

Sowbot是一个开源硬件农业机器人生态系统，旨在帮助研究人员和农民采用可持续、可扩展的机器人技术，无需依赖专有系统。其目标是通过提供可复现的平台来缩短开发时间，从而弥合“原型鸿沟”。

该系统的核心是**“开放核心”**——一个坚固防水的计算单元，内置两块开源硬件单板计算机。一块负责实时控制、导航与安全功能，另一块则处理感知与人工智能任务（如物体检测）。它具备厘米级精度的RTK GPS、CAN总线通信功能，且所有原理图均为开源授权。

该核心驱动着**“Sowbot”**参考平台——一款模块化、可直接投入田间作业的机器人，配备四个高扭矩轮毂电机、钠离子电池及悬挂系统。为便于开发，还提供更小型的**Sowbot Mini**和**Pico**平台。

**软件**方面提供多种技术栈。系统采用开源**Lizard**框架进行实时任务编排，并可基于**RoSys**实现快速Python控制，或通过**DevKit ROS**实现完整的ROS 2集成、仿真与互操作性。

总体而言，Sowbot致力于为初创企业和研究人员提供稳定开放的基础平台，使其能专注于农业算法创新，而非底层软硬件集成工作。

---

## 9. Show HN: Shibuya – 基于 Rust 的高性能 WAF，集成 eBPF 与机器学习引擎

**原文标题**: Show HN: Shibuya – A High-Performance WAF in Rust with eBPF and ML Engine

**原文链接**: [https://ghostklan.com/shibuya.html](https://ghostklan.com/shibuya.html)

涩谷是一款用Rust开发的开源高性能Web应用防火墙（WAF）。其核心功能包括集成超过615条OWASP核心规则集（CRS）规则、用于异常检测和攻击分类的双机器学习引擎，以及通过eBPF/XDP实现近即时（约1微秒）内核级数据包拦截。

其突出差异化特性包括可扩展的WASM插件系统、用于在生产环境中无风险测试规则的“影子模式”，以及对OpenAPI和GraphQL API的原生保护。该产品还独特地内置了名为“足轻”的漏洞应用实验室用于测试。

该项目提供完整的36页SvelteKit仪表板进行管理监控。其开源“轻量版”免费提供多租户、RBAC和联邦学习等企业级功能，同时提供付费企业版。性能基准测试显示其P99延迟开销低于5毫秒。

---

## 10. 灯塔：极端隔离如何改变身心

**原文标题**: The Lighthouse: How extreme isolation transforms the body and mind

**原文链接**: [https://www.newscientist.com/article/2231732-the-lighthouse-how-extreme-isolation-transforms-the-body-and-mind/](https://www.newscientist.com/article/2231732-the-lighthouse-how-extreme-isolation-transforms-the-body-and-mind/)

本文以电影《灯塔》为案例，探讨极端隔离对心理和生理的影响。影片讲述了偏远岛屿上两名灯塔看守人精神状态随时间逐渐恶化的故事。

主要观点包括：
*   **幻觉与精神困扰：** 心理学家萨里塔·罗宾逊指出，幻觉在隔离状态下很常见，尤其是在感官剥夺时，并引用了1950年代的实验——志愿者在独处数小时后便出现幻觉。
*   **健康影响：** 文章认为社交隔离对身心健康均有损害，因为人类本质上是社会性生物。
*   **压力与情感联结：** 在这种高压情境下，催产素分泌增加可能导致强烈而不稳定的社交纽带，正如影片中人物关系所展现的那样。
*   **电影呈现：** 文章强调影片如何通过鲜明的意象、声音和演员表演，视觉化地呈现了这种陷入疯狂与执念的过程。

总之，文章借助《灯塔》中的心理恐怖元素，探讨了隔离对人心的真实而深远的影响，包括幻觉、精神恶化以及压力下复杂的社会动态。

---

## 11. 我们拥有的一个简单网站

**原文标题**: A simple web we own

**原文链接**: [https://rsdoiel.github.io/blog/2026/02/21/a_simple_web_we_own.html](https://rsdoiel.github.io/blog/2026/02/21/a_simple_web_we_own.html)

在这篇文章中，R.S. Doiel指出，由大型企业主导的现代网络已将用户变成了“租户与产品”。他提出一种替代模式：个人及合作社通过使用他们能掌控的简单、廉价的技术，重新夺回所有权。

核心问题在于，科技巨头让人们相信只有复杂、中心化的系统才能提供便捷的网络发布，而这导致了监控与“平台劣化”。Doiel反驳称这种观点是错误的。他以Markdown为例，说明这是一种简单易用的写作格式，并指出像树莓派（约60美元）这样的硬件让个人拥有计算设备成为可能。

解决方案是构建一个“简单网络”，其基于三大支柱：1）拥有自己的计算设备，2）拥有自己的网络（从私有本地网络开始），3）使用能将Markdown转换为完整网站（HTML、RSS、站点地图）的简单软件，且无需技术专长。他批评当前的替代方案——从WordPress这类复杂的内容管理系统到许多静态网站生成器——仍然过于面向开发者。

最后，Doiel断言，网络本身的去中心化技术，结合如今易于获取的硬件以及Markdown这类更简单的软件，使个人能够创建并托管自己的内容，从而摆脱企业控制，构建一个更积极的互联网。

---

## 12. 神奇蘑菇——欧洲首家工业规模菌丝体包装生产商

**原文标题**: Magical Mushroom – Europe's first industrial-scale mycelium packaging producer

**原文链接**: [https://magicalmushroom.com/index](https://magicalmushroom.com/index)

**概述：**

Mushroom®包装由欧洲首家工业规模菌丝体制造商生产，为发泡聚苯乙烯（EPS）塑料包装提供了一种可持续替代方案。该产品以菌丝体（真菌根部）和农业副产品为原料培育而成，形成了一种高性能保护材料，其强度和成本均可与EPS相媲美。

该公司指出，EPS是一种过时的材料，由于新的塑料税政策及其在环境中持久存在带来的声誉风险，它正构成商业风险。相比之下，Mushroom®包装能彻底消除持久性塑料废弃物。该材料在出厂前经过完全干燥且生物失活，确保不会继续生长。

自2020年以来，该公司已生产数百万件产品，从供应链中替代了数千吨EPS，并计划仅在2026年就再生产约一千万件。该产品已获得各行业领先品牌的信赖。

Mushroom®包装被定位为一种可扩展、成本具竞争力且商业就绪的解决方案，被视为应对日益严格的法规和不断变化的客户需求的必要举措，可帮助企业避免因继续依赖EPS而落后于时代。

---

## 13. Hadrius（YC W23）正在招聘会编程的设计师

**原文标题**: Hadrius (YC W23) Is Hiring Designers Who Code

**原文链接**: [https://www.ycombinator.com/companies/hadrius/jobs/ObynDF9-senior-product-designer](https://www.ycombinator.com/companies/hadrius/jobs/ObynDF9-senior-product-designer)

Hadrius（YC W23）是一家为投资公司提供证券合规自动化的金融科技初创公司，现于纽约招聘高级产品设计师。该职位年薪为17万至22.5万美元，另加股权。

该职位强调现代设计方法，设计师需在代码库中与工程师紧密协作，使用编码代理等工具。候选人需能快速主导重大项目，建立设计系统，并推动设计职能规模化发展。

理想候选人需拥有6年以上经验，具备复杂已上线产品的出色作品集，并能适应模糊、快节奏的工作环境。有B2B SaaS或金融科技经验者优先。此职位要求深度投入，并提供重要的战略自主权。

福利包括优质医疗保险、401(k)匹配计划，以及为办公室附近居住者提供的每年1.8万美元住房津贴。面试流程包括初步沟通、文化匹配和现场面试环节。

---

## 14. 低于200美元的激光雷达可能重塑汽车传感器经济格局。

**原文标题**: Sub-$200 Lidar could reshuffle auto sensor economics

**原文链接**: [https://spectrum.ieee.org/solid-state-lidar-microvision-adas](https://spectrum.ieee.org/solid-state-lidar-microvision-adas)

**摘要：**

运输技术公司MicroVision宣布开发了一款新型激光雷达传感器，目标价格低于200美元，约为当前市场典型产品价格的一半。该公司进一步表示，这项技术最终可能突破100美元的价格壁垒。

这一显著的成本降低有望彻底改变汽车传感器的经济格局。激光雷达利用激光精确绘制车辆周围环境的3D地图，是高级驾驶辅助系统（ADAS）和自动驾驶汽车的关键但昂贵的组件。低于200美元的激光雷达将使该技术更容易被更广泛的车型采用，从而可能加速其在汽车行业的普及。

---

## 15. 广义化假设族序贯概率比检验 [pdf]

**原文标题**: Generalized Sequential Probability Ratio Test for Families of Hypotheses [pdf]

**原文链接**: [https://sites.stat.columbia.edu/jcliu/paper/GSPRT_SQA3.pdf](https://sites.stat.columbia.edu/jcliu/paper/GSPRT_SQA3.pdf)

本文介绍了一种广义序贯概率比检验（GSPRT），旨在检验参数族中的复合假设。其核心思想是将经典的沃尔德序贯概率比检验（SPRT）——该检验在检验两个简单假设时具有最优性——扩展到更复杂的场景，其中原假设和备择假设各自包含一组参数值。

关键创新在于构建检验统计量的方法。GSPRT并非使用单一似然比，而是采用似然比的加权平均（或混合）。这是通过对原假设和备择假设指定的参数空间上的似然函数进行积分来实现的，积分时使用了适当选择的概率测度（或加权函数）。这种构建使检验能够有效处理复合假设。

作者证明，这一广义检验继承了标准SPRT的理想最优性。具体而言，在一定条件下，给定第一类和第二类错误概率的界限，GSPRT在检验两个复合假设时能最小化期望样本量。理论框架得到了详细阐述检验性质与最优性的数学证明的支持。

总之，本文提出了针对复合假设的SPRT形式化推广，提供了通过积分似然比实现该检验的方法，并证明了其在最小化达成决策所需期望样本数方面的渐近最优性。

---

## 16. 币安解雇发现17亿美元加密货币被发送至伊朗的员工。

**原文标题**: Binance fired employees who found $1.7B in crypto was sent to Iran

**原文链接**: [https://www.nytimes.com/2026/02/23/technology/binance-employees-iran-firings.html](https://www.nytimes.com/2026/02/23/technology/binance-employees-iran-firings.html)

无法访问文章链接。

---

## 17. 日本网页设计的独特案例（2022）

**原文标题**: The peculiar case of Japanese web design (2022)

**原文链接**: [https://sabrinas.space](https://sabrinas.space)

这项2022年的分析探讨了为何日本网站常显得视觉密集、色彩丰富且文字量大，与全球流行的极简风格形成对比。研究者通过AI分析2671张全球热门网站截图，验证了2013年的理论假设。结果显示日本网站明显自成一体，偏好浅色系、信息密集的设计，基本避开深色极简布局。

文章从三个角度解析这种差异：首先，虽然日文书写系统（CJK字符）带来字体和层级设计的挑战，但同属汉字文化圈的中韩两国并未呈现完全相同的设计模式；其次，诸如规避风险的消费心理和高密度都市美学等文化因素，在日本周边地区同样存在，并非其独有特征。

最具说服力的解释聚焦技术发展路径。早在iPhone引领全球智能手机革命前多年，日本就已形成先进且封闭的移动互联网文化。这使得日本基本错过了2010年前后全球网站向移动端优化、极简设计转型的浪潮。历史截图显示，当美国网站趋于简化时，日本网站仍保持密集布局。作者指出，随着年轻用户成长及旧技术淘汰，这种独特的设计轨迹正逐渐消逝，日本网站设计开始向国际标准靠拢。

---

## 18. 0 A.D. 第28版发布：博伊奥里克斯

**原文标题**: 0 A.D. Release 28: Boiorix

**原文链接**: [https://play0ad.com/new-release-0-a-d-release-28-boiorix/](https://play0ad.com/new-release-0-a-d-release-28-boiorix/)

Wildfire Games发布了其免费开源策略游戏《0 A.D.》的第28版“Boiorix”，这是该游戏首次脱离“Alpha”标签的正式版本。主要新增内容是一个受辛布里部落启发的半游牧民族派系——日耳曼人，其特色机制包括可移动的补给马车和强力的攻城单位。

关键技术改进包括：为符合历史准确性引入性别化平民单位（取代“女性公民”）、采用直接字体渲染以提升多语言支持与性能，以及引擎升级后需Windows 10/11或macOS 10.15及以上系统运行。同时首次提供了64位Windows版本。

其他值得注意的特性包括：新的游戏设置选项、多人游戏大厅安全性增强，以及对海战、单位属性和迦太基、汉朝等特定派系的平衡性调整。开发团队还公开招募视频编辑与社交媒体等领域的新贡献者，以协助游戏推广。

玩家可在Windows、Linux和macOS平台免费下载该版本。相关问题可通过项目的Gitea页面提交反馈。

---

## 19. ASML发布极紫外光源新进展，有望在2030年前将芯片产量提升50%。

**原文标题**: ASML unveils EUV light source advance that could yield 50% more chips by 2030

**原文链接**: [https://www.reuters.com/world/china/asml-unveils-euv-light-source-advance-that-could-yield-50-more-chips-by-2030-2026-02-23/](https://www.reuters.com/world/china/asml-unveils-euv-light-source-advance-that-could-yield-50-more-chips-by-2030-2026-02-23/)

根据路透社文章，以下是简明摘要：

**核心进展：** 芯片制造设备龙头企业阿斯麦（ASML）发布了其极紫外光刻机的重大升级版。新型"EXE:5000"系统采用更强大的光源，将输出功率从目前的250瓦提升至350瓦。

**关键影响：** 功率提升40%直接意味着硅晶圆处理速度加快。阿斯麦预计，这一进步可使半导体行业整体产能到**2030年提升50%**。这对满足全球对先进芯片日益增长的需求至关重要。

**技术细节：** 更高功率支持名为"高数值孔径"的工艺，能够印制更微小、更复杂的电路图案。这对制造下一代尖端芯片（包括人工智能和高性能计算芯片）具有决定性意义。

**战略背景：** 此次发布正值全球半导体行业竞争白热化，以及先进芯片制造工具对华出口限制持续之际。阿斯麦的突破巩固了其技术领先地位，对其客户（如台积电、英特尔和三星）持续推动摩尔定律、制造更强大高效芯片至关重要。

**核心结论：** 阿斯麦新型高功率极紫外光源是重大技术进步，有望在本十年末显著提升全球芯片制造产能，并推动下一代先进半导体发展。

---

## 20. Go语言并发哈希映射实现的基准测试

**原文标题**: Benchmarks for concurrent hash map implementations in Go

**原文链接**: [https://github.com/puzpuzpuz/go-concurrent-map-bench](https://github.com/puzpuzpuz/go-concurrent-map-bench)

该基准测试比较了Go语言中的五种并发哈希映射实现：标准库的`sync.Map`、`xsync.Map`、`cornelk/hashmap`、`alphadose/haxmap`和`orcaman/concurrent-map`。测试通过不同工作负载（从100%读取到75%读取）、映射大小（100到100万条目）以及并行级别（`GOMAXPROCS`从1到12）对它们进行评估。

结果显示，`xsync.Map`始终提供最佳的整体性能，在读取、写入和迭代扩展方面表现出色，同时保持较低的内存分配开销。更新后的`sync.Map`（自Go 1.24起）是一个强大且全面的竞争者，具有出色的读取扩展能力，但每次写入的内存分配开销较高。`cornelk/hashmap`在小型映射中表现良好，但随着映射增大性能显著下降。`alphadose/haxmap`在小规模下显示出良好的读取性能，但在竞争条件下写入扩展能力较差。`orcaman/concurrent-map`采用简单的分片设计，实现零内存分配，但由于分片数量固定导致扩展性有限，在纯读取吞吐量和迭代速度方面表现最差。

总之，对于大多数高性能并发应用场景，推荐使用`xsync.Map`，而`sync.Map`则提供了一个稳健的标准库替代方案。其他库更适用于特定场景，如极小型映射或对无分配写入有严格要求的场景。

---

## 21. femtolisp：一种轻量级、稳健、类Scheme的Lisp实现

**原文标题**: femtolisp: A lightweight, robust, scheme-like Lisp implementation

**原文链接**: [https://github.com/JeffBezanson/femtolisp](https://github.com/JeffBezanson/femtolisp)

**摘要：** Femtolisp 是一款轻量、高效且健壮的类 Scheme Lisp 解释器，以优雅与极简为设计目标。它最初是作为“在 1000 行 C 代码内构建快速 Lisp”的挑战而诞生，后发展为一个功能完整、体积小于 150KB 的实现。其关键特性包括正确的尾递归、紧凑式垃圾回收器、字节码编译器与虚拟机，并支持向量、哈希表、异常和循环数据结构。

作者强调其设计哲学专注于简洁性、可靠性，并避免对既定的 Lisp 惯例进行不必要的改动。针对其他方言中“华而不实的新特性”，femtolisp 旨在高度兼容 Scheme（包括部分 R6RS 特性），同时确保正确实现那些关键但常被忽视的元素——如读取宏、gensym 以及所有值的可读打印。性能是优先考虑项，该解释器位列最快的非原生编译 Scheme 实现之一。

总体而言，femtolisp 被呈现为一个简洁、组织良好的项目，将强大功能与清晰代码相结合，其创作是出于个人对智力享受的追求，而非商业吸引力。

---

## 22. 在Scheme中使用续体模拟Goto

**原文标题**: Emulating Goto in Scheme with Continuations

**原文链接**: [https://terezi.pyrope.net/ccgoto/](https://terezi.pyrope.net/ccgoto/)

本文展示了如何在Scheme中使用延续（`call/cc`）模拟`GOTO`语句，尽管在结构化编程中通常避免这种做法。文章首先解释了`GOTO`在BASIC和C等语言中的行为，即允许无条件跳转到代码中的标记点。其核心机制依赖于Scheme的`call/cc`（call-with-current-continuation），它能捕获特定点的“剩余计算过程”。

作者实现了一个名为`with-goto`的宏，以支持`GOTO`风格的控制流。该宏的工作原理如下：
1. 将标签定义为无参数过程（thunk）。
2. 使用`call/cc`捕获代表整个`with-goto`代码块的延续。
3. 设置`goto`过程，使其在被调用时通过标签参数，用该标签对应的thunk调用延续。这实际上“跳转”到标签处的代码，替换当前的执行上下文。

示例展示了如何用此方法创建无限循环或条件跳转，模仿传统`GOTO`的功能。文章指出，这种实现方式在实用编程中刻意设计得“笨拙”且“无用”，主要作为教学案例以展示延续的强大功能和底层特性。最后，文章承认虽然`call/cc`功能强大，但受限延续通常是更实用且可控的替代方案，并为读者提供了进一步学习该主题的资源指引。

---

## 23. 一项可能提升续航并降低成本的锂离子电池突破。

**原文标题**: A lithium-ion breakthrough that could boost range and lower costs

**原文链接**: [https://www.techradar.com/vehicle-tech/hybrid-electric-vehicles/forget-solid-state-batteries-researchers-have-made-a-lithium-ion-breakthrough-that-could-boost-range-and-drastically-lower-costs](https://www.techradar.com/vehicle-tech/hybrid-electric-vehicles/forget-solid-state-batteries-researchers-have-made-a-lithium-ion-breakthrough-that-could-boost-range-and-drastically-lower-costs)

**《一项可能提升续航并降低成本的锂离子电池突破》摘要**

科罗拉多大学博尔德分校与美国国家可再生能源实验室的研究人员，在锂离子电池化学领域取得了一项重大进展，有望降低电动汽车成本并延长其续航里程。

这一突破的核心在于，用基于**硫**的新型材料取代电池阴极中昂贵且存在问题的**钴**。这种新型阴极与一种**局部高浓度电解质**配合使用，从而形成了一种稳定且高性能的电池。

其主要潜在优势包括：

*   **成本更低：** 硫的储量远比钴丰富，价格也更低廉。钴不仅昂贵，供应链存在问题，还涉及采矿伦理问题。
*   **能量密度更高：** 新的电池化学配方能储存显著更多的能量。在测试中，其**能量密度**达到了典型特斯拉电池的两倍，是标准磷酸铁锂电池的三倍。这直接意味着电动汽车的续航里程更长。
*   **稳定性与寿命提升：** 新型电解质配方防止了硫基电池常见的性能退化问题，使其具有长循环寿命。在模拟实际使用条件下，原型电池在**充放电400次后仍保持了76%的容量**。

尽管这不是固态电池，但这项创新代表了传统液态电解质锂离子技术向前迈出的重要一步。研究人员强调，它利用了现有且可扩展的制造工艺，这可能会加速其商业化进程。如果成功实现大规模生产，这种新的电池设计有望使电动汽车更加经济实惠，并缓解消费者的"里程焦虑"。

---

## 24. 决定飞往美国购买一些硬盘。

**原文标题**: Decided to fly to the US to buy some hard drives

**原文链接**: [https://old.reddit.com/r/DataHoarder/comments/1rb9ot4/decided_to_fly_to_the_us_to_buy_some_hard_drives](https://old.reddit.com/r/DataHoarder/comments/1rb9ot4/decided_to_fly_to_the_us_to_buy_some_hard_drives)

**《决定飞往美国购买硬盘》摘要**

作者是一位加拿大居民，详细记录了一次为节省成本而前往美国购买硬盘的旅程。主要动机在于显著的价格差异：即使考虑货币兑换后，所需的22TB西部数据硬盘在美国每块仍比加拿大便宜约100美元。

为了在批量购买八块硬盘时最大化节省，作者从加拿大飞往纽约州布法罗市。此行经过周密计划：在美国Micro Center门店订购硬盘并选择到店自提，使用行李秤确保包裹符合航空公司随身行李重量限制，并在返回加拿大时申报商品（出示收据）以支付相应的关税和税费。

财务分析表明该策略是成功的。硬盘的美国总价比加拿大零售价低约400美元。在计入所有开支——机票、机场费用、税费及关税后，作者仍实现了近100加元的净节省。摘要总结道，尽管此举需要付出相当多的努力，但这是一次值得的“趣味冒险”，既获得了经济利益，也购得了心仪的硬件。

---

## 25. Ubuntu采用Rust意味着什么

**原文标题**: What it means that Ubuntu is using Rust

**原文链接**: [https://smallcultfollowing.com/babysteps/blog/2026/02/23/ubuntu-rustnation/](https://smallcultfollowing.com/babysteps/blog/2026/02/23/ubuntu-rustnation/)

本文以"跨越鸿沟"理论框架探讨Rust语言的发展历程，分析其如何从早期采用者阶段迈向务实早期大众阶段。文章指出，虽然Rust已在亚马逊数据平面等领域站稳脚跟，但在其他领域仍需"标杆客户"来验证其可行性并降低潜在风险。

作者特别强调Canonical/Ubuntu将Rust应用于基础工具链的决定具有里程碑意义。通过赞助并集成内存安全替代方案（如sudo-rs和coreutils-rs），Ubuntu扮演了桥梁角色，为风险敏感的早期大众提供经过验证的无缝替代方案，最大限度降低迁移成本。

文章指出，用户群体的转变要求Rust进行相应调整。像Canonical这样的新采用者带来了不同需求，例如重新审视最小化标准库的政策，这表明生态系统需要从展示潜力转向提供实用、受支持的解决方案。

最后，文章强调可持续发展需要将采用与投资相结合——既包括开源合作伙伴的代码贡献，也来自评估Rust技术的企业资金支持。文章总结道，成功的关键在于同理心：接纳新视角，赋能多元社区根据自身需求塑造Rust的未来。

---

## 26. SETI@home：数据采集与前端处理（2025）

**原文标题**: SETI@home: Data Acquisition and Front-End Processing (2025)

**原文链接**: [https://iopscience.iop.org/article/10.3847/1538-3881/ade5a7](https://iopscience.iop.org/article/10.3847/1538-3881/ade5a7)

本文并非关于SETI@home数据采集与处理的技术细节，而是一则来自网站防护服务（Radware Bot Manager）的自动安全提示。

其核心内容是向访问者展示的**验证码挑战**。系统已将用户活动标记为可能非人类行为（例如机器人程序），并因此阻止访问请求内容——此处即推测为关于SETI@home的页面。

**关键信息：**
*   **目的：** 验证用户是否为人类而非自动化程序。
*   **操作

总而言之，当前内容实为阻止访问目标文章的安全屏障，并非文章本身。

---

## 27. 展示 HN：AI 时间线——从 Transformer（2017）到 GPT-5.3（2026）的 171 个大语言模型

**原文标题**: Show HN: AI Timeline – 171 LLMs from Transformer (2017) to GPT-5.3 (2026)

**原文链接**: [https://llm-timeline.com/](https://llm-timeline.com/)

**《AI发展时间线——从Transformer（2017）到GPT-5.3（2026）的171个大语言模型》摘要**

本文呈现了一个交互式可视化时间线，记录了自2017年奠基性的Transformer架构以来，大语言模型的快速发展历程，直至推测将于2026年出现的未来模型如GPT-5.3。

其主要目的是作为一个全面的历史与教育资源，收录了171个重要模型。关键特色包括为每个大语言模型提供详细卡片，涵盖其发布日期、开发者、核心能力及背景信息。时间线突出了诸多重要里程碑，例如GPT-3的发布、LLaMA的开源以及GPT-4V等多模态模型的出现。

一个显著特点是其前瞻性预测，时间线延伸至2026年，包含了GPT-5、Gemini 3.0等假设性未来模型，以阐明该领域的预期发展趋势。该项目作为社区资源发布于Hacker News（"Show HN"），邀请反馈与贡献，旨在随着人工智能领域以惊人速度持续演进，保持其准确性与全面性。

---

## 28. 我打造了Timeframe，我们家的电子墨水屏仪表板。

**原文标题**: I built Timeframe, our family e-paper dashboard

**原文链接**: [https://hawksley.org/2026/02/17/timeframe.html](https://hawksley.org/2026/02/17/timeframe.html)

过去十年间，乔尔·霍克斯利开发了名为**Timeframe**的家庭仪表盘系统，该系统能在电子墨水屏上展示日历、天气和智能家居数据。该项目最初旨在替代卧室屏幕，早期原型采用背光魔镜和越狱Kindle，验证了电子墨水屏不显眼且清晰易读的特性。

后来他改用更可靠的Visionect电子墨水显示屏，并运行定制的Ruby on Rails后端。2021年房屋遭遇火灾后，霍克斯利围绕高分辨率、实时刷新的Boox Mira Pro屏幕重新设计了系统。这一转变促使后端全面重构，集成**Home Assistant**作为主要数据源，从而简化代码库并实现动态状态提醒（如门未关或洗衣完成）。

该系统的核心创新在于**单一状态指示器**，仅显示相关信息以避免界面杂乱。如今它已成为霍克斯利重建后家庭日常生活的核心部分。尽管该系统引起广泛关注，但在推向消费市场前仍面临挑战，包括强化软件稳定性、完成Home Assistant集成，以及降低当前硬件方案的高成本与复杂度。

---

## 29. 什么是“百分兵优势”？

**原文标题**: What Is a Centipawn Advantage?

**原文链接**: [https://win-vector.com/2026/02/19/what-is-a-centipawn-advantage/](https://win-vector.com/2026/02/19/what-is-a-centipawn-advantage/)

厘兵优势是国际象棋引擎用来量化玩家局面优势的单位，100厘兵大致相当于一兵的物质优势。但其主要用途是表征获胜*概率*。根据标准解释，在最优对弈下，100厘兵优势对应50%的胜率，其余概率为和棋。

文章指出，引擎会将局面分析转化为预估的胜/和/负概率，再映射为厘兵值以进行简明总结。这一厘兵分数也可转换为埃洛等级分差（例如100厘兵≈190埃洛分）。

需要强调的是，厘兵并非固定的物质价值。棋盘上实际兵力的厘兵"价格"会因其位置和作用而变化，通常平均高于100厘兵。采用该单位是因为相比原始概率，棋手能更直观地理解其含义。

结论指出，在完美对弈下，每个局面都必然导向胜利、和棋或失败。由于这种完美评估无法获知，引擎便通过厘兵体系等替代方案，从实际非完美对弈中预估结果。

---

## 30. 教皇告诫神父：用头脑而非人工智能撰写布道词。

**原文标题**: Pope tells priests to use their brains, not AI, to write homilies

**原文链接**: [https://www.ewtnnews.com/vatican/pope-leo-xiv-tells-priests-to-use-their-brains-not-ai-to-write-homilies](https://www.ewtnnews.com/vatican/pope-leo-xiv-tells-priests-to-use-their-brains-not-ai-to-write-homilies)

**摘要：**

教皇方济各告诫神父们不要使用人工智能（AI）撰写讲道。在与一群神父交谈时，教皇强调讲道必须是发自内心、个人化的对话，源于祈祷以及与教众的联系，这是AI无法复制的。

他承认AI可以是收集信息或灵感的实用工具，但强调它必须仅作为辅助，而非替代神父自身的智识与灵性工作。他指出，核心信息必须来自神父个人的反思、研习和生活信仰。

教皇的建议聚焦于讲道的真实性与关系本质。他警告，依赖AI可能导致讲道变得泛泛而谈、脱离实际，缺乏来自与上帝及社群亲身相遇的"恩膏"。他的指示是呼吁神父们亲自研读经文、亲近信众，运用自己的心智与心灵来准备讲道。

*(注：文章网址中存在一处历史错误，提及了从未存在过的"教皇利奥十四世"。内容正确报道了教皇方济各的言论。本摘要基于所述文章内容。)*

---

