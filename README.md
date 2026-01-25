# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-01-25.md)

*最后自动更新时间: 2026-01-25 20:37:58*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 2 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 3 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 4 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 5 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 6 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 7 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 8 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 9 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 10 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 11 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 12 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 13 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 14 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 15 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 16 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 17 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 18 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 19 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 20 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 21 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 22 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 23 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 24 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 25 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 26 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 27 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 28 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 29 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 30 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 31 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 32 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 33 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 34 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 35 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 36 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 37 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 38 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 39 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 40 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 41 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 42 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 43 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 44 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 45 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 46 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 47 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 48 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 49 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 50 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 51 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 52 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 53 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 54 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 55 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 56 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 57 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 58 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 59 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 60 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 61 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 62 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 63 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 64 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 65 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 66 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 67 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 68 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 69 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 70 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 71 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 72 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 73 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 74 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 75 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 76 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 77 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 78 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 79 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 80 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 81 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 82 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 83 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 84 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 85 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 86 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 87 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 88 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 89 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 90 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 91 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 92 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 93 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 94 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 95 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 96 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 97 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 98 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 99 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 100 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 101 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 102 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 103 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 104 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 105 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 106 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 107 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 108 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 109 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 110 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 111 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 112 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 113 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 114 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 115 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 116 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 117 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 118 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 119 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 120 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 121 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 122 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 123 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 124 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 125 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 126 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 127 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 128 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 129 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 130 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 131 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 132 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 133 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 134 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 135 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 136 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 137 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 138 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 139 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 140 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 141 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 142 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 143 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 144 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 145 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 146 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 147 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 148 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 149 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 150 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 151 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 152 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 153 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 154 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 155 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 156 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 157 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 158 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 159 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 160 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 161 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 162 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 163 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 164 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 165 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 166 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 167 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 168 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 169 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 170 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 171 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 172 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 173 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 174 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 175 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 176 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 177 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 178 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 179 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 180 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 181 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 182 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 183 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 184 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 185 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 186 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 187 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 188 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 189 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 190 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 191 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 192 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 193 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 194 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 195 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 196 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 197 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 198 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 199 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 200 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 201 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 202 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 203 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 204 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 205 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 206 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 207 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 208 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 209 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 210 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 211 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 212 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 213 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 214 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 215 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 216 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 217 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 218 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 219 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 220 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 221 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 222 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 223 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 224 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 225 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 226 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 227 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 228 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 229 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 230 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 231 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 232 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 233 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 234 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 235 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 236 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 237 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 238 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 239 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 240 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 241 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 242 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 243 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 244 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 245 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 246 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 247 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 248 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 249 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 250 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 251 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 252 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 253 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 254 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 255 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 256 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 257 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 258 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 259 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 260 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 261 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 262 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 263 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 264 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 265 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 266 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 267 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 268 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 269 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 270 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 271 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 272 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 273 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 274 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 275 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 276 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 277 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 278 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 279 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 280 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 281 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 282 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 283 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 284 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 285 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 286 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 287 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 288 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 289 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 290 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 291 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 292 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 293 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 294 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 295 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 296 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 297 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 298 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 299 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 300 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 301 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 302 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 303 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 304 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 305 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 306 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 307 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 308 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 309 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
