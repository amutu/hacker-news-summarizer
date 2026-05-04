# Hacker News 热门文章摘要 (2026-05-04)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. 英国燃油价格情报

**原文标题**: UK Fuel Price Intelligence

**原文链接**: [https://www.fuelinsight.co.uk](https://www.fuelinsight.co.uk)

**无法访问文章链接。**（提供的网址指向的是主页而非具体文章，且作为AI，在没有特定文本可供分析的情况下，我无法实时浏览网站或访问外部内容。）

---

## 12. Pomiferous：最全面的苹果品种数据库

**原文标题**: Pomiferous: The most extensive apples (pommes) database

**原文链接**: [https://pomiferous.com/](https://pomiferous.com/)

本文介绍了**Pomiferous**，它被称为全球最广泛的苹果品种数据库，收录了超过7000种苹果的信息。该网站设计便于导航，用户可按名称（A-Z）、授粉组（A-H）或收获期（1-7）进行搜索。工具包括高级搜索和收获期计算器。

该数据库按**用途**对苹果进行分类，包括罐装、烹饪、加工、酿酒、甜点、鲜食、果冻、果汁、观赏、派用、授粉和酱料。其中重点介绍了**特色品种**，如卡尔维尔冬白（法国果挞的理想选择）、世界一（日本大型甜点苹果），以及多种酿酒苹果，如阿梅尔·德·贝尔特库尔和金色哈维。"**最近更新**"板块提供了新收录的品种，包括粉红女郎（加拿大）、粉红脆皮，以及多种红肉品种，如惊喜和RF：伯福德红肉，并附有具体用途和简介。

---

## 13. 阻止科技巨头操控用户行为

**原文标题**: Stop big tech from making users behave in ways they don't want to

**原文链接**: [https://economist.com/by-invitation/2026/04/29/stop-big-tech-from-making-users-behave-in-ways-they-dont-want-to](https://economist.com/by-invitation/2026/04/29/stop-big-tech-from-making-users-behave-in-ways-they-dont-want-to)

无法访问该文章链接。所提供的网址（https://economist.com/by-invitation/2026/04/29/stop-big-tech-from-making-users-behave-in-ways-they-dont-want-to）显示为未来日期（2026年），且可能设有付费墙或无法公开访问。我无法获取或总结其内容。

---

## 14. 门罗币的工作量证明机制如何运作

**原文标题**: How Monero's proof of work works

**原文链接**: [https://blog.alcazarsec.com/tech/posts/how-moneros-proof-of-work-works](https://blog.alcazarsec.com/tech/posts/how-moneros-proof-of-work-works)

### 门罗币工作量证明机制解析

门罗币采用**RandomX**算法，这是一种通过优先适配通用CPU来抵抗ASIC的工作量证明机制。与比特币固定的SHA-256不同，RandomX在虚拟机上执行**随机程序**，通过模拟真实CPU负载的内存密集型运算实现抗专用化。

**运行流程：**
1. 旧区块哈希值**密钥K**经Argon2d算法处理，生成256 MiB的**缓存区**。
2. 该缓存扩展为约**2 GiB数据集**，强制触发DRAM访问。
3. 候选区块头**H**初始化2 MiB的**临时存储区**（设计适配CPU缓存）。
4. 生成包含**256条随机指令**的程序——每个8字节字均为有效指令。
5. 虚拟机执行**8组链式程序**（每组2048次迭代），混合整数运算、浮点运算（含除法与平方根）、内存读写及条件分支指令。
6. 最终状态经哈希运算生成256位结果：若低于网络目标值，则该区块有效。

**核心设计逻辑：**
- **内存分层架构**：大数据集施压DRAM，临时存储区考验CPU缓存。
- **浮点运算与分支指令**：杜绝简易硬件捷径。
- **8组链式程序**：防止矿工选择性执行简易程序。
- **双模式设计**：快速模式（挖矿，调用完整数据集）与轻量模式（验证，仅使用缓存）。

**终极目标**：通过使高效挖矿行为等同于通用计算场景，维持抗ASIC特性，保障普通硬件参与挖矿的可行性，降低专用芯片引发的中心化风险。

---

## 15. 欧洲热泵销量上升

**原文标题**: Heat pump sales rise across Europe

**原文链接**: [https://www.pv-magazine.com/2026/05/04/heat-pump-sales-rise-17-across-europe-in-q1-as-energy-prices-surge/](https://www.pv-magazine.com/2026/05/04/heat-pump-sales-rise-17-across-europe-in-q1-as-energy-prices-surge/)

**摘要：**  
2026年第一季度，欧洲11国的住宅热泵销量同比增长17%，达到约57.5万台（2025年第一季度为49.4万台）。此次增长源于伊朗于3月2日关闭霍尔木兹海峡后油气价格急剧攀升。法国、德国和波兰因能源成本上升及安全担忧，平均增长率达25%领跑市场。奥地利因政府补贴缺失导致销量下降30%，拉低了整体平均值。  

欧洲热泵协会（EHPA）总干事保罗·肯尼将当前形势比作消费者在价格上涨和服务质量下降时更换供应商。他指出，热泵为动荡的化石燃料市场提供了解决方案。欧盟委员会在其能源危机计划中提出支持措施——包括增值税/税收减免及针对低收入家庭的社会租赁方案，EHPA敦促相关措施尽快落地。  

文章还强调，研究显示热泵与太阳能光伏的组合方案在11至14年内比燃气供暖更经济，其中空气源热泵型位列最实惠住宅供暖选项。尽管德国政治情绪波动，该技术仍获广泛支持。

---

## 16. 1966年福特野马改装成特斯拉，并实现可用的“完全自动驾驶”功能

**原文标题**: 1966 Ford Mustang Converted into a Tesla with Working 'Full Self-Driving'

**原文链接**: [https://electrek.co/2026/05/02/tesla-1966-mustang-ev-conversion-full-self-driving/](https://electrek.co/2026/05/02/tesla-1966-mustang-ev-conversion-full-self-driving/)

加州汽车配件店店主亚罗·谢尔巴纽克花费约4万美元、历时两年，将一辆1966年福特野马改装成功能完备的特斯拉电动车。该改装车采用Model 3双电机驱动系统（400马力，0-60英里/小时加速约3.5秒），搭载缩短版电池组、15英寸触摸屏及赛博卡车方形方向盘。尤为引人注目的是，通过加装摄像头阵列，该车成功运行特斯拉"全自动驾驶（受监督）"系统，或将成为首辆实现该功能的非特斯拉车辆。尽管经典车型空气动力学性能较弱，该系统仍达到258瓦时/英里的能效，与标准版Model 3持平。该项目展现了特斯拉软硬件生态的可移植性，凸显持续增长的电动车改装市场（2024年估值59亿美元）。谢尔巴纽克于2022年在脸书集市购入这辆野马，并与父亲及兄弟共同完成改装，充电接口取代了原有的油箱盖。

---

## 17. Sierra以150亿美元估值融资9.5亿美元

**原文标题**: Sierra Raises $950M at $15B Valuation

**原文链接**: [https://sierra.ai/blog/better-customer-experiences-built-on-sierra](https://sierra.ai/blog/better-customer-experiences-built-on-sierra)

**摘要：** 人工智能客户体验公司Sierra在由Tiger Global和GV领投的一轮融资中筹集了9.5亿美元，估值超过150亿美元。该公司目前持有超过10亿美元资金，致力于成为AI驱动客户转型的全球标准。

Sierra的增长迅速：从两年前的四家设计合作伙伴，到如今服务超过40%的《财富》50强企业。基于其平台构建的AI代理处理着数十亿次客户交互，包括房屋再融资、保险理赔处理以及退货管理。

文章强调了一个“智能拐点”，指出AI代理已超越订单追踪等简单支持任务。Sierra的客户现在将代理部署在整个客户生命周期中——从销售、留客到收入周期管理——涵盖保险、银行、医疗、电信和零售等行业。

关键部署速度的案例包括：Nordstrom在五周内推出语音代理，Singtel在十周内实现超过70%的问题解决率，Cigna在八周内将患者身份验证时间缩短80%。

Sierra展望从单纯的数字化向真正的转型转变，其中AI代理将个性化、主动且独立——管理客户关系而非单一对话。该公司旨在帮助企业像目前部署代理一样快速地部署变革性的AI体验。

---

## 18. 白宫考虑在人工智能模型发布前对其进行审查

**原文标题**: White House Considers Vetting A.I. Models Before They Are Released

**原文链接**: [https://www.nytimes.com/2026/05/04/technology/trump-ai-models.html](https://www.nytimes.com/2026/05/04/technology/trump-ai-models.html)

无法访问文章链接。

---

## 19. Show HN: nfsdiag —— NFS 诊断应用

**原文标题**: Show HN: nfsdiag - a NFS diagnostic application

**原文链接**: [https://github.com/lsferreira42/nfsdiag](https://github.com/lsferreira42/nfsdiag)

**nfsdiag** 是一款开源命令行工具，用于从客户端诊断 NFS 服务器问题。它执行全面的检查，包括网络连接性（TCP/UDP 端口 111 和 2049）、RPC 服务注册、NFS 版本支持（v2–v4.2）、mountd 导出枚举、权限、root squash、锁定以及陈旧句柄检测。

主要功能：
- 测试网络、RPC 和 NFS 协议层
- 枚举服务器导出并尝试自动挂载
- 模拟 UID/GID 访问和补充组
- 执行文件系统操作（读/写/创建/删除），可配置超时
- 运行性能基准测试（元数据延迟、通过内部测试或 fio 的 I/O）
- 生成详细的 JSON 和独立 HTML 报告
- 支持 Kerberos 检查、IPv6 和 pNFS/NFSRDMA 检测
- 包含安全特性：试运行模式、速率限制、私有挂载命名空间

构建需要 `libtirpc` 和 NFS 客户端工具。该工具需要 root 权限用于挂载和 UID 模拟操作。默认输出简洁摘要，详细模式用于调试。退出码区分成功（0）、警告/失败（1）和使用错误（2）。

该项目包含用于针对常见 NFS 故障场景进行测试的 Docker 固定装置。作者强调，该工具是诊断辅助手段，不能替代服务器端分析，因为 NFS 问题高度依赖环境。

---

## 20. R与Kap的小比较

**原文标题**: A little comparison between R and Kap

**原文链接**: [https://blog.dhsdevelopments.com/a-little-comparison-between-r-and-kap](https://blog.dhsdevelopments.com/a-little-comparison-between-r-and-kap)

**摘要：**

本文通过重新实现一篇博客文章中的示例，比较了R语言和Kap编程语言。该博客文章探讨了R语言相较于Python Pandas的流畅性。作者熟悉R语言，并测试了Kap在数据处理方面的功能。

关键点：
- **数据加载**：R的`read_csv`自动解析数字并处理表头。Kap的`readCsv`返回字符串，因此用户必须手动去除表头（使用分叉）并转换类型（使用`⍎`）。作者建议Kap可优化其CSV读取器。
- **聚合**：两者对金额求和均很直接，但Kap使用`+/`（归约加法）。
- **分组**：Kap的`key`运算符（`⌸`）可简洁分组，例如`purchases.country +/⌸ purchases.amount`。分组前的折扣扣除同样简单。
- **过滤异常值**：Kap使用位图选择（通过`⌿`）和`stat:median`来剔除超过中位数10倍的值。最后一个示例在分组过程中按国家过滤异常值。

总体而言，作者认为Kap的解决方案更简洁，但指出R提供了Kap所缺乏的便捷默认设置（自动解析、表头处理）。结论是偏好取决于个人工作流程需求。

---

## 21. 台积电间谍案涉案人员被判最高10年监禁

**原文标题**: Offenders sentenced up to 10 years for spying on TSMC

**原文链接**: [https://www.taipeitimes.com/News/front/archives/2026/04/28/2003856358](https://www.taipeitimes.com/News/front/archives/2026/04/28/2003856358)

前台积电工程师陈立明因泄露台积电先进2纳米制程相关营业秘密，违反《国家安全法》，被判处10年有期徒刑。这是该法实施以来首起涉及企业实体的案例。另外两名台积电工程师分别被判3年及2年徒刑，另一人则获刑6年。一名东京威力科创台湾分公司员工被判处10个月缓刑并处罚金。作为台积电设备供应商，东京威力科创台湾分公司被罚款1.5亿元新台币。曾在台积电Fab 12厂工作的陈立明，后任职于东京威力科创，并于2023年至2024年间，向在职台积电员工索要机密技术信息，以协助东京威力科创取得设备供应地位。泄露信息包括2纳米制程蚀刻设备的营业秘密。台积电经内部调查后举报此案。检方认定东京威力科创未尽到对陈立明的监督责任，且其云端储存中仍存有台积电营业秘密。东京威力科创表示，未发现机密遭泄露给第三方。台积电对侵犯营业秘密行为持零容忍立场。

---

## 22. 牛顿万有引力定律通过最重大考验

**原文标题**: Newton's law of gravity passes its biggest test

**原文链接**: [https://www.science.org/content/article/newton-s-law-gravity-passes-its-biggest-test-ever](https://www.science.org/content/article/newton-s-law-gravity-passes-its-biggest-test-ever)

**摘要：**

一项对跨越90亿年观测到的260万个星系的新分析，在迄今测试过的最大尺度上证实了牛顿引力定律。利用暗能量光谱仪（DESI）的数据，研究人员测量了引力如何影响星系的成团与运动。他们发现引力常数（G）在宇宙时间与距离上保持一致，没有证据表明引力在星系际尺度上减弱或增强。这一结果排除了某些为解释暗能量与宇宙加速而提出的、不引入宇宙学常数的替代引力理论。然而，该研究并未解决暗物质或暗能量的本质问题；它只是表明，即使在数亿光年的尺度上，标准引力依然成立。这些发现强化了标准ΛCDM宇宙学模型，并对大尺度上牛顿引力的任何偏离施加了迄今最严格的限制。

---

## 23. ‘小猫太空局’：《坎巴拉太空计划》的精神续作（2025）

**原文标题**: 'Kitten Space Agency', the Spiritual Successor to 'Kerbal Space Program' (2025)

**原文链接**: [https://www.space.com/entertainment/space-games/kitten-space-agency-is-the-spiritual-successor-to-kerbal-space-program-and-they-have-an-ex-spacex-engineer-on-the-team-interview](https://www.space.com/entertainment/space-games/kitten-space-agency-is-the-spiritual-successor-to-kerbal-space-program-and-they-have-an-ex-spacex-engineer-on-the-team-interview)

**摘要：猫咪航天局（KSA）**

由《DayZ》创始人迪恩·霍尔领导的RocketWerkz工作室，正在开发《坎巴拉太空计划》（KSP）的精神续作《猫咪航天局》（KSA）。开发团队包括原版KSP创作者费利佩·法兰格，以及前SpaceX飞行软件工程师斯特凡·莫卢夫。

与问题缠身的《KSP2》不同，KSA从一开始就致力于奠定坚实的技术基础，避免前作的性能问题。游戏在载具与星球之间可实现无缝切换，无需加载界面。

目前团队意外发布了作为技术测试用的预阿尔法版本，重点测试飞行和轨道力学等核心系统。火箭建造、虚构太阳系以及成长体系等完整功能将在后续版本推出。

主要差异化特色：
- **随心付费模式：** 游戏将免费开放，玩家可自愿提供经济支持
- **开发透明化：** 开发进度通过Discord实时直播
- **模组支持：** 基于自研"Brutal"引擎原生构建，团队成员包括前KSP著名模组作者
- **易上手性：** 在保持真实性的同时比KSP更易上手
- **猫咪宇航员：** 选择猫咪作为宇航员既减少了复杂动画需求，也促使玩家更关爱船员，使其不再像Kerbals那样"可有可无"

莫卢夫的SpaceX背景出人意料地适合这项工作，因为游戏开发与航天器控制软件存在诸多相似之处。团队希望KSA能激发人们对真实航天技术的兴趣与教育意义。

---

## 24. 数万亿美元退休资金流入不透明信托基金

**原文标题**: Trillions in Retirement Dollars Flow into Opaque Trusts

**原文链接**: [https://www.bloomberg.com/news/features/2026-05-03/trillions-in-us-retirement-dollars-flow-into-opaque-trusts-that-rival-etfs](https://www.bloomberg.com/news/features/2026-05-03/trillions-in-us-retirement-dollars-flow-into-opaque-trusts-that-rival-etfs)

无法访问该文章链接。

---

## 25. 使用“底稿”确保文本与数字的准确性

**原文标题**: Using “underdrawings” for accurate text and numbers

**原文链接**: [https://samcollins.blog/underdrawings/](https://samcollins.blog/underdrawings/)

**摘要：** 本文介绍了一种“底稿法”，用于生成包含准确文字和数字的AI图像——这是图像生成模型通常难以完成的任务。

**问题：** 标准AI图像模型（例如Gemini 3.0 Pro、ChatGPT Images 2）在复杂的视觉内容中（如带编号的螺旋游戏棋盘）无法正确生成文字、编号或顺序。

**解决方案（双层流程）：**
1. **第一层（底稿）：** 使用确定性工具（如SVG、Python）创建包含正确文字、编号和布局的精确图像。该工具能完美处理数学和定位问题。
2. **第二层（上色）：** 多模态AI模型（例如接受图像+文字输入的Gemini 3.0 Pro）以底稿为基础进行创作。用户同时提供底稿图像和提示词，将其转化为逼真且风格化的场景（例如“黏土立体模型”、“糖果摄影”）。

**关键见解：** 该方法利用了每种技术的优势——确定性工具保证准确性，生成模型负责美学效果。AI有效“覆盖绘制”了精确的轮廓。

**示例：** 作者先创建包含50个正确编号石子的螺旋棋盘SVG底稿，再使用Gemini 3.0 Pro将其转化为黏土或糖果立体模型，成功生成了所需图像。

**注意事项：** 该方法并非每次都能达到100%完美效果。

---

## 26. 《可见的佐克：Zork 3》

**原文标题**: The Visible Zorker: Zork 3

**原文链接**: [https://eblong.com/infocom/visi/zork3/](https://eblong.com/infocom/visi/zork3/)

本文是PATREON平台上的**《可见的Zorker：Zork 3》**游戏页面，内容简洁，主要包括游戏标题的两次显示、简短欢迎文字（“欢迎收听解说音轨”）以及技术说明。页面告知用户，**必须在浏览器中启用JavaScript**才能运行游戏，并显示加载动画（“加载中……”），但未提供关于游戏剧情、特色或解说音轨性质的更多细节。本质上，该页面仅是游戏的占位符或启动器，用户需先执行操作（启用JavaScript）才能访问实质性内容或开始游戏。

---

## 27. OpenAI、谷歌和微软支持法案，资助学校开展“人工智能素养”教育

**原文标题**: OpenAI, Google, and Microsoft Back Bill to Fund 'AI Literacy' in Schools

**原文链接**: [https://www.404media.co/literacy-in-future-technologies-artificial-intelligence-act-adam-schiff-mike-rounds/](https://www.404media.co/literacy-in-future-technologies-artificial-intelligence-act-adam-schiff-mike-rounds/)

**摘要：**  
由参议员亚当·希夫提出、OpenAI、谷歌和微软共同支持的两党法案《LIFT AI法案》，旨在将“人工智能素养”纳入美国K-12课程体系。该法案将授权国家科学基金会拨款，用于开发以人工智能为重点的教学材料、教师培训及评估方法。人工智能素养被定义为按年龄分层的能力，包括有效使用AI、批判性解读AI输出、解决问题及降低风险。文章指出，据报道学生和教师已对此类举措表示反感。该文章需付费阅读，提供付费或免费获取选项。

---

## 28. BYOMesh——新型LoRa网状无线电提供100倍带宽

**原文标题**: BYOMesh – New LoRa mesh radio offers 100x the bandwidth

**原文链接**: [https://partyon.xyz/@nullagent/116499715071759135](https://partyon.xyz/@nullagent/116499715071759135)

**文章摘要：**

本文介绍了一款名为BYOMesh的新型LoRa网状无线电系统，声称其带宽是传统LoRa设备的100倍。这项技术由名为PartyOn的用户开发，旨在显著提升网状网络的数据传输速率。该公告通过Mastodon帖子发布，在网页端查看需启用JavaScript。摘要中未提供进一步的技术细节、定价或发布日期。核心信息是，该系统有望为基于LoRa的网状通信带来重大带宽升级。

---

## 29. 为什么神经网络与密码算法如此相似？（2025）

**原文标题**: Why are neural networks and cryptographic ciphers so similar? (2025)

**原文链接**: [https://reiner.org/neural-net-ciphers](https://reiner.org/neural-net-ciphers)

**摘要**

本文（2025年）认为，神经网络与加密密码因趋同演化、而非直接模仿，展现出惊人的结构相似性。两个领域均通过三个共同属性解决问题：

1.  **弱正确性

这些共同的约束条件在各个尺度上都导致了相同的算法模式：

-   **顺序处理：** 循环神经网络镜像了SHA-3的“海绵”结构（吸收输入，挤出输出）。
-   **并行处理：** Transformer和快速消息认证码均通过添加位置编码来并行处理数据块。
-   **核心原语：** 两者都交替使用线性的（混合）和非线性的（复杂性）层，并重复相同结构。
-   **高效混合：** 两者都将状态组织为网格，交替进行行混合（如神经网络中的注意力机制，AES中的ShiftRows）和列混合（如前馈层、MixColumns），从而最大化并行性和缓存效率。

文章总结此为一个“趋同演化”的案例：当问题在约束条件较少且对硬件性能要求极高的情况下，需要复杂且彻底的混合时，最优解决方案自然会趋向于深度并行、重复层的混合器。

---

## 30. 《Texico：不碰电脑也能学编程原理》

**原文标题**: Texico: Learn the principles of programming without even touching a computer

**原文链接**: [https://www3.nhk.or.jp/nhkworld/en/shows/texico/](https://www3.nhk.or.jp/nhkworld/en/shows/texico/)

**概要：**

Texico是NHK WORLD-JAPAN推出的创新教育节目，无需电脑即可教授编程核心原理。它通过独特的动画角色，以趣味易懂的方式引导学习者掌握五个基础编程流程：分析、组合、概括、抽象和模拟。该节目聚焦逻辑思维而非代码语法，通过无屏幕的互动活动，让各年龄段初学者理解编程概念，着重培养问题解决能力和计算思维。

---

