# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-05-12.md)

*最后自动更新时间: 2026-05-12 20:33:21*
## 1. Google图书

**原文标题**: Googlebook

**原文链接**: [https://googlebook.google/](https://googlebook.google/)

基于内容，以下是简洁摘要：

本文是 **Googlebook** 的产品发布页面，这是一款旨在与谷歌人工智能 **Gemini** 及安卓手机深度集成的新款笔记本电脑。其标语是“智能是新规格”。

主要功能包括 **魔法指针**，用户可选取屏幕上任意内容，立即向 Gemini 提问、对比或创作。用户还可通过简单指令 **创建自定义小部件**。该笔记本电脑是 **安卓手机的完美搭档**，支持将手机应用 **投射** 至笔记本无需安装，并能像访问本地文件一样快速调取手机文件。尽管性能强大，该设备却主打轻如羽毛的设计。

文章将产品宣传为“Gemini 最佳体验与最先进笔记本的结合”，并强调其“轻量机身蕴含重磅性能”。该产品计划于“今秋发布”，用户可注册通知列表（需提供姓名和邮箱）以获取最新动态。

---

## 2. CERT发布了针对dnsmasq中六个严重安全漏洞的CVE公告

**原文标题**: CERT is releasing six CVEs for serious security vulnerabilities in dnsmasq

**原文链接**: [https://lists.thekelleys.org.uk/pipermail/dnsmasq-discuss/2026q2/018471.html](https://lists.thekelleys.org.uk/pipermail/dnsmasq-discuss/2026q2/018471.html)

2026年5月11日，CERT发布了六个针对dnsmasq严重安全漏洞的CVE，影响几乎所有非远古版本。维护者Simon Kelley宣布已向供应商进行预披露，预计将及时发布补丁包。他发布了包含修复的2.92rel2版本，并将提交上传至开发分支，其中一些重写更为全面。

Kelley指出，基于AI的安全研究激增导致大量漏洞报告和重复提交。他优先选择公开修复而非长期封存，因为"坏家伙"很可能也已发现这些漏洞。他计划很快发布dnsmasq 2.93rc1，并在一周内推出稳定的2.93版本，同时鼓励社区进行测试。

AI生成的报告持续涌入，预示着接下来将反复出现类似流程。Kelley力求在及时发布与持续修复间取得平衡，优先保证速度，并在发布后继续推进相关工作。

---

## 3. 《扯淡之风的兴起》

**原文标题**: The Rise of the Bullshittery

**原文链接**: [https://xn--gckvb8fzb.com/the-rise-of-the-bullshittery/](https://xn--gckvb8fzb.com/the-rise-of-the-bullshittery/)

**摘要：**  
本文认为，现代经济日益奖励“表现出的”能力而非实际能力。作者借鉴哈里·法兰克福的“扯淡”概念（对真相漠不关心），描述了领英等平台上算法可见性如何激励人们追求引人注目但低质量的内容，而非严谨诚实的工作。2024年一项针对美国州议员的研究显示，可信度低的信息反而能获得更高关注。  
作者批评领英上的“专业阶层欺诈”——导师型网红兜售空洞建议，并指出人工智能使扯淡生产工业化，变得廉价且可规模化。文章引用大卫·格雷伯的“狗屁工作”概念但加以限定：虽然多数人不认为自己的工作毫无价值，但大量产出（如幻灯片、战略文件）仅服务于内部专业受众。  
真正的损失落在诚实专业人士身上——工程师、作家、设计师——他们被迫与嗓门更大、行动更快的造假者竞争。作者承认，系统（平台、监管机构、消费者）才是根本问题，而非个体参与者。  

**核心观点：**  
文章诊断出一种系统性转变：在算法激励和人工智能的推动下，可见性压倒了可信度。它呼吁观众奖励实质内容、为人类创造的工作付费，并建议创作者拒绝表演自己不相信的东西——将“羞耻感”作为诚意的标志。通过集体微小的决策，这一系统是可以逆转的。

---

## 4. 展示HN：Needle：我们将Gemini工具调用蒸馏为26M模型

**原文标题**: Show HN: Needle: We Distilled Gemini Tool Calling into a 26M Model

**原文链接**: [https://github.com/cactus-compute/needle](https://github.com/cactus-compute/needle)

**《Show HN: Needle——将Gemini工具调用提炼成26M参数模型》摘要**

Needle是一款轻量级开源AI模型（2600万参数），从Gemini中提炼而成，专为单次函数/工具调用设计。它采用"简单注意力网络"架构，配备BPE分词器（8192词表）、8层解码器及12层编码器（使用GQA+RoPE），未使用传统前馈神经网络层。

关键性能指标：在Cactus硬件上，预填充速度达6000 tokens/秒，解码速度为1200 tokens/秒。预训练阶段使用2000亿tokens（16块TPU v6e，耗时27小时），后训练阶段使用20亿tokens的函数调用数据（耗时45分钟）。

Needle在单次函数调用任务上超越FunctionGemma-270M、Qwen-0.6B和Granite-350M等更大模型，但开发者指出，这些大型模型在对话式AI场景中表现更优。该模型可在Mac/PC上进行本地微调。

**功能特性：**
- Web UI演示平台，支持自定义工具的测试与微调（自动下载权重）
- Python API，用于推理与生成
- CLI命令，覆盖训练、评估、分词及数据生成
- GitHub上完全开源权重与数据集生成代码

该项目是向消费级设备（手机、手表、眼镜）部署微型AI的实验性探索。快速入门方式包括执行`git clone`、运行配置脚本，以及通过`needle playground`命令启动基于Gradio的用户界面。

---

## 5. 资深开发者为何难以传达其专业知识

**原文标题**: Why senior developers fail to communicate their expertise

**原文链接**: [https://www.nair.sh/guides-and-opinions/communicating-your-expertise/why-senior-developers-fail-to-communicate-their-expertise](https://www.nair.sh/guides-and-opinions/communicating-your-expertise/why-senior-developers-fail-to-communicate-their-expertise)

**概要：**

资深开发者难以有效沟通，因为他们谈论的是**复杂性管理**，而业务其他部门则围绕**降低不确定性**运作。文章将业务拆分为两个循环：

1.  **速度循环（市场、销售、首席执行官）：**专注于快速将产品推向市场以减少不确定性，并了解什么方案行之有效。
2.  **稳定性循环（资深开发者）：**专注于维护、调试和保障现有客户的服务，其中复杂性是首要敌人。

当资深开发者以“复杂性”“维护成本”或“稳定性风险”为由抵制新功能时，他们未能满足业务对速度和学习的核心需求。解决方法是重新用降低不确定性的语言来表述方案。与其说“不”，资深开发者应询问：**“我们能尝试更快的做法吗？”** 这既承认了业务对速度的需求，同时允许开发者复用现有资源并避免不必要的代码。

关于人工智能，文章认为它加速了**速度循环**，但通过增加难以管理的复杂性且不承担可维护性责任，破坏了**稳定性循环**。提出的解决方案是将这两个循环解耦为独立系统：一个“速度”版本（用于快速、杂乱的实验）和一个“规模”版本（由资深开发者设计的稳定、可理解的系统）。这使得业务能够快速行动，同时确保长期的可靠性。

---

## 6. Obsidian插件之未来

**原文标题**: The Future of Obsidian Plugins

**原文链接**: [https://obsidian.md/blog/future-of-plugins/](https://obsidian.md/blog/future-of-plugins/)

Obsidian推出了全新的**社区目录与开发者面板**，旨在提升插件和主题的发现、管理及安全性。目前生态系统已拥有超过4000个项目，累计下载量达1.2亿次。

主要功能包括：

- **社区网站**：通过分类、筛选和安全评分卡增强浏览体验。
- **开发者面板**：插件作者关联GitHub账号后，可提交、管理并追踪项目。
- **自动化审核**：每个版本（而非仅首次提交）都会自动扫描安全、代码质量及恶意软件风险。此举在数日内清理了2300个积压提交，高风险插件仍保留人工审核。
- **插件安全**：新增评分卡，即将披露网络/文件系统访问权限。

现有插件已重新审核；未通过新标准的旧插件将获得临时豁免，但最终会被淘汰。团队即将获得工具以控制允许使用的插件，并可分发私有插件。

当前系统需使用Obsidian账号及GitHub登录（暂定）。暂不接受闭源插件。开发者仍可通过GitHub（无需面板）更新插件，但必须通过面板查看审核失败原因。

目标是为社区生态系统的持续发展提供安全、可扩展的基础。

---

## 7. 渲染天空、日落与行星

**原文标题**: Rendering the Sky, Sunsets, and Planets

**原文链接**: [https://blog.maximeheckel.com/posts/on-rendering-the-sky-sunsets-and-planets/](https://blog.maximeheckel.com/posts/on-rendering-the-sky-sunsets-and-planets/)

本文详细介绍了作者根据一张暮色中奋进号航天飞机的照片，创作逼真天空与大气渲染着色器的历程。其目标是在浏览器中实时重现大气散射现象。

**关键要点：**

1.  **基于光线步进的基础构建：** 作者首先运用光线步进技术，沿相机射线采样大气密度。通过**瑞利密度函数**（考虑高空大气稀薄效应），计算**透射率**（光线穿透量）与**散射**（光线偏转量）。

2.  **增强真实感：** 为着色器添加了**米氏散射**（由尘埃等大颗粒引发，产生太阳周围的光晕与雾霾效果）和**臭氧吸收**（改变天空色彩，尤其在日落时增添紫色调）。

3.  **光照与透射率：** 关键步骤增加了“光步进”——一种嵌套循环，用于计算阳光在到达采样点前被衰减的程度。这使得渲染带有正确色彩偏移的日出日落成为可能。

4.  **行星大气：** 最后一步将平面天空着色器转变为3D场景的**后期处理特效**。通过从深度缓冲区数据重建世界空间坐标，大气以环绕场景物体的体积效果或行星外壳的形式呈现，形成大气雾效果。

**总结：** 文章从基础蓝天逐步演进到复杂的物理大气模型，为游戏和交互体验实现了逼真的渲染效果。

---

## 8. 《Quack：DuckDB客户端-服务器协议》

**原文标题**: Quack: The DuckDB Client-Server Protocol

**原文链接**: [https://duckdb.org/2026/05/12/quack-remote-protocol](https://duckdb.org/2026/05/12/quack-remote-protocol)

**DuckDB 的 Quack 协议概述**

DuckDB 引入了 Quack 协议，实现了支持多并发写入的客户端-服务器架构。此前作为进程内系统的 DuckDB，现在其实例可以通过基于 HTTP 的远程协议进行通信。

**主要特点：**
- 协议基于 HTTP，利用成熟的基础设施实现负载均衡、身份验证和防火墙
- 采用请求-响应模式，通过身份验证令牌进行加密（默认绑定本地主机，外部访问建议使用 SSL）
- 身份验证和授权可通过回调（包括 SQL 宏）进行扩展

**性能基准：**
- **批量传输**：Quack 约 5 秒传输 6000 万行（Arrow Flight SQL 需 17.4 秒，PostgreSQL 需 158 秒）
- **小规模写入**：Quack 在 8 线程下实现约 5,400 事务/秒，优于 PostgreSQL（约 4,300 tx/s）和 Arrow Flight（约 1,350 tx/s）

**使用方法：** 客户端和服务器均运行带有 Quack 扩展的 DuckDB。用户只需安装、加载，并使用 `ATTACH 'quack:localhost'` 命令附加远程实例。

该协议默认使用 9494 端口，并采用新的 MIME 类型 `application/duckdb` 进行序列化。虽然 DuckDB 主要仍是一个进程内系统，但 Quack 为集中式数据摄入和仪表盘查询等用例解锁了多人协作能力。

---

## 9. Snowflake、Postgres、Lakebase、HorizonDB：选择你想要的锁定模式

**原文标题**: Snowflake Postgres, Lakebase, HorizonDB: Picking the Lock-In You Want

**原文链接**: [https://thebuild.com/blog/2026/05/12/snowflake-postgres-lakebase-horizondb-picking-the-lock-in-you-want/](https://thebuild.com/blog/2026/05/12/snowflake-postgres-lakebase-horizondb-picking-the-lock-in-you-want/)

**摘要：**

本文分析了来自三大主流数据平台的三款新型云原生、兼容Postgres协议的数据库：Snowflake Postgres（正式发布）、Databricks Lakebase（AWS平台正式发布）和Azure HorizonDB（预览版）。三者均采用“计算扩展、共享存储”架构，但在执行和战略契合度上存在差异。

关键决策因素并非技术优劣，而在于贵组织已标准化的数据平台。基于Crunchy Data构建的Snowflake Postgres，凭借其开源pg_lake集成，提供了最纯正的Postgres体验。由Neon驱动的Databricks Lakebase，提供了独特的CI/CD分支功能，是Databricks原生用户的理想之选。采用自定义存储引擎的Azure HorizonDB，声称性能最高（支持高达3,072个vCore，OLTP吞吐量提升3倍），但可能缺乏完整的扩展兼容性。

三者均涉及权衡：标准Postgres扩展的缺失、逻辑复制的细微差别，以及pg_basebackup或Patroni等传统运维工具的不适用。作为回报，它们提供了运维规模化的能力、多区域提交，以及更紧密的湖仓-OLTP集成。

文章建议选择与您现有分析平台绑定的数据库。如果尚无邻近平台，则应坚持使用标准托管型Postgres（如Aurora、Cloud SQL等），因为大多数工作负载仍可适配带副本的单主节点架构。文章警示不要过早采用预览版技术栈，并指出该品类的快速趋同是行业发展的关键动向。

---

## 10. Dead.Letter（CVE-2026-45185）——XBOW 发现 Exim 未授权远程代码执行漏洞

**原文标题**: Dead.Letter (CVE-2026-45185) – How XBOW found an unauthenticated RCE on Exim

**原文链接**: [https://xbow.com/blog/dead-letter-cve-2026-45185-xbow-found-rce-exim](https://xbow.com/blog/dead-letter-cve-2026-45185-xbow-found-rce-exim)

**CVE-2026-45185（死信）摘要：**

本文详细介绍了XBOW在Exim中发现的一个严重未授权远程代码执行（RCE）漏洞。Exim是许多Debian/Ubuntu系统上的默认邮件服务器。该漏洞是在使用GnuTLS时，在TLS关闭过程中触发的释放后使用（UAF）问题。

**技术概述：**

该漏洞利用了Exim的TLS处理与其BDAT分块（RFC 3030）之间的交互。在TLS关闭期间，Exim释放其传输缓冲区（`xfer_buffer`）。然而，嵌套的BDAT接收包装器仍可处理传入的字节。这导致`bdat_ungetc()`调用`tls_ungetc()`，后者将一个换行符（`\n`）写入到刚刚释放的缓冲区中。

这种单字节写入会破坏Exim分配器的元数据。随后，利用链利用此破坏来获取进一步的内存原语，最终升级为完整的远程代码执行。

**关键点：**
- **CVE编号：** CVE-2026-45185
- **影响：** 未授权远程代码执行
- **受影响软件：** Exim 4.97（Debian/Ubuntu默认版本）
- **触发条件：** TLS连接处理，无需特殊服务器配置
- **核心机制：** 在BDAT处理过程中，通过向已释放的TLS缓冲区写入导致释放后使用
- **发现工具：** XBOW（一款专注于发现本地代码漏洞的新产品）

本文还讲述了研究人员的个人经历，详细描述了其首次使用大语言模型（LLM）辅助漏洞利用开发的过程，尽管此前对Exim源代码一无所知。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 2 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 3 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 4 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 5 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 6 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 7 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 8 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 9 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 10 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 11 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 12 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 13 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 14 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 15 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 16 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 17 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 18 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 19 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 20 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 21 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 22 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 23 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 24 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 25 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 26 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 27 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 28 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 29 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 30 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 31 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 32 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 33 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 34 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 35 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 36 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 37 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 38 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 39 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 40 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 41 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 42 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 43 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 44 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 45 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 46 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 47 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 48 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 49 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 50 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 51 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 52 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 53 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 54 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 55 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 56 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 57 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 58 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 59 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 60 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 61 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 62 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 63 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 64 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 65 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 66 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 67 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 68 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 69 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 70 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 71 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 72 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 73 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 74 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 75 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 76 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 77 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 78 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 79 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 80 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 81 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 82 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 83 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 84 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 85 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 86 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 87 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 88 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 89 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 90 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 91 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 92 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 93 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 94 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 95 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 96 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 97 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 98 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 99 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 100 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 101 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 102 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 103 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 104 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 105 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 106 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 107 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 108 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 109 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 110 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 111 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 112 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 113 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 114 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 115 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 116 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 117 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 118 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 119 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 120 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 121 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 122 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 123 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 124 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 125 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 126 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 127 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 128 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 129 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 130 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 131 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 132 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 133 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 134 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 135 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 136 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 137 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 138 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 139 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 140 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 141 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 142 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 143 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 144 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 145 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 146 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 147 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 148 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 149 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 150 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 151 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 152 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 153 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 154 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 155 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 156 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 157 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 158 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 159 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 160 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 161 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 162 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 163 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 164 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 165 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 166 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 167 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 168 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 169 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 170 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 171 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 172 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 173 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 174 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 175 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 176 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 177 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 178 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 179 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 180 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 181 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 182 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 183 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 184 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 185 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 186 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 187 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 188 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 189 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 190 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 191 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 192 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 193 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 194 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 195 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 196 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 197 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 198 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 199 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 200 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 201 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 202 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 203 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 204 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 205 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 206 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 207 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 208 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 209 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 210 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 211 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 212 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 213 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 214 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 215 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 216 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 217 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 218 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 219 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 220 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 221 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 222 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 223 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 224 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 225 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 226 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 227 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 228 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 229 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 230 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 231 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 232 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 233 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 234 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 235 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 236 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 237 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 238 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 239 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 240 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 241 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 242 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 243 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 244 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 245 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 246 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 247 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 248 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 249 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 250 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 251 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 252 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 253 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 254 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 255 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 256 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 257 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 258 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 259 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 260 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 261 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 262 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 263 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 264 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 265 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 266 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 267 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 268 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 269 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 270 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 271 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 272 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 273 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 274 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 275 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 276 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 277 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 278 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 279 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 280 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 281 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 282 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 283 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 284 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 285 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 286 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 287 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 288 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 289 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 290 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 291 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 292 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 293 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 294 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 295 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 296 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 297 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 298 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 299 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 300 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 301 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 302 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 303 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 304 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 305 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 306 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 307 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 308 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 309 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 310 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 311 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 312 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 313 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 314 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 315 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 316 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 317 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 318 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 319 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 320 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 321 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 322 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 323 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 324 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 325 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 326 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 327 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 328 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 329 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 330 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 331 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 332 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 333 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 334 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 335 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 336 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 337 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 338 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 339 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 340 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 341 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 342 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 343 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 344 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 345 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 346 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 347 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 348 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 349 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 350 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 351 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 352 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 353 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 354 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 355 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 356 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 357 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 358 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 359 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 360 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 361 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 362 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 363 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 364 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 365 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 366 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 367 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 368 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 369 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 370 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 371 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 372 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 373 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 374 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 375 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 376 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 377 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 378 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 379 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 380 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 381 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 382 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 383 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 384 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 385 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 386 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 387 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 388 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 389 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 390 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 391 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 392 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 393 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 394 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 395 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 396 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 397 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 398 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 399 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 400 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 401 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 402 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 403 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 404 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 405 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 406 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 407 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 408 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 409 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 410 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 411 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 412 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 413 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 414 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 415 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 416 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
