# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-16.md)

*最后自动更新时间: 2026-03-16 20:35:53*
## 1. Meta重新承诺对jemalloc的支持

**原文标题**: Meta’s Renewed Commitment to jemalloc

**原文链接**: [https://engineering.fb.com/2026/03/02/data-infrastructure/investing-in-infrastructure-metas-renewed-commitment-to-jemalloc/](https://engineering.fb.com/2026/03/02/data-infrastructure/investing-in-infrastructure-metas-renewed-commitment-to-jemalloc/)

Meta重申对jemalloc内存分配器的承诺，承认其作为软件基础设施核心组件的关键作用。公司坦言，近年来在核心工程原则上的偏离导致了技术债务，拖慢了发展进程。

为回应社区反馈，Meta已重新开放原始的jemalloc开源代码库，并调整其管理策略。新的工作重点将放在减轻维护负担、实现代码库现代化，以及推动jemalloc适配现代硬件与工作负载上。

计划中的关键改进包括：
*   通过代码清理和重构减少技术债务。
*   增强大页分配器（HPA）以提升CPU效率。
*   通过改进内存打包、缓存和清理机制优化内存效率。
*   确保AArch64（ARM64）平台具备强大的开箱即用性能。

Meta表示，信任需要通过行动赢得，并邀请开源社区参与协作、提供反馈，共同塑造jemalloc的未来。

---

## 2. “小网络”比你想象的要大得多

**原文标题**: The “small web” is bigger than you might think

**原文链接**: [https://kevinboone.me/small_web_is_big.html](https://kevinboone.me/small_web_is_big.html)

本文探讨了“小网络”这一概念——即那些无广告、无追踪的非商业性个人网站。作者将其与Gemini协议相类比，后者是一个刻意保持简约、非商业化的网络，拥有小而活跃的社区。Gemini的订阅聚合器能便捷地列出所有活跃网站的更新内容，这启发了作者尝试为更广泛的“小网络”打造类似项目。

为此，作者使用了Kagi搜索引擎中约32,000个小网站列表。经过筛选，剔除不活跃网站及缺乏可用更新订阅源的站点后，列表缩减至约9,000个持续更新的网站。分析显示，仅单日内这些网站就产生了超过1,250条新内容更新。

核心发现是：尽管“小网络”蓬勃发展且规模持续扩大，但其体量使得单一的综合订阅聚合器——如同在微型Gemini网络中那样实用——对读者而言并不现实。文章最后指出，“小”这一标签并非指规模，而是指其远离商业影响的特质，并颂扬了互联网上这片充满活力的个人化非商业空间。

---

## 3. 我的可靠且愉悦的本地托管语音助手之旅（2025）

**原文标题**: My Journey to a reliable and enjoyable locally hosted voice assistant (2025)

**原文链接**: [https://community.home-assistant.io/t/my-journey-to-a-reliable-and-enjoyable-locally-hosted-voice-assistant/944860](https://community.home-assistant.io/t/my-journey-to-a-reliable-and-enjoyable-locally-hosted-voice-assistant/944860)

本文详细介绍了作者如何成功从谷歌家庭助手转向完全本地的语音助手系统，该系统基于Home Assistant的Assist功能，并由本地大语言模型（主要采用llama.cpp）驱动。目标是打造一个私密、可靠的系统，能够实现设备控制、天气预报、商家查询、常识问答和音乐播放等功能。

关键步骤包括选择合适的硬件（测试了从RTX 3050到3090的多款GPU）、选用性能优异的模型（指出HuggingFace的高量化GGUF模型表现优于默认的Ollama模型），并通过快速的语音识别软件（Wyoming ONNX ASR）和语音合成软件（Kokoro）优化语音处理流程。

一个重大突破是精心设计了详细且定制化的LLM系统提示词，以确保可靠的工具调用和简洁、无表情符号的回复。对于音乐播放等功能，作者采用简单的自动化方案作为可靠替代方案。此外，还训练了自定义唤醒词（“Hey Robot”）以提升用户体验。

作者总结道，虽然该设置需要大量的技术耐心和调试，但最终成果是一个更令人愉悦、更私密的本地助手，能够可靠地处理家庭核心任务。

---

## 4. 语言模型团队作为分布式系统

**原文标题**: Language Model Teams as Distrbuted Systems

**原文链接**: [https://arxiv.org/abs/2603.12229](https://arxiv.org/abs/2603.12229)

**摘要：**

本文提出将**分布式系统**的原理作为设计和分析大型语言模型（LLM）团队的基础框架。作者指出，随着LLM能力日益增强，人们越来越关注将其部署于多智能体团队中以处理复杂任务。然而，当前方法通常依赖试错来回答关于团队效用、最佳规模、组织结构以及相对于单智能体的性能等关键问题。

核心论点是，LLM团队面临着许多与分布式计算中广泛研究的**优势与挑战**——如协调、通信开销、容错性和一致性——相同的基本问题。通过应用这一成熟的知识体系，研究者和开发者能够获得关于LLM团队动态的原理性见解，从而超越临时性的实验探索。

本文强调了分布式系统与多智能体AI研究之间**跨学科交流**的潜力。这一视角为理解LLM团队何时及为何成功或失败提供了结构化思路，从而指导设计出更高效、可扩展的AI系统。

---

## 5. 我为何热爱FreeBSD

**原文标题**: Why I love FreeBSD

**原文链接**: [https://it-notes.dragas.net/2026/03/16/why-i-love-freebsd/](https://it-notes.dragas.net/2026/03/16/why-i-love-freebsd/)

本文详述了作者与FreeBSD长达二十年的结缘之旅，始于2002年——当时全面且维护精良的《FreeBSD手册》首次展现了该项目对品质的执着追求。作者惊叹于该系统相较于Linux的成熟度、稳定性及卓越性能，尤其是在处理编译软件等高负载任务时不会过热或崩溃。

文章赞扬的核心理念是稳步演进而非颠覆性变革，这使得FreeBSD在生产服务器领域格外可靠。强调的关键技术优势包括：坚实稳定的系统基础、支持安全升级的原生ZFS文件系统、高效隔离的jails机制、bhyve虚拟化管理器，以及可预测的行为特性（如统一的网络接口命名规范）。

除技术之外，作者着重肯定了FreeBSD社区的价值，将其描述为一个充满热情、能力出众、由纯粹兴趣驱动而非急于变现的群体。这种积极的文化氛围，加上有效但不强势的基金会支持，直接促成了项目持久的品质与远见。

总而言之，作者热爱FreeBSD，因其始终专注于提供可靠高效的服务、务实稳定的系统设计，以及背后那群专注真诚、共同构建并维护这一生态的社区成员。

---

## 6. Apideck CLI – 相比MCP上下文消耗大幅降低的AI智能体接口

**原文标题**: Apideck CLI – An AI-agent interface with much lower context consumption than MCP

**原文链接**: [https://www.apideck.com/blog/mcp-server-eating-context-window-cli-alternative](https://www.apideck.com/blog/mcp-server-eating-context-window-cli-alternative)

本文认为，与流行的模型上下文协议（MCP）相比，使用命令行界面（CLI）是AI代理与API交互更高效可靠的方式。

MCP的核心问题是**上下文膨胀**：预先加载详细的工具模式会占用AI有限上下文窗口的很大一部分——有时超过70%——留给实际推理和对话的空间所剩无几。这使得复杂工作流难以实现。

Apideck CLI通过**渐进式披露**解决了这个问题。代理不是一次性加载所有模式，而是从一个仅80个令牌的最小提示开始，按需使用`--help`命令发现功能，仅为所需内容支付令牌成本。这模仿了人类开发者的工作方式，并大幅减少了开销。

CLI的其他优势包括：
*   **更高的可靠性**，因其在本地运行，避免了MCP常见的远程服务器超时问题。
*   **内置的结构化安全机制**（例如默认阻止`DELETE`操作），比基于提示的指令更稳健。
*   **通用兼容性**，可与任何能运行shell命令的代理框架配合使用，无需复杂的MCP客户端集成。

文章承认，对于高频、范围紧密的工具或需要每用户OAuth流的场景，MCP仍然更优。然而，对于大多数代理工作流，尤其是使用统一API的场景，CLI在效率、安全性和简洁性之间提供了一个务实的理想平衡点。

---

## 7. 代理技能 – 开放安全数据库

**原文标题**: Agent Skills – Open Security Database

**原文链接**: [https://index.tego.security/skills/](https://index.tego.security/skills/)

**Tego技能安全指数**是一个集中式数据库，为AI智能体技能提供安全风险分析。它扫描公共注册库中的技能，根据其声明的用途评估指令、能力和权限，以在部署前识别安全风险。

每项技能会根据检测到的最严重问题获得**动态风险评级**（通过、低、中、高或严重）。风险范围包括轻微的能力问题到鼓励数据窃取或绕过安全护栏等恶意行为的关键指令。

该分析对技能的**能力**（如代码执行、文件系统访问）进行分类，并报告具体**发现结果**，例如提示注入漏洞或权限过度。同时评估所请求的权限是否合理。

该指数由Tego AI构建，旨在帮助安全工程师和开发者理解AI技能的潜在“影响范围”，促进智能体AI系统更安全的集成与部署。

---

## 8. Polymarket赌徒因伊朗导弹报道威胁要杀我。

**原文标题**: Polymarket gamblers threaten to kill me over Iran missile story

**原文链接**: [https://www.timesofisrael.com/gamblers-trying-to-win-a-bet-on-polymarket-are-vowing-to-kill-me-if-i-dont-rewrite-an-iran-missile-story/](https://www.timesofisrael.com/gamblers-trying-to-win-a-bet-on-polymarket-are-vowing-to-kill-me-if-i-dont-rewrite-an-iran-missile-story/)

**摘要：**

文章详述了预测市场平台Polymarket上的赌徒对一名记者发出的威胁。这位记者是《以色列时报》的拉扎尔·伯曼，他报道了2024年4月伊朗对以色列的导弹袭击。他的报道指出，部分导弹突破了以色列的防空系统并击中了内瓦提姆空军基地。

这一事实性报道与Polymarket上名为“以色列-伊朗战争：伊朗是否会袭击以色列领土？”的特定预测市场合约相矛盾。该合约规定，若袭击被确认，则结果将结算为“是”，但一些交易者曾重注押“否”。伯曼确认袭击发生的报道意味着这些交易者将面临巨额损失。

因此，这些赌徒发起了一场骚扰行动，要求伯曼撤回或修改他的报道，以操纵市场结果使其有利于他们。威胁甚至升级为明确的死亡威胁。记者指出，尽管Polymarket最终根据事实结算了该合约（向押注“是”者支付了款项），但这一事件凸显了一种针对记者的危险新型压力形式：去中心化预测市场上的经济利益可能催生直接恐吓和暴力行为，旨在为牟利而操纵新闻报道。

---

## 9. 发布HN：Chamber（YC W26）——GPU基础设施的AI队友

**原文标题**: Launch HN: Chamber (YC W26) – An AI Teammate for GPU Infrastructure

**原文链接**: [https://www.usechamber.io/](https://www.usechamber.io/)

Chamber是一款面向机器学习团队的AIOps平台，旨在管理和优化GPU基础设施。它如同一个自主的AI队友，致力于将工程师从跨多云和本地环境手动维护基础设施的负担中解放出来。

它主要解决三大核心问题：静默的工作负载故障、低效的GPU利用率（例如任务在其他地方排队而GPU闲置），以及将实验指标与基础设施数据关联以优化训练任务时缓慢且手动的过程。

Chamber的解决方案包含三个主要部分：
1.  **观测与调试：** 为GPU工作负载提供全面的可观测性，自动提供性能洞察和根因分析。
2.  **编排与优化：** 利用先进的跨云编排技术，最大化GPU可用性和利用率，帮助团队在现有基础设施上运行更多工作负载。
3.  **加速迭代：** 将实验指标与基础设施数据连接，并借助AI代理帮助分析运行、调整资源，并通过CLI、SDK或Slack自动重新提交任务。

该平台支持多云和混合环境（AWS、GCP、Azure、Kubernetes、Slurm），并部署在客户自有基础设施中以保障数据安全，且已获得SOC 2 Type I认证。

---

## 10. 证书颁发机构自今日起检查DNSSEC。

**原文标题**: Cert Authorities Check for DNSSEC from Today

**原文链接**: [https://www.grepular.com/Cert_Authorities_Check_for_DNSSEC_From_Today](https://www.grepular.com/Cert_Authorities_Check_for_DNSSEC_From_Today)

本文宣布，自发布之日起，所有证书颁发机构（CA）在为已启用DNSSEC的域名签发数字证书时，必须验证DNSSEC。

作者使用DNSSEC已有14年，他解释说，这项规定影响两个关键流程：CA在检查域名的CAA记录（授权证书签发）时，以及在执行ACME协议自动化证书验证的“交互”过程中，都必须验证DNSSEC。

尽管推测大多数CA已提前准备，但作者指出，合规性现已成为强制要求，且很可能被严格执行。文章最后鼓励读者，特别是域名所有者，检查其注册商是否提供便捷的DNSSEC激活服务，并将其视为一项简单的安全升级。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 2 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 3 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 4 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 5 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 6 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 7 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 8 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 9 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 10 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 11 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 12 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 13 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 14 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 15 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 16 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 17 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 18 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 19 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 20 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 21 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 22 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 23 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 24 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 25 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 26 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 27 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 28 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 29 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 30 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 31 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 32 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 33 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 34 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 35 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 36 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 37 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 38 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 39 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 40 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 41 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 42 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 43 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 44 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 45 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 46 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 47 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 48 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 49 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 50 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 51 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 52 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 53 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 54 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 55 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 56 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 57 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 58 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 59 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 60 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 61 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 62 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 63 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 64 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 65 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 66 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 67 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 68 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 69 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 70 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 71 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 72 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 73 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 74 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 75 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 76 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 77 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 78 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 79 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 80 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 81 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 82 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 83 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 84 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 85 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 86 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 87 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 88 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 89 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 90 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 91 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 92 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 93 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 94 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 95 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 96 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 97 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 98 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 99 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 100 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 101 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 102 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 103 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 104 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 105 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 106 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 107 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 108 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 109 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 110 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 111 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 112 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 113 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 114 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 115 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 116 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 117 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 118 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 119 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 120 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 121 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 122 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 123 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 124 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 125 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 126 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 127 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 128 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 129 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 130 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 131 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 132 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 133 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 134 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 135 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 136 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 137 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 138 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 139 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 140 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 141 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 142 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 143 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 144 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 145 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 146 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 147 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 148 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 149 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 150 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 151 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 152 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 153 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 154 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 155 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 156 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 157 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 158 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 159 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 160 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 161 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 162 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 163 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 164 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 165 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 166 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 167 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 168 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 169 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 170 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 171 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 172 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 173 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 174 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 175 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 176 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 177 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 178 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 179 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 180 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 181 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 182 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 183 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 184 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 185 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 186 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 187 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 188 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 189 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 190 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 191 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 192 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 193 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 194 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 195 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 196 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 197 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 198 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 199 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 200 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 201 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 202 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 203 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 204 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 205 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 206 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 207 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 208 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 209 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 210 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 211 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 212 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 213 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 214 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 215 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 216 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 217 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 218 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 219 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 220 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 221 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 222 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 223 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 224 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 225 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 226 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 227 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 228 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 229 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 230 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 231 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 232 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 233 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 234 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 235 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 236 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 237 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 238 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 239 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 240 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 241 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 242 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 243 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 244 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 245 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 246 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 247 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 248 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 249 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 250 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 251 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 252 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 253 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 254 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 255 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 256 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 257 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 258 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 259 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 260 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 261 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 262 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 263 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 264 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 265 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 266 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 267 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 268 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 269 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 270 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 271 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 272 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 273 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 274 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 275 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 276 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 277 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 278 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 279 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 280 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 281 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 282 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 283 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 284 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 285 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 286 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 287 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 288 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 289 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 290 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 291 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 292 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 293 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 294 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 295 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 296 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 297 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 298 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 299 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 300 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 301 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 302 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 303 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 304 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 305 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 306 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 307 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 308 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 309 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 310 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 311 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 312 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 313 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 314 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 315 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 316 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 317 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 318 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 319 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 320 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 321 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 322 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 323 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 324 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 325 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 326 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 327 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 328 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 329 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 330 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 331 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 332 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 333 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 334 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 335 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 336 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 337 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 338 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 339 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 340 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 341 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 342 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 343 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 344 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 345 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 346 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 347 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 348 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 349 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 350 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 351 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 352 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 353 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 354 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 355 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 356 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 357 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 358 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 359 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
