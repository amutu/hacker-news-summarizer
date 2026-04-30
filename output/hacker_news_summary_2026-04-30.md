# Hacker News 热门文章摘要 (2026-04-30)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. 你能超越二分查找

**原文标题**: You can beat the binary search

**原文链接**: [https://lemire.me/blog/2026/04/27/you-can-beat-the-binary-search/](https://lemire.me/blog/2026/04/27/you-can-beat-the-binary-search/)

无法访问该文章链接。

---

## 12. Postgres 能扩展吗？

**原文标题**: Does Postgres Scale?

**原文链接**: [https://www.dbos.dev/blog/benchmarking-workflow-execution-scalability-on-postgres](https://www.dbos.dev/blog/benchmarking-workflow-execution-scalability-on-postgres)

**摘要：Postgres 能否横向扩展？**

本文对 Postgres 在写入密集型工作负载（特别是持久化工作流执行）下的可扩展性进行了基准测试。在单个 AWS RDS db.m7i.24xlarge 实例（96 个 vCPU、384GB 内存、12万 IOPS）上的测试关键发现如下：

**原始写入：** Postgres 针对简单表实现了 **每秒 14.4 万次写入**（每日 12 亿次）。瓶颈在于将预写式日志刷新到磁盘，因为所有提交都需要同步刷新 WAL。

**持久化工作流：** 对于简单的空操作工作流（每次写入 2 次：开始 + 完成），Postgres 处理了 **每秒 4.3 万个工作流**（每秒 8.6 万次写入）。瓶颈依然是 WAL 刷新。

**队列化工作流：** 使用 Postgres 支持的队列（每个工作流 4 次写入：入队、出队、开始、完成），吞吐量达到 **每秒 1.21 万个工作流**。此处的瓶颈是队列表上的**行级锁争用**，而非 WAL。通过将工作分发至多个队列或分区，吞吐量提升至 **每秒 3.06 万个工作流**（约为直接执行的三分之二）。

**结论：** 单个 Postgres 服务器在写入密集型工作负载下扩展性惊人——每日最高可达 40 亿个工作流。对于更高负载，跨多台服务器进行分片可应对几乎任何规模。所有基准测试代码均已开源。

---

## 13. 使用DuckDB进行全文搜索

**原文标题**: Full-Text Search with DuckDB

**原文链接**: [https://peterdohertys.website/blog-posts/full-text-search-w-duckdb.html](https://peterdohertys.website/blog-posts/full-text-search-w-duckdb.html)

本文探讨了DuckDB的全文搜索（FTS）扩展功能，延续了此前对该数据库的介绍。作者拥有Elasticsearch和Postgres FTS的使用经验，对DuckDB当前的能力进行了评估。

**DuckDB的FTS扩展主要特性包括：**
- 支持词干提取、停用词移除和变音符号剥离的索引功能
- 基于Okapi BM25评分算法，包含可调参数（k₁控制词频权重，b控制文档长度归一化）

**存在的局限性：**
- 缺乏对匹配词条的内置高亮功能（与Postgres的`ts_headline`不同）
- 功能完备性不及Postgres或Elasticsearch

**实践操作指南：**
1. 使用Python配合`uv`工具预处理数GB容量的邮件语料库（提取正文与元数据）
2. 将JSON数据导入DuckDB，并通过`PRAGMA create_fts_index`创建FTS索引
3. 演示结合合取匹配与BM25参数调优的查询操作

作者展示了调整b参数（长度归一化）如何改变长邮件与短消息的排序优先级，以及k₁参数如何影响基于词频的评分机制。

**结论：** 虽然功能丰富度不及专业解决方案，但DuckDB的FTS功能足以满足探索性用例需求，且可轻松迁移至Postgres或Elasticsearch。作者计划后续推出关于向量搜索的专题文章。

---

## 14. Carrot披露后续：Forgejo

**原文标题**: Follow-up to Carrot disclosure: Forgejo

**原文链接**: [https://dustri.org/b/follow-up-to-carrot-disclosure-forgejo.html](https://dustri.org/b/follow-up-to-carrot-disclosure-forgejo.html)

作者在其关于Forgejo漏洞的“胡萝卜披露”后续文章中，描述了混乱的局面。要点包括：

- **社交媒体反弹：** 其初始帖子在接到举报后，从两个Mastodon实例（infosec.exchange和mastodon.social）中被删除，理由是“不负责任的披露”。随后该帖子在infosec.exchange上被恢复。
- **人身攻击：** 作者的朋友被联系以败坏其声誉，作者本人也遭受了网络骚扰，包括被称为“可怕”以及其他侮辱性称呼。
- **社区反应：** 该披露引发了关于漏洞披露规范的辩论。一些漏洞利用编写者朋友批评此举给该项目带来了不必要的关注。Forgejo的安全策略遭到广泛嘲讽。
- **Forgejo的回应：** 作者收到了来自Forgejo管理团队一封“不合时宜”的电子邮件。作者了解到安全团队的角色是被动型的（处理已报告的问题），而非主动预防。
- **荷兰部署：** 值得注意的是，荷兰部署了一个公共Forgejo实例作为主权软件锻造厂。
- **结果：** 在“胡萝卜披露”收到负面反馈后，作者向Forgejo安全团队发送了一封正式邮件，包含道歉、理由说明、加固建议以及漏洞利用概念验证。最终促成了一些富有成效的对话，多个实体修正了对Forgejo的看法。

---

## 15. 我将28个美国政府拍卖网站整合为一个搜索入口

**原文标题**: I aggregated 28 US Government auction sites into one search

**原文链接**: [https://bidprowl.com](https://bidprowl.com)

本文介绍了一款全新的搜索工具，该工具将来自28个美国政府拍卖网站的信息整合至统一平台。目前它已收录全美50个州超过75,000条活跃在售信息，每日两次更新，让用户能在多数买家之前发现新上架商品。

其核心功能包括：单一搜索框、"交易评分"系统（根据价格、出价频率和剩余时间对每件商品进行1-10分评级），以及直接跳转原始拍卖页面的链接——这意味着该工具不处理竞价也不收取佣金。商品类别涵盖车辆（18,817件）、重型设备（16,118件）、房地产（3,266件）、扣押财产（2,609件）及军用剩余物资（701件）。

该平台还提供每日精选十大交易邮件推送、按州浏览选项，以及介绍政府拍卖运作机制、物品查验方法和推荐拍卖网站的指南。主要数据来源包括GSA拍卖网、GovDeals、利氏兄弟拍卖行及美国国税局拍卖平台。

---

## 16. 西班牙议会将针对西甲联盟大规模IP封锁行为采取行动

**原文标题**: Spain's parliament will act against massive IP blockages by LaLiga

**原文链接**: [https://www.democrata.es/en/politics/congress-and-senate/congress-will-act-against-massive-ip-blockages-by-laliga/](https://www.democrata.es/en/politics/congress-and-senate/congress-will-act-against-massive-ip-blockages-by-laliga/)

**摘要：**

西班牙众议院拟对西甲联赛（LaLiga）采用大规模、无差别的IP地址屏蔽以打击网络盗版的行为采取行动。政治团体“ Sumar ”已提出一项非立法提案，敦促政府修订现行法规，认为西甲当前的做法侵犯了包括信息自由和隐私权在内的基本权利。该做法涉及屏蔽与未经授权流媒体服务相关的整个IP地址段，常常导致合法网站、服务器和合法内容也被阻断，影响成千上万的无辜用户。西甲为这些行动辩护，称其是保护知识产权和创收的必要措施，并指控盗版网站造成了巨大的经济损失。然而，批评者——包括数字权利组织“Red Sostenible”及多个政党（Compromís、Más Madrid 和 Verdes Equo）——声称此类屏蔽措施过度，无异于审查。该提案特别要求政府明确IP屏蔽的法律界限，采取有针对性的措施而非大规模屏蔽，并确保司法监督。西班牙数据保护局（AEPD）对此类做法也表达了审慎态度。该动议预计将在数字化转型委员会进行辩论，使西班牙成为在版权执法与数字权利之间寻求平衡的潜在试金石。

---

## 17. 10Gb/s以太网：我在家中实现其运行的经验

**原文标题**: 10Gb/s Ethernet: what I did to get it working in my home

**原文链接**: [https://www.gilesthomas.com/2026/04/10g-ethernet-what-i-did](https://www.gilesthomas.com/2026/04/10g-ethernet-what-i-did)

**摘要：** 作者描述了将家庭网络从2.5Gb/s升级至10Gb/s以太网的过程。

**关键步骤与硬件：**
- **测试现有布线：** 通过结构化布线，成功在工作站（perry）与笔记本电脑（laura）之间实现了约10Gb/s（单向）速率，确认线缆可支持10GBASE-T。
- **书房升级：** 为perry（搭载华硕XG-C100F网卡）添加一台MikroTik CRS305-1G-4S+IN交换机（nigel），并通过DAC线缆连接。利用其SFP+上行端口接入原有2.5Gb/s TRENDnet交换机（Proxmox集群）。
- **配线架：** 安装一台MikroTik CRS304-4XG-IN交换机（nelly）用于RJ45连接。
- **路由器：** 将双2.5Gb/s路由器更换为Protectli VP2440（reggie），配备两个SFP+ 10Gb/s接口。
- **附加交换机：** 在路由器附近增设第二台CRS304-4XG-IN交换机（norman），用于连接壁装插座和WiFi接入点。

**温度监控：** 作者使用Grafana追踪温度。Protectli路由器运行温度适中（SFP+模块约70°C），可接受。安装在边柜上的交换机（norman）温度较高（70-75°C），推测因通风不良及附近发热的WiFi接入点所致。楼下交换机（nelly）温度较低（约55°C）。书房交换机（nigel）温度舒适（48°C），但其10GBASE-T SFP+模块发热严重（约85°C），未来需考虑改善散热。

---

## 18. Mozilla对Chrome Prompt API的反对立场

**原文标题**: Mozilla's opposition to Chrome's Prompt API

**原文链接**: [https://github.com/mozilla/standards-positions/issues/1213#issuecomment-4347988313](https://github.com/mozilla/standards-positions/issues/1213#issuecomment-4347988313)

本文来自Mozilla公开的“标准立场”GitHub仓库，记录了该组织对**Prompt API**（议题#1213）的正式反对立场。该API由谷歌Chrome工程师提出，旨在允许Web应用在设备端（客户端）使用大型语言模型（LLM）进行推理，从而在浏览器中直接实现AI驱动功能。

Mozilla已将其对该规范的立场标记为**“立场：反对”**，表明强烈不赞同该提案。该议题由一位Mozilla贡献者发起，并引用了谷歌Blink团队发布的“原型开发意向”（Chrome实现前的步骤）。

Mozilla做出这一负面立场决定的反对要点不言自明——通常，Mozilla会抵制那些将关键浏览器功能（如AI模型推理）控制权集中到单个供应商（此处为谷歌/Chrome）手中的API。他们担心Prompt API可能通过推行未经充分跨浏览器共识的专有或单边设计功能，破坏用户隐私、安全性以及开放Web标准流程。该API将允许网站直接调用强大的AI模型，进而引发监控、操纵及访问不平等等风险（因并非所有浏览器都能支持）。通过提交此议题，Mozilla表明其不会实现Prompt API，并敦促Web社区在它根植于浏览器生态之前重新考虑其设计。

---

## 19. 使用PhotoRec从“坟墓”中恢复文件

**原文标题**: Recovering files from beyond the grave using PhotoRec

**原文链接**: [https://lost-number.bearblog.dev/recovering-files-from-beyond-the-grave-using-photorec/](https://lost-number.bearblog.dev/recovering-files-from-beyond-the-grave-using-photorec/)

本文记述了作者使用数字取证工具**PhotoRec**从旧硬件中恢复已删除文件的经历。作者在一台**使用13年的东芝笔记本电脑（1TB硬盘）** 和一张**使用10年的GoPro SD卡（7GB）** 上进行了测试。

**关键要点：**
- PhotoRec通过扫描原始数据恢复文件，与用于修复文件系统的TestDisk不同。
- 作者按文件类型过滤扫描（如笔记本电脑指定.jpg；SD卡指定.png、.mp4、.jpg）以加快速度。
- **笔记本电脑结果**：耗时超5小时，恢复逾16000个文件（占满7GB U盘）。文件丢失原始名称和文件夹结构，整理工作繁琐。因空间不足中断，但可续传。
- **SD卡结果**：耗时不足1分钟，恢复12个文件（<1GB），反映此前使用频率较低。
- 作者警告勿将恢复文件存储至源驱动器，以免覆盖数据。

**结论**：PhotoRec既能用于合法恢复（如丢失文档），也可能带来隐私风险（如恶意恢复已删除数据）。作者建议从特定文件类型开始扫描、提前备份数据，并在恢复过程中保持设备通电。

---

## 20. 《半导体如何在美国诞生》

**原文标题**: How Semiconductors Were Made in America

**原文链接**: [https://www.siliconimist.com/p/semiconductors-made-in-america](https://www.siliconimist.com/p/semiconductors-made-in-america)

本文记述了一位美国工程师约翰·科尔在哈萨克斯坦阿拉木图市，为庆祝美国建国250周年所作的一场演讲。科尔探讨了为何半导体——二十世纪最伟大的工程奇迹——诞生于美国。

他追溯了半导体的历史：从爱迪生在门洛帕克（贝尔实验室的前身）发现光电效应，到肖克利在贝尔实验室的发明，再到其管理不善迫使才华横溢的员工纷纷离职创办自己的公司。这一过程如同细胞分裂般不断重复，最终缔造了硅谷。

科尔指出，美国的核心文化价值观——言论自由、不畏权贵、任人唯贤、对外来者与新思想的开放包容——对这一创新至关重要。他给自己的演讲起了一个颇具挑衅性的标题“这一切只可能发生在美国”，而经过反思，他认定此言非虚。

演讲中穿插着科尔作为哈萨克斯坦稀有美国居民的生活观察：当地人异常友善且充满好奇，常让孩子们与他练习英语。这场演讲巧妙地将美国历史、文化价值观与半导体产业的诞生串联了起来。

---

## 21. 一场1960年代艺术学校的实验，重新定义了创造力

**原文标题**: A 1960s art school experiment that redefined creativity

**原文链接**: [https://thereader.mitpress.mit.edu/the-1960s-art-school-experiment-that-redefined-creativity/](https://thereader.mitpress.mit.edu/the-1960s-art-school-experiment-that-redefined-creativity/)

无法访问该文章链接。

---

## 22. 教会岩铀矿厂泄漏事件

**原文标题**: The Church Rock Uranium Mill Spill

**原文链接**: [https://en.wikipedia.org/wiki/Church_Rock_uranium_mill_spill](https://en.wikipedia.org/wiki/Church_Rock_uranium_mill_spill)

1979年7月16日，美国新墨西哥州发生的丘奇罗克铀矿尾矿泄漏事件，至今仍是美国历史上最大规模的放射性物质泄漏事故，其危害程度超过三哩岛核事故。联合核公司的尾矿坝决堤，导致超过1100吨固体放射性废料及9400万加仑酸性放射性尾矿溶液排入普埃科河。泄漏物中含有铀、钍、镭等放射性元素及有毒金属，沿河向下游蔓延80英里，侵入纳瓦霍族保留地。

当地依赖河水饮用、灌溉和饲养牲畜的纳瓦霍族居民，因语言障碍数日未获警报。新墨西哥州州长拒绝将该地区列为联邦灾区，限制了救援力度。此次泄漏造成地下水污染、牲畜死亡，并引发健康问题，包括导致截肢的化学灼伤。联合核公司最初低估泄漏量，最终承认放射性活度达46居里。

大坝溃决被归因于设计缺陷、维护不足以及对裂缝预警信号的忽视。尽管规模巨大，该事件获得的媒体报道远少于三哩岛事故，部分原因在于其地处偏远及受害群体为原住民社区。该遗址于1983年被列入美国环保署国家优先治理清单，截至2016年地下水污染仍未受控。纳瓦霍族最终获赔52.5万美元。

---

## 23. 如果苹果推出iPad Neo，那就一切都结束了

**原文标题**: If Apple makes an iPad Neo, it's all over

**原文链接**: [https://www.techadvisor.com/article/3128472/if-apple-makes-an-ipad-neo-its-all-over.html](https://www.techadvisor.com/article/3128472/if-apple-makes-an-ipad-neo-its-all-over.html)

**摘要：**  
本文认为，谷歌近期在Play商店突出显示平板优化应用的行为，暴露了其在平板市场长期以来的失败。尽管安卓平板自2010年便已存在，谷歌至今仍未能解决应用碎片化问题，导致多数平板只能运行被拉伸的手机应用。这与苹果形成鲜明对比——凭借庞大的iPad优化软件库，苹果以51.5%的市场份额占据平板市场主导地位（三星仅占25.8%）。  

作者指出，继售价600美元的平价MacBook Neo大获成功后，苹果可推出"iPad Neo"以"锁定"平板市场。一款售价约200美元、全尺寸彩色iPad Neo，将凭借苹果无缝的软硬件整合与自研芯片，瞄准当前廉价安卓平板所处的低端市场。  

尽管承认垄断隐忧，作者认为谷歌及安卓合作伙伴已用16年时间构建统一的平板生态，却仅交出半成品。一款平价iPad或将最终倒逼安卓平板阵营进步。本文结论是：正如MacBook Neo撼动Windows笔记本市场，iPad Neo有望重塑平板市场格局。

---

## 24. 人类创造力基准——评估生成式AI在创意工作中的表现

**原文标题**: The Human Creativity Benchmark – Evaluating Generative AI in Creative Work

**原文链接**: [https://contralabs.com/research/human-creativity-benchmark](https://contralabs.com/research/human-creativity-benchmark)

**概要：**人类创造力基准（HCB）通过分离专家评判中两种不同的信号来评估生成式AI在创意工作中的表现：**趋同**（如可读性与布局这类共同标准）与**趋异**（合理的品味差异）。传统基准将分歧视为噪声，但HCB认为在创意领域，品味具有结构性分布特征，应当予以保留。

Contra Labs利用150万专业人士对这一框架进行了测试，涵盖五个领域（着陆页、桌面应用、广告图像、品牌资产、产品视频）和三个创意阶段（构思、草图、完善）。评估者进行了成对比较、标量评分（提示遵循度、可用性、视觉吸引力）以及开放式反馈，产生了约15000条评判结果。

**关键发现：**
- 当产出存在功能性缺陷（层次结构混乱、伪影）时，**趋同**占主导地位。一旦质量达到可接受水平，评估者会从评判标准转向评判品味，**趋异**随之出现。
- 一致性模式因领域而异：广告图像呈现趋同上升趋势（0.345 → 0.549），而着陆页呈现趋同下降趋势（0.484 → 0.293）。
- 目前尚无生成式模型能够可靠地平衡正确性与面向多样化品味的可引导性。

**结论：** 将趋同与趋异合并为单一分数会丢弃可操作信息。模型在适用标准之处必须正确无误，而在品味主导之处则需具备可引导性——当前AI系统未能解决这一区别。

---

## 25. Granite 4.1：IBM的8B模型媲美32B MoE性能

**原文标题**: Granite 4.1: IBM's 8B Model Matching 32B MoE

**原文链接**: [https://firethering.com/granite-4-1-ibm-open-source-model-family/](https://firethering.com/granite-4-1-ibm-open-source-model-family/)

IBM发布了Granite 4.1系列开源语言模型（Apache 2.0许可），包含30亿、80亿和300亿参数版本，专为企业场景设计。核心突破在于：参数为80亿的密集型模型在ArenaHard、BFCL V3和GSM8K等关键基准测试中，性能均达到或超越上一代320亿参数的MoE模型（Granite 4.0-H-Small）。这一效率提升并非来自架构创新，而是得益于显著优化的训练流程。

该系列模型在5个不同阶段使用15万亿个token进行训练，各阶段采用动态调整的数据组合（例如后期阶段侧重数学与代码数据）。关键创新在于引入基于大语言模型评判机制（LLM-as-Judge）的严格数据质量过滤器，剔除包含幻觉、错误计算等问题的劣质微调样本，最终精选出410万个高质量训练样本。

强化学习（RL）分四个阶段实施：多领域联合训练、面向对话的RLHF（提升对话能力但降低数学成绩）、身份校准，以及最终通过数学专项RL训练恢复并超越损失的数学性能。此外，通过分阶段扩展与模型融合技术，8B和30B版本支持512K上下文长度，同时保留短文本处理能力。

8B版本是可靠工具调用与可预测延迟的理想选择，3B版本则适用于边缘部署。所有模型均可通过Ollama、Hugging Face、vLLM及IBM API获取。

---

## 26. Zig项目关于其反AI贡献政策的基本理由

**原文标题**: The Zig project's rationale for their anti-AI contribution policy

**原文链接**: [https://simonwillison.net/2026/Apr/30/zig-anti-ai/](https://simonwillison.net/2026/Apr/30/zig-anti-ai/)

**摘要：** 本文阐述了Zig项目严格的反AI贡献政策，该政策禁止使用大语言模型生成的代码、问题及评论。Zig项目副总裁Loris Cro解释其核心理由并非出于代码质量考量，而是注重对人的投入：该项目重视培养值得信赖的新贡献者，而非单纯追求代码落地。审查拉取请求被视为指导新人、构建由自信开发者组成的社区（以便长期贡献）的良机。LLM辅助会破坏这一机制，因为它使贡献者无需真正学习或成为可靠项目成员就能提交完美代码。文章将此与Bun（由Anthropic收购的著名Zig项目）进行对比——后者大量使用AI并拥有独立的Zig分支——值得注意的是，Bun选择未将一项重大性能改进向上游提交，部分原因正是Zig的AI政策。核心思想是：维护者应当“押注于贡献者本身，而非他们首个PR的内容”，将对人力贡献者的个人投入视为项目核心价值。

---

## 27. 1.4吉瓦：前格罗恩德核电站的电池储能系统

**原文标题**: 1.4 GW: battery storage at former Grohnde nuclear power plant

**原文链接**: [https://www.heise.de/en/news/1-4-GW-Huge-battery-storage-at-former-Grohnde-nuclear-power-plant-11277367.html](https://www.heise.de/en/news/1-4-GW-Huge-battery-storage-at-former-Grohnde-nuclear-power-plant-11277367.html)

**摘要：**

德国计划在已退役的格罗恩德核电站原址建设一座大型电池储能项目，装机容量达1.4吉瓦（GW）。该项目由普鲁士电气公司与合作伙伴共同打造，将成为欧洲最大的电池储能系统之一。项目将利用退役核电站现有的电网接入设施，从而大幅节省时间与成本。这座电池储能园区预计将通过储存多余可再生能源，并在用电高峰期释放电能，助力电网稳定。工程计划于2026年开工，目标在2028年全面投入运营。该项目彰显了传统核电站场址向清洁能源储存与电网灵活性枢纽转型的趋势。

---

## 28. 地精的起源

**原文标题**: Where the goblins came from

**原文链接**: [https://openai.com/index/where-the-goblins-came-from/](https://openai.com/index/where-the-goblins-came-from/)

无法访问文章链接。

---

## 29. Show HN：TRiP —— 一个完全由我自研、用C语言从头构建的完整Transformer引擎

**原文标题**: Show HN: TRiP – a complete transformer engine in C built from scratch just by me

**原文链接**: [https://github.com/carlovalenti/TRiP](https://github.com/carlovalenti/TRiP)

**TRiP 简介：一款用 C 语言实现的 Transformer 引擎**

TRiP 是一个完整的、教学性质的 Transformer 引擎，由一名开发者历时 18 个月，完全使用 C 语言构建而成。它支持推理、训练、分词器创建、对话以及视觉功能，适用于 Gemma 1、Llama 2、PaliGemma 和 GPT-2 等模型。

主要特性：
- **架构：** Llama2、Gemma、PaliGemma（视觉+语言）、GPT-2。
- **检查点格式：** SafeTensors（HuggingFace）和 Karpathy 格式。
- **权重类型：** bf16、float16、float32。
- **训练：** 支持带 AdamW、余弦退火、梯度裁剪的完整反向传播。
- **推理：** 贪婪采样、top-k 采样和核采样（top-p）。
- **分词器：** BPE（兼容 SentencePiece），支持从零开始创建词汇表。
- **视觉：** 使用 PaliGemma 进行多模态推理（JPEG 输入，X11 显示）。
- **内存：** 通过 mmap 针对大型模型启用 RAM 优化模式。

该项目由 7 个文件（trip.h、math.c、forward.c、backward.c、model.c、utils.c、main.c）构成，并配有大量解释 Transformer 内部机制的注释。作者特别说明，仅 JSON 解析器、safetensors 保存函数、JPEG-X11 处理、部分注释修订以及本 README 由 AI 生成；所有核心 Transformer 逻辑均为手工编写。

TRiP 可在 Linux/WSL 上原生运行，依赖极少（gcc、OpenMP、libjpeg、libX11）。其采用 CC BY-NC 4.0 许可协议，仅供非商业用途使用。

---

## 30. 贝塞尔曲线入门——是什么构成了贝塞尔曲线？

**原文标题**: A Primer on Bézier Curves – So What Makes a Bézier Curve?

**原文链接**: [https://pomax.github.io/bezierinfo/](https://pomax.github.io/bezierinfo/)

以下是关于该文章的简要总结：

本指南介绍了贝塞尔曲线——计算机图形、设计软件（如Illustrator）、矢量字体及CAD/CAM领域的基础工具。尽管以皮埃尔·贝塞尔（1962年在雷诺公司推广该曲线）命名，但其数学原理早前由雪铁龙公司的保罗·德·卡斯特里奥提出，并基于1912年的伯恩斯坦多项式。

核心概念十分简洁：贝塞尔曲线源于对点之间进行的**线性插值**。通过在连接控制点的线段上进行插值，即可生成平滑曲线。这一机械过程定义了曲线，确保其始终位于控制点的"凸包"范围内。

从数学角度看，贝塞尔曲线属于**参数函数**。不同于标准函数（y = f(x)）的单输入单输出映射，参数函数通过共享变量"t"同时生成x和y坐标。随着"t"值变化，便得到构成曲线的(x,y)点集。

本文是为程序员设计的开源交互式学习资源。它强调实践应用，涵盖绘制曲线、查找边界框、处理交点及其他操作，仅需高中水平的数学基础。示例代码采用伪代码保持语言无关性，鼓励读者通过动手实践而非简单复制粘贴来学习。该项目在GitHub上持续维护，并通过Patreon获得支持。

---

