# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-05-13.md)

*最后自动更新时间: 2026-05-13 20:32:39*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 2 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 3 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 4 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 5 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 6 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 7 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 8 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 9 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 10 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 11 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 12 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 13 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 14 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 15 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 16 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 17 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 18 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 19 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 20 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 21 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 22 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 23 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 24 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 25 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 26 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 27 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 28 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 29 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 30 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 31 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 32 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 33 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 34 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 35 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 36 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 37 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 38 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 39 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 40 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 41 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 42 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 43 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 44 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 45 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 46 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 47 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 48 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 49 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 50 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 51 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 52 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 53 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 54 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 55 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 56 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 57 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 58 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 59 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 60 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 61 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 62 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 63 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 64 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 65 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 66 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 67 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 68 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 69 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 70 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 71 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 72 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 73 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 74 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 75 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 76 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 77 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 78 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 79 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 80 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 81 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 82 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 83 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 84 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 85 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 86 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 87 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 88 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 89 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 90 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 91 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 92 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 93 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 94 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 95 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 96 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 97 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 98 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 99 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 100 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 101 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 102 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 103 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 104 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 105 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 106 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 107 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 108 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 109 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 110 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 111 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 112 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 113 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 114 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 115 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 116 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 117 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 118 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 119 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 120 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 121 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 122 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 123 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 124 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 125 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 126 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 127 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 128 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 129 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 130 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 131 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 132 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 133 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 134 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 135 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 136 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 137 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 138 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 139 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 140 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 141 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 142 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 143 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 144 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 145 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 146 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 147 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 148 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 149 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 150 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 151 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 152 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 153 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 154 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 155 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 156 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 157 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 158 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 159 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 160 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 161 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 162 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 163 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 164 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 165 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 166 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 167 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 168 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 169 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 170 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 171 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 172 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 173 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 174 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 175 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 176 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 177 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 178 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 179 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 180 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 181 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 182 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 183 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 184 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 185 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 186 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 187 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 188 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 189 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 190 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 191 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 192 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 193 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 194 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 195 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 196 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 197 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 198 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 199 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 200 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 201 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 202 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 203 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 204 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 205 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 206 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 207 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 208 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 209 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 210 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 211 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 212 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 213 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 214 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 215 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 216 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 217 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 218 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 219 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 220 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 221 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 222 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 223 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 224 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 225 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 226 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 227 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 228 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 229 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 230 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 231 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 232 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 233 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 234 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 235 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 236 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 237 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 238 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 239 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 240 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 241 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 242 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 243 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 244 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 245 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 246 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 247 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 248 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 249 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 250 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 251 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 252 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 253 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 254 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 255 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 256 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 257 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 258 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 259 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 260 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 261 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 262 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 263 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 264 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 265 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 266 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 267 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 268 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 269 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 270 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 271 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 272 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 273 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 274 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 275 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 276 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 277 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 278 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 279 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 280 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 281 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 282 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 283 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 284 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 285 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 286 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 287 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 288 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 289 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 290 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 291 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 292 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 293 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 294 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 295 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 296 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 297 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 298 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 299 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 300 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 301 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 302 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 303 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 304 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 305 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 306 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 307 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 308 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 309 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 310 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 311 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 312 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 313 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 314 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 315 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 316 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 317 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 318 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 319 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 320 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 321 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 322 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 323 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 324 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 325 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 326 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 327 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 328 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 329 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 330 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 331 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 332 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 333 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 334 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 335 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 336 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 337 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 338 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 339 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 340 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 341 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 342 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 343 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 344 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 345 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 346 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 347 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 348 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 349 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 350 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 351 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 352 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 353 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 354 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 355 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 356 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 357 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 358 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 359 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 360 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 361 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 362 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 363 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 364 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 365 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 366 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 367 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 368 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 369 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 370 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 371 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 372 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 373 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 374 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 375 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 376 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 377 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 378 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 379 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 380 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 381 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 382 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 383 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 384 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 385 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 386 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 387 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 388 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 389 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 390 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 391 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 392 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 393 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 394 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 395 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 396 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 397 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 398 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 399 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 400 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 401 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 402 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 403 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 404 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 405 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 406 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 407 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 408 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 409 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 410 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 411 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 412 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 413 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 414 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 415 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 416 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 417 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
