# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2025-12-21.md)

*最后自动更新时间: 2025-12-21 20:20:39*
## 1. 日志记录真糟糕

**原文标题**: Logging Sucks

**原文链接**: [https://loggingsucks.com/](https://loggingsucks.com/)

本文认为，传统日志记录在现代分布式系统中存在根本性缺陷。它产生海量的低上下文数据，这些数据对于调试具体用户问题毫无用处，因为字符串搜索无法跨服务关联相关事件。

提出的解决方案是转向**宽事件**或**规范日志行**。每个服务不应为每个请求分散记录大量日志语句，而应为每个请求发出一个单一、丰富、结构化的事件，包含所有相关上下文（例如用户详情、业务数据、错误、性能指标）。这将日志从调试日记转变为可查询的业务事件记录。

作者澄清，尽管**结构化日志记录**和**OpenTelemetry**等工具是必要的，但仅靠它们并不足够。关键转变在于思维模式：开发者必须有意识地通过代码埋点，在这些宽事件中捕获高基数、高维度的数据。这使得强大的分析查询能够即时定位问题，用精准调查取代徒劳的文本搜索。

---

## 2. Show HN：2025年Hacker News上提到的书籍

**原文标题**: Show HN: Books mentioned on Hacker News in 2025

**原文链接**: [https://hackernews-readings-613604506318.us-west1.run.app](https://hackernews-readings-613604506318.us-west1.run.app)

本文精选了2025年Hacker News讨论串中推荐或提及的书籍清单。该项目作为社区驱动、众包产生的阅读书单，记录了当年以科技和创业为导向的Hacker News读者群体的文学兴趣。

书目按书名排列并附作者信息。其核心特点是每个条目都直接链接到提及该书籍的Hacker News具体评论串，方便读者查看推荐背景及相关讨论。

这份书单涵盖广泛体裁，但更偏向Hacker News社区常见的非虚构题材，如科技、科学、商业、历史与哲学。它如同一份文化快照，生动呈现了2025年这个特定网络社区产生共鸣的书籍。

总而言之，这是一个简洁实用的资源库，帮助读者发现经Hacker News用户筛选的书籍。它借助社区讨论创建了一份具有时效价值的阅读指南，且不对入选书目进行主观评判。

---

## 3. Mullvad VPN：“这是聊天控制3.0的尝试。”

**原文标题**: Mullvad VPN: "This is a Chat Control 3.0 attempt."

**原文链接**: [https://mastodon.online/@mullvadnet/115742530333573065](https://mastodon.online/@mullvadnet/115742530333573065)

**摘要：**

专注于隐私保护的Mullvad VPN服务批评了欧盟委员会的一项新立法提案，称其试图重启备受争议的“聊天监控”监控措施。

该公司的声明提及了先前版本“聊天监控2.0”的明显失败，暗示新提案是旧案重提。尽管提供的文本未概述新提案的具体细节，但其核心指控是：该提案以打击儿童性虐待材料（CSAM）为名，试图再次对私人数字通信（如聊天和电子邮件）实施大规模扫描。

Mullvad的立场认为，这构成了对数字隐私和端到端加密的根本性威胁。该消息通过其Mastodon账户分享，关于JavaScript的说明表明消息源自去中心化社交平台Mastodon的一篇帖子。

本质上，本文强调了一位隐私倡导者对欧盟新倡议的强烈反对，他们认为该倡议将强制对私人网络对话进行广泛监控。

---

## 4. E.W. Dijkstra 档案

**原文标题**: E.W.Dijkstra Archive

**原文链接**: [https://www.cs.utexas.edu/~EWD/welcome.html](https://www.cs.utexas.edu/~EWD/welcome.html)

E.W. Dijkstra档案馆是一个数字资料库，收藏了先驱计算机科学家艾兹赫尔·W·迪杰斯特拉（1930–2002）的手稿。该馆提供了一千多份连续编号的技术笔记、差旅报告和评论文章（统称为“EWDs”）的访问权限，这些资料由他私下传阅数十年。其中许多最终得以发表，但大部分仍未公开出版。

档案馆提供了多种浏览馆藏的方式，包括BibTeX和临时索引，并收录了他的博士论文和技术报告等相关资料。为提高可访问性，志愿者制作了可搜索的文本转录稿及部分翻译内容。网站还收录了讲座和访谈的音视频记录，以及致敬文章和讣告，这些内容展现了迪杰斯特拉在算法设计、编程语言和分布式计算等领域的深远影响。

大部分手稿的版权由其遗产管理机构持有，已出版作品的版权则归原出版商所有。实物原件保存在德克萨斯大学奥斯汀分校的美国历史中心。该档案馆是一个合作项目，欢迎读者参与校对、摘要编写和文献关联识别工作，是研究迪杰斯特拉学术成果与遗产的综合性资源。

---

## 5. ARIN公共事件报告 – 4.10 误分配错误

**原文标题**: ARIN Public Incident Report – 4.10 Misissuance Error

**原文链接**: [https://www.arin.net/announcements/20251212/](https://www.arin.net/announcements/20251212/)

2025年12月2日，ARIN误将一段IPv4地址块（23.150.164.0/24）从其原持有者处移除，并重新分配给了一位新申请者。此次错误源于分析人员依赖用于管理“4.10”过渡地址空间的手动离线电子表格，未能注意到ARIN在线系统中显示该地址块已被分配的标识。

这一错误注册持续了七天，期间该地址块以错误机构的名义被广播，引发了路由冲突风险。原客户于12月9日报告此问题，促使ARIN立即恢复其地址块、向申请客户发放替代地址块，并协调路由撤回。

根本原因在于针对4.10地址空间的混合库存管理流程存在缺陷，该流程将在线系统与易出错的离线文件结合使用。作为即时缓解措施，ARIN已对涉及网络删除的任何工作流程实施强制双人复核。中期计划中，ARIN将加快架构改进，将所有库存整合至单一在线系统，并采用自动化、业务规则驱动的控制机制，以防止类似错误发生。

---

## 6. 展示 HN：WalletWallet – 从任何内容创建苹果通行证

**原文标题**: Show HN: WalletWallet – create Apple passes from anything

**原文链接**: [https://walletwallet.alen.ro/](https://walletwallet.alen.ro/)

**WalletWallet** 是一款免费的在线工具，允许用户将任何条形码（例如会员卡或积分卡上的条形码）转换为苹果钱包凭证。

操作过程简单且私密：用户输入条形码数据，自定义凭证的外观和标题，然后下载标准的 `.pkpass` 文件，即可直接添加到苹果钱包中。该服务强调完全免费，无需注册、安装或创建账户，所有操作均在用户浏览器内完成。

---

## 7. 粗糙更好

**原文标题**: Coarse Is Better

**原文链接**: [https://borretti.me/article/coarse-is-better](https://borretti.me/article/coarse-is-better)

作者认为，虽然现代AI图像生成器（如“纳米香蕉专业版”）在技术上更先进，但其生成的艺术作品却不如早期DALL-E和Midjourney v2等旧模型。

核心问题在于新模型过于精确和刻板。它们严格遵循指令，导致生成的图像色彩单调、风格平庸且过于具象。相比之下，旧模型则显得“粗糙”——它们的缺陷、模糊性和矛盾性反而使作品充满感染力、神秘感，并留有解读空间。这种“粗糙感”激发了观者的想象力，从而创造出更具吸引力和美感的艺术。

作者通过对比示例阐明这一点：旧模型能根据指令生成色彩鲜明、风格独特且富有想象力的图像，而新模型虽在技术上准确，却产出枯燥刻板的解读（例如，将“来自大英博物馆”直接理解为生成博物馆文物的照片）。

结论是，分辨率和指令忠实度的技术进步是以牺牲艺术灵魂为代价的。作者呼吁回归早期AI艺术中那种“怪异”、抽象且充满想象力的特质，正是这些特质赋予了其魔力。

---

## 8. 10秒内获得AI代码审查

**原文标题**: Get an AI code review in 10 seconds

**原文链接**: [https://oldmanrahul.com/2025/12/19/ai-code-review-trick/](https://oldmanrahul.com/2025/12/19/ai-code-review-trick/)

本文介绍了一种简单方法，可在任何GitHub拉取请求（PR）上快速获得AI驱动的代码审查。核心技巧是在PR的URL末尾添加 **`.diff`**（例如`https://github.com/user/repo/pull/11.diff`），即可获得纯文本格式的变更内容。

随后可将此差异文本复制到ChatGPT或Claude等大型语言模型（LLM）中，并可附加简短指令如“请审查”。这种方法无需特殊工具、浏览器扩展或GitHub Copilot Enterprise等付费服务，即可即时获得关于潜在问题、遗漏边界情况和改进建议的反馈。

作者强调，这**并非要取代人工同行评审**，而是作为有价值的前置筛选环节。通过LLM预先发现明显问题，开发者能提交更清晰的代码供真人审查。这种做法被视为对团队成员的尊重，因为它能缩短整体评审周期，促进更高效的协作。

---

## 9. 结构化输出制造虚假信心

**原文标题**: Structured Outputs Create False Confidence

**原文链接**: [https://boundaryml.com/blog/structured-outputs-create-false-confidence](https://boundaryml.com/blog/structured-outputs-create-false-confidence)

本文认为，使用结构化输出（强制JSON模式）会降低大语言模型的响应质量，因为它迫使模型优先考虑格式合规性，而非准确性和细微差别。

主要观点：
- **质量下降**：结构化输出可能导致事实错误，例如即使使用先进模型，也可能将收据数量误读为1.0而非0.46。
- **错误处理限制**：它们阻碍大语言模型自然解释边缘情况（例如收到大象照片而非收据）或提供部分/不确定的结果。
- **推理能力受损**：像思维链这样的技术受到阻碍，因为模型必须将“智能预算”花费在格式约束上，而非自由推理。
- **技术原因**：这是由于“约束解码”造成的，即模型的令牌选择被人为限制以适应模式，即使更准确的答案存在于模式之外。

提出的解决方案是让大语言模型以自由文本形式响应，然后解析输出。这保留了模型自然推理、拒绝任务、警告问题以及提供更高质量响应的能力，同时解析作为对抗提示注入的防御层。核心结论是，结构化输出通过保证格式一致性，以牺牲响应准确性和灵活性为代价，创造了“虚假信心”。

---

## 10. 解决问题的三种方法

**原文标题**: Three Ways to Solve Problems

**原文链接**: [https://andreasfragner.com/writing/three-ways-to-solve-problems](https://andreasfragner.com/writing/three-ways-to-solve-problems)

本文提出了一个基于杰拉尔德·温伯格定义的问题解决框架：问题即现状与理想状态之间的差距。文章指出，应对这种差距有三种方式：

1.  **推动世界向理想状态靠拢**（传统方法）。
2.  **改变对现状的认知**，这可能会揭示差距比想象中小，使得问题不值得立即解决。
3.  **调整理想状态**，从而解决一个更简单、更具成本效益的问题版本（例如，用20%的精力实现80%的目标）。

作者强调，后两种策略常被忽视，却往往是最优解。它们需要重新定义问题，并在追求完美的内外压力下做出有原则的权衡。

这对创始人和产品经理尤为关键，因为他们必须持续进行优先级判断。例如，初创公司可能容忍混乱的内部流程以聚焦增长，或产品经理刻意忽略多数瑕疵而专注于少数关键问题。掌握对次要问题说“不”的能力，被视为高效领导力的核心技能。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 2 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 3 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 4 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 5 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 6 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 7 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 8 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 9 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 10 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 11 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 12 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 13 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 14 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 15 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 16 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 17 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 18 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 19 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 20 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 21 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 22 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 23 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 24 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 25 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 26 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 27 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 28 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 29 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 30 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 31 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 32 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 33 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 34 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 35 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 36 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 37 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 38 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 39 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 40 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 41 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 42 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 43 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 44 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 45 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 46 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 47 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 48 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 49 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 50 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 51 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 52 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 53 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 54 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 55 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 56 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 57 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 58 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 59 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 60 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 61 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 62 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 63 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 64 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 65 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 66 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 67 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 68 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 69 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 70 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 71 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 72 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 73 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 74 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 75 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 76 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 77 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 78 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 79 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 80 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 81 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 82 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 83 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 84 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 85 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 86 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 87 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 88 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 89 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 90 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 91 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 92 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 93 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 94 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 95 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 96 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 97 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 98 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 99 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 100 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 101 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 102 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 103 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 104 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 105 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 106 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 107 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 108 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 109 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 110 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 111 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 112 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 113 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 114 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 115 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 116 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 117 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 118 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 119 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 120 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 121 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 122 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 123 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 124 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 125 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 126 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 127 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 128 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 129 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 130 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 131 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 132 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 133 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 134 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 135 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 136 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 137 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 138 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 139 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 140 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 141 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 142 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 143 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 144 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 145 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 146 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 147 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 148 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 149 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 150 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 151 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 152 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 153 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 154 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 155 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 156 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 157 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 158 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 159 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 160 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 161 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 162 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 163 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 164 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 165 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 166 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 167 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 168 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 169 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 170 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 171 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 172 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 173 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 174 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 175 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 176 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 177 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 178 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 179 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 180 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 181 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 182 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 183 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 184 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 185 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 186 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 187 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 188 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 189 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 190 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 191 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 192 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 193 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 194 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 195 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 196 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 197 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 198 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 199 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 200 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 201 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 202 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 203 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 204 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 205 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 206 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 207 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 208 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 209 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 210 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 211 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 212 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 213 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 214 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 215 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 216 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 217 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 218 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 219 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 220 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 221 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 222 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 223 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 224 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 225 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 226 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 227 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 228 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 229 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 230 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 231 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 232 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 233 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 234 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 235 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 236 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 237 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 238 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 239 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 240 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 241 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 242 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 243 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 244 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 245 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 246 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 247 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 248 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 249 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 250 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 251 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 252 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 253 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 254 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 255 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 256 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 257 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 258 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 259 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 260 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 261 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 262 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 263 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 264 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 265 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 266 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 267 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 268 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 269 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 270 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 271 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 272 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 273 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 274 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 275 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
