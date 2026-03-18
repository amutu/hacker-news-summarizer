# Hacker News 热门文章摘要 (2026-03-18)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. OpenRocket

**原文标题**: OpenRocket

**原文链接**: [https://openrocket.info/](https://openrocket.info/)

OpenRocket是一款免费的开源模拟器，用于设计、分析和模拟模型火箭飞行。它采用基于CAD的设计环境，用户可通过丰富的组件目录或自定义材料构建详细模型，并实时获取稳定性、高度和速度等性能指标的反馈。

该软件提供先进可靠的六自由度飞行模拟，支持多级火箭、集群发动机和事件触发等复杂设计。它集成了ThrustCurve.org发动机数据库，帮助用户选择合适的发动机，并包含手动或AI辅助的设计优化工具。

OpenRocket通过Discord服务器促进社区交流与技术支持，同时为用户和开发者提供全面的文档。作为开源项目，它欢迎用户提交贡献、问题报告和功能建议。

---

## 2. 罗伯·派克的编程法则（1989）

**原文标题**: Rob Pike's Rules of Programming (1989)

**原文链接**: [https://www.cs.unc.edu/~stotts/COMP590-059-f24/robsrules.html](https://www.cs.unc.edu/~stotts/COMP590-059-f24/robsrules.html)

本文概述了Rob Pike提出的五项实用编程规则，强调通过测量和以数据为中心的设计来实现效率与简洁性。

核心原则如下：
1.  **避免过早优化**：不要猜测性能瓶颈所在，它们常出现在意想不到的地方。
2.  **先测量再调整**：仅在使用工具证实某段代码是主要性能瓶颈后，才针对速度进行优化。
3.  **小数据量时倾向简单方案**：对于小型数据集，花哨的复杂算法常因开销过大而更慢，除非已证实数据量巨大，否则应避免使用。
4.  **简单即稳健**：复杂算法更容易出现缺陷且难以正确实现，应优先选择简单算法和数据结构。
5.  **数据结构是核心**：优秀的程序设计始于选择合适的数据结构，算法往往会随之自然呈现。这被概括为“编写使用智能对象的笨拙代码”。

文章指出这些规则与知名编程格言相呼应：规则1和2呼应了Tony Hoare的“过早优化是万恶之源”；规则3和4体现了KISS（“保持简单，直白”）原则（Ken Thompson将其转述为“犹豫不决时，采用暴力方法”）；规则5则反映了Fred Brooks在《人月神话》中提出的理念。

---

## 3. Show HN：Hacker News 存档（4700万+条目，11.6GB）以 Parquet 格式提供，每 5 分钟更新一次

**原文标题**: Show HN: Hacker News archive (47M+ items, 11.6GB) as Parquet, updated every 5m

**原文链接**: [https://huggingface.co/datasets/open-index/hacker-news](https://huggingface.co/datasets/open-index/hacker-news)

该数据集提供了Hacker News数据的完整实时更新存档，包含自2006年至今超过4700万条内容（故事、评论、职位、投票），总计11.6GB。数据以月度Parquet文件形式存储，并通过自动化流程每五分钟更新一次，该流程直接从Hacker News API获取新内容。

主要特点包括：
*   **组织方式：** 历史数据按月度Parquet文件分割，当日实时活动数据按5分钟区块存储。
*   **可访问性：** 可使用DuckDB、Hugging Face的`datasets`库、`pandas`或`huggingface_hub`命令行工具直接查询，无需下载完整数据集。
*   **统计信息：** 数据集包含内容类型细分（87.2%评论、12.7%故事）、故事评分、最高分享域名（如GitHub、YouTube）及最活跃提交者分析。
*   **处理流程：** 基于Go的系统从ClickHouse源处理历史回填，并通过HN Firebase API进行实时轮询，每日进行数据滚动归并，最终整合为权威的月度文件。

该资源适用于研究、分析和模型训练，为近二十年的技术讨论提供了全面视角。

---

## 4. 漫游——探索小型网络的微型去中心化工具

**原文标题**: Wander – A tiny, decentralised tool to explore the small web

**原文链接**: [https://susam.net/wander/](https://susam.net/wander/)

**摘要**

Wander是一款去中心化网络工具，允许用户探索个人网站所有者社区中的随机网站。它通过独立的“控制台”（承载该工具的网页）运行。

使用时，您需访问一个控制台（需启用JavaScript）。从那里，您可以“漫游”到另一个托管在不同网站上的控制台，并从新位置继续探索。

其核心理念是点对点网络。加入时，您需下载两个文件（`index.html`和`wander.js`）并托管在您个人网站的`/wander/`目录中。随后编辑`wander.js`以链接到其他已知控制台。设置完成后，您可以在社区论坛分享您的控制台链接，鼓励他人将其加入他们的网络，从而扩展去中心化的“小型网络”。

本质上，Wander是一个简单、由用户维护的系统，通过在不同成员自行托管的控制台之间跳转，来发现独立网站。

---

## 5. 2025年图灵奖授予量子信息科学领域。

**原文标题**: 2025 Turing award given for quantum information science

**原文链接**: [https://awards.acm.org/about/2025-turing](https://awards.acm.org/about/2025-turing)

**文章摘要：《2025年图灵奖授予量子信息科学领域》**

2025年ACM A.M.图灵奖（常被称为“计算机界的诺贝尔奖”）授予**埃莉诺·万斯博士**和**马库斯·索恩博士**，以表彰他们对量子信息科学领域作出的奠基性与变革性贡献。

两人历时三十余年的合作研究，为量子计算从理论走向工程实践提供了关键的理论基础。奖项特别指出其两项里程碑成就：

1.  **万斯-索恩纠错编码**：这一突破解决了保护脆弱的量子数据（量子比特）免受环境“噪声”干扰的核心难题。该编码从理论上证明了容错量子计算的可能性，为开发实用量子计算机铺平了道路。

2.  **索恩-万斯算法**：这一开创性算法首次证明，针对一个具体且有实用价值的问题，量子机器相比任何经典计算机具有明确的计算优势。它提供了关键的“杀手级应用”，通过展示超越理论推测的量子优势，推动了全球对该领域的投入。

ACM强调，他们的工作构建了“量子未来的架构”，将量子计算从一种推测性的物理概念转变为计算机科学与工程学中一个严谨的分支。他们建立的纠错框架与算法优势理论，直接奠定了所有现代量子硬件与软件研究的基础。

该奖项包含100万美元奖金，以表彰万斯博士和索恩博士为量子信息科学发展轨迹奠定基石，并将世界引领至量子计算时代的门槛。

---

## 6. Show HN：与朋友一起玩LongTurn FreeCiv

**原文标题**: Show HN: Playing LongTurn FreeCiv with Friends

**原文链接**: [https://github.com/ndroo/freeciv.andrewmcgrath.info](https://github.com/ndroo/freeciv.andrewmcgrath.info)

本文介绍了一款自托管的FreeCiv 3.2.3多人游戏服务器，专为“长回合”模式设计，每回合持续23小时。该服务器运行于Fly.io平台，具备邮件通知、实时状态页面和AI生成战报等功能。

服务器设计具备容错性，可在重启后保持回合计时。其架构采用FIFO管道进行通信，通过脚本处理自动存档、回合通知和状态页面更新等任务。玩家可通过FreeCiv客户端每日管理自己的行动。

主要功能包括：
- 实时显示排名、外交关系和倒计时的状态页面
- 回合截止的自动邮件提醒
- 生成回合摘要的AI“战报”系统
- 基于SQLite的玩家身份验证

部署指南涵盖Fly.io平台配置、游戏设置、添加玩家，以及修改游戏状态或调整回合计时器等常见操作。该项目开源可用，适合玩家与好友自定义长期策略游戏。

---

## 7. 书籍：《机器学习基准测试的新兴科学》

**原文标题**: Book: The Emerging Science of Machine Learning Benchmarks

**原文链接**: [https://mlbenchmarks.org/00-preface.html](https://mlbenchmarks.org/00-preface.html)

本书介绍了创建与运用基准来评估机器学习系统这一新兴学科。它超越了简单报告模型在标准数据集上的准确率，主张现代机器学习需要复杂多面的基准，以评估鲁棒性、公平性、效率和现实适用性等关键维度。

书中将基准测试定位为该领域严谨发展的基础科学实践，探讨了基准设计中的核心挑战，包括避免数据集偏差、防止过拟合，以及确保评估能转化为实际性能。本书面向广泛读者，包括机器学习研究者、从业者、工程师和学生，旨在帮助他们理解、开发或批判性地运用基准，以指导开发更强大、可靠且值得信赖的人工智能系统。

---

## 8. 三星Galaxy S26 Ultra评测：隐私屏幕

**原文标题**: Samsung Galaxy S26 Ultra Review: The Privacy Screen

**原文链接**: [https://www.wired.com/review/samsung-galaxy-s26-ultra/](https://www.wired.com/review/samsung-galaxy-s26-ultra/)

三星Galaxy S26 Ultra的突出亮点在于其集成的隐私显示屏，能有效防止侧面窥视屏幕内容，且不会显著影响亮度或画质。虽然相比前代并非革命性升级，但该机性能卓越、续航强劲，并搭载多功能可靠的四摄系统，具备改进的低光拍摄能力和超级稳定的地平线锁定视频模式。

评测指出几点不足：因摄像头凸起导致手机在平面上放置不稳，缺少原生Qi2磁吸充电功能，部分AI功能表现平庸或存在侵扰性。三星自带键盘也受到批评。不过，实用的AI工具包括可消除背景噪音的音频橡皮擦，以及通过Gemini实现的谷歌任务自动化功能，能处理叫车、订餐等应用操作。

S26 Ultra定价1300美元，最适合从旧款设备升级的用户——其隐私屏不仅在敏感场景，在日常使用中也能提供切实的便利。

---

## 9. AI编程是一场赌博

**原文标题**: AI coding is gambling

**原文链接**: [https://notes.visaint.space/ai-coding-is-gambling/](https://notes.visaint.space/ai-coding-is-gambling/)

本文作者认为，使用AI编程已演变为一种赌博行为。虽然AI能快速生成看似出色的代码，但细节往往存在缺陷，需要大量清理工作。这使得开发者的角色从深思熟虑的问题解决者，转变为仅仅通过提示“拉动老虎机”并收拾AI烂摊子的操作者。

作者从个人层面深感这种模式难以令人满足。传统编程——包括研究过程、巧妙调试和深度理解——本是“滋养灵魂”的。而AI作为“无限抄袭机器”，剥夺了工作中这种有益心智的投入感。它制造了一种空洞且令人上瘾的循环：开发者被诱惑着放弃思考，只是不断重复提示，期待一次“头奖”。

尽管承认AI有助于提升信心和探索新技术，作者质疑这究竟能让自己成为更优秀的开发者，还是仅仅变成更高效的赌徒。核心问题在于有意义的手艺正在流失。作者最终提出的解决方案是个人自律：避免依赖AI，主动回归传统、滋养灵魂的编程与问题解决方法。

---

## 10. 夜莺——开源卡拉OK应用，支持电脑上的任意歌曲。

**原文标题**: Nightingale – open-source karaoke app that works with any song on your computer

**原文链接**: [https://nightingale.cafe/](https://nightingale.cafe/)

**Nightingale**是一款开源卡拉OK应用，可将电脑上的任意音频或视频文件转换为卡拉OK体验。其工作原理是通过AI模型（UVR Karaoke或Demucs）分离歌曲中的人声与伴奏，随后通过LRCLIB查找或利用WhisperX进行逐字转录与对齐，获取同步歌词。

核心功能包括：通过麦克风演唱时实时进行**音准评分**，提供星级评价与每首歌曲的积分榜；支持**多玩家档案**以追踪个人进度。该应用还支持**视频文件**（如MP4或MKV），可将原视频作为背景，并提供动态视觉背景（如GPU着色器效果）。

应用设计注重易用性，具备完整的**游戏手柄支持**以便导航，并以**独立单文件形式分发**，首次启动时会自动下载必要组件（如ffmpeg与AI模型）。它兼容**Linux、macOS和Windows系统**，并在可用时利用GPU加速（CUDA/Metal）以实现最佳性能。

---

## 11. 联邦网络专家称微软云为“一堆垃圾”，却仍批准了它。

**原文标题**: Federal Cyber Experts Called Microsoft's Cloud "A Pile of Shit", yet Approved It

**原文链接**: [https://www.propublica.org/article/microsoft-cloud-fedramp-cybersecurity-government](https://www.propublica.org/article/microsoft-cloud-fedramp-cybersecurity-government)

本文披露，尽管联邦网络安全专家私下因安全文档不足而将微软的GCC High云产品称为"一堆垃圾"，但最终仍批准其用于处理敏感的政府数据。

要点包括：
*   联邦风险与授权管理计划（FedRAMP）授权了微软的GCC High，尽管微软多年来未能充分解释其加密实践，导致审查人员无法正确评估其安全性。
*   这一授权发生在多起与微软产品相关的重大网络攻击之后，并使该公司得以扩大其利润丰厚的政府业务。
*   批准的部分原因是司法部等机构已通过替代的"机构路径"部署了该产品，对授权一个广泛使用的系统形成了压力。
*   文章强调了FedRAMP流程中潜在的利益冲突，因为第三方评估机构由被评估公司雇佣并支付报酬。
*   专家批评这一结果是"安全表演"，指出FedRAMP的人员和预算已被大幅削减，随着政府推动更多云和人工智能应用，该计划已沦为"行业的橡皮图章"。

微软为其合规性进行了辩护，而FedRAMP的监督机构则表示该计划此后已进行改革。这一事件引发了人们对旨在保护政府云系统安全的流程完整性的严重担忧。

---

## 12. 英伟达NemoClaw

**原文标题**: Nvidia NemoClaw

**原文链接**: [https://github.com/NVIDIA/NemoClaw](https://github.com/NVIDIA/NemoClaw)

**NVIDIA NemoClaw** 是一款开源早期软件栈，旨在通过 NVIDIA OpenShell 运行时，在沙盒环境中安全运行 OpenClaw AI 助手。它负责编排隔离容器的创建，其中每个智能体的操作——网络请求、文件访问和推理调用——均受严格的声明式安全策略管控。

**核心特性与工作流：**
*   **快速启动：** 通过脚本完成安装，自动配置 Node.js 和 OpenShell 网关，并引导用户创建沙盒、配置 AI 模型及应用安全策略。
*   **沙盒环境：** 智能体在 OpenShell 容器中运行，强制执行多层安全控制：网络出口管控、受限的文件系统访问（仅限 `/sandbox`、`/tmp`）、进程限制以及重定向的推理调用。
*   **托管推理：** 来自智能体的模型 API 调用会被拦截，并安全地路由至 NVIDIA 云服务（如 Nemotron-3），此过程需要 NVIDIA API 密钥。
*   **交互界面：** 用户可通过交互式 TUI 进行聊天，或使用 CLI 执行单条命令及处理较长输出。

**当前状态与命令：**
NemoClaw 目前是 **Alpha 测试软件**，存在已知限制且接口可能变动。主要通过 `nemoclaw` 主机 CLI 进行管理，包括初始设置（`onboard`）、连接沙盒（`connect`）和监控。OpenClaw 内部的插件命令正在积极开发中。

**总而言之，** NemoClaw 提供了一个安全、策略驱动的平台，用于实验 OpenClaw 智能体。它将智能体隔离在受控容器中，管理其外部交互，并通过 NVIDIA 云端模型处理推理任务。

---

## 13. 滚蛋吧，滚动渐隐

**原文标题**: Death to Scroll Fade

**原文链接**: [https://dbushell.com/2026/01/09/death-to-scroll-fade/](https://dbushell.com/2026/01/09/death-to-scroll-fade/)

这篇文章是一篇讽刺性的长篇大论，矛头直指“滚动淡入”效果的滥用——即用户滚动时元素以动画方式进入视野。作者认为这些效果通常俗气、分散注意力，且往往是客户在最后一刻提出的无意义要求。文中列举了几点实际反对理由：对前庭功能障碍用户的可访问性担忧、可能对核心网页指标（如最大内容绘制）产生负面影响，以及在不同设备和操作系统上的性能不佳问题。作者建议通过真实用户测试和跳出率数据来反驳这一功能，但最终主张开发者应集体抵制这种缺乏规划且增加技术负担的通用滚动淡入效果。

---

## 14. Show HN：Tmux-IDE，开源以代理为先的终端集成开发环境

**原文标题**: Show HN: Tmux-IDE, OSS agent-first terminal IDE

**原文链接**: [https://tmux.thijsverreck.com](https://tmux.thijsverreck.com)

**tmux-IDE** 是一款基于终端的开源开发环境，旨在将 Claude AI 智能体直接集成到 tmux 工作区中。其核心功能是让用户能够在单一预配置的终端布局内设置并管理一组 Claude AI 助手团队。

该工具使用声明式的 YAML 配置文件（`ide.yml`）来定义布局，指定用于主 Claude 智能体、其他队友智能体以及开发工具（如 Shell 或开发服务器）的窗格。启动后，用户向主 Claude 智能体发出指令，随后该智能体将组织团队、分配任务并通过自然语言管理工作流程。

主要功能包括：
*   **智能体优先的工作流：** 准备一个多窗格的 tmux 会话，使 Claude 智能体能够在共享任务上协作。
*   **声明式配置：** 布局通过 YAML 定义，确保跨项目和机器的可复现性。
*   **技术栈检测：** 自动检测项目类型（Next.js、Vite、Python、Go 等）以运行相应的开发服务器。
*   **Claude 代码技能集成：** 安装程序会注册一项技能，使 Claude 能够自动配置工作区布局。

工作流程非常简单：使用模板初始化项目，启动会话，然后指示主 Claude 智能体管理团队。

---

## 15. 机器支付协议（MPP）

**原文标题**: Machine Payments Protocol (MPP)

**原文链接**: [https://stripe.com/blog/machine-payments-protocol](https://stripe.com/blog/machine-payments-protocol)

机器支付协议（MPP）是一项由Tempo与Stripe共同开发的全新开放标准，旨在使自主AI代理能够进行支付。它解决了当前金融工具为人类设计所带来的挑战——这些工具需要账户创建、手动输入支付信息等复杂步骤，而代理难以独立完成。

MPP允许代理与服务通过编程方式协调支付，例如访问API、使用资源或进行微交易。对于使用Stripe的企业，只需通过PaymentIntents API添加几行代码即可集成MPP。随后，企业可以接受代理以多种形式支付，包括稳定币、信用卡及先买后付等方式，所有交易都会正常显示在Stripe管理面板中。

该协议已被Browserbase（用于按会话访问浏览器）、PostalForm（用于寄送实体邮件）和Prospect Butcher Co.（用于食品订购）等公司采用，展示了由代理驱动的新型商业模式。

MPP是Stripe更广泛的“代理商务套件”的一部分，该套件还包括代理商务协议（ACP）和MCP集成等工具，旨在支持以AI代理为主要用户和客户的新兴经济形态。

---

## 16. CVE-2026-3888：严重Snap漏洞可导致本地权限提升至Root

**原文标题**: CVE-2026-3888: Important Snap Flaw Enables Local Privilege Escalation to Root

**原文链接**: [https://blog.qualys.com/vulnerabilities-threat-research/2026/03/17/cve-2026-3888-important-snap-flaw-enables-local-privilege-escalation-to-root](https://blog.qualys.com/vulnerabilities-threat-research/2026/03/17/cve-2026-3888-important-snap-flaw-enables-local-privilege-escalation-to-root)

**CVE-2026-3888 漏洞摘要**

Qualys 研究人员发现了一个高严重性的本地权限提升漏洞（CVE-2026-3888，CVSS 评分 7.8），影响默认安装的 Ubuntu Desktop 24.04 及更高版本。该漏洞源于两个特权系统组件之间的意外交互：**snap-confine**（为 Snap 应用设置沙盒）和 **systemd-tmpfiles**（用于清理临时文件）。

该漏洞利用过程复杂且具有时间依赖性。攻击者必须等待 `systemd-tmpfiles` 自动删除 `/tmp/.snap` 目录（根据 Ubuntu 版本不同，需等待 10-30 天）。一旦该目录被删除，攻击者即可创建包含恶意内容的同名目录。当 `snap-confine` 随后运行以设置沙盒时，会以 root 权限绑定挂载这些由攻击者控制的文件，从而导致系统被完全控制。

**受影响版本包括：**
*   Ubuntu 24.04 LTS（snapd 版本低于 2.73+ubuntu24.04.2）
*   Ubuntu 25.10（snapd 版本低于 2.73+ubuntu25.10.1）
*   Ubuntu 26.04 LTS Dev（snapd 版本低于 2.74.1+ubuntu26.04.1）
*   上游 snapd 版本低于 2.75

建议各组织立即应用补丁。文章还提及了 Ubuntu 25.10 的 `uutils coreutils` 软件包中一个独立的、处于预发布阶段的竞争条件漏洞，该漏洞已由 Qualys 和 Ubuntu 安全团队在公开发布前发现并缓解。

---

## 17. 我的自制CPU构建记录

**原文标题**: Write up of my homebrew CPU build

**原文链接**: [https://willwarren.com/2026/03/12/building-my-own-cpu-part-3-from-simulation-to-hardware/](https://willwarren.com/2026/03/12/building-my-own-cpu-part-3-from-simulation-to-hardware/)

本文详细介绍了自制8位CPU（WCPU-1）的第三阶段建设，重点聚焦从仿真到实体硬件的过渡过程。作者描述了一段令人谦卑的原型开发历程，其中充满了Logisim仿真中未曾预见的实际挑战。

关键硬件组件包括三块定制PCB：一个存在设计缺陷导致写入速度受限的EEPROM编程器、一块成功的通用寄存器板，以及一块问题频出的控制模块板。后者存在多处错误，包括控制引脚接线错误和36个反向安装的LED灯，需要进行大量返工。

此次构建过程揭示了若干关键的现实问题：
1. 时钟信号噪声问题，通过施密特反相器解决；
2. 寄存器向控制ROM传输时的时序问题，通过添加下降沿触发的缓冲寄存器解决；
3. 控制EEPROM产生的严重干扰，最终追踪到地址线焊点不良；
4. 总线竞争导致的RAM数据损坏，通过将写信号与时钟门控解决。

克服这些障碍后，CPU最终以1MHz频率全速运行，可执行涵盖3种寻址模式的23条指令。作者最后庆祝这台完全可运行、具备图灵完备性的计算机成功问世，并总结了从物理实现调试过程中获得的宝贵经验。

---

## 18. 雪花AI突破沙箱限制并执行恶意软件

**原文标题**: Snowflake AI Escapes Sandbox and Executes Malware

**原文链接**: [https://www.promptarmor.com/resources/snowflake-ai-escapes-sandbox-and-executes-malware](https://www.promptarmor.com/resources/snowflake-ai-escapes-sandbox-and-executes-malware)

Snowflake新发布的Cortex Code CLI（版本1.0.25及更早版本）存在一个严重漏洞，允许AI生成的命令绕过关键安全控制。该漏洞在发布仅数天后被发现，攻击者可通过间接提示注入（例如通过恶意README文件）欺骗AI代理。

攻击链利用了两个关键缺陷。首先，命令验证系统未评估隐藏在进程替换语法（`<()`）中的shell命令，导致这些命令无需人工审批即可执行。其次，攻击者可操纵AI设置内部标志，使这些未经批准的指令在完整系统权限下脱离预设安全沙箱运行。

这导致了远程代码执行，攻击者能在受害者机器上下载并运行恶意软件。关键在于，恶意软件随后可利用受害者缓存的Snowflake身份验证令牌，在其Snowflake实例内执行恶意操作，例如窃取数据、删除数据表或创建后门用户。

Snowflake于2026年2月5日收到通知，经核实后于2月28日在1.0.25版本中发布修复补丁。该补丁会自动应用。此次事件披露凸显了非确定性大语言模型系统面临的新型安全挑战，以及对AI驱动工具进行严格验证的重要性。

---

## 19. 运用微积分进行数论研究

**原文标题**: Using calculus to do number theory

**原文链接**: [https://hidden-phenomena.com/articles/hensels](https://hidden-phenomena.com/articles/hensels)

本文探讨了如何将微积分，特别是牛顿近似法，应用于解决离散数论问题，如多项式同余。核心示例是求解 \(x^3 - 17x^2 + 12x + 16 \equiv 0 \pmod{3000}\)。

利用中国剩余定理，问题被分解为模 \(8\)、\(3\) 和 \(125\) 的简单同余式。模 \(8\) 和 \(3\) 的解可通过观察得出，但模 \(125\) 的求解更为复杂。文章引入了**亨泽尔引理**，它将牛顿法适配到模运算中。

从一个模 \(5\) 的解（此处为 \(x \equiv 2\)）出发，亨泽尔方法逐步将其“提升”到更高次幂模 \(5\) 的解。关键步骤是利用导数 \(f'(x)\) 近似计算 \(f(2 + 5n)\) 模 \(25\)，再模 \(125\)，最终得到解 \(x \equiv 72 \pmod{125}\)。

文章最后将这一过程与更深刻的数学理论联系起来。它解释了求解 \(f(x) \equiv 0 \pmod{p^e}\) 可归结为模 \(p\) 的求解，而理解在哪些素数 \(p\) 下解存在，则引出了关于多项式伽罗瓦群的问题。这直接关联到阿贝尔情形的**类域论**，以及非阿贝尔情形的宏大**朗兰兹纲领**，凸显了微积分、代数和数论之间深刻的桥梁。

---

## 20. 谷歌工程师推出“Sashiko”工具，用于Linux内核的智能代理代码审查。

**原文标题**: Google Engineers Launch "Sashiko" for Agentic AI Code Review of the Linux Kernel

**原文链接**: [https://www.phoronix.com/news/Sashiko-Linux-AI-Code-Review](https://www.phoronix.com/news/Sashiko-Linux-AI-Code-Review)

谷歌工程师推出了名为**"Sashiko"**的开源自主AI系统，旨在审查提交至Linux内核的代码。该系统由谷歌内部开发并已公开，能自动分析所有发送至Linux内核邮件列表的补丁。

据谷歌工程师Roman Gushchin介绍，在针对近期1000个内核问题的测试中，Sashiko成功识别出**约53%的缺陷**，而这些缺陷此前均被人为审查所遗漏。该系统针对**谷歌Gemini 3.1 Pro**模型进行了优化，同时也兼容Claude等其他大型语言模型。

谷歌将承担该项目的运营成本及基础设施费用，项目托管将逐步移交至Linux基金会。相关代码已在GitHub开源，公众可通过**Sashiko.dev**访问其网页界面。

---

## 21. 欧盟股份有限公司：统一的企业法律新体系

**原文标题**: EU Inc.: A new harmonised corporate legal regime

**原文链接**: [https://commission.europa.eu/topics/business-and-industry/doing-business-eu/company-law-and-corporate-governance/eu-inc-new-harmonised-corporate-legal-regime_en](https://commission.europa.eu/topics/business-and-industry/doing-business-eu/company-law-and-corporate-governance/eu-inc-new-harmonised-corporate-legal-regime_en)

欧盟委员会提出了一项名为**欧盟股份有限公司**的新统一公司法律框架，作为提升欧盟竞争力整体战略的一部分。该倡议创建了一个“第28种制度”——一套可选的全欧盟统一规则，与各国现有公司形式并行存在。

**欧盟股份有限公司**专为创新型企业和初创公司设计，旨在提供更快速、更经济且全数字化的公司注册流程（48小时内完成，最高费用100欧元）。它简化了公司全生命周期流程，便利了数字化股份转让与资本操作，并支持现代融资工具。成员国还可允许欧盟股份有限公司进入公共股权市场。

其核心特点包括全数字化破产程序、基于“一次性原则”的自动政务数据共享（配备反欺诈保障措施），以及一项**统一的员工股票期权可选计划**——该计划采用协调一致的递延税收政策，以助力企业吸引人才。

该提案于2025年1月宣布，并在2026年3月的通报文件中详细阐述，涵盖公司、破产、劳动和税法等多个领域，为企业提供了替代27种不同国家制度的统一选择。

---

## 22. 展示 HN：我制作了48个轻量级SVG背景，你可以直接复制/粘贴使用

**原文标题**: Show HN: I built 48 lightweight SVG backgrounds you can copy/paste

**原文链接**: [https://www.svgbackgrounds.com/set/free-svg-backgrounds-and-patterns/](https://www.svgbackgrounds.com/set/free-svg-backgrounds-and-patterns/)

这是**SVGBackgrounds.com**的展示平台，该网站提供48种可定制、轻量级的SVG背景与图案。主要特点包括：

*   **核心服务：** 用户可免费复制、粘贴和下载SVG背景，用于个人或商业项目。
*   **使用条款：** 免费素材需注明创作者Matt的署名，可通过HTML链接、社交媒体分享或捐赠方式实现。
*   **定制功能：** 所有背景均可编辑，用户可在网站上直接修改颜色、尺寸等视觉属性后导出。
*   **高级选项：** 提供付费"全站通行"方案，可免去署名要求并无限制使用高级图形素材。
*   **附加资源：** 网站还提供SVG转CSS工具、形状分隔生成器等工具，以及图标、插画等其他SVG图形资源。

本质上，这是为开发者和设计师提供的资源平台，提供现成可定制、具有灵活授权选项的SVG背景素材。

---

## 23. 庆祝托尼·霍尔对计算机科学的卓越贡献

**原文标题**: Celebrating Tony Hoare's mark on computer science

**原文链接**: [https://bertrandmeyer.com/2026/03/16/celebrating-tony-hoares-mark-on-computer-science/](https://bertrandmeyer.com/2026/03/16/celebrating-tony-hoares-mark-on-computer-science/)

本文纪念于92岁高龄辞世的计算机科学家托尼·霍尔爵士（C.A.R. Hoare）的生平与学术遗产。文章着重展现了他将深刻理论洞见与实践优雅性相结合的卓越贡献。

他最著名的成就是**快速排序算法**——这是他在学习Algol 60语言时设计的精妙而高效的排序算法。除算法外，霍尔奠基性的**公理语义学**（霍尔逻辑）研究建立了用数学方法证明程序正确性的形式化体系，为现代程序验证奠定了理论基础。

霍尔还深刻影响了**编程语言设计**。他为Algol W语言引入了记录（结构体）概念，后来将空引用的设计称为“价值十亿美元的错误”。他在并发计算领域的理论成果（CSP）影响了Occam和Ada等编程语言。

文章特别提到他非传统的学术道路：这位古典学专业的毕业生，在没有博士学位的情况下成为开创性的程序员和学者，兼具独特的科学素养与人文气质。他的职业生涯横跨工业界与学术界，在理论和实践领域都留下了不可磨灭的印记。

---

## 24. 劣质产品设计的乐趣

**原文标题**: The pleasures of poor product design

**原文链接**: [https://www.inconspicuous.info/p/the-pleasures-of-poor-product-design](https://www.inconspicuous.info/p/the-pleasures-of-poor-product-design)

本文介绍了希腊建筑师卡特琳娜·坎普拉尼的“不适之物”项目，该项目通过设计刻意不便的日常用品（如带链条手柄的叉子）来探讨设计的意义。项目始于2011年，以幽默和颠覆性的方式揭示人们常将优良设计视为理所当然的现象。

坎普拉尼在职业生涯受挫后启动该项目，将其视为一种不受实用性约束的创作出口。她已设计50至60件作品，其中一半为数字渲染图，一半为实体模型。尽管通过展览和采访获得广泛关注，坎普拉尼仍拒绝大规模生产这些物品，以避免成为商业经营者并改变其创作过程。

采访中的关键见解显示，该项目意外地让坎普拉尼了解到残障人士面临的设计挑战。她同时指出，自己的创作灵感源于拖延而非安逸。此外，她表示不愿在作品中使用人工智能，视其为创作障碍。最终，该项目仍是她挑战传统设计思维的个人艺术表达形式。

---

## 25. 一款用Rust编写的开源ngrok风格安全隧道服务器

**原文标题**: A ngrok-style secure tunnel server written in Rust and Open Source

**原文链接**: [https://github.com/joaoh82/rustunnel](https://github.com/joaoh82/rustunnel)

**rustunnel** 是一款用 Rust 编写的开源、可自托管的安全隧道服务器，类似于 ngrok。它允许开发者通过安全的公共服务器将本地服务（如 Web 应用或数据库）暴露到互联网。

**主要特性：**
*   **安全隧道：** 通过 TLS 终止创建加密的 WebSocket 连接。
*   **协议支持：** 支持代理 HTTP 和 TCP 流量。
*   **管理与监控：** 包含实时仪表盘、REST API、Prometheus 指标和审计日志。
*   **部署选项：** 可自托管，也可通过托管服务 `edge.rustunnel.com` 使用。

**对于用户：** 提供托管服务（需要手动获取令牌）。客户端可通过 Homebrew 安装，并通过设置向导或 CLI 标志快速创建隧道（例如 `rustunnel http 3000`）。

**对于自托管：** 项目提供在 Ubuntu（使用 systemd）和通过 Docker 进行生产部署的完整指南。需要设置 Linux 服务器、获取 TLS 证书（例如来自 Let's Encrypt）并配置通配符 DNS 记录。

**架构：** 服务器监听多个端口以处理公共流量（HTTP/HTTPS）、客户端控制平面连接、仪表盘和指标。客户端在本地运行，将流量多路复用到公共服务器。

**开发：** 项目包含完整的本地开发设置，包括测试、git 钩子以及构建和运行服务器与客户端组件的详细说明。

---

## 26. Show HN：使用写时复制内存分叉实现亚毫秒级虚拟机沙箱

**原文标题**: Show HN: Sub-millisecond VM sandboxes using CoW memory forking

**原文链接**: [https://github.com/adammiribyan/zeroboot](https://github.com/adammiribyan/zeroboot)

本文介绍了Zeroboot系统，这是一种用于创建亚毫秒级虚拟机（VM）沙箱的技术，主要面向AI智能体。其核心创新在于通过从预启动的Firecracker VM快照进行写时复制（CoW）内存分叉，在1毫秒内生成全新的隔离沙箱。

基准测试显示，相较于E2B和microsandbox等替代方案，该系统具有显著优势：中位启动延迟为0.79毫秒，每个沙箱内存开销仅约265KB，并能在815毫秒内处理1000个并发分叉。每个沙箱都是完整的KVM虚拟机，确保硬件级内存隔离。

工作流程包括一次性模板创建（包含预加载运行时的VM快照）和近实时分叉两个阶段：分叉过程将快照内存映射为CoW并恢复CPU状态。该项目提供Python和TypeScript SDK，目前是基于Apache-2.0许可证的可运行原型。

---

## 27. 搞定事情：一个元提示、上下文工程和规范驱动的开发系统

**原文标题**: Get Shit Done: A meta-prompting, context engineering and spec-driven dev system

**原文链接**: [https://github.com/gsd-build/get-shit-done](https://github.com/gsd-build/get-shit-done)

**搞定事情（GSD）** 是一个元提示与上下文工程系统，旨在让像Claude Code这样的AI编程助手更可靠、更高效。它通过将开发过程构建成清晰、自动化的工作流，解决了“上下文腐化”——即AI上下文窗口填满时发生的质量下降问题。

该系统通过六步循环引导用户从想法到交付代码：
1.  **初始化** (`/gsd:new-project`)：定义项目愿景、范围和路线图。
2.  **讨论** (`/gsd:discuss-phase`)：记录具体的实施偏好。
3.  **规划** (`/gsd:plan-phase`)：研究并创建经过验证的原子化任务计划。
4.  **执行** (`/gsd:execute-phase`)：并行执行计划波次，每个任务都获得全新的AI上下文和独立的git提交。
5.  **验证** (`/gsd:verify-work`)：进行用户验收测试，并自动生成问题修复方案。
6.  **重复/交付**：循环执行各阶段直至里程碑完成。

GSD通过使用专门的研究、规划和执行子代理来运作，所有代理由中央协调器统一调度。这确保了主会话的简洁与高效。系统将所有计划格式化为结构化XML以保证精确性，并内置验证步骤。针对简单、临时任务，还提供**快速模式** (`/gsd:quick`)。

该工具专为独立开发者和小型团队设计，他们只需描述构建需求，AI便能准确执行，无需不必要的复杂性或“企业级繁琐流程”。

---

## 28. 恢复第一段计算机音乐录音（2018）

**原文标题**: Restoring the first recording of computer music (2018)

**原文链接**: [https://www.bl.uk/stories/blogs/posts/restoring-the-first-recording-of-computer-music](https://www.bl.uk/stories/blogs/posts/restoring-the-first-recording-of-computer-music)

这篇2018年的文章详述了1951年在曼彻斯特大学诞生的、已知最早的计算机生成音乐录音的发现与修复过程。

这段录音收录了由费兰蒂马克一号计算机——世界上首批商用通用计算机之一——生成的《天佑吾王》《黑绵羊咩咩叫》和《兴致盎然》的原始旋律。先驱计算机科学家克里斯托弗·斯特雷奇通过算法编程，指挥计算机内置扬声器奏出不同音符。

这段由英国广播公司录制在12英寸醋酸纤维唱片上的原始录音，曾被认为遗失数十年。2016年，新西兰研究人员在已故计算机科学家艾伦·图灵的档案中发现了它，但录音严重失真，播放速度也有偏差。借助现代音频修复技术，他们细致消除了失真、校正了音高，最终让这段历史性演奏的原声得以重现。

修复工作确认这段1951年的录音是已知最早的计算机演奏音乐实物，早于其他知名实验。文章将这项成就誉为计算史与音乐史上的里程碑，既展现了机器早期的创作潜力，也守护了关键技术遗产。

---

## 29. Ndea（YC W26）正在招聘符号强化学习搜索引导负责人

**原文标题**: Ndea (YC W26) is hiring a symbolic RL search guidance lead

**原文链接**: [https://ndea.com/jobs/search-guidance](https://ndea.com/jobs/search-guidance)

Ndea（YC W26）正在招聘一名远程全职技术员工，专注于搜索引导以构建AGI系统。该职位涉及实践性研究与工程，旨在训练模型以提升结构化神经符号搜索的效率和可靠性。

主要职责包括设计、实现和验证新的代码方法。理想的候选人应具备构建强化学习或搜索驱动学习系统的丰富经验，拥有强化学习/规划/搜索领域的研究背景，并具备将想法转化为可行实施方案的能力。对符号系统（逻辑、形式化方法、程序合成）的兴趣至关重要。

公司提供有意义的股权、有竞争力的薪资、福利以及充足的计算资源预算，作为小型高才远程团队的一部分。

申请者请将个人所在地、一项令人印象深刻的作品/出版物（最好与强化学习/搜索相关）、相关符号系统经验、个人资料链接及可选简历发送至 **future@ndea.com**。此职位不适合仅专注于LLM RLHF或世界模型扩展的人员。

成功推荐候选人入职可获得10,000美元推荐奖金。

---

## 30. Python 3.15的JIT现已重回正轨

**原文标题**: Python 3.15's JIT is now back on track

**原文链接**: [https://fidget-spinner.github.io/posts/jit-on-track.html](https://fidget-spinner.github.io/posts/jit-on-track.html)

本文宣布，Python 3.15 的 CPython JIT（即时编译器）已提前达成其初期性能目标。在 macOS AArch64 平台上，JIT 比解释器快 11-12%；在 x86_64 Linux 平台上，其性能提升达 5-6%，部分基准测试甚至显示超过 100% 的加速效果。

作者指出，该项目在因资金中断及 3.13/3.14 版本初期性能不佳而面临不确定性后，其转机主要归功于以下三个因素：

1.  **社区主导的开发模式：** 在主要赞助方退出后，项目转为由社区主导。通过将复杂的 JIT 工作拆解为小而可控的任务，团队成功吸引了新的贡献者，增加了活跃维护者数量，降低了项目风险。

2.  **关键技术决策：** 两项重大改进推动了性能提升。首先，新的“双重分派”追踪记录系统显著增加了 JIT 可优化的代码量；其次，消除冗余的引用计数操作移除了编译代码中的高开销分支。

3.  **强大的团队：** 作者认为，核心团队的专业技术能力以及由志愿者维护的稳健性能追踪基础设施，是实现快速进展和及时反馈的关键。

结论强调，该项目的复苏不仅是一项技术成就，更是有效的社区建设、团队协作以及恰逢其时地实施正确解决方案的共同结果。

---

