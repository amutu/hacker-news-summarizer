# Hacker News 热门文章摘要 (2026-02-15)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. 州检察长欲将网络接入与身份验证挂钩

**原文标题**: State Attorneys General Want to Tie Online Access to ID

**原文链接**: [https://reclaimthenet.org/40-attorneys-general-back-ids-online-safety-act](https://reclaimthenet.org/40-attorneys-general-back-ids-online-safety-act)

本文报道称，一批州检察长正推动相关政策，要求用户访问在线平台时需进行年龄与身份验证。其核心论点是此类措施对于保护未成年人免受网络伤害至关重要。

文章作者强烈反对这一动向，认为这将威胁网络隐私与匿名性。作者指出，强制身份验证会催生监控体系，侵蚀开放互联网的根本自由。

作为解决方案，文章转而推荐替代性通信平台，特别强调去中心化或自托管选项，例如联邦宇宙中的平台（如Matrix、Mastodon）。这些替代方案的关键标准在于用户掌控权——作者推崇那些让用户自主管理数据与基础设施的项目，以避免陷入其所谓的由企业控制的另一个“精致牢笼”。

总之，文章展现了政府官员为安全推行网络身份核查与隐私倡导者之间的冲突：前者视核查为必要安全措施，后者则认为这是危险的越权行为，并主张通过去中心化工具来“重获掌控权”。

---

## 12. 展示 HN：VOOG – 使用 Python 和 tkinter GUI 开发的 Moog 风格复音合成器

**原文标题**: Show HN: VOOG – Moog-style polyphonic synthesizer in Python with tkinter GUI

**原文链接**: [https://github.com/gpasquero/voog](https://github.com/gpasquero/voog)

VOOG是一款基于Python构建的复音虚拟模拟合成器，旨在模拟Moog Subsequent 37的声音与界面。它采用深色主题的tkinter图形界面，配备旋钮控件，功能完整。

合成器核心包含三个振荡器（支持正弦波、锯齿波、方波和三角波）、一个24dB/倍频程的Moog式梯形滤波器、双ADSR包络发生器、一个LFO以及噪声发生器。它具备8复音能力，支持4个多音色通道，并包含滑音/滑奏功能和19个内置预设。

用户可通过虚拟键盘（鼠标点击/拖拽）、QWERTY键盘映射或可选MIDI控制器演奏音符。项目结构分为数字信号处理（DSP）、音频引擎、图形界面、MIDI支持和音色管理模块。

运行VOOG需安装Python 3.13及以上版本（含tkinter），并依赖NumPy和SoundDevice等库。它可在图形界面或命令行交互模式下启动，支持保存和加载自定义音色。

---

## 13. Oat – 超轻量、语义化、零依赖的HTML UI组件库

**原文标题**: Oat – Ultra-lightweight, semantic, zero-dependency HTML UI component library

**原文链接**: [https://oat.ink/](https://oat.ink/)

**概述：**

Oat 是一款极简的 HTML UI 组件库，专为注重速度和简洁性的开发者设计。其核心卖点是极小的体积：经过压缩和 gzip 处理后，整个库仅包含 **6KB 的 CSS 和 2.2KB 的 JavaScript**。

该库的构建专注于 **语义化 HTML**，这意味着它通过样式和基础交互性来增强标准 HTML 元素，而非用复杂的自定义组件替代它们。这种方法提升了可访问性，保持了代码的简洁，并易于使用。

一个关键特性是 Oat **零依赖**，无需任何外部框架或库。这使得它可以轻松集成到任何项目中，而不会增加冗余或潜在的依赖冲突。

本质上，Oat 提供了一套预样式化、功能性的 UI 元素（如按钮、表单、导航），这些元素开箱即用，同时异常轻量且遵循 Web 标准。它非常适合那些对性能、极简主义和简洁性有严格要求的项目。

---

## 14. 闪点档案——保存超过20万款网页游戏与动画

**原文标题**: Flashpoint Archive – Over 200k web games and animations preserved

**原文链接**: [https://flashpointarchive.org](https://flashpointarchive.org)

**Flashpoint档案库**是一个社区驱动的项目，致力于保存因Adobe Flash等过时技术而面临消失风险的网页游戏与动画。自2017年12月启动以来，该项目已成功存档超过20万件内容。

该项目提供开源软件工具，包括启动器、代理服务器和沙盒系统，能够可靠地运行和体验已保存的内容，仿佛它们仍在原始网页上运行。

最初专注于保存Flash游戏，Flashpoint现已扩展至保存来自各种网页插件、框架和标准的内容。这是一个全球性的非营利性努力，得到了数百名志愿者的支持。

其核心使命在于：通过确保这些数字遗产的持续可访问性，来守护互联网的历史与文化。

---

## 15. Palantir对决《Republik》：美国数据分析公司将杂志告上法庭

**原文标题**: Palantir vs. the "Republik": US analytics firm takes magazine to court

**原文链接**: [https://www.heise.de/en/news/Palantir-vs-the-Republik-US-analytics-firm-takes-magazine-to-court-11176508.html](https://www.heise.de/en/news/Palantir-vs-the-Republik-US-analytics-firm-takes-magazine-to-court-11176508.html)

**《Palantir 诉〈共和〉杂志：美国数据分析公司对瑞士媒体提起法律诉讼》摘要**

文章报道了美国数据分析公司 Palantir 与瑞士调查性杂志《共和》之间的法律纠纷。Palantir 正在瑞士法院起诉该杂志，要求其删除《共和》获取并发布的公司内部文件与数据。

冲突的核心源于《共和》对 Palantir 商业活动的报道，特别是其与政府机构的合作。该杂志基于其称为 Palantir 内部文件的资料发表了文章，内容包括客户名单、合同及内部通信。Palantir 声称这些数据系非法获取，侵犯了商业秘密并违反了数据保护法。

《共和》为其行为辩护，将此案定位为关乎新闻自由和公众知情权的关键问题。该杂志指出，与情报和警察机构广泛合作的 Palantir 运营极不透明，其工作对社会影响重大。因此，他们认为基于此类文件的调查性新闻报道符合公共利益。

此诉讼凸显了企业保密与新闻监督之间的紧张关系，尤其对于 Palantir 这样以从事有争议的政府监控和数据分析工作而闻名的公司。此案的结果可能为欧洲法院如何权衡企业数据保护与新闻自由树立先例。

---

## 16. 数据是如何存储的？

**原文标题**: How Is Data Stored?

**原文链接**: [https://www.makingsoftware.com/chapters/how-is-data-stored](https://www.makingsoftware.com/chapters/how-is-data-stored)

根据所提供URL的内容，以下是简明摘要：

**《数据如何存储？》摘要**

文章阐述了计算中数据存储的基本层次结构，从最小单元到复杂文件。它从**比特**开始，这是基本的二进制单位（0或1），代表电荷或磁状态。

比特组合成**字节**（通常为8比特），可表示单个字符。文章详细说明了如何使用**ASCII**或**UTF-8**等标准对文本进行编码，其中每个字母、数字或符号对应特定的字节模式。

字节被组织成**数据结构**（如数组）以形成有意义的信息。这些结构以**文件**形式存储（例如文档、图像），由操作系统管理。文件保存在**文件系统**中，这是一种在存储设备（如HDD或SSD）上组织、命名和存储文件的方法。文件系统处理目录、文件元数据（名称、大小、位置）以及文件到磁盘特定物理扇区的映射。

最后，文章提及**数据库**作为一种更高级、高效且查询优化的系统，用于存储和检索大量相互关联的数据，与简单文件系统相比更具优势。

本质上，存储链的演进过程为：**比特 → 字节 → 字符/数据结构 → 文件 → 文件系统 → 数据库**。

---

## 17. 1940年代爱尔兰科幻小说呈现早期机甲与重力助推技术。

**原文标题**: 1940s Irish sci-fi novel features early mecha and gravity assists

**原文链接**: [https://github.com/cavedave/Manannan](https://github.com/cavedave/Manannan)

本文宣布对*Manannán*进行数字化处理，这是Máiréad Ní Ghráda于1940年创作的一部爱尔兰语青少年科幻小说。该项目旨在让这部鲜为人知的作品更易于获取，因为它从未再版或翻译过。

该小说以其可能具有开创性的概念而著称，包括可能是日本科幻以外首次对机甲（有人驾驶的机器人套装）的描绘，以及早期文学作品中关于太空旅行重力助推操作的提及。

数字化工作涉及从扫描的PDF中提取并校正文本，从第9至18页开始，这些页面涵盖了第一章的开头部分。这项工作正在逐步进行，以便在早期识别和修复重复出现的OCR错误。存储库中包含示例PDF页面和文本文件，以及完整的目录。

欢迎贡献者，尤其是懂爱尔兰语的人士，通过发现和纠正提取文本中的错误来帮助提高数字版本的准确性。

---

## 18. 一位被奴役的园丁将山核桃转变为经济作物

**原文标题**: An Enslaved Gardener Transformed the Pecan into a Cash Crop

**原文链接**: [https://lithub.com/how-an-enslaved-gardener-transformed-the-pecan-into-a-cash-crop/](https://lithub.com/how-an-enslaved-gardener-transformed-the-pecan-into-a-cash-crop/)

本文详述了19世纪一位名叫安托万的被奴役园丁如何通过成功嫁接彻底改变了山核桃产业。虽然山核桃长期以来是美洲原住民的主要食物，但早期尝试用种子进行商业种植却因成熟期长、坚果品质不稳定而失败。

安托万掌握了精妙的嫁接技术，将接穗与砧木结合，培育出能稳定产出优质、均匀坚果的树木。他使用简陋工具培育出的“百年纪念”山核桃品种，为后来年产量达数百万磅的盈利性商业产业奠定了基础。

身为植物生物学家的作者通过对比现代嫁接的技术挑战，强调了安托万技艺的重要性。文章还批判了历史上对黑人和原住民植物学专业知识的抹除，指出像安托万这样的人物常被归功于欧洲探险家的叙事所忽略，并指出简·古道尔《希望的种子》等当代著作中类似的疏忽。最终，安托万的创新使山核桃成为重要经济作物，但他的贡献至今仍鲜为人知。

---

## 19. 逆向工程游戏《星际飞行》（1986）

**原文标题**: Reversed engineered game Starflight (1986)

**原文链接**: [https://github.com/s-macke/starflight-reverse](https://github.com/s-macke/starflight-reverse)

本项目涉及对1986年DOS游戏《星际飞行》的反向工程，该游戏采用Forth编程语言编写。作者指出，Forth语言采用间接线程技术——这是一种节省空间但运行缓慢的方法，其可执行文件主要由16位指针构成，而非传统的x86汇编指令。这种结构使得标准反汇编工具难以生效。

游戏代码保留了原始Forth源码的大量结构特征，包括作为调试符号的加密字词名，这使得大部分源代码得以重建。项目的反汇编器将这种Forth“字节码”转换为可读的C风格代码。游戏数据存储于三个文件中：`STARFLT.COM`（包含初始化程序和核心例程）以及`STARA.COM`/`STARB.COM`（存储游戏数据、图形资源和代码覆盖模块）。

该代码库提供了提取和分析这些文件的工具，使其他开发者能够探索游戏内部机制，并领略其影响后世众多沙盒游戏的创新设计。

---

## 20. 现代CSS代码片段：别再像2015年那样写CSS了

**原文标题**: Modern CSS Code Snippets: Stop writing CSS like it's 2015

**原文链接**: [https://modern-css.com](https://modern-css.com)

本文《现代CSS代码片段》指出，过去十年中许多常见的CSS技术现已过时，被更简洁的原生浏览器功能所取代。文章按布局、动画、排版和工作流程等类别，呈现了56组“传统”解决方案与“现代”方案的对比。

核心观点是，开发者无需再依赖复杂的JavaScript、Sass等预处理器或外部库来处理许多常见任务。现代CSS已为居中（`place-items: center`）、响应式设计（容器查询）、滚动驱动动画（`animation-timeline: view()`）、父元素选择（`:has()`）以及对话框/弹出层样式（`popover`属性）等场景提供了原生解决方案。

文章重点强调了开发体验和性能的显著提升，例如使用`subgrid`进行对齐、`text-wrap: balance`优化标题排版、`color-mix()`实现色彩混合、`@scope`限定样式作用域——所有这些都无需额外依赖。文章强调，这些现代功能已获得浏览器广泛支持，使得传统解决方案在现代网页开发中不再必要。

---

## 21. LED进入纳米尺度，但效率难题挑战着迄今最小的LED。

**原文标题**: LEDs Enter the Nanoscale, But efficiency hurdles challenge the smallest LEDs yet

**原文链接**: [https://spectrum.ieee.org/nanoled-research-approaches](https://spectrum.ieee.org/nanoled-research-approaches)

**摘要：**

研究人员已成功在纳米尺度上制造出LED，将这项技术推入了一个新的尺寸领域。这些由一家名为"极光"公司开发的"纳米LED"，由微小的、自下而上制造的六角锥体构成。这一成就对于超高分辨率显示器、先进光通信以及片上光子电路等潜在应用具有重要意义。

然而，文章强调了一个主要挑战：**效率障碍**。随着LED缩小到如此微小的尺寸，其发光效率显著下降。这主要是由于非辐射复合增加（电能转化为热量而非光），以及在小尺度下变得更为显著的表面效应。

核心要点是，虽然纳米级LED的制造现已实现，但要使其变得实用且具备商业可行性，必须克服这些根本性的效率障碍。这项发展代表了微型化进程中的重要一步，但在这些最小尺寸的LED得以广泛应用之前，仍需进一步研究以提升其性能。

---

## 22. 发现霸王龙的间谍

**原文标题**: The Spy Who Found T. Rex

**原文链接**: [https://nautil.us/the-spy-who-found-t-rex-1267359/](https://nautil.us/the-spy-who-found-t-rex-1267359/)

巴纳姆·布朗，这位出生于1873年的先驱古生物学家，最为人所知的是他于1902年在蒙大拿州发现了*霸王龙*。在美国自然历史博物馆工作期间，他职业生涯早期便取得了这一里程碑式的发现，后来还发掘出了一具近乎完整的霸王龙标本。他的工作足迹遍布全球，曾前往缅甸和印度等地进行化石采集考察。

除了古生物学，布朗还涉足多种副业。他曾为石油公司担任石油勘探员，甚至在二战期间为战略情报局（中央情报局的前身）提供地理情报。他还为沃尔特·迪士尼的电影《幻想曲》担任顾问。

他后期的重要发现之一是1934年在怀俄明州发现的豪氏采石场，他的团队在那里从一群死于史前泥潭的蜥脚类恐龙中挖掘出了数千块骨头。布朗一直活跃到80多岁，直到1963年去世前仍在继续化石搜寻工作。尽管他未能亲眼见证古生物学现代转型为一门关键的进化科学，但他多产的化石发现，包括标志性的霸王龙，奠定了他在该领域作为奠基人的不朽遗产。

---

## 23. 编者按：撤回包含捏造引文的文章

**原文标题**: Editor's Note: Retraction of article containing fabricated quotations

**原文链接**: [https://arstechnica.com/staff/2026/02/editors-note-retraction-of-article-containing-fabricated-quotations/](https://arstechnica.com/staff/2026/02/editors-note-retraction-of-article-containing-fabricated-quotations/)

Ars Technica在发现一篇报道包含由AI工具生成并虚假归因于消息源斯科特·尚博的捏造引文后，已撤回该文章。主编肯·费舍尔在编者按中称这是该媒体标准的“严重失误”，该标准要求直接引语必须反映消息源的真实表述。

费舍尔对此深感痛心，因为Ars Technica长期奉行明文政策，禁止在未明确标注演示用途的情况下发布AI生成内容。本次事件直接违反了这项强制性规定。内部审查未发现其他类似问题，表明此为孤立事件。

该媒体已就此次错误向读者和尚博先生致歉。编者按重申了Ars Technica坚决反对在新闻报道中未经披露使用AI生成内容的立场。

---

## 24. 我的智能睡眠面具将用户的脑电波广播至开放的MQTT代理服务器。

**原文标题**: My smart sleep mask broadcasts users' brainwaves to an open MQTT broker

**原文链接**: [https://aimilios.bearblog.dev/reverse-engineering-sleep-mask/](https://aimilios.bearblog.dev/reverse-engineering-sleep-mask/)

一名用户对一款智能睡眠眼罩进行了逆向工程，发现它会向开放服务器广播敏感数据。在该眼罩的应用程序被证明不可靠后，他们利用人工智能工具对其反编译，发现了制造商MQTT代理服务器的硬编码登录凭证。

通过使用这些凭证，他们连接到代理服务器，能够访问所有用户设备的实时数据，包括实时的脑电图脑波读数。更关键的是，同一开放系统允许向任何设备发送命令，包括触发睡眠用户眼部周围的电肌肉刺激（EMS）。

文章揭示了一个严重的安全漏洞：这些设备共享通用凭证，使用户面临未经授权的数据监控和潜在的物理操控风险。研究人员已负责任地向公司披露了该问题，并提及了对联网设备数字卫生的更广泛担忧。逆向工程蓝牙协议和基于Flutter的应用程序的技术过程主要由人工智能助手自动完成。

---

## 25. 瑞恩布雷恩

**原文标题**: RynnBrain

**原文链接**: [https://github.com/alibaba-damo-academy/RynnBrain](https://github.com/alibaba-damo-academy/RynnBrain)

**RynnBrain 概述**

RynnBrain 是一个具身基础模型，旨在理解物理世界并与之交互。它提供三个核心版本：两个稠密模型（2B 和 8B 参数）和一个混合专家模型（30B-A3B）。该模型基于 Qwen3-VL 构建，采用统一的编码器-解码器架构来处理视觉输入（如视频）和文本指令，输出空间轨迹、物理指向和行动规划。

其核心能力包括：
*   **细粒度第一人称理解：** 擅长视频问答、物体计数和第一人称视角内的光学字符识别等任务。
*   **时空定位：** 在图像和视频中精确定位物体、区域、运动路径和可供性。
*   **物理空间推理：** 采用“交错推理”方法，交替进行文本逻辑推理和空间基础定位，确保推理基于现实。
*   **物理感知规划：** 整合位置和可供性信息，实现详细的任务分解和机器人行动规划。

该项目还发布了针对任务规划、视觉语言导航和指向推理链的专项后训练模型。它推出了 **RynnBrain-Bench** 基准，用于评估具身理解在认知和定位方面的能力。代码、模型检查点和技术报告已于 2026 年 2 月发布，并提供了快速入门指南和示例“操作手册”以展示其各项功能。

---

## 26. 亚马逊、谷歌无意间暴露了美国监控国家的严重程度

**原文标题**: Amazon, Google Unwittingly Reveal the Severity of the U.S. Surveillance State

**原文链接**: [https://greenwald.substack.com/p/amazons-ring-and-googles-nest-unwittingly](https://greenwald.substack.com/p/amazons-ring-and-googles-nest-unwittingly)

本文指出，亚马逊Ring与谷歌Nest近期事件揭示了美国监控体系的惊人扩张——其渗透程度已远超十年前爱德华·斯诺登披露后的状况。

亚马逊为Ring"搜索派对"功能投放的超级碗广告，意外暴露了个人安防摄像头如何被联网成大规模监控天网：通过人工智能扫描人或宠物踪迹，引发强烈公众反弹。此后，联邦调查局在一桩失踪案中从未订阅的谷歌Nest摄像头获取录像，更暴露谷歌在用户未订阅时仍存储视频数据的事实，颠覆了公众普遍认知。

作者将这些事件与硅谷推动的隐私侵蚀趋势相联系：包括Palantir政府合同的扩张、人脸识别技术的泛滥，以及人工智能编制侵入性个人档案的新威胁。核心论点是，美国人正被动接受以自由换取表面安全的交易，这违背了立国根基。文章最终指出，斯诺登事件激起的公众愤怒已逐渐消散，国家与企业结合的监控机器正以近乎零阻力的态势日益壮大。

---

## 27. 贯穿万物的缝隙

**原文标题**: The seam through the center of things

**原文链接**: [https://usefulfictions.substack.com/p/the-seam-through-the-center-of-things](https://usefulfictions.substack.com/p/the-seam-through-the-center-of-things)

在这篇个人随笔中，凯特·霍尔描述了她对一氧化二氮长达数年、摧毁一切的成瘾经历。这一切始于2017年一次药物引发的灵性体验，她将其解读为与上帝的相遇。这次体验填补了她内心深处一个长久以来未被察觉的空洞，让她相信宇宙充满意义与爱。为了获得这种现实的确凿证据，她放弃了顶级扑克选手的职业生涯，并痴迷地记录下随后的药物使用过程，试图重新与神圣连接。

当这种感知到的连接消失后，她的理性思维反而成了成瘾的帮凶，通过帕斯卡的赌注等理论框架以及“自己正在经受考验”的信念，为持续用药辩护。成瘾最终使她经济破产、身体受损、认知障碍。戒除毒瘾需要她接受一个事实：她的痛苦并无宏大意义，也无法换来救赎。

她解释道，合著新书《你可以直接去做》的过程，无意中成了一种疗愈方式，让她能将创伤经历转化为对他人有价值的产物。完成书稿释放了她积压已久的紧绷感，表现为对平凡生活之美频繁涌出的感恩之泪——这标志着她内心的危机终于画上了句号。

---

## 28. Show HN：Knock-Knock.net —— 可视化那些敲击我服务器门的机器人

**原文标题**: Show HN: Knock-Knock.net – Visualizing the bots knocking on my server's door

**原文链接**: [https://knock-knock.net](https://knock-knock.net)

**概述：**

Knock-Knock.net 是一个实时可视化网站，展示针对未受保护互联网服务器的持续自动化机器人攻击。它将此活动描述为“互联网的背景辐射”——一股持续不断、全球性的未授权登录尝试流。

该项目的核心是一个实时仪表板，显示正在发生的入侵尝试，包括机器人的地理位置、IP地址、互联网服务提供商（ISP）以及使用的用户名和密码。网站还汇总了历史数据，提供有关攻击来源、常用尝试凭证以及问题最突出的互联网服务提供商的统计数据。

通过公开展示这些数据，该网站旨在揭示开放互联网上自动化恶意流量的规模和性质，同时向访问者保证所展示的服务器是安全的（“……但他们无法进入”）。它以引人入胜的形式呈现信息，并辅以趣闻和相关内容。

---

## 29. 使用SuperSplat Studio构建高斯飞溅体验

**原文标题**: Build Gaussian Splat Experiences with SuperSplat Studio

**原文链接**: [https://blog.playcanvas.com/build-gaussian-splat-experiences-with-supersplat-studio/](https://blog.playcanvas.com/build-gaussian-splat-experiences-with-supersplat-studio/)

SuperSplat Studio是一款用于创建基于高斯溅射的交互式3D体验的新应用。它允许创作者通过向场景中添加最多25个信息热点（标注点）来构建引导式演示，每个热点包含标题、描述和保存的相机视角。观众可点击这些热点或使用导航栏依次浏览，获得结构化导览。

该工具还通过PlayCanvas引擎支持的后期处理效果提供广泛的视觉自定义功能。用户可实时应用泛光、锐化、暗角、色彩分级和色散效果。此外还包含色调映射（提供多种算子选项）和背景颜色调整控件，以优化场景的最终视觉效果。

用户需先在SuperSplat编辑器中发布溅射文件，然后通过Studio管理页面打开文件即可开始创作。公告邀请社区通过Discord或X平台对未来功能提供反馈。

---

## 30. 两种加速大语言模型推理的巧妙方法

**原文标题**: Two different tricks for fast LLM inference

**原文链接**: [https://www.seangoedecke.com/fast-llm-inference/](https://www.seangoedecke.com/fast-llm-inference/)

本文对比了Anthropic与OpenAI新推出的“快速模式”推理功能，指出两者采用截然不同的技术路径。

Anthropic为Claude Opus 4.6提供的快速模式可实现约2.5倍加速（最高170词元/秒），但成本增加6倍。作者推测其采用低批量推理策略，类似巴士为单个乘客立即发车而非等待满载。这种方式提升单次响应速度，却降低了系统整体吞吐量且成本更高。

OpenAI为GPT-5.3-Codex-Spark提供的快速模式实现约15倍大幅加速（超1000词元/秒）。这得益于专用Cerebras芯片配备的44GB超大片上内存，使整个精简模型能驻留于高速SRAM中，消除缓慢的数据传输。但该方案需使用经蒸馏的小型模型（“Spark”），其能力明显弱于完整版GPT-5.3-Codex。

作者认为OpenAI基于Cerebras的方案技术含量更高，同时推测Anthropic的举措或是竞争性应对。文末指出，尽管业界正探索快速推理，但以准确性换取速度对AI助手未必是最佳权衡——用户时间往往消耗于纠错而非等待响应。

---

