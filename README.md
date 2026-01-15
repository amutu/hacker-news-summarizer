# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-01-15.md)

*最后自动更新时间: 2026-01-15 20:37:44*
## 1. 苹果正争夺台积电产能，而英伟达成为焦点。

**原文标题**: Apple is fighting for TSMC capacity as Nvidia takes center stage

**原文链接**: [https://www.culpium.com/p/exclusiveapple-is-fighting-for-tsmc](https://www.culpium.com/p/exclusiveapple-is-fighting-for-tsmc)

本文详述了半导体行业的一次重大转变：随着英伟达崛起成为顶级客户，苹果正与英伟达在台积电争夺产能。核心动因是英伟达等公司对AI芯片的激增需求，这给台积电的先进制程生产线带来压力，并赋予这些客户更强的议价能力和影响力。

要点包括：
*   **领导地位更迭**：受英伟达营收爆发式增长（预计+62%）与苹果硬件销售增速放缓（+3.6%）影响，英伟达可能在2025年某些季度超越苹果，成为台积电最大客户。
*   **产能竞争**：苹果的智能手机处理器如今必须与英伟达和AMD更大、更复杂的AI GPU争夺晶圆产能，其订单不再自动享有优先权。
*   **台积电的战略定位**：台积电正大幅增加资本支出（约增长32%至创纪录的520-560亿美元），为A16等新一代制程建设新晶圆厂。该制程专为高性能计算芯片优化，短期路线图更有利于AI客户。
*   **长期平衡**：虽然英伟达主导当前需求，但苹果凭借其广泛且跨多厂区的产品组合为台积电提供了稳定性。未来制程（如A14）将兼顾移动设备与高性能计算需求，可能重塑双方关系。
*   **财务现实**：文章为台积电的谨慎扩张辩护，指出其资本密集度和折旧成本远高于英伟达、Alphabet等无晶圆厂客户，后者无需承担制造风险。

本质上，AI热潮已重塑台积电的客户层级，在先进芯片产能的争夺中，英伟达的黄仁勋正获得比苹果的蒂姆·库克更大的影响力。

---

## 2. 影响Svelte生态系统的CVEs

**原文标题**: CVEs affecting the Svelte ecosystem

**原文链接**: [https://svelte.dev/blog/cves-affecting-the-svelte-ecosystem](https://svelte.dev/blog/cves-affecting-the-svelte-ecosystem)

Svelte团队已针对影响生态系统核心包的五个漏洞发布安全补丁。用户必须立即升级至以下版本：**devalue 至 5.6.2**、**svelte 至 5.46.4**、**@sveltejs/kit 至 2.49.5** 以及 **@sveltejs/adapter-node 至 5.5.1**。

漏洞详情包括：
*   **两个DoS漏洞（CVE-2026-22775 和 CVE-2026-22774）** 存在于 `devalue.parse` 的 5.1.0-5.6.1 版本中，恶意用户输入可导致内存/CPU过度消耗并使进程崩溃。仅当启用实验性 `remoteFunctions` 功能时，SvelteKit 才会受影响。
*   **一个内存放大DoS漏洞（CVE-2026-22803）** 存在于 SvelteKit 的 Remote Functions 二进制反序列化器中（2.49.0-2.49.4 版本），可导致应用程序挂起并分配大量内存。
*   **一个DoS及潜在SSRF漏洞（CVE-2025-67647）** 影响 SvelteKit（2.19.0-2.49.4 版本）和 adapter-node，涉及预渲染功能。该漏洞可能使服务器崩溃，或在特定配置（缺少 `ORIGIN` 变量）下允许访问内部资源。
*   **一个XSS漏洞（CVE-2025-15265）** 存在于 Svelte 5.46.0-5.46.3 版本中，当 `hydratable` 与未净化的用户控制键值一起使用时可能被触发。

团队感谢安全研究人员和 Vercel 负责任地披露漏洞并提供协助，并承诺改进流程以防止类似问题。敦促用户通过 GitHub 的安全标签私下报告漏洞。

---

## 3. JuiceFS是一个基于Redis和S3构建的分布式POSIX文件系统。

**原文标题**: JuiceFS is a distributed POSIX file system built on top of Redis and S3

**原文链接**: [https://github.com/juicedata/juicefs](https://github.com/juicedata/juicefs)

JuiceFS是一款专为云原生环境设计的开源高性能分布式POSIX文件系统。它将文件数据存储在对象存储服务（如Amazon S3）中，元数据存储在数据库（如Redis或MySQL）中，使海量云存储能像本地存储一样高效使用，且无需修改代码。

主要特性包括完全兼容POSIX和Hadoop、提供S3兼容网关、Kubernetes CSI驱动、强一致性，并支持数据加密与压缩。其架构由客户端、元数据引擎和对象存储数据层组成。文件被分割为块、切片和子块以优化性能。

JuiceFS已具备生产就绪能力，支持多种对象存储服务，并被众多机构采用。该项目正在积极开发中，路线图包括网关优化和快照功能。它采用Apache 2.0许可证，并可禁用匿名使用统计。

---

## 4. 互联网档案馆基础设施内部探秘

**原文标题**: Inside The Internet Archive's Infrastructure

**原文链接**: [https://hackernoon.com/the-long-now-of-the-web-inside-the-internet-archives-fight-against-forgetting](https://hackernoon.com/the-long-now-of-the-web-inside-the-internet-archives-fight-against-forgetting)

这篇发表于2020年3月的文章，详细记录了加州工程师布鲁斯·李为应对新兴新冠疫情所做的个人务实准备。面对疫情，他并未陷入恐慌，而是以“理性”且系统化的工程思维应对。

文章重点描述了他为长期自我隔离所做的有条不紊的物资储备。其准备工作全面覆盖关键领域：储存了三个月保质期稳定的食物和水、一个完备的急救包、必要的处方药以及基本的清洁卫生用品。

除了实体物资，李还强调了财务与数字准备的重要性，包括确保现金获取、保管重要文件，以及为通讯设备配备备用电源。他的策略旨在最大限度减少外出需求，从而降低感染风险。

文章将其行为解读为对潜在供应链中断和医疗系统过载的逻辑性回应，将事前准备视为保护自我、缓解公共资源压力的负责任方式。文章捕捉了疫情初期社会从普遍认知转向具体个人行动的转变，并以这种技术性、解决问题式的危机应对方法作为例证。

---

## 5. 克劳德擅长组装积木，但在创造积木方面仍有欠缺。

**原文标题**: Claude is good at assembling blocks, but still falls apart at creating them

**原文链接**: [https://www.approachwithalacrity.com/claude-ne/](https://www.approachwithalacrity.com/claude-ne/)

文章指出，尽管Claude Opus 4.5在执行使用现有工具的明确定义任务方面令人印象深刻，但在高级工程师所需的高层设计工作上却力不从心。

作者列举了两个成功案例：Claude自主调试Sentry集成，以及将基础设施从Modal迁移到AWS ECS。在这两个案例中，Claude都擅长组合现有的、设计良好的“模块”，如Playwright、Terraform和AWS CLI命令。

然而，作者将此与一项React重构任务进行了对比。在该任务中，由于底层代码抽象程度低，Claude提出了一个粗糙低效的解决方案。与能够识别并修复根本架构问题的高级工程师不同，Claude只能在给定的有缺陷的结构内工作。

核心结论是，Claude缺乏创造优雅抽象和改善系统设计的“灵魂”或内在驱动力。其能力受限于所提供的现有组件的质量。因此，尽管它是一个自动化繁琐工作的强大工具，但它不仅没有取代，反而更加凸显了对能够设计其所依赖的基础“模块”的熟练工程师的需求。

---

## 6. 维基百科25周年

**原文标题**: 25 Years of Wikipedia

**原文链接**: [https://wikipedia25.org](https://wikipedia25.org)

**《维基百科25周年综述》**

维基百科作为互联网领域最具持久影响力项目之一，迎来了其创立25周年纪念日。这项免费在线百科全书由吉米·威尔士与拉里·桑格于2001年1月15日创立，其革命性模式允许任何人编辑条目，旨在汇集全人类的知识总和。

文章着重阐述了维基百科的核心原则：中立观点、免费内容以及由志愿者驱动的协作社区。尽管早期备受质疑，它仍呈指数级成长为全球访问量前十的网站，拥有超过6200万篇涵盖300多种语言的条目。它始终是事实检索的首选结果之一，也是至关重要的教育资源。

多年来面临的主要挑战包括：应对恶意篡改、解决系统性偏见（如涉及女性及全球南方议题的呈现不足），以及协调内部社群矛盾。成立于2003年的非营利组织维基媒体基金会持续为该项目提供基础设施支持与使命护航。

展望未来，维基百科面临维持志愿者基数与适应人工智能等新技术的双重挑战。虽然AI工具可能辅助编辑工作，但也存在批量生成低质内容的风险。此次周年纪念既彰显了维基百科作为公共产品的空前成功——证明了开放协作的力量，也凸显出其未来25年仍需持续攻坚，以确保内容的可靠性、公平性与时代相关性。

---

## 7. 对Claude Cowork的初步印象

**原文标题**: First impressions of Claude Cowork

**原文链接**: [https://simonw.substack.com/p/first-impressions-of-claude-cowork](https://simonw.substack.com/p/first-impressions-of-claude-cowork)

本文涵盖AI和开发者工具领域的两项重大发布。

首先，回顾了Anthropic面向非开发者推出的新型"通用智能体"工具**Claude Cowork**。该工具基于强大的Claude Code引擎构建，通过代码执行为自动化计算机任务提供用户友好界面。其默认在安全的容器化沙箱中运行，仅访问用户授权的文件。作者在个人任务中成功测试了该工具，但着重指出了其存在的重大**安全隐患**，特别是提示词注入攻击的风险。尽管Anthropic已发布警告并采取缓解措施，数据窃取或系统损坏的威胁依然严峻，且常被低估。

其次，文章探讨了**Fly.io的Sprites.dev**。该产品致力于解决两大核心问题：为编码智能体提供安全沙箱环境，以及为运行非受信代码构建安全API。Sprites提供具备快速存储、自动工具安装和独特检查点/恢复功能的持久化有状态开发环境，并巧妙运用Claude Skills功能教导AI如何使用Sprite环境本身。作者认为这是解决个人使用及未来网络服务沙箱隔离难题的关键一步。

两项发布共同标志着AI驱动自动化工具正朝着更强大、更易用且（有望）更安全的方向迈进。

---

## 8. Show HN：OpenWork —— 一个开源的Claude Cowork替代品

**原文标题**: Show HN: OpenWork – an open-source alternative to Claude Cowork

**原文链接**: [https://github.com/different-ai/openwork](https://github.com/different-ai/openwork)

**OpenWork** 是一款开源、可扩展的桌面应用程序，旨在作为 Claude Cowork 的用户友好替代方案。它通过提供引导式、产品化的界面，而非要求用户具备命令行专业知识，致力于让知识工作者能够轻松进行“智能体驱动的工作”。

基于 OpenCode 引擎构建，OpenWork 提供两种运行模式：**主机模式**（在选定项目文件夹中启动本地 OpenCode 服务器）和**客户端模式**（连接至现有远程服务器）。其核心功能包括创建和管理会话、实时流式更新、将执行计划可视化为时间线，以及处理特权操作的权限请求。

其 v0.1 版本的关键能力包括：
*   **模板：** 保存并重新运行常用工作流。
*   **技能管理器：** 从 OpenPackage 或本地文件夹安装、列出和管理 OpenCode 技能模块与插件。
*   **可审计性：** 清晰展示已执行的操作及其原因。

该应用程序采用 Tauri（Rust）后端和基于 Web 的 UI，需要 Node.js、pnpm 和 OpenCode CLI。它默认将服务绑定到本地 127.0.0.1 并隐藏敏感工具元数据，以此优先保障安全性。OpenWork 基于 MIT 许可证发布。

---

## 9. 发现：中世纪货船——史上同类船只中最大的一艘

**原文标题**: Found: Medieval Cargo Ship – Largest Vessel of Its Kind Ever

**原文链接**: [https://www.smithsonianmag.com/smart-news/archaeologists-say-theyve-unearthed-a-massive-medieval-cargo-ship-thats-the-largest-vessel-of-its-kind-ever-found-180987984/](https://www.smithsonianmag.com/smart-news/archaeologists-say-theyve-unearthed-a-massive-medieval-cargo-ship-thats-the-largest-vessel-of-its-kind-ever-found-180987984/)

丹麦和瑞典的海事考古学家发现了迄今最大的中世纪货船，或称柯克船。这艘名为"斯瓦勒格特2号"的沉船已有600年历史，在厄勒海峡被发现，船身长约92英尺，估计载重量达300吨。

该船保存异常完好，右舷侧因沙层保护未受侵蚀。这使得研究人员首次在柯克船上发现了独特的结构，包括大面积的船尾"城堡"（供船员栖身的遮蔽甲板）遗迹，以及配有炊具和食物残骸的砖砌厨房。

这艘约建于1410年的柯克船采用橡木和荷兰木材建造，其庞大体量彰显了中世纪晚期北欧贸易的规模。此类船只曾以少量船员安全运输木材和盐等大宗货物，彻底改变了商业运输模式。

此次发现不仅印证了现有关于中世纪坚固贸易网络的历史认知，更首次以实物证据表明柯克船能达到如此巨大的尺寸，为研究其建造技术和船上生活提供了全新视角。

---

## 10. 精灵的设计与实现

**原文标题**: Design and Implementation of Sprites

**原文链接**: [https://fly.io/blog/design-and-implementation/](https://fly.io/blog/design-and-implementation/)

Fly.io推出了Sprites，这是一种新型的即用即弃、持久化的Linux虚拟机，专为即时按需计算而设计。与基于OCI容器的旗舰产品Fly Machines不同，Sprites可在数秒内启动，拥有100GB的持久根存储，并在闲置时自动休眠以降低成本。

其设计依赖于三个关键决策。首先，Sprites取消了用户特定的容器镜像，采用单一标准容器，从而能够从预分配池中即时创建。其次，它们使用S3兼容的对象存储作为根文件系统，使数据持久化且工作负载易于迁移，同时以本地NVMe作为缓存。第三，编排采用“由内向外”的方式，大多数管理服务运行在虚拟机的根命名空间内，简化了开发流程，并实现了无需完全重启虚拟机即可重启服务等功能。

Sprites与Fly.io的现有基础设施（如其服务发现系统，可提供即时公共URL）无缝集成，但主要针对交互式和原型设计用例进行了优化，而非生产级应用。其目标是提供一个无缝、低摩擦的计算环境，让用户可以像从抽屉里取笔一样轻松地创建和丢弃虚拟机。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 2 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 3 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 4 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 5 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 6 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 7 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 8 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 9 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 10 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 11 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 12 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 13 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 14 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 15 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 16 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 17 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 18 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 19 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 20 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 21 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 22 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 23 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 24 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 25 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 26 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 27 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 28 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 29 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 30 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 31 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 32 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 33 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 34 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 35 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 36 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 37 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 38 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 39 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 40 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 41 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 42 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 43 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 44 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 45 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 46 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 47 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 48 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 49 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 50 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 51 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 52 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 53 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 54 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 55 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 56 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 57 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 58 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 59 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 60 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 61 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 62 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 63 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 64 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 65 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 66 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 67 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 68 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 69 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 70 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 71 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 72 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 73 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 74 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 75 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 76 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 77 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 78 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 79 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 80 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 81 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 82 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 83 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 84 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 85 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 86 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 87 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 88 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 89 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 90 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 91 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 92 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 93 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 94 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 95 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 96 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 97 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 98 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 99 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 100 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 101 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 102 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 103 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 104 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 105 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 106 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 107 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 108 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 109 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 110 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 111 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 112 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 113 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 114 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 115 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 116 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 117 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 118 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 119 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 120 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 121 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 122 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 123 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 124 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 125 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 126 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 127 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 128 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 129 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 130 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 131 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 132 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 133 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 134 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 135 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 136 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 137 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 138 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 139 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 140 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 141 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 142 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 143 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 144 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 145 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 146 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 147 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 148 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 149 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 150 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 151 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 152 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 153 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 154 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 155 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 156 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 157 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 158 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 159 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 160 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 161 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 162 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 163 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 164 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 165 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 166 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 167 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 168 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 169 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 170 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 171 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 172 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 173 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 174 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 175 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 176 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 177 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 178 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 179 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 180 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 181 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 182 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 183 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 184 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 185 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 186 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 187 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 188 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 189 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 190 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 191 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 192 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 193 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 194 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 195 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 196 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 197 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 198 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 199 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 200 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 201 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 202 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 203 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 204 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 205 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 206 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 207 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 208 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 209 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 210 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 211 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 212 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 213 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 214 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 215 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 216 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 217 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 218 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 219 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 220 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 221 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 222 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 223 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 224 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 225 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 226 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 227 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 228 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 229 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 230 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 231 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 232 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 233 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 234 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 235 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 236 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 237 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 238 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 239 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 240 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 241 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 242 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 243 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 244 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 245 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 246 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 247 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 248 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 249 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 250 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 251 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 252 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 253 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 254 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 255 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 256 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 257 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 258 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 259 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 260 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 261 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 262 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 263 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 264 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 265 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 266 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 267 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 268 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 269 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 270 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 271 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 272 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 273 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 274 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 275 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 276 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 277 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 278 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 279 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 280 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 281 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 282 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 283 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 284 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 285 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 286 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 287 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 288 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 289 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 290 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 291 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 292 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 293 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 294 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 295 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 296 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 297 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 298 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 299 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
