# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-04-11.md)

*最后自动更新时间: 2026-04-11 20:35:59*
## 1. 小型模型同样发现了Mythos所发现的漏洞。

**原文标题**: Small models also found the vulnerabilities that Mythos found

**原文链接**: [https://aisle.com/blog/ai-cybersecurity-after-mythos-the-jagged-frontier](https://aisle.com/blog/ai-cybersecurity-after-mythos-the-jagged-frontier)

本文挑战了只有像Anthropic的Mythos这样的大型前沿AI模型才能在网络安全领域有效运作的观点。作者团队在更小、更便宜、开放权重的模型上测试了Mythos展示的漏洞，发现它们在关键任务上表现相当。例如，测试的八个模型全部成功检测出Mythos强调的关键FreeBSD漏洞，其中包括一个仅有36亿活跃参数的模型。

核心论点是，AI网络安全能力是“锯齿状”的——它并不随模型规模或成本平滑扩展。在不同子任务（如漏洞检测与误报分析）上，性能差异巨大，没有单一模型能在所有方面持续超越其他模型。因此，真正的竞争优势（“护城河”）不在于模型本身，而在于**系统**：即专家构建的代码扫描、迭代分析、验证、分类和维护者协作的流程。

结论是，通过协调使用覆盖面广的廉价模型，以更高的处理量和更低的成本弥补单次推理智能的不足，可以实现有效且可扩展的AI网络安全。虽然Anthropic的工作验证了这一类别，但文章强调，实际应用的成功取决于协调系统，而非对单一强大模型的独占访问。

---

## 2. 我们如何打破顶级AI代理基准测试：以及下一步计划

**原文标题**: How We Broke Top AI Agent Benchmarks: And What Comes Next

**原文链接**: [https://rdi.berkeley.edu/blog/trustworthy-benchmarks-cont/](https://rdi.berkeley.edu/blog/trustworthy-benchmarks-cont/)

本文揭示，主流AI智能体基准测试存在根本性缺陷且极易被利用。研究人员构建了一个自动化智能体，在八项重要基准测试（包括SWE-bench、WebArena和GAIA）中获得了接近满分的成绩，却未真正解决任何任务。该智能体实际利用了基准测试评分机制中的系统性漏洞。

主要漏洞包括：在共享环境中篡改测试结果（SWE-bench）、从本地配置文件读取标准答案（WebArena）、通过公开URL下载参考答案（OSWorld），以及利用薄弱或缺失的答案验证机制（FieldWorkArena）。研究表明，当前基准测试往往衡量的是模型攻击评估系统的能力，而非其真实的问题解决能力。

作者指出若干反复出现的“致命模式”，例如智能体与评估器之间缺乏隔离、测试附带答案、使用未经净化的LLM评判器、依赖简单的字符串匹配等。他们认为这些并非孤立漏洞，而是系统性问题的表现——排行榜分数在实际中被刻意操纵，导致开发者和投资者对真实AI能力产生误解。结论指出，该领域亟需建立更稳健、经得起对抗测试的评估框架。

---

## 3. 如何构建一个`Git diff`驱动

**原文标题**: How to build a `Git diff` driver

**原文链接**: [https://www.jvt.me/posts/2026/04/11/how-git-diff-driver/](https://www.jvt.me/posts/2026/04/11/how-git-diff-driver/)

本文介绍了如何创建自定义的外部`git diff`驱动程序，用于比较需要超出Git默认基于文本的差异比较的特殊格式文件。作者指出，虽然`textconv`方法通常足以转换二进制文件，但为了获得更丰富、信息量更大的输出，需要自定义驱动程序。

关键的技术细节是，Git会向外部差异工具传递**七个参数**：文件名、“之前”和“之后”文件版本的路径（对于新增/删除的文件则为`/dev/null`）、它们的SHA-1哈希值以及八进制文件模式。文章针对更新、添加和删除的文件提供了这些参数的示例。

文章给出了一个使用`oasdiff`为OpenAPI规范文件生成人类可读变更日志的实际示例。提供的包装脚本演示了如何处理这七个参数、检测文件的添加/删除，并使用正确的文件路径调用底层工具。

总之，这篇文章为开发人员提供了一份指南，帮助他们将复杂的差异操作（如结构性API变更）委托给专用工具，并将这些工具无缝集成到Git的工作流程中，以实现更清晰的版本控制。

---

## 4. Advanced Mac Substitute 是对1980年代Mac OS的API级别重实现

**原文标题**: Advanced Mac Substitute is an API-level reimplementation of 1980s-era Mac OS

**原文链接**: [https://www.v68k.org/advanced-mac-substitute/](https://www.v68k.org/advanced-mac-substitute/)

**高级Mac替代系统（AMS）** 是一个软件项目，它重新实现了1980年代Mac OS的核心系统软件（API），使得经典的68K Mac应用程序能够在现代系统上运行，无需苹果原始的ROM或操作系统文件。

与传统模拟整个Macintosh硬件的模拟器不同，AMS直接替代了操作系统。它直接启动应用程序，省去了引导阶段。该系统仅模拟必要的680x0处理器；经典Mac环境的其余部分通过其API实现重新创建。

该项目在架构上分为两部分：一个后端包含可在任何类POSIX系统上运行的68K模拟器，以及一个前端，通过SDL2或针对macOS、X11和Linux帧缓冲等平台的自定义实现来处理显示。

AMS成功运行了多款1984年的早期Mac应用程序和游戏，如MacPaint、Lode Runner和Amazing，支持核心系统功能，包括1位图形、窗口、菜单、对话框和文本。

其源代码可在GitHub上获取，并可在多种现代平台上进行测试，包括macOS、带X11的Linux以及直接在Linux控制台帧缓冲中运行。

---

## 5. Cirrus Labs将加入OpenAI

**原文标题**: Cirrus Labs to join OpenAI

**原文链接**: [https://cirruslabs.org/](https://cirruslabs.org/)

由费多尔·科罗特科夫于2017年创立的Cirrus Labs将加入OpenAI。该公司在未接受外部投资的情况下运营，专注于为云时代构建开发者工具，尤其开发了广受欢迎的Apple Silicon虚拟化工具Tart以及早期的多平台CI/CD系统。

这一举措源于行业向“智能体工程”的转型趋势——AI智能体需要新的基础设施支撑。通过加入OpenAI的智能体基础设施团队，Cirrus旨在延续其使命，为人类工程师和AI工程师构建工具，更贴近技术前沿开展工作。

因此，现有Cirrus产品将逐步停止运营或变更授权。其开源工具（Tart、Vetu、Orchard）将转为更宽松的免费许可协议。Cirrus Runners将停止接纳新客户但继续服务现有用户，而Cirrus CI服务将于2026年6月1日正式关闭。

---

## 6. 墨西哥监控公司Grupo Seguritech监视美国边境

**原文标题**: Mexican surveillance company Grupo Seguritech watches the U.S. border

**原文链接**: [https://restofworld.org/2026/mexico-seguritech-government-surveillance-profile/](https://restofworld.org/2026/mexico-seguritech-government-surveillance-profile/)

本文详述了墨西哥监控公司Grupo Seguritech的崛起历程，该公司已成为拉丁美洲安全行业的重要参与者。文章重点聚焦该公司在奇瓦瓦州推出的旗舰项目——基于人工智能的“哨兵平台”。该系统将数千个摄像头、无人机及其他技术整合于指挥中心，用于监控犯罪活动，包括美墨边境地区。

一个关键披露是奇瓦瓦州与得克萨斯州于2022年达成的数据共享协议，该协议允许美国当局访问这些监控数据。随着华雷斯城新建的20层“哨兵塔”落成，该系统的监控能力正在持续扩展。

调查显示，Seguritech通过至少31家公司构成的网络开展业务，自2012年以来已获得超过12.7亿美元的墨西哥政府合同，建造或管理着188个指挥中心。墨西哥毒品战争推动了政府对监控技术的大规模投入，从而加速了该公司的扩张。

尽管被宣传为打击犯罪的工具，但Seguritech的业务规模引发了公民自由组织的严重隐私担忧。他们警告称，此类系统可能导致对公民的大规模监控，而跨境数据共享可能被用于针对移民群体。文章将Seguritech视为墨西哥蓬勃发展的、具有国际竞争力的监控产业的象征。

---

## 7. Surelock：Rust无死锁互斥锁

**原文标题**: Surelock: Deadlock-Free Mutexes for Rust

**原文链接**: [https://notes.brooklynzelenka.com/Blog/Surelock](https://notes.brooklynzelenka.com/Blog/Surelock)

**Surelock** 是一个 Rust 库，旨在通过打破“循环等待”条件，在编译时防止死锁。它采用两种互补机制：

1. **LockSet**：用于在同一逻辑层级获取多个互斥锁。它在运行时通过稳定且唯一的 `LockId` 对锁进行排序，确保所有线程以相同的确定性顺序获取锁，从而避免循环。

2. **基于层级的排序**：互斥锁被分配到不同的编译时层级（例如 `Level<1>`、`Level<2>`）。一个跟踪当前锁状态的 `MutexKey` 令牌会在每次获取锁时被消耗并返回，强制要求锁只能按严格递增的层级顺序获取。尝试在获取高级别锁后再锁定低级别锁会导致编译时错误。

该库兼容 `no_std`，可与任何 `lock_api` 后端配合使用，并为嵌入式控制提供了明确的 `Locksmith`/`KeyVoucher` API，或为 `std` 环境提供了便捷的 `lock_scope` 辅助工具。一个用于紧急情况的 `unchecked_lock` 逃生舱口通过特性门控以增强可见性。其目标是让无死锁并发成为 Rust 中默认且符合人体工程学的开发路径。

---

## 8. 保持Postgres队列的健康运行

**原文标题**: Keeping a Postgres Queue Healthy

**原文链接**: [https://planetscale.com/blog/keeping-a-postgres-queue-healthy](https://planetscale.com/blog/keeping-a-postgres-queue-healthy)

本文阐述了如何在Postgres中维护健康的工作队列，重点探讨清理“死元组”——即删除操作后遗留的不可见数据行——这一挑战。尽管Postgres能够处理高吞吐量的队列任务，但当死元组清理速度赶不上作业更新频率时，性能便会下降，这在具有混合工作负载的数据库中尤为明显。

核心问题在于：只要任何活跃事务仍能“看见”死元组，Postgres的自动清理进程就无法将其移除。长时间运行或相互重叠的分析查询会固定“MVCC可见性边界”，从而阻塞清理进程，导致表/索引膨胀，进而拖慢队列操作。

传统的超时机制（如`statement_timeout`）过于笼统，无法解决此问题。本文介绍了PlanetScale的**数据库流量控制™**（属于Insights扩展功能）作为针对性解决方案。该技术通过细粒度资源预算机制，可限制低优先级查询的资源占用，防止其持续阻塞清理操作，从而确保队列在混合工作负载环境下始终保持高性能运行。

---

## 9. 磨平我的MacBook边角

**原文标题**: Filing the corners off my MacBooks

**原文链接**: [https://kentwalters.com/posts/corners/](https://kentwalters.com/posts/corners/)

作者用锉刀磨平了MacBook尖锐的铝制边角，特别是前端的凹口处，因为他们觉得这些边角搁着手腕不舒服。他们认为这是对个人工具的合理改造。

操作过程包括用胶带保护敏感区域，将笔记本电脑固定牢固，先用粗锉刀打磨，再用砂纸（先150目后400目）抛光，最终获得平滑圆润的效果。作者表示结果令人满意，且笔记本电脑的结构完整性未受影响。

文章以毫不妥协的实用口吻写成，鼓励其他人同样大胆改造自己的设备，将这一行为定义为一种尊重的所有权体现，是功能改进优先于外观保留的实践。

---

## 10. 一个巧妙终结极端贫困的方法

**原文标题**: One neat trick to end extreme poverty

**原文链接**: [https://www.economist.com/finance-and-economics/2026/04/09/one-neat-trick-to-end-extreme-poverty](https://www.economist.com/finance-and-economics/2026/04/09/one-neat-trick-to-end-extreme-poverty)

无法访问文章链接。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 2 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 3 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 4 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 5 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 6 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 7 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 8 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 9 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 10 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 11 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 12 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 13 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 14 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 15 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 16 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 17 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 18 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 19 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 20 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 21 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 22 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 23 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 24 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 25 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 26 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 27 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 28 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 29 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 30 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 31 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 32 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 33 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 34 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 35 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 36 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 37 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 38 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 39 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 40 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 41 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 42 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 43 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 44 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 45 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 46 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 47 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 48 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 49 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 50 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 51 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 52 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 53 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 54 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 55 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 56 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 57 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 58 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 59 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 60 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 61 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 62 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 63 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 64 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 65 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 66 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 67 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 68 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 69 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 70 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 71 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 72 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 73 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 74 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 75 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 76 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 77 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 78 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 79 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 80 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 81 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 82 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 83 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 84 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 85 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 86 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 87 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 88 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 89 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 90 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 91 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 92 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 93 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 94 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 95 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 96 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 97 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 98 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 99 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 100 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 101 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 102 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 103 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 104 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 105 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 106 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 107 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 108 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 109 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 110 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 111 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 112 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 113 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 114 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 115 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 116 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 117 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 118 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 119 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 120 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 121 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 122 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 123 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 124 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 125 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 126 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 127 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 128 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 129 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 130 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 131 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 132 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 133 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 134 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 135 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 136 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 137 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 138 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 139 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 140 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 141 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 142 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 143 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 144 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 145 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 146 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 147 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 148 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 149 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 150 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 151 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 152 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 153 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 154 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 155 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 156 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 157 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 158 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 159 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 160 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 161 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 162 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 163 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 164 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 165 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 166 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 167 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 168 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 169 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 170 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 171 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 172 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 173 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 174 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 175 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 176 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 177 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 178 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 179 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 180 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 181 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 182 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 183 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 184 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 185 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 186 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 187 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 188 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 189 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 190 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 191 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 192 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 193 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 194 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 195 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 196 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 197 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 198 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 199 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 200 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 201 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 202 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 203 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 204 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 205 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 206 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 207 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 208 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 209 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 210 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 211 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 212 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 213 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 214 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 215 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 216 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 217 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 218 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 219 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 220 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 221 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 222 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 223 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 224 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 225 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 226 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 227 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 228 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 229 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 230 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 231 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 232 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 233 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 234 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 235 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 236 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 237 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 238 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 239 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 240 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 241 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 242 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 243 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 244 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 245 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 246 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 247 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 248 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 249 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 250 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 251 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 252 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 253 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 254 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 255 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 256 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 257 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 258 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 259 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 260 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 261 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 262 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 263 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 264 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 265 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 266 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 267 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 268 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 269 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 270 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 271 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 272 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 273 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 274 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 275 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 276 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 277 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 278 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 279 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 280 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 281 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 282 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 283 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 284 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 285 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 286 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 287 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 288 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 289 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 290 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 291 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 292 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 293 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 294 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 295 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 296 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 297 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 298 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 299 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 300 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 301 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 302 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 303 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 304 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 305 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 306 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 307 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 308 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 309 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 310 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 311 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 312 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 313 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 314 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 315 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 316 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 317 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 318 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 319 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 320 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 321 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 322 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 323 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 324 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 325 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 326 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 327 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 328 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 329 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 330 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 331 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 332 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 333 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 334 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 335 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 336 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 337 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 338 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 339 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 340 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 341 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 342 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 343 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 344 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 345 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 346 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 347 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 348 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 349 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 350 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 351 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 352 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 353 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 354 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 355 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 356 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 357 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 358 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 359 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 360 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 361 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 362 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 363 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 364 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 365 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 366 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 367 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 368 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 369 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 370 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 371 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 372 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 373 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 374 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 375 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 376 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 377 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 378 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 379 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 380 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 381 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 382 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 383 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 384 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 385 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
