# Hacker News 热门文章摘要 (2026-03-05)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. GPT-5.4

**原文标题**: GPT-5.4

**原文链接**: [https://openai.com/index/introducing-gpt-5-4/](https://openai.com/index/introducing-gpt-5-4/)

无法访问文章链接。

---

## 2. 维基百科因大量管理员账户遭入侵进入只读模式

**原文标题**: Wikipedia in read-only mode following mass admin account compromise

**原文链接**: [https://www.wikimediastatus.net](https://www.wikimediastatus.net)

2026年3月5日，维基百科背后的组织维基媒体因一起重大安全事件（涉及大量管理员账户遭入侵）将所有维基站点切换为只读模式。该问题首次于UTC时间15:36被发现，随即启动调查。

至UTC时间16:11，问题得到确认并开始实施修复。维基站点于UTC时间17:09恢复读写模式，但部分编辑功能为谨慎起见仍暂时禁用。UTC时间17:36的状态更新显示修复措施已到位并处于监控中，事件最终于UTC时间18:36完全解决。

此次事件发生前，平台已连续数周出现数据库故障与性能下降等技术问题，凸显出该阶段平台运营面临的多重挑战。应对过程中，平台通过禁用关键编辑功能以控制安全漏洞影响，同时对遭入侵的管理员账户进行安全加固。

---

## 3. 品牌时代

**原文标题**: The Brand Age

**原文链接**: [https://paulgraham.com/brandage.html](https://paulgraham.com/brandage.html)

本文探讨了瑞士制表业如何在1970年代的“石英危机”后，从精密工程行业转型为奢侈品品牌产业。面对技术更优、价格更低的日本石英技术以及货币重估，该行业的销量大幅下滑。

少数公司如百达翡丽和爱彼通过将重心从性能（精准度和纤薄度）转向品牌声望得以生存。它们开始设计独特表壳，例如百达翡丽的Golden Ellipse（1968年）和爱彼的皇家橡树（1972年），使品牌具有视觉辨识度。同时，广告宣传不再强调技术优势，而是突出 exclusivity 和高昂价格。

文章认为，这一转变造成了品牌营销与优秀设计之间的根本冲突。在“黄金时代”（1945-1970年），制表追求的是计时功能的最优极简设计，而品牌营销则需要独特性，往往以牺牲功能性为代价。幸存下来的制表商认识到，在实质性差异消失的时代，其价值不在于工程技术，而在于销售身份象征——这一高利润模式定义了现代奢侈腕表行业。

---

## 4. Linux硬件热插拔事件，那些血淋淋的细节

**原文标题**: Hardware hotplug events on Linux, the gory details

**原文链接**: [https://arcanenibble.github.io/hardware-hotplug-events-on-linux-the-gory-details.html](https://arcanenibble.github.io/hardware-hotplug-events-on-linux-the-gory-details.html)

本文探讨了Linux如何处理硬件热插拔事件，重点分析两种方法：通过netlink的直接内核通知以及udev重广播事件。作者深入研究了底层机制，因为udev现已集成到systemd中且相关文档稀缺。

内核使用`NETLINK_KOBJECT_UEVENT`协议向用户空间发送原始事件消息（一系列以空字符结尾的字符串，包含操作和设备详情），特别是发送到多播组1（`MONITOR_GROUP_KERNEL`）。但直接监听这些消息可能导致竞态条件，因为udev可能仍在处理设备（例如设置权限）。

udev在处理事件后，会将其重广播到多播组2（`MONITOR_GROUP_UDEV`）。这些消息在属性字符串前附加了二进制头部（`struct udev_packet_header`）。头部包含魔数（`0xfeedcafe`）、偏移量和哈希值（使用MurmurHash2计算`SUBSYSTEM`和`DEVTYPE`的哈希，并为标签添加布隆过滤器），以便接收方（如libudev）进行高效过滤。

文章提供了示例C代码，演示如何监听内核和udev的netlink套接字、解析消息并验证哈希值。文中强调，虽然libusb建议使用udev后端以避免竞态，但理解底层的netlink通信机制可以实现无需外部库的直接事件监控。

---

## 5. 五角大楼正式将Anthropic供应链风险列为关注对象

**原文标题**: Pentagon Formally Labels Anthropic Supply-Chain Risk

**原文链接**: [https://www.wsj.com/politics/national-security/pentagon-formally-labels-anthropic-supply-chain-risk-escalating-conflict-ebdf0523](https://www.wsj.com/politics/national-security/pentagon-formally-labels-anthropic-supply-chain-risk-escalating-conflict-ebdf0523)

**《五角大楼正式将Anthropic列为供应链风险》摘要**

美国国防部正式将人工智能公司Anthropic指定为“运营关键供应商”，这一标签专门授予那些一旦出现故障或中断将严重影响国家安全的企业。此举使Claude AI助手的创造者Anthropic获得了与主要国防承包商相似的地位，标志着其技术被认可为军事行动的关键组成部分。

此项认定源于五角大楼对人工智能供应链高度集中于少数科技巨头的担忧。其中一项主要风险是Anthropic在云计算方面对亚马逊云服务（AWS）的深度依赖。国防部担心，若AWS遭破坏或其服务中断，可能严重削弱Anthropic为军方提供和维护其AI模型的能力。

此次正式标签是五角大楼为保障技术供应链安全并推动其多元化采取的重大升级措施。它使Anthropic在获得政府支持和资源（如网络安全援助、零部件优先供应）方面享有优先权，但同时也意味着公司将面临更严格的政府审查，并须满足更高的安全与运营韧性标准。

这一行动凸显出国家安全机构日益关注人工智能生态系统的基础层——如云基础设施和先进芯片——将其视为潜在的单一故障点。它标志着军方不再仅仅将AI视为工具，而是将构建AI的公司视为关键基础设施合作伙伴。

---

## 6. 让我们动起来

**原文标题**: Let's Get Physical

**原文链接**: [https://m4iler.cloud/posts/lets-get-physical/](https://m4iler.cloud/posts/lets-get-physical/)

本文详述了一次为期一周的实体渗透测试，作者与同事成功潜入一家公司的安保建筑，以评估其安全漏洞。

他们的目标是模拟攻击者，测试闭路电视监控和警卫响应等防御措施。尽管预期会立即被发现，他们却轻松混入人群，尾随进入大楼，在办公室内自由走动未受阻拦，甚至公然移走了一个装满敏感文件的上锁碎纸桶。他们进入了一位总监未上锁的办公室，并差点通过社会工程学手段说服清洁工进入服务器机房。

关键发现突显了普遍存在的安全意识缺失：员工从未质疑无证件的陌生人，警卫对监控中明显的可疑活动无动于衷，而劣质门锁和常开的门也削弱了实体安保。唯一有效的防御来自清洁人员，他们严格核对了授权。

测试结论指出，虽然当前安保措施严重不足，但通过管理层支持、加强培训和流程改进，这些问题均可解决。此次经历被描述为一次极为成功的测试，暴露了关键的实体安全漏洞。

---

## 7. GitHub问题标题导致四千台开发者电脑被入侵

**原文标题**: A GitHub Issue Title Compromised 4k Developer Machines

**原文链接**: [https://grith.ai/blog/clinejection-when-your-ai-tool-installs-another](https://grith.ai/blog/clinejection-when-your-ai-tool-installs-another)

“Clinejection”攻击通过利用AI驱动的GitHub问题分类机器人，成功入侵了4,000台开发者机器。攻击者将恶意指令注入问题标题，机器人执行该指令后引发了一系列漏洞：缓存污染、凭证窃取，最终导致未经授权发布了一个被篡改的npm包（`cline@2.3.0`）。该版本通过`postinstall`钩子静默安装了一个独立的AI代理OpenClaw，并获取了完整的系统访问权限。

攻击的核心机制是提示注入，使得不受信任的自然语言能够触发具有特权的CI/CD操作。尽管此前已有漏洞披露，但凭证轮换机制的缺陷导致npm令牌暴露，从而实现了恶意发布。

此次事件突显了一种新的供应链威胁：一个AI工具被攻破后，可在未经用户同意的情况下将另一个独立代理植入用户系统。传统的安全控制措施（如`npm audit`和代码审查）未能检测到该攻击，因为有效载荷涉及合法软件包且代码改动极小。

作为应对措施，Cline已迁移至更安全的实践方案，例如使用OIDC来源证明进行发布，以防止令牌滥用。该事件强调了评估CI/CD中AI代理行为的紧迫性，因为这些代理在处理不受信任的输入时拥有高级别访问权限，从而形成了巨大的攻击面。

---

## 8. 好的软件懂得适可而止。

**原文标题**: Good software knows when to stop

**原文链接**: [https://ogirardot.writizzy.com/p/good-software-knows-when-to-stop](https://ogirardot.writizzy.com/p/good-software-knows-when-to-stop)

本文通过一个虚构场景——简单的`ls`命令被过度复杂的AI替代品取代——来论证优秀软件应当理解自身使命，并懂得何时停止迭代。

作者警示了当前为成熟工具强行添加AI与冗余功能的趋势，这种趋势可能损害工具的核心效用。文章主张聚焦而克制的软件设计理念，并提炼了《重来》与《实现》两本书的核心原则：拥抱限制条件、忽略表面功能需求、尽早发布、拒绝非必要增补、解决自身实际问题。

核心观点在于：为特定问题提供可靠的标准解决方案，比不断标榜“最新潮流”更具持久价值。当众多工具匆忙将“AI”加入名称时，本文提醒我们：激进的改变未必意味着进步。

---

## 9. Show HN: Jido 2.0，Elixir 智能体框架

**原文标题**: Show HN: Jido 2.0, Elixir Agent Framework

**原文链接**: [https://jido.run/blog/jido-2-0-is-here](https://jido.run/blog/jido-2-0-is-here)

Jido 2.0 是 Elixir 人工智能代理框架的重大版本更新，经过 18 个月的开发后完全重构。创建者认为 BEAM 运行时（Elixir/Erlang）特别适合构建健壮、并发的代理系统，相比 TypeScript 或 Python 的单线程方案更具优势。

其核心理念是“纯函数式代理架构”，代理被设计为简单的数据结构。所有逻辑通过单一的 `cmd/2` 函数流转，生成更新后的代理和副作用“指令”，使代理具备高度可测试性和可调试性。关键组件包括：
*   **`Jido.AgentServer`**：用于托管代理的受监督 GenServer 运行时。
*   **可插拔策略**：如 `Direct` 或 `FSM`，用于控制动作执行。
*   **`jido_action` 与 `jido_signal`**：分别用于定义代理能力的独立包和标准化消息系统。

**Jido AI** 是添加大语言模型智能的中间层，提供六种推理策略（如 ReAct），并基于支持多供应商的 Elixir 大语言模型客户端 **ReqLLM** 构建。该框架注重生态发展，包含与 **Ash 框架**（`ash_jido`）的一流集成，以及用于浏览器自动化、记忆存储等功能的社区扩展包。

本次版本聚焦于简化 API、减少冗余代码，并充分发挥 Elixir 在构建持久化、高并发人工智能代理方面的优势。

---

## 10. 利用JDK向量API优化推荐系统

**原文标题**: Optimizing Recommendation Systems with JDK's Vector API

**原文链接**: [https://netflixtechblog.com/optimizing-recommendation-systems-with-jdks-vector-api-30d2830401ec](https://netflixtechblog.com/optimizing-recommendation-systems-with-jdks-vector-api-30d2830401ec)

根据文章内容，以下是简明摘要：

Netflix工程团队探索使用Java向量API（JEP 338）来优化其实时推荐系统的性能。这些系统严重依赖机器学习推理，涉及大量计算密集的线性代数运算，如点积和矩阵乘法。

核心挑战在于：虽然Java是他们的主要生态语言，但这些关键计算常受限于标量运算，无法利用现代CPU的单指令多数据（SIMD）能力。向量API提供了一种与平台无关的方式来表达数据并行计算，即时（JIT）编译器可将其编译为高效的SIMD指令。

文章详述了他们的实验过程：将排名算法中的关键“特征组合”操作确定为目标，使用向量API重写该操作，并进行严格基准测试。结果显著，优化后的函数性能提升了**1.4至2.0倍**，同时降低了CPU使用率。这在大规模应用中转化为可观的延迟减少和成本节约。

关键结论是：向量API成功弥合了Java应用在高性能计算领域的性能差距。它使开发者能够编写可移植、表达性强的代码，在Java生态内实现接近原生的数值计算速度，无需转向C++等底层语言。这项优化提升了推荐引擎的效率，直接改善了服务响应能力。

---

## 11. 用于从脑数据重建视觉感知的数据集

**原文标题**: Datasets for Reconstructing Visual Perception from Brain Data

**原文链接**: [https://github.com/seelikat/neuro-visual-reconstruction-dataset-index](https://github.com/seelikat/neuro-visual-reconstruction-dataset-index)

本文是一份面向AI/ML研究者的指南，介绍了适用于从人类fMRI数据重建视觉感知的开放神经影像数据集。文章明确了几个关键区别：**解码**（从封闭集合中对刺激进行分类）、**识别**（从有限集合中选择）以及真正的**重建**（从开放集合生成新刺激），其中重建最具挑战性。

指南概述了评估数据集的关键标准，强调**训练-测试独立性**（防止模型仅对已知类别进行分类）、**刺激多样性**、**视野覆盖范围**以及**信号质量**（可通过刺激重复提升）。文章警告了常见误区，如预处理中的空间平滑可能破坏细粒度数据。

指南索引了关键的**图像刺激数据集**，包括：
*   **vim-1**：一个基础的小规模数据集，包含自然灰度图像。
*   **通用物体解码**：专为重建设计，训练集与测试集间具有严格的类别分离。
*   **自然场景数据集（NSD）**：一个大规模、高分辨率的7T fMRI数据集，但其标准划分存在语义重叠，可能夸大性能表现。
*   **THINGS-fMRI**：专注于物体感知，涵盖多样类别。

文章还简要提及了**视频刺激数据集**（如vim-2），并强调许多所谓的“重建”研究实际上进行的是高级解码，而真正泛化到新视觉体验仍是一个重大挑战。

---

## 12. 远程解锁加密硬盘

**原文标题**: Remotely unlocking an encrypted hard disk

**原文链接**: [https://jyn.dev/remotely-unlocking-an-encrypted-hard-disk/](https://jyn.dev/remotely-unlocking-an-encrypted-hard-disk/)

本文详细介绍了一种通过将网络和远程访问工具直接嵌入initramfs（早期启动阶段使用的基于RAM的初始文件系统）来远程解锁加密Linux硬盘的方法。

作者旨在解决无头家庭服务器（运行Arch Linux且具有加密启动分区）在断电后因需要物理输入密码解密磁盘而无法访问的问题。解决方案涉及修改initramfs以包含：

1.  **网络功能：** 使用`sd-network`启用以太网连接。
2.  **Tailscale：** 安装`mkinitcpio-tailscale`包，将机器的initramfs作为独立标记设备加入Tailscale VPN，从而允许无论家庭IP地址如何都能进行远程访问。
3.  **安全外壳访问：** 在initramfs中配置Dropbear SSH服务器（`sd-dropbear`），使其接受连接但仅运行`systemd-tty-ask-password-agent`命令，该命令通过SSH转发解密提示。

实施的关键安全措施包括：
*   initramfs Tailscale节点使用具有限制性访问控制列表（ACL）的**标记**（例如`tag:initrd`），防止其向网络上的其他设备发起连接。
*   SSH服务器被锁定为**仅执行解锁命令**，而非通用shell。
*   该设备的Tailscale认证密钥设置为永不过期。

配置必要的钩子、网络文件和SSH密钥后，initramfs被重新构建。重启后，系统在解密前暂停，允许用户通过Tailscale SSH进入initramfs，远程输入加密密码，并完成启动过程。

---

## 13. 政府利用定向广告追踪你的位置

**原文标题**: The Government Uses Targeted Advertising to Track Your Location

**原文链接**: [https://www.eff.org/deeplinks/2026/03/targeted-advertising-gives-your-location-government-just-ask-cbp](https://www.eff.org/deeplinks/2026/03/targeted-advertising-gives-your-location-government-just-ask-cbp)

本文揭露，美国政府特别是海关与边境保护局（CBP）正在利用在线广告生态系统中的数据，在没有搜查令的情况下追踪人们的位置。

其核心机制是**实时竞价（RTB）**——即在网站和应用程序上拍卖广告位的系统。在这些竞价过程中，用户的敏感数据（包括精确的GPS坐标和唯一的广告标识符）被广播给数千家公司。数据经纪人收集这些“竞价流数据”，并出售给CBP和ICE等执法机构，从而绕过了获取搜查令的必要性。

文章概述了这种做法的危险性，指出精确的位置数据可能暴露个人生活的私密细节。同时，文章也提供了个人防护措施，例如禁用移动广告标识符和限制应用程序的位置权限。

最终，文章主张需要进行系统性改革。它呼吁科技公司停止在RTB中使用精确位置数据，并默认禁用广告标识符。文章还敦促立法者通过强有力的联邦隐私法，并堵住允许政府购买本应需要搜查令才能获取数据的“数据经纪人漏洞”。

---

## 14. 展示 HN：PageAgent，一个驻留在您网页应用内的图形界面代理

**原文标题**: Show HN: PageAgent, A GUI agent that lives inside your web app

**原文链接**: [https://alibaba.github.io/page-agent/](https://alibaba.github.io/page-agent/)

**PageAgent**是一款设计用于直接在网页应用界面内操作的GUI代理。它并非作为独立工具或浏览器扩展运行，而是直接集成在网页内部，使其能够实时与用户界面交互并自动化任务。

其核心理念在于PageAgent"生活"在应用内部，使其能够像人类用户一样理解和操作GUI元素——如按钮、表单和菜单。这实现了复杂工作流程自动化、用户引导、测试或提供交互式指导，无需依赖外部软件或深度API集成。

"Show HN"标题表明这是一个与Hacker News社区分享以获取反馈的新项目。内容中简短的"Loading..."提示表明该帖子可能是占位符，或是通过页面内的交互式加载界面来演示代理功能。

总之，PageAgent通过将智能代理直接嵌入网页应用前端来观察和操作图形用户界面，为网页自动化提供了一种创新方法。

---

## 15. Nvidia PersonaPlex 7B在Apple Silicon上的应用：基于Swift的全双工语音转语音技术

**原文标题**: Nvidia PersonaPlex 7B on Apple Silicon: Full-Duplex Speech-to-Speech in Swift

**原文链接**: [https://blog.ivan.digital/nvidia-personaplex-7b-on-apple-silicon-full-duplex-speech-to-speech-in-native-swift-with-mlx-0aa5276f2e23](https://blog.ivan.digital/nvidia-personaplex-7b-on-apple-silicon-full-duplex-speech-to-speech-in-native-swift-with-mlx-0aa5276f2e23)

**《在Apple Silicon上运行Nvidia PersonaPlex 7B：基于Swift的全双工语音对话实现》摘要**

本文详述了一个技术项目，成功利用原生Swift和**MLX框架**在Apple Silicon Mac上运行了英伟达的**PersonaPlex 7B**语音到语音AI模型。作者的目标是实现与AI的**全双工实时对话**，双方可以自然交谈和打断，类似于人类通话。

主要成果包括：
*   **平台迁移：** 该模型原为英伟达GPU设计，现通过MLX框架转换为可在苹果神经引擎上高效运行，避免依赖云端API或Python。
*   **实时处理流程：** 作者构建了一个**原生Swift应用**，集成了多个组件：本地语音转文本模型（Whisper）、转换为MLX格式的PersonaPlex 7B语言模型、文本转语音引擎以及自定义音频输入输出处理。
*   **全双工交互：** 核心技术挑战是管理重叠的音频流。解决方案采用了一个精密的状态机来控制对话流程，使AI能在说话时同时聆听，并允许自然打断。
*   **性能表现：** 系统完全在M2 Max MacBook Pro上本地运行，PersonaPlex模型推理速度达到约每秒45个词元。

该项目展示了Apple Silicon在本地运行先进的实时多模态AI方面日益增强的能力。它为创建原生、响应迅速且注重隐私的语音AI助手提供了蓝图，所有源代码均已公开供参考。

---

## 16. Greg Kroah-Hartman延长关键Linux LTS内核支持周期

**原文标题**: Greg Kroah-Hartman Stretches Support Periods for Key Linux LTS Kernels

**原文链接**: [https://fossforce.com/2026/03/greg-kroah-hartman-stretches-support-periods-for-key-linux-lts-kernels/](https://fossforce.com/2026/03/greg-kroah-hartman-stretches-support-periods-for-key-linux-lts-kernels/)

Linux内核维护者Greg Kroah-Hartman在与主要企业用户及其他维护者讨论后，宣布延长多个关键长期支持（LTS）内核的支持周期。此举反映出一种趋势：官方内核支持正更多基于企业实际采用情况而非僵化的时间表进行调整。

虽然部分主要LTS分支（5.10、5.15、6.6）维持原定的终止支持日期，但两个较新内核获得了显著延长：6.12 LTS内核现支持至2028年12月（从2026年延长），6.18 LTS内核支持至2028年12月（从2027年延长）。

文章指出此类延期并非首例，企业级Linux发行版如红帽企业Linux、SUSE Linux企业服务器和Ubuntu早已提供远超标准内核窗口的支持周期——通常长达十年甚至更久。此外，即使在官方支持结束后，企业仍常通过第三方安全维护服务继续运行旧系统，这凸显出市场对延长软件生命周期的实际需求。

---

## 17. Google Workspace 命令行界面

**原文标题**: Google Workspace CLI

**原文链接**: [https://github.com/googleworkspace/cli](https://github.com/googleworkspace/cli)

**Google Workspace CLI (gws)** 是一款命令行工具，提供对所有 Google Workspace API（Drive、Gmail、Calendar 等）的统一动态访问。它通过 Google 的 Discovery Service 自动构建命令集，确保始终与最新 API 端点保持同步。

主要特性包括：
*   **人性化设计：** 为所有资源提供 `--help` 帮助、`--dry-run` 预览执行和自动分页功能。
*   **AI 智能体就绪：** 输出结构化 JSON，并包含 40 多种预构建的智能体技能，便于与大型语言模型集成。
*   **灵活的身份验证：** 支持多种验证方式，包括交互式 OAuth 登录、服务账户和现有令牌，并提供加密的凭据存储。
*   **MCP 服务器：** 可作为模型上下文协议服务器运行，将 Workspace API 作为工具暴露给 Claude Desktop 等客户端。
*   **高级操作：** 支持多部分文件上传、分页处理，并集成 Google Cloud Model Armor 以进行响应净化。

该工具专为开发者和 AI 工作流设计，无需手动编写 `curl` 命令或自定义工具即可简化 API 交互。它正处于积极开发阶段，并非 Google 官方支持的产品。

---

## 18. 闯入监狱的男人

**原文标题**: A man who broke into jail

**原文链接**: [https://www.newyorker.com/magazine/2026/03/09/alexander-friedmann-profile-prison-reform](https://www.newyorker.com/magazine/2026/03/09/alexander-friedmann-profile-prison-reform)

2019年12月30日，纳什维尔新建未启用的市中心拘留中心官员发现一串被篡改的钥匙环，缺失两把钥匙，其中包括一把万能钥匙。监控录像显示，一名身份不明的工人数日前盗走并替换了这串钥匙。

2020年1月4日，该男子返回现场时被拘留。其身份确认为亚历克斯·弗里德曼——一位备受全国尊重的监狱改革活动家，也曾是服刑人员。警方在其身上搜出盗窃工具和手绘的监狱结构图。他被指控企图入室盗窃和破坏证据。

此事给警长达伦·霍尔带来巨大冲击。霍尔曾与弗里德曼在监狱改革方面合作，并将职业生涯押注在这座体现人道关怀的新设施上。弗里德曼的被捕构成了尖锐的矛盾：一位受人尊敬的文明监禁倡导者，竟被指控对象征进步成果的机构策划严重犯罪。其行为动机始终成谜，让盟友和官员们对他看似重蹈犯罪覆辙的举动深感困惑。

---

## 19. 快速服务器

**原文标题**: Fast-Servers

**原文链接**: [https://geocar.sdf1.org/fast-servers.html](https://geocar.sdf1.org/fast-servers.html)

本文批评了传统的基于事件循环的网络服务器设计，认为其效率低下，并提出了一种使用现代系统调用（如`epoll`和`kqueue`）的高性能替代方案。作者指出，常见的封装库（如libevent）延续了陈旧且低效的模式。

推荐的设计围绕两个核心原则展开：
1.  **每个CPU核心对应一个线程**，每个线程拥有自己的`epoll`/`kqueue`文件描述符，并绑定到特定核心以实现最优缓存局部性。
2.  **基于状态的线程交接**：不同线程处理不同的连接状态（例如接受连接、读取请求）。客户端的文件描述符在状态转换时，会显式地在不同线程的`epoll`/`kqueue`实例间传递。

文章提供了具体的实现细节，包括：
*   根据CPU核心数创建线程池。
*   在Linux和macOS上设置线程亲和性。
*   配置监听套接字，包括设置高文件描述符限制、禁用延迟关闭（`SO_LINGER`）和延迟接受（Linux上的`TCP_DEFER_ACCEPT`）。
*   一个专用的非阻塞接受循环，通过简单的轮询调度器将新连接分配给工作线程。
*   工作线程等待I/O事件并处理请求，使用超时设置（`SO_RCVTIMEO`）而非应用级定时器。

作者声称，该设计消除了线程内部的复杂决策点，采用简单的阻塞I/O调用，并通过最大化并行性和最小化上下文切换，能够在现代硬件上实现每秒超过10万次请求的处理能力。

---

## 20. 全球首次实现飞机与地球静止轨道卫星间的千兆比特激光链路。

**原文标题**: World-first gigabit laser link between aircraft and geostationary satellite

**原文链接**: [https://www.esa.int/Applications/Connectivity_and_Secure_Communications/World-first_gigabit-per-second_laser_link_between_aircraft_and_geostationary_satellite](https://www.esa.int/Applications/Connectivity_and_Secure_Communications/World-first_gigabit-per-second_laser_link_between_aircraft_and_geostationary_satellite)

欧洲航天局（ESA）、空中客车公司、荷兰应用科学研究组织（TNO）与TESAT公司首次在全球范围内成功实现了飞机与地球静止轨道卫星之间的高速激光通信链路。在法国进行的试飞中，空中客车的UltraAir激光终端与3.6万公里外的Alphasat卫星建立了无差错连接，以每秒2.6千兆比特的速率稳定传输数据达数分钟。

这一突破性进展凸显了激光通信作为拥挤无线电频率的强大替代方案。激光束具有更高的安全性、更强的数据传输能力，且更不易受干扰。由于要在克服大气扰动的同时与高速飞行的飞机保持精确连接，这项技术成就意义重大，攻克了主要技术难题。

该成果在欧洲航天局“安全激光通信技术”（ScyLight）和“高级研究电信系统”（ARTES）计划的支持下，为未来对安全高带宽连接至关重要的应用铺平了道路。这包括为飞机、船舶以及偏远地区的交通工具提供可靠的高速互联网服务。欧洲航天局、荷兰应用科学研究组织和空中客车公司的官员强调，这一里程碑巩固了欧洲在安全通信领域的战略自主权，并为未来数十年满足国防和商业连接需求开启了新时代。

---

## 21. AI辅助重写下的许可证更新

**原文标题**: Relicensing with AI-Assisted Rewrite

**原文链接**: [https://tuananh.net/2026/03/05/relicensing-with-ai-assisted-rewrite/](https://tuananh.net/2026/03/05/relicensing-with-ai-assisted-rewrite/)

本文探讨了Python库`chardet`从LGPL协议转为MIT协议引发的争议，该转换通过AI工具（Claude Code）重写代码库实现。原作者认为此举违反LGPL协议，因为AI生成的代码属于原作品的衍生作品，绕过了法律要求的“净室流程”——即必须与源代码完全分离的正当程序。

这一情况突显了美国最高法院近期行动所揭示的重大法律悖论。最高法院拒绝受理上诉，维持了“AI生成内容因缺乏人类作者身份而不受著作权保护”的裁决。这使得`chardet`维护者陷入两难：若AI代码属于衍生作品，则必须保持LGPL协议；若被视为AI生成的新作品，则可能无法获得著作权保护而进入公有领域，导致其MIT许可失去法律效力。

文章指出，若AI辅助重写成为公认的协议转换手段，将可能彻底架空GPL和LGPL等著佐权许可，使任何人得以规避其限制。`chardet`事件被视为检验这些新兴法律与伦理边界的关键现实案例。

---

## 22. 比较用于A/B测试分析的Python包（附代码示例）

**原文标题**: Comparing Python packages for A/B test analysis (with code examples)

**原文链接**: [https://e10v.me/python-packages-for-ab-test-analysis/](https://e10v.me/python-packages-for-ab-test-analysis/)

本文比较了四个用于A/B测试分析的Python包——tea-tasting、Pingouin、statsmodels和SciPy——基于它们在常见实验工作流程中的便捷性和适用性。

**tea-tasting**专为A/B测试构建，提供最简化的工作流程。它提供高级指标类（如均值、比例、均值比）和`Experiment` API，可直接输出关键结果，如带置信区间的相对效应量、p值，并支持CUPED、功效分析和多重检验校正，代码量极少。

**Pingouin**在pandas工作流中对标准统计检验（如t检验和卡方检验）用户友好，但缺乏A/B测试特定功能。它需要手动处理比率指标、相对效应置信区间和CUPED。

**statsmodels**为假设检验和功效分析提供稳健的低层统计构建模块。虽然灵活，但需要分析人员手动组装A/B工作流程，因为它缺乏统一的实验式输出接口。

**SciPy**提供基础统计函数（如t检验、卡方检验），但对A/B测试最不便捷。它需要大量自定义代码来处理比率指标、置信区间、CUPED和其他实验特定需求。

关键结论是：**tea-tasting**最适合优先考虑专用高效A/B测试流程的团队，而其他包更适合通用统计分析或需要最大限度控制方法的情况。

---

## 23. 谷歌安全浏览漏掉了84%已确认的钓鱼网站

**原文标题**: Google Safe Browsing missed 84% of confirmed phishing sites

**原文链接**: [https://www.norn-labs.com/blog/huginn-report-feb-2026](https://www.norn-labs.com/blog/huginn-report-feb-2026)

本文介绍了一款名为Huginn的网络钓鱼检测工具的研究结果，该工具在二月识别出254个已确认的钓鱼网站。关键发现是，谷歌安全浏览（GSB）在检测时漏报了其中84%的网站，这凸显了基于黑名单的工具在面对短暂攻击时的被动局限性。

分析显示，58.7%的钓鱼网站托管在Weebly、Vercel甚至谷歌自身服务（如Google文档）等可信平台上，这些平台难以被整体屏蔽。微软、谷歌和Netflix是被仿冒最多的品牌。

文章详细阐述了复杂的逃避技术，例如使用看似无害的亚马逊S3网址作为诱饵的两阶段攻击，以及通过重新访问时改变内容以规避扫描的页面。与此对比，作者开发的Muninn工具采用双层检测方法：自动扫描实现低干扰检测，深度扫描则在数据集上实现了100%的检出率，尽管误报率较高。

结论指出，虽然GSB具有重要价值，但其被动特性为新型规避式钓鱼攻击留下了缺口，这正是主动式页面级分析工具旨在填补的领域。

---

## 24. 穷人的宝丽来

**原文标题**: Poor Man's Polaroid

**原文链接**: [https://boxart.lt/blog/poor_mans_polaroid](https://boxart.lt/blog/poor_mans_polaroid)

本文详细介绍了一款DIY“穷人拍立得”即时成像相机的制作过程。其核心理念是使用廉价的热敏收据打印机（类似商店中使用的款式）替代昂贵的拍立得相纸，使每张照片成本低于一分钱。

相机以树莓派Zero微型计算机为核心，搭配摄像头模块，并由改装后的充电宝供电以实现便携性。作者设计并3D打印了定制外壳，用于容纳所有组件：微型计算机、电池、打印机及控制按钮。

主要功能包括状态指示灯、电源开关、快门按钮和用于重复打印的副本按钮。文章同时提醒了改装锂离子电池可能存在的风险。Python代码负责图像捕捉、处理（针对低质量摄像头进行亮度校正）以及通过USB将图像发送至打印机。

最终成品是一款功能独特、风格奇趣的即时成像相机，它以极低的运行成本为优先考量，而非追求高画质，为商业拍立得相机提供了一种独特的平价替代方案。

---

## 25. 人工智能与忒修斯之船

**原文标题**: AI and the Ship of Theseus

**原文链接**: [https://lucumr.pocoo.org/2026/3/5/theseus/](https://lucumr.pocoo.org/2026/3/5/theseus/)

本文探讨了人工智能如何挑战传统软件许可模式，尤其是像GPL这类著佐权许可证。文章以某维护者为例，其仅依据API和测试套件指引，使用AI代理从头重写了`chardet`库，从而将许可证从LGPL更改为MIT。这一被原作者视为衍生作品的行为，引发了关于版权与原创性的争论。

核心论点是，AI极大降低了重写软件的成本，使得通过“净室设计”实现功能等效但内部代码截然不同的重写成为可能。这削弱了著佐权许可证的约束机制——该机制原本依赖版权实施阻力。作者预测，此举可能导致大量软件转向更宽松的许可条款，甚至促使专有软件以开源形式“复活”。

文章进一步提出关于软件所有权未来的深层疑问，暗示AI生成的代码可能根本无法享有版权。文中指出某些企业的矛盾立场：他们利用AI重写他人作品，却反对自身成果被同类方式处理。作者最终将这一趋势视为向更开放共享模式的积极转变，同时也承认其重新点燃了旧有的许可争议，并以极具争议性的方式将AI与版权这两个敏感议题交织在一起。

---

## 26. 打造新版Flash

**原文标题**: Building a new Flash

**原文链接**: [https://bill.newgrounds.com/news/post/1607118](https://bill.newgrounds.com/news/post/1607118)

**《构建新Flash》摘要**

本文由Newgrounds联合创始人比尔撰写，探讨了社区为保存和重现Adobe Flash功能所做的努力。Flash已于2020年底正式停止服务。该行动的核心项目是**Ruffle**——一个用Rust编程语言编写的开源Flash播放器模拟器。

主要内容包括：
*   **问题所在：** Flash的终结可能导致数十年的网页动画、游戏和艺术作品（包括Newgrounds上的基础内容）永久消失。
*   **解决方案——Ruffle：** Newgrounds团队与其他贡献者共同开发Ruffle。它通过WebAssembly模拟Flash播放器，使旧的SWF文件无需插件即可在现代浏览器中直接运行。
*   **进展与集成：** Ruffle已成功直接集成到Newgrounds网站，使大多数历史内容能够自动播放。项目在兼容性方面进展迅速，许多复杂的游戏和动画已可运行。
*   **开源与未来：** Ruffle是开源项目，鼓励广泛的社区贡献。其最终目标是成为一个自我维持的项目，完整保存Flash生态系统，让这些历史内容在开放网络上永久可玩。

本质上，本文概述了一个成功的保存项目，它利用现代网络技术，将这一重要的数字文化遗产从淘汰边缘拯救出来。

---

## 27. AMD将首次把其“锐龙AI”处理器引入标准台式电脑。

**原文标题**: AMD will bring its “Ryzen AI” processors to standard desktop PCs for first time

**原文链接**: [https://arstechnica.com/gadgets/2026/03/amd-ryzen-ai-400-cpus-will-bring-upgraded-graphics-to-socket-am5-desktops/](https://arstechnica.com/gadgets/2026/03/amd-ryzen-ai-400-cpus-will-bring-upgraded-graphics-to-socket-am5-desktops/)

AMD推出首款采用"Ryzen AI"品牌的桌面处理器——面向AM5插槽的Ryzen AI 400系列。这些芯片是Ryzen 8000G系列的直系继任者，融合了Zen 5 CPU核心、RDNA 3.5集成显卡以及算力达50 TOPS的神经处理单元（NPU）。该NPU使其符合Copilot+ PC认证标准，可支持特定的Windows 11 AI功能。

首发阵容包含六款型号，均采用面向商用PC的"Ryzen Pro"品牌标识，分为65W和35W两种功耗版本，包括Ryzen AI 7 Pro 450G、440G和435G。与AMD顶级笔记本芯片不同，这些桌面型号最多仅配备8个CPU核心和Radeon 860M显卡，未搭载移动版处理器中更高核心数及更强集成显卡（如890M）的配置。

文章指出这些处理器本质上是笔记本芯片的桌面化封装。它们不会以盒装零售形式销售，而是将搭载于需要强劲集成显卡且无需独立显卡的商用台式机中。作者认为其聚焦商用系统而非消费级游戏领域，是因为当前基于集成显卡打造游戏PC的性价比偏低，而高昂的DDR5内存成本进一步加剧了这一问题。

总体而言，此次发布被定位为一次稳健的迭代更新，主要将AMD的Ryzen AI品牌扩展至面向企业级管理环境的桌面领域，而非面向主流消费者的重大性能飞跃。

---

## 28. OpenTitan投入生产应用

**原文标题**: OpenTitan Shipping in Production

**原文链接**: [https://opensource.googleblog.com/2026/03/opentitan-shipping-in-production.html](https://opensource.googleblog.com/2026/03/opentitan-shipping-in-production.html)

OpenTitan作为首个开源硅基可信根，现已由Nuvoton量产并搭载于商用Chromebook。该项目由谷歌与开源社区历时七年共同开发，并由非营利组织lowRISC C.I.C.维护，为设备安全提供了透明、高质量的硬件基础。

这一里程碑证明安全可靠的开源芯片具备商业可行性。其核心创新包括支持后量子密码学（SLH-DSA）以实现前瞻性防护，以及通过超过90%测试覆盖率达到业界领先的设计验证水平。开源模式允许独立审查、定制化修改和多元供应链选择。

展望未来，谷歌计划今年在数据中心部署OpenTitan，并已启动第二代芯片研发以支持更多后量子算法（ML-DSA/ML-KEM）。该项目的成功也为其知识产权复用开辟了道路，例如应用于数据中心SoC的Caliptra可信根设计。

OpenTitan社区正快速发展，自2019年启动以来已积累超29,200次提交和275位以上贡献者，标志着开源芯片生态系统的蓬勃成长。

---

## 29. Smalltalk的浏览器：无与伦比，却仍显不足。

**原文标题**: Smalltalk's Browser: Unbeatable, yet Not Enough

**原文链接**: [https://blog.lorenzano.eu/smalltalks-browser-unbeatable-yet-not-enough/](https://blog.lorenzano.eu/smalltalks-browser-unbeatable-yet-not-enough/)

文章认为，Smalltalk经典的四个窗格系统浏览器之所以经久不衰且功能强大，是因为它提供了必要的静态上下文——在类与包的层级结构中展示方法。这种上下文对于在面向对象系统中高效工作至关重要。

然而作者指出，真正的问题并非浏览器本身，而是它与其他IDE工具（调试器、检查器、交互环境）之间缺乏流畅的集成。这导致工作流程混乱，程序员为追踪消息的动态流向不得不管理“窗口海啸”，难以维持连贯的研究脉络。

文章指出了几个系统性IDE问题：功能堆砌却缺乏整体设计的工具（“弗兰肯斯坦工具”）、工具间集成薄弱（“孤岛工具”）、与现代操作系统习惯的冲突（“异质工具”），以及导航远超早期Smalltalk系统规模的代码库所带来的挑战（“饱和环境”）。

结论是：解决方案并非替换浏览器，而是将程序员的工作更好地表现为可导航的“场景”或关联工具与操作的关系图，在整个环境中保持研究过程的动态上下文。

---

## 30. “海上处决”：伊朗船只在印度洋被美军击沉时是否未携带武器？

**原文标题**: 'Execution at sea': Was the Iranian ship sunk by US in the Indian Ocean unarmed?

**原文链接**: [https://www.thestatesman.com/india/execution-at-sea-was-iris-dena-iranian-frigate-sunk-by-us-in-the-indian-ocean-unarmed-1503566523.html](https://www.thestatesman.com/india/execution-at-sea-was-iris-dena-iranian-frigate-sunk-by-us-in-the-indian-ocean-unarmed-1503566523.html)

伊朗护卫舰“达纳”号在斯里兰卡附近国际水域遭美国潜艇击沉一事引发争议，并带来战略层面的质疑。该舰在参加印度“米兰-2026”海军演习返航途中遇袭，造成至少87人伤亡。

战略专家布拉马·切拉尼博士质疑此次打击的性质，指出若该护卫舰当时处于演习和平协议要求的“安全配置”状态（即携带极少或不携带弹药），那么此次攻击更类似于“蓄意处决”而非战斗行为。他还担忧美印情报共享协议（《通信兼容与安全协议》和《后勤交换协议备忘录》）是否被用于定位伊朗舰船，若属实将严重破坏两国防务伙伴关系的互信基础。

伊朗驻印度大使称该舰当时正在进行常规机动且未配备武器，并誓言将作出强硬回应。印度国内，反对党国大党批评政府对发生在自身影响区域内的事件保持沉默，敦促印度坚持中立立场。相反也有观点认为印度无需承担责任，因为袭击发生在距其海岸约250海里的国际水域。

此次事件加剧了地区紧张局势，促使各方审视袭击的具体情况及其对海上安全与外交关系的影响。

---

