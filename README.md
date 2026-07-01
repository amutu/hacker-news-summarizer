# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-07-01.md)

*最后自动更新时间: 2026-07-01 20:33:32*
## 1. ZCode：来自GLM创造者的Claude代码

**原文标题**: ZCode: Claude Code from the Makers of GLM

**原文链接**: [https://zcode.z.ai/cn](https://zcode.z.ai/cn)

**摘要：**

本文介绍“ZCode：GLM团队打造的Claude Code”，重点推介GLM团队开发的一款新型编程工具。内容聚焦于名为“GLM CodingLite”的产品，专为轻量级开发任务设计。

关键信息包括：
- **定价**：每月16.2美元（原价18美元），包含基础使用配额。
- **目标用户**：适用于轻量级迭代和小规模代码库。
- **功能**：持续提供最新旗舰模型及功能的使用权限。
- **集成**：支持超过20种编程工具，并深度适配“ZCode”。

核心信息是：GLM CodingLite为从事小型项目的开发者提供了一款价格实惠、模型实时更新的编码助手，且具有广泛的工具兼容性。

---

## 2. 首次，从零构建的细胞实现生长与分裂

**原文标题**: For first time, a cell built from scratch grows and divides

**原文链接**: [https://www.quantamagazine.org/for-the-first-time-a-cell-built-from-scratch-grows-and-divides-20260701/](https://www.quantamagazine.org/for-the-first-time-a-cell-built-from-scratch-grows-and-divides-20260701/)

由合成生物学家凯特·亚当马拉领导的研究团队成功制造出一种名为"土豆细胞"的合成细胞，该细胞能够生长、复制DNA并进行分裂——这是首次完全利用非生命组分从零构建的细胞实现这一功能。该细胞被包裹在脂质膜中，内含合成基因组及预装的核糖体、酶等"补给品"。为实现无需细胞骨架的分裂过程，团队改造了能吸引其他蛋白质的膜蛋白，从而物理性弯曲并分裂细胞膜。

虽然这是在从非生命创造生命进程中迈出的重要一步，但按标准定义，该细胞尚未达到生命状态：它需要持续供给营养且无法独立存活。研究人员通过引入基因变异展示了原始进化形式，但由于DNA复制酶具有极高精确度，尚未实现通过随机突变进行的自然选择。未来挑战包括让细胞自主生产核糖体以及提升分裂效率。研究团队已公开其方法，并创立名为Biotic的非营利组织，旨在与全球科研界共享工具，该技术未来可应用于药物开发与材料合成领域，同时为生命起源研究提供了新视角。

---

## 3. 如何成为一名图形程序员

**原文标题**: What to Learn to Be a Graphics Programmer

**原文链接**: [https://blog.demofox.org/2026/07/01/what-to-learn-to-be-a-graphics-programmer/](https://blog.demofox.org/2026/07/01/what-to-learn-to-be-a-graphics-programmer/)

本文概述了成为一名可雇佣图形程序员的路径，将该领域划分为两大方向：CPU端和GPU端。

**CPU端：** 学习DirectX12、Vulkan或Metal等现代显式API，用于引擎编程、资源加载以及在屏幕上呈现基础几何体。C++是该领域的主导语言。

**GPU端：** 掌握光照与渲染的数学原理，包括基于物理的渲染（PBR）、阴影和后处理。作者建议从《一周内学会光线追踪》和LearnOpenGL的PBR理论章节入手，再进阶学习Filament文档和《基于物理的渲染：从理论到实现》一书。

**数学与算法：** 必备数学知识包括线性代数、基础三角学和部分微积分。算法方面，数组、哈希表和排序等基础内容至关重要，因为简洁往往意味着高效。

**关于机器学习：** 作者对当前大型语言模型的热潮持怀疑态度，但认为它们在解释数学和论文时颇为实用。在编程方面，他们更倾向于亲手编写代码以确保理解。他们将当前AI阶段视为未来人类级智能的"彩排"。

---

## 4. FFmpeg 9.1 的新 AAC 编码器

**原文标题**: FFmpeg 9.1's new AAC encoder

**原文链接**: [https://hydrogenaudio.org/index.php/topic,129691.0.html](https://hydrogenaudio.org/index.php/topic,129691.0.html)

**FFmpeg 9.1 新版 AAC 编码器概要**

文章宣布 FFmpeg 9.1 发布，重点介绍了其主要新特性：原生高品质 AAC（高级音频编码）编码器。此举填补了长期存在的空缺，此前 FFmpeg 依赖外部库（如 libfdk_aac）或自身优化不足的编码器处理 AAC 音频。

新编码器旨在与现有方案竞争甚至超越它们，追求在低比特率下实现更高效率和更好音质。它已完全集成到 FFmpeg 中，用户无需编译或安装单独的 AAC 编码库。这简化了需要输出 AAC 以兼容 YouTube、苹果设备和流媒体服务等平台的开发者和用户的工作流程。

主要优势包括：
- **原生集成：** 无需外部依赖即可进行 AAC 编码。
- **品质提升：** 针对感知音频质量进行了优化，尤其在低比特率下。
- **性能卓越：** 为直播和文件转码提供高效处理。
- **编解码器支持：** 可与 FFmpeg 丰富的滤镜和容器支持无缝协作。

文章指出，这是 FFmpeg 项目的一项重大进步，使高品质 AAC 编码无需法律或许可复杂性即可开箱即用。升级到 FFmpeg 9.1 的用户可预期该编码器成为默认 AAC 选项，从而增强该工具在音视频处理任务中的多功能性。讨论帖中包含了用户的反馈以及关于其实现和基准测试的技术提问。

---

## 5. Claude Fable 5 抢先体验资格

**原文标题**: Claude Fable 5 Promotional Access

**原文链接**: [https://support.claude.com/en/articles/15424964-claude-fable-5-promotional-access](https://support.claude.com/en/articles/15424964-claude-fable-5-promotional-access)

以下是本文的简洁摘要（不超过300字）：

**促销概述：** 2026年7月1日至7日，Pro、Max、Team及Enterprise高级版订阅用户可免费获得**Claude Fable 5**的促销访问权限，无需激活。

**包含内容：** 您每周可将订阅限额的**最多50%**用于Fable 5。达到此限额后，您可以继续使用Fable 5（将通过单独计费的使用额度支付），或切换至其他Claude模型以保持在剩余计划限额内。

**访问方式：** 在Claude网页版、移动端或桌面端的模型选择器中选择“Fable 5”。Claude Code需使用2.1.170或更高版本，Claude Cowork需使用最新桌面版。

**不适用对象：** 本次促销不适用于免费版、旧版Enterprise计划的普通席位、按用量计费的Enterprise计划以及API使用（需单独计费）。

**促销结束后：** 7月7日后，Fable 5将不再包含在您的计划限额内。您只能通过使用额度继续使用。

**常见问题解答：**
- Fable 5的使用量会计入您常规的计划限额。
- 管理员无法在网页版、桌面端或移动端禁用促销访问权限，但可在Claude Code中管理模型可用性。
- 旧版Enterprise用户：普通席位需使用额度访问Fable 5；高级版席位在7月7日前享有促销访问权限。

---

## 6. PS平台新游戏实体光盘生产将于2028年1月终止

**原文标题**: Physical disc production ending in Jan 2028 for new games on PlayStation

**原文链接**: [https://blog.playstation.com/2026/07/01/physical-disc-production-ending-in-january-2028-for-new-games-releasing-on-playstation-consoles/](https://blog.playstation.com/2026/07/01/physical-disc-production-ending-in-january-2028-for-new-games-releasing-on-playstation-consoles/)

**摘要：**

索尼互动娱乐宣布，将于2028年1月停止生产新PlayStation主机实体游戏光盘。此后，所有新游戏将仅通过PlayStation商店或零售商以数字形式提供。

这一决定反映了消费者偏好从实体光盘向数字媒体的转变。索尼表示，这一调整符合其社区大多数用户目前偏好的游戏获取和游玩方式。重要的是，该变更不影响任何在2028年1月之前已发布或计划发布光盘版的游戏。

索尼强调其致力于创新游戏获取方式，并通过零售商和PlayStation商店继续提供购买选择。公告中还提及了关于PS3和PS Vita的PlayStation商店将另行更新。

---

## 7. 《Fable 5》归来

**原文标题**: Fable 5 Is Back

**原文链接**: [https://twitter.com/claudeai/status/2072402636813607381](https://twitter.com/claudeai/status/2072402636813607381)

根据提供内容，这篇文章是来自“Claude@claudeai”的社交媒体帖子，宣布“《神鬼寓言5》回归”，发布日期为2026年7月1日。该帖子时长19分31秒，可能为音频或视频片段。它获得了显著互动：7.81万次观看、1700次点赞、2900次转发、2.28万次收藏、1600条评论以及1672条回复。核心信息只是《神鬼寓言》游戏系列，特别是其第五部作品已经回归或复兴，并在社交媒体上引发了大量且活跃的受众反响。

---

## 8. Box3D，一个开源3D物理引擎

**原文标题**: Box3D, an open source 3D physics engine

**原文链接**: [https://box2d.org/posts/2026/06/announcing-box3d/](https://box2d.org/posts/2026/06/announcing-box3d/)

**Box3D 公告摘要**

Box3D 是一款全新的开源 3D 物理引擎，源自 Box2D，并基于 Valve 的 Rubikon-Lite 引擎。它已在 GitHub 上以 C17 标准发布。

**主要特性：** 包括三角网格与高度场碰撞、预烘焙复合碰撞、子步进、连续碰撞检测、SIMD 接触求解器、多线程支持、适用于大世界的双精度运算、跨平台确定性，以及录制/回放功能。

**开发缘由：** 开发者需要为《加利福尼亚传奇》（基于虚幻引擎 5）定制物理方案。虚幻的 Chaos 引擎缺乏陀螺力矩支持，并导致异常行为（如掉落的树木发生瞬移）。在分叉 Rubikon-Lite 并整合 Box2D 架构后，Box3D 应运而生。它实现了针对性功能，如用于掉落树木的快速网格碰撞，以及用于大型结构的高效复合碰撞。

**可持续性：** 将 Box3D 开源可确保开发者的物理相关知识得以保存并复用。游戏工作室 Kintsugiyama 支持此项工作，使其能够持续开发。

**当前用户：** 《加利福尼亚传奇》、s&box（Facepunch 工作室）、Esoterica 引擎，以及一款支持 1000 名玩家的太空游戏。

**未来计划：** 目前为 Alpha 软件，目标近期发布 v0.1 版本。计划中的增强功能包括角色移动、鬼碰撞修复以及改进的关节求解器。开发者未来将接受 pull request。

**支持渠道：** 更新信息请关注 Box2D 网站及 Discord 频道。可通过 GitHub 或 Patreon 进行赞助。

---

## 9. 我们如何将IPFS内容发布速度提升10倍

**原文标题**: How We Made IPFS Content Publishing 10x Faster

**原文链接**: [https://probelab.io/blog/optimistic-provide/](https://probelab.io/blog/optimistic-provide/)

**摘要：**

IPFS 在 Amino DHT 中发布内容的传统“提供”操作速度缓慢（中位数约 20 秒，常超 1 分钟），原因是僵化的 DHT 遍历需等待三个最近对等节点的响应，而在动态变化的网络中，这些节点频繁失效。

ProbeLab 的 **Optimistic Provide**（现为 Kubo v0.39.0 默认功能）通过三项关键优化将上传延迟降至 **约 1 秒**：

1. **网络规模估算：** 节点利用现有路由表刷新数据（零额外开销）本地估算全局对等节点总数，并应用偏差校正确保准确性。
2. **预测性终止：** 在 DHT 遍历期间，节点根据规模估算值计算何时有 90% 置信度找到 20 个最近对等节点，随后提前存储记录并立即终止遍历——避免等待无响应的节点。
3. **提前返回：** 在后续阶段中，当 20 个对等节点中有 15 个确认存储后，控制权即返回用户；剩余 5 个节点在后台异步继续操作。

**结果：** 上传延迟从约 15 秒降至约 0.7 秒。记录可用性保持不变（相似 GET 错误率），且后台的重新提供扫描会在后续纠正任何放置不精确性。

**限制：** 该优化依赖准确的网络规模估算；约 50% 的不可拨号节点可能导致估算值膨胀，降低性能（而非可用性）。冷启动也需要短暂延迟以刷新路由表。计划改进包括过滤不可拨号节点以及将估算值持久化至磁盘。

---

## 10. 货币化网关

**原文标题**: Monetization Gateway

**原文链接**: [https://blog.cloudflare.com/monetization-gateway/](https://blog.cloudflare.com/monetization-gateway/)

**Cloudflare 变现网关**

Cloudflare 宣布推出变现网关，使客户能够对其网络保护的任何资产（网页、API、数据集、MCP工具）进行收费。此举旨在应对基于广告的网络模式崩溃——随着AI代理成为主导用户，代理既不会查看广告，也不会维持订阅，而是按请求消耗内容。

该方案支持基于使用量的定价（例如按调用次数、代币或结果计费），实现亚美分级微交易——此前由于支付成本过高而无法实现。网关采用x402协议，这是一个利用HTTP 402“需付款”状态码的开放协议。买家在边缘节点通过稳定币（如USDC）支付，结算在不到一秒内点对点完成，费用极低且无拒付。无需卖家账户或事先关系——支付本身即是凭证。

主要特点：通过API设置灵活的支付规则（例如按路由收费、可变定价或仅对未认证调用者收费），在Cloudflare全球网络边缘验证，并支持稳定币直接兑换法币。通过将计量、支付和结算从源服务器卸载，简化了实施流程。

愿景：构建一个代理优先的互联网，任何请求都可成为交易，使创作者和小型API能够与大公司一样自动将内容变现。目前对Cloudflare客户开放候补名单。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 2 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 3 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 4 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 5 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 6 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 7 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 8 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 9 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 10 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 11 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 12 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 13 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 14 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 15 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 16 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 17 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 18 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 19 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 20 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 21 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 22 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 23 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 24 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 25 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 26 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 27 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 28 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 29 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 30 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 31 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 32 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 33 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 34 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 35 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 36 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 37 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 38 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 39 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 40 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 41 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 42 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 43 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 44 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 45 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 46 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 47 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 48 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 49 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 50 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 51 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 52 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 53 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 54 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 55 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 56 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 57 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 58 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 59 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 60 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 61 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 62 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 63 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 64 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 65 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 66 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 67 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 68 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 69 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 70 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 71 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 72 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 73 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 74 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 75 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 76 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 77 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 78 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 79 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 80 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 81 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 82 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 83 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 84 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 85 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 86 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 87 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 88 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 89 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 90 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 91 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 92 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 93 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 94 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 95 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 96 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 97 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 98 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 99 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 100 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 101 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 102 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 103 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 104 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 105 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 106 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 107 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 108 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 109 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 110 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 111 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 112 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 113 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 114 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 115 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 116 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 117 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 118 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 119 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 120 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 121 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 122 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 123 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 124 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 125 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 126 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 127 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 128 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 129 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 130 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 131 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 132 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 133 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 134 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 135 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 136 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 137 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 138 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 139 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 140 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 141 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 142 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 143 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 144 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 145 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 146 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 147 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 148 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 149 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 150 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 151 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 152 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 153 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 154 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 155 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 156 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 157 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 158 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 159 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 160 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 161 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 162 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 163 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 164 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 165 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 166 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 167 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 168 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 169 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 170 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 171 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 172 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 173 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 174 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 175 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 176 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 177 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 178 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 179 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 180 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 181 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 182 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 183 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 184 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 185 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 186 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 187 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 188 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 189 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 190 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 191 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 192 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 193 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 194 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 195 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 196 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 197 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 198 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 199 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 200 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 201 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 202 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 203 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 204 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 205 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 206 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 207 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 208 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 209 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 210 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 211 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 212 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 213 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 214 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 215 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 216 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 217 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 218 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 219 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 220 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 221 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 222 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 223 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 224 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 225 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 226 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 227 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 228 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 229 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 230 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 231 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 232 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 233 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 234 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 235 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 236 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 237 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 238 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 239 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 240 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 241 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 242 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 243 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 244 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 245 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 246 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 247 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 248 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 249 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 250 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 251 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 252 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 253 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 254 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 255 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 256 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 257 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 258 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 259 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 260 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 261 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 262 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 263 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 264 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 265 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 266 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 267 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 268 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 269 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 270 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 271 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 272 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 273 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 274 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 275 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 276 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 277 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 278 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 279 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 280 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 281 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 282 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 283 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 284 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 285 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 286 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 287 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 288 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 289 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 290 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 291 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 292 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 293 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 294 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 295 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 296 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 297 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 298 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 299 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 300 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 301 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 302 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 303 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 304 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 305 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 306 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 307 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 308 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 309 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 310 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 311 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 312 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 313 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 314 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 315 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 316 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 317 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 318 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 319 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 320 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 321 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 322 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 323 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 324 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 325 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 326 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 327 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 328 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 329 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 330 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 331 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 332 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 333 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 334 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 335 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 336 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 337 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 338 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 339 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 340 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 341 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 342 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 343 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 344 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 345 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 346 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 347 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 348 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 349 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 350 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 351 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 352 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 353 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 354 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 355 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 356 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 357 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 358 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 359 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 360 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 361 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 362 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 363 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 364 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 365 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 366 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 367 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 368 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 369 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 370 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 371 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 372 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 373 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 374 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 375 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 376 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 377 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 378 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 379 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 380 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 381 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 382 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 383 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 384 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 385 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 386 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 387 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 388 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 389 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 390 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 391 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 392 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 393 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 394 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 395 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 396 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 397 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 398 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 399 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 400 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 401 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 402 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 403 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 404 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 405 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 406 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 407 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 408 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 409 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 410 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 411 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 412 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 413 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 414 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 415 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 416 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 417 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 418 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 419 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 420 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 421 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 422 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 423 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 424 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 425 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 426 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 427 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 428 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 429 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 430 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 431 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 432 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 433 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 434 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 435 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 436 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 437 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 438 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 439 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 440 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 441 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 442 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 443 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 444 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 445 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 446 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 447 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 448 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 449 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 450 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 451 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 452 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 453 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 454 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 455 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 456 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 457 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 458 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 459 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 460 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 461 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 462 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 463 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 464 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 465 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 466 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
