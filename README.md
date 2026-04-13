# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-04-13.md)

*最后自动更新时间: 2026-04-13 20:36:35*
## 1. 有人购买了30个WordPress插件并在其中全部植入了后门。

**原文标题**: Someone Bought 30 WordPress Plugins and Planted a Backdoor in All of Them

**原文链接**: [https://anchor.host/someone-bought-30-wordpress-plugins-and-planted-a-backdoor-in-all-of-them/](https://anchor.host/someone-bought-30-wordpress-plugins-and-planted-a-backdoor-in-all-of-them/)

一位名为"Kris"的买家于2025年初在Flippa市场上收购了Essential Plugin的全部产品组合（包含超过30款WordPress插件）。数月后，新所有者向这些插件注入了精密的后门程序。该后门于2025年8月添加，潜伏八个月后于2026年4月激活，会暗中向网站的`wp-config.php`文件注入恶意代码，仅对搜索引擎爬虫提供SEO垃圾内容。

2026年4月7日，WordPress.org插件团队发现此次攻击并永久关闭了所有受影响插件。虽然强制更新消除了插件的回连机制，但并未清除已注入网站文件的恶意代码。该事件与以往的供应链攻击如出一辙，暴露出WordPress生态系统的关键漏洞：插件所有权转移缺乏审核机制，使得恶意行为者能够将受信任软件武器化。

作者提供了多个受感染插件的修复版本，并建议所有网站所有者检查是否安装这些插件，及时修补或移除，同时检测`wp-config.php`文件中是否存在未授权的代码注入。

---

## 2. 无事发生：Polymarket机器人，专在非体育市场持续买入“否”选项

**原文标题**: Nothing Ever Happens: Polymarket bot that always buys No on non-sports markets

**原文链接**: [https://github.com/sterlingcrispin/nothing-ever-happens](https://github.com/sterlingcrispin/nothing-ever-happens)

本文介绍了一款名为“无事发生”的自动化Python交易机器人，专为Polymarket预测平台设计。其核心策略是在非体育类的是/否市场中，当“否”选项价格低于设定阈值时持续买入。

该机器人采用严格的安全模式：仅当三个特定环境变量全部设置为启用实盘交易时才会执行真实交易，否则默认进行模拟交易。实盘交易还需私钥和数据库URL等额外密钥。

代码库按运行时模块、交易所客户端、仪表盘和恢复系统进行组织，可部署于Heroku等平台，并以Web服务形式运行（而非后台任务）。代码仓库包含用于数据库检查和日志解析等操作的辅助脚本，并强调该工具仅供娱乐使用，不提供任何担保。

---

## 3. 一切未来的归宿皆是谎言，我猜：安全篇

**原文标题**: The Future of Everything Is Lies, I Guess: Safety

**原文链接**: [https://aphyr.com/posts/417-the-future-of-everything-is-lies-i-guess-safety](https://aphyr.com/posts/417-the-future-of-everything-is-lies-i-guess-safety)

本文认为，大型语言模型（LLM）和人工智能系统存在严重且固有的安全风险，这些风险无法被可靠地缓解。

作者指出，“对齐”（即确保人工智能安全）从根本上存在缺陷。由于模型缺乏内在的道德准则，安全性依赖于昂贵且可选的训练过程。而创建未对齐的“恶意”模型所需的硬件、软件、数据和人力等障碍正在迅速消失，这意味着任何安全的模型很快都将出现危险的对应版本。

即使是对齐的模型也是安全噩梦。它们无法安全地区分可信与不可信的输入，使得“提示注入”攻击不可避免。让大型语言模型访问私人数据或具备破坏性能力（如删除文件）是极其不负责任的，因为它们常常误解指令并造成损害。作者批评了将强大且无监督的人工智能“智能体”集成到关键系统中的趋势。

此外，人工智能降低了复杂攻击的成本。它可以自动发现软件漏洞，并实现欺诈的新规模——从使用生成图像伪造保险索赔到个性化的语音克隆诈骗。这将削弱社会对音视频证据的信任，并增加每个人的成本。

结论是悲观的：人工智能行业在追求能力的竞赛中，使得危险工具的构建和部署变得更加容易，从而创造了一个安全性在设计上就被妥协的未来。

---

## 4. 如何将Firefox构建速度提升17%

**原文标题**: How to make Firefox builds 17% faster

**原文链接**: [https://blog.farre.se/posts/2026/04/10/caching-webidl-codegen/](https://blog.farre.se/posts/2026/04/10/caching-webidl-codegen/)

本文介绍了如何利用Buildcache的Lua插件系统将Firefox构建速度提升17%。关键改进在于缓存了WebIDL代码生成步骤——该步骤将.webidl文件转换为C++代码，此前即使在确定性执行的情况下，每次全量构建都会重复运行这一过程。

解决方案仅需对Makefile进行小幅修改，使Buildcache能够封装WebIDL生成环节的Python命令。通过编写自定义Lua插件，明确告知Buildcache哪些是输入文件（.webidl文件和Python脚本）和输出文件（生成的头文件和.cpp文件），从而实现结果缓存。

基准测试显示：启用该插件后，热缓存重建仅需1分12秒，而无缓存的完整构建需要5分35秒。这对开发者的迭代效率是显著提升。

文章强调这仅是第一步：Buildcache灵活的插件系统可应用于Firefox构建流程中其他确定性代码生成任务以获取更大收益。文中同时提供了启用该功能的配置说明。

---

## 5. 为整个Cloudflare构建命令行界面

**原文标题**: Building a CLI for All of Cloudflare

**原文链接**: [https://blog.cloudflare.com/cf-cli-local-explorer/](https://blog.cloudflare.com/cf-cli-local-explorer/)

Cloudflare正在将其Wrangler CLI重构为覆盖整个平台的综合命令行工具，目前以技术预览版形式提供（`npx cf`）。此举旨在为所有Cloudflare产品提供统一的CLI命令，以解决当前许多产品缺乏CLI支持的问题，这对开发者和AI代理至关重要。

为实现这一目标，Cloudflare创建了基于TypeScript的新型架构系统，其不仅涵盖OpenAPI规范，还能定义API、CLI命令及配置。该系统支持一致且自动化的接口生成（包括CLI、SDK、绑定和文档），并通过强制命名规范和默认设置提升人类用户与AI代理的使用体验。

与此同时，Cloudflare推出了开放测试版Local Explorer工具，用于在开发过程中内省和管理模拟本地资源（如KV、R2、D1）。该工具提供与Cloudflare API镜像的本地API，使得本地与远程操作完全一致。这既增强了本地开发体验，也确保带`--local`标志的CLI命令能无缝操作本地数据。

目前Cloudflare正在征集用户对`cf`预览版的早期反馈，以确定在新版统一CLI中优先实现哪些产品与功能。

---

## 6. Servo现已可在crates.io上获取

**原文标题**: Servo is now available on crates.io

**原文链接**: [https://servo.org/blog/2026/04/13/servo-0.1.0-release/](https://servo.org/blog/2026/04/13/servo-0.1.0-release/)

Servo团队已在crates.io上发布`servo`库的0.1.0版本，这标志着其首次正式作为可嵌入库提供。该版本是自2025年10月以来的第五个GitHub版本，代表着项目成熟度的重要里程碑。

关键信息包括：
*   此次发布允许开发者将Servo作为库使用，但演示浏览器`servoshell`不会发布至crates.io。
*   版本号（0.1.0）表明这并非1.0版本，因为该里程碑的标准仍在讨论中。但这体现了团队对嵌入API稳定性的信心增强。
*   Servo现在将提供长期支持（LTS）版本以及常规月度更新。LTS版本每年更新两次，专为偏好稳定发布周期的嵌入者设计，提供计划性重大升级、安全更新和迁移指南；而月度版本可能包含破坏性变更。

团队因对该版本重要性的兴奋，提前于常规月度博客公告了此消息。

---

## 7. Show HN：Ithihāsas – 一款印度史诗角色探索器，几小时内搭建完成

**原文标题**: Show HN: Ithihāsas – a character explorer for Hindu epics, built in a few hours

**原文链接**: [https://www.ithihasas.in](https://www.ithihasas.in)

这是一则关于“Ithihāsas”的Show HN公告，这是一个用于探索印度史诗《罗摩衍那》和《摩诃婆罗多》中人物与王朝的交互式网络工具。

该工具快速构建（仅数小时完成），提供多种可视化方式，包括用于展示关系的力导向图、用于呈现世系的王朝树，以及用于揭示关联的弦图。用户可点击查看详细的人物档案。

该项目旨在通过现代交互视角呈现古老智慧，使这些神圣文本中复杂的叙事与庞大角色群更易于探索和研究。

---

## 8. 追踪LLVM RISC-V中25%性能回归的根源

**原文标题**: Tracking down a 25% Regression on LLVM RISC-V

**原文链接**: [https://blog.kaving.me/blog/tracking-down-a-25-regression-on-llvm-risc-v/](https://blog.kaving.me/blog/tracking-down-a-25-regression-on-llvm-risc-v/)

本文详细调查了在RISC-V目标平台上使用LLVM对比GCC时出现的25%性能回归问题。该问题可追溯至近期一项优化`isKnownExactCastIntToFP`函数的LLVM提交。这项改动使得`InstCombine`能够将`fpext(sitofp x to float) to double`这类序列直接折叠为`uitofp x to double`。然而，该优化意外破坏了`visitFPTrunc`中依赖`fpext`将`double`除法后续转换回`float`的窄化转换流程。

其后果是LLVM在关键循环中生成延迟33周期的`fdiv.d`指令，而非原本19周期的`fdiv.s`指令，导致显著性能下降。作者的修复方案通过扩展`getMinimumFPType`函数的范围分析能力，使其能识别`fptrunc(uitofp x double) to float`可安全缩减为`uitofp x to float`，从而恢复了关键的窄化优化，消除了该基准测试中的性能差距。

---

## 9. Obsidian入门指南

**原文标题**: An Introduction to Obsidian

**原文链接**: [https://bryanhogan.com/blog/obsidian-introduction](https://bryanhogan.com/blog/obsidian-introduction)

Obsidian是一款功能强大、本地优先的笔记应用，使用纯Markdown文件，让用户完全拥有并掌控自己的数据。其核心优势在于灵活性与可扩展性，用户可通过社区插件按需定制，同时保持简洁的文件夹结构。

文章重点阐述了其关键优势：采用开放格式、避免平台锁定，以及内部链接（`[[ ]]`）等强大功能。建议新用户从简入手，避免被网络教程的复杂性干扰，聚焦实际需求而非过度优化工具。

作者的个人使用场景包括内容创作、知识管理、项目追踪和媒体记录，采用自下而上、受卡片盒笔记法启发的系统，仅使用少量插件。同步方面采用Google Drive并备份至GitHub，同时指出内置的图谱视图和画布等功能虽有趣，但并非日常必需。

最后，文章将Obsidian置于更广阔的笔记工具生态中，与Notion（协作）、Logseq（日志）等工具进行比较，并提及其他优质替代方案。

---

## 10. 可视化CPU流水线技术（2024）

**原文标题**: Visualizing CPU Pipelining (2024)

**原文链接**: [https://timmastny.com/blog/visualizing-cpu-pipelining/](https://timmastny.com/blog/visualizing-cpu-pipelining/)

本文阐述了CPU流水线的核心概念，重点解析五级MIPS流水线模型。文章首先说明流水线相较于单周期设计如何提升效率，同时指出其带来的数据冒险与控制冒险等挑战。

文中详细阐述了解决这些问题的关键机制：**指令译码**产生的元数据通过流水线寄存器传递，为冒险检测提供基础；**冒险检测单元（HDU）**能识别数据依赖关系，可通过暂停流水线（插入“气泡”）确保执行正确性；而**转发单元（FU）**则能将指令在后续阶段（EX或MEM）产生的中间结果直接回传给需要该数据的前级阶段，从而避免多数流水线暂停。

文章进一步将这些原理应用于**分支（控制冒险）**场景：解释了“预测分支不跳转”的简单策略与**分支延迟槽**概念（编译器在此位置安排必执行的指令），最后引入**动态分支预测**机制——通过分支预测单元（BPU）推测分支走向，并由解析单元在预测错误时采用类似转发与暂停的逻辑清空流水线进行修正。

全文贯穿的核心思想在于：元数据传递、流水线暂停与结果转发这些基础技术，如何通过巧妙的复用与组合，优雅地解决CPU设计中日益复杂的性能难题。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 2 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 3 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 4 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 5 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 6 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 7 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 8 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 9 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 10 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 11 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 12 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 13 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 14 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 15 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 16 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 17 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 18 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 19 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 20 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 21 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 22 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 23 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 24 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 25 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 26 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 27 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 28 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 29 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 30 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 31 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 32 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 33 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 34 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 35 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 36 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 37 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 38 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 39 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 40 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 41 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 42 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 43 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 44 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 45 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 46 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 47 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 48 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 49 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 50 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 51 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 52 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 53 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 54 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 55 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 56 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 57 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 58 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 59 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 60 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 61 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 62 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 63 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 64 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 65 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 66 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 67 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 68 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 69 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 70 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 71 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 72 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 73 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 74 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 75 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 76 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 77 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 78 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 79 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 80 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 81 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 82 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 83 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 84 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 85 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 86 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 87 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 88 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 89 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 90 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 91 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 92 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 93 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 94 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 95 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 96 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 97 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 98 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 99 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 100 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 101 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 102 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 103 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 104 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 105 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 106 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 107 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 108 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 109 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 110 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 111 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 112 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 113 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 114 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 115 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 116 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 117 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 118 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 119 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 120 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 121 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 122 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 123 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 124 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 125 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 126 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 127 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 128 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 129 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 130 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 131 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 132 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 133 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 134 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 135 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 136 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 137 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 138 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 139 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 140 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 141 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 142 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 143 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 144 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 145 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 146 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 147 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 148 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 149 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 150 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 151 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 152 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 153 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 154 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 155 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 156 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 157 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 158 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 159 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 160 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 161 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 162 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 163 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 164 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 165 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 166 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 167 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 168 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 169 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 170 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 171 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 172 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 173 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 174 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 175 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 176 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 177 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 178 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 179 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 180 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 181 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 182 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 183 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 184 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 185 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 186 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 187 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 188 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 189 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 190 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 191 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 192 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 193 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 194 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 195 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 196 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 197 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 198 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 199 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 200 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 201 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 202 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 203 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 204 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 205 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 206 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 207 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 208 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 209 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 210 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 211 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 212 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 213 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 214 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 215 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 216 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 217 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 218 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 219 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 220 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 221 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 222 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 223 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 224 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 225 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 226 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 227 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 228 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 229 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 230 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 231 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 232 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 233 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 234 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 235 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 236 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 237 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 238 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 239 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 240 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 241 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 242 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 243 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 244 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 245 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 246 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 247 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 248 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 249 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 250 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 251 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 252 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 253 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 254 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 255 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 256 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 257 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 258 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 259 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 260 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 261 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 262 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 263 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 264 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 265 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 266 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 267 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 268 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 269 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 270 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 271 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 272 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 273 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 274 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 275 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 276 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 277 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 278 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 279 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 280 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 281 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 282 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 283 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 284 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 285 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 286 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 287 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 288 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 289 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 290 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 291 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 292 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 293 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 294 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 295 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 296 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 297 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 298 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 299 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 300 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 301 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 302 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 303 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 304 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 305 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 306 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 307 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 308 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 309 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 310 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 311 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 312 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 313 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 314 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 315 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 316 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 317 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 318 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 319 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 320 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 321 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 322 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 323 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 324 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 325 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 326 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 327 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 328 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 329 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 330 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 331 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 332 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 333 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 334 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 335 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 336 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 337 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 338 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 339 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 340 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 341 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 342 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 343 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 344 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 345 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 346 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 347 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 348 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 349 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 350 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 351 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 352 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 353 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 354 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 355 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 356 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 357 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 358 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 359 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 360 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 361 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 362 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 363 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 364 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 365 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 366 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 367 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 368 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 369 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 370 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 371 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 372 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 373 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 374 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 375 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 376 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 377 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 378 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 379 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 380 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 381 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 382 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 383 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 384 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 385 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 386 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 387 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
