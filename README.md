# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-08-16.md)

*最后自动更新时间: 2026-08-16 20:43:00*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 2 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 3 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 4 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 5 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 6 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 7 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 8 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 9 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 10 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 11 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 12 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 13 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 14 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 15 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 16 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 17 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 18 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 19 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 20 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 21 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 22 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 23 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 24 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 25 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 26 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 27 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 28 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 29 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 30 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 31 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 32 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 33 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 34 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 35 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 36 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 37 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 38 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 39 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 40 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 41 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 42 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 43 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 44 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 45 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 46 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 47 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 48 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 49 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 50 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 51 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 52 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 53 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 54 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 55 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 56 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 57 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 58 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 59 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 60 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 61 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 62 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 63 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 64 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 65 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 66 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 67 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 68 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 69 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 70 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 71 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 72 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 73 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 74 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 75 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 76 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 77 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 78 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 79 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 80 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 81 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 82 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 83 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 84 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 85 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 86 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 87 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 88 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 89 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 90 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 91 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 92 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 93 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 94 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 95 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 96 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 97 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 98 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 99 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 100 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 101 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 102 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 103 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 104 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 105 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 106 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 107 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 108 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 109 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 110 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 111 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 112 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 113 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 114 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 115 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 116 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 117 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 118 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 119 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 120 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 121 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 122 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 123 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 124 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 125 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 126 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 127 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 128 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 129 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 130 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 131 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 132 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 133 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 134 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 135 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 136 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 137 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 138 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 139 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 140 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 141 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 142 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 143 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 144 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 145 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 146 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 147 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 148 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 149 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 150 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 151 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 152 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 153 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 154 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 155 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 156 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 157 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 158 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 159 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 160 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 161 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 162 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 163 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 164 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 165 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 166 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 167 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 168 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 169 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 170 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 171 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 172 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 173 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 174 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 175 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 176 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 177 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 178 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 179 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 180 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 181 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 182 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 183 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 184 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 185 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 186 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 187 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 188 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 189 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 190 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 191 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 192 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 193 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 194 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 195 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 196 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 197 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 198 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 199 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 200 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 201 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 202 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 203 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 204 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 205 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 206 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 207 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 208 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 209 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 210 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 211 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 212 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 213 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 214 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 215 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 216 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 217 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 218 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 219 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 220 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 221 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 222 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 223 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 224 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 225 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 226 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 227 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 228 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 229 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 230 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 231 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 232 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 233 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 234 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 235 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 236 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 237 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 238 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 239 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 240 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 241 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 242 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 243 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 244 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 245 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 246 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 247 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 248 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 249 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 250 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 251 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 252 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 253 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 254 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 255 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 256 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 257 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 258 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 259 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 260 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 261 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 262 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 263 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 264 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 265 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 266 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 267 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 268 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 269 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 270 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 271 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 272 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 273 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 274 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 275 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 276 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 277 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 278 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 279 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 280 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 281 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 282 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 283 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 284 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 285 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 286 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 287 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 288 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 289 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 290 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 291 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 292 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 293 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 294 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 295 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 296 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 297 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 298 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 299 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 300 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 301 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 302 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 303 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 304 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 305 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 306 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 307 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 308 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 309 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 310 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 311 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 312 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 313 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 314 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 315 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 316 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 317 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 318 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 319 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 320 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 321 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 322 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 323 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 324 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 325 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 326 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 327 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 328 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 329 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 330 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 331 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 332 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 333 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 334 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 335 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 336 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 337 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 338 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 339 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 340 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 341 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 342 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 343 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 344 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 345 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 346 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 347 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 348 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 349 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 350 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 351 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 352 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 353 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 354 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 355 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 356 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 357 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 358 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 359 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 360 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 361 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 362 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 363 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 364 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 365 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 366 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 367 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 368 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 369 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 370 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 371 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 372 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 373 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 374 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 375 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 376 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 377 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 378 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 379 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 380 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 381 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 382 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 383 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 384 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 385 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 386 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 387 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 388 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 389 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 390 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 391 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 392 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 393 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 394 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 395 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 396 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 397 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 398 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 399 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 400 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 401 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 402 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 403 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 404 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 405 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 406 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 407 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 408 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 409 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 410 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 411 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 412 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 413 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 414 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 415 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 416 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 417 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 418 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 419 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 420 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 421 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 422 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 423 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 424 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 425 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 426 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 427 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 428 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 429 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 430 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 431 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 432 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 433 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 434 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 435 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 436 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 437 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 438 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 439 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 440 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 441 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 442 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 443 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 444 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 445 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 446 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 447 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 448 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 449 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 450 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 451 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 452 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 453 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 454 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 455 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 456 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 457 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 458 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 459 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 460 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 461 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 462 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 463 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 464 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 465 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 466 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 467 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 468 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 469 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 470 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 471 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 472 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 473 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 474 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 475 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 476 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 477 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 478 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 479 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 480 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 481 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 482 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 483 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 484 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 485 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 486 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 487 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 488 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 489 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 490 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 491 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 492 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 493 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 494 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 495 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 496 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 497 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 498 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 499 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 500 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 501 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 502 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 503 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 504 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 505 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 506 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 507 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 508 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 509 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 510 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
