# Hacker News 热门文章摘要 (2026-04-11)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. 天空中每架飞机——你现在都能以3D视角从驾驶舱追踪它的飞行。

**原文标题**: Every plane you see in the sky – you can now follow it from the cockpit in 3D

**原文链接**: [https://flight-viz.com/cockpit.html?lat=40.64&lon=-73.78&alt=3000&hdg=220&spd=130&cs=DAL123](https://flight-viz.com/cockpit.html?lat=40.64&lon=-73.78&alt=3000&hdg=220&spd=130&cs=DAL123)

本文介绍了一项名为“飞行可视化——驾驶舱视角”的功能，该功能允许用户从模拟的3D驾驶舱视角实时追踪飞机。

其核心创新在于从传统的二维地图转变为沉浸式的第一人称视角，模拟飞行员所见景象。界面实时显示飞行数据，包括高度、地速和航向。醒目的“飞行中”状态指示器与“退出驾驶舱”按钮也一同呈现，暗示用户可在不同视角间切换的交互体验。

重点在于，这项技术为公众提供了前所未有的实时访问飞行员视觉与仪表视角的途径，适用于任何可见的飞机，从而彻底改变了人们追踪和理解航空旅行的方式。

---

## 12. 手机旅行

**原文标题**: Phone Trips

**原文链接**: [http://www.wideweb.com/phonetrips/](http://www.wideweb.com/phonetrips/)

本文介绍了“电话之旅”网站，该网站致力于保存和分享20世纪60至80年代电话网络声音及电话飞客活动的历史音频记录。网站主要收录了马克·伯奈和埃文·多贝尔等爱好者录制的音频，他们通过美国各地的付费电话和家庭线路，记录了现已淘汰的机电式交换系统（如步进制、纵横制和面板制）的机械噪音。

网站收录了配有解说的“电话之旅”音频，详细解释技术细节，同时还有会议线路录音、恶作剧电话以及“贝尔小组”等团体的幽默录音带。文章重点介绍了埃文·多贝尔的广泛贡献，并引导访问者前往他的YouTube频道获取更新后的收藏。文章还提到，所有文件已转为mp3格式以便访问，并提及了其他电话旅行者的贡献，包括参观电话设备博物馆的经历。总体而言，该网站是早期电话网络时代声音和亚文化的档案库。

---

## 13. APL编程语言源代码（2012年）

**原文标题**: The APL programming language source code (2012)

**原文链接**: [https://computerhistory.org/blog/the-apl-programming-language-source-code/](https://computerhistory.org/blog/the-apl-programming-language-source-code/)

这篇2012年计算机历史博物馆的博客文章宣布，由肯尼斯·艾弗森于20世纪60年代设计的APL编程语言原始源代码已正式发布。该代码采用IBM的“共享汇编语言”（SAL）编写，从仅存的一份打印稿中复原，并经过志愿者团队的精细扫描、转录与核验。

文章强调了APL作为一种简洁的面向数组语言的基础性影响，其启发了许多现代编程概念。文中详述了复原代码的技术工作，指出原始的APL解释器仅为63KB汇编代码，结构异常紧凑。博文还介绍了艾弗森在IBM和哈佛的工作背景，以及APL\360的后续发展。

此次发布的核心成果是博物馆将这份具有历史意义的源代码向公众开放，供下载与研究。作者最后强调，保存此类软件遗产对于理解计算机演进历程具有重要意义。

---

## 14. 星弹：一款单HTML文件的一键无尽轨道弹射游戏

**原文标题**: Starfling: A one-tap endless orbital slingshot game in a single HTML file

**原文链接**: [https://playstarfling.com](https://playstarfling.com)

**摘要**

《星弹》是一款简单的单点触控无尽街机游戏，仅包含一个HTML文件。核心玩法是通过点击释放弹射物，在星星间弹射以连锁连击，避免失误。

文本概述了游戏的界面与机制，展示了开始界面、暂停菜单和游戏结束流程。关键元素包括分数计数器、最高“最佳”分数，以及中央“点击释放”提示。

同时揭示了游戏的免费模式，包含多条广告和应用内购买选项。玩家失败后可观看广告复活或继续游戏，并提供了2.99美元永久“去除广告”的选项。游戏结束时提供重新开始、分享或注册iOS与Android平台上线通知的选项。

---

## 15. Show HN：编辑2000张照片后，我开发了一款macOS批量图片编辑器

**原文标题**: Show HN: Editing 2000 photos made me build a macOS bulk photo editor

**原文链接**: [https://apps.apple.com/us/app/rapidphoto-batch-crop-edit/id6758485661?mt=12](https://apps.apple.com/us/app/rapidphoto-batch-crop-edit/id6758485661?mt=12)

**RapidPhoto**是一款专为批量照片编辑而设计的macOS应用程序，源于开发者需要处理2000张图片的需求。它允许用户一次性批量处理多达500张照片，提供裁剪、调整尺寸、应用调整、添加水印以及在九种格式（包括JPEG、PNG、HEIC、WebP和AVIF）之间转换的功能。其核心特色是注重隐私保护，所有处理均在用户设备本地完成，无需上传至云端。

该应用提供专业的编辑功能，如曝光和色彩调整、多种宽高比的智能裁剪，以及基于AI的人脸模糊、文本提取（OCR）和二维码检测工具。此外，还包括元数据编辑、批量重命名以及构图叠加（如三分法则和黄金比例）功能。

RapidPhoto采用免费增值模式。免费版本每批次最多支持10张图片和基本导出格式，而高级订阅则解锁完整的500张图片限制、所有导出格式和高级工具。订阅计划提供周付（2.99美元）、月付（6.99美元）或年付（39.99美元）选项。该应用要求macOS 15.0或更高版本，大小为39.6 MB。

---

## 16. 催生一个行业的问题

**原文标题**: The Problem That Built an Industry

**原文链接**: [https://ajitem.com/blog/iron-core-part-1-the-problem-that-built-an-industry/](https://ajitem.com/blog/iron-core-part-1-the-problem-that-built-an-industry/)

本文介绍了支撑全球航空订票行业已有60年历史的高性能基础设施。该系统起源于1960年代的SABRE系统，由美国航空和IBM共同开发，旨在解决人工管理预订的巨大难题。

其核心技术是IBM的交易处理设施（TPF），这是一个专为极速可靠处理海量简单交易而设计的独特操作系统——每秒可处理多达5万笔预订。与现代系统不同，TPF采用固定、精简的架构，在这一特定任务上始终保持着无可匹敌的优势。

作者通过追踪自身航班预订流程，展示了请求如何流经旅行门户网站（MakeMyTrip）、全球分销系统（Amadeus）和航空公司旅客服务系统（印度航空的Altéa）等层级。文章揭示了1960年代遗留的数据格式和协议如何持续支撑系统互操作性，同时也指出像IndiGo这样采用更简化的低成本航空系统（Navitaire）的差异化案例。

核心启示在于：**适用性**（TPF无与伦比的性能）胜过时髦架构；**趋同进化**使所有主要航空公司采用相似解决方案；**迁移**如此关键且根深蒂固的系统异常复杂且昂贵。这个航空商业的“铁芯”持续运转，正是因为它完美契合了设计初衷。

---

## 17. 《四子棋最优策略》

**原文标题**: Optimal Strategy for Connect 4

**原文链接**: [https://2swap.github.io/WeakC4/explanation/](https://2swap.github.io/WeakC4/explanation/)

本文介绍了**WeakC4**，一种无需搜索、知识要求低的弱解法，用于实现7x6四子棋中先手玩家的最优玩法。与强解法需要映射整个博弈树不同，弱解法仅提供保证先手玩家（红方）在遵循其指定着法（以最优开局即中心列开始）时必胜的信息。

其核心创新在于一种**“稳态图”**描述语言，用于为大部分局面设计简单、基于模式的必胜策略（如“声明偶数”）。这些图像作弊表一样，通过带注释的符号（如!、@）和固定的优先级列表来指示红方的下一步着法，无需任何计算。

作者构建了一个**开局树**，其中所有叶节点均对应可通过这些稳态图解出的局面。这平衡了记忆与计算的需求，消除了实时搜索的必要性。最终得到一个高度压缩的解法，包含不到10,000个节点（约150 KB），运行时间复杂度为O(宽度×高度)，可完全可视化，并验证了已知的复杂开局。虽然未证明其最小性，但这项工作展示了理解游戏涌现结构如何催生紧凑、人类可解读的最优策略。

---

## 18. 一切事物的未来都是谎言，我猜——第五部分：烦恼

**原文标题**: The future of everything is lies, I guess – Part 5: Annoyances

**原文链接**: [https://aphyr.com/posts/415-the-future-of-everything-is-lies-i-guess-annoyances](https://aphyr.com/posts/415-the-future-of-everything-is-lies-i-guess-annoyances)

本文认为，人工智能尤其是大型语言模型的未来融合，主要将用于激怒消费者并削弱责任追究。文章预测客户服务将发生令人沮丧的转变：企业将利用大型语言模型来推诿支持请求，使消费者更难接触到有权限的人工客服并解决复杂问题。这将迫使人们浪费时间与机器争论——这些机器虽然礼貌，却不可靠且解决问题的能力有限。

作者进一步警告，大型语言模型将被部署于各类官僚和财务决策中，例如保险理赔或动态定价，从而催生新的“苦差事”：人们不得不学习如何钻这些系统的空子。责任分散是一个关键问题：当存在偏见或错误的人工智能决策造成伤害时（例如错误逮捕或拒绝医疗救治），责任将在开发商和供应商构成的复杂供应链中变得模糊，使得追责困难重重。

最后，文章讽刺了“代理型商业”的概念——即由人工智能代理处理购物。它预见一个混乱的生态系统：广告商和诈骗者将试图操控这些人工智能代理，导致怪异购买和新型欺诈，使消费者保护和支付纠纷进一步复杂化。

---

## 19. 志愿者将一位粉丝录制的上万场演唱会转化为在线宝库。

**原文标题**: Volunteers turn a fan's recordings of 10K concerts into an online treasure trove

**原文链接**: [https://apnews.com/article/aadam-jacobs-collection-concerts-internet-archive-chicago-b1c9c4466a2db409a83523ad84b79d62](https://apnews.com/article/aadam-jacobs-collection-concerts-internet-archive-chicago-b1c9c4466a2db409a83523ad84b79d62)

本文详述了志愿者们如何保存并数字化亚当·雅各布斯的海量音乐会录音，为音乐史创建了一个重要的在线档案。

四十余年来，这位来自芝加哥的忠实乐迷从1984年起秘密录制了超过一万场音乐会，不仅捕捉了涅槃乐队、R.E.M.乐队和治愈乐队等标志性艺术家的早期演出，还记录了无数小众表演。他的收藏主要聚焦于上世纪80年代至21世纪初的独立与朋克音乐，并随着设备日益精进而不断完善。

2023年，来自互联网档案馆的志愿者们启动了这项抢救老化录音带的庞大工程。在负责数字化模拟录音的布莱恩·埃默里克带领下，来自全球的音频工程师团队共同修复音频、整理曲目清单，并将音乐会录音免费上传供在线收听和下载。

尽管这些录音在技术上属于私录作品，但该档案完全非商业运营，且鲜少遭遇版权争议；甚至如替代者乐队等艺术家曾直接采用雅各布斯的录音制作官方专辑。如今健康状况欠佳的雅各布斯已停止录制工作，但他欣慰于自己记录现场音乐的毕生热忱正作为公共资源被保存，并传承给后世。

---

## 20. 韩国推出全民基本移动数据接入服务

**原文标题**: South Korea introduces universal basic mobile data access

**原文链接**: [https://www.theregister.com/2026/04/10/south_korea_data_access_universal/](https://www.theregister.com/2026/04/10/south_korea_data_access_universal/)

**摘要：韩国推出全民基本移动数据服务**

2026年4月10日，韩国政府正式实施全民基本移动数据接入计划。该政策由科学和信息通信技术部宣布，保障所有公民在常规数据流量用尽后，仍能以400 Kbps的速度无限使用移动数据，惠及超过七百万用户。该国三大电信运营商——SK电信、KT和LG U+均已同意此方案。

副总理裴敬勋表示，该计划旨在满足民众对网络接入的基本需求，同时也是电信运营商对社会的一种补偿。此前，这三家公司均曾发生重大安全漏洞，包括数据泄露和不良安全操作，损害了公众信任。

作为承诺的一部分，运营商还同意推出低价5G套餐（约13.5美元）、扩大老年用户的数据和通话额度，并升级公共交通的Wi-Fi服务。作为回报，政府承诺支持面向未来人工智能应用的网络研究，同时敦促企业进一步投资网络基础设施。

该计划将基本数据接入定义为一项公共权利，并视其为迈向人工智能驱动社会的一步，通过监管压力将消费者保护与行业责任相结合。

---

## 21. 裁员思维

**原文标题**: Layoff Thinking

**原文链接**: [https://blogs.newardassociates.com/blog/2026/layoff-thinking.html](https://blogs.newardassociates.com/blog/2026/layoff-thinking.html)

本文中，作者探讨了裁员带来的深层心理影响，指出在西方（尤其是美国）社会，人们常从职业中获取身份认同与自我价值。这种观念通过“你是做什么的？”等社交惯例不断强化。

因此，裁员不仅是失去工作，更是对自我核心认同的打击，如同失去文化或国家身份。作者分享个人观点，提到自己始终避免将全部身份捆绑于“开发者”角色，而是保持多元兴趣。

文章核心建议是：经历裁员者应有意识重拾工作之外的生活——爱好、家庭与个人热情。通过围绕这些元素重建身份认同，人们能重获视野与韧性。作者强调，个人的价值是内在的，远超出对任何雇主的效用，并鼓励读者在悲伤后积极重新发现职业角色之外的自我。

---

## 22. 安装所有*Firefox扩展

**原文标题**: Installing every* Firefox extension

**原文链接**: [https://jack.cab/blog/every-firefox-extension](https://jack.cab/blog/every-firefox-extension)

本文详细记录了一项从Mozilla附加组件商店抓取并安装几乎所有Firefox扩展的实验。作者最初因公共API的限制而受阻，最终通过并行抓取所有分类的扩展取得成功，共收集到84,235个独立扩展的数据集，总容量约49.3 GB。

分析数据集的主要发现包括：
*   最大的扩展是"dmitlichess"，达196.3 MB。
*   大量扩展质量低下，包括AI生成的SEO垃圾内容、网络钓鱼尝试（如虚假加密货币钱包）以及捆绑推广搜索引擎的潜在有害程序。
*   许多扩展用户稀少，34.3%的扩展日活跃用户数为零。
*   最高产的开发者发布了84个扩展。

作者还描述了通过编程方式下载所有扩展的技术流程，并指出部分恶意扩展已向Mozilla举报后被移除。整个项目揭示了Firefox扩展生态系统的庞大规模与参差不齐的质量水平。

---

## 23. 研究人员称，乌干达黑猩猩陷入长达八年的“内战”。

**原文标题**: Chimpanzees in Uganda locked in eight-year 'civil war', say researchers

**原文链接**: [https://www.bbc.com/news/articles/cr71lkzv49po](https://www.bbc.com/news/articles/cr71lkzv49po)

乌干达基巴莱国家公园内一个近200只黑猩猩的大型社群暴力分裂为两个敌对派系，展开长达八年的"内战"，已造成至少24只黑猩猩死亡。恩戈戈黑猩猩项目研究人员报告称，这个曾共同生活、相互梳理毛发数十年的紧密群体，自2015年开始分化，到2018年彻底分裂为西部和中部群体。

分裂后，西部群体发动针对性袭击，至少杀死了中部群体的7只成年雄性和17只幼崽。冲突的确切原因尚不明确，但研究人员指出三个可能的诱因：2014年关键个体不明原因死亡、2015年雄性首领更替，以及2017年导致25只黑猩猩死亡的严重呼吸道传染病——其中包括最后维系两个亚群联系的雄性之一。

这项发表于《科学》期刊的研究指出，群体规模、资源竞争和雄性争斗等因素可能促成了分裂。研究人员认为，这种曾经紧密联系的个体间爆发持久激烈冲突的现象，挑战了关于人类战争的固有认知，表明即使没有宗教或政治等人为建构，仅凭社会动态和群体认同就足以引发致命暴力。他们认为这为了解早期人类冲突的形成机制提供了启示。

---

## 24. 线性内存访问需要多少才足够？

**原文标题**: How much linear memory access is enough?

**原文链接**: [https://solidean.com/blog/2026/how-much-linear-memory-access-is-enough/](https://solidean.com/blog/2026/how-much-linear-memory-access-is-enough/)

本文研究了在高性能计算中实现峰值性能所需的最小线性内存访问块大小。通过在Ryzen 9 7950X3D上的实验，作者测试了三种计算强度不同的处理内核：快速SIMD求和（约0.1周期/字节）、中等标量统计内核（约0.75周期/字节）以及高负载正弦计算（约10周期/字节）。

关键发现是：为抵消块间跳转开销所需的块大小，很大程度上取决于计算负载。对于最受内存限制的高吞吐量任务（如SIMD求和），需要1 MB的块才能达到峰值性能；对于中等负载任务，128 kB的块已足够；而对于计算密集型任务，即使4 kB的块也能实现近乎最优的性能。

实验还表明缓存行为会影响这些阈值：能完全放入缓存的小型工作集可以用更小的块达到峰值性能。作者总结指出，虽然单个连续块是最理想的，但当数据必须分块处理时，实现完全性能所需的块大小通常比假设的更小，这为设计“分块流”等高效数据结构提供了实用指导。

---

## 25. 比特币矿工因难度下降而在每枚产出币上亏损。

**原文标题**: Bitcoin miners are losing on every coin produced as difficulty drops

**原文链接**: [https://www.coindesk.com/markets/2026/03/22/bitcoin-miners-are-losing-usd19-000-on-every-btc-produced-as-difficulty-drops-7-8](https://www.coindesk.com/markets/2026/03/22/bitcoin-miners-are-losing-usd19-000-on-every-btc-produced-as-difficulty-drops-7-8)

本文详细阐述了比特币矿工面临的严重财务压力，他们目前每生产一枚比特币都承受着巨额亏损。平均生产成本估计为88,000美元，而比特币交易价格约为69,200美元，每枚比特币产生近19,000美元的赤字。

中东地缘政治紧张局势加剧了这场危机，油价被推高至100美元以上，全球电力成本随之上升。由此带来的经济压力正导致矿工关闭业务，网络挖矿难度下降7.8%，区块生成速度放缓。

面对不可持续的亏损，矿工被迫出售更多比特币储备以维持运营，这给市场带来了下行压力。为此，许多矿工正转向人工智能和高性能计算领域多元化发展，以寻求更稳定的收入来源。

比特币网络设计通过难度调整实现自我修正，随着参与者退出，挖矿成本会降低。然而，在过渡期间，矿工被迫抛售及其遭受的财务损失，对整个市场结构构成了重大挑战。

---

## 26. 此前未知的恩培多克勒诗篇在纸莎草纸上被发现

**原文标题**: Previously unknown verses by Empedocles found on papyrus

**原文链接**: [https://www.thehistoryblog.com/archives/75792](https://www.thehistoryblog.com/archives/75792)

**《新发现纸莎草文献载有恩培多克勒未知诗篇》摘要**

科隆大学收藏的一份纸莎草残片被鉴定为含有古希腊前苏格拉底哲学家恩培多克勒（约公元前494–434年）此前未知的诗篇。该纸莎草文献原属公元79年维苏威火山喷发时碳化的卷轴的一部分，出土于赫库兰尼姆古城。

通过多光谱成像和先进的古文字学分析，研究人员判定文本是恩培多克勒哲学诗作《论自然》的抄本。新破译的诗行讨论了宇宙的基本元素——土、气、火、水——及其在"爱"（吸引力）与"争"（排斥力）作用下的相互作用，这构成了其宇宙观的核心。诗篇具体描述了这些元素如何混合与分离以形成物质世界。

这一发现意义重大，因为它为这位现存著作仅存残篇的重要早期希腊思想家增添了新的原始文献，有助于更深入理解其形而上学理论与诗歌风格。此次发现也展现了现代技术从赫库兰尼姆碳化卷轴中复原文本的潜力，预示可能还有更多古典著作有待重见天日。

---

## 27. 被动雷达工作原理

**原文标题**: How Passive Radar Works

**原文链接**: [https://www.passiveradar.com/how-passive-radar-works/](https://www.passiveradar.com/how-passive-radar-works/)

被动雷达是一种通过监听现有广播信号（如调频广播或数字电视）如何从物体上反射来探测目标的系统。与传统主动雷达不同，它没有发射器，而是依赖第三方“机会照射源”。

其运作基于两个核心原理。首先，反射信号中的多普勒频移揭示了物体的速度。其次，从发射塔直接接收的信号与物体反射的回波之间的时间延迟提供了位置信息。在被动雷达中，特定延迟对应的不是一个圆（如主动雷达），而是一个椭圆，其两个焦点分别是发射器和接收器。

为了精确定位，系统必须将多个发射器-接收器对生成的椭圆进行交汇。这种传感器融合在拥有多个可用广播源的区域才可能实现。

被动雷达的主要优势在于成本低（使用现成的软件定义无线电）、隐蔽性强（不发射信号）以及法律手续简单（无需发射许可）。然而，它也存在缺点，包括依赖外部发射器、因信号带宽有限导致精度较低，以及从强直达信号中分离弱回波的计算挑战。

最终，被动雷达之所以日益受到关注，是因为它让消费者和企业能够使用雷达技术，而无需面对传统系统的监管和硬件壁垒。

---

## 28. 为Linux内核做贡献时的AI助手

**原文标题**: AI assistance when contributing to the Linux kernel

**原文链接**: [https://github.com/torvalds/linux/blob/master/Documentation/process/coding-assistants.rst](https://github.com/torvalds/linux/blob/master/Documentation/process/coding-assistants.rst)

本文档概述了在参与Linux内核贡献时使用AI辅助工具的指导原则。它强调AI工具必须遵循标准的内核开发流程，并遵守所有许可要求，确保代码与GPL-2.0许可证兼容。

一项关键规则是：AI工具**严禁**添加`Signed-off-by`标签。只有人类开发者才能合法签署开发者原创证书（DCO）。人类开发者必须负责审核所有AI生成的代码、确保符合许可要求、添加自己的`Signed-off-by`标签，并对贡献内容承担全部法律责任。

为正确标注贡献来源，相关提交应包含`Assisted-by`标签。该标签需注明AI工具名称、所用模型版本，并可选择性列出使用的专业分析工具（如Coccinelle、Sparse）。基础开发工具（如git或gcc）无需列出。这种做法有助于追踪AI在开发过程中的参与情况。

---

## 29. 协作向量介绍

**原文标题**: Cooperative Vectors Introduction

**原文链接**: [https://www.evolvebenchmark.com/blog-posts/cooperative-vectors-introduction](https://www.evolvebenchmark.com/blog-posts/cooperative-vectors-introduction)

本文介绍了协作向量（Cooperative Vectors），这是一种专为实时图形中神经网络（NN）运算加速而设计的GPU功能。文章阐述了该技术的必要性，其源于渲染发散神经材质（NM）和神经辐射缓存（NRC）时遇到的挑战，传统基于矩阵的加速方法在这些场景下效率低下。

其核心概念是“长向量”——一种允许单个着色器线程持有并处理自身独特输入数据的数据结构。这些向量随后可通过硬件加速操作与权重矩阵相乘。文章详细介绍了两种关键矩阵布局：用于高效推理的“MulOptimal”布局，以及用于训练期间梯度累积的“OuterProductOptimal”布局。

文章概述了利用这些功能进行神经网络推理与训练的实际工作流程，包括不同布局间必要的数据转换。作者指出，虽然DirectX的实现（最初称为WaveMatrix/协作向量）正演变为更广泛的“线性代数”功能集，且Vulkan的协作矩阵（Cooperative Matrix）现已成为KHR扩展，但这些核心概念与优势对于实现实时神经渲染的开发者而言依然极具参考价值。

---

## 30. Rockstar Games遭黑客入侵，黑客威胁若不支付赎金将大规模泄露数据

**原文标题**: Rockstar Games Hacked, Hackers Threaten a Massive Data Leak If Not Paid Ransom

**原文链接**: [https://kotaku.com/rockstar-games-reportedly-hacked-massive-data-leak-ransom-gta-6-shinyhunters-2000686858](https://kotaku.com/rockstar-games-reportedly-hacked-massive-data-leak-ransom-gta-6-shinyhunters-2000686858)

2026年4月11日，黑客组织ShinyHunters宣称通过入侵Rockstar Games的Snowflake云服务器成功攻破该公司。此次入侵据称是通过第三方服务商Anodot发生的，该服务商自身曾遭遇安全事件。黑客发出勒索要求，威胁若未在4月14日前收到赎金将泄露窃取的数据。

Rockstar Games确认发生数据泄露，但表示仅涉及"少量非核心公司信息"，并保证对玩家及公司运营无影响。虽然具体内容未明确，但据信被盗数据包含合同、财务文件、营销计划等企业信息，而非玩家密码或个人数据。

ShinyHunters是知名黑客组织，此前曾攻击微软和Ticketmaster等大型企业。此次事件紧随2022年Rockstar重大黑客攻击之后——当时《GTA 6》早期开发画面遭泄露，但系由不同攻击者实施。

---

