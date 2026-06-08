# Hacker News 热门文章摘要 (2026-06-08)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 阻止Apple Music应用自动启动

**原文标题**: Stop the Apple Music app from launching

**原文链接**: [https://lowtechguys.com/musicdecoy/](https://lowtechguys.com/musicdecoy/)

**摘要：**

Music Decoy 是一款 macOS 应用，旨在防止按下 ▶ 播放键时自动启动 Apple Music。它通过使用与 Music 应用相同的捆绑标识符（`com.apple.Music`），让系统误以为 Music 已在运行。该应用不会在后台执行任何操作，并保持隐藏状态（无程序坞或菜单栏图标）。

**主要功能：**
- 阻止按下播放键、连接蓝牙耳机或结束通话时启动 Music。
- 可通过终端命令配置为启动其他应用（例如 Spotify）。
- 通过活动监视器或终端命令（`killall 'Music Decoy'`）退出。

**触发原因：** 系统守护进程 `rcd` 负责处理媒体键；如果没有应用正在播放音频，它会启动 Music 应用。

**对比的替代方案：**
1. 完全禁用 `rcd` — 播放键将完全失效。
2. noTunes — 启动后关闭 Music，但会消耗少量 CPU。

Music Decoy 通过简单存在为一个运行中的进程，提供轻量级、零 CPU 占用的解决方案。

---

## 2. 苹果发布基于谷歌Gemini模型构建的全新AI架构

**原文标题**: Apple reveals new AI architecture built around Google Gemini models

**原文链接**: [https://www.macrumors.com/2026/06/08/apple-reveals-new-ai-architecture/](https://www.macrumors.com/2026/06/08/apple-reveals-new-ai-architecture/)

**概述：**

苹果对其Apple Intelligence平台进行了重大升级，现以与谷歌合作开发的Gemini技术基础模型为核心。该新架构支持设备端及通过苹果私有云计算基础设施的服务器端处理。

此次合作带来了先进功能，包括逼真图像生成、照片编辑、多模态理解、改进的听写功能以及更强的自然语言推理能力。新的“系统协调器”可跨苹果平台协调各项功能，根据当前使用的应用及用户任务定制响应。

苹果将此定位为注重隐私的替代方案，以区别于竞争对手，强调设备端处理与数据保护。该公司承诺用户数据仅用于满足即时请求，苹果及第三方均无法访问，并由外部专家提供可验证的隐私保障。

---

## 3. MiMo-v2.5-Pro-UltraSpeed：每秒1000 tokens的1T模型

**原文标题**: MiMo-v2.5-Pro-UltraSpeed: 1T model with 1000 tokens per second

**原文链接**: [https://mimo.xiaomi.com/blog/mimo-tilert-1000tps](https://mimo.xiaomi.com/blog/mimo-tilert-1000tps)

2026年6月8日，小米与TileRT联合发布MiMo-V2.5-Pro-UltraSpeed，这是一个拥有1万亿参数的模型，在标准8GPU商用硬件上实现了每秒超过1000个token的解码速度——相比上一版本速度提升约10倍，而成本仅为3倍。

这一突破源于极致的模型-系统协同设计：仅对MoE专家层应用FP4量化，在消除质量损失的同时降低内存带宽；DFlash推测解码采用块级掩码并行预测，每次验证可接受8个草稿token中的6至7个；TileRT的持久化内核引擎、线程束专业化及微秒级执行则彻底消除了算子边界。

该API于2026年6月9日至23日开放限量试用申请。在此速度下，模型可实现实时并行推理（Best-of-N/树搜索）、加速编码智能体，并支持高频交易与医学影像等时效性关键应用。FP4-DFlash检查点已在HuggingFace开源。

---

## 4. Show HN：Performative-UI —— 一套设计模式风格的React组件库

**原文标题**: Show HN: Performative-UI – a react component library of design tropes

**原文链接**: [https://vorpus.github.io/performativeUI/](https://vorpus.github.io/performativeUI/)

**摘要：**

"Performative-UI" 是一个 React 组件库，有意识地复刻了现代 Web 应用中常见甚至老套的设计模式——尤其是那些与"AI 原生"或初创公司界面相关的模式。它并非创建原创 UI，而是提供了一套预置样式、可复用的组件，这些组件体现了特定的视觉与行为*套路*。

核心要点：

- **聚焦熟悉的设计模式：** 该库包含渐变加载旋转器、毛玻璃模糊卡片、动态光标跟随、发光按钮以及"可爱"加载骨架等组件——这些元素在 AI 工具和 SaaS 落地页中随处可见。
- **戏仿与批判：** 该项目带有一定的讽刺意味，凸显了众多新应用如何依赖相同的美学捷径来标榜"创新"或"智能"。它揭露了现代 UI 设计的同质化现象。
- **实用价值：** 尽管带有讽刺意味，但这些组件功能完备，基于 React 构建，可直接用于实际项目。它们通过简单的 props 提供自定义功能（颜色、动画速度、文本）。
- **开发者工具：** 该库以 npm 包形式发布，支持 TypeScript，并包含安装与使用的文档。旨在通过提供现成的"表演性"元素，为开发者节省时间。
- **目标受众：** 能够欣赏其实用价值以及对当前设计趋势评论的 Web 开发者、设计师和技术爱好者。

本质上，Performative-UI 是一个元库，既是一套实用的工具包，也是对 AI 时代软件视觉语言的一种半开玩笑式的批判。

---

## 5. 为什么细胞很小？

**原文标题**: Why are cells small?

**原文链接**: [https://burrito.bio/essays/what-limits-a-cells-size](https://burrito.bio/essays/what-limits-a-cells-size)

本文解释了细胞为何微小，聚焦于两个关键物理约束。首先，**表面积与体积之比**：随着细胞生长，其体积增长速度快于表面积。细胞膜负责营养吸收与废物排出，若内部体积过大，膜便无法以足够速度交换物质以维持代谢。

其次，**扩散极限**制约细胞大小。细胞内分子依赖随机碰撞发挥作用。当体积增大时，这些碰撞频率降低且速度减慢，尤其在拥挤的细胞质中。一个跨细菌移动仅需毫秒的蛋白质，要移动一厘米则需要数小时。

文章还列举了体现这些规律的例外情况。红细胞通过双凹圆盘形状最大化表面积。卵母细胞因代谢不活跃而得以长到较大尺寸。巨型细菌如*华丽硫珠菌*则利用巨大的空泡将大多数分子推至细胞边缘，缩短扩散距离。归根结底，细胞的尺寸与形态反映了功能与不可改变的物理定律之间的平衡。

---

## 6. TI-84 Plus操作系统完整逆向工程

**原文标题**: Full Reverse Engineering of the TI-84 Plus Operating System

**原文链接**: [https://siraben.github.io/ti84p-re/](https://siraben.github.io/ti84p-re/)

本文详细介绍了运行于Zilog Z80 CPU上的TI-84 Plus操作系统（2.55MP版）的逆向工程。其核心挑战在于CPU一次只能寻址64 KiB，而硬件包含1 MiB闪存和128 KiB RAM。操作系统通过**4槽分页方案**和**系统调用（"bcall"）机制**弥合这一差距，使任意16 KiB闪存页上的代码能够调用其他页面的例程。

该系统是一个基于四大支柱的单任务监控程序：
1.  **分页+bcalls机制**，用于访问64 KiB以外的内存。
2.  **浮点运算引擎**（9字节BCD格式），采用OP1–OP6寄存器。
3.  **变量分配表（VAT）**，用于管理命名对象（实数、列表、程序等）。
4.  **标记化器/解析器**，用于将TI-BASIC存储并执行为令牌。

逆向工程笔记整理为14个主要文档页面，涵盖内存映射、中断、LCD显示屏、键盘等内容，另有12个深度"子"文档面向用户功能，如计算、绘图、应用程序和链接协议。该文档提供了完整的子系统索引，并引用了bcall API接口图，是开发者和研究人员分析TI-84+操作系统内部的综合指南。

---

## 7. 《反社会：主导社交媒体的不是朋友，而是潮流》

**原文标题**: Anti-social: It's fads, not friends, which now dominate social media feeds

**原文链接**: [https://www.bbc.com/worklife/article/20260520-how-social-media-ceased-to-be-social](https://www.bbc.com/worklife/article/20260520-how-social-media-ceased-to-be-social)

**摘要：**

社交媒体已从朋友间的联系平台转变为算法驱动、专业制作内容和潮流主导的娱乐中心。像奥蕾莉亚这样的用户以及凯利安和露西等年轻人表示，他们看到的来自朋友的帖子越来越少，自己也几乎不再发帖，更倾向于观看陌生人的内容。来自法国、英国和美国的官方数据证实，主动发帖量有所下降，许多用户变成了被动消费者。

临床心理学家凡妮莎·拉洛指出，用户对永久性痕迹和浅层互动变得更加谨慎，而真正的社交分享已转移到WhatsApp等即时通讯应用上。社交媒体顾问马特·纳瓦拉描述了一种分化现象：大型平台（如Instagram、TikTok）专注于娱乐和发现，而即时通讯应用则成为了真正的社交空间。

这一演变是由人工智能算法推动的，这些算法会推荐来自不知名创作者的内容，以最大化用户参与度和广告收入。Meta的系统优先推送那些能让用户持续刷下去的内容，使得好友和关注对象的帖子变得不那么重要。小型企业现在必须像主播和内容创作者一样行事，才能保持可见度。

尽管用户平均使用时长略有稳定，但总使用时长和广告收入仍在持续增长。全球社交媒体广告收入预计在2026年达到3170亿美元，Meta将超过谷歌。虽然存在仅查看好友内容的工具，但大多数用户并未使用它们，这表明向被动、以娱乐为中心的消费方式的转变是持久性的。

---

## 8. 欧盟禁用农药在稻米、茶叶和香料中被检出

**原文标题**: EU-banned pesticides found in rice, tea and spices

**原文链接**: [https://www.foodwatch.org/en/eu-banned-pesticides-found-in-rice-tea-and-spices](https://www.foodwatch.org/en/eu-banned-pesticides-found-in-rice-tea-and-spices)

食品观察组织最新报告显示，欧盟禁用的农药正在大米、茶叶和香料等日常食品中被检出。对来自荷兰、法国、奥地利和德国的64种产品进行实验室检测发现，其中45种含有未获批农药残留，14个样本超出法定限量。所有受检辣椒粉、红辣椒和孜然样本均受到污染，其中一个辣椒粉样本含有22种不同农药，包括六种欧盟禁用物质。常检出的物质包括虫螨腈、联苯菊酯以及噻虫胺等新烟碱类杀虫剂。

报告揭示了一种"有毒农药回旋镖"效应：欧盟成员国可合法向第三国出口这些禁用化学品，而它们又以进口食品残留的形式返回欧洲。六种被检出农药已确认在2024至2025年间从欧盟国家出口。

文章警告称，欧盟委员会正在加速推进一项"综合"提案，该提案将削弱农药安全审查、残留限量和进口管控——可能降低消费者保护水平。食品观察组织呼吁公众签署请愿书，要求欧洲议会议员否决这些倒退举措，捍卫食品安全。

---

## 9. xAI看起来更像一个数据中心房地产投资信托基金，而非前沿研究实验室。

**原文标题**: xAI is looking more like a datacentre REIT than a frontier lab

**原文链接**: [https://martinalderson.com/posts/xais-new-rental-business/](https://martinalderson.com/posts/xais-new-rental-business/)

**摘要：**

xAI与Anthropic和谷歌达成重大合作，向其出租大量数据中心算力。Anthropic以高达12.5亿美元/月的价格租用300兆瓦（约22万块GPU）算力，谷歌则以9.2亿美元/月租用11万块GPU。这些交易源于严重的算力短缺；Anthropic曾因高峰期算力不足而被迫限制使用，而xAI的合作缓解了这一困境。

文章认为，xAI正变得更像数据中心房地产投资信托基金（REIT），而非前沿AI实验室。促成这些交易的因素有三：（1）SpaceX上市前的财务操作（xAI于2月并入SpaceX）；（2）真正的算力短缺——许多超大规模数据中心项目延期数年，而xAI仅用122天建成其Colossus 1数据中心；（3）潜在的其他动机——马斯克正与OpenAI进行法律诉讼，而谷歌是SpaceX股东。

费用惊人：18个月的租金即可收回全部资本支出，电力成本（约占收入1%）几乎可忽略不计。Grok开发被边缘化，因算力被租赁给竞争对手，可能源于Grok推理需求未达预期。两笔协议在锁定期后均包含90天取消条款。文章总结道，xAI如今更像是附属于前沿实验室的数据中心REIT，而非相反。

---

## 10. 《雷鸟在我家留下满地狼藉》

**原文标题**: Thunderbird Littering My Home

**原文链接**: [https://thefoggiest.dev/2026/06/04/thunderbird-littering-my-home](https://thefoggiest.dev/2026/06/04/thunderbird-littering-my-home)

**摘要：**

作者最近重新使用了Thunderbird，但遇到了一个程序每次启动时都会创建空`~/thunderbird`目录的漏洞（可能由最近的XDG变更导致）。作者认为这种操作不礼貌且不体贴。

为解决此问题，作者用两个组件构建了一个临时方案：一个Fish shell脚本，利用`inotifywait`监控家目录，并在新创建的`thunderbird`目录出现时立即删除；以及一个用于在后台自动运行该脚本的systemd用户服务。

该脚本（`watch-thunderbird-dir.fish`）监控家目录的创建事件，若出现名为`thunderbird`的目录，则用`rmdir`将其删除。systemd服务（`watch-thunderbird-dir.service`）确保持续运行脚本，失败时自动重启。

文中还提供了设置脚本可执行权限、重新加载systemd以及启用/启动服务的说明。作者指出，此方案仅为临时措施，一旦Thunderbird漏洞修复后应予以移除。

---

## 11. 12万行Rust代码：深入Nosdesk后端

**原文标题**: 120k Lines of Rust: Inside the Nosdesk Backend

**原文链接**: [https://kyle.au/blog/nosdesk-backend-rust](https://kyle.au/blog/nosdesk-backend-rust)

文章详细阐述了Nosdesk后端如何基于**26万行Rust代码**构建，跨越260个模块，最终编译为单一二进制文件。其核心设计习惯有三：利用**类型系统杜绝错误编译**、**将纯逻辑与I/O分离**以提升可测试性、编写**解释"为什么"的注释**。

关键架构亮点包括：

- **管道化数据流**：通过有界通道流式传输启动同步数据，以背压机制避免内存激增。
- **单一追加日志**：单张`sync_actions`表同时支持HTTP增量同步、实时推送（通过PostgreSQL `LISTEN/NOTIFY`实现，采用空载荷保证正确性）及审计追踪。
- **多租户架构**：处理器接收类型化数据库连接（`TenantConn`与`PlatformConn`），在编译期强制实施行级安全策略。
- **韧性模式**：邮件子系统采用断路器、全抖动退避算法，并通过`FOR UPDATE SKIP LOCKED`租约实现至少一次投递。易引发恐慌的库（如CRDT）通过`catch_unwind`隔离。
- **实时更新**：基于环形缓冲区的SSE实现消息重放、心跳保活及自动延迟检测。

在v1版本发布前，作者计划重构单体式`main.rs`、实现优雅关闭逻辑，并消除所有`unsafe`代码。其核心哲学是通过类型系统、管道化架构和防御性设计，实现"让故障不可表达"。

---

## 12. OCaml入门：Dune构建系统简介

**原文标题**: OCaml Onboarding: Introduction to the Dune build system

**原文链接**: [https://ocamlpro.com/blog/2025_07_29_ocaml_onboarding_introduction_to_dune/](https://ocamlpro.com/blog/2025_07_29_ocaml_onboarding_introduction_to_dune/)

## 摘要：Dune构建系统入门

本文为初学OCaml项目的开发者介绍了标准构建系统Dune的使用指南，详细讲解了项目设置、构建、运行和测试的基础知识。

**关键文件：**
- **`dune-project`**：项目入口文件，包含元数据（Dune版本、包信息、依赖项），并启用Cram测试等功能。
- **`dune`文件**：按目录定义构建规范，通过**节（stanzas）**（配置块）指定构建产物。

**主要节：**
- **`library`**：编译可复用模块（例如`helloer_lib`）。
- **`executable`**：构建可运行二进制文件，包含依赖项（`cmdliner`、`helloer_lib`）。
- **`test`**：注册测试可执行文件（使用`alcotest`），归入`runtest`别名。

**基本命令：**
- **`dune build @all`**：构建所有目标（可执行文件、库、测试）。
- **`dune build @doc`**：通过`odoc`生成HTML文档。
- **`dune exec -- ./helloer.exe`**：构建并运行可执行文件。
- **`dune runtest`**：运行所有测试，包括验证命令行输出与预期结果是否一致的Cram测试（`.t`文件）。

本文强调从零开始理解Dune基础，再使用`dune init`等脚手架工具，确保开发者能够自信地修改和扩展构建配置。

---

## 13. 瑞士将举行公投限制人口不超过1000万

**原文标题**: Switzerland wil have a referendum to cap population at 10M

**原文链接**: [https://www.admin.ch/en/sustainability-initiative](https://www.admin.ch/en/sustainability-initiative)

无法访问该文章链接。所提供的网址（https://www.admin.ch/en/sustainability-initiative）并非指向一篇关于瑞士限制人口不超过1000万的全民公投的活跃文章，而是重定向至瑞士联邦政府总主页，该页面不包含所描述的具体内容。

---

## 14. Siri人工智能

**原文标题**: Siri AI

**原文链接**: [https://www.apple.com/apple-intelligence/](https://www.apple.com/apple-intelligence/)

以下是文章的简洁摘要：

**Siri AI 与 Apple Intelligence 概述**

苹果正在推出下一代 **Siri AI** 助手，由 **Apple Intelligence** 驱动，将于今年晚些时候以英语版本上线。新版 Siri 更具对话性，能够理解个人情境（例如查找旧照片或邮件），并可在信息、音乐等应用内执行操作。专门的 Siri 应用支持跨设备延续对话。

主要功能包括：
- **视觉智能：** 通过 iPhone 摄像头、iPad、Mac 和 Apple Vision Pro 搜索并操作内容。
- **智能照片编辑：** 空间重构、扩展和清理等工具。
- **写作工具：** 在任意位置创作、校对和编辑文本，并在信息和邮件中匹配风格。
- **新能力：** 创建 Genmoji、增强健身伙伴功能、更智能的家庭应用通知以及实时翻译。

**隐私** 仍是核心，采用设备端处理和私有云计算——数据永不存储或共享。

**兼容设备** 包括 iPhone 15 Pro 及更新机型（包括即将推出的 iPhone 17 系列）、配备 M 系列芯片的 iPad 和 Mac，以及 Apple Vision Pro。

**开发者接入：** 应用开发者可免费将 Siri、写作工具和图像游乐场集成到其应用中，利用设备端 AI 模型。

---

## 15. Apple WWDC 2026 全球开发者大会直播

**原文标题**: Apple WWDC 2026 Livestream

**原文链接**: [https://www.apple.com/apple-events/event-stream/](https://www.apple.com/apple-events/event-stream/)

**苹果WWDC 2026直播摘要：**

该文章公布了WWDC 2026主题演讲，重点介绍了苹果即将推出的重大更新。主要发布内容包括：**由Apple Intelligence驱动的全新Siri AI**，提供更丰富的答案、自然的对话以及专属应用。Apple Intelligence将扩展到照片、信息和Safari等更多App，带来先进的照片编辑工具和更新的图像游乐场。

**新增的儿童安全功能**旨在帮助家长确保孩子在上网时的安全。此次活动还承诺对设备进行多项性能提升，使其响应更迅速、运行更可靠。

此外，该页面列出了近期苹果活动以供参考，包括2025年9月活动（iPhone 17系列、AirPods Pro 3、Apple Watch）、WWDC 2025（设计更新、Apple Intelligence）以及2024年和2023年的此前发布。

---

## 16. 发布HN：Intuned（YC S22）——将可靠浏览器自动化作为代码构建并运行

**原文标题**: Launch HN: Intuned (YC S22) – Build and run reliable browser automations as code

**原文链接**: [https://intunedhq.com](https://intunedhq.com)

以下是关于Intuned的原文的简洁中文摘要：

**Intuned (YC S22)** 是一个让开发者能够构建、部署和维护可靠浏览器自动化（如抓取器、爬虫和RPA工作流）的平台，而无需手动编写所有代码。其核心产品是**Intuned Agent**，一个能够从自然语言提示生成可用于生产的Playwright代码，并在网站发生变化时自动修复自动化的AI。

主要功能和应用场景包括：

- **抓取器与爬虫**：使用TypeScript或Python从任何网站（电子商务、政府、招聘网站）提取数据。功能包括内置隐身模式、反检测、验证码解决和代理支持。
- **RPA（机器人流程自动化）**：在没有API的网站上自动化表单提交、数据录入和账户操作。包括内置身份验证处理（会话生命周期管理）和并发控制。
- **AI自动化**：支持与Anthropic Computer Use、OpenAI CUA和Stagehand等AI浏览器库集成，允许用户将确定性代码与AI驱动步骤混合使用。
- **Web任务API**：通过简单的文本指令运行浏览器自动化。系统从之前的运行中“学习”，通过`reuseKey`功能每次执行都变得更快速且更经济。
- **托管式抓取**：针对大规模需求，Intuned的解决方案工程师构建并维护数千个抓取器，客户无需受限于特定代码。

该平台提供在线IDE用于开发、内置调度和监控以及自动缩放的基础设施。它专为那些希望获得基于代码的自动化可靠性，同时享受AI驱动生成与维护便捷性的开发者而设计。

---

## 17. AI正在放缓

**原文标题**: AI Is Slowing Down

**原文链接**: [https://www.wheresyoured.at/ai-is-slowing-down/](https://www.wheresyoured.at/ai-is-slowing-down/)

本文认为，生成式AI产业尽管备受炒作，却正面临严峻的财务可持续性危机。核心论点是：人工智能无法放慢发展脚步，因为其基础设施成本高得惊人，需要持续且巨大的收入增长来证明其合理性。

关键要点包括：

1.  **不可持续的基础设施成本：** 规划中的数据中心（高达190吉瓦）建设成本可能达9.5万亿至15万亿美元，每年需要5000亿至1万亿美元的债务。这一建设规模要求生成式AI到**2030年必须创造超过2万亿美元的年收入**才能维持运营。

2.  **依赖两家亏损公司：** OpenAI和Anthropic贡献了91%（注：原文为89%，但为保持一致性，此处按中文习惯调整为“89%”的表述，实际翻译中应严格遵循原文“89%”，故修正为89%）的AI初创公司收入，但两家公司均预测将出现巨额亏损。OpenAI预计到2030年将亏损8520亿美元，而Anthropic必须在2029年前实现1740亿美元的年收入才能支付其算力承诺。两家公司都需要再筹集数千亿美元。

3.  **需求放缓的迹象：** 收入增长乏力。优步、T-Mobile和Brex等公司正限制AI代币支出，因为它们无法衡量投资回报率或控制成本。22%的企业对AI成本毫无了解，50%的企业仅有部分了解。

4.  **对相关行业的连锁影响：** 发展放缓不仅威胁AI公司本身，还波及甲骨文（依赖OpenAI的付款）、数据中心运营商以及发行债务的银行。即便是微软和谷歌这样的超大规模云服务商，也在艰难证明其AI支出的合理性。

文章总结道，AI产业指数级增长的承诺，与采用速度放缓、定价不透明以及不可持续的债务负担这一现实格格不入。

---

## 18. 使用符合XDG标准的配置文件 – WxWidgets

**原文标题**: Using XDG-Compliant Config Files – WxWidgets

**原文链接**: [https://wxwidgets.org/blog/2024/01/using-xdg-compliant-config-files/](https://wxwidgets.org/blog/2024/01/using-xdg-compliant-config-files/)

**摘要：**

本文阐述了 wxWidgets 如何支持 XDG 基础目录规范来管理配置文件，不再沿用传统在用户主目录中使用隐藏“点文件”的做法（例如 `~/.myapp`）。

要点如下：

1.  **向后兼容的默认变更（自 wxWidgets 3.3.0 起）：** 现在 `wxFileConfig` 默认在 `~/.config` 下创建新配置文件，**仅当主目录中不存在现有点文件时**。这既避免了破坏现有安装，又确保新安装使用正确位置。

2.  **现有用户的便捷迁移：** 新增的 `wxFileConfig::MigrateLocalFile()` 函数允许开发者通过一次调用，配合 `wxCONFIG_USE_XDG` 标志，将现有配置文件从主目录迁移至符合 XDG 规范的位置（例如 `~/.config/myapp/myapp.conf`）。

3.  **错误处理：** 该函数返回一个包含新旧路径及错误信息的结果对象，使开发者能够记录成功迁移，或在迁移失败时向用户发出警告。

4.  **选择退出选项：** 希望保留旧行为的开发者在创建 `wxFileConfig` 时，可以使用新的 `wxCONFIG_USE_HOME` 标志强制使用主目录位置。

文章总结指出，这些改动使得新应用能轻松遵循 XDG 规范，老应用也能简单实现迁移，有助于在 2024 年消除主目录的污染。

---

## 19. 马萨诸塞州新隐私权法案禁止出售精确位置数据

**原文标题**: Massachusetts bans sale of precise location data in new privacy rights bill

**原文链接**: [https://techcrunch.com/2026/06/08/massachusetts-votes-to-pass-new-privacy-rights-bill-that-bans-sale-of-precise-location-data/](https://techcrunch.com/2026/06/08/massachusetts-votes-to-pass-new-privacy-rights-bill-that-bans-sale-of-precise-location-data/)

马萨诸塞州立法者通过了《消费者数据隐私法案》，赋予居民访问和删除大型科技公司所持个人数据的新权利，并禁止出售精确位置数据。该法案在众议院（146票赞成、0票反对）和参议院（40票赞成、0票反对）均获得全票通过，预计将由州长签署成为法律。法案适用于处理超过10万消费者个人数据的公司，同时对初创企业和大型科技公司产生影响。法律禁止在未获用户明确同意的情况下共享或出售敏感信息，包括生物特征、健康数据、精确地理位置、宗教信仰、移民身份及性取向。位置数据禁令涵盖居民和访客，实质上在全州范围内实施限制。此举旨在解决长期以来的隐私担忧——数据经纪商常在无授权情况下向跟踪者、政府和军方出售位置数据。马萨诸塞州由此加入美国其他州的行列，填补联邦隐私法缺失造成的空白。隐私保护组织称赞该立法是遏制大型科技公司监控行为的一步，美国公民自由联盟称其为个人隐私领域的里程碑。

---

## 20. 密码朋克文库

**原文标题**: The Cypherpunk Library

**原文链接**: [https://www.cypherpunkbooks.com](https://www.cypherpunkbooks.com)

本内容介绍了**赛博朋克图书馆**，这是一个聚焦于密码学、隐私、数字权利及网络自由主义思想的公有领域文本数字收藏库。该图书馆明确非商业化："无物可售，无需下架。"

**核心要点：**
- **宗旨：** 为赛博朋克与加密无政府主义运动提供基础文献的个人档案库。
- **范围：** 完全收录公有领域材料。其他资源则引导用户至第三方档案库，如安娜档案、LibGen及种子下载。
- **列出的重要著作（文中重复三次）：** 包含开创性文章，如埃里克·休斯的《赛博朋克宣言》、蒂莫西·C·梅的《加密无政府主义者宣言》、约翰·佩里·巴洛的《网络空间独立宣言》以及门托的《黑客的良知》。同时收录关于数字现金（eCash、PGP）、隐私理论（《隐私经济学》）及网络治理（《告别威斯特伐利亚》）的作品。
- **格式：** 单网页陈列标题，不含摘要或链接，侧重可访问性而非整理编排。

该收藏为现代加密货币、加密倡导及去中心化数字权利的思想渊源提供了历史参照。

---

## 21. 赛默飞世尔的抗体数据有多少被篡改？

**原文标题**: How much of Thermo Fisher's antibody data has been manipulated?

**原文链接**: [https://reeserichardson.blog/2026/05/28/how-much-of-thermo-fishers-antibody-data-has-been-manipulated/](https://reeserichardson.blog/2026/05/28/how-much-of-thermo-fishers-antibody-data-has-been-manipulated/)

研究人员里斯·理查森和肖尔托·戴维发现，截至2026年6月3日，赛默飞世尔科技的在线抗体目录中存在超过450张经过篡改的图像。调查始于一张抗p53抗体的蛋白质印迹图，在翻转和旋转后显示出完全相同的条带。进一步搜索揭示了广泛问题，包括重复条带、涂改区域（笔触痕迹）、重复背景噪点模式，以及数十种抗体条目共用相同背景。

验证数据本应证明抗体的有效性，但抗体恰恰以不可靠著称——超过50%的抗体至少在一项应用中失效。可靠的验证至关重要，因为有缺陷的抗体不仅浪费时间和金钱（每瓶400至500美元），还会导致生物医学研究中普遍存在的不可重复性问题。

赛默飞世尔科技于2026年6月8日回应，否认存在篡改行为，并声称图像可能“为使呈现更清晰而进行了优化”。他们承诺今后将对此类调整进行标注。作者驳斥了这一辩解，指出许多改动远远超出了视觉优化的范畴。

该数据库仍保持开放，可通过谷歌表单继续提交新发现。关键启示在于：科学家应始终独立验证自己的抗体。

---

## 22. 你现在是否应该运行五个Python类型检查器？

**原文标题**: Are you expected to run five Python type-checkers now?

**原文链接**: [https://pyrefly.org/blog/too-many-type-checkers/](https://pyrefly.org/blog/too-many-type-checkers/)

**总结：**

本文认为，Python库维护者应优先对**测试套件**运行多种类型检查器（mypy、Pyrefly、Pyright、ty、Zuban），而非仅针对源代码。因为用户关心的是当他们进行类型检查时，库的公共API如何表现，而非内部实现细节。

对源代码运行全部五种检查器会导致代码充斥大量类型忽略注释（以Polars的`DataType.__eq__`函数为例，七行代码需要四种不同的注释）。相比之下，通过测试套件检验公共API可确保库对所有用户都表现良好，无论他们使用哪种检查器——而且往往能揭示不同检查器在API行为上意见一致，即便它们在实现细节上存在分歧。

本文以Polars作为案例研究：将Pyrefly添加到测试套件中相对轻松且未发现错误，而将其应用于全部源代码则是一项更庞大的增量工作。文章还解释了存在多种检查器的原因——针对规范不完善的类型系统存在不同的严格度——并推荐Pyrefly作为快速、严格且符合规范的源代码检查选项。

**核心要点：**库维护者应尽可能多地对测试（以验证公共API）运行类型检查器，而非试图在内部代码中满足每个检查器的特殊要求。

---

## 23. 我正在建造一个并行的互联网，它叫做“极简网”。

**原文标题**: I'm building a parallel internet, and it's called The Thinnernet

**原文链接**: [https://inavoyage.blogspot.com/2026/06/im-building-parallel-internet-and-its.html](https://inavoyage.blogspot.com/2026/06/im-building-parallel-internet-and-its.html)

**《“极简网络”纲要》（2026年6月8日）**

作者提出名为“极简网络”的“平行互联网”，认为网速是用户体验的关键部分。受虚构的专注于基础设施的史蒂夫·乔布斯启发，作者主张建立标准化的低带宽备用层级。核心理念：通过创建最小化流量模式，确保在所有连接速度下都能获得可预测、可靠的体验。具体做法是将必要数据（如小于100KB的网页）列入白名单，使其无论用户拥有1Mbps还是1Gbps带宽都能稳定加载。作者认为现代软件为推动升级而刻意臃肿，而旧系统依然高效安全。称职的工程师可设计多重速度模式，让最重要的数据优先传送——最低层级用户能收到静态HTML版邮件，而高价值客户同时获得华丽的JavaScript封装版。作者将此视为计算机用户体验领域必要的“工艺美术社会改革时代”，批评当前重带宽、逐利驱动的模式，倡导构建适应性强、轻能耗、以用户体验而非花哨升级为优先的互联网。

---

## 24. 监控不等于安全：关于英国最新隐私威胁的声明[pdf]

**原文标题**: Surveillance Is Not Safety: A statement on the UK's latest threat to privacy [pdf]

**原文链接**: [https://signal.org/blog/pdfs/2026-06-08-uk-surveillance-is-not-safety.pdf](https://signal.org/blog/pdfs/2026-06-08-uk-surveillance-is-not-safety.pdf)

根据标题及PDF可读部分，本文是一份反对英国政府新监控措施的声明。核心论点是：大规模监控并不等同于真正的公共安全。文件指出，此类措施在威胁基本隐私权的同时，未能有效预防犯罪或恐怖主义。文章批评政府扩大对公民的监控权力，警告这些行为会侵蚀信任、对弱势群体造成过度影响，并为国家越权行为树立危险先例。声明呼吁摒弃基于监控的政策，转而采取尊重公民自由和数据保护的方案。

---

## 25. 生命太短暂，容不下一个慢速的终端

**原文标题**: Life is too short for a slow terminal

**原文链接**: [https://mijndertstuij.nl/posts/life-is-too-short-for-a-slow-terminal/](https://mijndertstuij.nl/posts/life-is-too-short-for-a-slow-terminal/)

**摘要：“人生苦短，别用慢终端”**

本文主张最大限度地减少终端启动延迟和输入延迟，作者每天都会经历数百次这样的延迟。关键策略如下：

1. **避免使用框架**，如 oh-my-zsh 或插件管理器。作者为追求速度，仅手动加载三个插件（fzf-tab、zsh-autosuggestions、zsh-syntax-highlighting）。

2. **缓存补全**：大部分时间使用 `compinit -C`，仅每天执行一次补全文件的完整安全检查。

3. **惰性加载重型工具**（如 nvm、kubectl 补全）：使用桩函数，这些函数在首次使用时自行替换，从而避免每个 shell 会话的运行时开销。

4. **使用异步提示符**（Pure）：立即渲染并在就绪时填充 git 信息，防止每次按回车键时出现延迟。

5. **选择快速的终端模拟器**（Ghostty，具备 GPU 加速且极简），并使用 tmux 即时恢复会话。

作者提供了测量工具：`time zsh -i -c exit` 用于启动时间（目标 <100ms），`zprof` 用于性能分析，以及在大型 git 仓库中检查提示符延迟。核心理念是极简主义——只添加你实际使用的内容，让终端感觉像是大脑的延伸。所有点文件均可在作者的仓库中获取。

---

## 26. 意大利Bending Spoons公司（旗下拥有美国在线和Vimeo）申请纳斯达克IPO

**原文标题**: Italy's Bending Spoons, owner of AOL and Vimeo, files for Nasdaq IPO

**原文链接**: [https://www.reuters.com/legal/transactional/italys-bending-spoons-files-us-ipo-2026-06-08/](https://www.reuters.com/legal/transactional/italys-bending-spoons-files-us-ipo-2026-06-08/)

**概要：**

意大利应用开发商与数字媒体公司Bending Spoons已向纳斯达克提交首次公开募股（IPO）申请，计划募资最高1亿美元。这家总部位于米兰的企业旗下拥有AOL、Vimeo及照片编辑应用Remini等标志性品牌。

IPO文件显示，Bending Spoons通过收购实现显著增长，于2024年收购AOL与雅虎数字资产，2025年收购Vimeo。该公司专注于收购成熟数字平台，并借助内部技术、人工智能及营销专长提升其运营表现。

财务方面，Bending Spoons报告了稳健的收入增长，但按净利润计算尚未实现盈利。公司计划将IPO募资用于一般企业用途，包括潜在未来收购及营运资金。

此次上市恰逢IPO市场显现复苏迹象，但波动性依然存在。Bending Spoons此举凸显了欧洲科技公司寻求赴美上市以获取更大资本渠道和投资者关注度的趋势。

本次发行的主承销商包括多家知名投资银行。该公司股票将在纳斯达克以代码BNDS交易。

---

## 27. Zig 示例教程

**原文标题**: Zig by Example

**原文链接**: [https://github.com/boringcollege/zig-by-example](https://github.com/boringcollege/zig-by-example)

本文介绍了**《Zig 实例教程》**，这是一本由 Dariush Abbasi 为 Boring College 编写的 Zig 编程语言实践指南。该书针对 Zig 0.16.0 版本，结构上分为带注释的章节（位于 `content/` 目录下）和对应的可运行源文件（位于 `examples/` 目录下）。

**关键要点：**

- **Zig 的设计哲学：** 一种通用、编译型系统语言，强调健壮性、最优性和简洁性。它没有隐藏的控制流、隐藏的内存分配以及预处理器。
- **内容结构：** 每个章节（例如：Hello World、变量、结构体、泛型、文件 I/O）均以 Markdown 文件进行说明，并配有对应的 `.zig` 示例文件。
- **0.16 版本新特性：** 包含关于 IO 接口、写入器与读取器、线程与并发、网络与 HTTP 的更新章节。
- **运行示例：** 大部分示例可使用 `zig run examples/example-name.zig` 运行。部分示例需要额外参数（例如：测试使用 `zig test`，C 互操作使用 `zig run ... -lc`）。
- **更多资源：** 提供了官方 Zig 文档、标准库源码、发布说明以及 Ziglings 练习题的链接。
- **灵感来源：** 本项目受《Go 实例教程》启发。欢迎贡献。

---

## 28. Apple Core AI 框架

**原文标题**: Apple Core AI Framework

**原文链接**: [https://developer.apple.com/documentation/coreai/](https://developer.apple.com/documentation/coreai/)

文章介绍了 **Core AI**，这是苹果在 iOS 18、iPadOS 18 和 macOS Sequoia 中引入的一个框架。其主要目的是为开发者提供基于设备端、保护隐私的人工智能工具，这些工具由苹果的基础模型驱动。

**要点：**

- **设备端处理：**所有 AI 推理均在用户设备本地进行，确保数据隐私和安全，无需将用户数据发送至云端。
- **基础模型：**Core AI 利用苹果自研的大型语言模型和扩散模型，并针对苹果芯片（A17 Pro 和 M 系列芯片）进行了性能优化。
- **核心能力：**
    - **文本生成：**支持摘要、改写和智能回复等任务。
    - **图像生成：**根据提示创建和编辑图像（例如，Image Playground）。
    - **语义搜索：**理解文本含义，跨应用查找相关内容。
    - **上下文感知：**模型分析屏幕内容和用户意图，提供主动帮助（例如，优先级通知）。
- **开发者集成：**该框架通过 Swift 和 AppKit/UIKit 中的 API 进行访问，开发者可以使用**提示模板**或创建自定义工作流。
- **支持平台：**搭载神经引擎的 iOS 18+、iPadOS 18+、macOS Sequoia+ 设备。
- **隐私至上：**所有处理严格在设备端完成，这使苹果的方法区别于依赖云端的竞争对手（如 ChatGPT 或 Gemini）。

总之，Core AI 使开发者能够将强大的生成式 AI 功能直接集成到应用中，同时坚守苹果用户隐私的核心原则，且无需服务器端依赖。

---

## 29. Zig结构体数组（2024）

**原文标题**: Zig Structs of Arrays (2024)

**原文链接**: [https://andreashohmann.com/zig-struct-of-arrays/](https://andreashohmann.com/zig-struct-of-arrays/)

Andreas Hohmann撰写的本文探讨了Zig的编译期（comptime）能力如何实现“结构体数组”（SoA）数据结构，具体通过标准库中的`MultiArrayList`实现。该方法与传统的“数组结构体”（AoS）布局形成对比，通过按字段类型对数据分组来节省内存并提升性能——这是数据导向设计中的常见技术。

其关键创新在于Zig能够将类型视为编译期值。作者首先演示了一个精简的`FixedArrayList`泛型类型，随后利用Zig的反射API（`@Type`、`std.builtin.Type.StructField`）构建了动态的`PointN`类型。该API允许在编译期检查和构造结构体类型。

对于`MultiArrayList`，其流程更为进阶：它接收一个结构体类型，使用`@typeInfo`提取字段元数据，按对齐方式对字段排序，并生成内部的SoA类型。数据存储于单个字节数组中，每个字段的子数组按对齐降序排列。由此产生的内存节省效果显著——例如，包含100个`Token`结构体的列表从2400字节降至1700字节。

尽管Zig的编译期类型构造功能强大，但文章也指出了当前限制，例如无法动态生成方法。然而，文章强调编译期函数方法无需单独的宏语言（如Rust的过程宏），只需掌握Zig的反射API即可。总体而言，本文凸显了Zig如何将底层控制与高级编译期元编程相结合。

---

## 30. 针对我《大语言模型正在侵蚀我的职业生涯》一文的评论回复

**原文标题**: Replies to comments on my "LLMs are eroding my career" post

**原文链接**: [https://human-in-the-loop.bearblog.dev/replies-to-comments-on-my-llms-are-eroding-my-career-post/](https://human-in-the-loop.bearblog.dev/replies-to-comments-on-my-llms-are-eroding-my-career-post/)

**总结：**

作者针对其先前文章《LLM正在侵蚀我的职业生涯》引发的热议评论做出回应，主张当前AI的进展与OOP或互联网等过去的技术变革存在本质区别。尽管作为“AI原生工程师”——精通代理工具链、对抗性审查及提示工程——当下他们如鱼得水，但担忧软件工程会像文案写作一样走向商品化。关键点在于：曾被视作职业资产的领域知识，如今通过先进LLM可轻松即时提示获取，导致对资深同事的需求降低。法律和会计领域虽仍需人工监督，但随着模型迭代这种护城河正在缩窄。作者批评“氛围编程”文化，并描述在AI驱动的赶工期环境下维持质量的对策（如将敏感实现拆分更多任务单、增加端到端测试）。他们否认“AI拥趸”的标签，强调与过往技术不同，LLM能自主连续数小时生成有用文本——堪称“科幻级”能力。作者警告软件需求存在上限（与杰文斯悖论相反），且当Turing AI等实验室使用人类工程师进行强化学习时，编程领域的“人类护城河”将瓦解。他们预见未来仅约1%顶尖工程师能维持就业，其余人将争夺残羹——正如文案和UX编辑领域已发生的景象。作者敦促读者切勿用历史类比来轻视这一转变。

---

