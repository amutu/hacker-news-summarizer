# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-01.md)

*最后自动更新时间: 2026-11-01 04:56:50*
## 1. HackerTube：由Hacker News 社区推荐视频驱动的类 YouTube 平台

**原文标题**: HackerTube: YouTube built from videos recommended by HN

**原文链接**: [https://karpathy.bearblog.dev/hacker-tube/](https://karpathy.bearblog.dev/hacker-tube/)

周末深夜，作者因厌倦YouTube充斥低质内容、夸张缩略图和千篇一律的推荐，灵机一动，用AI工具Opus 5.5在约两小时内搭建出HackerTube（hackertube.org），一个以Hacker News社区推荐为源的YouTube替代站。Opus爬取HN全部历史评论，经另一模型Sonnet过滤垃圾与低质信息，从约4万条推荐中筛出6454个视频，覆盖2007至2026年间150个主题。平台亮点包括：采用50%画幅的默认缩略图替代上传者原图；无需注册即享个性化推荐，状态仅存于浏览器本地会话；支持键盘快捷键；数据可导出，方便用户或AI代理自建同款站点。作者将项目部署在VPS上并完成安全加固与性能优化，最终感叹两个小时后得以"重新呼吸"，对AI工具的高效表达由衷感谢。

---

## 2. Linux内核TCP握手释放后使用漏洞（CVE-2026-98432，CVSS 9.8）

**原文标题**: TCP Use-After-Free: CVE-2026-98432 / CVSS 9.8

**原文链接**: [https://atlasum.net/blog/cve-2026-98432-linux-ipv4-tcp-uaf](https://atlasum.net/blog/cve-2026-98432-linux-ipv4-tcp-uaf)

Linux内核IPv4 TCP握手中存在释放后使用漏洞（CVE-2026-98432，CVSS 9.8），根因为内核将请求套接字中的IPv4选项指针直接传递给新连接而未复制，随即释放内存，多核并发读取导致堆信息泄露、内存损坏或系统崩溃。该漏洞影响Linux 4.4及以上所有版本，攻击无需任何凭据，在应用层认证前即可触发。Anthropic披露其Claude模型已针对带MPTCP监听器的服务器构建远程root利用程序，无需交互。上游内核已于10月11日至18日通过四行修改（kfree改为kfree_rcu）完成修复，但截至10月29日，Ubuntu全系、RHEL 8/9/10、Amazon Linux 2及AL2023默认内核仍未修复。临时缓解方案为通过nftables在prerouting阶段丢弃携带IPv4选项的TCP包（ip hdrlength > 5），可在边缘防火墙统一部署。修复需重启内核方可生效，建议优先处理含MPTCP监听器的服务器，并持续关注各发行版安全更新。

---

## 3. 学者的责任

**原文标题**: The Duty of a Scholar

**原文链接**: [https://www.daemonology.net/blog/2026-10-31-The-Duty-of-a-Scholar.html](https://www.daemonology.net/blog/2026-10-31-The-Duty-of-a-Scholar.html)

2004年11月，作者提交博士论文当日，发现Intel超线程技术存在通过缓存状态在多线程间泄露信息的侧信道漏洞。他随即用六个月时间私下通知各操作系统安全团队、协调补丁开发，期间Intel曾试图通过其雇主Yahoo施压，但作者并非其雇员，施压未果。2005年5月，他在BSDCan会议公布成果，FreeBSD、Red Hat等发行版同步发布安全公告，完成了一次典型的负责任披露。由此，作者引申出"学者的责任"这一主题：发现知识或问题后，有义务主动寻找需要知晓的人，而非被动等待或选择沉默。他援引工程师职业伦理中关于安全危害的披露义务、《星际迷航》中"第一责任是真相"的宣言，以及德国哲学家费希特《学者的使命》中的论述，论证知识本身附带传播义务。他认同费希特学者应将知识奉献社会的观点，但拒绝其等级化的"真理祭司"框架，认为责任并非源于对社会的还债，而是知识自身的属性。作者区分了"研究者"（创造知识）与"学者"（将知识送达需要行动之人），并以此自许。

---

## 4. GPT-5.6 Sol 成功通关《异星工厂》和平模式

**原文标题**: GPT-5.6 Sol can beat Factorio on peaceful mode

**原文链接**: [https://ryanmadden.net/gpt-56-beats-factorio/](https://ryanmadden.net/gpt-56-beats-factorio/)

继 Claude Code 之后，作者让 GPT-5.6 Sol 在 Codex 中以低思考模式完成了《异星工厂》和平模式（无虫族）的完整通关，游戏用时 13.5 小时。运行通过 Python 游戏管理器实现，模型以编程方式操作游戏，同时受限于玩家行动范围、战争迷雾等与人类玩家相同的约束。

运行过程令人瞩目：Sol 在多个方面超出预期，使作者放弃了原定的"蓝科包即止"计划，一路推进至火箭发射。然而进入蓝色科学阶段后，工厂规模扩大带来的协调问题使进度明显放缓，火箭发射阶段仍需 Sol 通过大量在工厂各区间往返运送补给来弥补系统衔接缺陷。不过，与 GPT-5.5 完全无法使用传送带相比，本次进步显著。

作者已录制全程视频并制作了生产统计图表，认为《异星工厂》在考察模型能力方面优于编程任务——过程更直观，便于非专业观众理解模型行为。后续将测试更多模型、不同思考等级及非和平模式。

---

## 5. 问题就在内存延迟

**原文标题**: It's the Memory Latency, Stupid

**原文链接**: [https://pivotlake.io/blog/its-the-memory-latency-stupid/](https://pivotlake.io/blog/its-the-memory-latency-stupid/)

文章以ClickBench数据集上9900万行的GROUP BY查询为例，揭示数据库CPU利用率100%并不等于真正满载——大量时间实则空转等待内存。现代CPU每纳秒可执行4-8条指令，而一次DRAM访问需50-100纳秒，差距达四五百倍。朴素Hash表聚合在千万级组键时几乎每次 lookup 都触发缓存未命中，perf 数据显示50%的CPU周期因内存阻塞而浪费，仅16%真正执行指令，单次查询从DRAM拉取4.5GB数据。作者提出基数分区（radix partitioning）优化：先将数据按哈希高12位分为4096个小桶，再逐桶用小型Hash表聚合，使热数据大概率驻留L1/L2缓存。优化后内存等待降至23.5%，执行率升至32.2%，DRAM读取减至1.5GB，查询从3.6秒降至2.7秒。进一步结合预取与内存吞吐优化后，单核仅需1.85秒、DRAM读取降至954MB；16核并行下总耗时仅172毫秒。文章核心观点：将冷内存访问转化为CPU指令执行，几乎总是值得的 trade-off，缓存利用率是数据库性能工程的首要 concern。

---

## 6. Molly（Signal分支）停更三月，存在已知安全漏洞

**原文标题**: Molly (Signal fork) has not been updated since 3 months and is vulnerable

**原文链接**: [https://piefed.world/post/1503394](https://piefed.world/post/1503394)

摘要：Molly（Signal的开源分支）最新停留在7月31日的v8.19.2-4版本，已逾三个月未更新，而Signal主线在8.27.1版本中修复了10月披露的攻击漏洞，Molly仍暴露于风险之下，作者建议用户暂删Molly改回主Signal。评论区围绕用户为何选择Molly展开讨论，主要原因包括：支持UnifiedPush推送通知（无需Google Play Services实现去谷歌化）、允许数据库加密、支持多设备登录等。然而多位评论者指出，Signal官网已提供独立APK，无需Play商店即可安装；配合MicroG在GrapheneOS等去谷歌化系统上通知功能正常；官方也已支持Android设备间链接。此外，Twinhelix维护的Signal-FOSS提供自动化的去blob构建，Guardian Project亦在F-Droid上分发Signal。有开发者批评Signal长期未在F-Droid设立正式仓库、依赖含blob的自更新APK，对开源生态不友好。关于UnifiedPush，评论者提醒其需依赖第三方MollySocket服务器，增加攻击面，收益有限。总体而言，在Molly恢复更新前，官方Signal或Signal-FOSS是更安全的选择。

---

## 7. Show HN：NES《魂斗罗》（1987）浏览器移植版（汇编→C→WebAssembly）

**原文标题**: Show HN: NES Contra (1987) port (ASM –> C and then C –> WebAssembly)

**原文链接**: [https://epoyraz.github.io/nes-contra-us/](https://epoyraz.github.io/nes-contra-us/)

本项目将1987年任天堂FC（NES）经典横版射击游戏《魂斗罗》完整移植至浏览器端，借助WebAssembly技术实现无需插件即可在网页中流畅运行。移植路径分两步：先将原始汇编代码逐行转译为C语言，再将C代码编译为WebAssembly，在保持游戏逻辑与原机高度一致的同时兼容现代浏览器。项目提供三种模式：本地单人、本地双人同屏及在线双人对战；在线模式下双方各自使用独立电脑与键盘，通过邀请链接连接。操作支持键盘与触屏两种方式——方向键移动、A/空格跳跃、S键射击、Enter开始、Shift选择；触屏端对应A键跳跃、B键射击，双人格斗需在标题界面按住Shift键选择。项目整体以强烈的复古像素风格呈现，致敬8位时代，旨在让新玩家在网页中重温FC经典记忆，也展示了WebAssembly在复古游戏移植领域的巨大潜力。

---

## 8. Jepsen 测试 ParticleDB 1.1.4

**原文标题**: Jepsen: ParticleDB 1.1.4

**原文链接**: [https://jepsen.io/analyses/particledb-1.1.4](https://jepsen.io/analyses/particledb-1.1.4)

摘要：Jepsen 对 Orkes 公司用 Rust 编写的数据库 ParticleDB（1.1.4 至 1.1.18.11.rc-22）进行了单节点可靠性测试，共发现 96 个问题。ParticleDB 号称统一事务 SQL、键值存储、向量搜索与实时分析，兼容 Postgres/Redis 协议并宣称"ACID、15.9 万 TPS"，但测试揭示诸多缺陷。文档与宣传严重不符：首页声称有 TLA+ 形式化证明，实际无规格可用；宣称"完整 ACID"，却仅实现快照隔离；四种事务模式（fast、occ、zero-copy-occ、table-2pl）的文档自相矛盾，安全语义含糊不清。主要问题包括：可用性方面，table-2pl 模式延迟高达数十秒近乎不可用，后续版本出现无原因神秘崩溃及并发死锁；功能方面，CASE 内不支持聚合、缺少幂运算符、PreparedStatement 返回异常等大量 Postgres 兼容缺陷；事务与并发方面，在各类事务与 WAL 同步模式下均出现一致性问题；此外还涉及谓词、约束、连接查询、僵尸进程及状态损坏等问题。测试采用 rw、append、internal-sim、compare 等工作负载，借助 Elle 检测器验证序列化正确性。多数问题在后续版本中逐步修复，但暴露出该数据库在工程质量与文档严谨性上尚不成熟。

---

## 9. 为 None 大费周章：Python 中的哨兵值

**原文标题**: Much Ado About None: Sentinel Values in Python

**原文链接**: [https://florianwilhelm.info/2026/10/sentinel_values/](https://florianwilhelm.info/2026/10/sentinel_values/)

本文探讨了 Python 中 None 被过度使用所带来的歧义问题，并介绍了哨兵值（sentinel）这一解决方案。None 常被兼用于表示缺失、未设置、错误等含义，在缓存查询、配置更新、异常处理等场景中易引发混淆。哨兵值是处于有效值域之外的特殊标记，可从根本消除与真实值的冲突。文章列举了 Python 生态中已有的哨兵值实例，如 Ellipsis（NumPy 维度省略、类型存根）、NotImplemented（支持双分派）及 Pydantic 2.14 稳定发布的 MISSING。作者还指出自定义哨兵值的诸多难题：经典的 object() 方案在静态类型检查中无法收窄类型，枚举与字面量等替代方案各有取舍，且哨兵值经序列化或拷贝后身份检查会失效。值得关注的是，PEP 661 在 PyConDE 宣布推迟仅九天后即获通过，Python 3.15 正式引入 sentinel 内置类型，类型检查器可对其做类型收窄，typing_extensions 亦提供向后兼容。作者建议：认识到 None 的歧义，善用哨兵值消除模糊，优先选用库已提供的哨兵，用新内置替代旧的 object() 与枚举技巧。

---

## 10. 算一算：我们如何接管ChatGPT账户

**原文标题**: Do the math: How we took over ChatGPT accounts

**原文链接**: [https://www.parameter.ai/labs/we-found-a-gap-at-openai](https://www.parameter.ai/labs/we-found-a-gap-at-openai)

2026年10月，研究人员发现一条通过公共分享链接即可接管任意ChatGPT账户的漏洞链。攻击者发布恶意对话并分享链接，受害者点击后，代码即在其已登录的chatgpt.com会话中执行。漏洞核心在于：对话中的数学图形组件加载了MathLive库，其主页面消息监听器未校验发送源，且允许键盘布局中嵌入原始HTML；随后利用无沙箱的srcdoc iframe继承chatgpt.com身份，再借助YouTube JSONP回调绕过CSP，最终实现任意JavaScript执行。受害者无需安装插件或授权，仅需一次点击，攻击者即可枚举其私有对话、读取从未共享的对话内容并将数据外传。OpenAI于10月26日完成修复，定级P1，授予5000美元奖金。修复要点：跨帧通信须验证发送者地址与窗口，跨窗口配置不得包含原始HTML，动态文档应保持沙箱隔离，CSP不应作为唯一防线。该漏洞的特殊之处在于各功能单独看均合理，风险仅在多特性组合时显现。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 2 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 3 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 4 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 5 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 6 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 7 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 8 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 9 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 10 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 11 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 12 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 13 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 14 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 15 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 16 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 17 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 18 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 19 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 20 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 21 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 22 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 23 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 24 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 25 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 26 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 27 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 28 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 29 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 30 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 31 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 32 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 33 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 34 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 35 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 36 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 37 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 38 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 39 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 40 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 41 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 42 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 43 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 44 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 45 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 46 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 47 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 48 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 49 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 50 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 51 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 52 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 53 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 54 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 55 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 56 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 57 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 58 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 59 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 60 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 61 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 62 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 63 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 64 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 65 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 66 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 67 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 68 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 69 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 70 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 71 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 72 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 73 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 74 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 75 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 76 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 77 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 78 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 79 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 80 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 81 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 82 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 83 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 84 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 85 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 86 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 87 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 88 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 89 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 90 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 91 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 92 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 93 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 94 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 95 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 96 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 97 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 98 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 99 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 100 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 101 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 102 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 103 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 104 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 105 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 106 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 107 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 108 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 109 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 110 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 111 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 112 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 113 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 114 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 115 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 116 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 117 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 118 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 119 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 120 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 121 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 122 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 123 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 124 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 125 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 126 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 127 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 128 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 129 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 130 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 131 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 132 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 133 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 134 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 135 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 136 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 137 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 138 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 139 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 140 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 141 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 142 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 143 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 144 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 145 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 146 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 147 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 148 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 149 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 150 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 151 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 152 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 153 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 154 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 155 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 156 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 157 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 158 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 159 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 160 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 161 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 162 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 163 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 164 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 165 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 166 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 167 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 168 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 169 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 170 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 171 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 172 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 173 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 174 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 175 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 176 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 177 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 178 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 179 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 180 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 181 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 182 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 183 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 184 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 185 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 186 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 187 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 188 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 189 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 190 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 191 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 192 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 193 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 194 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 195 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 196 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 197 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 198 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 199 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 200 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 201 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 202 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 203 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 204 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 205 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 206 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 207 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 208 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 209 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 210 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 211 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 212 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 213 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 214 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 215 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 216 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 217 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 218 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 219 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 220 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 221 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 222 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 223 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 224 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 225 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 226 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 227 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 228 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 229 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 230 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 231 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 232 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 233 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 234 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 235 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 236 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 237 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 238 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 239 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 240 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 241 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 242 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 243 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 244 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 245 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 246 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 247 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 248 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 249 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 250 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 251 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 252 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 253 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 254 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 255 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 256 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 257 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 258 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 259 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 260 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 261 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 262 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 263 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 264 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 265 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 266 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 267 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 268 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 269 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 270 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 271 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 272 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 273 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 274 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 275 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 276 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 277 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 278 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 279 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 280 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 281 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 282 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 283 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 284 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 285 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 286 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 287 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 288 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 289 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 290 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 291 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 292 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 293 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 294 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 295 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 296 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 297 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 298 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 299 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 300 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 301 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 302 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 303 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 304 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 305 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 306 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 307 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 308 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 309 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 310 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 311 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 312 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 313 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 314 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 315 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 316 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 317 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 318 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 319 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 320 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 321 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 322 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 323 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 324 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 325 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 326 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 327 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 328 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 329 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 330 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 331 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 332 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 333 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 334 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 335 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 336 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 337 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 338 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 339 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 340 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 341 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 342 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 343 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 344 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 345 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 346 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 347 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 348 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 349 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 350 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 351 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 352 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 353 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 354 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 355 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 356 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 357 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 358 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 359 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 360 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 361 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 362 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 363 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 364 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 365 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 366 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 367 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 368 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 369 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 370 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 371 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 372 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 373 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 374 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 375 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 376 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 377 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 378 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 379 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 380 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 381 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 382 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 383 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 384 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 385 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 386 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 387 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 388 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 389 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 390 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 391 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 392 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 393 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 394 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 395 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 396 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 397 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 398 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 399 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 400 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 401 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 402 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 403 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 404 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 405 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 406 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 407 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 408 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 409 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 410 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 411 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 412 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 413 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 414 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 415 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 416 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 417 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 418 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 419 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 420 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 421 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 422 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 423 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 424 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 425 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 426 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 427 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 428 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 429 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 430 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 431 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 432 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 433 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 434 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 435 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 436 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 437 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 438 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 439 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 440 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 441 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 442 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 443 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 444 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 445 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 446 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 447 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 448 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 449 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 450 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 451 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 452 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 453 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 454 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 455 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 456 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 457 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 458 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 459 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 460 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 461 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 462 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 463 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 464 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 465 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 466 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 467 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 468 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 469 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 470 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 471 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 472 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 473 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 474 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 475 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 476 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 477 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 478 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 479 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 480 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 481 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 482 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 483 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 484 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 485 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 486 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 487 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 488 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 489 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 490 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 491 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 492 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 493 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 494 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 495 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 496 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 497 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 498 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 499 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 500 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 501 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 502 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 503 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 504 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 505 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 506 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 507 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 508 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 509 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 510 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 511 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 512 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 513 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 514 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 515 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 516 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 517 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 518 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 519 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 520 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 521 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 522 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 523 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 524 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 525 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 526 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 527 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 528 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 529 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 530 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 531 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 532 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 533 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 534 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 535 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 536 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 537 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 538 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 539 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 540 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 541 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 542 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 543 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 544 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 545 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 546 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 547 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 548 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 549 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 550 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 551 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 552 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 553 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 554 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 555 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 556 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 557 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 558 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 559 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 560 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 561 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 562 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 563 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 564 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 565 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 566 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 567 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 568 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 569 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 570 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 571 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 572 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 573 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 574 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 575 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 576 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 577 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 578 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 579 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 580 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 581 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 582 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 583 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 584 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 585 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 586 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 587 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
