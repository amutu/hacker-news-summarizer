# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-05.md)

*最后自动更新时间: 2026-03-05 20:38:17*
## 1. GPT-5.4

**原文标题**: GPT-5.4

**原文链接**: [https://openai.com/index/introducing-gpt-5-4/](https://openai.com/index/introducing-gpt-5-4/)

无法访问文章链接。

---

## 2. 维基百科因大量管理员账户遭入侵进入只读模式

**原文标题**: Wikipedia in read-only mode following mass admin account compromise

**原文链接**: [https://www.wikimediastatus.net](https://www.wikimediastatus.net)

2026年3月5日，维基百科背后的组织维基媒体因一起重大安全事件（涉及大量管理员账户遭入侵）将所有维基站点切换为只读模式。该问题首次于UTC时间15:36被发现，随即启动调查。

至UTC时间16:11，问题得到确认并开始实施修复。维基站点于UTC时间17:09恢复读写模式，但部分编辑功能为谨慎起见仍暂时禁用。UTC时间17:36的状态更新显示修复措施已到位并处于监控中，事件最终于UTC时间18:36完全解决。

此次事件发生前，平台已连续数周出现数据库故障与性能下降等技术问题，凸显出该阶段平台运营面临的多重挑战。应对过程中，平台通过禁用关键编辑功能以控制安全漏洞影响，同时对遭入侵的管理员账户进行安全加固。

---

## 3. 品牌时代

**原文标题**: The Brand Age

**原文链接**: [https://paulgraham.com/brandage.html](https://paulgraham.com/brandage.html)

本文探讨了瑞士制表业如何在1970年代的“石英危机”后，从精密工程行业转型为奢侈品品牌产业。面对技术更优、价格更低的日本石英技术以及货币重估，该行业的销量大幅下滑。

少数公司如百达翡丽和爱彼通过将重心从性能（精准度和纤薄度）转向品牌声望得以生存。它们开始设计独特表壳，例如百达翡丽的Golden Ellipse（1968年）和爱彼的皇家橡树（1972年），使品牌具有视觉辨识度。同时，广告宣传不再强调技术优势，而是突出 exclusivity 和高昂价格。

文章认为，这一转变造成了品牌营销与优秀设计之间的根本冲突。在“黄金时代”（1945-1970年），制表追求的是计时功能的最优极简设计，而品牌营销则需要独特性，往往以牺牲功能性为代价。幸存下来的制表商认识到，在实质性差异消失的时代，其价值不在于工程技术，而在于销售身份象征——这一高利润模式定义了现代奢侈腕表行业。

---

## 4. Linux硬件热插拔事件，那些血淋淋的细节

**原文标题**: Hardware hotplug events on Linux, the gory details

**原文链接**: [https://arcanenibble.github.io/hardware-hotplug-events-on-linux-the-gory-details.html](https://arcanenibble.github.io/hardware-hotplug-events-on-linux-the-gory-details.html)

本文探讨了Linux如何处理硬件热插拔事件，重点分析两种方法：通过netlink的直接内核通知以及udev重广播事件。作者深入研究了底层机制，因为udev现已集成到systemd中且相关文档稀缺。

内核使用`NETLINK_KOBJECT_UEVENT`协议向用户空间发送原始事件消息（一系列以空字符结尾的字符串，包含操作和设备详情），特别是发送到多播组1（`MONITOR_GROUP_KERNEL`）。但直接监听这些消息可能导致竞态条件，因为udev可能仍在处理设备（例如设置权限）。

udev在处理事件后，会将其重广播到多播组2（`MONITOR_GROUP_UDEV`）。这些消息在属性字符串前附加了二进制头部（`struct udev_packet_header`）。头部包含魔数（`0xfeedcafe`）、偏移量和哈希值（使用MurmurHash2计算`SUBSYSTEM`和`DEVTYPE`的哈希，并为标签添加布隆过滤器），以便接收方（如libudev）进行高效过滤。

文章提供了示例C代码，演示如何监听内核和udev的netlink套接字、解析消息并验证哈希值。文中强调，虽然libusb建议使用udev后端以避免竞态，但理解底层的netlink通信机制可以实现无需外部库的直接事件监控。

---

## 5. 五角大楼正式将Anthropic供应链风险列为关注对象

**原文标题**: Pentagon Formally Labels Anthropic Supply-Chain Risk

**原文链接**: [https://www.wsj.com/politics/national-security/pentagon-formally-labels-anthropic-supply-chain-risk-escalating-conflict-ebdf0523](https://www.wsj.com/politics/national-security/pentagon-formally-labels-anthropic-supply-chain-risk-escalating-conflict-ebdf0523)

**《五角大楼正式将Anthropic列为供应链风险》摘要**

美国国防部正式将人工智能公司Anthropic指定为“运营关键供应商”，这一标签专门授予那些一旦出现故障或中断将严重影响国家安全的企业。此举使Claude AI助手的创造者Anthropic获得了与主要国防承包商相似的地位，标志着其技术被认可为军事行动的关键组成部分。

此项认定源于五角大楼对人工智能供应链高度集中于少数科技巨头的担忧。其中一项主要风险是Anthropic在云计算方面对亚马逊云服务（AWS）的深度依赖。国防部担心，若AWS遭破坏或其服务中断，可能严重削弱Anthropic为军方提供和维护其AI模型的能力。

此次正式标签是五角大楼为保障技术供应链安全并推动其多元化采取的重大升级措施。它使Anthropic在获得政府支持和资源（如网络安全援助、零部件优先供应）方面享有优先权，但同时也意味着公司将面临更严格的政府审查，并须满足更高的安全与运营韧性标准。

这一行动凸显出国家安全机构日益关注人工智能生态系统的基础层——如云基础设施和先进芯片——将其视为潜在的单一故障点。它标志着军方不再仅仅将AI视为工具，而是将构建AI的公司视为关键基础设施合作伙伴。

---

## 6. 让我们动起来

**原文标题**: Let's Get Physical

**原文链接**: [https://m4iler.cloud/posts/lets-get-physical/](https://m4iler.cloud/posts/lets-get-physical/)

本文详述了一次为期一周的实体渗透测试，作者与同事成功潜入一家公司的安保建筑，以评估其安全漏洞。

他们的目标是模拟攻击者，测试闭路电视监控和警卫响应等防御措施。尽管预期会立即被发现，他们却轻松混入人群，尾随进入大楼，在办公室内自由走动未受阻拦，甚至公然移走了一个装满敏感文件的上锁碎纸桶。他们进入了一位总监未上锁的办公室，并差点通过社会工程学手段说服清洁工进入服务器机房。

关键发现突显了普遍存在的安全意识缺失：员工从未质疑无证件的陌生人，警卫对监控中明显的可疑活动无动于衷，而劣质门锁和常开的门也削弱了实体安保。唯一有效的防御来自清洁人员，他们严格核对了授权。

测试结论指出，虽然当前安保措施严重不足，但通过管理层支持、加强培训和流程改进，这些问题均可解决。此次经历被描述为一次极为成功的测试，暴露了关键的实体安全漏洞。

---

## 7. GitHub问题标题导致四千台开发者电脑被入侵

**原文标题**: A GitHub Issue Title Compromised 4k Developer Machines

**原文链接**: [https://grith.ai/blog/clinejection-when-your-ai-tool-installs-another](https://grith.ai/blog/clinejection-when-your-ai-tool-installs-another)

“Clinejection”攻击通过利用AI驱动的GitHub问题分类机器人，成功入侵了4,000台开发者机器。攻击者将恶意指令注入问题标题，机器人执行该指令后引发了一系列漏洞：缓存污染、凭证窃取，最终导致未经授权发布了一个被篡改的npm包（`cline@2.3.0`）。该版本通过`postinstall`钩子静默安装了一个独立的AI代理OpenClaw，并获取了完整的系统访问权限。

攻击的核心机制是提示注入，使得不受信任的自然语言能够触发具有特权的CI/CD操作。尽管此前已有漏洞披露，但凭证轮换机制的缺陷导致npm令牌暴露，从而实现了恶意发布。

此次事件突显了一种新的供应链威胁：一个AI工具被攻破后，可在未经用户同意的情况下将另一个独立代理植入用户系统。传统的安全控制措施（如`npm audit`和代码审查）未能检测到该攻击，因为有效载荷涉及合法软件包且代码改动极小。

作为应对措施，Cline已迁移至更安全的实践方案，例如使用OIDC来源证明进行发布，以防止令牌滥用。该事件强调了评估CI/CD中AI代理行为的紧迫性，因为这些代理在处理不受信任的输入时拥有高级别访问权限，从而形成了巨大的攻击面。

---

## 8. 好的软件懂得适可而止。

**原文标题**: Good software knows when to stop

**原文链接**: [https://ogirardot.writizzy.com/p/good-software-knows-when-to-stop](https://ogirardot.writizzy.com/p/good-software-knows-when-to-stop)

本文通过一个虚构场景——简单的`ls`命令被过度复杂的AI替代品取代——来论证优秀软件应当理解自身使命，并懂得何时停止迭代。

作者警示了当前为成熟工具强行添加AI与冗余功能的趋势，这种趋势可能损害工具的核心效用。文章主张聚焦而克制的软件设计理念，并提炼了《重来》与《实现》两本书的核心原则：拥抱限制条件、忽略表面功能需求、尽早发布、拒绝非必要增补、解决自身实际问题。

核心观点在于：为特定问题提供可靠的标准解决方案，比不断标榜“最新潮流”更具持久价值。当众多工具匆忙将“AI”加入名称时，本文提醒我们：激进的改变未必意味着进步。

---

## 9. Show HN: Jido 2.0，Elixir 智能体框架

**原文标题**: Show HN: Jido 2.0, Elixir Agent Framework

**原文链接**: [https://jido.run/blog/jido-2-0-is-here](https://jido.run/blog/jido-2-0-is-here)

Jido 2.0 是 Elixir 人工智能代理框架的重大版本更新，经过 18 个月的开发后完全重构。创建者认为 BEAM 运行时（Elixir/Erlang）特别适合构建健壮、并发的代理系统，相比 TypeScript 或 Python 的单线程方案更具优势。

其核心理念是“纯函数式代理架构”，代理被设计为简单的数据结构。所有逻辑通过单一的 `cmd/2` 函数流转，生成更新后的代理和副作用“指令”，使代理具备高度可测试性和可调试性。关键组件包括：
*   **`Jido.AgentServer`**：用于托管代理的受监督 GenServer 运行时。
*   **可插拔策略**：如 `Direct` 或 `FSM`，用于控制动作执行。
*   **`jido_action` 与 `jido_signal`**：分别用于定义代理能力的独立包和标准化消息系统。

**Jido AI** 是添加大语言模型智能的中间层，提供六种推理策略（如 ReAct），并基于支持多供应商的 Elixir 大语言模型客户端 **ReqLLM** 构建。该框架注重生态发展，包含与 **Ash 框架**（`ash_jido`）的一流集成，以及用于浏览器自动化、记忆存储等功能的社区扩展包。

本次版本聚焦于简化 API、减少冗余代码，并充分发挥 Elixir 在构建持久化、高并发人工智能代理方面的优势。

---

## 10. 利用JDK向量API优化推荐系统

**原文标题**: Optimizing Recommendation Systems with JDK's Vector API

**原文链接**: [https://netflixtechblog.com/optimizing-recommendation-systems-with-jdks-vector-api-30d2830401ec](https://netflixtechblog.com/optimizing-recommendation-systems-with-jdks-vector-api-30d2830401ec)

根据文章内容，以下是简明摘要：

Netflix工程团队探索使用Java向量API（JEP 338）来优化其实时推荐系统的性能。这些系统严重依赖机器学习推理，涉及大量计算密集的线性代数运算，如点积和矩阵乘法。

核心挑战在于：虽然Java是他们的主要生态语言，但这些关键计算常受限于标量运算，无法利用现代CPU的单指令多数据（SIMD）能力。向量API提供了一种与平台无关的方式来表达数据并行计算，即时（JIT）编译器可将其编译为高效的SIMD指令。

文章详述了他们的实验过程：将排名算法中的关键“特征组合”操作确定为目标，使用向量API重写该操作，并进行严格基准测试。结果显著，优化后的函数性能提升了**1.4至2.0倍**，同时降低了CPU使用率。这在大规模应用中转化为可观的延迟减少和成本节约。

关键结论是：向量API成功弥合了Java应用在高性能计算领域的性能差距。它使开发者能够编写可移植、表达性强的代码，在Java生态内实现接近原生的数值计算速度，无需转向C++等底层语言。这项优化提升了推荐引擎的效率，直接改善了服务响应能力。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 2 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 3 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 4 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 5 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 6 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 7 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 8 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 9 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 10 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 11 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 12 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 13 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 14 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 15 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 16 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 17 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 18 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 19 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 20 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 21 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 22 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 23 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 24 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 25 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 26 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 27 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 28 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 29 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 30 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 31 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 32 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 33 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 34 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 35 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 36 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 37 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 38 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 39 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 40 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 41 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 42 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 43 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 44 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 45 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 46 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 47 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 48 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 49 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 50 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 51 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 52 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 53 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 54 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 55 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 56 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 57 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 58 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 59 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 60 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 61 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 62 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 63 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 64 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 65 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 66 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 67 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 68 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 69 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 70 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 71 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 72 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 73 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 74 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 75 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 76 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 77 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 78 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 79 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 80 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 81 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 82 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 83 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 84 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 85 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 86 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 87 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 88 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 89 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 90 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 91 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 92 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 93 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 94 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 95 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 96 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 97 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 98 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 99 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 100 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 101 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 102 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 103 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 104 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 105 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 106 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 107 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 108 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 109 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 110 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 111 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 112 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 113 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 114 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 115 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 116 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 117 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 118 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 119 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 120 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 121 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 122 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 123 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 124 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 125 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 126 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 127 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 128 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 129 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 130 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 131 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 132 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 133 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 134 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 135 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 136 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 137 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 138 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 139 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 140 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 141 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 142 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 143 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 144 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 145 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 146 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 147 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 148 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 149 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 150 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 151 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 152 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 153 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 154 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 155 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 156 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 157 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 158 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 159 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 160 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 161 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 162 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 163 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 164 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 165 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 166 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 167 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 168 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 169 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 170 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 171 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 172 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 173 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 174 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 175 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 176 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 177 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 178 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 179 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 180 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 181 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 182 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 183 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 184 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 185 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 186 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 187 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 188 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 189 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 190 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 191 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 192 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 193 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 194 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 195 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 196 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 197 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 198 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 199 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 200 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 201 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 202 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 203 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 204 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 205 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 206 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 207 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 208 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 209 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 210 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 211 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 212 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 213 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 214 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 215 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 216 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 217 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 218 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 219 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 220 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 221 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 222 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 223 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 224 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 225 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 226 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 227 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 228 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 229 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 230 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 231 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 232 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 233 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 234 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 235 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 236 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 237 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 238 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 239 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 240 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 241 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 242 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 243 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 244 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 245 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 246 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 247 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 248 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 249 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 250 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 251 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 252 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 253 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 254 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 255 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 256 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 257 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 258 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 259 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 260 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 261 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 262 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 263 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 264 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 265 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 266 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 267 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 268 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 269 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 270 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 271 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 272 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 273 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 274 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 275 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 276 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 277 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 278 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 279 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 280 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 281 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 282 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 283 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 284 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 285 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 286 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 287 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 288 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 289 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 290 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 291 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 292 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 293 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 294 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 295 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 296 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 297 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 298 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 299 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 300 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 301 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 302 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 303 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 304 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 305 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 306 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 307 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 308 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 309 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 310 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 311 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 312 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 313 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 314 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 315 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 316 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 317 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 318 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 319 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 320 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 321 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 322 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 323 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 324 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 325 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 326 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 327 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 328 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 329 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 330 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 331 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 332 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 333 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 334 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 335 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 336 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 337 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 338 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 339 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 340 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 341 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 342 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 343 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 344 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 345 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 346 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 347 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 348 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
