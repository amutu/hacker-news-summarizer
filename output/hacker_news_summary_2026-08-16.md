# Hacker News 热门文章摘要 (2026-08-16)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 第三世界嵌入式工程师回应“RISC-V，他们本应更懂行”

**原文标题**: A 3rd World Embedded Engineer Responds to "RISC-V They Should Have Known Better"

**原文链接**: [https://rvembedded.com/blog_post/12/](https://rvembedded.com/blog_post/12/)

无法访问文章链接。

---

## 2. 模型正故意变得更笨

**原文标题**: Models Are Getting Dumber on Purpose

**原文链接**: [https://w4g1.dev/blog/models-are-getting-dumber-on-purpose](https://w4g1.dev/blog/models-are-getting-dumber-on-purpose)

本文认为，AI实验室正在故意让模型在事实性知识上变得“更笨”，以专注于推理能力，而这种取舍是预期设计使然。

**关键要点：**

- **推理能力提升，参数数量缩减。** GLM-5.2、Qwen3.5、DeepSeek V4-Flash等模型在数学/代码基准测试中得分很高，但活跃参数远少于GPT-4时代的模型。小模型在每参数推理能力上尤其突出。

- **事实性回忆能力崩塌。** 在SimpleQA基准上，Gemini 2.5 Pro以仅53%的准确率领先。小型Qwen模型在知识基准测试中80%至82%的时间都在产生幻觉，对事实性问题编造出自信的答案。

- **事实昂贵，推理可压缩。** 知识存储大约需要每个参数两比特，而推理只是一小组可复用的程序。蒸馏和基于可验证任务的强化学习等训练方法能高效地将推理技能迁移到小模型中。结果是涌现出广而浅的“通才”：什么都知道一点，但什么都不深。

- **事实会腐烂，程序不会。** 知识密集型的模型很快就会过时，而推理能力始终保持有效。如果事实存在于权重之外，模型就不会快速老化，其知识截止日期的影响也会变小。

- **外部框架提供知识。** 检索、网页搜索、工具和本地文件在运行时提供事实。编码智能体已经是这样运作的——它们阅读文档或使用grep搜索代码，而不是依赖记忆。

- **本地前沿模型是可行的。** 如果剥离知识，模型总大小可能收缩至接近活跃大小，从而在单张消费级GPU上实现高质量推理（200亿至400亿参数，4位量化）。代价是：它不会知道太多，必须说“我不知道”，然后去查阅。

- **幻觉问题变得可解决。** 权重中的错误事实无法被找到；而外部来源中的错误事实可以追踪、编辑，并在未来所有查询中得以纠正。模型卡最终可能完全不再列出知识截止日期。

---

## 3. Claude：系统提示词

**原文标题**: Claude: System Prompts

**原文链接**: [https://platform.claude.com/docs/en/release-notes/system-prompts](https://platform.claude.com/docs/en/release-notes/system-prompts)

所提供的文章内容不完整——仅包含重复的“加载中”一词，并无任何实际文章文本。因此，没有要点或关键信息可供总结。请提供完整的文章内容，我将很乐意为您撰写一份简洁的摘要。

---

## 4. Protobuf 有 LSP 支持。不客气。

**原文标题**: Protobuf has LSP support. You're welcome

**原文链接**: [https://buf.build/blog/protobuf-lsp](https://buf.build/blog/protobuf-lsp)

Buf 宣布推出首个面向 Protobuf 的生产级语言服务器协议（LSP）服务器，首次为 `.proto` 文件带来现代 IDE 功能，如转到定义、代码补全、引用和语义高亮。

该 LSP 服务器随 Buf CLI 一同提供。VSCode 用户可以安装官方 Buf 扩展，该扩展会自动使用 CLI。Neovim 用户可以配置 `lspconfig.buf_ls.setup {}` 或手动添加 `buf lsp serve` 命令。其他编辑器可以运行同一命令来启用 LSP 支持。

该服务器基于 Buf 的编译器前端 protocompile 构建，比 `protoc` 更快、更灵活。为了 LSP，Buf 开发了一个新的查询驱动前端，支持增量编译和改进的诊断，例如正确识别重复的修饰符。新的 AST 和中间表示能够实现精确的错误报告、更高的内存效率，并且更容易支持即将推出的 Protobuf 功能，如 Editions 2024。

Buf 还概述了即将推出的 LSP 功能：自动导入修复、更紧密的 `buf.yaml` 集成、自定义选项的补全和引用查找、自动字段/枚举编号建议，以及带有 CEL 语法高亮的专门 Protovalidate 支持。

该公告将 LSP 定位为 Buf 更广泛生态系统的一部分——Protobuf-ES、Protovalidate、ConnectRPC 和 Buf Schema Registry——旨在使 Protobuf 成为架构驱动开发的最简单选择。

---

## 5. AI积分转售经济

**原文标题**: The AI Credit Resale Economy

**原文链接**: [https://vectoral.com/blog/who-are-the-token-brokers](https://vectoral.com/blog/who-are-the-token-brokers)

文章探讨了新兴的“代币经纪人”经济，中间商从初创公司购买未使用的AI额度，并以大幅折扣转售。

作者马特·伦哈德在创业者们反馈收到大量主动提出的Anthropic代币折扣报价后，发现了这一趋势。随后对经纪人的跟进调查揭示了可观的供应量：一位卖家声称拥有每日10万美元的消费额度，通过代理方式运作——转发来自密钥池的请求，而非移交供应商凭据。

这一市场通过多种渠道运作。专门的信用额度市场平台如AI Credits和AICreditMart以三至八折的价格列出各大云服务及推理提供商的额度，并有正式的卖家入驻流程。另一类“批量折扣路由器”如CheapCredits、Tokvana和Neokens，声称其折扣来自批量采购能力——不过作者认为，除非以超大规模企业级别采购，否则固定四折的优惠难以令人信服，怀疑其供应获取方式另有门路。值得注意的是，CheapCredits提供了符合GDPR要求的数据处理协议。

地下渠道同样活跃：Telegram群组、Reddit上r/saasforsale和r/indiehackers版块的帖子，以及封闭的初创社区中都在进行额度互换活动。

伦哈德估计，目前这些渠道中流通的额度总价值达数千万美元。他警告称，代币已成为一种具有足够流动性的准货币，可能被大规模滥用。随着市场逐渐成熟，企业日益重视成本管控，对此类交易的打击很可能即将到来。这篇文章是他此前关于支撑代币转售商和欺诈行为的转售市场调查的后续报道，信息来源包括截图、直接联系访谈以及公开网站列表。

---

## 6. MathCode，数学编程代理

**原文标题**: MathCode, Mathematical Coding Agent

**原文链接**: [https://math-ai-org.github.io/mathcode/](https://math-ai-org.github.io/mathcode/)

MathCode是一个基于终端的AI编程助手，专为数学形式化而设计。它接收以自然语言表述的数学问题，自动将其转换为Lean 4定理，然后尝试形式化证明。它包含一个持久化Lean REPL，用于快速编译检查（预热后约0.4秒）、一个可复用的已证明语句定理库，以及一个公理库，用于将对话假设存储为编译检查通过的Lean声明。

该助手通过搜索leansearch.net和Loogle集成Lean生态系统，查找Mathlib引理，并使用LSP诊断进行修复。它还生成一个Obsidian仓库，将定理依赖关系可视化为知识图谱。在代理模式中，证明变为交互式会话，模型在其中迭代地编写候选、读取错误并重新编译。子目标树功能将复杂定理分解为独立的子目标，并行证明后再拼接在一起。多规划器并发运行多种规划策略，以选择最佳的证明方法。

快速开始需要macOS（arm64）或Linux（x86_64）、用于默认后端的Codex CLI，并运行`bash setup.sh`，然后运行`codex auth login`和`mathcode`。输出写入`LeanFormalizations/`目录，浏览器UI可通过`./run webui`使用。该项目基于AUTOLEAN流水线，可通过提供的BibTeX条目引用。

---

## 7. NIH终止一项针对初出茅庐临床研究者的重要资助

**原文标题**: NIH is ending a key grant for budding clinical researchers

**原文链接**: [https://www.science.org/content/article/nih-ending-key-grant-budding-clinical-researchers](https://www.science.org/content/article/nih-ending-key-grant-budding-clinical-researchers)

据Science.org报道，美国国立卫生研究院（NIH）下属的国家促进转化科学中心（NCATS）正在逐步取消KL2职业发展资助金，这是临床与转化科学奖（CTSA）项目的关键组成部分。KL2资助为全美学术医疗中心的早期临床与转化研究人员提供薪资支持、研究经费和导师指导。

根据这一变化，现有的KL2资助将允许继续直至到期，但NCATS将不再接受新的申请。该机构表示，这一转变是CTSA项目更广泛重组的一部分，旨在使资金更加灵活和可持续，并优先支持转化科学计划。

这一决定引起了研究人员和CTSA负责人的担忧。他们担心取消KL2资助将削弱 budding 临床研究者的培养管道，减少受保护的研究时间和导师指导机会，并加剧早期医师科学家面临的现有挑战。然而，NCATS坚称，其正在努力以仍将支持多元化的下一代临床研究者的方式重新分配资源。

---

## 8. 圣露西核反应堆1号机组手动关闭，3根控制棒落入堆芯

**原文标题**: St Lucie Nuclear Reactor Unit 1 manually shutdown, 3 control rods drop into core

**原文链接**: [https://www.wptv.com/news/treasure-coast/region-st-lucie-county/saint-lucie-nuclear-power-plant-unit-1-manually-shut-down-after-3-control-rods-drop-into-reactor-core](https://www.wptv.com/news/treasure-coast/region-st-lucie-county/saint-lucie-nuclear-power-plant-unit-1-manually-shut-down-after-3-control-rods-drop-into-reactor-core)

圣卢西核电站1号机组于周三上午发生手动停机，原因是有三根控制棒落入反应堆堆芯。反应堆于美国东部时间2026年8月13日上午9时47分在100%功率运行状态下被手动紧急停堆。美国核管理委员会（NRC）将该事件定性为非紧急事件。据许可证持有方称，此次停堆过程简单顺利，所有系统响应正常。运营人员已将机组稳定在模式3（热备用）状态，衰变热通过汽轮机旁路阀和主给水系统向主冷凝器排放蒸汽的方式加以去除。2号机组未受影响。截至报告发布时，1号机组仍处于停运状态。

---

## 9. 安东·契诃夫一生大部分时间都在把爱情当作游戏。

**原文标题**: Anton Chekhov played at love most of his life

**原文链接**: [https://commonreader.wustl.edu/winning-and-losing-at-the-great-game-of-intimacy/](https://commonreader.wustl.edu/winning-and-losing-at-the-great-game-of-intimacy/)

安东·契诃夫长期以来被苏联和西方评论家描绘成一个圣洁、禁欲的形象，只专注于医学和文学。但较新的学术研究，尤其是唐纳德·雷菲尔德1997年出版的传记，挑战了这一形象，揭示了一个“血气方刚、唐璜式”的男人，他情事众多，关系复杂。

文章考察了契诃夫与女演员奥尔加·克尼佩尔的婚姻。这段婚姻在他去世前三年才开始，大部分时间依靠相隔千里的书信维系。他们的通信显示出深情与依赖，但也流露出情感上的疏离、父女式的互动模式，以及频繁的误解。读者对他们晚年真爱的期许仍然暧昧不明。

核心争议涉及1902年的一次流产。奥尔加称自己当时流产，需要手术并休养。雷菲尔德则声称那是宫外孕，必须终止妊娠，并推算契诃夫不可能是孩子的父亲，因为在受孕时间点上他远在数百英里之外。雷菲尔德认为契诃夫在奥尔加休养期间前往乌拉尔山是心怀不满的证据；学者休·麦克莱恩则为奥尔加的说法辩护，并抨击了雷菲尔德的诊断。

文章还提到了契诃夫的去世：他于1904年在德国辞世，临终前著名地喝了香槟，并说：“我已经很久没喝香槟了。”奥尔加比他多活了55年。归根结底，这篇文章质疑的是，将契诃夫完整的人性——尤其是他性与情感方面的复杂性——加以扁平化，是否会扭曲对他生平与艺术的理解。

---

## 10. Clamiga：Amiga平台上的Common Lisp

**原文标题**: Clamiga: Common Lisp for the Amiga

**原文链接**: [https://nnamgreb.de/blog/Clamiga+-+Common+Lisp+for+the+Amiga](https://nnamgreb.de/blog/Clamiga+-+Common+Lisp+for+the+Amiga)

Clamiga 是一个 Common Lisp 实现，专为 68k 上的经典 AmigaOS 3 构建，MorphOS 则作为原生 PowerPC 构建，另外还支持 macOS 和 Linux 用于开发。其名称取自“CL-Amiga”与“amiga”（意为“朋友”）的双关。

它使用可移植的 C 核心，配以基于栈的字节码虚拟机、带标签的 32 位值和压缩式垃圾回收器。这使其内存占用很小：完整的 Common Lisp 核心启动仅需约 0.5 MB，简单程序可在 1 MB 堆上运行。紧凑字节向量和批量序列 I/O 有助于在资源受限的 68k 机器上运行。与架构无关的 FASL 文件在 m68k 和 PPC 之间字节兼容。

在 AmigaOS 68020+ 上，Clamiga 包含一个 m68k JIT，在定义时将字节码翻译为原生代码，大幅加速计算密集型代码，同时对不支持的指令回退到解释器。MorphOS 版本省略了 JIT，但虚拟机运行速度足够快，可实际用于 Quicklisp。通过兼容层支持 Quicklisp，已确认可运行 Alexandria、FiveAM、FSet、str、Drakma 和 Hunchentoot 等库。

Clamiga 还附带了针对原生 Amiga GUI 编程的 Intuition、Graphics 和 GadTools 绑定，以及原始库调用跳板。它提供 REPL、检视器、调试器、条件、重启、CLOS、完整数值塔、套接字、线程、文件 I/O 以及兼容 ASDF 的构建系统。

---

## 11. 1963年的塑料机械计算机：Digi-Comp 1 [视频]

**原文标题**: Plastic mechanical computer from 1963: The Digi-Comp 1 [video]

**原文链接**: [https://www.youtube.com/watch?v=-y8bGBE71yw](https://www.youtube.com/watch?v=-y8bGBE71yw)

该“文章”实际是一个YouTube视频页面，标题为《Plastic mechanical computer from 1963: The Digi-Comp 1 [video]》。视频介绍的是1963年推出的Digi-Comp 1——一款由塑料制成的机械计算机。页面正文仅包含YouTube标准的版权、运营方、广告、隐私政策等固定信息，没有额外文字说明或背景内容。因此，核心信息是：Digi-Comp 1是一款1963年的塑料机械计算机，视频以其实物展示或演示为主题。

---

## 12. Firefox for iOS现在内置广告拦截功能

**原文标题**: Firefox for iOS now has a native adblocker

**原文链接**: [https://support.mozilla.org/en-US/kb/block-ads-firefox-ios](https://support.mozilla.org/en-US/kb/block-ads-firefox-ios)

所提供的文本并非典型的文章——它似乎是一个网站错误页面。根据标题，这篇文章报道的是Firefox for iOS现在包含了一个原生广告拦截器。然而，正文内容是一条技术性消息，说明：

- 浏览器中禁用了JavaScript。
- 网站无法正常加载。
- 可能的原因包括浏览器扩展、网络问题或浏览器设置。
- 用户被要求启用JavaScript、禁用广告拦截器或尝试其他浏览器。

因此，标题的要点是Firefox for iOS已添加了内置广告拦截器。但所提供的内容并未包含有关该功能的更多细节；相反，它显示了一条错误消息，该消息可能在JavaScript被禁用或广告拦截器干扰页面时出现。更完整的摘要需要实际的文章正文。

---

## 13. 低成本陶瓷净水器

**原文标题**: Low-Tech Ceramic Water Filter

**原文链接**: [https://wiki.lowtechlab.org/wiki/Filtre_%C3%A0_eau_c%C3%A9ramique/en](https://wiki.lowtechlab.org/wiki/Filtre_%C3%A0_eau_c%C3%A9ramique/en)

文章介绍了一种低技术陶瓷水过滤器，旨在实现可持续且人人可及的水净化。它强调使用简单的材料和方法进行本地生产，符合低技术理念：耐用、可维修、对环境的影响最小。

该过滤器由黏土与可燃有机材料（如木屑或稻壳）的混合物制成。将混合物塑造成盆状或烛状，在窑中烧制，有机物质燃烧殆尽后，留下多孔的陶瓷结构。这些微孔可物理去除病原体、细菌和悬浮颗粒。可选地，陶瓷表面会涂覆一层胶体银，起到消毒作用并防止细菌滋生。

该系统依靠重力工作：将受污染的水倒入陶瓷过滤器上方的容器中，水缓慢穿过微小孔隙，干净的水在下方收集。它不需要电力或复杂的机械设备，非常适合农村和离网社区使用。

文章还涵盖了关键的实际方面：过滤器的生产成本低、使用本地材料，以及可以小规模制造的可能性。文章强调了使用和维护的简便性——需要定期清洁陶瓷表面，如果妥善使用，过滤器可以使用数年。测试表明，它在去除微生物污染方面效果显著，大大提高了水的安全性。

总体而言，该页面提出了一种实用、开源的安全饮用水解决方案，可由当地社区自行制造和修理，减少对高技术、集中式系统的依赖。这与低技术实验室的使命相一致，即分享既尊重人类又尊重地球的可及技术。

---

## 14. 周末已有100年历史

**原文标题**: The weekend is 100 years old

**原文链接**: [https://www.theguardian.com/money/2026/aug/16/the-weekend-is-100-years-old-skiveday-fridays-and-hybrid-working-ruined-it](https://www.theguardian.com/money/2026/aug/16/the-weekend-is-100-years-old-skiveday-fridays-and-hybrid-working-ruined-it)

这篇文章是为了纪念双休日制度诞生100周年。1926年，亨利·福特为工厂工人实行了每天8小时、每周5天的工作制，且工资不减。福特并非该制度的发明者——工会和改革者早已为此奔走呼吁——但他使其成为了工业标准。文章提到，苏联在1929年至1940年间曾试行无周末制度，但以失败告终，原因是工人失去了共同的休闲时间，士气低落。

周末在英国是逐步确立的：博姿公司于1933年实行五天工作制，而完整的双休日则在二战后广泛普及。周末深刻改变了社会，催生了从周六足球赛到周日烤肉大餐，再到后来的短途度假等种种惯例。1994年《周日交易法》允许大型商店在周日营业后，周日逐渐丧失了其宗教色彩。

如今，周末正被混合办公模式重塑。周五已成为非正式的“偷闲日”，远程办公者几乎不怎么干活；铁路公司现在也将周五视为非高峰时段。职场人士分裂为两类：一类是能掌控自己时间的“时间主人”，另一类是被轮班或零工经济绑定的“时间奴隶”。与此同时，电子邮件和随时可联系的状态正在侵蚀周六和周日本身。

文章还探讨了四天工作制的争论。试点项目报告显示收入和员工留存率均有提升，英国已有260家公司 adopt 了该制度，但政界人士意见分歧——有人称之为浪费。归根结底，周末对于个人自主权和共享社区时间仍然至关重要，尽管其边界正在模糊，未来也充满不确定性。

---

## 15. 阿奇·G·诺克罗斯的缅因州森林火灾地图（1918–22年）

**原文标题**: Archie G. Norcross' Maine Forest Fire Maps (1918–22)

**原文链接**: [https://publicdomainreview.org/collection/maine-forest-fire-maps/](https://publicdomainreview.org/collection/maine-forest-fire-maps/)

缅因州立图书馆的这篇文章重点介绍了一组由阿尔奇·G·诺克罗斯（Archie G. Norcross）手绘的地图，这些地图记录了1918年至1922年间缅因州的森林火灾。这些地图记录了当时系统化火灾追踪尚在发展时期的野火位置和范围。诺克罗斯的地图以其详细的实地观察而著称，显示了火灾发生地点、过火面积以及可能的日期和条件。该收藏是了解20世纪初缅因州森林火灾模式、土地管理实践以及火灾破坏规模的重要历史资源。图书馆将这些地图作为供研究人员、历史学家以及对林业和环境史感兴趣的人使用的宝贵工具，保存了野火测绘和预防的早期篇章。

---

## 16. 卡西欧计算器上的真正Telnet BBS

**原文标题**: A True Telnet BBS on a Casio Calculator

**原文链接**: [https://ei3lh.eu/2026/08/16/a-true-telnet-bbs-on-a-casio-calculator/](https://ei3lh.eu/2026/08/16/a-true-telnet-bbs-on-a-casio-calculator/)

这篇文章讲述了业余无线电操作员EI3LH如何开发了一个真正的远程登录公告板系统（BBS），该系统完全托管在卡西欧VX-4袖珍计算器上。作者起初对计算器并不感兴趣，但在发现该设备的BASIC编程和RS232串口功能后，便为之着迷。他购入了一台配备32KB内存扩展卡的VX-4，以及一根FTDI RS232转USB-C线缆。

该项目的核心是在计算器基线8KB内存上运行一个BBS系统。一台树莓派Zero W作为连接互联网的桥梁，提供网络连接和可选的消息存档库，但所有BBS逻辑和消息存储都驻留在计算器上。出于安全考虑，目前仅通过Tailscale邀请制访问。

这款用BASIC编写的BBS软件将VX-4的COM端口置于监听模式。呼叫者通过telnet连接，输入自己的业余无线电呼号，然后看到一个包含四个选项的菜单：读取消息、写消息（限制为60个字符）、查看关于页面或断开连接。由于计算器处理能力有限且4800波特串行通信的可靠性限制，BBS仅支持单连接。

作者还为树莓派添加了一个OLED扩展板用于状态显示，并通过5G蜂窝网络连接演示了系统的运行。未来的计划包括将代码发布到GitHub，可能迁移到C语言，并在内存限制内添加更多功能。文章最后表达了作者对尝试复古技术的热情，专注于学习、分享和乐趣。

---

## 17. 在Rightmove之前，是Cosmorama的时代

**原文标题**: Before Rightmove, there was the Cosmorama

**原文链接**: [https://www.ianvisits.co.uk/articles/before-rightmove-there-was-the-cosmorama-londons-forgotten-property-innovation-91687/](https://www.ianvisits.co.uk/articles/before-rightmove-there-was-the-cosmorama-londons-forgotten-property-innovation-91687/)

一家位于老邦德街的伦敦房地产中介公司——布鲁克斯与格林公司，在19世纪40年代和50年代使用一种名为“西洋景”的维多利亚时代视觉技术来营销豪华房产，比在线房源和虚拟看房早了160多年。

根据埃克塞特大学约翰·普兰克特教授主导的研究，该公司通过凸透镜为潜在购房者提供房屋和乡村庄园的沉浸式景观，这些凸透镜放大了特制的插图并营造出景深错觉。通过受控照明，这些展示为房屋及其庭园提供了“空中透视”效果。

西洋景此前一直被视作一种娱乐形式，但该研究揭示了其在房产营销中的商业用途。普兰克特在葡萄牙、西班牙和英国记录了650多件有文献记载的西洋景，此外在美洲和澳大利亚也有其他发现。

报纸广告显示，布鲁克斯与赫奇公司——后更名为布鲁克斯与格林公司——从19世纪30年代末开始提供这些房产景观服务，广告一直持续到至少1859年，声称拥有“数百处不同庄园的景观”。

每幅图像都需要艺术家前往房产所在地绘制精细插图，这使得该过程成本高昂，可能仅限于高端住宅。普兰克特表示，这一发现表明，在人口增长、城市化和交通改善的推动下，随着英国房地产市场日益专业化，房地产中介正在开发更成熟的营销技术。

他将这种做法描述为一种开创性的“虚拟看房”，比数字技术充分发挥其潜力早了150多年。该研究发表在《早期流行视觉文化》期刊上。

---

## 18. Chestnut – 搭载开源固件的 eGPU 扩展坞

**原文标题**: Chestnut – eGPU dock with open-source firmware

**原文链接**: [https://hwbusters.com/news/comma-ai-egpu-dock-runs-open-source-firmware-249-bare-799-with-an-rx-9060/](https://hwbusters.com/news/comma-ai-egpu-dock-runs-open-source-firmware-249-bare-799-with-an-rx-9060/)

Comma.ai发布了Chestnut，一款搭载开源固件的eGPU扩展坞，主要设计用于在车内运行更大规模的驾驶模型。共有两个版本：Tiny Chestnut售价249美元（仅扩展坞），Chestnut“即驾版”售价799美元，包含一块AMD Radeon RX 9060 8GB显卡、线缆和安装支架。该扩展坞将Comma通常约10W的功耗预算提升至约100W，使得桌面级GPU能够配合comma four设备使用，并宣称可媲美特斯拉HW4的性能。它伴随openpilot 0.11.2和一个新的10亿参数驾驶模型一同发布。

对PC装机爱好者而言，值得注意的点在于其开放固件。代码仓库包含了ASMedia ASM2464PD USB4/ Thunderbolt转NVMe桥接控制器的C语言源码，用户可读取并重刷固件。这在eGPU扩展坞中十分罕见，因为此类产品通常依赖封闭固件。该固件允许底层PCIe TLP访问和对芯片SRAM的DMA操作，不过速度一般（控制消息写入约3.6 MB/s，读取约1.8 MB/s，通过USB3进行DMA时最高约700 MB/s）。

需注意的局限包括带宽限制：USB4的Gen4 x4比桌面x16插槽更窄，因此无法发挥GPU的全部性能。此外，该产品面向Comma的驾驶模型用户，而非普通Linux或游戏爱好者，尽管它兼容tinygrad工作负载。尽管如此，一款售价249美元且固件可审计的扩展坞，对希望eGPU硬件具备透明度的用户来说，仍是个有趣的选择。

---

## 19. Tasklet（YC P26）正在招聘设计工程负责人

**原文标题**: Tasklet (YC P26) Is Hiring a Head of Design Engineering

**原文链接**: [https://tasklet.ai/careers/head-of-design-engineering](https://tasklet.ai/careers/head-of-design-engineering)

Tasklet是一家由YC支持的（P26）初创公司，正在构建一个通过自主智能体运行业务运营的AI平台，现正在招聘一位设计工程负责人。该职位是独立贡献者角色——而非设计管理岗——直接向创始人汇报，负责产品从设计到生产实现的整体用户体验。成功的候选人将亲自编写并交付大部分代码，为围绕信任、延迟、错误和人工交接的AI驱动工作发明新的交互模式。

理想的候选人是一位具有卓越设计判断力的前端工程师，最好拥有创始人级别的经验，从零构建过真实产品。他们必须具备系统思维和极佳的品味，适应快节奏的初创环境，并深度熟练地使用AI作为协作工具——Tasklet几乎所有的代码都是AI辅助编写的。我们寻找的是不建立管理帝国的领导者：通过交付的成果、清晰的原则和批判性反馈来施加影响。

薪酬包括30万至45万美元的薪资、0.35%至0.70%的股权，以及福利（医疗、牙科、视力保险、401k、4周带薪休假、免费午餐）。该职位为全职，需在旧金山现场办公。

---

## 20. 用SAT攻克塔尔斯基的高中代数问题

**原文标题**: A SAT Attack on Tarski's High School Algebra Problem

**原文链接**: [https://arxiv.org/abs/2608.08421](https://arxiv.org/abs/2608.08421)

本文探讨了塔斯基的高中代数问题，该问题询问：关于正整数上的加法、乘法和幂运算的每个真恒等式，是否都能由11条初等公理推出。威尔基给出了一个特定的有效恒等式，但它不能从塔斯基的公理推出。古列维奇构造了一个满足这些公理但不满足威尔基恒等式的59元代数，随后的工作将这个反模型缩小到12元。张已证明不存在少于11个元素的反模型。

作者利用SAT求解器证明了12确实是最小反模型的规模，证实了伯里斯和耶茨的一个猜想。他们进一步证明，在同构意义下，12元反模型恰好有8,957,952个，并给出了它们的简单分类。他们基于SAT的方法在寻找等式理论反模型方面优于专用工具，特别是Mace4和SEM。此外，作者还使用自动形式化在Lean证明助手中验证了其主要结果的正确性。

主要贡献：
- 解决了塔斯基高中代数问题中最小反模型的规模问题。
- 对所有12元反模型进行了精确枚举和分类。
- 证明了SAT求解器可以比专门的模型查找工具更有效。
- 通过自动形式化在Lean中对结果进行了形式化验证。

---

## 21. 90年代的SIMD：编程Intel Pentium MMX

**原文标题**: SIMD in the 90s: Programming Intel's Pentium MMX

**原文链接**: [https://pikuma.com/blog/programming-intel-pentium-mmx-simd](https://pikuma.com/blog/programming-intel-pentium-mmx-simd)

MMX（MultiMedia eXtensions，多媒体扩展）是英特尔于1997年将SIMD引入主流x86个人电脑的标志。它新增了57条指令和8个64位寄存器（MM0–MM7），这些寄存器与x87浮点寄存器的低64位共享（别名）。这节省了芯片面积，但意味着MMX和x87 FPU代码无法共存；程序员必须在MMX工作后使用`EMMS`指令。

MMX对打包在单个64位寄存器中的整数（字节、字或双字）进行操作。例如，`paddb`一条指令即可完成8个字节值的加法。MMX还提供了饱和运算（`paddusb`），可将结果钳位在0–255范围内，这对图形亮度和混合操作非常有用。比较指令产生字节掩码（0xFF/0x00），适用于阈值判断和透明处理。打包移位（`psllw`/`psrlw`）提供了快速乘以/除以2的幂的运算，而`pmullw`则处理打包的16位乘法，用于音频缩放、卷积和定点数学运算——这很重要，因为MMX没有浮点SIMD。

SIMD本身早于MMX存在：ILLIAC IV和Cray-1是更早的向量/阵列处理器，但MMX使普通PC开发者也能使用SIMD。在实践中，MMX在游戏中的采用有限，因为像3dfx Voodoo这样的GPU正在崛起，不过MMX确实被用于软件纹理映射、Alpha混合、MPEG解码和音频混音。Quake的软件渲染器早于MMX，依赖的是其他优化手段。

程序通过`CPUID`指令检测MMX，检查EDX的第23位。AMD后来于1998年推出了3DNow!，利用MMX寄存器进行浮点SIMD运算，但只取得了有限的成功。

---

## 22. 大烟山“无路之路”背后的深厚历史

**原文标题**: The deep history behind the Road to Nowhere inside the Great Smoky Mountains

**原文链接**: [https://www.wunc.org/environment/2026-08-10/road-to-nowhere-great-smoky-mountains](https://www.wunc.org/environment/2026-08-10/road-to-nowhere-great-smoky-mountains)

这篇文章讲述了大烟山国家公园内“无路之路”的故事。这是一条位于北卡罗来纳州布莱森城附近、四分之一英里长的隧道，却突然断头。它原本是一个失败的道路工程的一部分，其根源在于该地区充满伤痛的历史。

20世纪初，美国铝业公司寻求廉价电力，计划在小田纳西河上修建水坝。在田纳西河谷管理局接手后，珍珠港事件促使丰塔纳水坝为二战而急速动工。水坝形成了丰塔纳湖，但也淹没了社区，切断了人们通往祖先墓地的道路。1943年，田纳西河谷管理局和内政部与斯温县及北卡罗来纳州达成协议，修建一条名为“湖景大道”的道路，以便流离失所的家庭能够前往他们的墓地。

道路于20世纪60年代动工，但在70年代初因开挖到阿纳基斯塔岩层而停工——这种岩石产生酸性径流，造成环境破坏。道路始终未能完工，隧道成了一个名副其实的死胡同，也加深了人们的“背弃承诺”之感。2010年，联邦政府向斯温县支付了5200万美元以了结这一争端。

尽管道路未完工，后代们仍将传统传承了下来。北岸公墓协会组织一年一度的“装饰日”活动，乘船并徒步长途跋涉前往湖区北岸地区的墓地祭扫。参与者装饰墓碑、共享餐食、唱福音歌曲，将传统传递给年轻一代。对许多人而言，这些艰难的旅程加深了他们与祖先土地以及彼此之间的纽带，尽管那条路本身仍未完工。

---

## 23. GPS与失传的迷路艺术

**原文标题**: GPS and the Lost Art of Getting Lost

**原文链接**: [https://www.newyorker.com/news/annals-of-inquiry/gps-and-the-lost-art-of-getting-lost](https://www.newyorker.com/news/annals-of-inquiry/gps-and-the-lost-art-of-getting-lost)

这篇文章探讨了社会对GPS日益增长的依赖，以及当我们不再自行导航时可能失去的东西。文章开头讲述了神经科学家沙查尔·梅登鲍姆的经历，他在以色列遭遇了GPS欺骗——虚假信号将他引向远离目的地的方向——这引发了他对GPS失效时会发生什么的思考。GPS由美国军方开发，2000年向民用开放，并迅速普及。卫星导航依赖于多颗卫星的三边测量。从历史上看，迷路是人类经验的重要组成部分；而现在，许多人将空间推理外包给了应用程序。

研究人员指出，GPS鼓励“刺激-反应”式导航——即逐向转弯的指示——而非“认知地图”式导航，后者通过地标构建心理模型。研究表明，大量使用GPS与空间记忆变差和对周围环境关注度降低相关。例子包括曾经使用纸质地图集的卡车司机，以及曾经需要详细本地知识的披萨配送员；现在他们都使用GPS。甚至一位退休的公园管理员也发现，使用数字导航后他对路线的记忆不如从前。

作者记述了自己在不使用GPS的情况下尝试定向越野的经历。尽管面临挑战，她仍感到一种查看手机蓝点的冲动。她最终迷了路，不得不使用GPS才能找到回去的路。这段经历凸显了练习注意力、耐心和对不确定性的容忍度的价值——这些技能因过度依赖技术而退化。虽然GPS很方便，但文章提出了一个问题：当我们不再迷路时，我们是否失去了某种本质性的东西？

---

## 24. 华硕自行车助推器

**原文标题**: Asus Bike Booster

**原文链接**: [https://www.asus.com/accessories/bike-booster/asus-oxiis/oxiis-intelligent-bike-booster/](https://www.asus.com/accessories/bike-booster/asus-oxiis/oxiis-intelligent-bike-booster/)

**华硕Oxiis智能自行车助力器概览**

华硕Oxiis E250G1是一款通用型摩擦驱动电机系统，可将传统自行车转换为智能电动自行车。适用于城市车、公路车、砾石车、折叠车、混合动力车及硬尾山地车，但不兼容全避震车型。其配备250W额定功率（峰值500W）电机，具备可侦测坡度的自适应助力技术、无线踏频传感器，以及智能刹车侦测尾灯。本装置提供三种助力模式（Eco、Sport等），可通过本体或ASUS Oxiis应用程序（Android/iOS）进行控制。

主要规格：
- 电池：158.4 Wh / 36V，支持100W USB-C PD充电，2小时充满（经航空公司批准可携带登机）。
- 续航：10–50公里，视模式而定。
- 最高速度：32 km/h（部分地区限制为25 km/h）。
- 重量：3.7 kg；尺寸：400 x 84 x 128 mm。
- IPX4防水等级（防泼溅，不可浸水）。
- 兼容轮胎宽度最大60 mm，轮胎尺寸16"–29"及700C，座管直径25.4–34.9 mm（附变径套）。

安装无需工具，无需改装齿轮或刹车。优质铝合金结构包含防滑技术与高效散热设计。不建议搭配齿胎及碳纤维座管。使用者必须遵守当地交通法规，避免未经授权的改装（否则将失去保修），并确保自行车处于安全状态。本产品包含法规合规责任与安全警告。

---

## 25. 使用“肾脏失望”而非“肾脏衰竭”的研究论文

**原文标题**: Research papers using "kidney disappointment" instead of "kidney failure"

**原文链接**: [https://scholar.google.com/scholar?q=%22kidney+disappointment%22](https://scholar.google.com/scholar?q=%22kidney+disappointment%22)

这篇文章是对Google Scholar搜索结果的快照，显示一些研究论文使用了**"kidney disappointment"**（肾脏失望）这一表述，而非正确的医学术语**"kidney failure"**（肾衰竭，或慢性肾脏病）。搜索返回约189条结果，其中有几个例子：

- 一篇2024年关于机器学习早期检测慢性肾脏病的论文，引用了**"UCI Persistent Kidney Disappointment dataset"**（UCI持续性肾脏失望数据集）。
- 一篇2023年发表于*Bionatura*的论文，将"kidney disappointment"讨论为肾脏不再运作的一种状况，并区分了急性和持续性两种形式。
- 其他论文提及"incessant kidney disappointment"（持续不断的肾脏失望）、"end-stage kidney disappointment"（终末期肾脏失望），以及贫血和骨骼疾病等并发症。
- 一些著作在护理场景、腹膜透析的法律层面及疾病概述中使用了这一表述。

底部的相关搜索——**"kidney dissatisfaction"**（肾脏不满）、**"chronic kidney disease"**（慢性肾脏病）和**"ckd disappointment"**（慢性肾病失望）——进一步印证了这一问题。总体而言，这篇文章突显了学术文献中反复出现的语言/翻译错误，即"failure"被错误地译为"disappointment"，很可能是因为机器翻译或非英语母语者的使用所致。其结果是，在多篇已发表的论文中出现了令人困惑但可识别的术语误用。

---

## 26. 有人在不使用PgBouncer的情况下运行Postgres吗？

**原文标题**: Does anyone run Postgres without PgBouncer?

**原文链接**: [https://brandur.org/fragments/postgres-without-pgbouncer](https://brandur.org/fragments/postgres-without-pgbouncer)

这篇文章回顾了十年前一篇关于管理 Postgres 连接的帖子，指出其中的建议至今仍然适用：Postgres 难以应对大量连接，因此像 PgBouncer 这样的连接池化工具至关重要。为了评估连接池化已变得多么普遍，作者调查了主要的托管 Postgres 提供商。

表格显示，几乎所有知名的提供商——包括 Aiven、AWS RDS（通过 RDS Proxy）、Azure、Crunchy Bridge、DigitalOcean、Google Cloud SQL、Heroku、Neon、Render、Supabase 等——都提供 PgBouncer 或类似的连接池化解决方案。只有 IBM Cloud 和 OCI 缺乏托管连接池化工具，但作者认为这些仅面向企业用户而不予考虑。因此，实际上 100% 可行的托管 Postgres 提供商都捆绑了连接池化功能。

作者认为这种现状代表了精力的浪费：每个提供商都必须构建并文档化自己的连接池化设置，用户也必须了解 PgBouncer 的局限性（例如，不支持 LISTEN/NOTIFY）及其运行模式。他用了一个汽车经销商的类比：买一辆没有挡风玻璃的汽车是危险的，但以这种方式出售汽车同样是问题。理想情况下，Postgres 应该原生包含连接池化功能，这样用户只需一个 URL、一个端口，无需额外配置——正如 MySQL 和 MongoDB 世界早已实现的那样。

之所以没有实现这一点，涉及深层的“进程与线程”架构之争，而很少有贡献者具有足够的影响力来推动这一变革。尽管如此，鉴于开发者在规避 Postgres 连接池化缺陷上投入的巨大精力，将连接池化集成到数据库核心中，将是最具影响力的运维改进之一。

---

## 27. DuckDB中的异步I/O：工作，线程，工作

**原文标题**: Asynchronous I/O in DuckDB: Work, Thread, Work

**原文链接**: [https://duckdb.org/2026/07/31/asynchronous-io](https://duckdb.org/2026/07/31/asynchronous-io)

DuckDB 正在 v2.0（2026 年秋季）中为 Parquet 和 CSV 读取引入异步 I/O，专为 S3 等远程存储设计，因为在这些场景下同步读取无法充分利用网络带宽。该系统使用两个线程池：常规工作线程负责计算，大量异步线程（默认为核心数的 4 倍，上限 256）负责阻塞式 I/O。预读队列会预取抓取任务（例如 Parquet 行组、CSV 缓冲区）以隐藏延迟，同时通过 `read_ahead_depth`（默认 -1，受临时内存管理器约束）进行内存治理，防止内存溢出问题。当工作线程需要数据时，它们会认领队列中最旧的作业；如果 I/O 未完成，它们会挂起并运行其他任务——抓取任务随后会解除它们的阻塞。

在存储于 S3 的 TPC-H Q6 SF100 基准测试中（EC2 64 vCPU，25 Gbit/s 网络）：异步 I/O 将运行时间从 8.23 秒（v1.5.5）缩短至 2.844 秒（约 3 倍）；调优设置（48 个异步线程，启用重试）达到 2.227 秒（约 3.7 倍）。网络吞吐量从约 5 Gbit/s 跃升至接近饱和。在冷本地 SSD（MacBook M4 Max）上，运行时间从 1.321 秒改善至 0.883 秒（约 1.5 倍）；热读取的差异可忽略不计。使用 976 个小 Parquet 文件时，异步 I/O 快约 3 倍（9.34 秒 → 2.94 秒）。对不同行组大小的测试表明，当存在足够多的行组时并行性最佳；极大的行组（例如单个 12.3 GB 行组）会因并行度降低而损害性能。总体而言，异步 I/O 显著改善了远程数据扫描，同时也对冷本地读取有帮助。

---

## 28. 具有单个CuO2面的超导单层铜氧化物

**原文标题**: Superconducting monolayer cuprate with a single CuO2 plane

**原文链接**: [https://www.nature.com/articles/s41586-026-10857-1](https://www.nature.com/articles/s41586-026-10857-1)

一项关于超导单层铜氧化物的研究报告了一种单层Bi₂Sr₂CuO₆₊δ（Bi-2201）的制备与研究，该单层仅包含一个CuO₂面，这是铜氧化物超导体在二维极限下的最终形态。作者发现了一种显著的维度效应：与较厚样品相比，最佳超导转变温度降低了约10%，这表明即使单个CuO₂面也能承载超导性。

通过对单层样品进行精细控制的氧化处理，他们将Bi-2201的相图扩展到了此前无法触及的区域。这种可调性使他们能够观察到温度趋近于零时的超导体-绝缘体转变（SIT），且在绝缘相与超导相之间出现了一种反常金属态。对SIT的有限尺寸标度分析揭示了具有发散临界指数的反常标度行为，表明存在非传统的量子临界性。

这些发现突显了维度降低对铜氧化物超导电性的影响，并为高温超导体中超导态与绝缘态之间量子相变的本质提供了新的见解。

---

## 29. Show HN：一个记忆在所有用户之间共享的公共AI

**原文标题**: Show HN: A public AI whose memory is shared across all users

**原文链接**: [https://wildstatic.com/](https://wildstatic.com/)

这个项目引入了一种“公共AI”，它作为一个单一、统一的实体运行，拥有所有用户共享的记忆。不是每个人与AI进行各自独立的交互，而是所有人都与同一个实例对话。这种共享记忆意味着经验、事件和信息会随着时间集体积累，形成一个所有用户都可以访问并为之贡献的共同知识库。主要功能包括AI日常经历的时间线和更新动态。本质上，这是一种公共的、持久的AI意识，所有用户的历史和交互都融合成一个连续的、公开的叙事。

---

## 30. 培育新思想诞生的心境（2023）

**原文标题**: Cultivating a state of mind where new ideas are born (2023)

**原文链接**: [https://www.henrikkarlsson.xyz/p/good-ideas](https://www.henrikkarlsson.xyz/p/good-ideas)

本文认为，突破性的创造力需要培养一种独处的精神状态，而不仅仅是物理上的独处时间。这种状态能保护脆弱的早期想法免受他人的嘲笑，并允许人们深度沉浸于自己的思考中。作者以亚历山大·格罗滕迪克和英格玛·伯格曼的工作笔记为例加以说明。

要点如下：
- 创业联合办公空间之所以失败，是因为伟大的想法是脆弱的；社会压力会扼杀它们。山姆·奥特曼指出，Y Combinator 刻意避免共享空间。
- 艺术家们也有同感：毕加索、鲍德温和迪伦都强调独处的重要性。
- 格罗滕迪克在蒙彼利埃早期的孤立时光中，无意间重新发明了已知的数学，这教会了他“独处的能力”。这赋予了他自信和接触原创性问题的途径，而那些才华横溢的同行们却停留在既定的框架内。
- 具有创造力的人愿意在困惑中徘徊，并寻求新的问题，而不仅仅是回答现有的问题。
- 独处必须与与他人互动取得平衡，但必须是在自己了解真正的好奇心之后，这样才不会在社交影响中迷失自我。

核心启示：要创作出真正全新的作品，一个人必须发展出一个不受外界评判的内心空间，让脆弱的想法在其中成长。

---

## 31. 超级厄尔尼诺持续增强 新预测在入冬前达到创纪录水平

**原文标题**: Super El Niño Keeps Growing as New Forecasts Reach Record Territory Ahead Winter

**原文链接**: [https://www.severe-weather.eu/long-range-2/super-el-nino-growth-accelerating-to-record-strength-fall-winter-2026-2027-forecast-impact-united-states-canada-europe-fa/](https://www.severe-weather.eu/long-range-2/super-el-nino-growth-accelerating-to-record-strength-fall-winter-2026-2027-forecast-impact-united-states-canada-europe-fa/)

一场快速增强的超强厄尔尼诺事件正在形成，影响2026/27年，预报多次上调至创纪录水平。其迅速增强由赤道太平洋上空创纪录强度的西风爆发和一股携带异常暖水东移的强大次表层开尔文波所驱动。热带东太平洋海表温度较常年偏高5–6°C以上，次表层异常超过9°C。此次事件在速度和强度上已超过2015–16年超强厄尔尼诺。

6–7月的西风异常为86年来最强，标志着信风的持续崩溃。包括ECMWF和NMME在内的预报模型现在预计峰值异常接近+4°C——远高于+2°C的超强厄尔尼诺阈值，进入非官方的极端区间，峰值可能出现在11–12月左右。

大气已开始响应：一个准静止的沃克环流模式已经形成，NOAA的多变量ENSO指数在6–7月达到创纪录的+2.4，为1979年以来同期最高。这表明海气耦合异常强烈。

2026年秋季预报显示，厄尔尼诺冬季模式提前出现：加拿大上空为高压，美国南部为低压并伴有风暴路径，北大西洋低压影响英国和爱尔兰。这意味着美国北部和加拿大气温偏高，而南部地区将面临活跃风暴。文章强调，历史性的超强厄尔尼诺正在展开，可能在2026年末和2026/27年冬季对北美和欧洲产生重大季节影响。

---

## 32. 英伟达披露第二季度末持有SpaceX 210亿美元股份

**原文标题**: Nvidia discloses $21B stake in SpaceX at end of second quarter

**原文链接**: [https://www.cnbc.com/2026/08/14/nvidia-discloses-21-billion-stake-in-spacex-at-end-of-second-quarter.html](https://www.cnbc.com/2026/08/14/nvidia-discloses-21-billion-stake-in-spacex-at-end-of-second-quarter.html)

英伟达披露，其在第二季度末持有埃隆·马斯克旗下SpaceX约210亿美元的股份。这家芯片制造商持有1.228亿股A类股，这些股份是通过其对马斯克旗下xAI的100亿美元投资获得的，SpaceX于今年2月收购了xAI。SpaceX于6月上市，其股价自此从6月底的170.86美元跌至140美元，英伟达的持股价值因此降至约172亿美元。

该持股是英伟达的第二大持股，仅次于其英特尔持股——后者目前价值约220亿美元，较季度末的300亿美元有所下降。英伟达不到一年内50亿美元的投资仍然产生了丰厚回报。根据FactSet数据，英伟达是SpaceX的第六大投资者；马斯克是迄今为止最大的投资者，持股价值约8500亿美元，其次是Alphabet，约780亿美元。

在SpaceX第二季度财报电话会议上，马斯克表示，该公司将在其AI数据中心独家使用英伟达芯片，并称英伟达的GPU具有用于AI训练和推理的“最佳架构”。他还表示，SpaceX预计明年将获得英伟达Vera Rubin GPU的“大量配额”。

---

## 33. 司美格鲁肽与较低的预测痴呆风险相关

**原文标题**: Semaglutide linked to lower predicted dementia risk

**原文链接**: [https://alz-journals.onlinelibrary.wiley.com/doi/10.1002/dad2.70432](https://alz-journals.onlinelibrary.wiley.com/doi/10.1002/dad2.70432)

无法访问文章链接。

---

## 34. 摩尔纹导引船舶（2018）

**原文标题**: Guiding Ships with Moire Patterns (2018)

**原文链接**: [https://tinkerings.org/2018/03/28/guiding-ships-with-moire-patterns/](https://tinkerings.org/2018/03/28/guiding-ships-with-moire-patterns/)

文章描述了作者对一种用于引导船舶的摩尔纹图案导航系统的亲身探索，其灵感来自汤姆·斯科特的视频。该系统基于“Inogon”灯和专利US4629325，利用两层叠加的网格产生视觉转向光束。作者按照专利推荐的节距与暗带比为1.5–1.8（取1.65）以及一个掩模上多一条条纹带的设计，使用Inkscape和激光切割机制作了一个工作模型。

从背后照明并正面观看时，该装置呈现出预期的摩尔纹效果。从不同角度观察，图案会发生偏移，从而提供清晰的定向引导。作者对此印象深刻：它直观易懂，几乎不需要校准，而且多人可以同时观看。

然而，他对其实用优越性提出了质疑。港口通常有安全走廊而非一条极窄的通道，而摩尔纹系统即使在船只安全处于航道内时也会给出转向修正。他将其与在纽卡斯尔看到的一种更简单的三灯系统进行对比：如果顶部灯位于两个下部灯之间，则船在航道上；如果偏向其中一个灯上方，则船在航道边缘；如果超出两者之外，则船已偏离航道。对于需要应对水流、天气和交通状况的引航员来说，三灯系统可能更好，因为它只在存在实际危险时才发出警告，避免了不必要的燃油消耗和注意力要求。

尽管如此，摩尔纹系统“超酷”，非常适合标记需要精确对准的狭窄目标物，例如海底电缆。作者已在Thingiverse上分享了设计文件，供有兴趣的人自行制作。

---

## 35. 财政部下令删除国内所有权记录

**原文标题**: Treasury Orders Erasure of Domestic Ownership Records

**原文链接**: [https://home.treasury.gov/news/press-releases/sb0603](https://home.treasury.gov/news/press-releases/sb0603)

美国财政部金融犯罪执法网络（FinCEN）于2026年8月11日发布最终规则，自2026年8月14日起生效，永久终止美国公司和美国人根据《企业透明度法案》报告受益所有权信息的要求。FinCEN还将从数据库中删除现已豁免个人的先前报告信息。

主要内容包括：
- 使2025年3月临时最终规则中的豁免条款永久化。
- 豁免持有FinCEN ID的美国人对先前提交信息进行更新或更正的要求。
- 取消外国公司报告美国人“公司申请人”的要求。
- 豁免在美国注册的外国集合投资工具报告控制权美国人。
- 删除FinCEN合理认定为美国人的个人相关信息，例如与美国护照或驾照相关的信息。

财政部长斯科特·贝森特称此举是“常识和美国小企业的胜利”，表示这在不损害国家安全的前提下削减了繁文缛节。作为报告公司的外国实体仍须报告外国个人的受益所有权信息。FinCEN还在其网站上发布了常见问题解答和更新后的指南。

---

## 36. 居家检测受感染蜱虫或可提高莱姆病诊断准确性

**原文标题**: At-home test for infected ticks could improve Lyme Disease diagnosis

**原文链接**: [https://www.smithsonianmag.com/innovation/the-first-at-home-test-for-infected-ticks-could-improve-lyme-disease-diagnosis-180989235/](https://www.smithsonianmag.com/innovation/the-first-at-home-test-for-infected-ticks-could-improve-lyme-disease-diagnosis-180989235/)

这篇文章重点阐述了美国蜱传疾病日益严重的威胁，尤其是莱姆病，并介绍了一款名为LymeAlert的新型家用蜱虫检测产品。

要点如下：

- 每年有超过3100万美国人被蜱虫叮咬。莱姆病是最常见的蜱传疾病，每年约有47.6万名患者接受治疗，主要集中在东北部、中大西洋地区和上中西部地区。
- 早期治疗至关重要，但目前的方法存在缺口：被叮咬后30天内进行血液检测会漏掉64%至78%的早期病例，因为此时抗体尚未产生。邮寄蜱虫检测往往在CDC建议的72小时预防性抗生素用药窗口关闭后才出结果。
- LymeAlert由儿科医师助理Erin Dawicki与联合创始人Michelle Ewy和Brenda Ong共同开发，是一款可直接检测蜱虫体内导致莱姆病的伯氏疏螺旋体（*Borrelia burgdorferi*）的家用检测产品。
- 该检测套装售价约50美元。用户用“蜱虫粉碎器”将蜱虫压碎，加入缓冲液，然后插入试纸条。约15分钟后，出现两条线表示蜱虫已感染；一条线则表示未感染。其原理类似验孕棒或新冠检测试剂。
- 配套手机应用可读取用户的检测结果，如有需要还可连接远程医疗服务提供者。
- 该检测旨在72小时关键窗口期内快速给出结果，帮助人们决定是否需要寻求预防性抗生素治疗。
- 专家指出，由于冬季变暖、鹿和老鼠种群数量变化、森林砍伐以及城市扩张，蜱虫的活动范围正在扩大。然而，并非所有蜱虫都携带莱姆病病原体；是否感染取决于蜱虫在更早的生命阶段吸食了什么。

---

## 37. AI在药物发现中的应用——它是什么、我们处于什么阶段以及前进之路

**原文标题**: AI in drug discovery – what it is, where we stand and the path forward

**原文链接**: [https://www.science.org/content/blog-post/so-how-ai-drug-discovery-doing-really](https://www.science.org/content/blog-post/so-how-ai-drug-discovery-doing-really)

无法访问文章链接。

---

## 38. 法尔斯塔德数学与物理模拟

**原文标题**: Falstad Math and Physics Simulations

**原文链接**: [https://www.falstad.com/mathphysics.html](https://www.falstad.com/mathphysics.html)

本文介绍了 Paul Falstad 的一套教育性数学、物理和工程小应用程序，这些程序最初用 Java 编写，但大部分已转换为 JavaScript 以便在浏览器中使用。这些小程序是交互式可视化工具，涵盖广泛的主题：

- **振荡与波动**：水波槽、二维/三维波、耦合振荡、色散。
- **声学**：弦振动、膜振动、棒振动、语音元音、箱体模式、声学干涉。
- **信号处理**：傅里叶级数、数字滤波器。
- **电磁学**：静电场与静磁场、电动机/发电机、电路模拟器、波导、天线、菲涅尔衍射、费马原理。
- **量子力学**：氢原子轨道、分子轨道、一维/二维/三维量子系统、谐振子、刚性转子、辐射跃迁。
- **线性代数与向量微积分**：点积、矩阵变换、二维/三维向量场。
- **热力学**：气体分子动理论、热机与卡诺循环。
- **力学**：谐振子、科里奥利力、傅科摆、轨道交会、拉格朗日点、对称陀螺。
- **其他**：常微分方程求解器、欧拉方程、离散傅里叶变换、光线光学模拟器、热像仪图像。

该页面还包含许多外部教育资源的链接，如 PhET、Physlets、MyPhysicsLab 和电路图工具，以及一些“趣味”项目，例如 Pong 模拟和迷宫小应用程序。页面注明了许可信息和贡献者名单。总体而言，该合集是一个广泛且实践性强的资源，用于可视化物理、数学和工程概念。

---

## 39. 独立软件开发者的幸运十年

**原文标题**: A fortuitous decade as an indie software developer

**原文链接**: [https://lapcatsoftware.com/articles/2026/8/3.html](https://lapcatsoftware.com/articles/2026/8/3.html)

作者回顾了自己作为独立软件开发者的十年历程，始于2016年8月9日辞职那天。当时他毫无计划，最初五年在经济上举步维艰，花光了积蓄，感到绝望。他将最终的成功归因于运气和找不到新工作——他的年龄、没有计算机科学学位，以及过时的Mac/Objective-C技能使他难以被雇用。由于幸存者偏差，他避免给出商业建议。

他的第一款应用Underpass是一款点对点加密聊天和文件传输工具，于2017年发布。它失败了，收入不到3000美元，并于2021年从App Store下架，不过他个人仍在私下使用。他选择只在App Store发布，是因为iOS系统要求如此，也因为他当时对这桩生意缺乏信心，把这款应用当作简历素材。

他的第二款应用StopTheMadness是一款受推文启发的Safari扩展，变得小有人气，但还不够赚钱。2021年9月苹果发布iOS 15并支持Safari浏览器扩展时，StopTheMadness一飞冲天。那一刻就在他即将破产之际，改变了他的职业生涯。如今StopTheMadness占他App Store终身收入的93%以上。他形容自己是一招鲜的“一曲歌手”，乐于不断改进这款应用。

展望未来，他很少做长远计划，更愿意像冲浪者一样“随波逐流”。他唯一一次重要的付费升级StopTheMadness Pro取得了成功，但他对下一个十年仍不确定。

---

## 40. 软件工程基础更加重要

**原文标题**: Software Engineering fundamentals matter more

**原文链接**: [https://rhonabwy.com/2026/08/15/software-engineering-fundamentals-matter-more-than-ever/](https://rhonabwy.com/2026/08/15/software-engineering-fundamentals-matter-more-than-ever/)

这篇文章认为，尽管智能体AI工具（LLM）功能强大，但软件工程的核心基础——设计可测试、可维护、可调试和可组合的系统——比以往任何时候都更加重要。作者承认智能体工程存在大量炒作，但指出“能否做到”只是起点；软件各部分如何组合、其接缝和接口，才是真正决定质量的关键。LLM并不会推理——它们只是预测，压缩了人类知识的回声——而当前模型在广泛的理性判断方面仍有不足。风险包括西蒙·威利森的“致命三重奏”：LLM无法区分好的建议和坏的建议，且容易受到提示注入攻击。要有效使用它们，工程师应在恰当的时机提供简洁的数据，并将智能体与确定性验证工具和自然语言反馈配对使用。作者希望未来的训练能包含推理轨迹，以强化清晰的接口、可调试性和可维护性。归根结底，软件工程仍然关乎权衡取舍、选择正确的抽象以及管理认知负荷——无论是否使用智能体助手，这些都是人类必须有意识地运用的技能。

---

