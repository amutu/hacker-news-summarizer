# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-05-04.md)

*最后自动更新时间: 2026-05-04 20:33:08*
## 1. 《确保国防部承包商安全：发现多租户授权漏洞》

**原文标题**: Securing a DoD Contractor: Finding a Multi-Tenant Authorization Vulnerability

**原文链接**: [https://www.strix.ai/blog/how-strix-found-zero-auth-vulnerability-dod-backed-startup](https://www.strix.ai/blog/how-strix-found-zero-auth-vulnerability-dod-backed-startup)

**摘要：**

本文详细介绍了Strix Security为一家美国国防部承包商进行的渗透测试，重点发现了一个严重的多租户授权漏洞。该承包商的云应用跨多个客户组织（租户）管理敏感供应链数据，每个租户都要求严格的数据隔离。

Strix发现该应用的API逻辑存在缺陷：虽然实施了身份验证，但授权检查不足。通过在API请求中操纵简单的数字租户标识符（例如，将`tenant_id=1`更改为`tenant_id=2`），来自一个租户的已认证用户能够访问、读取和修改另一个租户的敏感数据。这种“不安全的直接对象引用”导致了跨租户数据泄露，危及所有客户的机密性。

该攻击无需特殊权限——仅需任一租户的有效登录。Strix演示了从其他租户中提取国防部相关敏感信息的能力，包括人员数据、合同细节和系统清单。

**主要发现：**
- **漏洞类型：** 不安全的直接对象引用（IDOR）/资源级别授权缺失。
- **影响：** 完全的多租户数据泄露；未经授权访问国防部敏感信息。
- **根本原因：** 应用仅依赖用户身份验证，但未能验证请求用户是否有权限访问指定租户的资源。
- **缓解措施：** Strix建议为每次API调用实施稳健的服务器端授权检查，使用集中访问控制层（例如，包含租户上下文的JWT声明），并用不透明、不可猜测的令牌替换可预测的数字ID。

本文强调了多租户国防部环境中风险的加剧，一次授权失误便可能暴露关键国家安全数据，并突出表明在标准漏洞扫描之外，持续进行基于场景的安全测试的必要性。

---

## 2. 我很担心小面包。

**原文标题**: I am worried about Bun

**原文链接**: [https://wwj.dev/posts/i-am-worried-about-bun/](https://wwj.dev/posts/i-am-worried-about-bun/)

**摘要：** 作者对Anthropic于2025年12月收购Bun后其前景感到担忧，尽管最初持乐观态度。虽然Bun本身依然出色——提供快速安装、内置TypeScript支持、打包及测试功能——但基于Bun打造的Anthropic旗舰工具Claude Code却已严重退步。

Claude Code曾是一款出色的AI编程代理，但到2026年4月，用户反映其质量下降、计费混乱，且第三方工具接入政策限制严苛（包括对Git历史中提及“OpenClaw”的行为进行惩罚）。Anthropic将问题归咎于产品层面，但作者认为这属于“教科书式的平台堕落”。

核心担忧在于：如果依赖Bun的Claude Code因Anthropic的政策及缺乏内部自用而恶化，那么随着Bun团队与Anthropic深度融合，Bun本身最终也可能面临类似命运。作者正将个人项目从Bun迁移至pnpm，理由是对这种不受企业纠葛影响的独立工具更信赖。

不过，作者承认这仅是个人建议，并非普适推荐。他仍希望Bun能保持优秀，并期望Anthropic给予Bun团队自主权，但Claude Code的衰退已敲响警钟：Anthropic可能难以长期维持产品质量。

---

## 3. 在健身房与陌生人交谈

**原文标题**: Talking to strangers at the gym

**原文链接**: [https://thienantran.com/talking-to-35-strangers-at-the-gym/](https://thienantran.com/talking-to-35-strangers-at-the-gym/)

一位孤独的大学毕业生决心在一个月内每天在健身房向陌生人搭话以结交朋友。尽管害怕尴尬，但渴望建立联系的他克服了打扰他人锻炼的深层焦虑。他每次训练时主动接近一个人，先询问对方的训练计划，再根据观察（如帽子、共同特征）提出针对性问题。

经过31次交谈，结果各不相同。许多对话简短或无果而终，但也有不少积极收获：持续的健身房问候、训练建议，以及几段真挚的友情。最值得一提的是，他与另一位亚洲健身者因共同练习而结缘，后来一起吃了饭、看了电影。一位被他搭话的男学生后来坦言，自己同样在为交友困难而挣扎。

关键发现：多数人对搭话持开放态度，许多人珍视友好的表示，即便短暂尴尬的互动也往往没有想象中那么糟糕。这段经历将他的健身房氛围从独来独往变为社交互动，证明持续且低风险的尝试能够建立社群与友谊——尽管最初难免不适。

---

## 4. OpenAI 如何大规模提供低延迟语音AI

**原文标题**: How OpenAI delivers low-latency voice AI at scale

**原文链接**: [https://openai.com/index/delivering-low-latency-voice-ai-at-scale/](https://openai.com/index/delivering-low-latency-voice-ai-at-scale/)

**摘要：**

本文详述了OpenAI如何在其ChatGPT高级语音模式中实现大规模低延迟语音AI。核心挑战在于，既要管理传统音频处理（语音转文字、推理、文字转语音）的高延迟，又要实现实时的、可来回交互的对话（包括打断和情感表达）。

关键技术决策包括：
- **使用单一多模态模型（GPT-4o）直接处理音频**，而非采用多个独立模型的流水线。这消除了串行转录和生成带来的累积延迟。
- **通过网络进行端到端推理（WebRTC）** ，音频令牌一旦生成即被发送，实现了流式传输（例如，模型可以“边思考边说话”）。
- **通过降低音频比特率（从128kbps降至8kbps）以及使用单进程GPU推理**来避免跨队列瓶颈，从而优化音频质量和吞吐量。
- **在服务系统中实现抢占和调度**，将实时对话请求的优先级置于批处理任务之上，确保即使在全球高需求下也能保持稳定的低延迟。

为了应对规模，OpenAI构建了一个定制化的服务栈，能够快速加载/卸载模型，使用分布式请求路由器，并利用跨GPU集群的冗余实现容错。该系统还能实时应用安全防护措施，在音频到达用户之前进行拦截。

其成果是一个能达到近乎人类对话节奏的语音AI系统——简单回复的响应时间通常在320毫秒以下——同时服务于全球数百万用户。文章强调，要实现大规模低延迟，必须从底层开始协同设计模型架构、推理基础设施和网络协议。

---

## 5. GameStop提出以555亿美元收购eBay

**原文标题**: GameStop makes $55.5B takeover offer for eBay

**原文链接**: [https://www.bbc.co.uk/news/articles/cn0p8yled1do](https://www.bbc.co.uk/news/articles/cn0p8yled1do)

游戏零售商GameStop因其在2021年"模因股"热潮中的角色而闻名，日前向电商巨头eBay提出了令人意外的555亿美元收购要约。这项现金加股票的收购方案对eBay的估值为每股125美元，较其近期收盘价高出20美元。GameStop首席执行官瑞安·科恩声称，在他的领导下，eBay有望成为亚马逊的有力竞争对手，若董事会拒绝该提议，他准备直接向股东发起要约。

eBay表示将考虑这一提案，但分析人士对此持怀疑态度。摩根士丹利指出，两家公司的商业模式"根本不同"，而伯恩斯坦则质疑，估值仅119亿美元的GameStop规模远小于eBay，难以为此交易融资。GameStop已从TD证券获得200亿美元的债务承诺以资助收购。

科恩计划在eBay削减20亿美元成本，主要涉及销售和营销领域。Forrester分析师苏查里塔·科达利称这一要约缺乏吸引力，并警告这将以GameStop的债务拖累eBay。

2025年，GameStop净利润增至4.184亿美元，但销售额有所下滑。eBay的市值约为GameStop的四倍，其用户规模已从2018年的1.75亿缩减至1.36亿。消息公布后，eBay股价上涨5%，而GameStop股价则下跌逾9%。

---

## 6. 微软Edge浏览器即使在未使用状态下，也会以明文形式将所有密码存储在内存中

**原文标题**: Microsoft Edge stores all passwords in memory in clear text, even when unused

**原文链接**: [https://twitter.com/L1v1ng0ffTh3L4N/status/2051308329880719730](https://twitter.com/L1v1ng0ffTh3L4N/status/2051308329880719730)

**摘要：**

文章称，即使浏览器未处于活跃使用状态，Microsoft Edge 也会将所有已保存的密码以明文形式存储在系统内存中。这一安全漏洞允许任何拥有足够系统访问权限的进程或用户在无需解密密钥或用户交互的情况下获取凭证。该发现表明，Edge 的密码管理器未能对内存中存储的登录数据进行正确加密或隔离，可能将敏感信息暴露给恶意软件、内存转储或取证工具。该报告凸显了依赖 Edge 内置密码管理的用户面临的严重隐私风险，因为明文保留违反了常见的安全最佳实践。文章内容前附有提示：需启用 JavaScript 才能在 X（原 Twitter）上查看完整文章。

---

## 7. 就业能减缓认知衰退吗？来自劳动力市场冲击的证据

**原文标题**: Does Employment Slow Cognitive Decline? Evidence from Labor Market Shocks

**原文链接**: [https://www.nber.org/papers/w35117](https://www.nber.org/papers/w35117)

**摘要：**  
本NBER工作论文（2026年4月）由Kouchekinia、Neumark和Bruckner撰写，探究就业是否因果性地减缓老年人认知衰退。作者利用美国健康与退休研究（HRS）数据，采用巴蒂克工具变量法，基于当地劳动力需求的外生变动来处理就业决策的内生性问题。研究发现，负向劳动力需求冲击会随时间推移导致认知评分显著下降，且这一影响主要集中在51至64岁的男性群体中——相较于女性或更年长男性，其就业对当地劳动力市场状况更为敏感。该研究拓展了以往仅聚焦退休年龄过渡期的研究范畴，提供了因果证据支持"延长工作年龄可能有助于延缓与年龄相关的认知衰退"这一观点。

---

## 8. Redis数组：漫长开发历程的短篇故事

**原文标题**: Redis array: short story of a long development process

**原文链接**: [https://antirez.com/news/164](https://antirez.com/news/164)

以下是文章 **《Redis数组：漫长开发进程中的短篇故事》** 的简洁摘要：

文章回顾了Redis数组数据结构（特别是日志型数据类型**Redis Stream**）漫长而复杂的发展历程。

这一旅程始于一个简单的需求：构建一个**持久化、只追加的数据结构**，能够高效处理时序数据和消息队列。早期的尝试使用了列表或有序集合，但未能满足**阻塞读取、消费者组和有限内存**等需求。

核心挑战在于平衡**性能**与**可靠性**。团队不得不设计一个内存基数树（`rax`）用于索引，以及一个**紧凑、写时复制**的数组用于存储。同时，他们还需实现一个**公平阻塞机制**，以支持多消费者且在高并发下不降低性能。

经过多年的原型设计、重构和调试，最终**Redis Stream**在**Redis 5.0**中发布。主要特性包括：
- 利用基数树实现**高效的O(log N)范围查询**。
- **消费者组**支持分布式消息处理。
- 通过`maxlen`修剪算法实现**非阻塞、有限内存**。
- 借助Redis的AOF（仅追加文件）持久化实现**完全持久性**。

文章总结认为，这次“漫长开发”的成功并非源于单一创新，而是得益于**增量式、迭代的工程实践**——从简单起步，快速试错，并持续优化，直至该数据结构兼具健壮性与高性能。

---

## 9. 美国医疗保健市场平台与广告技术巨头共享公民身份和种族数据

**原文标题**: US healthcare marketplaces shared citizenship and race data with ad tech giants

**原文链接**: [https://techcrunch.com/2026/05/04/us-healthcare-marketplaces-shared-citizenship-and-race-data-with-ad-tech-giants/](https://techcrunch.com/2026/05/04/us-healthcare-marketplaces-shared-citizenship-and-race-data-with-ad-tech-giants/)

彭博社经TechCrunch报道的一项调查显示，美国20个州运营的健康保险市场中，几乎全部将居民敏感申请数据分享给了谷歌、Meta、领英、Snap和TikTok等广告技术巨头。这是由于政府医保网站上配置了像素追踪器（一种用于分析和广告的代码片段）时出现错误。

主要发现包括：
- 纽约州的交易平台分享了申请人是否有家人被监禁的数据。
- 华盛顿特区的交易平台向TikTok分享了居民的性别、种族、电子邮箱、电话号码及国家标识符。尽管TikTok试图屏蔽部分种族数据，但并非全部信息都被掩盖。
- 弗吉尼亚州在彭博社发现Meta的追踪器分享居民邮政编码后，移除了该追踪器。

作为回应，华盛顿特区暂停了TikTok追踪器的部署，弗吉尼亚州则移除了Meta的追踪器。

报告指出，今年超过七百万美国人通过这些州级交易平台购买了医疗保险。尽管此前类似隐私泄露事件曾波及远程医疗初创公司和医疗巨头，但此次案例因通过政府网站影响庞大人群而尤为严重。文章提到，这些追踪器可能无意间收集并分享敏感医疗信息，科技公司则通过广告从中获利。

---

## 10. 让我们来谈谈大型语言模型

**原文标题**: Let's Talk about LLMs

**原文链接**: [https://www.b-list.org/weblog/2026/apr/09/llms/](https://www.b-list.org/weblog/2026/apr/09/llms/)

**摘要**

这篇发表于2026年4月9日的博客文章，对大型语言模型（LLM）在软件开发中的作用持怀疑态度。作者刻意使用“LLM”以求精准，避免使用“人工智能”这一模糊术语。

其核心论点源自弗雷德·布鲁克斯1986年的文章《没有银弹》。布鲁克斯将本质性困难（软件固有的概念复杂性）与附带性困难（如语法、内存管理）加以区分。他认为，没有单一开发手段能实现生产力数量级提升，因为大部分精力花在规格说明、设计和测试等本质性任务上，而非单纯的代码生成。作者主张，LLM主要加速了编码这一附带性困难，而编码仅占总工作量的一小部分。即使将编码工作量降至零，其收益也远达不到10倍的改进。

作者在基于数据库的Web应用开发经验证实了这一点：Rails脚手架二十年前就已自动化了基本的CRUD代码生成。他的时间主要花在需求收集、迭代和评审上，而非敲击键盘上。

DORA报告关于人工智能辅助开发的实证数据好坏参半。虽然LLM提高了吞吐量（速度），但同时增加了交付不稳定性（更高的变更失败率和返工率）。该报告指出，人工智能会同时放大优势与功能缺陷，除非组织系统得到改进，否则效率提升常常会被下游的混乱所抵消。作者总结道，关于LLM带来革命性生产力提升的流行说法，在理论和实证上都缺乏充分依据。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 2 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 3 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 4 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 5 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 6 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 7 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 8 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 9 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 10 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 11 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 12 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 13 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 14 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 15 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 16 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 17 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 18 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 19 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 20 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 21 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 22 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 23 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 24 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 25 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 26 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 27 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 28 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 29 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 30 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 31 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 32 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 33 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 34 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 35 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 36 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 37 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 38 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 39 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 40 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 41 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 42 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 43 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 44 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 45 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 46 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 47 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 48 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 49 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 50 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 51 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 52 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 53 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 54 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 55 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 56 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 57 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 58 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 59 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 60 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 61 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 62 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 63 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 64 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 65 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 66 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 67 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 68 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 69 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 70 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 71 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 72 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 73 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 74 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 75 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 76 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 77 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 78 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 79 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 80 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 81 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 82 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 83 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 84 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 85 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 86 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 87 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 88 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 89 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 90 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 91 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 92 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 93 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 94 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 95 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 96 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 97 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 98 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 99 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 100 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 101 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 102 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 103 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 104 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 105 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 106 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 107 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 108 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 109 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 110 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 111 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 112 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 113 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 114 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 115 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 116 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 117 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 118 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 119 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 120 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 121 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 122 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 123 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 124 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 125 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 126 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 127 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 128 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 129 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 130 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 131 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 132 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 133 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 134 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 135 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 136 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 137 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 138 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 139 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 140 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 141 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 142 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 143 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 144 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 145 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 146 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 147 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 148 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 149 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 150 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 151 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 152 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 153 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 154 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 155 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 156 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 157 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 158 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 159 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 160 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 161 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 162 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 163 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 164 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 165 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 166 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 167 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 168 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 169 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 170 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 171 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 172 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 173 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 174 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 175 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 176 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 177 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 178 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 179 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 180 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 181 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 182 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 183 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 184 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 185 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 186 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 187 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 188 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 189 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 190 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 191 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 192 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 193 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 194 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 195 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 196 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 197 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 198 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 199 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 200 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 201 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 202 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 203 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 204 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 205 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 206 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 207 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 208 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 209 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 210 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 211 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 212 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 213 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 214 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 215 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 216 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 217 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 218 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 219 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 220 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 221 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 222 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 223 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 224 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 225 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 226 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 227 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 228 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 229 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 230 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 231 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 232 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 233 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 234 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 235 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 236 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 237 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 238 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 239 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 240 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 241 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 242 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 243 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 244 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 245 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 246 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 247 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 248 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 249 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 250 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 251 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 252 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 253 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 254 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 255 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 256 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 257 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 258 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 259 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 260 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 261 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 262 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 263 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 264 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 265 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 266 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 267 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 268 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 269 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 270 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 271 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 272 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 273 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 274 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 275 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 276 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 277 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 278 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 279 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 280 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 281 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 282 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 283 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 284 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 285 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 286 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 287 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 288 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 289 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 290 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 291 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 292 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 293 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 294 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 295 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 296 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 297 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 298 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 299 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 300 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 301 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 302 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 303 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 304 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 305 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 306 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 307 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 308 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 309 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 310 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 311 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 312 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 313 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 314 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 315 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 316 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 317 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 318 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 319 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 320 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 321 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 322 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 323 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 324 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 325 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 326 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 327 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 328 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 329 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 330 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 331 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 332 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 333 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 334 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 335 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 336 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 337 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 338 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 339 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 340 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 341 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 342 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 343 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 344 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 345 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 346 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 347 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 348 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 349 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 350 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 351 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 352 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 353 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 354 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 355 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 356 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 357 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 358 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 359 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 360 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 361 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 362 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 363 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 364 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 365 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 366 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 367 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 368 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 369 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 370 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 371 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 372 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 373 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 374 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 375 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 376 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 377 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 378 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 379 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 380 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 381 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 382 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 383 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 384 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 385 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 386 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 387 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 388 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 389 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 390 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 391 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 392 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 393 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 394 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 395 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 396 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 397 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 398 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 399 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 400 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 401 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 402 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 403 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 404 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 405 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 406 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 407 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 408 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
