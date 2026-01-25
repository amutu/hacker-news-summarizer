# Hacker News 热门文章摘要 (2026-01-25)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 首先，让我在乎

**原文标题**: First, Make Me Care

**原文链接**: [https://gwern.net/blog/2026/make-me-care](https://gwern.net/blog/2026/make-me-care)

本文批评了非虚构写作中的一个常见缺陷：以大量背景信息开篇，这可能导致读者在接触到精彩内容前就失去兴趣。

核心建议是改用“钩子”开篇——即选取一个与主题相关的、引人入胜的反常现象、问题或矛盾点。这个初始钩子必须能立刻引发读者的关注，其目的是赢得读者的注意力，并使其对接下来的解释产生需求。

只有在确保这种参与感后，作者才应提供必要的背景、语境或基础信息。文章主张一种结构上的反转：以主题最独特的趣味点切入，让解释性背景作为对读者好奇心的回报随后呈现。

---

## 2. 一款在你弯腰驼背时模糊屏幕的macOS应用

**原文标题**: A macOS app that blurs your screen when you slouch

**原文链接**: [https://github.com/tldev/posturr](https://github.com/tldev/posturr)

**Posturr** 是一款 macOS 应用，它利用电脑摄像头和苹果的 Vision 框架实时监测您的坐姿。一旦检测到您弯腰驼背，它会逐步模糊屏幕，作为提醒您坐直的可视化信号。当您调整好姿势后，模糊效果会立即消失。

其主要功能包括实时身体姿态与面部追踪、多显示器支持，以及一个轻量化的菜单栏控制界面，用于开关监测、调整灵敏度或重新校准基准姿势。该应用注重隐私，所有数据均在本地处理，无需账户或网络连接。

安装时，请从 Releases 页面下载应用，将其移至“应用程序”文件夹，首次启动时需右键点击并选择“打开”以绕过 Gatekeeper 安全限制。您必须授予摄像头权限才能正常使用。

应用在摄像头与眼睛齐平且光线充足时效果最佳。默认情况下，它使用私有的 macOS API 实现高效的屏幕模糊效果，同时提供公共 API 备用选项（“兼容模式”）。Posturr 需要 macOS 13.0 或更高版本，并基于 MIT 许可证分发。

---

## 3. 报告发现：西班牙铁轨在高速列车事故前已出现断裂

**原文标题**: Spanish track was fractured before high-speed train disaster, report finds

**原文链接**: [https://www.bbc.com/news/articles/c1m77dmxlvlo](https://www.bbc.com/news/articles/c1m77dmxlvlo)

对周日西班牙致命高铁事故的初步调查发现，脱轨前一段直线轨道出现断裂，造成至少45人死亡。

铁路事故调查委员会的报告指出，轨道上近40厘米的缺口导致私营Iryo列车第六节车厢脱轨。随后其后方车厢冲入对向轨道，与迎面驶来的国营Renfe列车相撞。大部分伤亡发生在Renfe列车的前部车厢。

关键证据包括在未脱轨的Iryo列车车轮上发现的凹槽痕迹，以及早前经过同一路段的三列列车上的类似痕迹。这些痕迹"与Iryo列车抵达前轨道已开裂的情况相符"。痕迹模式表明，脱轨前铁轨已向外倾斜。

西班牙当局强调该报告为"初步推断"，需进一步分析。交通部长表示，若轨道断裂是事故原因，其很可能发生在碰撞前不久，无法被及时检测到。

这是西班牙十多年来最严重的铁路事故，伤亡人数已超过2013年加利西亚脱轨事故（造成80人死亡）。

---

## 4. 使用PostgreSQL作为事件驱动系统的死信队列

**原文标题**: Using PostgreSQL as a Dead Letter Queue for Event-Driven Systems

**原文链接**: [https://www.diljitpr.net/blog-post-postgresql-dlq](https://www.diljitpr.net/blog-post-postgresql-dlq)

本文介绍了Wayfair在事件驱动系统中处理故障的一种解决方案，该系统将Kafka事件进行丰富后存储于PostgreSQL。由于Kafka作为死信队列（DLQ）缺乏可见性，团队改用专用的PostgreSQL表作为DLQ。

失败事件被存储在该表中，并包含原始负载、错误原因、状态（待处理/成功）和重试次数等元数据。这使得故障易于查询和审计。通过使用ShedLock协调以防止重复处理，一个重试调度器定期重新处理符合条件的待处理事件。它利用PostgreSQL的`FOR UPDATE SKIP LOCKED`子句，在多个服务实例之间实现安全、并发的重试。

这种方法将故障处理从一个不透明、压力重重的过程转变为可预测且可观察的流程。它充分利用了PostgreSQL在持久性和查询方面的优势，以获取操作洞察，而Kafka则继续处理高吞吐量的事件流。最终，系统变得更具有弹性、可调试性，并更易于操作管理。

---

## 5. 《毁灭战士》已被移植到耳机上。

**原文标题**: Doom has been ported to an earbud

**原文链接**: [https://doombuds.com](https://doombuds.com)

本文宣布了“DOOMBUDS”项目，该项目成功将1993年的游戏《DOOM》移植到Pinebuds Pro耳机上运行。游戏可通过网页浏览器远程进行，用户需排队等待轮次。该项目为开源项目，提供了《DOOM》移植代码和网页界面的代码。

技术实现中克服了显著的硬件限制：
*   **视频输出：** 由于耳机没有显示屏，视频通过UART串行连接传输。为适应2.4 Mbps的带宽限制，帧缓冲区被压缩为MJPEG流，理论帧率可达18-27 FPS。
*   **处理能力：** Cortex-M4F CPU超频至300MHz以运行《DOOM》，但JPEG编码仍是性能瓶颈。
*   **内存与存储：** 通过代码优化和使用精简版游戏资源文件（Squashware），项目将《DOOM》适配至耳机的992KB RAM和4MB闪存中。

系统架构包括耳机上的《DOOM》移植程序、负责通信和视频转码的串行服务器、管理队列和输入的网页服务器，以及面向用户的前端网页。

---

## 6. 一篇有缺陷的《管理科学》论文被引用超过6000次

**原文标题**: A flawed paper in Management Science has been cited more than 6,000 times

**原文链接**: [https://statmodeling.stat.columbia.edu/2026/01/22/aking/](https://statmodeling.stat.columbia.edu/2026/01/22/aking/)

**《一篇存在缺陷的〈管理科学〉论文被引用超过6000次》摘要**

文章讨论了一篇极具影响力的1998年论文（作者A. K. K.，发表于《管理科学》），该论文引入了一种广泛使用的企业社会责任衡量方法。尽管其学术影响力巨大——获得超过6000次引用——但该论文存在根本性缺陷。

核心问题在于，论文的关键衡量指标，即企业社会责任的“声誉指数”，是以同义反复的方式构建的。该指数基于专家评分，而这些专家在评判企业社会责任时被明确要求考虑公司的财务表现。这就造成了一个致命的循环：该指标本身与其常用于预测或解释的结果（财务绩效）存在内在混淆。因此，任何在该企业社会责任指数与企业财务绩效之间发现的统计关系，本质上已内置于测量方法之中，并不能证明存在因果甚至相关联系。

文章作者安德鲁·盖尔曼指出，这是一个严重的方法论错误，它使得该论文的结论以及后续无数依赖此指标的研究结论无效。尽管这一缺陷已公开多年，但这些引用仍持续存在，这被作为一个案例研究，展示了错误如何在学术文献中变得根深蒂固，尤其是在某个衡量指标变得方便和流行时。这一情况凸显了社会科学研究中关于测量有效性以及学术激励结构（优先考虑引用次数而非严谨方法）的关键问题。

---

## 7. 世界上最强大的文学评论家在TikTok上。

**原文标题**: World’s most powerful literary critic is on TikTok

**原文链接**: [https://www.newstatesman.com/culture/books/2026/01/the-worlds-most-powerful-literary-critic-is-on-tiktok](https://www.newstatesman.com/culture/books/2026/01/the-worlds-most-powerful-literary-critic-is-on-tiktok)

杰克·爱德华兹是一位27岁的社交媒体明星，活跃于BookTok和BookTube平台，被商业领域称为全球最具影响力的文学评论家。他的推荐能显著提升书籍销量，影响读者和零售商。他的成功源于真实而富有感染力的风格——常因读书落泪——这与传统文学评论形成鲜明对比，却引发了数百万年轻粉丝的共鸣。

然而，网络名声也让他付出了沉重的个人代价。2024年，他遭遇了严重的网络暴力，包括针对其性取向的骚扰和关于不诚实的指控，这导致他一度消沉并承受巨大心理压力。他将这段经历描述为“创伤性的”，并承认因批评改变了自己的行为甚至口音。

近期，爱德华兹对社交媒体采取了更强硬、更超然的态度，将不公正的批评斥为“吹毛求疵的文化”。他目前的重心是通过新成立的读书会“墨迹”建立一个更实在的社群——该读书会在Fable平台上已成为增长最快的俱乐部，并邀请知名作家和名人进行访谈。他希望通过这种方式，将孤独的阅读行为转化为一种共享体验。

---

## 8. 基于Deluxe Paint建模的网页图像编辑器

**原文标题**: Web-based image editor modeled after Deluxe Paint

**原文链接**: [https://github.com/steffest/DPaint-js](https://github.com/steffest/DPaint-js)

**DPaint.js** 是一款免费、基于网页的图像编辑器，其设计灵感源自经典的 Deluxe Paint，并特别专注于复古 Amiga 图形。它完全在浏览器中运行，无需依赖任何外部资源、服务器处理或用户账户。

**主要功能包括：**
*   功能齐全的编辑器，支持图层、选区、蒙版、特效以及多级撤销/重做。
*   专为复古图形设计的工具，包括精细的色彩缩减、抖动效果和色彩循环动画。
*   原生支持 Amiga 文件格式：可读写 Amiga 图标和 IFF ILBM 图像（包括 HAM 模式），甚至能从 Amiga 磁盘文件（ADF）中读取数据。
*   内置 Amiga 模拟器，可在真实的 Deluxe Paint 中预览作品。
*   同时支持 PC 版和 Atari ST 版 Deluxe Paint 的格式。

该应用为开源软件，若通过本地网页服务器运行，可离线使用。尽管仍处于 Alpha 测试阶段，它已支持动画（GIF/ANIM）和基于调色板的透明度工具。未来更新可能会增加对非方形像素、PSD 文件、精灵图以及 Commodore 64 模式的支持。

**注意：** Brave 浏览器用户可能会因该浏览器的隐私保护功能而遇到图像噪点问题，建议为此应用降低防护盾级别。

---

## 9. 谷歌确认将在安卓系统中引入“高摩擦”侧载流程。

**原文标题**: Google confirms 'high-friction' sideloading flow is coming to Android

**原文链接**: [https://www.androidauthority.com/google-sideloading-android-high-friction-process-3633468/](https://www.androidauthority.com/google-sideloading-android-high-friction-process-3633468/)

谷歌已确认，安卓系统将为从谷歌应用商店外安装应用（侧载）引入一个“高摩擦”流程。谷歌表示，此举旨在教育用户了解侧载的潜在风险，而非完全禁止该行为。公司将这一新系统描述为“责任层”。

虽然高级用户仍可选择“不验证安装”，但此路径将包含额外步骤，以确保用户明白他们正在安装来自未经验证开发者的应用。谷歌应用商店近期的更新已显示新的警告，强调开发者验证和潜在风险。

报道提出的核心问题是：这种增加的摩擦将仅停留在教育层面，还是会微妙地增加侧载难度？谷歌声明不打算采取极端措施（例如要求连接电脑），并希望这些变化仅限于风险提示。但文章指出，安卓传统的开放性依赖于高级用户能够不受过度阻碍地安装应用。

---

## 10. 在ATmosphere上发布

**原文标题**: Publishing on the ATmosphere

**原文链接**: [https://tynanistyping.offprint.app/a/3mcsvjjceei23-publishing-on-the-atmosphere](https://tynanistyping.offprint.app/a/3mcsvjjceei23-publishing-on-the-atmosphere)

作者表达了对传统社交媒体平台的不满，这些平台时常变更、退化甚至消失，摧毁了建立在其上的社区和文化成果。他们认为，用户投资于这些封闭平台会产生“社交债务”——即未来因失去对内容和连接的控制而付出的代价。

作为解决方案，他们倡导基于协议（如ATProto）而非私有平台构建“开放社交网络”。作者现在将内容发布到“ATmosphere”中，其内容以文件形式存在于个人数据存储（“个人文件夹”）中，独立于任何单一应用。即使像Offprint这样的应用可能兴衰更替，底层内容仍由他们掌控，并可通过其他方式访问。

其核心理念可概括为 **人 > 协议 > 平台**。首要关注的是人与社区创造的文化，其次是由确保持久性和互操作性的开放协议提供支持，最后才是具体的平台应用。作者相信这种模式能赋予用户权力、保存数字遗产并促进创新，因为开发者可以在没有守门人的情况下基于现有社交图谱进行构建。文末，他们邀请更多人加入这场开放社交网络运动。

---

## 11. PostgreSQL索引简介

**原文标题**: Introduction to PostgreSQL Indexes

**原文链接**: [https://dlt.github.io/blog/posts/introduction-to-postgresql-indexes/](https://dlt.github.io/blog/posts/introduction-to-postgresql-indexes/)

本文介绍了PostgreSQL索引，阐述了其用途、内部工作原理及权衡取舍。索引是数据库对象，通过减少磁盘数据读取量来加速数据检索，但仅对匹配索引列的查询有效，且通常仅在返回表中少于15-20%的数据时发挥作用。

文章解释了PostgreSQL如何将表数据以无序的"堆"文件形式存储在磁盘上。索引（如默认的B树类型）会创建树形结构，将列值映射到堆文件中的行位置（ctid），从而实现快速查找而非全表顺序扫描。

索引的主要代价包括：
*   增加磁盘空间占用
*   因索引维护导致写入操作（插入、更新、删除）变慢
*   可能增加查询规划时间和内存使用量

文章涵盖的索引类型及策略包括：
*   **B树索引：** 默认通用索引，用于主键/唯一键，对等值查询和范围查询高效
*   **多索引组合：** PostgreSQL可通过位图操作组合单列索引，处理包含AND/OR条件的查询
*   **多列索引：** 比多个单列索引更高效但灵活性较低，列顺序至关重要（仅最左列可用于搜索）
*   **部分索引：** 通过WHERE子句仅索引行数据子集，体积更小、速度更快，可降低特定数据子集的维护开销

---

## 12. ICE使用依赖医疗补助数据的Palantir工具

**原文标题**: ICE Using Palantir Tool That Feeds on Medicaid Data

**原文链接**: [https://www.eff.org/deeplinks/2026/01/report-ice-using-palantir-tool-feeds-medicaid-data](https://www.eff.org/deeplinks/2026/01/report-ice-using-palantir-tool-feeds-medicaid-data)

电子前沿基金会（EFF）披露，美国移民与海关执法局（ICE）正在使用一款名为ELITE的Palantir工具，该工具整合了来自多个政府机构的数据——包括卫生与公众服务部的医疗补助信息——用于识别和定位潜在的驱逐目标。这证实了EFF此前关于将公共服务（如医疗保健和税务）收集的敏感个人数据汇集并重新用于无关的执法和移民执法的危险警告。

文章将此视为严重的隐私和公民权利威胁，并将其与备受争议的“全面信息感知”计划相提并论。文中强调了ICE不断增强的监控能力及其当前在明尼阿波利斯等地的激进行动。EFF认为，这种数据整合赋予了政府过度且易被滥用的权力，损害了移民和美国公民的权利。

作为回应，EFF已采取法律行动，包括质疑ICE获取医疗补助和纳税人数据的权限，并起诉要求停止对非公民受保护言论的监控。然而，该组织总结称，仅靠法律诉讼是不够的，呼吁公众强烈抗议并要求国会立即干预，以阻止这一对国家隐私和安全的威胁。

---

## 13. Show HN: Bonsplit – 为原生 macOS 应用提供标签页与分屏功能

**原文标题**: Show HN: Bonsplit – Tabs and splits for native macOS apps

**原文链接**: [https://bonsplit.alasdairmonk.com](https://bonsplit.alasdairmonk.com)

**Bonsplit** 是一个适用于 macOS 的 SwiftUI 库，可为应用程序添加原生风格的标签栏和分屏布局。它提供了一个完全可定制的控制器（`BonsplitController`），用于管理标签和窗格，支持流畅的 120fps 动画、拖拽重新排序和键盘导航。

主要功能包括：可创建带图标和脏标记指示器的标签、水平或垂直拆分窗格，以及动态更新标签状态。开发者可通过全面的委托协议（`BonsplitDelegate`）对标签创建或窗格拆分等事件进行回调，实现精细控制；并通过配置对象（`BonsplitConfiguration`）自定义行为（如启用/禁用拆分、标签关闭或重新排序）和外观（如标签尺寸和动画设置）。

该库设计灵活，提供不同的内容视图生命周期模式（例如切换时重建视图或保持全部活动状态），并为常见用例（如单窗格或只读模式）提供预设配置。

---

## 14. 展示HN：用于管理XDG默认应用的TUI界面

**原文标题**: Show HN: TUI for managing XDG default applications

**原文链接**: [https://github.com/mitjafelicijan/xdgctl](https://github.com/mitjafelicijan/xdgctl)

**摘要**

`xdgctl` 是一款用于管理 Linux 系统上 XDG 默认应用程序的终端用户界面（TUI）工具。它为用户提供了一个比直接使用 `xdg-mime` 命令更简便的替代方案。

该工具允许用户按类别（如浏览器、文本编辑器）浏览应用程序，并查看当前默认程序（以星号 * 标记）。用户可通过方向键、Tab 键和 Enter 键进行导航，将选中的应用程序设为对应类别的新默认程序。该工具使用 C 语言开发，基于 GLib/GIO 和 termbox2 库构建。

安装时，用户需准备 GLib 和 GIO 的开发库，并可通过提供的 `make` 命令从源代码编译。工具会与标准 XDG 应用程序目录（`/usr/share/applications` 和 `~/.local/share/applications`）进行交互。

本文还提供了有用的背景信息，包括如何使用 `xdg-mime` 手动查询和设置默认程序、示例桌面条目文件，以及关于 XDG MIME 系统的其他实用命令和文档参考。

---

## 15. ANN v3：在1000亿向量上实现200毫秒p99查询延迟

**原文标题**: ANN v3: 200ms p99 query latency over 100B vectors

**原文链接**: [https://turbopuffer.com/blog/ann-v3](https://turbopuffer.com/blog/ann-v3)

本文详细介绍了Turbopuffer的ANN v3技术如何在千亿向量（超过200 TiB数据）上实现200毫秒的p99查询延迟。核心洞见在于：向量搜索本质上是带宽受限而非计算受限，因为每个数据向量在每次查询中仅使用一次。

为此，ANN v3采用了两种互补技术，协同优化内存层次结构：

1.  **分层聚类**：索引采用宽而浅的树状结构（SPFresh）组织向量。这提供了空间与时间局部性，既限制了冷查询对对象存储的往返访问，又确保频繁访问的上层质心保留在更快的DRAM中，而数据向量则驻留在SSD上。

2.  **二值量化**：通过RaBitQ方法将数据向量压缩至每维度1比特（压缩率达16-32倍）。该方法利用高维空间的数学特性，在保持搜索质量（召回率）的同时，大幅减少了将向量从SSD加载到内存进行计算所需的带宽。

两项技术结合使系统能够在所有层级——从对象存储到CPU寄存器——均衡分配带宽，避免任何单层成为瓶颈。这种架构优化实现了前所未有规模的高吞吐量查询。

---

## 16. 展示 HN：Fence – 带网络/文件系统限制的沙盒命令行工具

**原文标题**: Show HN: Fence – Sandbox CLI commands with network/filesystem restrictions

**原文链接**: [https://github.com/Use-Tusk/fence](https://github.com/Use-Tusk/fence)

**Fence** 是一款命令行工具，默认通过沙盒机制限制命令的网络访问和文件系统操作，专为运行半可信代码（如软件包安装、构建脚本或AI智能体输出）而设计。它充当权限管理器，默认阻止所有出站网络流量，除非通过配置将特定域名加入白名单。

核心功能包括可配置的文件系统读写规则、命令拦截（例如 `rm -rf /`）、SSH命令过滤，以及为常见工作流（如 `npm install`）提供内置模板。它提供监控模式以实时记录违规行为，并支持跨平台使用——在macOS上通过 `sandbox-exec`、在Linux上通过 `bubblewrap` 实现。

可通过Shell脚本、Go安装或源码编译进行安装。配置通过JSON文件（`~/.fence.json`）管理，用户可在其中定义网络规则、文件系统权限和禁止执行的命令。该工具还支持从Claude Code等工具导入设置。

受Anthropic的sandbox-runtime启发，Fence为CI任务、陌生代码库和AI编程智能体提供深度防御，旨在控制命令执行的副作用并增强安全性。

---

## 17. 《侏罗纪公园》——奈德瑞桌上的平板设备？（2012）

**原文标题**: Jurassic Park - Tablet device on Nedry's desk? (2012)

**原文链接**: [https://www.therpf.com/forums/threads/jurassic-park-tablet-device-on-nedrys-desk.169883/](https://www.therpf.com/forums/threads/jurassic-park-tablet-device-on-nedrys-desk.169883/)

这篇2012年的论坛帖子讨论了1993年电影《侏罗纪公园》中一处可能存在的时代错置。用户"Rymo"注意到丹尼斯·奈德利桌上有一台黑色平板状小型设备，推测可能是摩托罗拉Envoy掌上电脑。但该用户指出，摩托罗拉Envoy实际于1994年才上市销售，比电影设定的时间及上映时间晚了一年。

用户质疑这台设备或许是原型机或用作道具的早期海外型号。他们援引了电影截图（原帖附有图片），画面显示该设备位于奈德利手肘后方，并将其与市售版Envoy的图片进行了比对。

总而言之，核心议题在于探究《侏罗纪公园》中道具设备的真实身份，并讨论其出现时间是否早于现实世界的市场发行，暗示这可能是电影制作方使用的前沿原型机。

---

## 18. Nango（YC W23，开发者基础设施）正在远程招聘。

**原文标题**: Nango (YC W23, Dev Infrastructure) Is Hiring Remotely

**原文链接**: [https://jobs.ashbyhq.com/Nango](https://jobs.ashbyhq.com/Nango)

**摘要：**

Nango（YC W23）是一家开发者基础设施公司，正在招聘完全远程职位。该公司致力于构建工具，帮助开发者更高效地集成第三方API，专注于解决认证、同步和维护等常见挑战。

招聘信息显示，他们计划在多个职能领域扩大团队，可能包括工程、产品，以及销售或市场等职位。作为一家Y Combinator支持的初创公司（来自2023年冬季批次），Nango正处于增长阶段，正在寻找优秀人才加入其分布式团队。

要点总结：
*   **公司：** Nango，一家Y Combinator初创公司（W23）。
*   **领域：** 开发者基础设施（DevTools）。
*   **产品：** 第三方API集成解决方案。
*   **工作模式：** 完全远程。
*   **现状：** 正在积极招聘以扩大团队。

核心信息是邀请对快速发展中的开发者工具初创公司远程工作感兴趣的开发者及其他专业人士，探索Nango的职业机会。

---

## 19. 保持距离的社交动态

**原文标题**: Social Dynamics at Arm's Length

**原文链接**: [https://www.jenn.site/social-truths-at-arms-length/](https://www.jenn.site/social-truths-at-arms-length/)

本文介绍了一款名为“星座”的真实关系游戏：参与者根据提示，将手搭在最符合描述者的肩上。引导者可以控制游戏强度，从安全的提示（如“与你最有连接感的人”）逐步过渡到更尖锐的提示（如“你认为最具魅力的人”）。

随着提示变得敏感，社交动态随之变化。参与者常陷入潜意识伪装，在诚实与可能的名誉损害或冒犯他人之间权衡。他们可能恭维他人、为保护隐私而说谎，或避免牵连朋友。但某些提示（如“与你连接感最弱的人”）可能引发直白而诚实的共识，尤其当群体中存在被孤立者时。

作者指出，部分提示（如“最令人厌烦者”）通常因过于尖锐而难以实施，可能危及社交凝聚力。引导者的技巧在于寻找“帕累托最优边界”——在最大限度保持真实的同时不撕裂社交纽带。文章最后反思道：这种风险、诚实与社交校准的动态，恰如日常人际互动的缩影。

---

## 20. 宾夕法尼亚臭名昭著燃烧之镇的重生

**原文标题**: The Rebirth of Pennsylvania's Infamous Burning Town

**原文链接**: [https://www.atlasobscura.com/articles/centralia-pennsylvania-rebirth](https://www.atlasobscura.com/articles/centralia-pennsylvania-rebirth)

这篇文章记述了宾夕法尼亚州森特勒利亚镇的探访经历。该镇因一场自1962年持续燃烧的地下煤矿火灾而声名狼藉。火灾引发危险地陷和有毒气体后，政府迁移了几乎所有居民，至1990年代这里已基本成为空城。

与预期中荒凉废墟的景象相反，作者发现如今的森特勒利亚正被自然“蓬勃占领”。随着人类定居被禁止，葱郁森林和野生动物迅速收复这片土地，意外造就了一座天然保护区。这种“再野化”现象展现了自然如何在人类遗弃之地重获生机。

文章同时探讨了当地文化历史，包括曾因涂鸦艺术成为旅游景点的“涂鸦公路”——这条封闭道路已于2020年被煤矿公司掩埋。尽管有人为此惋惜，作者认为森特勒利亚的故事仍在续写。随着旅游热度的消退，自然得以收复更多领地，而雨日里蒸腾的排气孔仍默默诉说着地下深处持续燃烧的火焰。

最终，森特勒利亚被呈现为一个复杂的象征：它既是工业愚行与人类韧性的见证，是消逝的社区，更是一场灾难中诞生的生态复苏奇迹。

---

## 21. Wine-Staging 11.1新增补丁，支持在Linux上运行新版Photoshop

**原文标题**: Wine-Staging 11.1 Adds Patches for Enabling Recent Photoshop Versions on Linux

**原文链接**: [https://www.phoronix.com/news/Wine-Staging-11.1](https://www.phoronix.com/news/Wine-Staging-11.1)

Wine-Staging 11.1版本已发布，该版本引入了一系列补丁，使得最新版本的Adobe Photoshop能够通过Wine在Linux系统上安装和运行。这个实验性版本在上游Wine 11.1代码库基础上包含了超过250个补丁。

关键新增内容是一组针对MSXML3和MSHTML组件的补丁，解决了之前阻碍Adobe Photoshop Creative Cloud 2019及更新版本安装的错误（特别是Bug 47015）。这些修复使得安装程序能够顺利完成，应用程序也能成功启动。

虽然这些补丁现已通过Wine-Staging提供给社区测试，但尚未集成到主线（上游）Wine开发版本中。希望成功的测试能促使它们被纳入未来的官方Wine更新。

除了与Photoshop相关的工作外，Wine-Staging 11.1主要是一次对最新Wine和VKD3D代码的重新整合，并未突出其他重大新功能。预编译二进制文件可从WineHQ.org网站下载。

---

## 22. 我构建了一个快两倍的词法分析器，却发现I/O才是真正的瓶颈。

**原文标题**: I built a 2x faster lexer, then discovered I/O was the real bottleneck

**原文链接**: [https://modulovalue.com/blog/syscall-overhead-tar-gz-io-performance/](https://modulovalue.com/blog/syscall-overhead-tar-gz-io-performance/)

作者着手为Dart代码基准测试一款新的、更快的ARM64词法分析器。虽然该词法分析器本身的速度是官方版本的两倍以上，但在对10.4万个文件进行基准测试时发现，I/O操作是主要的瓶颈。逐个读取每个文件产生了巨大的系统调用开销（超过30万次调用），尽管使用了高速NVMe固态硬盘，总吞吐量仍被拖慢至仅80 MB/s。

为解决此问题，作者将文件打包成tar.gz压缩包，使文件数量从10.4万个减少到1351个。这一举措通过大幅削减系统调用开销，将I/O时间从约14.5秒缩短至339毫秒，性能提升了43倍。即使加上解压缩的时间，整个处理过程仍加快了2.27倍。

这个实验无意中解释了为何像pub.dev这样的包管理器使用压缩归档文件：它们能最小化HTTP请求、节省带宽、确保原子性，并且关键的是，在解压过程中减少了系统调用开销。更广泛的启示在于，现代存储速度只有通过顺序、批量访问才能充分发挥；当处理成千上万个小文件时，系统调用成本会占据主导。文章最后列举了读者建议的优化方案，包括使用Linux的io_uring进行系统调用批处理、采用如zstd的替代压缩方案，甚至使用SQLite作为虚拟文件系统以完全避免系统调用。

---

## 23. 哀悼光圈

**原文标题**: A Lament for Aperture

**原文链接**: [https://ikennd.ac/blog/2026/01/old-man-yells-at-modern-software-design/](https://ikennd.ac/blog/2026/01/old-man-yells-at-modern-software-design/)

本文是对苹果已停业的专业照片管理软件Aperture的怀旧反思，认为其核心设计理念至今无可匹敌。作者将Aperture与苹果照片等现代应用对比，突出其独特的“平视显示”（HUD）系统。该系统允许用户在任何界面（如地图或书籍排版）直接编辑照片，无需跳转至独立编辑模块，创造了流畅高效的工作流程。

文章着重强调了Aperture“静默”的技术光辉，以“放大镜”工具为例：即使在缩略图中的微小预览图上，也能显示全分辨率图像——这项十多年前软件实现的功能令作者惊叹。作者感叹道，当现代计算技术聚焦于生成式人工智能或视觉特效等炫目科技时，高效完成工作的基础用户体验却陷入停滞。

最终，作者将Aperture的消失视为一种损失：这款优先考虑用户流程、注重强大而内敛工程设计的工具，其退场留下了至今未被任何软件填补的空白。

---

## 24. 展示 HN：Netfence——类似 Envoy 的 eBPF 过滤器

**原文标题**: Show HN: Netfence – Like Envoy for eBPF Filters

**原文链接**: [https://github.com/danthegoodman1/netfence](https://github.com/danthegoodman1/netfence)

Netfence是一个守护进程，能够自动将eBPF网络过滤器注入到主机的cgroup或网络接口中。其功能类似于Envoy的xDS（动态配置）系统，但专为eBPF设计，实现了对网络流量的集中控制。

其核心特性是为每个附加的过滤器内置一个DNS服务器。当虚拟机或容器查询DNS时，Netfence会解析允许的域名（例如`*.pypi.org`），并自动将解析出的IP地址加入eBPF过滤器的允许列表。这使得它能够以极低的性能开销，直接在主机上拦截流向未知IP的流量。

管理员在每个主机上运行Netfence守护进程，该进程通过gRPC连接到中央控制平面。编排工具通过守护进程的本地API将过滤器附加到特定接口或cgroup。附加完成后，守护进程会通知控制平面，控制平面必须在附加操作最终完成前返回初始配置（如策略模式和域名规则）。

控制平面（由用户实现）通过双向数据流管理所有连接的守护进程，推送网络规则——例如更改过滤器模式、添加CIDR地址块或更新域名允许/拒绝列表。这种设计确保了基于虚拟机ID或租户等元数据，在所有主机和容器中实施一致的策略。

---

## 25. 索尼数据光盘机

**原文标题**: Sony Data Discman

**原文链接**: [https://huguesjohnson.com/random/sony-ebook/](https://huguesjohnson.com/random/sony-ebook/)

索尼Data Discman DD-1EX于1992年初推出，是一款电子书阅读器。作者在Electronics Boutique工作时，因该设备销量不佳大幅降价而购入。它外形酷似微型笔记本电脑，配有QWERTY键盘、方向键和屏幕，但缺乏数据存储功能，因此未能成为真正的PDA。

书籍内容存储于带保护壳的迷你CD中，作者收集了多部作品，包括百科全书、职业指南和世界翻译词典。部分光盘内置模拟器，可在个人电脑上运行软件。作者已将这些ISO文件提供下载，但由于过往版权问题，对其长期可用性持保留态度。

总体而言，文章将Data Discman描述为做工精良但终究不实用的设备，是90年代初技术浪潮中一个恰逢淘汰前夕的奇特遗物。

---

## 26. 弥合PLECS与SPICE之间的鸿沟

**原文标题**: Bridging the Gap Between PLECS and SPICE

**原文链接**: [https://erickschulz.dev/posts/plecs-spice/](https://erickschulz.dev/posts/plecs-spice/)

PLECS Spice是PLECS 5.0的新扩展功能，它将SPICE级器件仿真直接集成到系统级PLECS环境中。这解决了长期以来工程师必须使用不同工具分别进行快速系统分析和详细器件验证、导致模型重复创建的行业难题。

该工具支持混合仿真，允许将特定电路（如功率级）替换为采用制造商模型的详细SPICE网表，而控制系统和其他子系统仍保持为标准PLECS模型。工程师可在同一原理图中轻松切换理想配置与详细配置以对比结果。

演示中的一个关键应用是分析双有源桥变换器中的零电压开关（ZVS）。理想开关模型无法模拟对ZVS至关重要的寄生效应，而PLECS Spice通过详细MOSFET网表展示了死区时间如何直接影响软开关的实现，从而验证控制策略、栅极时序与器件物理特性之间的相互作用。

通过弥合系统仿真与器件仿真之间的鸿沟，PLECS Spice实现了真正的自上而下设计流程，消除了冗余工作，使工程师能够仅在需要时添加细节，从而实现更高效、更精确的电力电子设计。

---

## 27. 警报过载正削弱海上安全，船员们面临着成千上万的警报。

**原文标题**: Alarm overload is undermining safety at sea as crews face thousands of alerts

**原文链接**: [https://www.lr.org/en/knowledge/press-room/press-listing/press-release/2026/alarm-overload-is-undermining-safety-at-sea-as-new-research-shows-crews-face-tens-of-thousands-of-daily-alerts/](https://www.lr.org/en/knowledge/press-room/press-listing/press-release/2026/alarm-overload-is-undermining-safety-at-sea-as-new-research-shows-crews-face-tens-of-thousands-of-daily-alerts/)

劳氏船级社的一份新报告揭示，船舶上过度且管理不善的警报系统正因使船员不堪重负而构成重大安全隐患。该研究分析了11艘船舶超过4000万次警报事件，发现船舶每天可能产生数千次警报，其中邮轮单日警报量高达2600次。

这种“警报过载”导致普遍的警报疲劳，干扰船员休息时间（在某些船舶上影响63%的休息时段），并削弱对安全系统的信任。因此，船员被迫采取危险应对措施，例如未经适当检查就静音警报或绕过电路。

研究将工业最佳实践应用于海事运营，发现大多数船舶未能达到每小时少于30次警报的基准。但研究也表明，无需重大重新设计即可实现改进。一项邮轮试点项目通过修复故障传感器和调整系统等基础工程干预，在六个月内将警报数量减少近50%。仅处理十种最常见警报就能将总负荷降低近40%。

报告呼吁行业采用客观的警报性能评估指标，将人为因素纳入系统设计，并制定更强有力的监管标准，以确保警报能有效支持而非损害船员安全。

---

## 28. 亲身体验两款苹果网络服务器原型ROM

**原文标题**: Hands-On with Two Apple Network Server Prototype ROMs

**原文链接**: [http://oldvcr.blogspot.com/2026/01/hands-on-with-two-apple-network-server.html](http://oldvcr.blogspot.com/2026/01/hands-on-with-two-apple-network-server.html)

本文详细记录了作者对苹果网络服务器（ANS）两款原型ROM的动手测试。ANS是上世纪90年代罕见的基于PowerPC架构的服务器。第一版ROM为预生产版本，成功让ANS启动了Mac OS系统，解开了长久以来关于该设备是否具备此能力的疑问。第二版ROM旨在支持Windows NT，虽未能完成完整安装，但其特性颇具研究价值。

作者使用部分修复的ANS 700（代号"holmstock"）作为测试平台，细致记录了该服务器独特的硬件配置，例如其专用SCSI控制器和视频芯片。测试过程包括对设备进行整修——如重新安装CPU卡以解决启动故障，并添加校验内存以实现最佳性能。

文章强调了ANS作为苹果最后一款非Macintosh电脑的历史意义，及其在乔布斯回归后被停产前短暂而昂贵的产品生命周期。这些原型ROM的发现与测试，揭示了苹果曾计划让ANS成为能运行AIX、Mac OS和Windows NT的多系统服务器，而这一构想最终被放弃。

---

## 29. 数据泄露事件曝光1.49亿登录信息，涉及Gmail与Facebook账户。

**原文标题**: Data Leak Exposes 149M Logins, Including Gmail, Facebook

**原文链接**: [https://www.techrepublic.com/article/news-149-million-passwords-exposed-infostealer-database/](https://www.techrepublic.com/article/news-149-million-passwords-exposed-infostealer-database/)

**《数据泄露事件曝光1.49亿登录凭证，涉及Gmail、Facebook等账户》摘要**

一个包含超过1.49亿条被盗登录凭证的大型数据库在一台未受保护的服务器上被发现。这些数据由信息窃取恶意软件（"信息窃取器"）收集而成，包含了Gmail、Facebook等主要平台及其他在线服务的用户名和密码。

**关键要点：**

*   **来源：** 凭证来自多种信息窃取器恶意软件（如RedLine、Vidar和Taurus）的日志汇总。这些软件感染受害者计算机，窃取用户在浏览器中输入的数据。
*   **规模：** 数据库包含149,712,738个唯一的登录名-密码对，是同类最大规模的集合之一。
*   **可访问性：** 数据存储在没有任何密码保护的服务器上，使得网络犯罪分子可轻易访问数周之久。
*   **风险：** 尽管许多密码可能已过时，但此次泄露仍构成重大的凭证填充攻击风险。网络犯罪分子可使用自动化工具，在多个网站上尝试这些用户名/密码组合，若用户重复使用密码，可能导致账户被劫持。
*   **应对措施：** 此次事件凸显了为每个在线账户使用唯一密码，并尽可能启用双因素认证（2FA）的至关重要性。个人应假设自己过去几年的凭证可能已遭泄露，并应更新密码，尤其是电子邮件和银行等关键账户。

本质上，该事件揭示了恶意软件感染如何促成庞大、聚合的被盗凭证数据库，这些数据随后被交易并用于进一步攻击，从而使得使用高强度、唯一的密码以及启用双因素认证成为个人安全的关键。

---

## 30. 研究显示：电动汽车普及与实际空气污染减少密切相关

**原文标题**: Adoption of EVs tied to real-world reductions in air pollution: study

**原文链接**: [https://keck.usc.edu/news/adoption-of-electric-vehicles-tied-to-real-world-reductions-in-air-pollution-study-finds/](https://keck.usc.edu/news/adoption-of-electric-vehicles-tied-to-real-world-reductions-in-air-pollution-study-finds/)

南加州大学凯克医学院在《柳叶刀·星球健康》期刊上发表的一项研究提供了现实证据，表明零排放车辆的普及率提升能直接减少当地空气污染。

研究人员利用2019年至2023年的高分辨率卫星数据，结合加州1692个社区的零排放车辆登记信息，分析了二氧化氮浓度变化。他们发现，每增加200辆零排放车辆，社区年平均二氧化氮水平会下降1.1%。这证实了随着加州轻型车中零排放车辆占比从2%增至5%，空气质量确实获得了可量化的改善。

该研究的突破性在于运用卫星数据进行大范围污染追踪，其覆盖范围远超地面监测站。研究人员通过控制疫情效应、油价波动等变量强化了结论，并验证了燃油车增加区域的污染加剧现象。

资深作者埃里卡·加西亚指出，二氧化氮与哮喘、支气管炎及心血管疾病风险相关，因此污染物的即时减少意味着公众健康将直接受益。研究团队正在进一步探究污染下降是否与哮喘相关急诊就诊量减少存在关联。

这项由美国国立卫生研究院和美国国家航空航天局资助的研究提供了有力证据，表明向电动汽车的转型已在切实改善社区空气质量。

---

