# Hacker News 热门文章摘要 (2026-05-12)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. 拓竹科技正在滥用开源社会契约

**原文标题**: Bambu Lab is abusing the open source social contract

**原文链接**: [https://www.jeffgeerling.com/blog/2026/bambu-lab-abusing-open-source-social-contract/](https://www.jeffgeerling.com/blog/2026/bambu-lab-abusing-open-source-social-contract/)

Bambu Lab被指控滥用开源社会契约，对OrcaSlicer的一个小型分支——OrcaSlicer-bambulab的开发者发出法律威胁。该分支允许用户绕过Bambu的云端依赖，在本地使用打印机功能，并使用了Bambu Studio中相同的AGPLv3许可代码。

Bambu Lab公开指责该开发者冒充其客户端并制造安全风险，声称该分支向网络流量中注入了伪造的身份元数据。开发者驳斥了这些说法，指出代码完全按原样使用，而Bambu拒绝公布完整的通信记录。批评者认为，Bambu正利用法律手段压制一小群高级用户，而非修复自身的基础设施或安全问题。

文章指出了用户对Bambu转向始终连接云端模型的广泛不满——该模型迫使用户通过Bambu的服务器路由打印任务，否则就得屏蔽网络访问并使用旧版固件。路易斯·罗斯曼承诺提供1万美元帮助该开发者应对法律威胁，但作者认为最好的回应或许是彻底避开Bambu。核心冲突在于Bambu对生态系统控制的渴望与开源原则所倡导的所有权、透明度和用户自由之间的矛盾。

---

## 12. 学习软件架构

**原文标题**: Learning Software Architecture

**原文链接**: [https://matklad.github.io/2026/05/12/software-architecture.html](https://matklad.github.io/2026/05/12/software-architecture.html)

**摘要：**

本文为一位研究型物理学家提供了关于学习软件设计的建议，强调真正的技能源于动手实践，而非正式课程。关键见解包括：

1. **康威定律**至关重要：软件架构反映了开发团队的社会结构。工业代码与科学代码的差异通常源于激励机制（如出版截止日期）而非技术知识。

2. **激励机制与适应**是核心。如果无法改变激励机制（如项目截止日期），就适应它。利用约束条件指导设计决策。

3. **rust-analyzer案例研究**展示了架构如何与社会目标保持一致：模块化、稳定且快速测试的核心吸引专家贡献者，而隔离的、"足够好"的功能则欢迎周末志愿者。这实现了在不牺牲质量的前提下扩展规模。

4. **具体资源**包括Gary Bernhardt的"边界"演讲、ØMQ指南（涉及康威定律）、Ted Kaminski的博客（连贯理论）以及"Google的软件工程"。最重要的是通过实践学习和适应现实约束。

---

## 13. 我们意外地重现了旧版Facebook

**原文标题**: We accidentally recreated old Facebook

**原文链接**: [https://amrshawky.com/posts/we-accidentally-recreated-fb/](https://amrshawky.com/posts/we-accidentally-recreated-fb/)

**摘要：**

PicPocket.io最初是一款照片整理应用，通过聊天界面为共享照片中的人物添加标签，使用户能按“谁在场”而非日期检索照片。用户整理完照片后，参与度下降，团队因而增加了动态功能，允许向更广泛的受众分享照片及其他内容（视频、文章、歌曲）。这创造了一个“低投入”分享空间——分享那些不值得直接发送消息的内容。

该功能无意中模仿了老版Facebook：无广告、无算法、无“发现”功能，仅包含用户认识的人发布的帖子。用户乐于发布在当今社交媒体上不会分享的个人内容（情侣照、旅行照、尴尬自拍）。一个额外好处是内容发现更自然，比如来自朋友推荐的YouTube视频。

尽管与老版FB相似，团队仍持积极态度，指出其商业模式基于照片存储而非广告或数据销售。他们计划进行用户体验重构并整合移动端动态功能。感兴趣的用户可访问picpocket.io注册。

---

## 14. 展示 HN：Statewright – 可视化状态机，让AI代理更可靠

**原文标题**: Show HN: Statewright – Visual state machines that make AI agents reliable

**原文链接**: [https://github.com/statewright/statewright](https://github.com/statewright/statewright)

**Statewright** 是一款通过状态机约束AI代理在不同工作流阶段访问工具的工具，从而提升其可靠性。不同于依赖更大模型或更长提示，它缩小了问题空间。

**核心理念**：代理在预设状态（规划、实施、测试、完成）内工作，每个状态都有特定允许的工具。例如，规划阶段仅有只读工具；实施阶段解锁编辑工具并限制Shell访问；测试阶段仅允许指定的测试命令。

**关键成果**：在5任务SWE-bench子集中，两个本地模型（13.8GB和19.9GB）在Statewright约束下成功率从2/10提升至10/10。前沿模型也受益于更少的完成令牌和减少的“读取循环死锁”。

**实现**：一个Rust引擎确定性评估状态机定义（无需LLM参与）。通过MCP集成插件层，支持Claude Code、Codex、Curor、opencode和Pi等代理。执行范围从“硬性”（协议层阻塞）到“建议性”。

**护栏**包括：按状态工具强制、Bash命令识别、编辑行数上限、命令白名单、条件状态转换、审批关口、环境范围限制和会话隔离。

**定价**：个人开发者免费（3个工作流，200次转换/月）；Pro版$29/月；团队版$99/月；企业版定制。引擎采用Apache 2.0许可证，支持自托管。

---

## 15. 展示HN：大型机与COBOL的代理式接口

**原文标题**: Show HN: Agentic interface for mainframes and COBOL

**原文链接**: [https://www.hypercubic.ai/hopper](https://www.hypercubic.ai/hopper)

**概述：**  
Hopper 是一款面向大型机的全新智能体开发环境，旨在通过AI智能体实现COBOL与z/OS工作流的现代化改造。用户可通过TN3270与大型机交互，在现代化桌面端界面中完成数据集查看、JCL编写、作业调试、VSAM查询及z/OS操作等任务。  

核心功能包括：  
- AI智能体可理解z/OS系统，通过面板ID驱动ISPF、编写列严格的JCL、将SPOOL故障解码为结构化诊断报告，并支持以SQL方式查询VSAM。  
- 一键完成编译、测试与部署——自动处理JCL、解析JES返回码，并在执行变更前暂停等待用户确认。  
- 通过分析JESMSGLG、JESYSMSG及SYSUDUMP快速定位异常终止码、故障步骤及源代码行，实现高效调试。  
- 内置TN3270终端，支持全功能PF、PA及注意键操作，保留传统访问模式。  

定价方案：  
- **个人版（免费）**：包含核心功能，支持跨平台（macOS、Windows、Linux），可连接自有大型机。无需信用卡。  
- **企业版（定制报价）**：额外提供SAML单点登录、MCP服务器访问、管理员/模型控制、隐私选项、优先支持、本地/VPC部署及SOC 2合规认证。  

用户可通过申请表免费获取大型机访问凭证。Hopper团队由来自顶尖AI及科技公司的专家组成，并提供Discord社区用于技术支持与更新动态。

---

## 16. 如何让文字呈现未来感

**原文标题**: How to make your text look futuristic

**原文链接**: [https://typesetinthefuture.com/2016/02/18/futuristic/](https://typesetinthefuture.com/2016/02/18/futuristic/)

本文以《银翼杀手》电影为主要范例，幽默地列出了让文字呈现未来感的六条排版规则。

**规则1：** 添加斜体倾斜。
**规则2：** 让字母有些部分圆润，有些部分棱角分明。
**规则3：** 在字母上添加“完美V形”（V形缺口或切槽）。
**规则4：** 将多个字母合并为一个（连字或重叠字形），模拟“2067年的字距战争”。
**规则5：** 在文字中随意移除一条水平线段。
**规则6：** 添加噪点纹理、拉丝金属效果、忧郁的蓝色灯光、重度浮雕以及星空背景。

文章通过展示电影标志来演示这些规则的应用，包括《太空堡垒卡拉狄加》（所有规则）、《变形金刚》（极致金属感）、《机械战警》（重度浮雕与V形）、《星球大战》（规则4）、《超凡蜘蛛侠》（规则2的极致表现）和《回到未来》。一个显著的例子是《星际迷航：下一代》，它完美诠释了“星空”这一经典元素。作者总结道，组合这些元素就能令人信服地展现出未来主义美学。

---

## 17. Instructure向Canvas黑客支付赎金

**原文标题**: Instructure pays ransom to Canvas hackers

**原文链接**: [https://www.insidehighered.com/news/tech-innovation/administrative-tech/2026/05/11/instructure-pays-ransom-canvas-hackers](https://www.insidehighered.com/news/tech-innovation/administrative-tech/2026/05/11/instructure-pays-ransom-canvas-hackers)

**摘要：**  
教育科技公司Instructure在十天之内两次遭黑客入侵其Canvas学习管理系统后，向网络犯罪团伙ShinyHunters支付了赎金。此次泄露涉及超过8800所机构约2.75亿用户的数据。作为赎金交换，黑客提供了数据销毁的数字确认，并保证不会对Instructure的任何客户进行勒索。该公司未透露具体金额，但表示该协议涵盖所有受影响客户，客户无需联系黑客。  

首次攻击导致服务中断；Instructure起初专注于安全修复，未进行谈判。随后黑客发动第二次攻击，显示赎金信息并威胁称，若在5月12日前不满足要求，将泄露用户数据——包括姓名、电子邮箱地址及学号。第二次入侵迫使多所大学推迟期末考试及作业。  

Instructure首席执行官史蒂夫·戴利承认公司在首次事件中沟通不力，并承诺将更及时地发布更新。截至周一，所有Canvas环境已恢复。ShinyHunters团伙还与宾夕法尼亚大学、普林斯顿大学及哈佛大学的数据泄露事件有关。

---

## 18. 当生活给你柠檬时，请编写更清晰的错误提示信息。

**原文标题**: When life gives you lemons, write better error messages

**原文链接**: [https://wix-ux.com/when-life-gives-you-lemons-write-better-error-messages-46c5223e1a2f](https://wix-ux.com/when-life-gives-you-lemons-write-better-error-messages-46c5223e1a2f)

**摘要：**

本文强调精心设计的错误提示在用户体验中的关键作用，主张错误提示应具备帮助性、人性化和可操作性，而非技术化或推卸责任。文章提出了撰写更优错误提示的核心原则：

1. **清晰具体**——准确说明出错原因（例如，将"无效输入"改为"密码至少需要8个字符"）。
2. **提供解决方案**——引导用户如何修正错误，而不仅仅是陈述问题。
3. **使用友好人性化语气**——避免专业术语和指责性语言，以同理心对待用户。
4. **保持简洁**——简短聚焦的提示更易于阅读和操作。
5. **考虑时机与位置**——在相关字段附近实时显示错误提示（例如实时验证）。
6. **避免指责**——将错误归因于系统限制而非用户失误（例如，将"你犯了个错误"改为"我们无法保存您的更改"）。

文章还建议设计师通过真实用户测试错误提示，并根据反馈迭代优化。最终，优质的错误提示能将挫败转化为指引，增强信任与可用性。核心启示：将错误视为帮助用户成功的机会，而非障碍。

---

## 19. 老版桌面操作系统截图

**原文标题**: Screenshots of Old Desktop OSes

**原文链接**: [http://www.typewritten.org/Media/](http://www.typewritten.org/Media/)

本文来自“复古技术媒体”，精选了1983年至1992年间经典桌面操作系统与软件的屏幕截图合集，收录超过40个条目，详细介绍了每张早期图形界面的操作系统、硬件及分辨率。主要亮点包括：

- **早期图形界面：** VisiCorp Visi On（1983年）、SunTools（1984–87年）、GEM Desktop（1985–88年）以及Acorn Archimedes的Arthur系统（1987年）。
- **重要里程碑：** OS/2 Presentation Manager（1988年）、Windows/286与Windows/386（1988–89年）、NeXTstep 1.0（1989年）以及Microsoft Windows 3.0（1990年）。
- **工作站与Unix系统：** DEC VAXstation、SGI IRIS、Sun Microsystems、HP、IBM RT PC及Atari TT030等平台运行SunView、OpenWindows、DECwindows、AIXwindows和SCO OpenDesktop环境的截图。
- **法律影响：** 提及苹果对DRI发起的“观感”诉讼，该案迫使GEM Desktop 3.0（1988年）采用受限的双窗口布局。
- **技术解析：** 包括用于纵横校正的行加倍技术、色彩深度限制（如Windows/386因8位色导致蓝色缺失）及性能问题（如OS-9上G-Windows运行缓慢、Acorn硬件上RISC iX响应迟钝）。

该合集作为前Windows 95时代开创性桌面环境的历史档案，既呈现了标志性系统，也收录了鲜为人知的平台。

---

## 20. 事后剖析：TanStack NPM 供应链攻陷事件

**原文标题**: Postmortem: TanStack NPM supply-chain compromise

**原文链接**: [https://tanstack.com/blog/npm-supply-chain-compromise-postmortem](https://tanstack.com/blog/npm-supply-chain-compromise-postmortem)

2026年5月11日，一名攻击者通过发布84个恶意版本入侵了42个TanStack npm包。该攻击结合了三种技术：利用`pull_request_target`工作流（绕过贡献者审批）、跨信任边界污染GitHub Actions缓存，以及从运行器内存中提取OIDC令牌以直接发布至npm。

攻击者创建分支、提交恶意PR，并利用运行在`pull_request_target`上的`bundle-size.yml`工作流执行了3万行的有效载荷。该载荷在pnpm存储缓存中植入毒化内容，所采用的缓存密钥正是生产环境的`release.yml`工作流后续会恢复的。当合法合并触发时，被毒化的缓存执行恶意软件，提取了OIDC令牌，绕过了预期的发布步骤。

恶意软件从AWS、GCP、Kubernetes、npm、GitHub及SSH中窃取凭证，通过Session信使外传。它还通过查找受害者维护的其他包进行自我传播。StepSecurity研究员在20分钟内从外部检测到攻击。所有受影响版本已被弃用，npm安全团队已介入。

关键教训：缺乏内部告警机制、`pull_request_target`工作流未经审计、OIDC可信发布者缺少逐次发布审查。维护者建议所有安装受影响版本的用户轮换安装主机上可访问的全部凭证。

---

## 21. 加拿大C-22法案是去年监控噩梦的翻版

**原文标题**: Canada’s Bill C-22 Is a Repackaged Version of Last Year’s Surveillance Nightmare

**原文链接**: [https://www.eff.org/deeplinks/2026/05/canadas-bill-c-22-repackaged-version-last-years-surveillance-nightmare](https://www.eff.org/deeplinks/2026/05/canadas-bill-c-22-repackaged-version-last-years-surveillance-nightmare)

加拿大拟议的C-22法案（即《合法访问法案》）是备受批评的C-2法案的修订版，后者因隐私问题未能通过。该法案强制数字服务商（包括电信和即时通讯应用）保留用户元数据一年，并扩大与美国等外国政府的数据共享。批评者认为，这些元数据收集会泄露通信内容和行动轨迹的敏感信息。

最具争议的是，C-22法案允许公共安全部长强制企业创建监控后门，前提是不得引入"系统性漏洞"。然而，法案对"系统性漏洞"和"加密"的模糊定义，为政府要求规避加密留下空间——专家指出这本质上就会制造系统性漏洞。同时，企业将被禁止披露此类指令。

这与英国2024年要求苹果公司为高级数据保护功能开设后门的做法如出一辙——苹果当时拒绝配合，转而撤除了英国用户的该功能。Meta和苹果已公开反对C-22法案，美国国会委员会也对此表示担忧。文章以2024年"盐台风"黑客攻击事件为例，指出该事件正是利用为执法而建的合法访问系统实施攻击，揭示了此类风险。

文章总结认为，C-22法案削弱了隐私权、透明度及加密数据的安全保障，反而扩大了政府监控权力。

---

## 22. Text Blaze (YC W21) 正在招聘非AI方向的暑期实习生

**原文标题**: Text Blaze (YC W21) Is Hiring for a No-AI Summer Internship

**原文链接**: [https://www.ycombinator.com/companies/text-blaze/jobs/P4CCN62-the-blaze-no-ai-summer-internship](https://www.ycombinator.com/companies/text-blaze/jobs/P4CCN62-the-blaze-no-ai-summer-internship)

**摘要：**  
Text Blaze（YC W21）正在招募独特的“无AI之夏”实习生，提供每月2000至5000美元的远程岗位。该职位面向大三以上或初入职场、热衷于复杂问题解决、用户互动及动手实践的人才。实习生整个夏季禁止使用AI，以促进真实学习与批判性思维。技术栈包括JavaScript、React、Python及谷歌云平台。公司强调AI虽强大，但过度使用可能阻碍初级工程师的成长。申请者需提交一封不超过五句话的简短求职信，说明引以为豪的编程项目、一项杰出成就，以及如何利用“无AI之夏”。Text Blaze是一款拥有超70万用户、评分4.9/5的效率工具。团队规模小、分布全球，同时也在招聘高级职位。

---

## 23. 《飞蛾故事地图》

**原文标题**: The Moth Story Map

**原文链接**: [https://themoth.org/dispatches/story-map](https://themoth.org/dispatches/story-map)

本文来自《飞蛾》杂志，介绍了一种用于组织个人叙事的工具**故事地图**，包含五个章节：

1. **过去的世界**——背景铺垫。
2. **直到有一天……**——引发事件。
3. **渐入佳境**——面临的风险及其重要性。
4. **转变时刻**——转折点。
5. **现在的世界**——讲述者发生的变化。

文章重点推介了一段新动画视频，该视频将这一地图应用于丹特·杰克逊2013年在高中故事大满贯活动中讲述的故事《舞会》。同时宣布两项免费虚拟飞蛾项目开放申请：**全城驻留计划**（面向纽约市10至12年级学生的七周工作坊）和**飞蛾教师学院**（面向全球5至12年级教师）。本文鼓励读者运用故事地图创作自己的故事或教授叙事结构。

---

## 24. 测试UPS输出波形

**原文标题**: Testing UPS Output Waveforms

**原文链接**: [https://www.lttlabs.com/articles/2026/05/12/ups-exploration](https://www.lttlabs.com/articles/2026/05/12/ups-exploration)

**摘要:**  
本文详细介绍了一次针对各种办公室UPS设备的探索性测试，重点关注市电模式和电池备份模式下的输出波形。作者提醒，由于高压和接地回路风险，请勿将示波器直接连接到市电。他们使用隔离的Chroma 61507交流电源和探头设置来安全测量UPS的输入/输出。  

测试了三款UPS型号：  
- **Eaton SMART1500PSRTNC**：一款在线互动式UPS，输出完整正弦波。在拔插切换时，会显示短暂中断（约10–16毫秒）并在过零点出现轻微瞬变。插回切换则更为平滑。  
- **APC BE750G**：一款经济型机型，生成模拟（块状）正弦波。切换相对较快，但波形不够纯净，尤其在电池供电时。  
- **APC BN1500M2-CA**：测试了两台设备；其中一台故障，即使在轻载下也输出畸变波形。第二台表现良好，具有平滑的正弦波和切换表现（拔插时中断约10毫秒）。连接的60W充电器略微拉低了波形峰值。  

关键发现包括切换时间的差异、各型号间波形质量的差别以及空载条件的影响。未来探索可能涉及切换时间、谐波、负载测试、浪涌处理及ATX电源兼容性。作者寻求读者意见以确定进一步测试的优先级。

---

## 25. 发布HN：Voker（YC S24）——AI智能体分析工具

**原文标题**: Launch HN: Voker (YC S24) – Analytics for AI Agents

**原文链接**: [https://voker.ai](https://voker.ai)

以下是文章的简洁总结：

**Voker (YC S24)** 是一个分析平台，旨在帮助团队构建和优化AI智能体。其解决的核心问题是智能体性能缺乏可见性，这常导致用户体验差且难以证明投资回报率。

**主要功能包括：**
- **自助分析：** 使产品经理和分析师无需依赖工程团队即可获取洞察。
- **性能智能：** 追踪智能体响应，识别知识缺口，并检测行为异常。
- **业务影响：** 将会话数据与转化率、留存率等指标关联。
- **意图、纠正与解决追踪：** 自动分类用户目标，检测摩擦点，并评估智能体成功率。

Voker提供轻量级SDK（Python和Typescript），可与主要AI框架（OpenAI、Anthropic、Gemini、LangChain）集成，且无供应商锁定。它支持自托管，允许团队完全拥有其数据。

**目标受众：** 需要监控和优化生产环境中智能体的大规模会话式AI团队（每月1000次以上对话）。

**定价：** 从免费套餐（$0/月，2000个事件，30天数据保留）起步，可扩展至企业版（自定义数量、单点登录和专属支持）。

---

## 26. SQL：天生不完美

**原文标题**: SQL: Incorrect by Construction

**原文链接**: [https://chreke.com/posts/sql-incorrect-by-construction](https://chreke.com/posts/sql-incorrect-by-construction)

**摘要：**

本文以资金转账程序为例，揭示了SQL中的关键并发漏洞。原始代码在向鲍勃转账10美元前先检查爱丽丝的余额，存在三个主要问题：

1.  **原子性**：若程序在扣除爱丽丝账户后、贷记鲍勃账户前中止，则资金会丢失。修复方法是将代码包装在事务中。

2.  **TOCTOU（检查时间与使用时间）**：在并行转账中，一个事务可能在另一事务取款前读取爱丽丝的余额，导致透支。修复方法是在初始余额检查时使用 `UPDLOCK` 锁住账户行。

3.  **死锁**：如果爱丽丝和鲍勃同时向对方转账，每个事务都持有对方所需的锁，导致死锁。修复方法是预先获取所有必要的锁。

作者认为，虽然通过显式事务和锁定可以使SQL正确，但这会使代码更长、更难读。他们提出了一种受Rust“无畏并发”启发的替代系统，其中正确行为是默认的：自动原子事务、在修改前强制正确加锁、以及用于死锁检测的静态分析。此类系统可能以吞吐量换取正确性，但对于数据完整性至关重要的应用（例如医疗或金融系统）仍然很有价值。

---

## 27. 特洛伊的真实故事

**原文标题**: The Real Story of Troy

**原文链接**: [https://storica.club/blog/troy-was-real/](https://storica.club/blog/troy-was-real/)

**特洛伊的真实故事摘要**

海因里希·施利曼声称于1873年发现了荷马笔下的特洛伊，但他的发现存在严重缺陷。根据弗兰克·卡尔弗特（他拥有土耳其希沙利克土丘的部分所有权）提供的线索，施利曼用炸药和未经训练的劳工，在九座层层叠叠的城市中笔直向下挖了一条巨大的壕沟，直接炸穿了可能发生特洛伊战争的青铜时代晚期地层（特洛伊VI 和 VIIa），最终在更为古老的特洛伊II（约公元前2400年）处停下。他将一批黄金宝藏走私出奥斯曼帝国，命名为“普里阿摩斯的宝藏”，但这些黄金比任何可能的特洛伊战争年代还要早一千年。奥斯曼政府在雅典起诉他并胜诉，但施利曼支付了更大数额的款项以保留黄金并获准返回继续发掘。

希沙利克包含九个文化层，从特洛伊I（约公元前3000年）到罗马时代的特洛伊IX。后来的发掘证实，特洛伊VI和VIIa是真实存在的、设有防御工事的贸易中心，于公元前1180年左右被毁，这与传统上特洛伊战争发生的年代相符。赫梯泥板也提及一个名为“维鲁萨”的附属王国，很可能就是“伊利奥斯”。

施利曼于1881年将宝藏捐赠给了柏林。二战期间，宝藏被存放在一座防空塔内。1945年，苏联军队将其缴获并运往莫斯科的普希金博物馆，在那里秘密藏匿了48年。尽管外界屡次询问，苏联始终否认其存在。

---

## 28. 《极度空间》（1988）启发了广告拦截器

**原文标题**: They Live (1988) inspired Adblocker

**原文链接**: [https://github.com/davmlaw/they_live_adblocker](https://github.com/davmlaw/they_live_adblocker)

本文介绍了一款受1988年电影《极度空间》启发的uBlock Origin Lite爱好者分支。该扩展并非简单隐藏被屏蔽的广告，而是用白色方块替代它们，上面印有电影中的反乌托邦标语，如“服从”“消费”和“沉睡”。

为正常运作，用户必须将uBO Lite的过滤模式设为“最佳”或“完整”，因为默认的“基本”模式会在网络层面拦截广告，不会留下可供修改的DOM元素。该扩展通过修补uBO Lite的视觉过滤功能，注入带覆盖层的白色遮罩，并通过`data-ubol-they-live`属性从列表中随机读取短语。加载时，MutationObserver会标记匹配的元素。

主要注意事项：这不是uBO官方产品；仅影响被视觉过滤的广告（而非网络拦截的广告）；自定义用户过滤器仍会照常隐藏广告。强制显示隐藏元素偶尔会影响页面布局。该项目采用GPL-3.0开源协议，可使用Node 22从源码构建。

---

## 29. 如果AI替你写代码，为何还要用Python？

**原文标题**: If AI writes your code, why use Python?

**原文链接**: [https://medium.com/@NMitchem/if-ai-writes-your-code-why-use-python-bf8c4ba1a055](https://medium.com/@NMitchem/if-ai-writes-your-code-why-use-python-bf8c4ba1a055)

无法访问文章链接。

---

## 30. 真空管的超长寿命

**原文标题**: The Surprisingly Long Life of the Vacuum Tube

**原文链接**: [https://www.construction-physics.com/p/the-surprisingly-long-life-of-the](https://www.construction-physics.com/p/the-surprisingly-long-life-of-the)

**摘要：**

布莱恩·波特的文章《真空管出人意料的长寿》强调了真空管技术在半导体出现之前的持久影响力。文章追溯了其两大起源：气体放电管（经法拉第、普吕克和克鲁克斯研究，最终发现阴极射线和电子）和白炽灯泡（爱迪生的研究催生了热离子发射的“爱迪生效应”）。

关键发展包括约翰·弗莱明的整流器（1904年）和李·德·福雷斯特的“奥丁管”，后者演变为三极管放大器，实现了长途电话、无线电、早期计算机（如ENIAC）以及一系列电子管（四极管、五极管）。费迪南德·布劳恩的阴极射线管（1897年）发展为示波器、电视和早期计算机存储器（威廉姆斯管）。

真空管还为气体放电照明（霓虹灯、荧光灯、等离子显示屏）、X光机、磁控管（雷达和微波炉）、速调管（粒子加速器、癌症治疗）和回旋管（聚变研究）提供动力。文章指出，四项诺贝尔奖直接源自真空管研究（X射线、电子、电子显微镜、热离子发射）。

尽管半导体占据主导地位，但如今从微波炉到医疗设备，许多真空管基础设施仍在使用。

---

