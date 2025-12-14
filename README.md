# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2025-12-14.md)

*最后自动更新时间: 2025-12-14 20:20:03*
## 1. Hashcards：纯文本间隔重复系统

**原文标题**: Hashcards: A Plain-Text Spaced Repetition System

**原文链接**: [https://borretti.me/article/hashcards-plain-text-spaced-repetition](https://borretti.me/article/hashcards-plain-text-spaced-repetition)

Hashcards是一款间隔重复闪卡系统，它将卡片以纯文本Markdown文件的形式存储在目录中，而非专有数据库。它采用类似Anki的先进FSRS调度算法。用户通过运行命令打开本地网页界面进行学习，复习记录则存储在独立的SQLite数据库中。

作者因对现有工具不满而创建了Hashcards。Anki虽然功能强大且采用FSRS算法，但其界面笨拙且卡片创建流程繁琐。Mochi拥有更优的Markdown界面，但曾采用低效的调度算法，且其完形填空语法冗长。

Hashcards致力于实现无摩擦的卡片创建。其简洁格式使用`Q:`/`A:`标记基础卡片，用方括号`[...]`标记完形填空，最大限度减少输入负担。卡片以纯文本形式存储，可使用任意编辑器轻松修改，通过Git进行版本控制，公开共享卡片集，还能用脚本和标准Unix工具生成或处理卡片。这种设计让用户能完全掌控自己的闪卡数据，并获得高度灵活性。

---

## 2. Typeframe PX-88便携式计算系统

**原文标题**: The Typeframe PX-88 Portable Computing System

**原文链接**: [https://www.typeframe.net/](https://www.typeframe.net/)

Typeframe PX-88是一款便携式集成计算系统，专为注重高品质触感打字体验与强劲性能的专业用户设计。该系统以树莓派4 B为核心构建，性能强大，足以应对网页编辑和复杂应用等高要求任务。

其主要特点包括：提供卓越输入体验的高品质机械键盘、紧凑便携的外形，以及专注于便捷组装与维护的友好设计。系统组装仅需少量焊接，内部组件可通过滑动面板轻松触及，便于日常维护。

PX-88定位为融合赛博甲板与写作甲板概念的多元工具，以专业级DIY套件形式推向市场。它承诺在终端用户亲手组装的便携设备中，实现核心计算性能与卓越输入品质的“不妥协用户体验”。

---

## 3. 人工智能与自动化的讽刺——第二部分

**原文标题**: AI and the ironies of automation – Part 2

**原文链接**: [https://www.ufried.com/blog/ironies_of_ai_2/](https://www.ufried.com/blog/ironies_of_ai_2/)

**《人工智能与自动化的讽刺——第二部分》摘要**

本文认为，高级人工智能的主要风险并非一个突然的、有意识的“超级智能”接管，而是对人类能动性、能力和理解力更为隐蔽的侵蚀。文章基于经典的“自动化讽刺”理论展开论述，即自动化一项任务可能会削弱操作者的技能和情境意识，使其更难以应对故障。

作者指出，现代生成式人工智能系统通过两种关键方式加剧了这些讽刺：

1.  **委托讽刺：** 我们越来越多地将认知和创造性任务（写作、编程、分析）委托给人工智能以提高效率。然而，这种外包可能导致我们自身的技能、批判性思维和领域专业知识萎缩。我们变成了一个我们并不完全理解的系统的“监督者”，失去了验证其输出或进行有效干预所需的基础知识。

2.  **不透明讽刺：** 与早期确定性软件不同，大语言模型是概率性的“黑箱”。它们的输出并非基于逻辑推理或可获取的事实，而是基于训练数据中的复杂模式匹配。这使得用户无法追溯人工智能决策或建议背后的“原因”，从而破坏了问责制和信任。我们必须在没有真正理解的情况下接受答案。

综合效应是“双重退化”：人类能力减弱，而我们依赖的系统却变得更难以解释。其危险在于逐渐滑向一种**“习得性无助”** 的状态，即社会丧失解决复杂问题、判断人工智能输出或治理技术本身所需的集体能力。核心结论是，紧迫的挑战并非让人工智能变得更智能，而是设计人机交互以**保持并增强人类的认知、监督和最终责任。**

---

## 4. 别再爬我的HTML了，混蛋们——用API去。

**原文标题**: Stop crawling my HTML you dickheads – use the API

**原文链接**: [https://shkspr.mobi/blog/2025/12/stop-crawling-my-html-you-dickheads-use-the-api/](https://shkspr.mobi/blog/2025/12/stop-crawling-my-html-you-dickheads-use-the-api/)

作者对低效抓取和解析其网站HTML的AI爬虫表示沮丧，认为这种蛮力方式忽视了现成可用的结构化API。

他们指出自己的WordPress网站提供了多种机器友好的数据源，均链接在HTML的`<head>`中：
*   具有定义模式的主JSON API端点（`wp-json/`）。
*   单篇文章的直接JSON链接。
*   包括oEmbed（JSON/XML）、ActivityPub和纯文本版本在内的替代格式。
*   无需爬取即可发现所有页面的XML站点地图。

作者提到这个问题也影响了他们的OpenBenches项目——爬虫无视GeoJSON数据和API，反而执着于抓取HTML。他们核心的呼吁是希望AI系统和开发者停止低效的HTML抓取，转而使用已提供的稳定API来获取数据。最后，他们质疑是否需要特殊标头或提议的“AI网址”方案来引导自动化代理访问正确的资源。

---

## 5. 为我的木勺开发一种食品安全涂层

**原文标题**: Developing a food-safe finish for my wooden spoons

**原文链接**: [https://alinpanaitiu.com/blog/developing-hardwax-oil/](https://alinpanaitiu.com/blog/developing-hardwax-oil/)

作者是一位木雕师，正在为木勺和木杯寻找一种理想的食品级涂饰。这种涂饰需要固化迅速（两天内）、无溶剂、能凸显木纹，并能形成耐用、疏水且无塑料感的表面。

他评估并排除了几种常见选项：纯桐油（固化太慢）、商用硬蜡油（含溶剂）、食用油（无法固化）、纯蜡（熔点低）以及合成涂饰剂（外观与手感不佳）。

他的解决方案是一种自制的无溶剂天然原料混合剂。核心配方结合了纯桐油（用于深层渗透和耐久性）与巴西棕榈蜡（用于形成坚硬的表层）。为了提升可操作性和光泽度，他还添加了蜂蜡、羊毛脂、达玛树脂以及微量金属催干剂以加速固化。

制成的膏体经熔化后涂抹于木材上，并用热风枪加热以促进渗透。它能迅速干燥为耐水的哑光表面。然而，底层的桐油仍需2-4周才能完全固化，因此涂饰后的器皿无法立即接触高温液体。这种涂饰能有效保护木材，施工过程愉悦，最重要的是——它能突出所用独特木材的自然色泽与纹理。

---

## 6. 沙虫入侵开发机并窃取GitHub组织权限：事件复盘报告

**原文标题**: Shai-Hulud compromised a dev machine and raided GitHub org access: a post-mortem

**原文链接**: [https://trigger.dev/blog/shai-hulud-postmortem](https://trigger.dev/blog/shai-hulud-postmortem)

2025年11月25日，Trigger.dev 遭受了 Shai-Hulud 2.0 npm 供应链蠕虫的攻击。事件始于一名工程师在不知情的情况下安装了恶意软件包，该软件包运行脚本窃取了其 GitHub 凭据。

攻击者花费了 17 小时克隆了 669 个私有和公共仓库，同时监控该工程师的日常工作。随后，他们发起了持续 10 分钟的破坏性攻击，强制推送了 199 个分支，并在 16 个仓库中关闭了 42 个拉取请求，并将破坏行为归咎于“Linus Torvalds”。

团队通过 Slack 通知检测到攻击，并在几分钟内撤销了受损账户的访问权限，从而阻止了攻击。得益于现有的安全措施（如发布时需进行双重认证），生产系统、数据库或已发布的 npm 软件包均未受到影响。

在恢复过程中，团队发现工程师的垃圾桶中存有 GitHub 应用的私钥，这可能暴露客户仓库的访问权限。他们随即更换了密钥并通知了受影响的客户，但未发现任何未经授权的访问。

此次事件凸显了供应链攻击的风险，促使 Trigger.dev 加强了分支保护、凭据管理和监控措施，以防止未来再次发生类似安全事件。

---

## 7. GraphQL：企业蜜月期已结束

**原文标题**: GraphQL: The enterprise honeymoon is over

**原文链接**: [https://johnjames.blog/posts/graphql-the-enterprise-honeymoon-is-over](https://johnjames.blog/posts/graphql-the-enterprise-honeymoon-is-over)

本文认为，GraphQL的优势在企业应用中常被夸大，其主要卖点——防止过度获取数据——在现有的后端为前端（BFF）架构中已得到解决。尽管GraphQL在允许客户端请求特定数据方面表现出色，但作者指出，下游服务通常是REST API，这意味着过度获取数据只是被转移到了另一层，而非真正消除。

文章详细阐述了重大权衡：GraphQL比REST需要更多的初始设置（模式、解析器），通过使用HTTP 200处理成功和错误使可观测性复杂化，并引入了脆弱的缓存复杂性。它还强调了实际缺陷，例如Apollo强制要求的唯一ID字段（对许多企业API并不适用）以及对文件上传的笨拙处理。

最终，作者得出结论，GraphQL是一种小众解决方案。对于大多数企业环境，团队优先考虑生产速度、操作简便性和可靠性，GraphQL增加的复杂性往往超过其理论优势，使得基于REST的简单BFF成为更务实的选择。

---

## 8. 使用LLVM-mca照亮处理器核心

**原文标题**: Illuminating the processor core with LLVM-mca

**原文链接**: [https://abseil.io/fast/99](https://abseil.io/fast/99)

本文介绍了LLVM-MCA（机器代码分析器），这是一个用于分析汇编指令在处理器后端如何执行的工具。文章指出，现代处理器将指令分解为微操作，而LLVM-MCA通过模拟这些微操作在执行单元中的流动，提供静态性能分析（忽略缓存未命中等动态因素）。

核心示例比较了Protobuf函数（`VarintSize64`）的两种实现：一种使用`bsr`指令，另一种使用`lzcnt`指令。通过使用LLVM-MCA分析它们的汇编代码，文章展示了该工具的时间线视图如何揭示`lzcnt`版本具有更低的延迟（9个周期对比10个周期），这得益于更好的指令级并行性以及避免了由按位或操作引起的数据依赖。

使用LLVM-MCA的关键见解包括：
*   它有助于区分**延迟**（单次操作的关键路径）和**吞吐量**（循环中的并行执行）。
*   其时间线可视化清晰地展示了**依赖链**，揭示了哪些指令造成了瓶颈，即使CPU性能分析可能误导性地突出其他指令。
*   它可以模拟不同的CPU架构（例如AMD Zen3、Arm核心）。

文章总结道，LLVM-MCA对于理解处理器的执行流水线、识别优化的关键路径，以及在延迟和吞吐量之间做出明智权衡具有重要价值。

---

## 9. Linux沙盒与Fil-C

**原文标题**: Linux Sandboxes and Fil-C

**原文链接**: [https://fil-c.org/seccomp](https://fil-c.org/seccomp)

本文以OpenSSH为例，阐述了如何将内存安全（通过使用内存安全的C/C++实现Fil-C）与Linux沙箱技术相结合。文中明确指出，内存安全与沙箱化是相互独立且互补的防御层次。

核心挑战在于如何让为不安全语言设计的沙箱适配Fil-C运行时的机制——该运行时依赖后台线程和系统调用来进行垃圾回收与同步。为防止这些运行时活动违反沙箱规则（例如阻止新建线程），作者引入了新的Fil-C API `zlock_runtime_threads()`，强制运行时在沙箱激活前预先创建所有必需线程。

文章还详细说明了针对OpenSSH的seccomp-BPF过滤器的具体调整，例如为运行时允许`MAP_NORESERVE`和`sched_yield`系统调用，并使用`SECCOMP_RET_KILL_PROCESS`在违规时终止所有线程。

关键之处在于，文章描述了Fil-C运行时如何安全地实现用于安装seccomp过滤器的`prctl`系统调用。它确保`no_new_privs`标志位和系统调用过滤器应用于*所有*运行时线程（而不仅是主线程），从而封堵了潜在的逃逸途径。

结论再次强调，最强的安全态势源于内存安全与健壮沙箱化的分层结合，并展示了如何在不损害任何一层安全保证的前提下，将Fil-C与现有Linux沙箱工具集成。

---

## 10. 独立版Meshtastic指挥中心 – 单HTML文件离线运行

**原文标题**: Standalone Meshtastic Command Center – One HTML File Offline

**原文链接**: [https://github.com/Jordan-Townsend/Standalone](https://github.com/Jordan-Townsend/Standalone)

Meshtastic独立指挥中心是一个自包含的离线网页界面，用于管理Meshtastic网状网络，封装在单个51KB的HTML文件中。它无需安装、互联网连接或后端服务器，非常适合现场操作、紧急情况和离网使用。

主要功能包括通过原生浏览器API（Web蓝牙、Web串口和WiFi）实现通用连接、带指标（RSSI、SNR、跳数）的实时节点映射、消息广播和节点配置。它是跨平台的，可在笔记本电脑、平板电脑和智能手机上的任何现代浏览器中运行。

该工具解决了在传统应用或云服务不实用的场景下对可靠、无依赖控制界面的需求。它支持多种社区验证的硬件，如LilyGo和Heltec设备。

开发优先考虑简洁性和透明度——不使用任何框架、分析工具或外部依赖——确保所有数据都保留在用户的本地设备上。未来更新可能包括离线地图、车队监控和配置工具。该项目开放给社区贡献、测试和反馈。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 2 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 3 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 4 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 5 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 6 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 7 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 8 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 9 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 10 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 11 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 12 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 13 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 14 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 15 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 16 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 17 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 18 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 19 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 20 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 21 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 22 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 23 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 24 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 25 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 26 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 27 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 28 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 29 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 30 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 31 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 32 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 33 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 34 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 35 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 36 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 37 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 38 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 39 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 40 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 41 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 42 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 43 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 44 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 45 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 46 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 47 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 48 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 49 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 50 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 51 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 52 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 53 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 54 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 55 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 56 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 57 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 58 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 59 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 60 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 61 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 62 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 63 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 64 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 65 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 66 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 67 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 68 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 69 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 70 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 71 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 72 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 73 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 74 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 75 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 76 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 77 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 78 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 79 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 80 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 81 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 82 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 83 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 84 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 85 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 86 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 87 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 88 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 89 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 90 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 91 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 92 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 93 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 94 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 95 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 96 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 97 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 98 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 99 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 100 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 101 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 102 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 103 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 104 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 105 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 106 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 107 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 108 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 109 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 110 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 111 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 112 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 113 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 114 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 115 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 116 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 117 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 118 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 119 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 120 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 121 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 122 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 123 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 124 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 125 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 126 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 127 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 128 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 129 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 130 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 131 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 132 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 133 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 134 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 135 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 136 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 137 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 138 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 139 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 140 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 141 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 142 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 143 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 144 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 145 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 146 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 147 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 148 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 149 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 150 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 151 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 152 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 153 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 154 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 155 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 156 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 157 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 158 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 159 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 160 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 161 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 162 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 163 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 164 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 165 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 166 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 167 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 168 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 169 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 170 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 171 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 172 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 173 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 174 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 175 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 176 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 177 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 178 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 179 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 180 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 181 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 182 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 183 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 184 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 185 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 186 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 187 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 188 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 189 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 190 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 191 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 192 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 193 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 194 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 195 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 196 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 197 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 198 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 199 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 200 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 201 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 202 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 203 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 204 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 205 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 206 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 207 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 208 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 209 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 210 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 211 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 212 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 213 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 214 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 215 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 216 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 217 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 218 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 219 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 220 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 221 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 222 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 223 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 224 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 225 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 226 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 227 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 228 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 229 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 230 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 231 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 232 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 233 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 234 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 235 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 236 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 237 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 238 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 239 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 240 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 241 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 242 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 243 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 244 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 245 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 246 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 247 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 248 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 249 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 250 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 251 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 252 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 253 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 254 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 255 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 256 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 257 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 258 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 259 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 260 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 261 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 262 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 263 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 264 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 265 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 266 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 267 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 268 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
