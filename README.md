# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-07-02.md)

*最后自动更新时间: 2026-07-02 20:33:22*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 2 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 3 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 4 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 5 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 6 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 7 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 8 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 9 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 10 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 11 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 12 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 13 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 14 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 15 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 16 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 17 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 18 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 19 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 20 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 21 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 22 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 23 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 24 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 25 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 26 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 27 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 28 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 29 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 30 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 31 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 32 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 33 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 34 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 35 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 36 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 37 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 38 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 39 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 40 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 41 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 42 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 43 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 44 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 45 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 46 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 47 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 48 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 49 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 50 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 51 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 52 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 53 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 54 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 55 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 56 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 57 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 58 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 59 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 60 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 61 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 62 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 63 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 64 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 65 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 66 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 67 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 68 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 69 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 70 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 71 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 72 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 73 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 74 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 75 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 76 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 77 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 78 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 79 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 80 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 81 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 82 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 83 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 84 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 85 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 86 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 87 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 88 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 89 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 90 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 91 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 92 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 93 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 94 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 95 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 96 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 97 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 98 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 99 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 100 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 101 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 102 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 103 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 104 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 105 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 106 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 107 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 108 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 109 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 110 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 111 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 112 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 113 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 114 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 115 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 116 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 117 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 118 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 119 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 120 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 121 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 122 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 123 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 124 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 125 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 126 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 127 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 128 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 129 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 130 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 131 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 132 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 133 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 134 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 135 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 136 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 137 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 138 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 139 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 140 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 141 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 142 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 143 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 144 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 145 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 146 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 147 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 148 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 149 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 150 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 151 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 152 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 153 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 154 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 155 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 156 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 157 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 158 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 159 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 160 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 161 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 162 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 163 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 164 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 165 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 166 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 167 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 168 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 169 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 170 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 171 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 172 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 173 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 174 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 175 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 176 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 177 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 178 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 179 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 180 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 181 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 182 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 183 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 184 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 185 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 186 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 187 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 188 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 189 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 190 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 191 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 192 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 193 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 194 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 195 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 196 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 197 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 198 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 199 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 200 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 201 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 202 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 203 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 204 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 205 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 206 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 207 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 208 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 209 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 210 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 211 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 212 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 213 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 214 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 215 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 216 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 217 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 218 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 219 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 220 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 221 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 222 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 223 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 224 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 225 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 226 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 227 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 228 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 229 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 230 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 231 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 232 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 233 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 234 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 235 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 236 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 237 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 238 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 239 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 240 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 241 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 242 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 243 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 244 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 245 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 246 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 247 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 248 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 249 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 250 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 251 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 252 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 253 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 254 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 255 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 256 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 257 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 258 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 259 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 260 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 261 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 262 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 263 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 264 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 265 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 266 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 267 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 268 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 269 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 270 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 271 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 272 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 273 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 274 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 275 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 276 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 277 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 278 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 279 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 280 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 281 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 282 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 283 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 284 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 285 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 286 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 287 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 288 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 289 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 290 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 291 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 292 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 293 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 294 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 295 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 296 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 297 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 298 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 299 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 300 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 301 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 302 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 303 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 304 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 305 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 306 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 307 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 308 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 309 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 310 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 311 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 312 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 313 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 314 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 315 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 316 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 317 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 318 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 319 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 320 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 321 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 322 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 323 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 324 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 325 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 326 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 327 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 328 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 329 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 330 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 331 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 332 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 333 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 334 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 335 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 336 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 337 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 338 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 339 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 340 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 341 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 342 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 343 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 344 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 345 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 346 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 347 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 348 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 349 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 350 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 351 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 352 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 353 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 354 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 355 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 356 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 357 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 358 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 359 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 360 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 361 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 362 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 363 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 364 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 365 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 366 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 367 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 368 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 369 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 370 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 371 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 372 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 373 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 374 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 375 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 376 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 377 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 378 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 379 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 380 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 381 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 382 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 383 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 384 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 385 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 386 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 387 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 388 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 389 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 390 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 391 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 392 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 393 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 394 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 395 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 396 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 397 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 398 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 399 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 400 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 401 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 402 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 403 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 404 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 405 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 406 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 407 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 408 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 409 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 410 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 411 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 412 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 413 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 414 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 415 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 416 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 417 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 418 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 419 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 420 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 421 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 422 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 423 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 424 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 425 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 426 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 427 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 428 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 429 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 430 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 431 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 432 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 433 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 434 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 435 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 436 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 437 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 438 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 439 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 440 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 441 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 442 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 443 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 444 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 445 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 446 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 447 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 448 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 449 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 450 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 451 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 452 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 453 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 454 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 455 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 456 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 457 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 458 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 459 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 460 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 461 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 462 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 463 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 464 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 465 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 466 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 467 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
