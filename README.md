# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-15.md)

*最后自动更新时间: 2026-02-15 20:34:50*
## 1. LT6502：一款基于6502处理器的自制笔记本电脑

**原文标题**: LT6502: A 6502-based homebrew laptop

**原文链接**: [https://github.com/TechPaula/LT6502](https://github.com/TechPaula/LT6502)

LT6502是一款基于8MHz 65C02微处理器的定制便携式计算机。作为自制笔记本电脑，它配备46KB内存、固化BASIC语言的ROM芯片以及用于输入输出的65C22 VIA接口。系统采用CF卡存储，内置10000mAh锂电池并支持USB-C充电。

核心硬件包含内置键盘、串行控制台端口、内部扩展插槽及显示屏（初始采用4.3英寸800x480屏幕，计划升级为9英寸或10.1英寸型号）。项目日志记录了关键进展：首次通电成功、外围设备集成（键盘/CF卡/蜂鸣器）及外壳组装。

固件在EhBASIC基础上扩展了图形指令（CIRCLE/LINE/PLOT）、声音指令（BEEP）、文件管理（LOAD/SAVE/DIR）和显示控制（CLS/MODE）。内存映射为RAM、ROM及VIA接口、显示控制器、控制台等外围设备分配了地址空间。

总而言之，LT6502是一款功能完整的复古计算笔记本电脑，既保留了经典的6502架构，又融合了USB供电、CF存储等现代便利特性，并通过定制图形与文件管理功能实现了功能增强。

---

## 2. 我修复了Windows原生开发

**原文标题**: I Fixed Windows Native Development

**原文链接**: [https://marler8997.github.io/blog/fixed-windows/](https://marler8997.github.io/blog/fixed-windows/)

本文批评了在Windows上进行原生C/C++开发时传统上依赖完整Visual Studio安装程序的做法，指出其问题：下载体积庞大、配置复杂、可复现性差以及系统污染。文章介绍了**msvcup**作为解决方案——这是一款轻量级CLI工具，可直接从微软服务器下载并仅安装必要的MSVC编译器和Windows SDK组件。

msvcup的主要优势包括：
*   **快速、隔离的安装**至版本化目录，避免注册表混乱。
*   通过锁定文件和显式版本控制实现**可复现的构建**。
*   **自包含的构建脚本**可在任何现代Windows机器上运行，无需预装工具。
*   **自动环境配置**（`autoenv`），无需手动运行`vcvars`批处理文件。

该工具使开发者能直接在构建脚本中指定工具链依赖，让Windows原生开发更具可移植性和可靠性，类似于Linux上基于包管理器的工作流程。虽然它不能替代完整的Visual Studio IDE，但为管理核心编译工具链提供了一种现代化的声明式方法。

---

## 3. 欧盟禁止销毁未售出的服装、服饰配件及鞋类产品。

**原文标题**: EU bans the destruction of unsold apparel, clothing, accessories and footwear

**原文链接**: [https://environment.ec.europa.eu/news/new-eu-rules-stop-destruction-unsold-clothes-and-shoes-2026-02-09_en](https://environment.ec.europa.eu/news/new-eu-rules-stop-destruction-unsold-clothes-and-shoes-2026-02-09_en)

2026年2月9日，欧盟委员会依据《可持续产品生态设计法规》（ESPR）通过了新规，以遏制未售出纺织品的浪费性销毁行为。

核心措施是**禁止销毁未售出的服装、服饰配件及鞋类产品**。此举旨在减少浪费、降低环境损害（据估算，每年因销毁纺织品产生的二氧化碳排放达560万吨），并支持可持续商业模式。

为确保合规，新规包含：
*   **信息披露要求**：企业须自2027年2月起采用标准格式，上报其弃置的未售出消费品数量。
*   **豁免条款**：在安全原因或商品损坏等特定情况下，经国家监管部门监督可允许销毁。

实施时间表分阶段进行：
*   **销毁禁令**将于**2026年7月起适用于大型企业**，**2030年起适用于中型企业**。
*   **信息披露规则**已对大型企业生效，并将于2030年扩展至中型企业。

欧盟鼓励企业采取转售、捐赠、再制造或优化库存管理等替代方案，而非直接弃置产品。此举是欧盟推动纺织品及其他产品更具循环性和竞争力的整体战略的一部分。

---

## 4. 迈向自主数学研究

**原文标题**: Towards Autonomous Mathematics Research

**原文链接**: [https://arxiv.org/abs/2602.10177](https://arxiv.org/abs/2602.10177)

本文介绍**Aletheia**——一种专为自主数学研究设计的人工智能代理。它基于推理模型的最新进展，不仅能够解决竞赛级问题（如国际数学奥林匹克竞赛），还能处理专业研究任务，包括文献梳理与构建长篇复杂证明。

Aletheia通过迭代生成、验证和修订自然语言解决方案进行运作。其核心驱动力包括先进推理模型（Gemini Deep Think）、针对难题设计的新型推理时标度律，以及为管理研究复杂性而密集使用的工具集。

作者通过三项关键成果展示Aletheia的能力：
1.  **Feng26**：完全由AI生成的研究论文，在算术几何中计算结构常数（“特征权重”），全程无人为干预。
2.  **LeeSeo26**：人机协作完成的论文，证明了相互作用粒子系统（独立集）的边界问题。
3.  **大规模评估**：在数学数据库的700个开放问题上进行半自主运行，最终自主解决了其中四个未解问题。

论文最后提出量化AI辅助数学成果自主性与创新性的框架，并建议采用“人机交互记录卡”以增强透明度。文章展望了数学领域人机协作的未来前景，并公开了所有提示词与输出结果。

---

## 5. Gwtar：一种静态高效的单文件HTML格式

**原文标题**: Gwtar: A static efficient single-file HTML format

**原文链接**: [https://gwern.net/gwtar](https://gwern.net/gwtar)

Gwtar是一种新型静态HTML归档格式，它通过创建单一、自包含的HTML文件来解决“HTML三难困境”，同时仍能实现资源的高效懒加载。其原理是将JavaScript头部和资源压缩包嵌入单个HTML文件中：JavaScript利用`window.stop()`阻止浏览器下载完整文件，随后拦截图片或其他资源请求，通过HTTP范围请求仅从附加的压缩包中提取必要数据段。

这种设计使Gwtar文件具备静态性（无外部依赖）、单文件化（便于存储托管）和高效性（用户仅下载浏览内容）三大特性。该格式专为长期网络归档设计，提供用户友好且向前兼容的解决方案，支持可选纠错功能（PAR2 FEC），并能在最低服务器要求下实现本地浏览，但其运行需依赖浏览器对范围请求的支持。

---

## 6. WebGL中的实时路径追踪与全局光照

**原文标题**: Real-time PathTracing with global illumination in WebGL

**原文链接**: [https://erichlof.github.io/THREE.js-PathTracing-Renderer/](https://erichlof.github.io/THREE.js-PathTracing-Renderer/)

本文介绍了**THREE.js-PathTracing-Renderer**项目，该项目基于Three.js WebGL框架，可在网页浏览器中实现具备全局光照和渐进式渲染功能的**实时路径追踪**。该项目包含一系列**交互式演示**，全面展示其核心能力：

*   **高级渲染效果：** 实时全局光照、反射、折射、柔和阴影、焦散及体积效果（雾效、光轴）。
*   **多样化几何支持：** 既支持传统三角网格模型（通过BVH加速处理复杂模型如斯坦福龙），也支持**数学（二次曲面）几何体**（球体、圆锥体、双曲面），其设计灵感源自经典CGI技术。
*   **混合渲染技术：** 结合路径追踪与光线步进，可渲染海洋、地形乃至完整行星等复杂场景。
*   **性能与特性：** 在各种设备上可实现30-60 FPS的渲染性能，支持HDRI光照、PBR材质、模型实例化（可处理数十亿多边形），并实验性提供四边形（双线性面片）作为三角形网格的替代方案。

该项目充分展现了现代WebGL技术在浏览器中实现电影级物理渲染交互体验的强大潜力。

---

## 7. 与苹果同行：加固您的应用：强化安全性的关键策略

**原文标题**: With Apple: Fortify your app: Essential strategies to strengthen security

**原文链接**: [https://developer.apple.com/events/view/TUHA23T82K/dashboard](https://developer.apple.com/events/view/TUHA23T82K/dashboard)

本文概述了一次与苹果安全专家的预定会议机会，旨在帮助开发者加强其应用程序的安全防护能力。

核心内容为一对一咨询，苹果专家将提供个性化指导。重点在于实施苹果内置的安全框架并遵循最佳实践。强调的关键策略包括采用**数据加密**（传输和静态数据）、实施**应用沙盒**以限制潜在漏洞造成的损害，以及对敏感操作要求**生物识别认证**（如面容ID或触控ID）。

会议还强调通过清晰的**隐私标签**和安全的数据收集方法提升透明度，以保护用户数据。鼓励开发者在安全漏洞被利用前主动识别并解决问题。

本质上，此次会议是开发者直接获取资源的途径，学习如何利用苹果生态系统工具构建更安全、更可信赖的应用程序，从而更好地保护用户信息。

---

## 8. 我热爱ArchWiki维护者们的工作。

**原文标题**: I love the work of the ArchWiki maintainers

**原文链接**: [https://k7r.eu/i-love-the-work-of-the-archwiki-maintainers/](https://k7r.eu/i-love-the-work-of-the-archwiki-maintainers/)

本文是为“我爱自由软件日”撰写的一封诚挚感谢信，致谢ArchWiki的维护者与贡献者。作者强调，文档维护者在软件自由事业中扮演着关键角色，却往往未获得足够的认可。

作者称赞ArchWiki是不可或缺的资源，不仅在使用Arch Linux时经常查阅，也为理解各类发行版中的软件提供了帮助。他们指出，这份维基帮助自己与他人配置工具、发掘功能特性并解决系统设置问题。

文章着重阐述了该维基在汇集与保存知识、促进技术理解方面的作用，并赞扬维护者通过持续工作确保这一资源的长期可靠性与可访问性。文中引用爱德华·斯诺登的观点，强调在互联网搜索质量普遍下降的当下，这份维基具有非凡的实用价值。

作者最后鼓励读者一同向ArchWiki团队致谢，并考虑为Arch Linux项目捐款。附言特别感谢某位人士在FOSDEM 2026期间协助联系核心维护者。

---

## 9. 世嘉所有游戏机的设计师佐藤秀树去世

**原文标题**: Hideki Sato, designer of all Sega's consoles, has died

**原文链接**: [https://www.videogameschronicle.com/news/hideki-sato-designer-of-segas-consoles-dies-age-75/](https://www.videogameschronicle.com/news/hideki-sato-designer-of-segas-consoles-dies-age-75/)

世嘉前总裁兼首席硬件设计师佐藤秀树去世，享年77岁。据日本媒体Beep21报道，佐藤是世嘉几乎所有游戏主机的幕后工程师，包括Master System、Genesis/Mega Drive、Saturn和Dreamcast。

佐藤于1971年加入世嘉，他解释称公司的家用主机开发直接受到其街机业务的影响。他强调，16位的Mega Drive诞生于将尖端街机技术带入家庭的愿景，并利用了当时新近价格亲民的68000芯片。

关于Dreamcast，佐藤透露其开发关键词是“游玩与通信”，这催生了内置调制解调器等特色功能。他也坦率承认，尽管Dreamcast的CPU技术基础是64位，但世嘉为提升市场竞争力将其宣传为“128位”。

佐藤在2001年至2003年间担任世嘉代理总裁，并于2008年离开公司。

---

## 10. Palantir从纽约市公立医院获得数百万美元资金

**原文标题**: Palantir Gets Millions of Dollars from New York City's Public Hospitals

**原文链接**: [https://theintercept.com/2026/02/15/palantir-contract-new-york-city-health-hospitals/](https://theintercept.com/2026/02/15/palantir-contract-new-york-city-health-hospitals/)

本文报道称，自2023年以来，纽约市公立医院系统（NYC Health + Hospitals）已向数据分析公司Palantir支付近400万美元。该合同旨在通过扫描患者健康记录、捕捉遗漏的医疗补助账单，以提升计费效率的软件。

文章重点指出，由于Palantir与其他政府机构的合作，此事引发重大争议。详细内容包括该公司与美国移民及海关执法局（ICE）在驱逐出境方面的合作、在美国国家安全局监控项目中的角色，以及与以色列军方的伙伴关系。

包括美国公谊服务委员会和纽约公民自由联盟在内的活动团体强烈反对该合同。他们认为，将受保护的患者健康信息共享给一家参与移民执法的公司是鲁莽之举，担心数据可能被重新识别并用于针对寻求医疗服务的移民社区。包括护士工会在内的批评者要求终止合同。

纽约市公立医院系统和Palantir未就合同细节提供实质性评论，但Palantir声明其不会在约定范围外使用医院数据。文章指出，合同包含常见的患者数据去标识化条款，但也提及此类数据常能被重新识别的担忧。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 2 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 3 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 4 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 5 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 6 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 7 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 8 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 9 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 10 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 11 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 12 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 13 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 14 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 15 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 16 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 17 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 18 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 19 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 20 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 21 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 22 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 23 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 24 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 25 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 26 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 27 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 28 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 29 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 30 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 31 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 32 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 33 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 34 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 35 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 36 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 37 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 38 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 39 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 40 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 41 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 42 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 43 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 44 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 45 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 46 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 47 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 48 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 49 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 50 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 51 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 52 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 53 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 54 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 55 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 56 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 57 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 58 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 59 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 60 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 61 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 62 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 63 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 64 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 65 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 66 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 67 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 68 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 69 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 70 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 71 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 72 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 73 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 74 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 75 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 76 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 77 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 78 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 79 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 80 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 81 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 82 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 83 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 84 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 85 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 86 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 87 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 88 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 89 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 90 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 91 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 92 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 93 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 94 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 95 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 96 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 97 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 98 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 99 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 100 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 101 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 102 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 103 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 104 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 105 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 106 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 107 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 108 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 109 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 110 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 111 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 112 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 113 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 114 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 115 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 116 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 117 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 118 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 119 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 120 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 121 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 122 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 123 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 124 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 125 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 126 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 127 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 128 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 129 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 130 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 131 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 132 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 133 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 134 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 135 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 136 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 137 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 138 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 139 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 140 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 141 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 142 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 143 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 144 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 145 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 146 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 147 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 148 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 149 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 150 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 151 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 152 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 153 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 154 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 155 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 156 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 157 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 158 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 159 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 160 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 161 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 162 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 163 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 164 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 165 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 166 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 167 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 168 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 169 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 170 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 171 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 172 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 173 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 174 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 175 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 176 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 177 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 178 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 179 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 180 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 181 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 182 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 183 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 184 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 185 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 186 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 187 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 188 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 189 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 190 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 191 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 192 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 193 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 194 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 195 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 196 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 197 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 198 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 199 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 200 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 201 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 202 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 203 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 204 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 205 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 206 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 207 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 208 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 209 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 210 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 211 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 212 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 213 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 214 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 215 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 216 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 217 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 218 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 219 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 220 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 221 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 222 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 223 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 224 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 225 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 226 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 227 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 228 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 229 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 230 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 231 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 232 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 233 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 234 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 235 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 236 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 237 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 238 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 239 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 240 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 241 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 242 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 243 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 244 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 245 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 246 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 247 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 248 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 249 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 250 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 251 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 252 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 253 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 254 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 255 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 256 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 257 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 258 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 259 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 260 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 261 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 262 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 263 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 264 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 265 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 266 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 267 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 268 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 269 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 270 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 271 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 272 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 273 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 274 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 275 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 276 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 277 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 278 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 279 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 280 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 281 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 282 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 283 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 284 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 285 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 286 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 287 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 288 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 289 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 290 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 291 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 292 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 293 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 294 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 295 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 296 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 297 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 298 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 299 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 300 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 301 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 302 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 303 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 304 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 305 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 306 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 307 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 308 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 309 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 310 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 311 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 312 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 313 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 314 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 315 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 316 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 317 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 318 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 319 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 320 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 321 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 322 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 323 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 324 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 325 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 326 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 327 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 328 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 329 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 330 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
