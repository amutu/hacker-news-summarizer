# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-01-20.md)

*最后自动更新时间: 2026-01-20 20:37:52*
## 1. 隐藏于众目睽睽之下的26,000年天文古迹

**原文标题**: The 26,000-Year Astronomical Monument Hidden in Plain Sight

**原文链接**: [https://longnow.org/ideas/the-26000-year-astronomical-monument-hidden-in-plain-sight/](https://longnow.org/ideas/the-26000-year-astronomical-monument-hidden-in-plain-sight/)

本文介绍了胡佛水坝纪念碑广场作为一个被忽视的天文纪念碑，它标记了水坝于1936年竣工的日期。其核心特色是由艺术家奥斯卡·J·W·汉森设计的磨石地板，它实际上是一幅天体图。

地板的中心元素描绘了地球25772年的地轴进动周期——即地球轴心的缓慢摆动。中央旗杆代表天极，周围的圆圈则展示了天极在数千年间移动的轨迹。地板精确镶嵌，显示了北极星（1936年的北极星）及其他恒星的位置，包括右枢（古埃及时期的北极星）和织女星（未来的北极星）。它还标示了水坝落成典礼当晚可见行星的位置。

尽管设计精巧，这座纪念碑仍鲜为人知，部分原因是汉森本人的解释极为抽象，且美国垦务局提供的解读极少。作者通过获取原始蓝图，全面解码了广场的技术意图，并指出其与“长今基金会”万年钟计划中的天文机制相似。文章总结认为，这座广场是一个永恒而隐晦的26000年钟，定格在水坝建成的那一刻。

---

## 2. Instabridge已收购Nova Launcher。

**原文标题**: Instabridge has acquired Nova Launcher

**原文链接**: [https://novalauncher.com/nova-is-here-to-stay](https://novalauncher.com/nova-is-here-to-stay)

专注于互联网连接的瑞典公司Instabridge已收购Nova Launcher。新所有者表示Nova不会关闭，他们的首要任务是保持其稳定性及与现代Android系统的兼容性。

他们承诺将保留Nova在性能与自定义方面的核心特色，专注于修复漏洞并同步Android系统更新。公司将收集社区反馈，但可能不会回复每一条信息。

用户需关注以下要点：
*   **商业模式：** 为确保可持续运营，他们正在探索免费版加入广告等方案。Nova Prime版本将保持无广告。
*   **现有用户：** 已购买的Nova Prime权益将获得保留，所有Prime功能持续有效。
*   **定价：** Nova Prime价格已调整为3.99美元，修正了近期涨价。
*   **未来规划：** 目标是通过长期投入提升性能并开发新功能，采取审慎推进策略。
*   **开源与隐私：** 开源Nova正在评估中尚未决定。他们承诺仅收集必要数据，并声明不会出售个人数据。

整体信息体现了负责任的管理理念，旨在为Nova提供稳定且持续维护的未来。

---

## 3. Unix管道卡牌游戏

**原文标题**: The Unix Pipe Card Game

**原文链接**: [https://punkx.org/unix-pipe-game/](https://punkx.org/unix-pipe-game/)

**Unix管道卡牌游戏**是一款教育类卡牌游戏，旨在教授儿童（及初学者）如何使用管道串联Unix命令行工具。由jackdoe设计，该游戏假设家长或教师熟悉`cat`、`grep`、`tail`、`head`、`wc`、`sort`和`uniq`等基础命令。

游戏玩法包括抽取任务卡（例如“打印最常见的行”或“统计包含‘in’的行数”），然后从洗混的牌堆中构建正确的命令卡序列来解决问题。根据所选游戏模式，玩家需竞争构建最短或最长的有效管道链。率先正确组合命令的玩家赢得回合。

游戏材料提供付费实体版本（目前售罄）或可在家打印的免费PDF文件。扩展包引入了进程替换等更进阶的概念。

文章还列举了同一作者设计的其他教育类游戏，涵盖Python编程、C语言指针、机器码和RISC-V汇编等主题，将本游戏定位为培养儿童计算思维的更广泛工具包的一部分。

---

## 4. 非传统PostgreSQL优化技巧

**原文标题**: Unconventional PostgreSQL Optimizations

**原文链接**: [https://hakibenita.com/postgresql-unconventional-optimizations](https://hakibenita.com/postgresql-unconventional-optimizations)

本文探讨了三种非常规的PostgreSQL优化技术，以提升性能并降低存储成本。

首先，讨论了利用`constraint_exclusion`避免不必要的全表扫描。启用此设置后，当查询条件违反检查约束时，PostgreSQL可跳过扫描相关表，这在用户可能进行临时错误查询的报告环境中尤为实用。

其次，建议通过函数索引优化低基数场景。相比为整个日期时间列建立索引，仅索引日期部分可显著减少索引大小（例如从214 MB降至66 MB），同时保持查询性能。为确保索引表达式的一致性使用，文章推荐采用虚拟生成列（PostgreSQL 18起支持）或视图。

第三，强调使用哈希索引比B树索引更高效地实现唯一性约束。哈希索引体积更小且等值查询更快，非常适合邮箱等列的唯一性约束，但缺乏排序功能。

这些技术为传统优化提供了创新替代方案，在性能提升与资源效率之间取得了平衡。

---

## 5. 我沉迷于有用。

**原文标题**: I'm addicted to being useful

**原文链接**: [https://www.seangoedecke.com/addicted-to-being-useful/](https://www.seangoedecke.com/addicted-to-being-useful/)

作者是一名软件工程师，他将自己对工作的深度热爱归因于一种“对有用性的上瘾”——即内心那种解决问题的强烈冲动，尤其是在自己处于独特位置能够提供帮助时。他将此比作果戈理《外套》中的主人公，后者在一份糟糕的工作中找到了深刻的满足感，因为这恰好契合了他自身的缺陷。

尽管作者承认这个行业已变得压力更大，且存在客观的不满理由，但他认为许多工程师主要受这种内在冲动驱动——无论是解决难题、寻求掌控感，还是渴望发挥作用——而非金钱或权力等外在回报。

文章建议，拥有类似动力的工程师应有意识地塑造这种冲动，以避免陷入困境。这包括保护自己的时间不被那些想利用其助人倾向的人占用，专注于高影响力工作而非仅仅完成任务，并学会应对那些自己可能并不尊重的人提出的要求。最终，作者认为，理解并有效驾驭这种内在动机，是在软件工程领域获得成就感的关键。

---

## 6. Show HN：Mastra 1.0，来自Gatsby开发者的开源JavaScript智能体框架

**原文标题**: Show HN: Mastra 1.0, open-source JavaScript agent framework from the Gatsby devs

**原文链接**: [https://github.com/mastra-ai/mastra](https://github.com/mastra-ai/mastra)

**Mastra 1.0** 是由 Gatsby 团队开发的开源 TypeScript 框架，用于构建 AI 驱动的应用程序和智能体。它提供了一套完整的工具包，支持从原型到生产环境的 AI 产品开发、调优和扩展。

主要功能包括：
*   **模型路由：** 通过统一接口连接超过 40 家 LLM 提供商（如 OpenAI、Anthropic、Gemini 等）。
*   **智能体与工作流：** 构建用于开放式任务的自主智能体，或使用基于图的工作流引擎来精确控制多步骤流程。
*   **人机协同：** 暂停和恢复智能体/工作流的执行，以等待用户输入或批准。
*   **上下文管理：** 为智能体配备对话历史、数据检索和记忆能力。
*   **灵活集成：** 将智能体集成到现有的 React、Next.js 或 Node.js 应用中，或将其部署为独立的端点。
*   **MCP 服务器：** 创建模型上下文协议服务器，将智能体和工具暴露给兼容的系统。
*   **生产工具：** 内置评估和可观测性功能，用于监控和优化。

可通过 CLI（`npm create mastra@latest`）快速上手，项目还提供了详尽的文档、模板以及 Discord 社区支持。

---

## 7. 展示 HN：wxpath – 使用 XPath 进行声明式网页爬取

**原文标题**: Show HN: wxpath – Declarative web crawling in XPath

**原文链接**: [https://github.com/rodricios/wxpath](https://github.com/rodricios/wxpath)

**wxpath** 是一种声明式网络爬虫，它使用 XPath 表达式在单个语句中同时定义遍历和数据提取，无需手动编写爬取循环。它引入了 `url(...)` 操作符来获取网页，并使用 `///url(...)` 语法进行深度优先、广度优先的爬取，直至指定深度。该工具基于 **asyncio/aiohttp** 构建，支持高并发，并通过 elementpath 库支持 **XPath 3.1**，从而启用映射和数组等高级功能。

主要特性包括：
- **声明式语法**：将爬取和提取结合在一个表达式中。
- **异步与并发**：提供异步和阻塞式 API，使用灵活。
- **礼貌爬取**：默认遵守 `robots.txt`，并允许自定义请求头。
- **进度跟踪**：通过 tqdm 集成进度条。
- **持久化**：可选缓存后端（SQLite/Redis）存储爬取结果。
- **CLI 支持**：直接从终端执行表达式并输出 JSON。
- **钩子系统**：实验性插件系统，可修改爬取行为（如过滤、预处理）。

该项目处于早期开发阶段，核心概念稳定但 API 可能变动。它需要 Python 3.10+，旨在实现轻量级、可组合的网络爬取，无需样板代码。

---

## 8. 英伟达股票暴跌预测

**原文标题**: Nvidia Stock Crash Prediction

**原文链接**: [https://entropicthoughts.com/nvidia-stock-crash-prediction](https://entropicthoughts.com/nvidia-stock-crash-prediction)

本文分析了英伟达股价在2026年收盘低于100美元的概率，估计约为10%。作者认为，由于两个关键因素，像无偏随机游走这样的标准模型不足以进行此类预测。

首先，在一年时间框架内，预期回报（信号）相对于波动率（噪声）足够显著，不容忽视。其次，更关键的是，波动率并非恒定；股价若大幅下跌至例如130美元，很可能发生在高波动率市场环境中，这使得进一步跌至100美元的可能性增加。

为此，本文转向期权市场数据。作者采用二项式资产定价模型，通过逆向推导2026年12月到期、行权价为100美元的看涨期权的市场价格所隐含的波动率，得出了更现实的波动率估计。该模型基于当前股价、行权价、到期时间、利率和假设的日波动率等因素计算期权的理论价格。通过调整输入波动率直至模型输出与实际期权市场价格（92.90美元）相符，作者反推出隐含日波动率为3.1%。这一市场隐含波动率反映了交易者对未来价格波动的预期，并构成了最终10%概率估计的基础。

---

## 9. 截至2025年的IP地址

**原文标题**: IP Addresses Through 2025

**原文链接**: [https://www.potaroo.net/ispcol/2026-01/addr2025.html](https://www.potaroo.net/ispcol/2026-01/addr2025.html)

本文审视了截至2025年的IP地址分配状况，重点关注IPv4地址枯竭与IPv6缓慢采用之间的持续张力。

核心问题在于32位IPv4地址空间已无法满足当今数以亿计联网设备的需求。虽然IPv6设计了庞大的128位地址空间以解决此问题，但其部署进程依然迟缓。网络地址转换（NAT）技术的广泛使用通过允许多台设备共享单一公网地址，延长了IPv4的寿命，但这只是权宜之计，可能导致互联网走向碎片化。

数据显示，已分配的IPv4地址总量已基本停滞，2025年微缩23.7万个地址至约36.87亿。各区域互联网注册管理机构（RIR）的未分配地址池几近枯竭，仅剩约390万个可用地址。文章指出，长期闲置的"E类"地址空间（2.68亿个地址）在技术上仍被保留，但由于实施障碍实际无法使用。

作者总结认为，互联网正处在十字路口：继续依赖IPv4和NAT技术可能引发网络碎片化，而广泛采用IPv6则有望维持全球网络的整体性。当前地址分配趋势尚未明确显示哪种路径将占据主导，这使得未来网络协议格局仍存在不确定性。

---

## 10. 联合国报告警告：全球多地面临“水资源破产”危机

**原文标题**: Much of the World Facing 'Water Bankruptcy,' U.N. Report Warns

**原文链接**: [https://e360.yale.edu/digest/water-bankruptcy-report](https://e360.yale.edu/digest/water-bankruptcy-report)

联合国一份新报告警告称，世界大部分地区正面临不可逆转的"水资源破产"，即因不可持续的消耗导致重要天然水库永久丧失。这场危机源于人类消耗淡水储备（包括地下含水层、湿地和冰川）的速度超过其自然补给能力，且日益严重的干旱加剧了这一趋势。

关键数据凸显了严峻性：全球超70%的含水层正在萎缩，超40%的灌溉用水来自这些日益枯竭的水源，过去50年全球湿地消失面积相当于印度国土。约30亿人目前生活在储水量不稳定或持续下降的地区，污染问题进一步减少了可用供水。

中东、南亚和美国西南部等热点地区因密集型农业使本已萎缩的水源更加紧张。报告主要作者强调，若不转向可持续农业，水资源破产将迅速蔓延。

这份在联合国重要水资源会议前发布的分析报告敦促各国政府正式承认这种不可逆转的状态，并优先阻止天然水库进一步丧失——因为消失的冰川或坍塌的含水层无法恢复。核心信息是呼吁立即采取行动，防止全球水资源赤字持续加深。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 2 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 3 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 4 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 5 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 6 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 7 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 8 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 9 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 10 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 11 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 12 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 13 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 14 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 15 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 16 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 17 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 18 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 19 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 20 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 21 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 22 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 23 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 24 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 25 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 26 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 27 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 28 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 29 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 30 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 31 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 32 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 33 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 34 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 35 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 36 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 37 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 38 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 39 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 40 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 41 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 42 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 43 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 44 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 45 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 46 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 47 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 48 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 49 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 50 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 51 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 52 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 53 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 54 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 55 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 56 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 57 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 58 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 59 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 60 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 61 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 62 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 63 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 64 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 65 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 66 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 67 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 68 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 69 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 70 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 71 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 72 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 73 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 74 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 75 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 76 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 77 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 78 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 79 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 80 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 81 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 82 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 83 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 84 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 85 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 86 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 87 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 88 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 89 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 90 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 91 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 92 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 93 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 94 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 95 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 96 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 97 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 98 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 99 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 100 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 101 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 102 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 103 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 104 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 105 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 106 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 107 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 108 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 109 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 110 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 111 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 112 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 113 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 114 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 115 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 116 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 117 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 118 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 119 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 120 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 121 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 122 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 123 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 124 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 125 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 126 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 127 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 128 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 129 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 130 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 131 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 132 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 133 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 134 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 135 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 136 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 137 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 138 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 139 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 140 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 141 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 142 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 143 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 144 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 145 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 146 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 147 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 148 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 149 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 150 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 151 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 152 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 153 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 154 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 155 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 156 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 157 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 158 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 159 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 160 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 161 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 162 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 163 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 164 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 165 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 166 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 167 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 168 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 169 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 170 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 171 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 172 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 173 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 174 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 175 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 176 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 177 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 178 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 179 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 180 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 181 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 182 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 183 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 184 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 185 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 186 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 187 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 188 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 189 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 190 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 191 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 192 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 193 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 194 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 195 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 196 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 197 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 198 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 199 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 200 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 201 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 202 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 203 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 204 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 205 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 206 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 207 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 208 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 209 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 210 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 211 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 212 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 213 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 214 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 215 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 216 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 217 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 218 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 219 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 220 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 221 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 222 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 223 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 224 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 225 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 226 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 227 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 228 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 229 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 230 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 231 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 232 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 233 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 234 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 235 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 236 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 237 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 238 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 239 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 240 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 241 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 242 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 243 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 244 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 245 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 246 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 247 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 248 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 249 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 250 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 251 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 252 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 253 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 254 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 255 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 256 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 257 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 258 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 259 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 260 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 261 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 262 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 263 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 264 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 265 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 266 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 267 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 268 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 269 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 270 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 271 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 272 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 273 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 274 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 275 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 276 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 277 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 278 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 279 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 280 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 281 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 282 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 283 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 284 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 285 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 286 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 287 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 288 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 289 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 290 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 291 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 292 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 293 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 294 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 295 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 296 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 297 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 298 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 299 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 300 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 301 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 302 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 303 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 304 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
