# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-04-30.md)

*最后自动更新时间: 2026-04-30 20:32:40*
## 1. 马克·克莱因如何向电子前沿基金会揭露641A房间【书摘】

**原文标题**: How Mark Klein told the EFF about Room 641A [book excerpt]

**原文链接**: [https://thereader.mitpress.mit.edu/the-whistleblower-who-uncovered-the-nsas-big-brother-machine/](https://thereader.mitpress.mit.edu/the-whistleblower-who-uncovered-the-nsas-big-brother-machine/)

无法访问该文章链接。

---

## 2. 《沙虫》主题恶意软件现身PyTorch Lightning AI训练库

**原文标题**: Shai-Hulud Themed Malware Found in the PyTorch Lightning AI Training Library

**原文链接**: [https://semgrep.dev/blog/2026/malicious-dependency-in-pytorch-lightning-used-for-ai-training/](https://semgrep.dev/blog/2026/malicious-dependency-in-pytorch-lightning-used-for-ai-training/)

在供应链攻击中，流行PyPI包`lightning`的两个恶意版本（2.6.2和2.6.3）于2026年4月30日被发布。一旦导入，该恶意软件会部署混淆的JavaScript载荷，窃取凭证、令牌、云机密并污染GitHub仓库。

该攻击跨生态系统交叉污染：通过PyPI进入，但通过向受害者有权发布的任意包中注入投放器扩散至npm。数据外泄使用四种渠道：向C2服务器发送HTTPS POST请求、GitHub提交搜索死信、攻击者控制的以沙丘主题命名的公共仓库，以及将窃取数据推送至受害者自己的仓库。

目标包括文件系统令牌、环境变量、GitHub Actions密钥（通过进程内存转储）以及所有主要云提供商（AWS、Azure、GCP）。值得注意的是，该恶意软件在**Claude Code**（`.claude/settings.json`）和**VS Code**（`.vscode/tasks.json`）中均安装了持久化钩子，成为首批滥用Claude Code钩子系统的真实世界攻击之一。它还会注入恶意GitHub Actions工作流，在每次推送时转储仓库密钥。

**入侵指标：** 带有`EveryBoiWeBuildIsAWormyBoi`前缀的提交消息、描述为"A Mini Shai-Hulud has Appeared"的仓库，以及意外的`.claude/`或`.vscode/`目录。任何导入这些版本的机器均应视为已完全攻陷，所有令牌和凭证需立即轮换。

---

## 3. CopyFail漏洞未向Gentoo开发者披露

**原文标题**: CopyFail was not disclosed to Gentoo developer

**原文链接**: [https://www.openwall.com/lists/oss-security/2026/04/30/10](https://www.openwall.com/lists/oss-security/2026/04/30/10)

**概要：**

此封oss-security邮件线程讨论了CVE-2026-31431，这是一个名为“CopyFail”的严重Linux内核权限提升漏洞，该漏洞自内核4.14版本（2017年）引入，并影响直至修复前的所有后续版本。

**要点：**
- **影响：** 一个在内核v4.14版本（提交72548b093ee）中引入的严重本地权限提升（获取root权限）漏洞。
- **修复：** 已在6.18.22、6.19.12和7.0内核中应用修复，但该修复无法干净地回溯移植到较旧的长期支持内核（6.12、6.6、6.1、5.15、5.10）。
- **披露问题：** 该漏洞**未通过**linux-distros邮件列表向各发行版进行**预先披露**，导致Gentoo等软件包维护者未收到任何提前警告。
- **Gentoo的回应：** Gentoo开发者Sam James分享了一个禁用`authencesn`模块的临时补丁作为缓解措施，并承认鉴于回溯移植的困难，这是“两害相权取其轻”。
- **背景：** 该邮件凸显了Linux内核问题在协调漏洞披露方面持续存在的挑战，特别是针对影响遗留稳定分支的严重缺陷。

---

## 4. 我用F#编写了一个Game Boy模拟器

**原文标题**: I built a Game Boy emulator in F#

**原文链接**: [https://nickkossolapov.github.io/fame-boy/building-a-game-boy-emulator-in-fsharp/](https://nickkossolapov.github.io/fame-boy/building-a-game-boy-emulator-in-fsharp/)

**摘要：**  
作者在 F# 中构建了一个名为“Fame Boy”的 Game Boy 模拟器，以深入理解计算机硬件。该模拟器采用模块化架构，核心通过帧缓冲、音频缓冲及两个函数（`stepEmulator()` 与 `getJoypadState()`）与前端通信，支持桌面端和网页端运行。  

CPU 模拟借助 F# 类型系统进行领域建模，通过可区分联合将 512 条操作码缩减为 58 条指令。尽管作者为性能考虑使用了可变性（与其纯函数式 CHIP-8 模拟器不同），但利用 F# 的函数式特性处理标志位，构建了简单可组合的函数，使性能提升 10%。  

关键实现细节包括：  
- **步进函数** 按顺序同步 CPU、定时器、串行、APU 和 PPU 组件  
- **PPU** 是最具挑战的部分；作者从瓦片/背景渲染入手，随后实现完整精灵支持，但采用扫描线渲染而非周期精确的像素 FIFO  
- **手柄** 因缓存问题导致细微 Bug，最终通过仅在 CPU 读取时更新解决  
- **音频** 作为事后补充，实现较晚  
- 测试采用从技术规格生成的 AI 测试用例，遵循 TDD 方法论  

作者指出大多数游戏运行良好，但部分利用边缘硬件定时的游戏无法正确执行。

---

## 5. 比利时停止拆除核电站

**原文标题**: Belgium stops decommissioning nuclear power plants

**原文链接**: [https://dpa-international.com/general-news/urn:newsml:dpa.com:20090101:260430-930-14717/](https://dpa-international.com/general-news/urn:newsml:dpa.com:20090101:260430-930-14717/)

比利时首相巴特·德韦弗于2026年4月30日宣布，该国决定停止拆除其核电站。政府将与运营商ENGIE谈判，将这些核电站国有化，旨在实现“安全、可负担且可持续的能源”，减少对化石燃料进口的依赖。ENGIE已签署意向书，就潜在收购全部七座反应堆、相关人员、子公司及负债（包括退役义务）进行独家谈判。预计将于10月前达成初步协议。

比利时原计划在2025年前逐步淘汰核能，但因政治辩论和能源安全担忧导致的延误，该国去年通过议会投票终止了淘汰计划。德韦弗政府还计划建造新的反应堆。目前该国在两地共拥有七座反应堆，其中三座已关闭。该决定旨在应对比利时严重依赖天然气进口以及扩大可再生能源面临的挑战。

---

## 6. 如果您的提交中提到“OpenClaw”，Claude Code 将拒绝请求或收取额外费用。

**原文标题**: Claude Code refuses requests or charges extra if your commits mention "OpenClaw"

**原文链接**: [https://twitter.com/theo/status/2049645973350363168](https://twitter.com/theo/status/2049645973350363168)

**概要：**

本文来自X（原Twitter），描述了Anthropic公司AI编程助手Claude Code的一个疑似问题。根据标题及相关用户报告，当Claude Code检测到用户的Git提交信息中包含“OpenClaw”一词时，要么拒绝完成请求，要么额外收取费用。

核心指控是，该AI工具会程序化扫描提交信息元数据，并对涉及“OpenClaw”的项目施加区别对待——要么阻止功能，要么增加成本。由于JavaScript被禁用，无法查看嵌入的帖子内容，该帖很可能提供了更多用户证词或此行为的截图。

然而，该页面存在严重的无障碍访问障碍：它需要JavaScript来渲染内容，而用户的浏览器禁用了它。因此，包括实际推文串及对这些指控的任何验证在内的完整背景信息均无法获取。可见文本仅为X标准的后备错误页面（帮助中心链接、隐私政策等）。

简言之，文章指向一个潜在争议：一款AI编码工具可能因用户在版本控制历史中提及特定术语而对其进行惩罚，但主要证据却被技术需求所隐藏。用户若不启用JavaScript或更换浏览器，便无法确认该指控的真实性。

---

## 7. 美国参议员投票禁止自身参与预测市场交易

**原文标题**: U.S. Senators Vote to Ban Themselves from Trading on Prediction Markets

**原文链接**: [https://www.wsj.com/politics/policy/senators-vote-to-ban-themselves-from-trading-on-prediction-markets-ae4535dd](https://www.wsj.com/politics/policy/senators-vote-to-ban-themselves-from-trading-on-prediction-markets-ae4535dd)

**无法访问文章链接。** 该网址指向一篇《华尔街日报》付费文章，无法直接建立连接查看完整内容。

如果您能提供文章原文或非付费来源，我很乐意为您进行摘要总结。

---

## 8. 炼油厂如何运作

**原文标题**: How an oil refinery works

**原文链接**: [https://www.construction-physics.com/p/how-an-oil-refinery-works](https://www.construction-physics.com/p/how-an-oil-refinery-works)

**摘要：炼油厂的工作原理**

炼油厂将原油——一种复杂的碳氢化合物混合物——转化为汽油、柴油和石化产品等可用产品。核心工艺是常压蒸馏，加热后的原油蒸汽在蒸馏塔中上升；不同分子根据沸点在不同高度冷凝，分离成气体、石脑油和重质残渣等馏分。

重质馏分通过减压蒸馏进一步处理以防止裂化，随后通常送至催化裂化装置，利用热能和催化剂将大分子裂解为更轻、更有价值的产品（如汽油）。焦化装置通过热裂化将最重的残渣转化为轻质产品和固体焦炭。其他关键工艺包括催化重整（生产汽油组分）、异构化（改变分子结构）、加氢处理（去除杂质）和加氢裂化（结合加氢处理与裂化）。

炼油厂复杂程度各异；简单型可能仅进行蒸馏，而复杂型则集成多种工艺。雪佛龙里士满炼油厂是一家中等规模的美国设施，具备蒸馏、裂化、重整和加氢处理能力。全球范围内，炼油厂日处理量可超过百万桶。美国拥有132座运营中的炼油厂，大多位于墨西哥湾沿岸，总产能超过每天1800万桶。这些设施对现代能源和制造业至关重要，供应全球30%的能源和90%的化工原料。

---

## 9. 持久队列、流、发布/订阅及定时调度器——尽在你的SQLite文件中

**原文标题**: Durable queues, streams, pub/sub, and a cron scheduler – inside your SQLite file

**原文链接**: [https://honker.dev/](https://honker.dev/)

**Honker 简介：SQLite 中的持久队列、流与发布/订阅**

Honker 是一个 SQLite 可加载扩展，它将 Postgres 风格的发布/订阅、任务队列和事件流直接集成到 SQLite 数据库文件中。它无需 Redis 或 Celery 等独立代理，通过允许队列操作（例如 `enqueue`）与业务写入（例如 `INSERT INTO orders`）在同一个事务中原子性提交，解决了“双重写入”问题。如果事务回滚，队列任务也随之回滚。

该扩展每毫秒对 SQLite 的 `PRAGMA data_version`（约 3 微秒的读取操作）进行轻量级轮询，以检测跨进程的变更。每个数据库使用单个轮询线程服务于所有订阅者，无需内核文件监视器或守护进程即可实现约 0.7 毫秒（p50）的跨进程唤醒延迟。

Honker 可作为纯 SQLite 扩展使用，支持 `load_extension` 的任何语言均可调用，并已为 Python、Node.js、Rust、Go、Ruby、Bun、Elixir 和 C++ 提供绑定。工作者通过 `claim` 调用消费任务，系统支持重试、超时和定时调度。

该项目灵感来源于 pg_notify、Huey、pg-boss 和 Oban，主要面向以 SQLite 作为主要数据存储且运维简洁性至关重要的应用场景。

---

## 10. 反向工程《模拟大厦》

**原文标题**: Reverse Engineering SimTower

**原文链接**: [https://phulin.me/blog/simtower](https://phulin.me/blog/simtower)

**摘要：**

作者详细介绍了其逆向工程并利用大语言模型（LLM）复刻经典游戏《模拟大厦》现代克隆版的项目。

**第一阶段：静态分析（失败）：** 使用名为 "reaper" 的 Ghidra 框架，LLM 分析了游戏二进制文件。由于三个关键问题而失败：AI 过早做出错误结论且难以放弃；使用模糊抽象的术语而非精确描述；始终未能彻底记录函数和变量。输出结果不够详细或精确，无法用于净室重新实现。

**第二阶段：动态分析（成功）：** 策略转变后，作者使用 Claude Code 在 30 分钟内构建了带有模拟 Windows 3.1 API 调用的 Unicorn 模拟器。随后用小型塔楼配置运行模拟二进制文件，每几个游戏周期记录一次状态轨迹。通过将这些轨迹与重新实现进行比较，LLM 能够自主爬坡修正差异（例如 RNG 奇偶校验），其中一次自主运行在 8 小时内修复了 5 个错误。

**关键经验：** LLM 需要闭环验证系统（动态反馈），而非抽象静态分析。该项目使用了庞大的 token 量（需 $200/月套餐）。作者总结，LLM 如今使将废弃机器码转化为现代可维护软件具有经济可行性，提供了复活数十年遗留代码的工具。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 2 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 3 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 4 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 5 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 6 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 7 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 8 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 9 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 10 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 11 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 12 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 13 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 14 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 15 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 16 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 17 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 18 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 19 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 20 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 21 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 22 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 23 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 24 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 25 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 26 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 27 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 28 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 29 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 30 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 31 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 32 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 33 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 34 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 35 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 36 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 37 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 38 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 39 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 40 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 41 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 42 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 43 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 44 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 45 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 46 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 47 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 48 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 49 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 50 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 51 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 52 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 53 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 54 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 55 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 56 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 57 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 58 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 59 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 60 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 61 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 62 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 63 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 64 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 65 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 66 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 67 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 68 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 69 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 70 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 71 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 72 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 73 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 74 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 75 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 76 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 77 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 78 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 79 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 80 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 81 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 82 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 83 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 84 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 85 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 86 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 87 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 88 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 89 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 90 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 91 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 92 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 93 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 94 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 95 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 96 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 97 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 98 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 99 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 100 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 101 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 102 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 103 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 104 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 105 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 106 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 107 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 108 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 109 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 110 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 111 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 112 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 113 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 114 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 115 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 116 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 117 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 118 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 119 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 120 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 121 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 122 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 123 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 124 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 125 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 126 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 127 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 128 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 129 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 130 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 131 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 132 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 133 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 134 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 135 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 136 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 137 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 138 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 139 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 140 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 141 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 142 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 143 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 144 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 145 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 146 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 147 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 148 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 149 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 150 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 151 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 152 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 153 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 154 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 155 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 156 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 157 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 158 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 159 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 160 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 161 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 162 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 163 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 164 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 165 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 166 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 167 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 168 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 169 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 170 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 171 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 172 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 173 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 174 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 175 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 176 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 177 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 178 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 179 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 180 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 181 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 182 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 183 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 184 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 185 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 186 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 187 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 188 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 189 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 190 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 191 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 192 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 193 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 194 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 195 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 196 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 197 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 198 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 199 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 200 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 201 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 202 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 203 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 204 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 205 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 206 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 207 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 208 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 209 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 210 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 211 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 212 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 213 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 214 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 215 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 216 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 217 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 218 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 219 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 220 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 221 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 222 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 223 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 224 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 225 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 226 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 227 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 228 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 229 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 230 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 231 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 232 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 233 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 234 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 235 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 236 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 237 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 238 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 239 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 240 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 241 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 242 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 243 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 244 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 245 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 246 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 247 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 248 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 249 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 250 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 251 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 252 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 253 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 254 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 255 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 256 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 257 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 258 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 259 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 260 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 261 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 262 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 263 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 264 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 265 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 266 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 267 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 268 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 269 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 270 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 271 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 272 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 273 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 274 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 275 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 276 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 277 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 278 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 279 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 280 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 281 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 282 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 283 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 284 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 285 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 286 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 287 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 288 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 289 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 290 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 291 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 292 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 293 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 294 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 295 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 296 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 297 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 298 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 299 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 300 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 301 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 302 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 303 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 304 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 305 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 306 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 307 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 308 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 309 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 310 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 311 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 312 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 313 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 314 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 315 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 316 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 317 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 318 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 319 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 320 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 321 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 322 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 323 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 324 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 325 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 326 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 327 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 328 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 329 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 330 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 331 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 332 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 333 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 334 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 335 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 336 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 337 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 338 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 339 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 340 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 341 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 342 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 343 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 344 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 345 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 346 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 347 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 348 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 349 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 350 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 351 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 352 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 353 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 354 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 355 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 356 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 357 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 358 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 359 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 360 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 361 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 362 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 363 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 364 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 365 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 366 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 367 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 368 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 369 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 370 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 371 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 372 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 373 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 374 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 375 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 376 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 377 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 378 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 379 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 380 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 381 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 382 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 383 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 384 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 385 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 386 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 387 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 388 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 389 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 390 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 391 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 392 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 393 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 394 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 395 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 396 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 397 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 398 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 399 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 400 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 401 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 402 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 403 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 404 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
