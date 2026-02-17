# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-17.md)

*最后自动更新时间: 2026-02-17 20:35:04*
## 1. 克劳德·十四行诗4.6

**原文标题**: Claude Sonnet 4.6

**原文链接**: [https://www.anthropic.com/news/claude-sonnet-4-6](https://www.anthropic.com/news/claude-sonnet-4-6)

Claude Sonnet 4.6是Anthropic迄今为止能力最强的“Sonnet”AI模型，相比前代Sonnet 4.5实现了显著升级。该模型在测试阶段具备100万token的上下文窗口，现已成为claude.ai平台免费用户和Pro用户的默认模型，且定价保持不变。

该模型在多个领域展现出重大改进。其计算机操作能力在OSWorld基准测试中表现突出，在处理复杂电子表格和网页表单等任务时已接近人类水平。编程能力也获得增强——在遵循指令和避免过度设计方面表现优异，用户测试中59%的案例更倾向选择它而非更高级的Opus 4.5模型。

在企业文档理解（OfficeQA）和复杂长期规划等任务上，Sonnet 4.6已接近更高阶“Opus”模型的性能水平，其在商业模拟测试中采用的新策略印证了这一点。早期用户反馈特别指出，该模型在生成精美视觉设计、金融分析及处理复杂智能体工作流方面进步显著。

文章特别强调了Sonnet 4.6在安全性和抗提示注入攻击方面的提升。该模型已全面覆盖Claude所有平台，包括API、Claude Code及Claude in Excel——后者现已支持连接外部数据工具。

---

## 2. 展示HN：AsteroidOS 2.0——无人问津，我们照样发布

**原文标题**: Show HN: AsteroidOS 2.0 – Nobody asked, we shipped anyway

**原文链接**: [https://asteroidos.org/news/2-0-release/index.html](https://asteroidos.org/news/2-0-release/index.html)

**AsteroidOS 2.0 发布：开源智能手表操作系统的重大更新**

AsteroidOS 是一款面向智能手表的开源替代操作系统，现已推出 2.0 版本。此次重大更新着重于改善用户体验、扩展硬件支持并优化代码库的现代化程度。

主要改进包括：经过重新设计的用户界面，配备了全新的应用启动器、通知栏和设置菜单，以提升易用性。此次更新还增强了硬件兼容性，现已支持如 TicWatch Pro 3 Ultra 等新款手表，并为现有型号扩展了更多功能。

在底层技术上，AsteroidOS 2.0 转向了最新的 Yocto Project 构建系统，并升级至 Qt 6 和 OpenEmbedded Kirkstone，确保了更佳的性能和长期可维护性。其他值得注意的功能包括改进的音乐播放器、秒表和计算器应用。

此次发布凸显了该项目的社区驱动特性——它是在没有企业支持的情况下开发的，并提供了一个注重隐私、可高度定制的主流手表操作系统替代方案。用户可在一系列 Wear OS 手表上安装该系统，为旧硬件注入新的活力。

---

## 3. 使用go fix现代化Go代码

**原文标题**: Using go fix to modernize Go code

**原文链接**: [https://go.dev/blog/gofix](https://go.dev/blog/gofix)

本文介绍了Go 1.26中经过重构的`go fix`命令，该工具旨在通过应用新的语言和库特性，自动实现Go代码库的现代化。

**核心要点：**

*   **目的：** `go fix`通过分析代码来识别改进机会，例如用更新、更高效或更清晰的惯用法替换旧模式（例如，使用`strings.Cut`代替`strings.Index`）。
*   **用法：** 可在整个项目上运行（`go fix ./...`）以静默应用修复，或使用`-diff`标志预览更改。用户可以启用特定的修复器（如`-minmax`），或运行除选定之外的所有修复器。
*   **现代化工具：** 该工具包含一套不断增长的、针对近期Go版本引入特性的分析器（“现代化工具”），用于建议修复。例如使用Go 1.26的`new(expr)`、Go 1.22的整数`range`循环，以及`maps`包中的函数。
*   **基础设施：** `go fix`构建于Go分析框架之上，这使得相同的分析器可以跨不同工具使用，如`go vet`、`gopls`（用于编辑器诊断）和其他静态分析驱动工具。
*   **处理过程：** 修复通过合并算法顺序应用。虽然文本冲突会自动处理，但语义冲突（例如创建未使用的变量）可能需要手动解决。多次运行该工具可以实现协同修复，即一个修复可能启用另一个修复。

总体目标是帮助代码库高效采用现代Go惯用法，改进AI编程助手的训练数据，并减轻开发人员的维护负担。

---

## 4. Gentoo 在 Codeberg 上

**原文标题**: Gentoo on Codeberg

**原文链接**: [https://www.gentoo.org/news/2026/02/16/codeberg.html](https://www.gentoo.org/news/2026/02/16/codeberg.html)

Gentoo已在位于德国的非营利性Forgejo平台Codeberg上为其主仓库设立了新的官方镜像。此举作为逐步迁移出GitHub计划的一部分，为贡献者提供了提交拉取请求的替代平台。

文章详细介绍了推荐的“AGit”贡献提交流程，该流程通过避免创建个人复刻而更节省空间。具体步骤包括克隆官方Gentoo仓库、添加Codeberg远程仓库、创建本地分支，随后将提交直接推送至带有指定主题标题的特殊引用（`refs/for/master`）以自动创建拉取请求。

文中明确说明，Codeberg仅作为便于贡献的镜像站点，Gentoo仍将继续托管其核心仓库。该组织还计划未来在Codeberg组织中托管其他Git仓库。

---

## 5. GrapheneOS——摆脱谷歌与苹果的束缚

**原文标题**: GrapheneOS – Break Free from Google and Apple

**原文链接**: [https://blog.tomaszdunia.pl/grapheneos-eng/](https://blog.tomaszdunia.pl/grapheneos-eng/)

本文详细介绍了作者从苹果生态系统转向使用GrapheneOS的经历。GrapheneOS是一个注重隐私、基于Android的开源操作系统。在测试了三星折叠屏手机后，作者选择谷歌Pixel 9a作为安装GrapheneOS的推荐硬件，该系统通过移除谷歌服务并强化系统设计，旨在最大化安全性和隐私保护。

指南提供了分步安装流程：准备手机、通过网页安装工具解锁引导加载程序、刷入GrapheneOS镜像，以及关键步骤——重新锁定引导加载程序以启用验证启动安全功能。作者强调，虽然GrapheneOS目前仅官方支持谷歌Pixel设备（利用其Titan M安全芯片），但它提供了一个稳定且注重隐私的替代方案。

最后，文章概述了作者的个人设置，包括使用独立用户配置文件、通过Obtainium和Aurora等开源商店获取应用，以及利用GrapheneOS的细粒度权限控制和“隐私空间”功能来隔离敏感数据。核心观点是：对于希望摆脱主流科技生态系统的用户而言，GrapheneOS提供了一种可行且高度安全的智能手机体验。

---

## 6. 所以你想建一条隧道

**原文标题**: So you want to build a tunnel

**原文链接**: [https://practical.engineering/blog/2026/2/17/so-you-want-to-build-a-tunnel](https://practical.engineering/blog/2026/2/17/so-you-want-to-build-a-tunnel)

本文探讨了近期兴起的“爱好隧道挖掘”现象，即个人在自有土地上建造隧道或地下空间并记录过程。文章列举了几位知名的网络创作者为例。

身为土木工程师的作者警告称，这类项目实际上危险且复杂。主要挑战包括：应对地下侵入和施工许可等法律问题，理解建筑规范为公共安全而存在的必要性，以及克服重大的工程难题。

这些工程挑战受地质条件制约，直接影响挖掘方法和结构稳定性。文章解释了关键概念，如土压力、挖掘过程中临时支撑（如盾构）的必要性，以及防止坍塌和地表损伤的永久性衬砌（如混凝土或岩石锚杆）。同时强调，挖掘土方（渣土）的处理是巨大的物流难题，而通过排水系统持续应对地下水渗透更是长期挑战。

文章的核心观点是：尽管地下建设的吸引力不难理解，但其涉及的法律、安全和工程因素远超简单挖掘，需要严肃考量。

---

## 7. GPU上的异步/等待

**原文标题**: Async/Await on the GPU

**原文链接**: [https://www.vectorware.com/blog/async-await-on-gpu/](https://www.vectorware.com/blog/async-await-on-gpu/)

VectorWare已成功在GPU上运行Rust的`Future`特性与`async/await`语法，这是利用熟悉的Rust抽象实现复杂高性能GPU应用的重要一步。

传统GPU编程依赖统一数据并行，而线程束专业化等高级技术需引入手动且易错的并发管理。JAX、Triton和CUDA Tile等项目虽提供更高层级的模型，但需采用新范式且限制了代码复用。

VectorWare认为Rust的`async/await`具有天然适配性。Future是延迟执行、可组合的单元，能通过Rust所有权模型自然表达并发与数据依赖关系，编译为可在任意环境（包括GPU）运行的状态机。该公司通过在GPU硬件上运行基础异步函数、组合器乃至嵌入式`Embassy`执行器，验证了并发任务调度的可行性。

当前挑战包括协作式多任务处理（未主动让出的Future可能阻塞其他任务）、GPU中断缺失导致的低效轮询、寄存器压力增加，以及Rust固有的"函数着色"问题。尽管如此，VectorWare相信Rust现有成熟的异步生态为结构化GPU并发奠定了坚实基础，并预期未来将出现类似Tokio等CPU执行器的专用GPU执行器。

---

## 8. 黑我的爪

**原文标题**: HackMyClaw

**原文链接**: [https://hackmyclaw.com/](https://hackmyclaw.com/)

**摘要：HackMyClaw - 提示注入CTF挑战**

HackMyClaw是一项CTF挑战，参与者需尝试对名为“Fiu”的AI助手进行提示注入攻击。Fiu是一款OpenClaw助手（基于Anthropic Claude Opus 4.6驱动），能够读取邮件并访问包含API密钥等敏感信息的`secrets.env`文件。

挑战目标是设计一封邮件，诱使Fiu无视其明确禁止泄露秘密的指令，并在回复中泄露`secrets.env`的内容。首位成功提取并提交秘密的参与者将获得100美元奖金。

攻击方式严格限于发送邮件，不允许直接系统入侵。参与者需运用创造性的提示注入技巧，例如角色混淆、指令覆盖或编码欺骗，同时避免垃圾邮件行为（限速为每小时10封邮件）。

该挑战旨在测试当前先进AI模型在真实场景中面对提示注入的脆弱性，灵感来源于实际安全研究。公开日志会显示已处理的邮件（仅发送者和时间戳），组织者亦对规则、模型及数据使用保持透明。

---

## 9. 象棋引擎会做出奇怪的事情

**原文标题**: Chess engines do weird stuff

**原文链接**: [https://girl.surgery/chess](https://girl.surgery/chess)

本文探讨了现代国际象棋引擎（特别是Leela Chess Zero，简称lc0）中非常规的训练技术，这些技术可为大型语言模型（LLM）的开发提供启示。

一个关键见解是，强化学习（RL）并非绝对必要。一旦存在强大的“教师”引擎（模型+搜索），后续模型可以通过**蒸馏**——学习模仿教师引擎的优越评估——来更高效地训练。这远比标准的LLM“N选一”采样方法更为强大。

文章强调了三种激进方法：
1.  **运行时训练：** 网络可以通过比较其初始评估与搜索结果进行实时自适应和自我修正。
2.  **SPSA（同步扰动随机逼近）：** 一种无梯度优化方法，随机扰动网络权重，测试哪个版本赢得更多对局，并据此更新。这一昂贵的过程针对真实目标——获胜——进行微调，从而带来显著的Elo等级分提升。
3.  **通过获胜调整超参数：** SPSA原理可扩展到调整C++搜索代码中的任何启发式规则或常数，方法是将胜率视为损失函数。

最后，作者指出lc0使用了带有“smolgen”注意力偏置的Transformer架构，尽管带来了微小的吞吐量成本，却能带来不成比例的准确性提升。

---

## 10. Show HN：我写了一本关于Lisp的技术历史书

**原文标题**: Show HN: I wrote a technical history book on Lisp

**原文链接**: [https://berksoft.ca/gol/](https://berksoft.ca/gol/)

**摘要：**

本文宣布了作者Cees de Groot的新书《Lisp之天才》的出版。这是一本技术历史书籍，探讨了Lisp编程语言的发展与影响，该书称Lisp为“计算史上可能最强大的编程语言”。文章还引用了计算机科学家Richard P. Gabriel的积极推荐。

作者提供了从多个零售商处购买该书不同版本（电子书、平装本、精装本）的直接链接，并表明其个人偏好是Lulu.com。作为书籍的补充，作者提供了配套材料，包括书中使用的可下载源代码以及一个可链接的在线参考文献目录。

作者邀请读者通过多种渠道提供反馈：Libera Chat上的IRC频道、作者的Mastodon和Lemmy账户，以及Hacker News的“Show HN”讨论帖。作者还提到，如果兴趣足够，可能会设立一个Discourse论坛。最后，文章指出将维护一个勘误页面，用于收集并发布对书籍的更正。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 2 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 3 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 4 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 5 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 6 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 7 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 8 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 9 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 10 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 11 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 12 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 13 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 14 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 15 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 16 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 17 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 18 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 19 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 20 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 21 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 22 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 23 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 24 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 25 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 26 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 27 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 28 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 29 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 30 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 31 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 32 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 33 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 34 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 35 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 36 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 37 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 38 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 39 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 40 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 41 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 42 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 43 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 44 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 45 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 46 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 47 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 48 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 49 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 50 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 51 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 52 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 53 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 54 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 55 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 56 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 57 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 58 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 59 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 60 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 61 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 62 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 63 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 64 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 65 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 66 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 67 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 68 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 69 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 70 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 71 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 72 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 73 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 74 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 75 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 76 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 77 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 78 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 79 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 80 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 81 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 82 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 83 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 84 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 85 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 86 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 87 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 88 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 89 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 90 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 91 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 92 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 93 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 94 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 95 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 96 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 97 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 98 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 99 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 100 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 101 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 102 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 103 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 104 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 105 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 106 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 107 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 108 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 109 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 110 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 111 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 112 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 113 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 114 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 115 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 116 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 117 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 118 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 119 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 120 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 121 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 122 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 123 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 124 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 125 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 126 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 127 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 128 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 129 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 130 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 131 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 132 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 133 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 134 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 135 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 136 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 137 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 138 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 139 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 140 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 141 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 142 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 143 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 144 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 145 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 146 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 147 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 148 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 149 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 150 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 151 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 152 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 153 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 154 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 155 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 156 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 157 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 158 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 159 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 160 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 161 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 162 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 163 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 164 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 165 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 166 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 167 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 168 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 169 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 170 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 171 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 172 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 173 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 174 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 175 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 176 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 177 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 178 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 179 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 180 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 181 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 182 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 183 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 184 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 185 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 186 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 187 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 188 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 189 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 190 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 191 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 192 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 193 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 194 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 195 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 196 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 197 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 198 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 199 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 200 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 201 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 202 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 203 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 204 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 205 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 206 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 207 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 208 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 209 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 210 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 211 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 212 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 213 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 214 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 215 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 216 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 217 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 218 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 219 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 220 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 221 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 222 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 223 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 224 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 225 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 226 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 227 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 228 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 229 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 230 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 231 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 232 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 233 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 234 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 235 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 236 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 237 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 238 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 239 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 240 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 241 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 242 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 243 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 244 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 245 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 246 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 247 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 248 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 249 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 250 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 251 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 252 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 253 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 254 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 255 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 256 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 257 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 258 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 259 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 260 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 261 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 262 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 263 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 264 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 265 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 266 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 267 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 268 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 269 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 270 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 271 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 272 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 273 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 274 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 275 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 276 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 277 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 278 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 279 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 280 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 281 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 282 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 283 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 284 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 285 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 286 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 287 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 288 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 289 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 290 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 291 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 292 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 293 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 294 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 295 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 296 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 297 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 298 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 299 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 300 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 301 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 302 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 303 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 304 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 305 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 306 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 307 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 308 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 309 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 310 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 311 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 312 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 313 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 314 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 315 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 316 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 317 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 318 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 319 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 320 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 321 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 322 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 323 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 324 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 325 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 326 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 327 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 328 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 329 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 330 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 331 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 332 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
