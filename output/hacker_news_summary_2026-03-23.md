# Hacker News 热门文章摘要 (2026-03-23)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 对一项旧研究思路的自主研究

**原文标题**: Autoresearch on an old research idea

**原文链接**: [https://ykumar.me/blog/eclip-autoresearch/](https://ykumar.me/blog/eclip-autoresearch/)

作者利用LLM智能体（Claude Code）基于Karpathy的“自动研究”概念，对一个旧研究项目（eCLIP）进行了自主改进实验。该智能体在受限循环中运行：读取指令、修改训练脚本、运行短期实验，并根据评估指标（平均排名）提交或回滚更改。

该项目采用了新数据集（Ukiyo-eVG）和带有热图处理器的类CLIP模型。在42次实验中，智能体成功将验证集平均排名降低了54%（从344.68降至157.43）。主要改进来自修复一个错误（放宽温度参数限制）和系统性的超参数调优。然而，当尝试更复杂的架构调整时，其成功率下降，且有时难以适应沙箱环境的限制。

实验证明，LLM智能体能有效自动化结构化的迭代优化任务（如错误修复和超参数调优），但在开放性的创造性问题解决（“未知的未知”）方面仍存在困难。作者总结认为，该方法在定义明确的搜索空间中是一种强大工具，但对于更广泛的研究挑战仍需人类监督。

---

## 2. iPhone 17 Pro演示运行4000亿参数大语言模型

**原文标题**: iPhone 17 Pro Demonstrated Running a 400B LLM

**原文链接**: [https://twitter.com/anemll/status/2035901335984611412](https://twitter.com/anemll/status/2035901335984611412)

**摘要：iPhone 17 Pro 据称可运行 4000 亿参数大语言模型**

文章标题称，iPhone 17 Pro 已展示能够运行一个 4000 亿参数的大语言模型（LLM）。然而，实际提供的内容并非文章本身。

相反，该文本是社交媒体平台 X（原 Twitter）的一条标准错误提示，说明用户浏览器中 JavaScript 已被禁用，必须启用才能查看内容。该提示包含指向平台帮助中心、服务条款的链接，以及一份 2026 年的版权声明。

因此，根据所给信息，并无文章内容可供总结。关键要点是：标题中的说法无法从提供的文本中得到验证，因为该文本仅包含一条技术性访问错误提示，并未涉及所声称的演示或任何关于 iPhone 17 Pro 设备端 AI 能力的细节。

---

## 3. Local Stack 已将其 GitHub 仓库归档，并要求账户才能运行。

**原文标题**: Local Stack Archived their GitHub repo and requires an account to run

**原文链接**: [https://github.com/localstack/localstack](https://github.com/localstack/localstack)

LocalStack已将其GitHub仓库归档，并将开发工作整合至单一的Docker镜像中，以减少碎片化并集中资源。该项目现要求用户创建账户，为非商业用途提供功能等效的免费Hobby方案。

LocalStack是一款在本地Docker容器中运行的云服务模拟器，开发者无需连接真实云端即可测试AWS应用（如Lambda、S3和DynamoDB）。它可通过Homebrew、直接二进制下载或使用`localstack-cli`通过PyPI安装。

启动时，用户运行`localstack start -d`命令，随后可通过`awslocal` CLI与模拟的AWS服务交互。项目公告鼓励社区继续提交错误报告和功能请求，并加入Slack社区获取支持。该项目仍遵循Apache 2.0许可证。

---

## 4. Trivy再遭攻击：GitHub Actions标签大规模泄露机密信息

**原文标题**: Trivy under attack again: Widespread GitHub Actions tag compromise secrets

**原文链接**: [https://socket.dev/blog/trivy-under-attack-again-github-actions-compromise](https://socket.dev/blog/trivy-under-attack-again-github-actions-compromise)

**摘要：**

一种新的供应链攻击已危及流行漏洞扫描工具**Trivy**的多个版本。恶意Docker镜像针对版本**0.69.4、0.69.5和0.69.6**被上传至Docker Hub，但关键的是，这些版本**从未在GitHub上正式发布**，表明这是一次未经授权的推送。

受感染的镜像包含**信息窃取恶意软件**，旨在从受影响系统中收集敏感数据。这种攻击方式尤其危险，因为它利用了CI/CD流水线（如GitHub Actions）中对广泛使用的安全工具的信任，可能导致密钥和凭据被盗。

该事件突显了一个关键的供应链风险：攻击者可能劫持或伪造官方容器镜像。建议用户验证所拉取的任何Docker镜像是否对应项目主仓库（如GitHub）中官方标记的版本，并对自动拉取最新容器标签的工作流程保持警惕。

---

## 5. 查找所有正则表达式匹配始终是O(n²)复杂度。

**原文标题**: Finding all regex matches has always been O(n²)

**原文链接**: [https://iev.ee/blog/the-quadratic-problem-nobody-fixed/](https://iev.ee/blog/the-quadratic-problem-nobody-fixed/)

本文揭示了一个长期存在却常被忽视的正则表达式引擎性能问题：即使在设计用于避免回溯的引擎中，在字符串中查找所有匹配可能耗时O(n²)而非线性时间。这是因为传统引擎会从每个字符位置重启搜索，导致重复扫描相同输入（例如对由`b`组成的字符串使用`.*a|b`这类模式时）。

虽然Aho-Corasick算法（1975年）已针对固定字符串解决此问题，且Hyperscan通过"最早匹配"语义实现线性时间正则匹配（但输出结果不同），但作者开发的RE#引擎宣称首次在不改变输出的前提下，为标准的最左最长匹配语义解决了该问题。

RE#采用双扫描算法：反向扫描标记潜在匹配起点，正向扫描解析每个标记处的最长匹配，从而避免O(n²)的重启开销。该引擎还提供可选的"强化模式"，即使面对对抗性模式也能保证线性时间，但会带来恒定系数的性能损耗，因此建议仅对不可信输入启用此功能。

文章指出，回溯引擎（仍是多数语言的默认引擎）存在更严重的指数级灾难性回溯问题，而本文讨论的平方级复杂度问题甚至会影响"安全"的线性时间引擎在查找所有匹配时的性能。基准测试显示，得益于向量化指令实现的跳跃加速等优化，RE#在特定工作负载下可与Rust的regex库、Aho-Corasick等引擎竞争甚至超越其性能。

---

## 6. 人工智能风险“超常”科学

**原文标题**: AI Risks "Hypernormal" Science

**原文链接**: [https://www.asimov.press/p/ai-science](https://www.asimov.press/p/ai-science)

本文指出，虽然人工智能在现有科学框架内的预测任务上表现出色，却极不擅长催生推动真正科学进步的范式变革。文章警示未来可能出现“超常规科学”的困境——人工智能虽能在当前模型内实现日益精准的预测，代价却是丧失提出根本性新问题的能力。

文章援引历史案例（如爱因斯坦相对论取代以太理论、贝克设计的伦敦地铁示意图）阐明：范式变革需要跳出既定逻辑，创建更简洁、更具统摄力且蕴含未知可能性的新原理。然而当前人工智能的训练目标是基于现有数据最小化误差，这使其思维被禁锢在训练集的概念范畴内。即便是那些能发现新材料或蛋白质的先进系统，本质上也只是在既有“认知地图”上填补空白。

核心风险在于：当“AI科学家”将更多研究流程自动化后，它们会以是否符合现有科学体系为标准评估新思想，从而天然过滤掉颠覆性方案。文章最后强调，为避免这种短视，我们必须有意识地设计不仅能预测、更能协助构建新概念体系的人工智能——打造能够孕育真正科学革命的“远见机器”。

---

## 7. 美国与道达尔能源达成"近10亿美元"协议，终止海上风电项目

**原文标题**: US and TotalEnergies reach 'nearly $1B' deal to end offshore wind projects

**原文链接**: [https://www.lemonde.fr/en/international/article/2026/03/23/us-and-totalenergies-reach-nearly-1-billion-deal-to-end-offshore-wind-projects_6751739_4.html](https://www.lemonde.fr/en/international/article/2026/03/23/us-and-totalenergies-reach-nearly-1-billion-deal-to-end-offshore-wind-projects_6751739_4.html)

美国与道达尔能源公司达成协议，终止这家法国能源公司在美的海上风电项目，并将近10亿美元的租赁保证金转向化石燃料生产。

2026年3月23日，美国内政部长道格·伯古姆宣布，该协议终止了道达尔能源在北卡罗来纳州和纽约州沿海的两座总装机容量达四吉瓦的大型风电场开发计划。公司首席执行官潘彦磊表示，原计划用于风电的9.28亿美元投资将转向美国天然气项目，特别是里奥格兰德液化天然气厂，同时公司已签署意向书，计划长期采购阿拉斯加液化天然气项目的液化天然气。

这一决定是在特朗普政府推翻此前气候政策后作出的，此前政府以国家安全和成本问题为由暂停了多个风电项目。潘彦磊呼应了这一观点，称与天然气相比，海上风电成本过高。该协议标志着政策方向的重大转变——从拜登时期加速发展海上风电，转向当前政府重点扩建化石燃料基础设施。

---

## 8. BIO：宝I/O协处理器

**原文标题**: BIO: The Bao I/O Coprocessor

**原文链接**: [https://www.bunniestudios.com/blog/2026/bio-the-bao-i-o-coprocessor/](https://www.bunniestudios.com/blog/2026/bio-the-bao-i-o-coprocessor/)

本文介绍了专为宝芯-1x SoC设计的I/O协处理器BIO。文章首先分析了树莓派的PIO——一款流行的I/O协处理器，指出其尽管灵活，但存在硬件效率低下和结构复杂的问题。作者在实现过程中发现其资源占用高且存在时序挑战，部分原因在于其类CISC、指令密集型的设计。

为此，作者设计了基于RISC架构的BIO作为替代方案。其核心是四个紧凑的RV32E RISC-V内核（PicoRV32），关键创新在于扩展寄存器文件以包含“寄存器队列”。寄存器x16-x19被映射为具有阻塞语义的共享FIFO，允许内核在下溢/上溢时暂停执行，从而实现确定性、低延迟的通信。

额外的专用寄存器（x20-x31）提供直接、周期精确的GPIO控制、事件同步以及用于实时调度（无需手动周期计数）的“量子”计时器。可选的BDMA扩展允许内核充当智能DMA引擎，但访问受内存白名单保护。

该设计理念优先考虑硬件简洁性、利用RISC-V软件工具链以及确定性I/O性能。示例展示了BIO如何通过将DMA等任务分解为协同工作的内核来简化操作，与更复杂且资源密集的PIO方案形成鲜明对比。

---

## 9. Cyber.mil网站使用三天前已过期的TLS证书提供文件下载服务。

**原文标题**: Cyber.mil serving file downloads using TLS certificate which expired 3 days ago

**原文链接**: [https://www.cyber.mil/stigs/downloads](https://www.cyber.mil/stigs/downloads)

**摘要：**

本文报告了Cyber.mil网站存在的一个安全问题，该网站是美国国防部网络安全与信息系统信息分析中心（CSIAC）的门户网站。问题在于该网站使用的传输层安全（TLS）证书在报告日期前三天已过期。

过期的TLS证书是一个重大的安全隐患，因为它可能触发用户浏览器警告，从而可能削弱信任并阻碍访问。更重要的是，它会干扰安全通信，并可能表明日常安全维护存在疏漏。对于一个与军事相关的网络安全资源平台而言，这种疏忽尤为引人注目，并损害了其安全态势。

核心信息是公开通报这一运营安全缺陷，突显了在一个专门提供网络安全信息的平台上出现了基础维护失误。该报告旨在提醒网站管理员及其用户社群注意此问题，需要立即续订证书以恢复正常的安全性和功能。

---

## 10. 邦巴迪尔：基于属性的Web界面测试

**原文标题**: Bombadil: Property-based testing for web UIs

**原文链接**: [https://github.com/antithesishq/bombadil](https://github.com/antithesishq/bombadil)

**摘要**

Bombadil 是一款实验性的、基于属性的测试工具，专为 Web 用户界面设计。其核心目标是自主探索 Web UI，并根据定义的属性验证其正确性，旨在在开发周期早期发现复杂的缺陷。

主要特点与信息包括：
*   **功能：** 它执行基于属性的测试，即生成广泛的输入和用户交互，以测试应用程序是否始终遵循指定的规则或“属性”。
*   **使用场景：** 可在本地开发环境、持续集成（CI）流水线中运行，并与 Antithesis 测试平台集成。
*   **状态：** 该工具明确标注为全新且处于实验阶段，这意味着其接口和功能可能发生变化。
*   **资源：** 提供手册、安装指南和示例等文档。也为对该项目感兴趣的开发者提供了贡献指南。
*   **创建者：** Bombadil 由 Antithesis 构建和提供。

该工具的名称及其附带的诗歌诙谐地引用了 J.R.R.托尔金文学作品中坚韧的角色汤姆·邦巴迪尔，隐喻地将测试者定位为对抗缺陷的“大师”。

---

## 11. 一份未经请求的研究员生存指南 [pdf]

**原文标题**: An unsolicited guide to being a researcher [pdf]

**原文链接**: [https://emerge-lab.github.io/papers/an-unsolicited-guide-to-good-research.pdf](https://emerge-lab.github.io/papers/an-unsolicited-guide-to-good-research.pdf)

这份PDF似乎是纽约大学EMERGE实验室尤金·维尼茨基所著《非请自来的研究者指南》（共35页）的结构性元数据。所提供内容并非指南的可读文本，而是定义其排版格式的底层PDF对象结构。

根据元数据可知，该指南是一份结构严谨的文档，包含大量列表（编号与项目符号）、章节及可能的图表。详尽的纲要与结构化元素表明这是一本体系完整的指南手册。主要结构组件包括：
*   至少包含两个主条目的详细目录
*   多层级嵌套列表，体现主题细分为子要点与建议项
*   图表标注、强调标签（可能用于关键术语或建议）及逻辑阅读顺序标记

本质上，元数据显示该指南是一份格式规范、结构清晰的文档，旨在系统性地呈现关于成为研究者的建议与信息，但具体建议内容和核心论述并未包含在此次提供的节选中。

---

## 12. 我为一家汽车修理厂打造了一位AI接待员。

**原文标题**: I built an AI receptionist for a mechanic shop

**原文链接**: [https://www.itsthatlady.dev/blog/building-an-ai-receptionist-for-my-brother/](https://www.itsthatlady.dev/blog/building-an-ai-receptionist-for-my-brother/)

本文详细介绍了为一家高端汽车维修店定制名为Axle的人工智能接待员的过程，旨在解决漏接电话和收入损失问题。作者构建了一个包含三个步骤的语音助手系统。

首先，他们实施了检索增强生成（RAG）流程，以确保回答准确且无虚构内容。具体包括抓取店铺网站数据，将其转化为向量嵌入并存储于MongoDB Atlas，再通过Claude严格基于该知识库生成回答。

其次，他们利用Vapi平台将系统连接至实体电话线路。通过FastAPI网络钩子服务器实时处理客户查询，并借助Ngrok实现本地开发。系统将所有通话和回拨请求记录至MongoDB以便追踪。

最后，团队投入大量精力优化语音交互体验。包括选择自然音色（ElevenLabs的Christopher语音）、重写适用于口语表达的系统提示，并对未解决问题时的转人工流程进行严格测试。

该系统整合了Vapi（电话通信）、FastAPI、MongoDB Atlas（数据与向量搜索）、Voyage AI（嵌入模型）和Claude（生成模型）。下一阶段将在全面部署前增加预约预订、短信通知和仪表盘功能。核心经验在于：企业级AI助手应基于可验证数据构建，并设计可靠的人工介入路径。

---

## 13. 拉瓜迪亚机场飞机与地面车辆相撞，两名飞行员丧生。

**原文标题**: Two pilots dead after plane and ground vehicle collide at LaGuardia

**原文链接**: [https://www.bbc.com/news/articles/cy01g522ww4o](https://www.bbc.com/news/articles/cy01g522ww4o)

周日晚上，一架加拿大航空公司的飞机在纽约拉瓜迪亚机场与一辆消防车相撞，导致两名飞行员死亡。这架加拿大航空爵士号航班载有72名乘客和4名机组人员，刚从蒙特利尔降落，便撞上了港务局的消防车。当时该消防车正因美联航一架飞机报告异常气味而前往处置。

事故导致飞机严重受损，视频显示其机头翘起。41人被送往医院，其中32人随后出院，其余人员伤势严重。消防车上的两名飞行员住院治疗，情况稳定，无生命危险。

事故发生后，拉瓜迪亚机场关闭，导致数百架航班取消或延误。美国国家运输安全委员会已展开调查。空中交通管制塔台的录音显示，碰撞发生前，管制员曾紧急呼叫消防车“停下”。

---

## 14. Digs：离线优先的iOS应用，用于浏览您的Discogs黑胶唱片收藏

**原文标题**: Digs: Offline-first iOS app to browse your Discogs vinyl collection

**原文链接**: [https://lustin.fr/blog/building-digs/](https://lustin.fr/blog/building-digs/)

**摘要：**

**Digs** 是一款面向使用 Discogs 管理黑胶收藏的用户的离线优先 iOS 应用。它旨在满足用户在无网络连接时快速、简便地浏览个人收藏的需求，专注于文件夹导航和离线访问——这些是开发者认为官方应用所欠缺的功能。

该应用将用户的整个 Discogs 收藏同步至手机，并将数据本地存储在 SQLite 中。初次同步后，所有浏览、搜索及随机选碟功能均可即时离线使用。后续同步为增量更新，仅处理已变更的内容。

应用基于 React Native（Expo）和 TypeScript 构建，其主要技术挑战包括实现一个稳健的同步流程（逐步获取详细信息）以及为 Discogs API 设计自定义的速率限制器，该限制器会考虑进行中的请求以避免触及使用限制。

开发者指出，虽然借助 AI 辅助编码效率很高，但大部分开发时间都投入在了产品决策、测试和优化上。Digs 是一款专注于浏览的配套应用；它不包含市场功能、愿望清单管理或编辑能力。

该应用在 App Store 上免费提供，无广告、无追踪，除 Discogs OAuth 登录外无需额外账户。

---

## 15. 沃尔玛：ChatGPT结账转化率比网站低三倍

**原文标题**: Walmart: ChatGPT checkout converted 3x worse than website

**原文链接**: [https://searchengineland.com/walmart-chatgpt-checkout-converted-worse-472071](https://searchengineland.com/walmart-chatgpt-checkout-converted-worse-472071)

沃尔玛在ChatGPT中测试OpenAI的“即时结账”功能后，发现其销售转化率远低于传统网站。在对20万件商品进行测试后，该公司发现，直接在ChatGPT界面内完成的购买转化率仅为用户跳转至沃尔玛自有网站交易的三分之一。

沃尔玛高管称这一聊天内购物体验“令人不满”，促使该零售商放弃直接结账模式。这一转变与OpenAI自身逐步淘汰即时结账功能、转向由商家处理的基于应用程序的结账方式的决定一致。

取而代之的是，沃尔玛将在ChatGPT中整合其自有购物聊天机器人“Sparky”。在新模式下，用户需登录沃尔玛账户、同步购物车，并在沃尔玛自有生态系统中完成购买，以保持对结账体验的控制。该公司还计划与谷歌Gemini进行类似整合。

关键结论是，目前通过AI聊天机器人实现的“代理式商务”尚未能有效替代传统电商环境来推动销售。结果表明，将用户引导至零售商自有平台仍能带来更高的转化率。

---

## 16. 展示HN：Threadprocs – 共享同一地址空间的可执行文件（零拷贝指针）

**原文标题**: Show HN: Threadprocs – executables sharing one address space (0-copy pointers)

**原文链接**: [https://github.com/jer-irl/threadprocs](https://github.com/jer-irl/threadprocs)

Threadprocs是一种实验性系统，允许在Linux（aarch64/x86_64）的单个共享虚拟地址空间中运行多个独立可执行文件。它融合了进程与线程模型：每个“threadproc”像进程一样拥有自己的可执行文件、全局变量和libc实例，但指针在所有threadproc间直接有效，从而实现了基于指针的数据结构的零拷贝共享。

核心服务器工具承载该地址空间。程序通过定制启动器载入其中，随后可通过带外机制（如套接字或提供的暂存空间）交换指针并直接解引用。支持库libtproc辅助检测，并提供服务器全局暂存空间以支持服务发现。

关键技术限制包括：每个threadproc必须自行管理内存（分配的内存无法由其他threadproc释放）、程序必须编译为位置无关代码、`brk()`/`sbrk()`不可靠，且缺乏调试/ptrace支持。该项目为概念验证，附带示例和配套的actor框架以探索实际应用，但作者指出，由于这些限制，要构建适用于严肃软件的实用模型仍面临重大挑战。

---

## 17. 这是一品脱吗？

**原文标题**: Is it a pint?

**原文链接**: [https://isitapint.com/](https://isitapint.com/)

本文介绍了“品脱巡逻队”——一个源于作者对广告宣传的饮品分量（尤其是啤酒品脱）是否属实的质疑而兴起的草根运动。其核心使命是推动美国消费者在享用啤酒、葡萄酒和苹果酒时获得诚实准确的分量。

文章采用正式报告的形式，梳理了作者从质疑酒饮分量到发起公众倡导的个人历程。文中详细阐述了调查饮品分量的方法，展示了收集的数据，并指导读者如何识别合规的品脱杯。最后，文章发出行动号召，邀请人们通过专属应用程序、周边商品和捐款等方式加入这项运动。

本质上，本文记录了作者发现饮品分量可能不足的现象，以及随后创立倡导组织、致力于确保消费者获得足量商品的过程。

---

## 18. 一个不连贯的Rust

**原文标题**: An incoherent Rust

**原文链接**: [https://www.boxyuwu.blog/posts/an-incoherent-rust/](https://www.boxyuwu.blog/posts/an-incoherent-rust/)

这篇博客文章认为，Rust的连贯性和孤儿规则虽然确保了类型安全并防止生态系统不兼容，却严重阻碍了生态系统的演进。核心问题在于，像`serde`这样的基础库会产生锁定效应：一旦某个库实现了一个流行特质，替代方案就难以获得采用，因为下游库无法为外部类型实现外部特质。这使得更优秀的库在取代已建立的库时面临人为的障碍。

作者解释说，连贯性（防止重叠的特质实现）对于类型安全是必要的，并通过示例展示了缺乏连贯性可能破坏类型安全的情况。孤儿规则（限制特质实现的位置）主要确保库的可组合性和安全的动态链接，但正是这些规则强化了上述有问题的锁定效应。

文章随后回顾了现有放宽这些规则的提案——例如二进制包豁免、延迟连贯性和特化——结论是这些方案都无法完全解决“生态系统演进”问题。作为一种激进解决方案，作者提出了一个概念框架：通过允许命名特质实现（`impl Name<T> = Trait for T`），并让函数通过特质约束参数指定使用*哪个*实现，来*移除*连贯性要求。这将使库与特定的特质实现解耦，最终实现基础库的无缝竞争与替换。

---

## 19. PC Gamer在一篇持续下载的37MB文章中推荐RSS阅读器。

**原文标题**: PC Gamer recommends RSS readers in a 37mb article that just keeps downloading

**原文链接**: [https://stuartbreckenridge.net/2026-03-19-pc-gamer-recommends-rss-readers-in-a-37mb-article/](https://stuartbreckenridge.net/2026-03-19-pc-gamer-recommends-rss-readers-in-a-37mb-article/)

本文批评了PC Gamer一篇推荐RSS阅读器的网页，讽刺其自身糟糕的用户体验。作者指出三个主要问题：遮挡内容的侵入式弹窗（用于通知和订阅）、页面上至少五个可见广告造成的杂乱，以及高达37MB的初始页面体积。最令人震惊的是，该页面在短短五分钟内持续下载了近500MB的新广告数据。

文章核心论点是：这种臃肿且广告泛滥的设计，恰恰印证了RSS阅读器存在的必要性。通过直接聚合内容，诸如NetNewsWire、Unread、Current和Reeder等RSS阅读器能让用户避开此类侵扰性网页元素，提供更简洁高效的信息获取方式。

---

## 20. 移居欧盟

**原文标题**: Migrating to the EU

**原文链接**: [https://rz01.org/eu-migration/](https://rz01.org/eu-migration/)

作者正将其数字服务从非欧盟提供商迁移至欧盟境内，主要出于数据保护和政治环境的考量。他们详细记录了多个关键服务的迁移过程。

在邮箱方面，他们从Fastmail转至德国灵活付费的**Uberspace**，并在安卓端使用Thunderbird作为客户端。由于Uberspace不提供日历功能，他们在Uberspace账户上安装了**NextCloud**，通过CalDAV/CardDAV协议实现日历与通讯录同步，并在安卓端配合使用DAVx5和Fossil Calendar。

网站从Hetzner VPS迁移至**Uberspace**，仅需对Apache SSI进行微调。域名注册和DNS服务从Namecheap转移至德国提供商**hosting.de**。所有Git仓库则迁移至非营利平台**codeberg.org**。

作者未更换VPN服务，继续使用瑞典提供商**Mullvad**。为减少对谷歌的依赖，他们购买了Pixel 9a手机并安装**Graphene OS**（保留Play商店），同时正在测试一台安装Linux系统的MacBook Air，以替代日常使用的Chromebook。

---

## 21. GitHub似乎正为仅达到三个九的可用性而苦苦挣扎。

**原文标题**: GitHub appears to be struggling with measly three nines availability

**原文链接**: [https://www.theregister.com/2026/02/10/github_outages/](https://www.theregister.com/2026/02/10/github_outages/)

本文报道了GitHub近期的服务可靠性问题，重点指出了2026年2月初发生的一系列服务中断与运行缓慢事件。受影响的关键服务包括GitHub Actions、拉取请求、通知及其AI工具Copilot，部分故障持续了数小时。

作者批评GitHub官方状态页面透明度降低，导致用户难以评估整体运行趋势。文中引用了一份非官方重建数据，显示GitHub在2025年某时段运行率曾跌破90%——远低于可用性“五个九”（99.999%）的黄金标准。

尽管GitHub对企业云客户的服务级别协议承诺99.9%（“三个九”）的运行率，但文章暗示该平台甚至难以稳定达到这一较低标准。报道将此视为云服务可靠性普遍下降趋势的一部分。

文末建议客户应主动规划不可避免的停机时间，而非依赖不切实际的运行保证。

---

## 22. “协作”纯属扯淡

**原文标题**: “Collaboration” is bullshit

**原文链接**: [https://www.joanwestenberg.com/collaboration-is-bullshit/](https://www.joanwestenberg.com/collaboration-is-bullshit/)

这篇文章认为，现代企业对“协作”的痴迷适得其反。文章首先引用了历史案例（S.L.A. 马歇尔对二战步枪兵的研究、林格尔曼的拉绳实验、布鲁克斯定律）来说明一个普遍真理：在群体中，个人努力和责任会变得模糊，少数人往往承担了大部分实际工作。

作者指出，科技行业的解决方案——如Slack、Notion和Jira等庞大的协作工具生态系统——创造了一种工作的模拟，而非实际产出。这些工具将可见性误认为进展，将参与误认为责任，使得协作带来的愉悦感在文化上替代了艰难且充满风险的个体责任工作。

文章强调，真正高质量的工作通常由个人或极小的团队完成，他们拥有清晰的权力和责任（例如陀思妥耶夫斯基、阿波罗导航计算机团队）。然而，在“协作优先”的文化中，单方面决策被视为反社交行为，而站会和复盘等流程产生的协调成本往往高于执行成本。

核心批评在于，协作本身已成为目的，模糊了谁真正对结果负责。作者呼吁回归对个人的信任，赋予他们清晰的责任，让他们基于自己的工作成败——而不是依赖那种“温暖而昂贵的假象”，即持续、集体的可见性。

---

## 23. 如果DSPy这么棒，为什么没人用它？

**原文标题**: If DSPy is so great, why isn't anyone using it?

**原文链接**: [https://skylarbpayne.com/posts/dspy-engineering-patterns/](https://skylarbpayne.com/posts/dspy-engineering-patterns/)

本文认为，DSPy这一构建AI系统的框架虽能提供可维护性、模型无关性等显著优势，却因学习曲线陡峭而普及度低。文章指出，随着AI系统经历可预测的发展阶段——从简单提示到管理结构化输出、重试机制、RAG、评估及模型切换——团队最终难免会自行构建功能逊色的“山寨版DSPy”。

文章通过企业信息提取的案例，阐释了这种“自制DSPy”反模式如何使临时代码变得臃肿复杂。相比之下，DSPy提供了清晰的抽象结构：用于类型化输入输出的“签名”、可组合逻辑的“模块”、自动优化提示的“优化器”——这些设计封装了软件工程的最佳实践。

核心问题在于，工程师在交付压力下往往推迟采用这些优良架构模式，直至陷入技术债务的泥潭。DSPy强制要求提前规划这些模式，这在尚未体验缺乏这些模式带来的痛苦时显得尤为困难。作者总结道，虽然直接使用DSPy是最佳选择，但其核心模式（类型化输入输出、提示与代码分离、可组合性、早期评估）对于任何严肃且可扩展的AI系统都至关重要。

---

## 24. 通用汽车正在协助修复一辆罕见的EV1电动车。

**原文标题**: General Motors is assisting with the restoration of a rare EV1

**原文链接**: [https://evinfo.net/2026/03/general-motors-is-assisting-with-the-restoration-of-an-1996-ev1/](https://evinfo.net/2026/03/general-motors-is-assisting-with-the-restoration-of-an-1996-ev1/)

通用汽车公司正在协助一项私人修复项目，计划在2026年11月——这款开创性电动汽车问世30周年之际，让一辆罕见的EV1（车辆识别码212）重返公路。这辆车是当年通用召回并销毁约1000辆租赁车型后仅存的少数幸存者之一，由爱好者比利·卡鲁索在拍卖会上购得。

卡鲁索与YouTube频道"Questionable Garage"合作进行修复。通用汽车总裁马克·鲁斯观看其视频后，邀请团队参观公司技术中心。通用不仅提供了关键零部件，还正式将该项目纳入30周年纪念活动，以此彰显EV1在热泵空调、再生制动等基础技术方面的开创性贡献。

文章提及EV1在纪录片《谁杀死了电动汽车？》中记录的争议历史，但强调其技术遗产实为当今主流电动汽车的先驱。此次修复既是对这段历史的致敬，也是让这段鲜活的汽车史重新进入公众视野。

---

## 25. 优化的黄金标准：深入剖析《过山车大亨》的幕后机制

**原文标题**: The gold standard of optimization: A look under the hood of RollerCoaster Tycoon

**原文链接**: [https://larstofus.com/2026/03/22/the-gold-standard-of-optimization-a-look-under-the-hood-of-rollercoaster-tycoon/](https://larstofus.com/2026/03/22/the-gold-standard-of-optimization-a-look-under-the-hood-of-rollercoaster-tycoon/)

本文探讨了使《过山车大亨》（1999年）实现卓越性能的技术优化手段，并将其成功归因于几个关键因素，这些因素主要得益于其唯一的开发者克里斯·索耶。

首先，游戏几乎完全使用汇编语言编写，这是一种能提供精细性能控制的低级语言，这种做法在当时已基本被弃用。其次，代码进行了极致的微观优化。例如，使用不同大小的数据类型（如用单字节存储商店价格）以节省内存，并广泛用位运算替代乘除法来处理2的幂次计算。

最重要的是，游戏设计本身也为性能进行了优化。一个典型例子是游客的寻路机制：游客并非计算前往特定目的地的复杂路线，而是半随机地游荡，直到偶然发现游乐设施。这避免了对数千个角色进行昂贵的寻路计算。当必须寻路时（如维修工），系统会设置严格的搜索限制以防止性能波动，这一限制通过公园地图等物品巧妙地融入游戏玩法中。

同样，游戏避免了高成本的群体模拟。游客之间不会碰撞或相互绕行，但通过追踪游客密度并影响其满意度来模拟过度拥挤的情况，从而以最小的计算成本实现了类似的游戏效果。

文章总结道，这种由一人统筹编程与游戏设计的整体性方法，实现了在现代分工明确的开发中难以达到的深度优化。

---

## 26. 关于代码已死的报道被大大夸大了。

**原文标题**: Reports of code's death are greatly exaggerated

**原文链接**: [https://stevekrouse.com/precision](https://stevekrouse.com/precision)

本文认为，人工智能辅助的“氛围编程”的兴起并不意味着传统编程的终结。虽然AI擅长将英文描述转化为代码，但它制造了一种错觉，让人误以为模糊的人类“感觉”就是精确的规范。这种错觉在规模或复杂性面前会破裂，导致程序错误，正如构建协作功能时所遇到的困难所示。

作者强调，代码的真正目的不仅是创造软件，更是通过**抽象**来驾驭复杂性——将细节压缩为精确、可理解的概念。这种创造良好抽象的知识性工作是编程的核心，被比作写诗。

展望通用人工智能（AGI），作者认为这些系统不会消除对优质代码的需求。相反，它们将成为强大的工具，帮助人类设计更好的抽象、解决更困难的问题，从而提升编程技艺而非取代它。文章总结道，代码并未消亡；人工智能终将成为一种助力，让程序员得以专注于更高层次的设计与优雅性。

---

## 27. 版本控制的未来

**原文标题**: The future of version control

**原文链接**: [https://bramcohen.com/p/manyana](https://bramcohen.com/p/manyana)

**摘要：**

本文介绍了Manyana项目，该项目展示了基于CRDT（无冲突复制数据类型）的版本控制未来愿景。其核心创新在于利用CRDT确保合并始终成功，消除了阻碍进展的传统合并冲突。

该系统不会阻塞操作，而是在并发编辑触及同一区域时，以信息化的方式标记并呈现冲突。这提供了更清晰的冲突标记，能够显示每位贡献者*具体更改了什么*（例如“删除”与“添加”），而不仅仅是呈现两个不透明的最终代码块。

CRDT方法的主要优势包括：
*   **最终一致性：** 合并永远不会失败，且无论合并顺序如何，结果都相同。
*   **永久行序：** 防止因冲突解决不一致导致的细微错误。
*   **结构中的历史：** 文件状态是所有历史行交织而成的“编织体”，通过消除在DAG中寻找共同祖先的需求，简化了合并逻辑。
*   **更安全的变基：** 该概念允许在保留真实历史的同时进行变基（重放提交），避免了复杂变基历史对传统系统造成的问题。

作者将Manyana定位为一个概念验证演示（用于文件操作的Python代码仅470行），而非完整的版本控制系统，但认为它证明了CRDT能够解决版本控制中长期存在的用户体验问题。

---

## 28. 《锡罐》，孩子们的“固定电话”

**原文标题**: Tin Can, a 'landline' for kids

**原文链接**: [https://www.businessinsider.com/tin-can-landline-kids-cellphone-cell-alternative-how-2025-9](https://www.businessinsider.com/tin-can-landline-kids-cellphone-cell-alternative-how-2025-9)

**摘要：**

本文介绍了专为儿童设计的**Tin Can**——一款简洁的无绳电话，作为智能手机的“座机”替代品。它通过Wi-Fi连接，仅允许拨打和发送短信至由家长通过应用程序预先批准的联络人名单。

其**核心特点在于注重安全与简洁**——无网络浏览器、社交媒体或应用商店，为孩子提供基础通讯功能，同时避免智能手机带来的干扰与风险。该产品旨在回应家长对屏幕时间、社交媒体接触及过度联网的担忧。

Tin Can反映了日益兴起的**“轻科技”趋势**，为那些希望在“无手机”和“全功能智能手机”之间为年幼子女找到折中方案的家长提供了选择。它被定位为一款既能培养孩子独立性，又能让家长保持通讯管控的工具。

---

## 29. 美国航空业濒临崩溃。

**原文标题**: American Aviation Is Near Collapse

**原文链接**: [https://www.theatlantic.com/newsletters/2026/03/aviation-failures-tsa-dhs-shutdown/686505/](https://www.theatlantic.com/newsletters/2026/03/aviation-failures-tsa-dhs-shutdown/686505/)

本文认为，美国商业航空体系因长期资金不足与严重的政治功能障碍而濒临崩溃。

其直接表现包括大规模航班混乱——拉瓜迪亚机场致命的跑道相撞事故和纽瓦克机场的险情即是例证，同时安检通道也陷入混乱。后者是由部分政府停摆所致，导致运输安全管理局工作人员自二月以来一直未获薪酬。

这些危机背后是系统性的衰败。作者将其根源追溯到数十年来对关键基础设施的投资不足，例如过时的空中交通管制技术和长期的人员短缺。政治上的失败阻碍了必要的改革与安全升级，而监管俘获现象——以美国联邦航空局与波音公司的关系为例——则损害了监管效力。

当前的政治环境加剧了这些问题。政府停摆使重要机构陷入瘫痪，而当局的应对措施（例如提议调派未经训练的移民海关执法局人员前往机场）被指为“补丁治国”的体现：即依赖笨拙的短期补救，而非实质性的政策解决方案。文章指出，这些临时修补措施现已失效，正将航空体系推向崩溃边缘。

---

## 30. 仅用一个打火机就能获取root权限吗？(2024)

**原文标题**: Can you get root with only a cigarette lighter? (2024)

**原文链接**: [https://www.da.vidbuchanan.co.uk/blog/dram-emfi.html](https://www.da.vidbuchanan.co.uk/blog/dram-emfi.html)

在这篇文章中，大卫·布坎南展示了如何仅用一个打火机作为硬件故障注入工具，在Linux笔记本电脑上获取root权限。核心技术涉及通过电磁干扰（EMFI）来翻转笔记本电脑DDR内存总线上的特定比特位。

作者将一根简单的导线天线焊接到内存模块的数据引脚上。在内存操作期间，通过按压压电打火机在天线附近产生电火花，可稳定地翻转一个可预测的比特位。他首先通过在CPython中创建一个沙箱逃逸漏洞来测试这一方法，通过破坏指针获得任意内存读写权限。

针对主要挑战——从非特权用户提升至root权限——该策略瞄准了Linux内核的虚拟内存系统。攻击者用用户控制的页表填满物理内存，然后强制重复进行页表遍历（绕过CPU缓存和TLB），以提高故障翻转页表项（PTE）的概率。成功的比特位翻转可将PTE重定向至攻击者的页表，最终获得任意物理内存的访问权限及完整的系统控制权。

文章强调了廉价、临时制作的工具如何能够利用硬件漏洞，从而绕过对昂贵专业设备或软件漏洞的依赖。

---

