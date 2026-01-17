# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-01-17.md)

*最后自动更新时间: 2026-01-17 20:38:04*
## 1. ASCII字符并非像素：深入解析ASCII渲染技术

**原文标题**: ASCII characters are not pixels: a deep dive into ASCII rendering

**原文链接**: [https://alexharri.com/blog/ascii-rendering](https://alexharri.com/blog/ascii-rendering)

本文阐述了如何构建一个注重锐利边缘的高质量ASCII艺术渲染器，与传统将字符视为模糊像素的方法不同。

作者首先批评了常见的图像转ASCII技术，这些技术使用最近邻或超采样将图像亮度映射到字符密度。由于忽略了每个ASCII字符独特的**形状**，导致边缘模糊且锯齿明显。

核心创新在于一种“基于形状”的渲染方法。该方法通过采样圆预先计算每个字符的**形状向量**，量化其在网格单元特定区域（如上半部分与下半部分）的视觉占比。针对目标图像的每个单元，从图像数据中计算对应的**采样向量**。

渲染器随后执行最近邻搜索，为每个单元寻找预计算形状向量与采样向量最匹配的ASCII字符。这使得字符的固有形状能与图像轮廓对齐，显著提升边缘锐度与有效分辨率。

文章详细阐述了从基础下采样缺陷到实现基于二维向量的查找系统的全过程，并总结指出：相较于标准的基于像素的方法，这种具备形状感知能力的技术能生成视觉效果更优、更清晰的ASCII艺术。

---

## 2. 我们把Claude Code放进了《过山车大亨》里。

**原文标题**: We put Claude Code in Rollercoaster Tycoon

**原文链接**: [https://labs.ramp.com/rct](https://labs.ramp.com/rct)

本文详述了一个将AI模型Claude Code集成至1999年游戏《过山车大亨》中、使其自主管理主题公园的项目。

项目的核心突破在于将Claude Code与游戏内存相连，使其能读取实时数据，如游客数量、财务状况及游乐设施状态。AI被赋予明确目标：最大化公园价值与游客满意度。随后它通过向游戏内存写入指令来执行操作，包括建造并定价游乐设施、雇佣员工以及布置便利设施。

实验既展现了AI的战略能力，也暴露了其局限性。Claude成功识别出盈利策略，例如建造热门过山车和动态调整价格。但它也出现了“幻觉”现象，曲解游戏数据并做出非理性决策，比如修建通往无法抵达区域的路径，或对不存在的问题作出反应。

该项目作为将现代大语言模型应用于复杂怀旧游戏环境的新颖示范，既彰显了AI学习并执行长期管理策略的潜力，也凸显了当前在可靠性及与现实世界精准交互方面面临的挑战。

---

## 3. 伊丽莎白时代宅邸的保暖秘诀

**原文标题**: An Elizabethan mansion's secrets for staying warm

**原文链接**: [https://www.bbc.com/future/article/20260116-an-elizabethan-mansions-secrets-for-staying-warm](https://www.bbc.com/future/article/20260116-an-elizabethan-mansions-secrets-for-staying-warm)

本文探讨了哈德威克庄园——一座建于16世纪90年代的伊丽莎白时期宅邸——如何巧妙设计以在小冰河期保持温暖，为现代节能建筑提供了启示。

庄园设计巧妙地最大化利用太阳能热量。建筑采用南北朝向以获取充足日照，生活空间布局遵循太阳日行轨迹。向阳面设置大型窗户，而北墙则采用假窗设计以减少热量流失。厚重的内墙形成蓄热体，吸收中央壁炉的热量并缓慢释放。挂毯、窗帘与多层衣物也提供了额外保暖。

文章指出，这些利用朝向、蓄热体与策略性玻璃设计的被动式原则，在当今仍是“未充分利用的工具”。相反，现代建筑常依赖高耗能的供暖制冷系统来弥补设计缺陷，例如全玻璃幕墙导致夏季过热、冬季失热。

文章总结道，新建建筑固然可以融入这些历史智慧，但即便对现有住宅进行微小调整——如根据阳光移动重新布置家具、种植遮荫树木——也能减少对化石燃料的依赖并提升舒适度，彰显了与环境和谐共生的设计理念的永恒价值。

---

## 4. Show HN：Minikv – 基于 Rust 的分布式键值与对象存储（支持 Raft 协议与 S3 API）

**原文标题**: Show HN: Minikv – Distributed key-value and object store in Rust (Raft, S3 API)

**原文链接**: [https://github.com/whispem/minikv](https://github.com/whispem/minikv)

**Minikv** 是一个用 Rust 编写的分布式键值存储与对象存储系统，最初作为学习项目开发，现已演变为功能完备、可用于生产环境的系统。它通过 Raft 共识算法和两阶段提交（2PC）实现强一致性事务，并利用预写日志（WAL）确保数据持久性。

最新版本（v0.7.0）引入了按值检索的二级索引、多键事务、批量导入/导出功能，以及兼容 S3 的持久化对象存储 API。该系统还包含多项企业级特性，例如基于角色访问控制的多租户架构、静态数据加密、配额管理和审计日志记录。

为支持可扩展性，系统采用 256 个虚拟分片进行数据分布，并支持可插拔存储后端（内存、RocksDB、Sled）。系统同时提供 HTTP REST 与 S3 API，内部通信采用 gRPC，并具备实时监听/订阅功能。通过 Prometheus 指标监控、结构化日志和管理仪表板，系统特别注重可观测性。

性能测试显示，单节点可实现每秒超过 5 万次写入操作，读取延迟低于毫秒级。该项目为开源项目，欢迎社区贡献，并可作为使用 Rust 实现分布式系统的实践参考。

---

## 5. 取代开发者的循环梦

**原文标题**: The recurring dream of replacing developers

**原文链接**: [https://www.caimito.net/en/blog/2025/12/07/the-recurring-dream-of-replacing-developers.html](https://www.caimito.net/en/blog/2025/12/07/the-recurring-dream-of-replacing-developers.html)

本文追溯了技术领域一个反复出现的50年模式：那个持续存在却未能实现的取代软件开发者的梦想。它始于1970年代的COBOL语言——当时承诺商业用户也能编写代码，随后延续至CASE工具（1980年代）、Visual Basic（1990年代）乃至现代的低代码/无代码平台。每一轮浪潮都试图通过民主化或自动化软件创建来降低成本、加快交付速度。

作者认为这些尝试之所以屡屡失败，是因为它们误解了核心挑战。软件开发并非打字或语法的机械性任务，而是一种管理复杂性的智力活动——需要处理边界情况、安全性、集成以及不断变化的需求。虽然每一种新工具（包括当今的AI助手）都通过提升效率、降低门槛创造了实际价值，但它们始终无法取代人类判断与深度推理的必要性。

这一模式揭示：软件需求永远超越我们的构建能力，从而持续催生着对捷径的追寻。对领导者而言，应当以“能否帮助开发者更有效地处理复杂问题”而非“能否取代开发者”为标准来评估新工具。最终，这个“梦想”推动了有价值的创新，但根本限制依然存在——将现实世界的复杂性转化为可靠系统，始终需要人类思维的深度参与。

---

## 6. 奥利维蒂公司——布拉德福德·摩根·怀特著

**原文标题**: The Olivetti Company – By Bradford Morgan White

**原文链接**: [https://www.abortretry.fail/p/the-olivetti-company](https://www.abortretry.fail/p/the-olivetti-company)

奥利维蒂公司由卡米洛·奥利维蒂于1908年在意大利伊夫雷亚创立，率先推出了M1和M40等高品质、设计精美的打字机。卡米洛建立了一家进步、垂直整合的工厂，以人性化的工作条件、利润分享和广泛的员工福利计划而闻名。

他的儿子阿德里亚诺于1938年成为总裁，将公司业务拓展至全球，并使产量增长了两倍。作为坚定的反法西斯主义者，他在二战期间利用工厂帮助逃亡者，并担任盟军情报人员。战后，他倡导“社区运动”，主张工业效率、社会福利和参与式民主的结合。

在阿德里亚诺的领导下，奥利维蒂大力投资城市规划，在伊夫雷亚建造住房和社区基础设施，使当地人口激增。公司的成功建立在工程卓越、艺术设计和对社会责任的深刻承诺的独特融合之上。

---

## 7. 没有一种存储信息的绝对最佳方法。

**原文标题**: There's no single best way to store information

**原文链接**: [https://www.quantamagazine.org/why-theres-no-single-best-way-to-store-information-20260116/](https://www.quantamagazine.org/why-theres-no-single-best-way-to-store-information-20260116/)

本文阐述了信息存储并无普遍最优方法，因为不同的数据结构在时间、内存和效率之间存在着固有的权衡。

文章通过两个主要例子说明这一点。首先，**哈希表**通过哈希函数将数据项分配到存储桶中，解决了快速插入与快速检索之间的矛盾。然而，这又带来了操作速度与所需内存（空间）之间的新权衡。

其次，**堆**非常适合管理优先级数据（如待办事项列表），其中最高优先级的项目必须始终可访问。它们通过二叉树等结构实现快速添加和检索最高优先级项目，尽管低优先级项目的组织性较弱。

文章总结道，正如整理实物一样，“最佳”存储系统完全取决于任务的具体需求和优先级，每种方法都提供了不同的权衡方案。

---

## 8. 推荐系统的反事实评估

**原文标题**: Counterfactual evaluation for recommendation systems

**原文链接**: [https://eugeneyan.com/writing/counterfactual-evaluation/](https://eugeneyan.com/writing/counterfactual-evaluation/)

本文指出，传统推荐系统的离线评估方法存在缺陷，因为它将推荐视为观测性问题，而实际上这是一个干预性问题。作者认为，像召回率和精确率这样的标准指标评估的是新推荐与历史数据的匹配程度，而非它们对用户行为的实际影响。

为解决这一问题，文章引入了反事实评估作为离线模拟A/B测试的方法。讨论的核心技术是逆倾向评分（IPS），该方法通过根据新旧模型推荐物品的频率重新加权历史奖励，来估计新推荐系统的影响。

文章还探讨了IPS在实际应用中的挑战，例如当模型差异较大时方差过高，并介绍了解决方案，如裁剪逆倾向评分（CIPS）和自归一化逆倾向评分（SNIPS）。文章指出，SNIPS通常表现最佳且无需参数调优，但需要更多计算资源。

作者总结道，虽然传统离线评估在基准测试中仍有其价值，但像SNIPS这样的反事实评估方法是评估工具箱中的重要补充，尤其是在离线指标与在线A/B测试结果不一致时。

---

## 9. OpenAI在烧掉数十亿美元之际，将在ChatGPT中测试广告功能。

**原文标题**: OpenAI to test ads in ChatGPT as it burns through billions

**原文链接**: [https://arstechnica.com/information-technology/2026/01/openai-to-test-ads-in-chatgpt-as-it-burns-through-billions/](https://arstechnica.com/information-technology/2026/01/openai-to-test-ads-in-chatgpt-as-it-burns-through-billions/)

OpenAI正对免费用户及每月8美元新“Go”计划的用户测试ChatGPT横幅广告，此举标志着该公司在面临巨大财务压力下的战略转变。首席执行官萨姆·奥尔特曼此前曾表示不愿采用广告，称其为“最后手段”，担心这会侵蚀用户信任。

广告将以独立标注板块的形式出现在相关查询答案的底部，且不会向付费的Plus、Pro、Business或企业版订阅用户展示。OpenAI强调广告不会影响ChatGPT的实际回复内容，用户对话也不会与广告商共享。

这一举措源于OpenAI对收入多元化的需求。尽管预计2025年收入将达130亿美元，但公司预计将消耗90亿美元，且部分由于对AI基础设施的大规模投资计划，预计2030年前难以实现盈利。目前每周8亿用户中仅有约5%付费订阅，广告因此成为潜在的新收入来源。

公司将此视为在维持用户信任的同时为AI发展筹措资金的折中方案，并承诺核心聊天机器人的输出将保持客观，不受赞助商影响。

---

## 10. 关于大型软件公司的常见误解

**原文标题**: Common misunderstandings about large software companies

**原文链接**: [https://philipotoole.com/common-misunderstandings-about-large-software-companies/](https://philipotoole.com/common-misunderstandings-about-large-software-companies/)

本文认为，对大型软件公司的常见批评往往忽略了其特点背后的深层原因。作者借鉴了在谷歌等公司的经验，指出许多被诟病的“功能障碍”实际上是规模扩张的必然结果。

文章针对三种常见批评进行了分析：
1.  **“会议太多”**：在大型组织中，跨团队协调是首要挑战。会议并非附加的弊病，而是管理这种复杂性的必要工具。
2.  **“高管意见过于主导”**：高管是连接遥远客户的重要桥梁，负责制定优先级战略决策。他们的影响力是职位本身的结构性特征，而非缺陷。
3.  **“流程与官僚主义过多”**：流程的存在是为了管理影响数百万用户的软件所面临的高风险。与初创公司不同，失败是不可接受的，因此需要更严格的风险、正确性和规模检查。

核心观点是：尽管大公司确实存在问题，但许多被批评的行为其实是其规模和责任的合理结果。有效的批评需要先理解这些结构性原因，而不是简单地将它们视为病态现象。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 2 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 3 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 4 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 5 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 6 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 7 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 8 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 9 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 10 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 11 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 12 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 13 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 14 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 15 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 16 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 17 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 18 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 19 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 20 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 21 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 22 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 23 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 24 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 25 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 26 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 27 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 28 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 29 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 30 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 31 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 32 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 33 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 34 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 35 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 36 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 37 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 38 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 39 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 40 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 41 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 42 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 43 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 44 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 45 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 46 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 47 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 48 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 49 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 50 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 51 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 52 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 53 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 54 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 55 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 56 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 57 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 58 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 59 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 60 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 61 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 62 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 63 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 64 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 65 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 66 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 67 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 68 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 69 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 70 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 71 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 72 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 73 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 74 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 75 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 76 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 77 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 78 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 79 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 80 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 81 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 82 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 83 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 84 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 85 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 86 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 87 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 88 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 89 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 90 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 91 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 92 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 93 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 94 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 95 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 96 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 97 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 98 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 99 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 100 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 101 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 102 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 103 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 104 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 105 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 106 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 107 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 108 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 109 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 110 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 111 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 112 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 113 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 114 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 115 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 116 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 117 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 118 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 119 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 120 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 121 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 122 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 123 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 124 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 125 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 126 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 127 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 128 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 129 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 130 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 131 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 132 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 133 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 134 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 135 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 136 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 137 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 138 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 139 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 140 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 141 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 142 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 143 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 144 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 145 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 146 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 147 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 148 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 149 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 150 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 151 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 152 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 153 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 154 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 155 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 156 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 157 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 158 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 159 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 160 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 161 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 162 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 163 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 164 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 165 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 166 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 167 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 168 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 169 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 170 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 171 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 172 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 173 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 174 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 175 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 176 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 177 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 178 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 179 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 180 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 181 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 182 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 183 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 184 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 185 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 186 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 187 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 188 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 189 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 190 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 191 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 192 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 193 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 194 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 195 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 196 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 197 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 198 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 199 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 200 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 201 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 202 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 203 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 204 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 205 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 206 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 207 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 208 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 209 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 210 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 211 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 212 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 213 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 214 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 215 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 216 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 217 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 218 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 219 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 220 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 221 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 222 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 223 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 224 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 225 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 226 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 227 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 228 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 229 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 230 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 231 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 232 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 233 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 234 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 235 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 236 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 237 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 238 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 239 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 240 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 241 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 242 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 243 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 244 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 245 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 246 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 247 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 248 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 249 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 250 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 251 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 252 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 253 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 254 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 255 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 256 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 257 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 258 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 259 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 260 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 261 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 262 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 263 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 264 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 265 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 266 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 267 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 268 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 269 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 270 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 271 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 272 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 273 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 274 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 275 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 276 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 277 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 278 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 279 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 280 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 281 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 282 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 283 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 284 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 285 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 286 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 287 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 288 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 289 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 290 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 291 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 292 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 293 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 294 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 295 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 296 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 297 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 298 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 299 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 300 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 301 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
