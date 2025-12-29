# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2025-12-29.md)

*最后自动更新时间: 2025-12-29 21:20:15*
## 1. 谷歌已死。我们该何去何从？

**原文标题**: Google is dead. Where do we go now?

**原文链接**: [https://www.circusscientist.com/2025/12/29/google-is-dead-where-do-we-go-now/](https://www.circusscientist.com/2025/12/29/google-is-dead-where-do-we-go-now/)

作者长期在娱乐业务中使用谷歌广告，但近期广告效果突然急剧下滑。尽管增加了预算、同时运行多个广告系列，甚至使用了大量谷歌广告赠金，但在预算提升十倍后仍毫无回报，因此决定停止在该平台的投入。

面对收入危机，他们制定了多管齐下的业务重建策略：转向TikTok和Instagram等平台的短视频广告以触达年轻受众；同时通过定期发送电子邮件通讯维护现有客户群，促进复购。

此外，他们计划开展本地实体营销（如在市集举办免费演出），并围绕核心业务开发新产品线。作为过渡方案，作者还提供网站与物联网开发服务以获取收入，支撑新战略的实施。

---

## 2. 所有已下架的Steam游戏

**原文标题**: All Delisted Steam Games

**原文链接**: [https://delistedgames.com/all-delisted-steam-games/](https://delistedgames.com/all-delisted-steam-games/)

本页面是Steam商店中已下架的1,038款游戏的完整列表，主要目的在于收录这些游戏并关联其对应的开发商与发行商。

列表按字母顺序排列，涵盖从《007传奇》《心灵杀手》《为战而生》等3A大作到各类小型独立游戏。标有星号（*）的条目为仅含基础信息的占位页面。

游戏下架的常见原因包括：
*   **授权到期：** 许多基于影视剧（如《探险活宝》《神秘博士》）或其他IP的游戏因此下架。
*   **服务器关闭：** 主要为强联网或服务型游戏，如《为战而生》《进化》《阿特拉斯反应》。
*   **开发商/发行商停业：** 例如Telltale Games旗下作品（《回到未来：游戏版》）及THQ等已倒闭发行商的游戏。
*   **重新上架：** 部分标注“[已重新上架]”的游戏（如《狂野西部：枪手》《黑暗之魂》）以重制或更新版本形式回归Steam。

这些数据凸显了数字商店内容的短暂性——游戏常因法律、商业或技术原因消失，使得此类存档对游戏保存具有重要意义。

---

## 3. 使用Zig进行静态分配

**原文标题**: Static Allocation with Zig

**原文链接**: [https://nickmonad.blog/2025/static-allocation-with-zig-kv/](https://nickmonad.blog/2025/static-allocation-with-zig-kv/)

本文探讨了如何使用Zig语言在兼容Redis的键值服务器（"kv"）中实现静态内存分配。作者采用了"TigerStyle"技术，即在启动时分配所有内存并重复使用，避免运行时动态分配/释放，以提高性能、可预测性和安全性。

实现主要关注三个领域：
1.  **连接处理：** 使用内存池管理`Connection`结构及其发送/接收缓冲区，为并发连接设置固定上限。
2.  **命令解析：** 采用`FixedBufferAllocator`实现Redis命令（RESP协议）的零拷贝解析，并在每个请求后重置分配器。
3.  **键值存储：** 使用Zig的非托管哈希映射（`std.StringHashMapUnmanaged`）并预先分配最大容量。自定义的`ByteArrayPool`存储键值数据，映射表负责管理指针。

主要挑战包括：根据可配置参数（最大连接数、键值大小）预先确定内存限制，以及管理哈希映射的效率——特别是确保为最坏情况（例如每个键都存储最大尺寸的列表）预留足够空间，并在不进行动态重新分配的情况下处理删除操作。作者总结认为，在静态分配环境中，为实现最优控制可能需要自定义映射实现。

---

## 4. 火焰图 vs. 树状图 vs. 旭日图（2017）

**原文标题**: Flame Graphs vs. Tree Maps vs. Sunburst (2017)

**原文链接**: [https://www.brendangregg.com/blog/2017-02-06/flamegraphs-vs-treemaps-vs-sunburst.html](https://www.brendangregg.com/blog/2017-02-06/flamegraphs-vs-treemaps-vs-sunburst.html)

这篇2017年的文章以Linux 4.9-rc5源代码为例，比较了分析文件系统磁盘使用情况的不同可视化方法。

作者认为**火焰图**作为默认视图效果极佳。通过对比矩形长度，它能帮助用户快速建立高层级认知——例如立即看出`drivers`目录占用超过50%空间。即使以截图或打印稿等静态形式呈现，它依然能提供丰富信息。

**树状图**（如GrandPerspective、Baobab）能更高效利用垂直空间，突出显示大型独立文件，但若不进行交互式探索，则难以直观比较文件大小或把握顶层目录的比例关系。

**旭日图**虽然视觉冲击力强，但被批评存在感知误导性。其角度与径向面积的设计可能夸大深层目录的视觉占比，导致准确比较变得困难。

传统工具如**`ncdu`**和**`du`**因速度快、操作简单被视为实用的入门选择，但它们缺乏可视化工具提供的多层次整体视角。

作者总结道，理想工具应同时提供这三种互为补充的可视化视图，但指出火焰图可能是理解层级数据时最适合作为默认快速浏览的选择。

---

## 5. 德国互联网服务提供商屏蔽的域名列表

**原文标题**: List of domains censored by German ISPs

**原文链接**: [https://cuiiliste.de/domains](https://cuiiliste.de/domains)

这段文字似乎是网站 **CUIIListe.de** 的导航菜单和标题。该网站的主要目的是追踪并列出**被德国互联网服务提供商（ISP）根据法律命令封锁或审查**的互联网域名。

根据菜单显示，网站的核心信息和功能包括：
*   **列出被封锁域名：** 维护一份已受审查的域名列表。
*   **用户提交功能：** 允许访客“添加域名”至该列表。
*   **自检工具：** 提供“我受影响了吗？”功能，可能用于让用户检查自己访问某个网站是否受到封锁。
*   **规避指南：** 提供“绕过审查”的信息，建议访问被封锁内容的方法。
*   **背景介绍：** “关于我们”部分解释了网站的宗旨。

本质上，**CUIIListe.de 是一个关于德国互联网审查的公共透明度与资源平台**，侧重于告知用户被封锁的网站，并提供识别和潜在规避这些封锁的方法。

---

## 6. 那个让我开始关注未定义行为的生产缺陷

**原文标题**: The production bug that made me care about undefined behavior

**原文链接**: [https://gaultier.github.io/blog/the_production_bug_that_made_me_care_about_undefined_behavior.html](https://gaultier.github.io/blog/the_production_bug_that_made_me_care_about_undefined_behavior.html)

本文讲述了一个C++支付系统中的生产故障：一个HTTP端点返回了相互矛盾的JSON字段（`"error": true, "succeeded": true`），而这两个字段本应互斥。作者将问题追溯到`Response`结构体中未初始化的布尔字段。声明`Response response;`触发了默认初始化，对于这个非POD结构体，这调用了编译器生成的默认构造函数。该构造函数初始化了`std::string`成员，但保留了原始`bool`字段未初始化，导致读取时出现未定义行为。

调查揭示了C++初始化规则的复杂性和陷阱，这些规则因类型（POD与非POD）而异，并可能随标准变化而改变。修复方法是使用值初始化（`Response response{};`）以确保所有字段被零初始化。作者指出编译器通常不会对此类问题发出警告，强调了使用AddressSanitizer或静态分析器等外部工具的必要性，尽管这些工具也有局限性。

这次经历凸显了未定义行为是一种真实且危险的现象，可能导致程序行为完全不可预测，与源代码的表面逻辑相矛盾。作者总结道，尽管C++功能强大，但其复杂且易出错的初始化规则体现了该语言的缺陷，并提倡采用其他语言中更简单、更安全的默认设置。

---

## 7. 展示 HN：Aroma：每个 TCP 代理都可通过 RTT 指纹识别被检测

**原文标题**: Show HN: Aroma: Every TCP Proxy Is Detectable with RTT Fingerprinting

**原文链接**: [https://github.com/Sakura-sx/Aroma](https://github.com/Sakura-sx/Aroma)

**摘要：**

Aroma是一款概念验证工具，通过分析网络时序差异（特别是往返时间RTT）来检测TCP代理。其工作原理基于比较从Linux内核获取的两个TCP RTT值：最小RTT（`tcpi_min_rtt`）与平滑RTT（`tcpi_rtt`）。

核心检测方法通过计算简单得分实现：`tcpi_min_rtt / tcpi_rtt`。在直连情况下，这两个值通常相近，得分较高（接近1）。但当存在TCP代理时，客户端到代理服务器的RTT与代理服务器到目标服务器的RTT存在显著差异。这会导致最小RTT（通常反映代理的快速本地连接）远低于平滑RTT（包含客户端到代理的较长延迟），从而产生低分。得分低于约0.1时即标记为代理。

作者通过Fastly基础设施演示了该方法，该环境可提供必要的TCP套接字数据。该工具目前专注于第4层（TCP）代理检测，可能识别部分采用TCP代理的VPN，但并非为第3层（如标准VPN）检测设计。代码目前尚未达到生产就绪标准，主要用于验证时序指纹技术可可靠识别连接路径中中间代理的概念。

---

## 8. GOG将被其联合创始人收购。

**原文标题**: GOG is getting acquired by its original co-founder

**原文链接**: [https://www.gog.com/blog/gog-is-getting-acquired-by-its-original-co-founder-what-it-means-for-you/](https://www.gog.com/blog/gog-is-getting-acquired-by-its-original-co-founder-what-it-means-for-you/)

无DRM游戏平台GOG将被其联合创始人米哈尔·基钦斯基从CD PROJEKT手中收购。该平台保护游戏作品、确保玩家所有权的核心使命将保持不变，并会得到进一步强化。

此次收购源于双方对GOG创立原则的共同坚守：自由、独立以及对已购游戏的真正掌控权。基钦斯基旨在强化这一理念，以应对当前由强制客户端和封闭生态系统主导的市场趋势。

对用户而言，一切如常：无DRM政策仍是核心，游戏库与离线安装器不受影响，账户数据仍由GOG保管。平台将保持运营独立性，并继续与CD PROJEKT保持合作——后者仍会在GOG发布游戏，同时将自身重心集中于游戏开发。

展望未来，GOG计划加强游戏保护工作并赋予社区更多话语权，相关新举措将于2026年启动。公司强调其财务状况稳定，用户赞助将继续专用于游戏保护事业。

---

## 9. 高性能C++哈希表采用分组SIMD元数据扫描技术

**原文标题**: High-performance C++ hash table using grouped SIMD metadata scanning

**原文链接**: [https://github.com/Cranot/grouped-simd-hashtable](https://github.com/Cranot/grouped-simd-hashtable)

本文介绍了一种高性能C++哈希表**GroupedSIMDElastic**，它采用分组SIMD元数据扫描技术，在大规模、查询密集型工作负载中超越了`ankerl::unordered_dense`等先进方案。

其核心创新在于**分组探测机制**。传统的二次探测会分散内存访问，导致SIMD效率低下。而本设计将16个连续槽位作为单个分组进行探测，仅需少数指令即可通过SIMD高效扫描元数据。该方法受谷歌Swiss Tables启发，先通过1字节元数据标签（包含占用标志和7位哈希片段）过滤掉大部分不匹配项，再进行完整的键值比较。

基准测试表明，当元素数量超过100万时，其查询命中速度比基准方案**快达1.69倍**。但存在权衡：插入操作较慢（约0.72倍），因此最适合以查询为主的应用场景。该实现需要C++17标准、SSE2指令集支持以及预分配固定容量，暂不支持动态扩容和删除操作。

该设计源于一项推翻旧哈希猜想的研究，实验证明连续内存访问对SIMD加速至关重要。通过组间二次跳跃（如h、h+16、h+64）可避免聚类问题，并确保所有槽位均可被访问。

---

## 10. Show HN: Superset – 可运行10个并行编码代理的终端

**原文标题**: Show HN: Superset – Terminal to run 10 parallel coding agents

**原文链接**: [https://superset.sh/](https://superset.sh/)

Superset是一款基于终端的工具，能让开发者并行运行多个AI编程助手，旨在加速编码工作流程。它允许用户同时启动数十个代理（如Claude Code、Codex、Cursor或任何基于CLI的工具），处理不同任务，例如功能开发、错误修复和代码重构。

主要功能包括：
*   **并行执行：** 可同时处理多个编码任务，无需切换上下文。
*   **代理无关性：** 兼容多种AI编程助手，并能与现有工具集成。
*   **隔离工作树：** 每个代理在独立的Git工作树中运行，避免合并冲突，合并前可并排查看更改。
*   **IDE灵活性：** 用户可直接在偏好的IDE（包括VS Code、Cursor、Xcode或JetBrains）中打开任意工作树。

该工具目前可在macOS上免费下载，旨在为希望通过并行化AI辅助编码来提升效率的工程师提供解决方案。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 2 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 3 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 4 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 5 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 6 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 7 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 8 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 9 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 10 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 11 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 12 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 13 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 14 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 15 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 16 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 17 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 18 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 19 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 20 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 21 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 22 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 23 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 24 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 25 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 26 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 27 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 28 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 29 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 30 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 31 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 32 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 33 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 34 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 35 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 36 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 37 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 38 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 39 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 40 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 41 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 42 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 43 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 44 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 45 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 46 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 47 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 48 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 49 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 50 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 51 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 52 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 53 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 54 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 55 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 56 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 57 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 58 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 59 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 60 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 61 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 62 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 63 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 64 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 65 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 66 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 67 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 68 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 69 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 70 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 71 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 72 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 73 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 74 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 75 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 76 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 77 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 78 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 79 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 80 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 81 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 82 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 83 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 84 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 85 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 86 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 87 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 88 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 89 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 90 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 91 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 92 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 93 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 94 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 95 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 96 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 97 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 98 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 99 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 100 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 101 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 102 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 103 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 104 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 105 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 106 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 107 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 108 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 109 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 110 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 111 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 112 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 113 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 114 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 115 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 116 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 117 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 118 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 119 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 120 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 121 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 122 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 123 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 124 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 125 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 126 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 127 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 128 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 129 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 130 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 131 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 132 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 133 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 134 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 135 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 136 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 137 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 138 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 139 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 140 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 141 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 142 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 143 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 144 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 145 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 146 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 147 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 148 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 149 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 150 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 151 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 152 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 153 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 154 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 155 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 156 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 157 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 158 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 159 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 160 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 161 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 162 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 163 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 164 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 165 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 166 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 167 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 168 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 169 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 170 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 171 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 172 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 173 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 174 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 175 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 176 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 177 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 178 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 179 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 180 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 181 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 182 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 183 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 184 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 185 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 186 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 187 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 188 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 189 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 190 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 191 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 192 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 193 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 194 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 195 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 196 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 197 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 198 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 199 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 200 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 201 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 202 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 203 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 204 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 205 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 206 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 207 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 208 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 209 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 210 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 211 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 212 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 213 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 214 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 215 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 216 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 217 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 218 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 219 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 220 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 221 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 222 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 223 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 224 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 225 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 226 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 227 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 228 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 229 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 230 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 231 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 232 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 233 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 234 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 235 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 236 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 237 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 238 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 239 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 240 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 241 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 242 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 243 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 244 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 245 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 246 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 247 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 248 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 249 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 250 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 251 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 252 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 253 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 254 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 255 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 256 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 257 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 258 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 259 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 260 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 261 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 262 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 263 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 264 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 265 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 266 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 267 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 268 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 269 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 270 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 271 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 272 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 273 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 274 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 275 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 276 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 277 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 278 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 279 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 280 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 281 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 282 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
