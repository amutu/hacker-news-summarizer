# Hacker News 热门文章摘要 (2026-05-13)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 免费提供新闻是一次胜利

**原文标题**: Making the news available at no cost is a victory

**原文链接**: [https://www.sltrib.com/opinion/commentary/2026/05/12/just-days-tribune-reporting/](https://www.sltrib.com/opinion/commentary/2026/05/12/just-days-tribune-reporting/)

文章宣布，《盐湖城论坛报》将取消付费墙，自周四起，犹他州居民可免费阅读sltrib.com上的所有内容。观点专栏作家罗伯特·格尔克将此举措称为公众获取新闻的“重大胜利”。文章还提及该报政治团队主办的一场回顾立法会议的专题讨论，并包含相关报道：一篇解释付费墙取消具体方式的说明、编辑劳伦·古斯塔斯关于该报为新闻而战使命的声明，以及一篇对该报运营情况的幽默年终回顾。

---

## 2. 设置免费的城市.州.us地域域名（2025）

**原文标题**: Setting up a free *.city.state.us locality domain (2025)

**原文链接**: [https://fredchan.org/blog/locality-domains-guide/](https://fredchan.org/blog/locality-domains-guide/)

本文介绍如何在美国注册一个免费的 **.city.state.us 地方域名**（例如 `yourname.seattle.wa.us`），供个人或组织使用。

**关键步骤：**

1.  **选择地方域名：** 查看你的城市是否在官方授权的地方子域名列表中。联系指定的注册机构（如西雅图的 NuOz）。如果你的城市不在列表中，可以使用一个通用的 `gen.your-state.us` 域名。未授权的域名仅限地方政府使用。

2.  **获取域名服务器：** 与标准域名不同，你必须提供自己的域名服务器。本文推荐使用 **Amazon Lightsail 的免费 DNS 区域**——你可以为预期的域名创建一个区域，而无需租用服务器，然后记下提供的域名服务器地址。

3.  **填写注册表格：** 填写 **临时 .US 域名模板 v2.0**。对于个人，请使用你的姓名和地址。填入你的 Lightsail 域名服务器（及其 IP 地址），将你自己设置为管理/技术联系人，并选择“个人使用”，同时以“美国公民”作为你的关联类别。

4.  **发送表格：** 将填好的表格通过电子邮件发送给你所在地区的注册机构。处理过程可能需要数天或数周。

5.  **配置 DNS：** 批准后，在 Lightsail 中添加 DNS 记录（例如 A 或 CNAME 记录），将你的域名指向你的网站托管服务（如 **GitHub Pages** 的免费托管）。

**注意：** 你必须是美国公民、永久居民或符合条件的组织。WHOIS 查询不会泄露你的个人地址。作者不确定申请人是否必须实际居住在该地区。

---

## 3. Google内部IDE发展史

**原文标题**: A History of IDEs at Google

**原文链接**: [https://laurent.le-brun.eu/blog/a-history-of-ides-at-google](https://laurent.le-brun.eu/blog/a-history-of-ides-at-google)

本文介绍了谷歌集成开发环境（IDE）的演变历程，重点阐述了该公司如何从碎片化的生态系统转向近乎统一的云端解决方案。

最初，谷歌允许工程师自行选择IDE，这一政策得到了杰夫·迪恩等高管的支持。然而，这导致内部工具集成（如Bazel、代码搜索）需要针对每种编辑器重复实现，造成了重复劳动。公司庞大的单一代码库也给依赖本地索引的传统IDE带来了压力。

为此，谷歌构建了基于Web的云端IDE **Cider**。它最初面向技术文档撰写者，但通过后端索引整个代码库并添加代码智能功能后逐渐流行起来，能够快速实现跨数十亿文件的交叉引用和代码补全。

关键的转折点出现在2020年，团队决定**采用VSCode作为Cider的前端**（称为Cider V）。这继承了成熟的编辑器体验和庞大的扩展生态，并将开发所有权转移至公司各团队。到2023年，**谷歌主代码库中80%的开发工作都在Cider V上完成**。

统一IDE的举措带来了巨大优势：它证明了更大投入的合理性，催生了大量内部扩展，并促进了AI功能（如智能代码审查解析）的快速集成。文章总结道，标准化的开发工具虽然成本高昂，但对提升生产力具有高度影响力。

---

## 4. Linux游戏性能更佳，因为Windows API正逐渐成为Linux内核特性。

**原文标题**: Linux gaming is faster because Windows APIs are becoming Linux kernel features

**原文链接**: [https://www.xda-developers.com/linux-gaming-is-getting-faster-because-windows-apis-are-becoming-linux-kernel-features/](https://www.xda-developers.com/linux-gaming-is-getting-faster-because-windows-apis-are-becoming-linux-kernel-features/)

**摘要：**

本文探讨了Linux游戏性能如何随着Windows特定API被集成到Linux内核中而提升，从而摆脱了对Wine和Proton等翻译层的依赖。一个关键例子是NTSYNC，这是一个内核级驱动程序，原生实现了游戏使用的Windows协调机制。此前，Wine不得不通过esync和fsync等变通方法来模拟这些机制，这常常导致细微的错误或性能问题。NTSYNC消除了模拟的需要，提供了与Windows行为更精确的匹配。

虽然NTSYNC的标题帧率提升（40-200%）是针对未修改的Wine测量的，但大多数Linux游戏玩家已经使用了带有fsync的Proton。Valve工程师Pierre-Loup Griffais指出fsync“足够快”，但Valve仍然采用了NTSYNC，因为fsync仍然是一种变通方法，容易遇到卡顿或死锁等极端情况问题。NTSYNC从根源上修复了这些问题。

由Valve、CodeWeavers及贡献者推动的、将Windows启发的功能添加到Linux内核的趋势，标志着Linux作为游戏平台的成熟。随着Steam Deck的采用，超过5%的Steam用户现在使用Linux，此类内核级改进的动力也在持续增长。

---

## 5. MacBook Neo深度解析：基准测试、晶圆经济学与8GB内存赌局

**原文标题**: MacBook Neo Deep Dive: Benchmarks, Wafer Economics, and the 8GB Gamble

**原文链接**: [https://www.jdhodges.com/blog/macbook-neo-benchmarks-analysis/](https://www.jdhodges.com/blog/macbook-neo-benchmarks-analysis/)

**《MacBook Neo深度评测》概要**

本文分析了苹果售价599美元的MacBook Neo，该机型搭载iPhone 16 Pro的A18 Pro芯片。关键发现如下：

**性能表现：** A18 Pro单核性能卓越（Geekbench约3461分），超越M2，介于M3与M4之间，且比Intel/骁龙竞品快38-43%。但无风扇设计导致持续负载60秒后出现严重热降频，性能损失最高达87%。该设备属"短跑选手"，仅适合突发性任务。

**架构设计：** A18 Pro与M4共享核心架构（相同IPC、ARMv9.2、N3E制程）。主要差异包括核心数更少（2大核+4小核对比4大核+6小核）、内存带宽减半（60对比120GB/s）、主频更低、热设计功耗更小（约10W对比20-25W）。

**定价策略：** 苹果通过垂直整合实现599美元售价，掌控芯片、操作系统和供应链，同时将成本分摊至每年2.3亿部iPhone的出货量。

**8GB内存争议：** 板载8GB内存是主要瓶颈。苹果策略迫使macOS在此限制下高效运行，但限制了多任务处理能力和未来扩展性。

**总结：** MacBook Neo对处理突发性任务的轻度用户（网页、办公、影音）价值突出，但持续高负载场景表现欠佳，且无升级空间。

---

## 6. Rars：一个Rust编写的RAR实现，主要由大语言模型生成

**原文标题**: Rars: a Rust RAR implementation, mostly written by LLMs

**原文链接**: [https://bitplane.net/log/2026/05/rars/](https://bitplane.net/log/2026/05/rars/)

**摘要：rars——大语言模型实现的Rust RAR压缩库**

作者利用AI模型（OpenAI Codex 5.5和Claude Opus 4.7），在五周内创建了基于Rust的免费RAR压缩/解压工具"rars"，耗资约40英镑（补贴代币）。该项目共生成55,000行代码。

由于缺乏官方RAR规范，作者通过研究免费解压工具（unar、libarchive、UNRARLIB）、DOS/Windows版RAR二进制文件，并借助Ghidra进行了逆向工程。Claude协助完成了读取端的文档编写，而写入端则需要大量测试和调试。

主要挑战包括：
- Claude生成的代码"迷之自信却频频出错"，需要持续人工监督
- 一次意外的WinRAR安全绕过触发了OpenAI警报，迫使作者放弃真实性验证
- 性能问题：rars压缩率比WinRAR差5-10%，且速度明显更慢，部分原因在于Rust安全代码的限制
- 测试被证明是确保AI生成代码不脱离现实的关键

新版Codex模型的/goal功能实现了40,000行代码的自动生成。尽管存在代码粗糙、速度缓慢、体积近2MB等问题，rars仍成功支持多个RAR版本，并已以`rars-cli`形式发布在crates.io上。作者总结认为：基于规范工作、自主研究和充分测试是有效方法，但当前AI缺乏新颖的优化思路，且可能忽略明显的用户体验问题。

---

## 7. 软件的Emacs化

**原文标题**: The Emacsification of Software

**原文链接**: [https://sockpuppet.org/blog/2026/05/12/emacsification/](https://sockpuppet.org/blog/2026/05/12/emacsification/)

本文认为，AI代理已实现软件的“Emacs化”，让个人能轻松生成定制的原生应用，正如Emacs用户用elisp创建个人工具一样。作者通过描述其对macOS现有Markdown查看器的不满来阐明这一观点。像Glow这类终端查看器受制于等宽字体，而Obsidian等编辑器又会打乱精心布置的工作空间。在应用商店找不到满意的专用查看器后，作者使用Claude通过约30分钟的交互式工作构建了自己的原生macOS应用（MDV）。这款应用目前包含文本搜索、SQLite索引、书签以及阅读位置记忆功能——性能优于任何商业选项。

关键洞察在于，AI代理降低了创建优质原生UI的门槛。此前，构建原生macOS软件需要稀有且昂贵的人才，迫使大多数应用采用Electron等糟糕的网页框架。如今，任何熟悉自建软件的人都可以通过提示AI来打造精巧专业的工具。作者将此称为“Emacs化”：软件变得个人化、可塑性高，由想法而非打包代码驱动。价值在于提示词与概念，而非源代码。文章最后赞叹原生UI开发变得有趣且触手可及，鼓励读者“Emacs化”自己的工作流程——创建超特定工具，尽享其用，并分享用于构建它们的提示词。

---

## 8. 普林斯顿大学强制实行线下考试监考，打破133年传统

**原文标题**: Princeton mandates proctoring in-person exams, upending 133 years of precedent

**原文链接**: [https://www.dailyprincetonian.com/article/2026/05/princeton-news-adpol-proctoring-in-person-examinations-passed-faculty-133-years-precedent](https://www.dailyprincetonian.com/article/2026/05/princeton-news-adpol-proctoring-in-person-examinations-passed-faculty-133-years-precedent)

普林斯顿大学教职工投票决定，自2026年7月1日起，所有线下考试均须进行监考，终结了该校自1893年起在学生主导的荣誉守则下明确禁止监考的133年传统。这项仅有一票反对通过的政策，要求监考人员作为见证者出现在考场，但不干涉考试过程；若发现疑似违规行为，监考人员需向学生主导的荣誉委员会报告。

这一变革源于学术诚信问题日益严峻，尤其是人工智能工具和个人电子设备的普及，使得其他学生更难发现并举报作弊行为。匿名举报的增加，以及学生因担心遭人肉搜索而不愿举报同伴的趋势，也是推动因素。2025年的一项高年级学生调查显示，29.9%的受访者承认曾作弊，44.6%知晓未被举报的违规行为，而仅有0.4%曾举报过同伴。

提案指出，多数学生对监考持支持或无所谓态度，但仍有相当少数学生基于信任与荣誉原则表示反对。荣誉委员会主席支持这一举措，称人工智能带来了新挑战。教职工与学生代表将在政策生效前敲定实施细则，包括监考人员与考生的配比等。

---

## 9. Y 的 X —— 每次游玩都会自动命名的 rogue-like 游戏，用 4000 行代码编写。

**原文标题**: Xs of Y – roguelike that names itself every run. Written in 4kLoC

**原文链接**: [https://github.com/nooga/xsofy](https://github.com/nooga/xsofy)

**摘要**

《Ys of X》是一款未完成的Roguelike游戏，采用约6900行"let-go"（一种运行于Go字节码虚拟机上的Clojure方言）编写。每次开局都会生成独特的标题、任务和符文映射，其魔法系统基于Lisp S表达式——玩家拥有对地牢现实引擎的"根权限"，但文档却是一门已消亡且不断变化的语言。

游戏采用倒置成长曲线：前期生存极度绝望，后期则成为"安全边际不足的应用神学"。地牢中既有常规敌人（蜘蛛、哥布林、史莱姆、巨魔），也有环境灾害（火焰蔓延、深渊重置进度）。支持原生运行或通过WASM在浏览器中运行，无任何依赖，启动仅需6毫秒，采用持久化数据结构。开发者称主要灵感来自《Brogue》。玩家需使用本地"lg"运行时来运行游戏。

---

## 10. GitHub Actions在日志中暴露GitHub_TOKEN的安全问题已发布

**原文标题**: GitHub Actions issued GitHub_TOKEN disclosure in GitHub Actions logs

**原文链接**: [https://github.com/composer/composer/security/advisories/GHSA-f9f8-rm49-7jv2](https://github.com/composer/composer/security/advisories/GHSA-f9f8-rm49-7jv2)

**摘要：**  
Composer（版本1.0–1.10.28、2.0.0–2.2.28、2.3.0–2.9.8）中存在一个高严重性漏洞（CVE-2026-45793，CVSS评分7.5），会导致GitHub Actions的`GITHUB_TOKEN`值泄露到CI日志中。该问题出现在`BaseIO.php`文件中，Composer在此处使用正则表达式（`^[.A-Za-z0-9_]+$`）验证GitHub OAuth令牌。GitHub的新令牌格式（例如`ghs_<id>_<base64url-JWT>`）包含连字符（`-`），导致验证失败。被拒绝的令牌随后被逐字插入输出到标准错误流的异常消息中，绕过了GitHub的密钥屏蔽器。常用操作（如`shivammathur/setup-php`）会自动注册该令牌，从而自动触发泄露。令牌为短期有效（任务完成时过期，托管运行器上不超过6小时，自托管运行器上不超过24小时）。传统的`ghp_`个人访问令牌不受影响。已修复版本：1.10.28、2.2.28和2.9.8。

---

## 11. S-100 虚拟工作台

**原文标题**: S-100 Virtual Workbench

**原文链接**: [https://grantmestrength.github.io/S100/](https://grantmestrength.github.io/S100/)

**《S-100虚拟工作台》概述**

“S-100虚拟工作台”是一款数字仿真工具，旨在模拟20世纪70至80年代传统S-100总线计算机系统的功能与环境。文章可能描述了该虚拟工作台如何让用户无需物理硬件即可构建、配置和测试S-100系统。其核心功能或许包括“插入”虚拟板卡（如CPU、内存或I/O卡）、设置DIP开关与跳线，并通过交互界面实时监控总线信号。

该工具的主要目标兼具教育与保存意义：助力复古计算爱好者、学生及历史研究者学习早期微型计算机架构、实验软硬件交互，并为Altair 8800或IMSAI 8080等经典机型恢复或开发软件。工作台很可能支持常见的S-100 CPU板卡（如Intel 8080、Zilog Z80）及标准外设，提供逼真的启动流程与单步执行、内存查看等调试功能。

通过消除古董硬件的成本、维护与稀缺性限制，虚拟工作台为探索与研究提供了便捷平台。它强调对电气时序与总线协议的精确仿真，成为理解个人计算机基础技术的宝贵资源。

---

## 12. Launch HN：Ardent（YC P26）—— 零迁移秒级创建PostgreSQL沙箱

**原文标题**: Launch HN: Ardent (YC P26) – Postgres sandboxes in seconds with zero migration

**原文链接**: [https://www.tryardent.com/](https://www.tryardent.com/)

Ardent（YC P26）是一个能在6秒内创建任何Postgres数据库的隔离1:1副本的工具，使编码代理（AI工具）能够在接近生产环境的数据上安全测试和验证代码，无需任何风险或迁移。核心特性包括：

- **零爆炸半径**：每个克隆在计算和存储层完全隔离，确保对生产环境无影响。
- **高速扩展**：即使达到TB级别，克隆速度也比传统方法快30,960倍，具备存储效率（仅按更改部分付费）和自动计算扩展（空闲时可缩减至零）。
- **无需管理**：克隆数秒内加载，自动扩展计算资源，且不重复占用存储。

适用场景包括数据清洗、迁移测试和数据回填，使团队在发布前即可验证数据库代码。Ardent支持Supabase、AWS RDS和PlanetScale等主流服务商，无需任何配置更改且完全兼容。

客户反馈强调零停机、发布速度提升及每次发布节省数小时。该工具专为追求生产级速度的AI原生数据团队设计，提供无限克隆限额和类似Git的团队协作功能。

---

## 13. 美国正在赢得人工智能竞赛最关键领域的胜利：商业化

**原文标题**: The US is winning the AI race where it matters most: commercialization

**原文链接**: [https://avkcode.github.io/blog/us-winning-ai-race.html](https://avkcode.github.io/blog/us-winning-ai-race.html)

**摘要：**

美国在人工智能商业化的全球竞赛中领先，在收入、采用率和基础设施方面均超越竞争对手。尽管DeepSeek R1让市场感到意外，但其对中国的战略价值在于减少对英伟达的依赖、提升供应链自主性，而非商业主导地位。

美国的优势源于同时构建每一个关键层级：芯片、电力、数据中心、云平台、开发者工具和企业软件。AWS、Azure和谷歌云等超大规模云服务商充当了分发渠道和数据平台，将人工智能融入日常产品（如YouTube、Microsoft 365、GitHub）。廉价电力支持更低的模型成本，但决定性因素在于云规模和数据访问能力。

欧洲虽然拥有强大的工程人才，但缺乏整合的基础设施。SAP的克里斯蒂安·克莱因正确指出，仅靠大语言模型是不够的，但他对数据中心的轻视忽略了它们是在一个更大系统内运行的现实。欧洲需要数年时间才能赶上美国的超大规模云服务商。

最后，文章强调了一个迫在眉睫的安全前沿：用于网络行动和自主武器的武器化人工智能。这可能推动各国转向专有、封闭的堆栈（软件、固件、芯片），以限制对手的上下文信息和速度，从而偏离开源逻辑。

---

## 14. 回滚 Python 3.14 和 3.15 中的增量垃圾回收

**原文标题**: Reverting the incremental GC in Python 3.14 and 3.15

**原文链接**: [https://discuss.python.org/t/reverting-the-incremental-gc-in-python-3-14-and-3-15/107014](https://discuss.python.org/t/reverting-the-incremental-gc-in-python-3-14-and-3-15/107014)

**摘要：**

Python 3.14 引入了一种新的增量式垃圾回收器，但在生产环境中导致了严重的内存压力。因此，核心团队和指导委员会决定在 Python 3.14 和 3.15 中均撤销此更改，回归到 3.13 版本中使用的分代式垃圾回收。虽然在补丁版本 (3.14.5) 中撤销变更并不常见，但这是合理的，因为增量式垃圾回收缺乏适当的 PEP 流程，且在 3.13 最终发布前不久才被回滚。对于仍处于 alpha 阶段的 Python 3.15，撤销操作则很直接。未来重新引入增量式垃圾回收（针对 Python 3.16）将需要遵循标准的 PEP 流程和更彻底的评估。一旦撤销准备就绪，3.14 的下一个补丁 (3.14.5) 将提前发布；如果撤销能在下周内完成，3.15 可能会新增一个 alpha 9 版本。3.15 的第一个 beta 版定于 2026 年 5 月 5 日发布。

---

## 15. 2026年的大记忆恐慌 – Asymco

**原文标题**: The great memory panic of 2026 – Asymco

**原文链接**: [https://asymco.com/2026/05/11/the-great-memory-panic-of-2026/](https://asymco.com/2026/05/11/the-great-memory-panic-of-2026/)

**《2026年记忆体大恐慌》摘要 – Asymco**

霍勒斯·德迪乌探讨了记忆体价格飙升可能使设备物料清单（BOM）成本从15%升至40%的担忧。他认为，凭借庞大规模与长期供应商关系，苹果完全有能力应对这场"记忆体大恐慌"。

关键要点：
- **边际价格与基础价格：** 价格飙升属于短期边际定价。苹果基于稳定长期基础负荷进行谈判，可规避短期波动。但长期价格飙升最终可能影响基础价格。
- **周期性市场：** 半导体热潮之后必然伴随衰退。苹果可利用长期合作承诺争取更优价格，因为市场回调时供应商仍希望留住其订单。
- **战略优势：** 苹果可用雄厚资金锁定记忆体供应，容忍利润率暂时下降（如从49%降至45%），并挤压无法获取零部件的竞争对手。这可能导致低端市场颠覆——推测苹果或以499美元推出"Neo"机型，性能媲美当今顶级型号，迫使成本800美元却亏损的对手退出市场。
- **历史先例：** 苹果曾多次化解供应链危机（如iPod垄断硬盘产能、独占CNC机床资源），始终以策略制胜对手。

德迪乌总结称，这场恐慌对苹果而言利大于弊，或加速市场整合。

---

## 16. 《90年代末至21世纪初黑客工具的情感怀旧之旅》

**原文标题**: A sentimental tour of late 1990s and early 2000s hacking tools

**原文链接**: [https://andreafortuna.org/2026/05/13/amarcord/](https://andreafortuna.org/2026/05/13/amarcord/)

**摘要：** 本文回顾了上世纪90年代末至21世纪初的黑客场景，聚焦于当时的工具、文化及持久的影响。  
  
重点工具包括“远程管理工具（RAT）的黄金时代”：**Back Orifice**（由“死牛崇拜”组织开发）、**NetBus** 以及 **Sub7**——一款由罗马尼亚青少年编写的木马程序，通过 IRC 实现远程控制，曾大规模传播。基础性工具如 **Nmap**、**Netcat**、**John the Ripper** 和 **Cain & Abel** 被视作“瑞士军刀”，至今仍在使用。  

文章强调 **IRC** 是当时的核心控制中心与社交枢纽，被攻陷的机器充当机器人。这种利用现有且不可追踪基础设施的创新架构，被视为现代 C2 框架的概念雏形。  

文章着重描述了 **意大利黑客场景**。1994年的“硬件行动1号”以涉嫌盗版为由突袭了119个 Fidonet BBS 节点，对该群体造成重创。尽管此次镇压在法律上存疑，却迫使社区迁移至更隐蔽的平台（如 IRC），并催生了一代关注数字权益的实践者。  

最终，文章指出：尽管当时工具简陋，但**思维模型**（使用被攻陷的中继站、流量混杂、避免复用基础设施）已相当成熟，至今仍是现代威胁行为者剧本的核心。软盘与56K调制解调器的混乱时代，锻造了一个以动手实践（往往游走于法律边缘）为基础的专业领域。

---

## 17. 探索八综织造

**原文标题**: Exploring 8 Shaft Weaving

**原文链接**: [https://algorithmicpattern.org/2026/03/11/exploring-8-shaft-weaving/](https://algorithmicpattern.org/2026/03/11/exploring-8-shaft-weaving/)

**《探索8综织造》摘要**

作者描述了从全线程控制（TC/2活织机）转向8综台式织机的过程，在专家协助下设置二手木制织机，学习整经与穿综技艺，包括直接穿法和点式穿法。核心洞见涵盖台式织机（手杆操作）与落地织机（脚踏板配合"系结"简化复杂花型）的区别，其根本源于人体工学的重复性。作者探索了人字纹、华夫格织纹及三维立体结构等花型。

与"可穿戴感官"实验室合作，团队为TC/2织机创建了多用户**综框模拟器**，支持实时协作修改花型（穿综、系结、踏杆）并即时获得视觉反馈——与耗时数小时的手动重穿形成对比。这种协作在花型转换中产生了"故障效果"。返回家中作者为**裂纹织纹**重新穿综，采用拉尔夫·格里斯沃尔德的设计图与AdaCAD软件将落地织机图样转化为台式织机格式。挑战包括复杂穿综、条纹经纱遮蔽花型及过浮织技法的运用。文章以对提综逻辑的身体性领悟，以及二元织机逻辑与织物设计间生生不息的深层互动作为收尾。

---

## 18. ReactOS

**原文标题**: ReactOS

**原文链接**: [https://reactos.org/](https://reactos.org/)

**ReactOS 新闻文章摘要：**

本篇文章涵盖了 ReactOS 项目（一个旨在实现 Windows 兼容性的开源操作系统）近期的重要里程碑与进展。

**要点：**

1.  **30周年纪念（2026年1月22日）：** ReactOS 庆祝了自首次提交代码以来的30周年。尽管许多当前贡献者在该项目启动时尚未出生，但其为 Windows 应用程序和驱动程序提供可信赖开源环境的使命仍在继续。

2.  **测试套件大修（2025年11月4日）：** 开发者 Carl Bialorucki 正主导对长期被忽视的 ReactOS 测试套件进行重大清理。该套件此前是自定义与修改版 Wine 测试的混乱集合，文档匮乏，如今正接受系统的修复与改进。

3.  **WDDM 硬件支持研究（2025年10月7日）：** 发布了关于 Windows 显示驱动程序模型（WDDM）支持的初步研究报告，反映了项目在瞄准支持 Windows Vista 及更高版本时，致力于提升硬件兼容性的目标。

4.  **开发者聘用（2025年7月4日）：** 于2024年加入核心团队的 Carl Bialorucki 主导了 0.4.15 版本的发布，随后于 2025 年 5 月与 ReactOS Deutschland e.V. 签订了全职合同职位。

---

## 19. 从GitHub迁移至Forgejo

**原文标题**: Leaving GitHub for Forgejo

**原文链接**: [https://jorijn.com/en/blog/leaving-github-for-forgejo/](https://jorijn.com/en/blog/leaving-github-for-forgejo/)

**总结：**

作者解释了他们从GitHub迁移到自托管Forgejo实例的三个核心原因：自主权丧失、默认使用用户数据进行AI训练，以及未解决的美国管辖权风险。他们认为GitHub在2025-2026年间的可靠性问题（257起事件、48次重大宕机）只是深层问题的表象而非根源。

关键点：
- **独立领导权的丧失**：2025年8月，微软将GitHub并入其CoreAI部门，取消了其CEO职位和独立产品方向。
- **数据隐私**：自2026年4月24日起，GitHub默认将Copilot Free/Pro/Pro+的交互数据用于AI训练（仅可选退出，无仓库级别控制）。
- **管辖权风险**：作为美国公司，GitHub受FISA 702和CLOUD法案约束，这意味着欧盟数据驻留并不能保证免受美国政府访问。

作者将他们的决定与荷兰政府于2026年4月在自托管Forgejo上推出code.overheid.nl进行了比较，后者因完全开源（GPLv3+）的代码库以及在Codeberg e.V.下的非营利治理而被选中，而非GitLab。

他们的自托管环境（code.jorijn.com）在一台NUC上运行Forgejo v15 LTS，并使用基于gVisor的KVM虚拟机中的加固CI运行器，每周进行破坏性重建，并通过严格的出口过滤确保安全。

---

## 20. 双胞胎兄弟被解雇后数分钟内清除96个政府数据库

**原文标题**: Twin brothers wipe 96 government databases minutes after being fired

**原文链接**: [https://arstechnica.com/tech-policy/2026/05/drop-database-what-not-to-do-after-losing-an-it-job/](https://arstechnica.com/tech-policy/2026/05/drop-database-what-not-to-do-after-losing-an-it-job/)

2025年，34岁的双胞胎兄弟穆尼卜·阿赫特尔和索海卜·阿赫特尔在华盛顿特区的一家科技公司被解雇，该公司为45个联邦客户管理数据库。2月18日被解雇数分钟后，权限尚未完全撤销的穆尼卜开始了破坏性攻击。他使用命令“DROP DATABASE dhsproddb”删除了约96个政府数据库，包括国土安全部的一个数据库，还下载了1805份平等就业机会委员会档案及450人的联邦税务信息。在整个持续一小时的破坏过程中，索海卜通过对话鼓励他，建议删除文件系统甚至考虑勒索。兄弟二人曾有电信欺诈和计算机犯罪的犯罪记录。攻击后，他们在笔记本电脑上重装系统并清除了日志。联邦探员于2025年3月搜查其住所，缴获了索海卜被禁止持有的枪支。2025年12月被捕的穆尼卜于2026年4月认罪，而索海卜则在2026年5月被陪审团判定犯有计算机欺诈和非法持有枪支等罪名。穆尼卜此后从监狱提交手写请愿书，表示对认罪感到不适并试图自行辩护。其雇主后确认为Opexus公司，承认在招聘和解雇程序上存在过失。

---

## 21. “非医学必需”：助美国医保拒赔之道

**原文标题**: "Not Medically Necessary": Helping America's Health Insurers Deny Coverage

**原文链接**: [https://www.propublica.org/article/evicore-health-insurance-denials-cigna-unitedhealthcare-aetna-prior-authorizations](https://www.propublica.org/article/evicore-health-insurance-denials-cigna-unitedhealthcare-aetna-prior-authorizations)

**摘要：**  
本项ProPublica/国会山论坛调查揭示了西格纳旗下公司EviCore如何通过拒绝为超过1亿患者提供医疗服务来获利。该公司受雇于美国主要保险公司（联合健康、安泰、蓝十字），其使用的AI驱动算法“调节旋钮”可被调整以增加预授权申请的人工审核量，从而导致更高的拒赔率。合同常以削减成本为激励，EviCore向保险公司承诺通过降低医疗支出实现3:1的投资回报率。内部数据显示，EviCore在阿肯色州拒绝了近20%的申请，而联邦医疗保险优惠计划仅拒绝7%。前员工称，当成本削减未达标时，公司会施压审核员拒绝医疗服务，且过时的医疗指南导致不当拒赔。医生们将其戏称为“邪恶核心”。调查列举了小约翰·库普等案例——其心脏导管手术两次被拒，导致必要治疗延误。保险公司辩称此举旨在确保安全、必要的治疗并减少浪费，但批评者认为这种利润驱动模式破坏了客观医疗决策，损害了患者利益。

---

## 22. 《蛋白质先导化合物优化傻瓜指南》

**原文标题**: An idiot's guide to lead optimisation for proteins

**原文链接**: [https://magnusross.github.io/posts/protein-lead-optimisation-1/](https://magnusross.github.io/posts/protein-lead-optimisation-1/)

本文阐述了利用机器学习进行蛋白质先导优化的过程，重点介绍了Cradle的流程。蛋白质是由20种氨基酸组成的链，它们折叠成特定形状以执行功能。先导优化旨在提升现有蛋白质针对特定任务的表现。

该流程始于**基础模型**：一个基于Transformer架构的蛋白质语言模型，该模型已在数百万个天然蛋白质上完成预训练。通过掩码语言建模，它学会了预测缺失的氨基酸，从而有效评估某个编辑的“天然性”程度。

接下来是**进化微调**（演化精细调优）。该模型会进一步基于与模板蛋白质具有进化关系的序列进行训练，这些序列通过多序列比对（MSA）获得。这一步骤将模型聚焦于蛋白质空间中的相关区域，从而提高其建议具有功能性的可能性。

最后，系统融入了**实验室测量**（实验测定）。这些测试会评估蛋白质序列的活性、稳定性等特性，并返回数值评分。数据被用于训练模型，使其能够预测候选蛋白质的可能得分，从而提出更有可能在真实测试中表现优异的改进方案。

其目标是形成一个紧密的反馈循环：模型提出候选方案，这些方案在实验室中进行测试，测试结果再被用于优化模型，以进行下一轮的建议。

---

## 23. Substrate (YC S24) 正在招聘技术客户成功经理

**原文标题**: Substrate (YC S24) Is Hiring a Technical Success Manager

**原文链接**: [https://www.ycombinator.com/companies/substrate/jobs/T2fMBhD-technical-success-manager](https://www.ycombinator.com/companies/substrate/jobs/T2fMBhD-technical-success-manager)

**Substrate (YC S24) 技术客户成功经理职位摘要**

Substrate 正在打造全球首个面向医疗收入周期管理（RCM）的AI原生业务流程外包平台，每月处理超过50万份医疗索赔。现于旧金山招聘一名**技术客户成功经理**（每周3天到岗），薪资范围10万至13万美元，另加股权。

**主要职责：**
- 从试点到扩展阶段全程负责客户关系。
- 使用SQL、代码及生产数据库调查并诊断客户问题至根本原因。
- 构建自动化工具以提升问题解决效率并扩展客户交互规模。
- 在工程团队开发前，为客户制作新功能原型并进行演示。

**理想候选人：**
- 具备极强的主人翁精神，能从技术层面深入解决问题。
- 熟练使用SQL、代码及数据。
- 拥有B2B SaaS或企业客户关系管理经验。
- 熟悉现代LLM架构、微调及评估方法。
- 医疗领域知识为加分项，非必需。
- 高度自驱，乐于在旧金山现场办公。

**公司背景：** 成立于2024年，入选YC S24，旨在通过AI代理自动化医疗计费流程，专注规模达140亿美元的诊室RCM市场。

---

## 24. 新型不锈钢可在海水制氢环境中稳定运行

**原文标题**: New stainless steel can survive conditions for hydrogen production in seawater

**原文链接**: [https://www.sciencedaily.com/releases/2026/05/260510030950.htm](https://www.sciencedaily.com/releases/2026/05/260510030950.htm)

**摘要：**

香港大学研究人员开发出一种新型“超级钢”（SS-H2），可在海水制绿氢所需的严苛条件下抗腐蚀。与传统不锈钢因单一氧化铬保护层而在高电位下失效不同，SS-H2采用“顺序双重钝化”机制：先形成标准铬基防护层，随后在约720毫伏时意外构建出第二层锰基保护层，使其能承受高达1700毫伏的超高电位。

这一突破意义重大——此前锰被认为会削弱耐腐蚀性。新钢材性能堪比目前氢电解槽中昂贵的钛基组件，但成本仅为后者的约四十分之一，有望大幅降低PEM电解槽等系统中结构材料的费用。

该发现发表于2023年《今日材料》，已走出实验室：相关专利获得授权，并与中国大陆一家工厂合作生产了数吨SS-H2线材。尽管将这种材料转化为电解槽所需的网材、泡沫等最终产品仍面临挑战，但该创新为利用丰富海水规模化生产绿氢提供了一条前景广阔的经济路径。

---

## 25. 《珍藏Fisher-Price Pixter》

**原文标题**: Preserving Fisher-Price Pixter

**原文链接**: [https://dmitry.gr/?r=05.Projects&proj=37.%20Pixter](https://dmitry.gr/?r=05.Projects&proj=37.%20Pixter)

本文完整记录了Fisher-Price Pixter系列儿童绘图掌机的逆向工程、文档整理、模拟仿真与数字保存工作，涵盖Pixter、Pixter Color、Pixter Multimedia、Pixter Plus及Pixter 2.0等型号。

作者首先解析了Pixter Color的硬件架构：采用夏普LH75411 ARM7系统级芯片（因严苛成本控制而取消缓存、MMU与MPU），配备128KB SRAM及两块覆晶封装芯片。核心挑战在于从无标识的芯片中提取ROM数据。通过保持系统级芯片复位状态、解焊三个控制引脚并利用卡槽暴露的地址/数据线，作者成功转储了2MB的ROM数据。

分析显示ROM包含ARM代码，但游戏卡带几乎没有存储可执行代码——游戏实际运行在由ROM解释执行的定制16位虚拟机（VM）上。作者系统记录了该虚拟机的指令集（A至M型）、卡带头部格式、内存分页机制、专用旋律芯片驱动的音频播放系统及电阻式触摸屏交互逻辑。

文章还涵盖了：
- 全部已知游戏的数字保存（25款经典版、32款彩色版、9款多媒体版）
- 各款Pixter机型的模拟实现
- 卡带通信采用的BEX总线协议
- 存档图像与音频文件的格式标准
- 卡带及转换器的引脚定义

作者强调这是针对Pixter平台的首份完整技术文档，推翻了此前"不存在模拟器"的论断。所有反汇编代码、模拟器程序及保存的游戏文件均已开放下载。该项目还附带实现了将PalmOS移植至Pixter Color的衍生成果。

---

## 26. 我将数字业务迁移至欧洲

**原文标题**: I moved my digital stack to Europe

**原文链接**: [https://monokai.com/articles/how-i-moved-my-digital-stack-to-europe/](https://monokai.com/articles/how-i-moved-my-digital-stack-to-europe/)

**总结：**

作者出于对数字主权、数据控制及司法管辖不确定性的担忧，将个人及企业的数字基础设施迁移至欧洲服务商。主要迁移包括：

- **分析工具：** Google Analytics → 自建Matomo（符合GDPR，但增加维护成本）
- **邮箱：** Google Workspace → Proton Mail（瑞士加密邮箱，但筛选功能有限且仅限三个自定义域名）
- **密码管理：** 1Password → Proton Pass（端到端加密，与Proton生态集成）
- **计算与存储：** DigitalOcean/AWS → Scaleway（兼容S3协议，显示碳排放量，迁移耗时一周以上通过rclone完成）
- **备份：** Backblaze → OVHcloud（冷存储更便宜，但控制面板复杂）
- **事务性邮件：** SendGrid → Lettermint（精简且性价比高，但集成较少）
- **错误追踪：** Sentry → 自建Bugsink（基础功能齐全，迁移无摩擦，支持Sentry SDK）
- **AI API：** OpenAI → Mistral（巴黎公司，开源权重模型，简单任务质量持平）

**例外情况**：作者因实际或功能原因保留的美国服务：Cloudflare（公共内容CDN）、Stripe（支付，迁移复杂且成本更高）、Claude Code/Qwen（AI编程，虽有管辖权问题）、GitHub（开源托管网络效应）。

**结论：** 迁移耗时两个月，摩擦可控且未发生事故。作者认为当前欧洲工具已能实现数字主权，而惯性才是主要障碍。

---

## 27. 开源抵抗：在公司时间里守护开源精神

**原文标题**: Open Source Resistance: keep OSS alive on company time

**原文链接**: [https://ossresistance.com/](https://ossresistance.com/)

本文《开源守护：在公司时间内保持开源软件活力》提出了一种实用且低阻力的策略，帮助开发者在企业环境中持续维护开源软件（OSS）。

核心信息很简单：**将开源贡献融入你的带薪工作日。** 无需为新的副业项目寻求批准，而是专注于维护你的公司已在使用的开源依赖项。文章概述了三项具体行动：

1. **审核拉取请求（PRs）：** 积极审核并批准针对团队所依赖的开源库的合法贡献。
2. **更新依赖项：** 通过升级开源软件包，保持公司自身的依赖树处于最新状态。这不仅能保护公司的技术栈，还能通过减轻上游项目的维护负担，直接为它们提供帮助。
3. **提交修复：** 当你在工作中使用的开源工具遇到错误或问题时，在工作时间进行修复。由此产生的补丁将使你的雇主（获得更好的稳定性）和更广泛的开源社区两者受益。

关键的洞见在于，维护开源软件的健康状态并不需要庞大的新项目或外部倡导。它需要一种思维模式的转变——从把开源视为自愿的周末活动，转变为承认它是负责任的职业软件工程的核心组成部分。文章倡导的理念是：**“每日微小的推进，胜过从未执行的宏大计划。”**最终目标是通过让开源维护成为你日常工作中正常、被期待且合理的一部分，来守护公共资源。

---

## 28. 秀HN：Needle：我们将Gemini工具调用蒸馏成26M参数模型

**原文标题**: Show HN: Needle: We Distilled Gemini Tool Calling into a 26M Model

**原文链接**: [https://github.com/cactus-compute/needle](https://github.com/cactus-compute/needle)

**概述：**

Needle是一个从Gemini 3.1蒸馏而来的、拥有2600万参数的“简单注意力网络”，专为消费设备上的单次函数调用而设计。该模型采用d=512、8H/4KV配置，BPE=8192，并共享嵌入层与线性层，包含8个解码器层和12个编码器层。它使用16个TPU v6e（耗时27小时）在200B tokens上进行了预训练，并在2B tokens的函数调用数据（耗时45分钟）上进行了后训练。

在生产环境中，Needle通过Cactus基础设施实现了每秒6000 tokens的预填充速度和每秒1200 tokens的解码速度。其权重、数据集生成代码和架构完全开源。在个人AI的单次工具调用基准测试中，Needle超越了FunctionGemma-270m、Qwen-0.6B、Graninte-350m和LFM2.5-350m等更大规模的模型，不过作者指出这些更大的模型拥有更广泛的对话能力。

主要特性包括：用于测试和针对自定义工具进行微调的网络UI操作台、用于推理的Python API，以及用于训练、评估和数据生成的CLI工具。微调可在Mac/PC上本地运行。该项目旨在重新定义适用于手机、手表和眼镜的微型AI。作者承认小型模型可能不够稳定，并建议针对特定用例进行微调。

---

## 29. 无启发式确定性全静态完整二进制翻译

**原文标题**: Deterministic Fully-Static Whole-Binary Translation Without Heuristics

**原文链接**: [https://arxiv.org/abs/2605.08419](https://arxiv.org/abs/2605.08419)

**摘要：**

本文介绍Elevator，一种新颖的二进制翻译器，可将整个x86-64可执行文件静态转换为AArch64架构，无需调试信息、源代码或关于代码布局的启发式假设。与依赖运行时回退或猜测来处理代码与数据解码问题的现有系统不同，Elevator系统性地考虑二进制文件中每个字节的所有可能解释（作为数据、操作码或操作数），并为所有可行解释生成独立的控制流路径，仅剪枝会导致异常终止的路径。

该翻译过程使用基于源ISA高层描述的可组合代码"瓦片"，形成灵活的框架。该方法具有确定性，能生成完整自包含的二进制文件，可信计算基中不包含任何运行时组件。主要权衡是显著的代码体积膨胀，但关键优势在于输出二进制文件即为将要运行的精确代码，支持部署前测试、验证、认证和加密签名。

通过对包括整个SPECint 2006基准套件在内的多样化真实世界二进制文件进行评估，Elevator证明静态全程序二进制翻译既能可靠又具实用性，其性能达到或优于QEMU用户态JIT模拟。

---

## 30. 当重新定义遗传力时，人类寿命的遗传力约为50%

**原文标题**: Heritability of human life span is ~50% when heritability is redefined

**原文链接**: [https://dynomight.net/lifespan/](https://dynomight.net/lifespan/)

**摘要：**

本文批评了《科学》杂志上一篇声称人类寿命遗传率约为50%的论文，该结论是在调整非衰老相关死亡后重新解释得出的。作者指出，标准双胞胎研究估算的遗传率为23%–35%。该论文构建了一个数学模型，模拟在一个无人死于事故、谋杀、药物过量或传染病（称为“外因死亡”）的假设世界中的寿命。通过降低模型中的外因死亡率，遗传率升至46%–57%。

作者澄清，这并未揭示“真实”遗传率。遗传率是一个取决于现实条件的权变统计量，而非固定的生物学常数。该论文仅表明，若移除意外死亡的随机性，遗传因素将占据寿命变异的更大比例。该模型巧妙地估算了遗传率随现代死亡率降低可能发生的变化，但作者批评论文采用了《科学》杂志典型的含混晦涩术语风格，掩盖了方法论。核心观点：减少环境随机性会机械性地抬高遗传率，若将标题解读为已修正的事实而非条件性预测，则具有误导性。

---

