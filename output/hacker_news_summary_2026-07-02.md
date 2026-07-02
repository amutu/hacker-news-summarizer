# Hacker News 热门文章摘要 (2026-07-02)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 《Exapunks》（2018）

**原文标题**: Exapunks (2018)

**原文链接**: [https://www.zachtronics.com/exapunks/](https://www.zachtronics.com/exapunks/)

**《Exapunks》游戏概述（2018年）**

《Exapunks》是Zachtronics于2018年推出的一款黑客题材解谜游戏。故事设定在1997年，玩家扮演一名感染了噬菌体的前黑客，通过参与黑客任务换取救命药剂。玩法核心是编写EXA（执行代理）程序，使其侵入网络、复制、删除文件并全身而退。玩家需要入侵多种目标：银行、大学、电视台、游戏机，甚至自己的身体。

游戏通过虚构的地下杂志《TRASH WORLD NEWS》提供详尽教程。除主线谜题外，玩家还可解锁纸牌游戏《ПАСЬЯНС》、配对游戏《HACK*MATCH》，或者为TEC Redshift自制游戏——这一切都需通过入侵相应系统实现。

实体豪华版已售罄，但按需印刷的杂志套装（共两期）可在Lulu平台以7美元加运费购得。此外，2018年7月发布的《Axiom VirtualNetwork+》工具允许玩家利用JavaScript API函数自定义谜题，涵盖主机、文件、寄存器和目标逻辑的设置。

---

## 2. 自Linux 6.9版本起，LUKS挂起操作不再清除内存中的磁盘加密密钥。

**原文标题**: Since Linux 6.9, LUKS suspend stopped wiping disk-encryption keys from memory

**原文链接**: [https://mathstodon.xyz/@iblech/116769502749142438](https://mathstodon.xyz/@iblech/116769502749142438)

**英戈·布莱希施密特发布的Mastodon文章摘要：**

自Linux内核版本6.9起，`systemd-cryptsetup`在LUKS加密磁盘的挂起流程中，已不再在系统进入待机（睡眠）模式前正确清除系统内存中的加密密钥。这是一项重大的安全降级，因为旧行为确保了密钥材料在睡眠前被从RAM中清除，以防范（例如）冷启动攻击或未经授权的内存读取。此变更实际意味着，在默认配置下，加密密钥现会在Linux 6.9及更新内核的挂起期间持续驻留内存。依赖安全挂起工作流程的用户（例如结合`systemd-cryptsetup`使用LUKS的用户）应注意，密钥已不再被可靠地从内存中移除。文章指出，这是一个重要问题，可能需要手动配置或内核版本管理，才能恢复先前的安全状态。

---

## 3. PeerTube是一个免费、去中心化且联邦制的视频平台

**原文标题**: PeerTube is a free, decentralized and federated video platform

**原文链接**: [https://github.com/Chocobozzz/PeerTube](https://github.com/Chocobozzz/PeerTube)

**PeerTube 简介**

PeerTube 是由 Framasoft 开发的免费、去中心化、联合式视频平台，旨在替代 YouTube 和 Vimeo 等集中式服务。它运行在由社区拥有、无广告的实例网络上，这些实例可相互操作，消除了供应商锁定。

**主要特点：**
- **视频与直播：** 上传和流式传输视频，或举办直播活动，且内容可在整个联邦宇宙中被发现。
- **联合关注：** 无需在特定实例上拥有账户，即可关注 PeerTube、Mastodon、Pleroma 或 RSS 源上的创作者。
- **可定制界面：** 用户和管理员可更改颜色、修改客户端，避免数据挖掘或算法操控（“无黑暗模式 UX，无垃圾视频推荐™”）。
- **社区负载分担：** 利用 P2P WebRTC 技术供访客使用，并通过实例间缓存来分发带宽，使小型实例也能触达更广泛的观众。
- **创作者支持：** 简单的捐赠按钮取代了按次付费和广告。

**参与贡献：** 非程序员可通过反馈、错误报告、翻译或文档编写提供帮助。社区频道包括 Matrix/Discord 和论坛。

**自托管：** 提供生产环境部署指南，并有适用于 YunoHost 和 Docker 的社区包。硬件需求在常见问题解答中说明。

**文档与许可：** 提供全面的用户、管理员、工具和技术文档。代码遵循 GNU AGPL v3.0 许可，标识遵循 CC BY-SA 4.0 许可。

**总结：** PeerTube 赋能社区掌控自己的视频托管，培育了一个去中心化、无广告且具备强大隐私与互操作性的生态系统。

---

## 4. Podman v6.0.0

**原文标题**: Podman v6.0.0

**原文链接**: [https://blog.podman.io/2026/07/introducing-podman-v6-0-0/](https://blog.podman.io/2026/07/introducing-podman-v6-0-0/)

**Podman v6.0.0 版本发布概要**

Podman v6.0.0 于 2026 年 7 月 2 日发布，是一个专注于核心基础设施现代化、安全增强及用户体验优化的重大版本。

**主要亮点包括：**
- **现代化网络：** 从 slirp4netns/iptables 迁移至 Netavark、Pasta 及 nftables。实验性支持 Pesto 无根端口转发，可在自定义网络上为无根容器保留正确的源 IP 地址。
- **增强的 `podman machine`：** 无缝多提供商支持，新增 `podman machine os update` 命令，便于更轻松地更新 VM 环境。
- **Quadlet 全面改进：** 主要改进包括 REST API 支持、更优的文件跟踪、扩展的 `.volume` 单元功能以及用于打包的额外搜索路径。
- **配置文件变更：** 更新处理流程，以实现更顺畅的多用户管理。
- **Docker 兼容性：** 更新 Docker API 支持，优化命令输出，便于迁移。

该版本已发布至 GitHub，并正逐步向各包管理器推送。团队感谢贡献者，并鼓励用户尝试新功能。

---

## 5. 闪电内存映射数据库管理器（LMDB）1.0

**原文标题**: Lightning Memory-Mapped Database Manager (LMDB) 1.0

**原文链接**: [http://www.lmdb.tech/doc/](http://www.lmdb.tech/doc/)

**闪电内存映射数据库管理器（LMDB）1.0 概述**

LMDB 是一个基于 Btree 的高性能嵌入式数据库库，以 BerkeleyDB 为蓝本但更为简洁。它将整个数据库暴露为内存映射，允许直接从映射内存中获取数据而无需 malloc 或 memcpy，从而实现了极高的效率与性能。

主要特性包括完整的 ACID 事务支持、写时复制策略（不覆盖活动页面）以及多版本并发控制。写入操作完全串行化（每次仅允许一个写事务），从而避免死锁。读取器与写入器互不阻塞，因为读取器无需加锁即可运行。无需预写日志或定期压缩；LMDB 通过重用空闲页面来防止数据库无限增长。

**注意事项与限制：**
- 因程序异常中止产生的过期读取器事务可能导致数据库膨胀；请定期使用 `mdb_reader_check` 或 `mdb_stat`。
- 在 BSD/SysV/POSIX 信号量系统上，信号量所有权可能阻塞多个用户。
- 每个线程只允许一个事务（使用 `MDB_NOTLS` 的只读事务除外）。
- 请勿在单个进程中两次打开同一数据库；避免使用远程文件系统。
- 应避免长时间运行的事务，以防止数据库增长或写入阻塞。
- 挂起或中止含有活跃事务的进程可能引发问题；请定期检查过期读取器。

作者：Howard Chu，Symas Corporation。基于 OpenLDAP 公共许可证授权。衍生自 Martin Hedenfalk 的 btree.c。

---

## 6. Vulkan现已可在NetBSD上使用

**原文标题**: Vulkan is now available on NetBSD

**原文链接**: [https://github.com/segaboy/vulkan-netbsd](https://github.com/segaboy/vulkan-netbsd)

**摘要：** 一名开发者已成功使用 Mesa 的 Lavapipe 驱动将 Vulkan 软件支持移植到 NetBSD 10.1 (amd64)，使 NetBSD 成为最后一个获得 Vulkan 功能的主流 BSD 系统。

该项目提供了一个可正常工作的 Lavapipe 驱动构建（`libvulkan_lvp.so`，约 17 MB），该驱动能够正确安装和注册，并声明支持 Vulkan API 1.4。不过，由于 Vulkan 加载器（`libvulkan.so.1`）仍需构建，运行时执行尚未得到验证。

主要成就：
- 从全新最小化安装实现完整的端到端自动构建
- 依赖项通过源码（glslang）和 pkgsrc（LLVM 19.1.7）构建
- 构建脚本支持中断后恢复
- 预构建二进制分发管道已就绪（待发布机器设置）
- 仍有一个已知解决方案：使用 `-Wno-error=format` 来处理 GCC 在 NetBSD 上拒绝 Mesa 的 `%m` 格式说明符的问题

该项目目标是将修复最终上游提交至 Mesa 和 pkgsrc，并提供易于安装的软件包。当前状态为测试版——构建和安装可正常工作，但尚不能运行 Vulkan 应用程序。仓库包含文档、脚本以及采用 MIT 许可的代码库，第三方组件保留其自身许可。

---

## 7. 安卓开发者验证：以保护为伪装的威胁

**原文标题**: Android Developer Verification: Threat masquerading as protection

**原文链接**: [https://f-droid.org/2026/07/01/adv-malware.html](https://f-droid.org/2026/07/01/adv-malware.html)

**摘要：**

文章声称谷歌的“安卓开发者验证”（ADV）项目是伪装成保护措施的“特洛伊木马”，它将阻止安卓8及以上版本设备上未经批准的应用程序运行。文中指责谷歌通过Play Protect传播这种“病毒”，并称ADV一旦激活，其目标就是屏蔽那些未获得谷歌集中批准的开发者所开发的软件。

文章批评ADV的设立理由——防止恶意软件再犯——只是谷歌成为安卓应用程序唯一守门人的借口。文中指出，该项目的服务条款缺乏对“恶意软件”的定义，实际上赋予了谷歌单方面封禁任何其不喜欢的软件（如广告拦截器）的权力。作者认为，开发者采用该项目是被迫而非自愿的，并引用了相关请愿书以及电子前哨基金会、自由软件基金会和美国公民自由联盟等组织的反对意见。

文章警告称，ADV的封锁行动将于9月30日在巴西、印度尼西亚、新加坡和泰国启动，并在“2027年及以后”在全球范围内推广。文章还提出了一些未解答的问题，涉及对F-Droid、第三方应用安装、数据检索及遥测报告的影响。该文主张采用开源透明的安全模式，而非谷歌“相信我”的所谓安全模式。

---

## 8. 如何向不认识你的人寻求帮助

**原文标题**: How to ask for help from people who don't know you

**原文链接**: [https://pradyuprasad.com/writings/how-to-ask-for-help/](https://pradyuprasad.com/writings/how-to-ask-for-help/)

**如何向陌生人求助**

本文认为，求助是一种可习得的技能，而非天生的魅力。核心原则是设身处地为对方着想——关注对方，而非自己。

**1. 建立可信度（以人为本）：** 帮助关乎个人，而非项目。通过**工作成果**（如训练好的模型、有深度的博文）展示你的认真态度，证明你值得被帮助。谨慎使用**熟人关系**（如“Steve让我联系你”），因为你在借用对方信誉。避免单纯依赖**机构信誉**（如名校），这更多体现身份而非实质。

**2. 提供简洁背景：** 明智使用对方给予的关注。用尽可能少的语言说明处境，并将其与对方已有的知识或优先事项关联（如将你的社团与议员的立法目标挂钩）。让你的描述简短到“无法被概括”。

**3. 让请求易于接受：** 降低对方说“好”的成本。请求要**小**（如20分钟，而非审阅稿件）、**具体**（请求资源，而非“讨教经验”）、**低阻力**（为引荐写好介绍词；用文字提问）。保持**界限**（一次性求助，而非持续指导）。

**4. 让对方轻松说“不”：** 被迫的“好”比“不”更糟。优雅接受拒绝并继续前行。胁迫或愧疚会毒害未来交往。自由给予的帮助才能建立真诚关系。

**警示：** 永不撒谎。你的诚信是所有请求的基石。

---

## 9. JEP 539：JVM中的严格字段初始化进入预览阶段

**原文标题**: JEP 539: Strict Field Initialization in the JVM moved to preview

**原文链接**: [https://openjdk.org/jeps/539](https://openjdk.org/jeps/539)

**JEP 539：JVM 中的严格字段初始化（预览）** 引入了一种新的虚拟机级机制，防止字段在显式初始化之前被读取，从而消除像 `0` 或 `null` 这样的默认值。这是一个预览特性，需通过 `--enable-preview` 启用，并在类文件中以新的 `ACC_STRICT_INIT` 标志（0x0800）标记。

**主要动机：** 默认值可能掩盖错误（例如从未初始化字段读取 `null`）并导致不一致，尤其是在类初始化时的循环依赖场景中（如 `App`/`Log` 示例所示）。严格初始化确保每次读取都能观察到之前已写入的值，而对于 `final` 字段，每次读取返回相同的值。

**工作原理：** 对于**静态字段**，JVM 会跟踪每个字段在“幼虫”（初始化中）状态是否已被设置或读取。读取未设置的严格初始化字段会抛出异常；读取后再次写入也会抛出异常。在类完成初始化之前，所有这些字段都必须被设置。对于**实例字段**，适用类似规则：字段必须在调用 `super()` 之前初始化，而 `final` 字段在 `super()` 之后不可被修改。

**用例：** 该特性为未来的 Java 语言特性（如需要一致 `final` 字段的值类和不能使用 `null` 作为默认值的空受限字段）奠定基础。同时，非 Java 的 JVM 语言编译器也可使用该特性。

**影响：** 严格字段初始化通过加强对微妙初始化错误的防御来提升程序完整性，并允许 JIT 编译器优化可信的 `final` 字段，从而可能提高性能。

---

## 10. Postgres事务是分布式系统的超能力

**原文标题**: Postgres transactions are a distributed systems superpower

**原文链接**: [https://www.dbos.dev/blog/co-locating-workflow-state-with-your-data](https://www.dbos.dev/blog/co-locating-workflow-state-with-your-data)

**摘要：**  
本文主张将工作流状态与应用程序数据共存于单个Postgres数据库中，可简化幂等性和原子性等分布式系统挑战。通过利用数据库事务，工作流引擎能够原子化更新应用程序数据并记录工作流检查点，从而消除部分失败及手动实现幂等逻辑的需求。例如，执行银行账户贷记步骤时可实现**精确一次**执行，因为数据库更新与检查点提交共同完成——若失败则整体回滚。  

类似地，事务性发件箱模式得以简化：无需单独的发件箱表及轮询流程，Postgres的用户自定义函数（UDF）可在与应用程序更新相同的事务中完成工作流入队。这确保了原子性——要么数据更新与工作流入队同时完成，要么两者均不执行。随后由工作进程异步执行工作流。  

总之，本文提倡将基于数据库的持久化执行作为独立工作流引擎的更简单、更可靠的替代方案，从而降低运维复杂性与边界情况处理成本。

---

## 11. 发布HN：Manufact（YC S25）—— MCP云

**原文标题**: Launch HN: Manufact (YC S25) – MCP Cloud

**原文链接**: [https://manufact.com](https://manufact.com)

**Manufact (YC S25) 发布 MCP Cloud 平台摘要**

Manufact 推出名为 "MCP Cloud" 的综合云平台，用于构建、部署和管理 MCP（模型上下文协议）应用及服务器。该平台提供 **mcp-use SDK**，这是一款全栈框架，支持为 ChatGPT、Claude、Gemini 及编程智能体等 AI 界面进行开发。

**核心特性：**
- **脚手架搭建**：可从 SDK、模板或“氛围”（描述你的应用并观察代码自动生成）开始。
- **部署**：通过 GitHub App 实现一键自动部署，支持按分支预览和自定义域名。
- **测试与发布**：支持跨客户端测试、自动生成市场提交清单，并内置嵌入式聊天功能以便公开分享。
- **监控**：配备 Cloud Inspector 用于调试、会话重放、分析及生产环境可观测性。
- **生态系统**：开源（SDK 下载量超 700 万，GitHub 星标超 1 万），集成 LangChain、Vercel AI SDK 等。

Manufact 定位为“MCP 领域的 Vercel”，省去了拼凑服务器代码、UI、托管、认证和扩展等独立工具的麻烦。该平台由 Y Combinator（YC S25）支持，已被 NASA 和 LangChain 等顶级公司及知名开发者使用。用户称赞其简洁性、灵活性以及从 git 推送部署到应用上线不超过 60 秒的能力。

---

## 12. 西班牙下令将Palantir列入公共和私营企业黑名单

**原文标题**: Spain Orders Blacklist of Palantir from Public and Private Companies

**原文链接**: [https://clashreport.com/world/articles/spain-orders-blacklist-of-us-tech-giant-palantir-from-public-and-private-companies-fsnc2z17gjv](https://clashreport.com/world/articles/spain-orders-blacklist-of-us-tech-giant-palantir-from-public-and-private-companies-fsnc2z17gjv)

西班牙政府已将美国数据分析公司帕兰泰尔科技列入所有公共及国有控股企业的合作黑名单，理由是担心机密国家安全信息可能被滥用。已向国家工业参股公司（SEPI）监管的实体（包括西班牙电信、英德拉公司及军用造船商纳万蒂等大型企业）发出指令，要求停止与帕兰泰尔签订任何未来合约。这项政治干预已中断多个先进采购项目，包括与纳万蒂公司接近敲定的协议以及与国民警卫队的合作协定。

此举紧随欧洲其他国家的类似抵制行动：法国近期终止了与帕兰泰尔的合作，德国则更倾向选择欧洲本土替代方案。尽管面临广泛禁令，帕兰泰尔仍持有与西班牙国防部价值1650万欧元的现行合同，该合同将于2026年11月到期。军方高层基于作战优势考量曾游说续约，但政府尚未作出决定。

此次黑名单出台恰逢西班牙首相佩德罗·桑切斯与美国新一届政府之间的地缘政治紧张时期，因帕兰泰尔创始人与唐纳德·特朗普关系密切。作为回应，西班牙正加速投资本土技术平台，包括向加泰罗尼亚企业Openchip注资1.15亿欧元，该笔投资属于一项旨在维护国家数据主权的50亿欧元政府扶持项目。

---

## 13. 日本最高法院裁定：人工智能不得列为专利申请发明人

**原文标题**: AI can't be listed as inventor on patent applications, Japan's top court rules

**原文链接**: [https://japannews.yomiuri.co.jp/science-nature/technology/20260306-314930/](https://japannews.yomiuri.co.jp/science-nature/technology/20260306-314930/)

无法访问文章链接。

---

## 14. 不要在依赖项中包含LLM代码

**原文标题**: No LLM Code in Dependencies

**原文链接**: [https://joeyh.name/blog/entry/no_LLM_code_in_dependencies/](https://joeyh.name/blog/entry/no_LLM_code_in_dependencies/)

作者描述了过去一个月花费100小时，确保**git-annex**能够在不依赖包含LLM生成代码的依赖项的情况下构建。他们指出，为审查整个依赖树中是否存在此类代码而持续承受着负担。

主要发现包括：
- 大量由LLM生成的更改在后续版本中被无故撤销。
- 一条1489行、语无伦次的提交信息，包含对26000行代码库做出的10000行更改。
- 一条提示词从另一个项目复制了代码，险些构成版权侵权。

作者承认这一努力可能徒劳无功，并指出**软件自由保护组织**已经放弃，且怀疑**自由软件基金会**会采取行动。他们认为唯一的积极收获是获得了更多关于依赖质量的信息，以便未来决策。

作者表达了对开源社区的失望，尤其是当开发者利用LLM格式化代码、提交结果并声称实现10倍生产力时。在某个案例中，这种行为导致作者退出了该项目的合作。

文章最后呼吁开发者考虑将LLM生成的代码纳入依赖项所产生的更广泛影响。

---

## 15. 德国纽扣制造商在美国中西部河流中搜寻珍稀贝壳

**原文标题**: German button maker searched rivers of American Midwest for valuable shells

**原文链接**: [https://www.smithsonianmag.com/smithsonian-institution/how-one-german-button-maker-searched-the-rivers-of-the-american-midwest-for-the-shells-that-could-make-him-a-fortune-180989012/](https://www.smithsonianmag.com/smithsonian-institution/how-one-german-button-maker-searched-the-rivers-of-the-american-midwest-for-the-shells-that-could-make-him-a-fortune-180989012/)

**摘要：**

19世纪中期，德国纽扣制造商约翰·贝普尔认识到美国中西部淡水贻贝壳用于制作高品质珍珠纽扣的价值。1880年代移民美国后，他最终定居于爱荷华州马斯卡廷，并于1891年开始生产纽扣。到1905年，该镇年产纽扣达15亿颗，推动了经济繁荣，但因过度捕捞导致当地贻贝种群遭受毁灭性打击。

蛤蜊捕捞者采用多种方法采集贻贝，工厂从贝壳上钻取圆形“毛坯”，常将带孔残壳弃回河流。随着更廉价的塑料纽扣兴起，以及河流筑坝和污染造成的环境破坏，该行业逐渐衰落。尽管如此，纽扣热潮催生了早期保护工作，包括1908年建立的费尔波特生物研究站。

贝普尔于1912年因脚部被贻贝壳割伤后感染去世。如今，淡水贻贝仍处于濒危状态，但相关法规已帮助部分物种恢复。这一故事是关于资源开发的警示，并凸显了从过去错误中汲取教训的重要性。

---

## 16. 求职者放弃：劳动力参与率降至50年来最低

**原文标题**: Job seekers giving up: Labor force participation falls to lowest in 50 years

**原文链接**: [https://www.cnbc.com/2026/07/02/job-seekers-giving-up-labor-force-participation-rate-falls-to-lowest-in-50-years-outside-of-covid-era.html](https://www.cnbc.com/2026/07/02/job-seekers-giving-up-labor-force-participation-rate-falls-to-lowest-in-50-years-outside-of-covid-era.html)

**摘要：**  
该报道指出，美国6月劳动参与率降至61.5%，为2021年3月以来最低，剔除疫情时期更是50年来新低。 headline失业率虽降至4.2%，但这源于劳动者"大规模退出"而非岗位增加。  

关键数据：  
- 6月劳动力规模减少72万人  
- 非劳动力人口增加83.2万人  
- 家庭调查显示就业人数减少50.7万，而机构调查（统计岗位数）仅新增5.7万  
- 就业人口比降至59%，为2021年10月以来最低  

经济学家将下降归因于退休及求职者放弃等多重因素。值得注意的是，25-54岁黄金年龄段劳动参与率下降0.6个百分点至83.3%，否定了"仅有退休者离场"的说法。部分经济学家警示，6月数据可能存在噪音，但长期趋势堪忧，表明就业岗位有限背景下劳动力正在萎缩。

---

## 17. Kimi K2.7 代码现已普遍可在 GitHub Copilot 中使用。

**原文标题**: Kimi K2.7 Code is generally available in GitHub Copilot

**原文链接**: [https://github.blog/changelog/2026-07-01-kimi-k2-7-is-now-available-in-github-copilot/](https://github.blog/changelog/2026-07-01-kimi-k2-7-is-now-available-in-github-copilot/)

**概要：**

Kimi K2.7 Code，一个开源权重AI模型，现已作为可选模型在GitHub Copilot中正式上线。它是Copilot模型选择器中首个提供的开源权重模型，为用户带来更多选择的同时，也提供了更低成本的编码选项。该模型由GitHub托管于Microsoft Azure上，并按提供商列表价格基于使用量计费。

该功能将逐步向Copilot Pro、Pro+ 和 Max 计划用户推出，用户可在 Visual Studio Code（1.127.0+）、Visual Studio（17.14.6+）、Copilot CLI、cloud agent、GitHub Copilot App、GitHub.com、GitHub Mobile、JetBrains（1.9.1-251+）、Xcode 和 Eclipse 的模型选择器中选用。Copilot Business 和 Enterprise 计划及其他平台的推出将在未来几周内跟进。

对于 Copilot Business 和 Enterprise 计划，该模型默认关闭。组织管理员必须先在 Copilot 设置中启用该模型，用户才能访问。GitHub 建议管理员在启用前，根据自身的安全、合规及数据治理要求对开源权重模型进行评估。

用户可查阅 GitHub 文档了解所有可用模型，并在 GitHub 社区讨论中分享反馈。

---

## 18. 展示HN：基于嵌入模型的非精确代码重复检测命令行工具

**原文标题**: Show HN: CLI tool for detecting non-exact code duplication with embedding models

**原文链接**: [https://github.com/rafal-qa/slopo](https://github.com/rafal-qa/slopo)

**Slopo：检测非精确代码重复的CLI工具**

Slopo是一款轻量级CLI工具，利用嵌入模型检测非精确代码重复，专攻分散在不同模块或大型文件中难以发现的重复代码。

**支持语言：** Python、TypeScript、JavaScript、Java、Kotlin、C#、Go、Rust

**工作原理：** 为每个代码单元计算嵌入向量，查找嵌入向量相近的代码对，将其按相似度和代码库距离分组聚类。输出结果可作为AI编码智能体的输入，用于验证和标记真实重复。

**快速上手：** 通过 `uv tool install slopo` 安装，运行 `slopo init` 生成配置文件，设置嵌入模型（例如通过LiteLLM使用Voyage AI），然后依次执行 `slopo index`、`slopo embed` 和 `slopo analyze`。

**工作流程：** 支持增量重新索引、排除目录/测试文件，并提供已审查聚类的忽略文件。配置文件（不含API密钥）可提交至Git。

**关键配置项：** 相似度阈值（余弦距离）、重新排序阈值（含距离加权）以及代码主体节点数量阈值（基于AST的最小复杂度要求）。

**精确副本：** 以合并条目形式报告，显示所有包含相同代码的路径，并分别统计含精确副本和不含精确副本的相似度指标。

---

## 19. 一层就够了吗？单层Transformer媲美全参数强化学习训练

**原文标题**: Is One Layer Enough? A Single Transformer Layer Matches Full-Parameter RL Train

**原文链接**: [https://arxiv.org/abs/2607.01232](https://arxiv.org/abs/2607.01232)

**摘要：**

本文探究了强化学习（RL）适应过程在大语言模型（LLM）各Transformer层中的分布情况。研究者挑战了在RL后训练阶段统一更新所有模型参数的常见做法，开展了系统性的逐层研究。他们得出了一个令人惊讶的发现：仅训练单个Transformer层，就能恢复全参数RL训练所带来的大部分收益，有时甚至能超越后者。

为量化这一现象，他们引入了“层贡献度”概念，用以衡量单独训练某一层所能恢复的全参数RL改进的比例。在七个模型（Qwen3、Qwen2.5）、三种RL算法（GRPO、GiGPO、Dr. GRPO）以及多项任务（数学推理、代码生成、智能体决策）中，他们观察到了一个稳定的模式：RL的收益高度集中于一小部分——通常仅为单个——Transformer层。高贡献度的层始终出现在Transformer堆叠的中部，而靠近输入和输出端的层贡献则显著较小。各层的贡献度排序在数据集、任务、模型系列及RL算法之间均保持高度相关性。

---

## 20. 黑兹尔（YC W24）正在为我们的最大政府合同招聘人才

**原文标题**: Hazel (YC W24) Is Hiring for Our Largest Government Contract

**原文链接**: [https://www.ycombinator.com/companies/hazel-2/jobs/3epPWgu-full-stack-engineer-ts-sci](https://www.ycombinator.com/companies/hazel-2/jobs/3epPWgu-full-stack-engineer-ts-sci)

**摘要：Hazel（YC W24）诚聘政府合同岗位**

Hazel 是一家由人工智能驱动的政府采购初创公司，现招聘一名 **全栈工程师（TS/SCI）**，负责为一项重大美国政府合同部署和扩展其平台。工作地点位于华盛顿特区、纽约或美国境内远程办公，薪资范围为 **15万至20万美元**，并提供 **0.25%至0.75%的股权**。

**主要职责：**
- 架构并构建 Hazel 平台，专注于安全、AI驱动的采购解决方案。
- 在机密环境中部署和扩展 AI 工具，负责安全认证和定制化工作。
- 在华盛顿特区现场办公，负责机密网络部署（差旅占25%，费用全包）。
- 与客户合作，确定功能优先级并优化工程流程。

**任职

**加入理由：**
- 使命驱动：利用 AI 推动政府采购现代化（每年2.7万亿美元的挑战）。
- 与创始人和充满活力的团队直接合作。
- 首家赢得该客户合作的初创公司；主导产品部署。
- 福利包括优厚的健康保险/401(k)、无限带薪休假及搬迁补助。

Hazel 是一家专注于公共利益的平等机会雇主。

---

## 21. 《鸡蛋黑帮》因价格操纵被罚，但非法获利是罚款的千倍

**原文标题**: The Egg Bandits Made a Thousand Times the Fine They Just Paid for Price Fixing

**原文链接**: [https://www.thebignewsletter.com/p/crime-pays-the-egg-bandits-made-a](https://www.thebignewsletter.com/p/crime-pays-the-egg-bandits-made-a)

**摘要：**

本文详述了2022年至2025年间，美国主要鸡蛋生产商（Cal-Maine、Versova、Hickman's）利用禽流感危机操纵价格、合谋定价的阴谋。这些公司通过提交虚假竞标、在鸡蛋清算所执行虚假交易等方式操纵Urner Barry批发价格基准，虚假传递高需求信号，从而推高与沃尔玛等主要买家的合同价格，仅Cal-Maine一家就获得了超过30亿美元的超额利润。这一合谋直到2025年3月司法部展开调查后才告终止，导致鸡蛋价格回落。

尽管有确凿证据——包括CEO之间开玩笑称操纵市场“就像芝加哥人投票一样”的电子邮件和短信——和解方案仅处以微不足道的300万美元罚款，并要求向食品银行捐赠5300万枚鸡蛋。涉案公司未承认任何不当行为，从而使其免于民事诉讼。作者谴责这一和解方案如同闹剧，指出合谋者赚取的利润是罚款金额的一千倍。文章揭示了精英阶层对疫情期间价格操纵行为的否认，与公众直觉形成鲜明对比，并批评特朗普政府执法不力。虽然反垄断行动确实拉低了价格，但结果凸显出企业合谋依然有利可图，且几乎无需承担后果。

---

## 22. 定理经济的衰落

**原文标题**: The fall of the theorem economy

**原文链接**: [https://davidbessis.substack.com/p/the-fall-of-the-theorem-economy](https://davidbessis.substack.com/p/the-fall-of-the-theorem-economy)

本文认为，当前数学界的“荣誉准则”——优先重视定理证明而轻视概念性工作——在结构上极易受到人工智能的冲击，而人工智能的崛起或将摧毁这一体系。

作者大卫·贝西斯将“官方数学”（形式演绎）与“秘密数学”（人类建立概念时的直觉过程）加以对比。他以自身经历说明：其最重要的贡献并非某个定理，而是两项定义（2.4和9.3），正是这些定义促成了后续成果。然而在现行体制下，唯有定理证明才能获得认可。

这套体系之所以有效，是因为证明困难定理曾是真正概念创新的证明。但贝西斯指出，如今将数学视为围棋或象棋这类“封闭系统”的人工智能，无需人类式的深层理解便能生成定理。这恰恰“利用”了荣誉准则的脆弱性：人工智能能用形式化证明淹没整个领域，从而贬低传统成功标准的价值。

贝西斯总结道，这将对“定理经济”构成威胁——在此经济中，数学家的职业发展与地位完全取决于证明成果。他引述威廉·瑟斯顿的观点强调，数学的真正价值在于清晰与理解，而非定理本身。他担忧，当人工智能擅长生产定理时，真正推动学科发展的人类创造性及概念性工作将被边缘化，最终可能摧毁该学科当前的社会体系与价值体系。

---

## 23. EFF就X同意令致FTC的信函（2026年7月2日）[pdf]

**原文标题**: EFF letter to FTC on X consent order (2 July 2026) [pdf]

**原文链接**: [https://cdn.arstechnica.net/wp-content/uploads/2026/07/EFF-letter-to-FTC-on-X-consent-order-7-2-26.pdf](https://cdn.arstechnica.net/wp-content/uploads/2026/07/EFF-letter-to-FTC-on-X-consent-order-7-2-26.pdf)

无法访问该文章链接。

---

## 24. 代码审查的首要目的是找出难以维护的代码。

**原文标题**: The primary purpose of code review is to find code that will be hard to maintain

**原文链接**: [https://mathstodon.xyz/@mjd/115096720350507897](https://mathstodon.xyz/@mjd/115096720350507897)

以下是文章主要观点的简要总结：

文章挑战了“代码审查的主要目的是发现错误”这一普遍认知。马克·多米纳斯认为，代码审查的真正目的在于识别未来难以维护的代码。他发现，错误检测的实际价值相对较小，因为大多数错误要么能被自动化测试捕获，要么会在生产环境中迅速暴露。真正的价值在于提升代码长期的可读性、结构性和模块化程度。所谓“难以维护”的代码，包括复杂逻辑、命名不清或抽象设计不当等问题。这些问题若不加以解决，将增加技术债务并拖慢后续开发进度。通过聚焦可维护性，代码审查能促进团队纪律与知识共享。多米纳斯强调，审查者应优先思考代码是否便于其他开发者理解和修改，而非仅检查当前的正确性。这种视角的转换，有助于团队持续构建更可持续的软件。

---

## 25. Show HN：ZeroFS – 一种面向S3的日志结构文件系统

**原文标题**: Show HN: ZeroFS – A log-structured filesystem for S3

**原文链接**: [https://www.zerofs.net/](https://www.zerofs.net/)

ZeroFS 是一款日志结构文件系统，专为兼容S3的对象存储设计，可通过NFS和9P协议将这些存储桶挂载为POSIX文件系统，或通过NBD协议挂载为原始块设备。其核心采用日志结构引擎，写入操作会创建不可变对象，而碎片整理可回收已删除数据。数据在上传前会进行压缩和加密，热读取则通过本地缓存实现微秒级响应。

主要特性包括：
- **协议支持**：NFS、9P和NBD，三者可在同一进程中针对同一存储桶同时运行。
- **测试验证**：持续集成流程涵盖pjdfstest、xfstests、内核编译、stress-ng压力测试、ZFS校验及Jepsen故障转移套件。
- **地理分布**：支持跨多个S3区域创建ZFS镜像以实现高可用性。
- **功能特性**：始终开启的加密（XChaCha20-Poly1305）、压缩（zstd/lz4）、缓存、检查点、只读副本、TRIM支持、不可变段、可靠fsync及自动备用故障转移的高可用性。
- **Web界面**：可选控制台，集成文件管理器、仪表盘和终端。
- **性能表现**：热随机读取达1.6微秒，小写入平均延迟0.83毫秒，支持高达16EiB的文件系统。

---

## 26. VictoriaLogs 如何以列式布局存储您的日志

**原文标题**: How VictoriaLogs Stores Your Logs in a Columnar Layout

**原文链接**: [https://victoriametrics.com/blog/victorialogs-internals-columnar-storage-on-disk/index.html](https://victoriametrics.com/blog/victorialogs-internals-columnar-storage-on-disk/index.html)

**概述**

VictoriaLogs 采用**列式布局**存储日志数据，以优化时间序列日志分析的压缩率、查询速度及存储效率。与传统基于行的存储（如 Elasticsearch）不同，列式存储按字段（如时间戳、消息、级别）而非按日志条目对数据进行分组。

**关键要点：**

- **列式压缩** – 每列存储相同数据类型，可实现高压缩比（例如，`message`字符串使用 ZSTD 或 LZ4 压缩效果良好），从而降低磁盘占用和I/O开销。
- **每字段独立列** – 像`timestamp`、`host`、`level`和`message`这样的字段存储在专用列中，使得查询仅需扫描相关列，跳过无关字段。
- **高效查询** – 仅从磁盘读取查询所需的列。例如，按`level: error`过滤时，仅扫描`level`列，而非整个日志条目，从而大幅提升聚合与搜索速度。
- **基于时间分区** – 日志被分组为不可变的列式小块（例如按小时划分），便于快速按时间范围过滤以及高效删除旧数据。
- **写入优化** – 数据首先缓存在内存中，随后刷新到磁盘上的列式块中，在快速写入与压缩就绪的查询存储之间取得平衡。
- **低内存占用** – 列式格式使 VictoriaLogs 仅需将索引元数据保留在内存中，而数据则留存在磁盘上。

总体而言，VictoriaLogs 的列式方法实现了**高压缩率**、**快速查询性能**和**低资源消耗**，使其非常适合高容量日志存储与实时分析。

---

## 27. 展示HN：一款在浏览器中生成矢量PDF的方格纸生成器

**原文标题**: Show HN: A graph paper generator that renders vector PDFs in the browser

**原文链接**: [https://freegraphpaper.net/](https://freegraphpaper.net/)

本文介绍了一款基于网页的工具，可直接在浏览器中生成可打印的免费矢量PDF格式方格纸，无需登录且不含水印。

用户可选择经典方格纸（公制与英制）、点阵纸、等距网格、六边形网格、横线纸或康奈尔笔记纸等热门模板。该工具还支持完全自定义纸张类型、间距、颜色和页边距。

操作流程仅需三步：选择或自定义模板、实时预览真实比例、下载高清PDF（或PNG）。为确保准确打印，建议用户按100%比例打印。

该生成器支持全面的纸张尺寸，涵盖全套ISO A、B、C系列，以及Letter、Legal、Tabloid等美式/英制尺寸，还包括多种Arch和ANSI规格。

文章最后附有常见问题解答，解释何为方格纸、确认服务免费、提供正确打印建议，并列举常用间距选项（如5毫米、1厘米、1/4英寸）。

---

## 28. WinPE 作为 Windows 驱动测试与模糊测试的无状态工具

**原文标题**: WinPE as a stateless harness for Windows driver testing and fuzzing

**原文链接**: [https://bednars.me/blog/winpe-harness](https://bednars.me/blog/winpe-harness)

本文提出使用 **Windows PE（WinPE）** 作为轻量级无状态载体，用于自动化内核驱动测试与模糊测试，解决两个关键问题：CI/CD 流水线中资源开销过高，以及动态模糊测试中状态恢复缓慢。

**要点：**

1.  **问题：** 标准 Windows 安装因包含不必要的图形组件、服务及非确定性行为，不适合自动化操作。

2.  **解决方案：** WinPE 完全在内存中启动，仅需约 512 MB 内存，以 `SYSTEM` 权限运行，且没有多余的用户态层。

3.  **启动优化：** 使用 `bcdedit` 禁用恢复功能、启动失败检查，并设置 `timeout 0`。启用测试签名（`testsigning yes`），禁用 VBS/HVCI（`hypervisorlaunchtype off`），并禁用隔离上下文（`isolatedcontext no`）以支持未签名驱动测试。

4.  **虚拟化：** 在 QEMU 中使用稳定的 **pc (i440FX)** 芯片组，以获得可预测的 PCI 拓扑。对于网络调试（KDNET），手动指定 `busparams`（例如 `0.16.0`）以匹配模拟的 e1000 设备地址（`addr=0x10`）。

5.  **确定性：** WinPE 完全幂等——所有更改都是临时性的。离线修改通过 DISM 进行。通过 `unattend.xml` 禁用网络初始化，并替换外壳（`winpeshl.ini`）以启动自定义测试代理，从而最大化启动速度。

6.  **自动化：** 终止自定义外壳会触发系统重启。使用 QEMU 的 `-no-reboot` 标志可实现干净关机。对于无头控制，可启用通过串口的 SAC 控制台（EMS）。

7.  **Hyper-V 增强：** 避免在 QEMU 中添加 `hv-*` 标志，因为它们会干扰 KDNET PCI 中断，导致调试器静默失败。

---

## 29. CursorBench 3.1

**原文标题**: CursorBench 3.1

**原文链接**: [https://cursor.com/evals](https://cursor.com/evals)

**CursorBench 3.1 摘要**

CursorBench 3.1 是一个用于比较 AI 编程模型的基准测试，评估维度为得分（性能）与每项任务的平均成本。散点/折线图显示了得分（从 41.5% 到 72.9%）与每项任务成本（约 0 至 20 美元）之间的关系。

**主要发现：**
- **最佳性能：** Fable 5 获得最高得分（最大设置下 72.9%，成本 18.02 美元），其“高”配置提供了强劲的平衡表现（70.6%，成本 10.81 美元）。
- **最高性价比：** Composer 2.5 每项任务仅需 0.55 美元，得分 63.2%；Composer 2 每项任务 0.56 美元，得分 52.2%——两者成本均远低于竞争对手。
- **中端选项：** GPT-5.5 Medium 得分 59.2%，成本 2.22 美元；Sonnet 5 High 得分 57.0%，成本 3.74 美元。
- **低成本领先者：** Gemini 3.5 Flash（49.8%，1.94 美元）与 Kimi K2.7 Code（52.7%，1.92 美元）以低成本提供了不错的得分。

**基准测试详情：**
- 3.1 版本引入了专注于代码库理解、Bug 查找、规划和代码审查的任务。
- 每项任务的成本根据各模型公布的每百万 token 定价（输入、缓存读写、输出）按任务平均计算。
- 微小得分差异可能不具有统计显著性。

**值得注意：** Fable 5 在高成本、高性能象限中占据主导地位，而 Composer 2.5 则提供了卓越的性价比。

---

## 30. Show HN：Mail Memories —— 一款从Gmail中拯救照片的桌面应用

**原文标题**: Show HN: Mail Memories – A desktop app to rescue photos from Gmail

**原文链接**: [https://mailmemories.com](https://mailmemories.com)

**摘要：邮件回忆——从Gmail中抢救照片的桌面应用**

邮件回忆是一款桌面应用（支持macOS/Windows），可扫描你的Gmail收件箱，查找并下载所有照片附件到本地。它解决了珍贵照片被埋没在邮件、新闻通讯和垃圾邮件中而被遗忘的问题。

**工作原理：** 该应用通过官方的一次性专用访问码直接连接Gmail，扫描图片（仅读取，不会修改或删除任何邮件），然后将照片按年份（例如2004年、2005年）整理到你的“图片”文件夹中。

**定价：** 免费试用（可下载最早的50张照片）。完整访问权限一次性收费29美元（限时优惠），可无限量下载原始质量的照片并保留元数据。无订阅费。其他账户的额外许可证每个14美元。

**隐私：** 100%本地处理，完全私密。无云服务器，数据绝不会经过邮件回忆的服务器。访问码保存在内存中，应用关闭时即被清除。用户可随时通过谷歌撤销访问权限。

**主要功能：** 安全、直接的Gmail连接；连接中断或电脑休眠时自动恢复；仅支持@gmail.com地址。

**创作者：** 卡洛斯，他在发现20年前已故祖母和老友被遗忘的照片后，开发了这款应用。

---

