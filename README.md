# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-06-08.md)

*最后自动更新时间: 2026-06-08 20:33:29*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 2 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 3 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 4 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 5 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 6 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 7 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 8 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 9 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 10 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 11 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 12 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 13 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 14 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 15 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 16 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 17 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 18 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 19 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 20 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 21 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 22 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 23 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 24 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 25 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 26 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 27 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 28 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 29 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 30 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 31 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 32 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 33 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 34 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 35 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 36 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 37 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 38 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 39 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 40 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 41 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 42 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 43 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 44 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 45 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 46 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 47 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 48 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 49 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 50 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 51 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 52 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 53 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 54 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 55 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 56 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 57 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 58 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 59 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 60 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 61 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 62 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 63 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 64 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 65 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 66 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 67 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 68 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 69 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 70 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 71 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 72 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 73 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 74 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 75 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 76 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 77 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 78 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 79 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 80 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 81 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 82 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 83 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 84 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 85 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 86 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 87 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 88 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 89 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 90 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 91 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 92 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 93 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 94 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 95 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 96 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 97 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 98 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 99 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 100 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 101 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 102 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 103 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 104 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 105 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 106 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 107 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 108 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 109 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 110 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 111 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 112 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 113 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 114 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 115 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 116 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 117 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 118 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 119 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 120 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 121 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 122 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 123 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 124 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 125 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 126 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 127 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 128 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 129 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 130 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 131 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 132 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 133 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 134 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 135 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 136 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 137 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 138 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 139 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 140 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 141 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 142 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 143 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 144 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 145 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 146 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 147 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 148 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 149 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 150 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 151 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 152 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 153 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 154 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 155 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 156 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 157 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 158 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 159 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 160 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 161 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 162 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 163 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 164 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 165 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 166 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 167 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 168 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 169 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 170 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 171 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 172 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 173 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 174 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 175 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 176 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 177 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 178 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 179 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 180 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 181 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 182 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 183 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 184 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 185 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 186 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 187 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 188 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 189 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 190 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 191 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 192 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 193 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 194 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 195 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 196 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 197 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 198 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 199 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 200 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 201 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 202 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 203 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 204 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 205 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 206 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 207 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 208 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 209 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 210 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 211 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 212 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 213 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 214 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 215 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 216 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 217 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 218 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 219 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 220 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 221 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 222 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 223 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 224 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 225 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 226 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 227 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 228 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 229 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 230 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 231 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 232 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 233 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 234 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 235 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 236 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 237 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 238 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 239 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 240 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 241 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 242 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 243 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 244 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 245 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 246 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 247 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 248 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 249 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 250 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 251 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 252 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 253 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 254 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 255 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 256 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 257 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 258 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 259 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 260 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 261 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 262 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 263 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 264 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 265 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 266 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 267 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 268 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 269 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 270 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 271 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 272 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 273 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 274 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 275 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 276 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 277 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 278 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 279 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 280 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 281 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 282 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 283 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 284 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 285 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 286 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 287 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 288 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 289 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 290 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 291 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 292 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 293 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 294 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 295 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 296 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 297 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 298 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 299 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 300 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 301 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 302 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 303 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 304 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 305 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 306 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 307 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 308 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 309 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 310 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 311 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 312 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 313 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 314 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 315 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 316 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 317 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 318 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 319 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 320 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 321 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 322 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 323 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 324 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 325 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 326 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 327 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 328 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 329 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 330 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 331 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 332 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 333 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 334 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 335 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 336 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 337 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 338 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 339 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 340 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 341 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 342 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 343 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 344 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 345 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 346 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 347 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 348 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 349 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 350 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 351 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 352 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 353 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 354 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 355 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 356 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 357 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 358 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 359 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 360 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 361 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 362 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 363 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 364 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 365 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 366 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 367 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 368 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 369 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 370 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 371 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 372 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 373 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 374 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 375 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 376 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 377 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 378 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 379 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 380 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 381 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 382 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 383 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 384 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 385 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 386 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 387 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 388 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 389 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 390 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 391 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 392 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 393 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 394 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 395 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 396 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 397 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 398 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 399 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 400 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 401 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 402 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 403 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 404 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 405 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 406 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 407 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 408 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 409 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 410 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 411 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 412 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 413 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 414 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 415 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 416 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 417 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 418 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 419 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 420 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 421 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 422 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 423 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 424 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 425 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 426 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 427 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 428 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 429 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 430 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 431 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 432 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 433 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 434 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 435 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 436 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 437 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 438 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 439 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 440 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 441 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 442 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 443 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
