# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-08-17.md)

*最后自动更新时间: 2026-08-17 20:46:02*
## 1. AI;DR（AI；未读）

**原文标题**: AI;DR (AI; Didn't Read)

**原文链接**: [https://www.rickmanelius.com/p/aidr-ai-didnt-read](https://www.rickmanelius.com/p/aidr-ai-didnt-read)

这篇文章介绍了缩写词 **AI;DR**（“AI；没读过”）——这是对未经编辑的AI生成文字的一种抵制。作者里克·马内利乌斯表示，他非常支持AI，但越来越多地感到沮丧的是，人们未经个人审阅或编辑就直接分享AI的原始输出。他的新原则是：**如果你懒得编辑，他也懒得读。**

他承认，AI如今已成为许多工作流程中的正常组成部分——用于头脑风暴、拟提纲和润色——但他明确划出一条界线：在个人或专业场合发布未经编辑的AI文本，是不可接受的。客户支持是一个合理的例外，在那里100%由AI生成的回复是可以接受的。然而，当同事在Slack上分享大段由Claude生成的未经编辑的消息，或是在署名作者的新闻通讯和社交媒体帖子中出现这种情况时，缺乏人性化润色就令人反感了。

这篇文章将**AI;DR**定位为**TL;DR**的现代继任者：正如TL;DR针对的是过长的社交媒体帖子，AI;DR针对的是泛滥的AI“垃圾内容”。其核心信息是：如果你希望人们认真阅读你的文字，那就花点时间让它真正成为你自己的。

---

## 2. 你一生中和电脑相处的时间，会比和家人相处的时间还长吗？

**原文标题**: Will you have spent more of your life with computers than your family?

**原文链接**: [https://beachfront.bearblog.dev/will-you-have-spent-more-of-your-life-with-computers-than-your-family/](https://beachfront.bearblog.dev/will-you-have-spent-more-of-your-life-with-computers-than-your-family/)

这篇文章是2026年8月17日的一篇个人反思，讲述了一个令人不安的觉悟：作者花在屏幕前的时间比陪伴家人的时间还多。他们将此描述为深感困扰，并指出自己和所爱之人都会老去、离世，可能会后悔一生中与电脑共处的时间比与彼此相处的时间更多。

作者将这种失衡归因于两个因素：每周40小时的工作时间，以及睡眠和工作之外剩下的79个小时的清醒时间。他们认为大多数人用屏幕来填满这些时间，因为屏幕更具刺激性，能提供轻松的短期快乐。他们还观察到，这种转变在过去十年中是逐渐发生的，因此很容易被忽视，直到它成为新的常态。对过去生活方式的认知在悄无声息中流失，被描述为最可怕的部分之一。

作者并非在寻求实用建议，他说自己已经知道必须做出什么改变。相反，他向其他可能正以同样方式生活却未以这些话语意识到这一点的人发出警示。

---

## 3. Rust 中的 GPU 卸载：可移植、安全且快速

**原文标题**: GPU Offload in Rust: Portable, Safe, and Fast

**原文链接**: [https://arxiv.org/abs/2608.13759](https://arxiv.org/abs/2608.13759)

本文提出了一个用于Rust的GPU卸载框架，旨在兼顾可移植性、内存安全性和性能。传统上，高性能GPU编程不得不在执行效率和内存安全性之间进行权衡。Rust的所有权模型在CPU上提供了编译时内存安全性，但将其应用于大规模并行GPU环境之前需要依赖特定于供应商的领域特定语言或依赖不安全的裸指针。

作者介绍了一个零开销、多供应商的GPU编译框架，该框架直接构建在Rust编译器（rustc）和LLVM后端中。他们利用Rust的类型系统、所有权语义和严格别名保证（`noalias`），通过LLVM的Offload基础设施高效管理和优化数据传输。

一个关键的技术贡献是解决主机端和设备端目标之间跨供应商ABI降级不匹配的问题。作者提出了一种两遍编译流水线，能够安全地处理手动和编译器生成的内存移动。

该框架使用RAJAPerf基准测试套件进行评估。结果表明，基于rustc的解决方案为GPU内核生成了具有竞争力的LLVM IR，与原生、手工优化的CUDA和HIP C++基线相比，实现了扎实的内核性能。

该论文共13页，含5幅图，于2026年8月13日提交至arXiv，归类于编程语言（cs.PL）。其arXiv标识号为2608.13759。

---

## 4. DuckDB 2.0版本预览

**原文标题**: A Preview of DuckDB v2.0

**原文链接**: [https://duckdb.org/2026/08/17/duckdb-20-highlights](https://duckdb.org/2026/08/17/duckdb-20-highlights)

DuckDB v2.0，代号“Cyanoptera”，是秋季重大版本发布，带来了新功能、新的SQL解析器、新的默认存储格式、重构的C API，以及一些有意的破坏性更改。主要亮点：

- **DuckDB作为服务器**：`quack`扩展让任何DuckDB都能通过网络提供数据库服务。新的`CONNECT`/`DISCONNECT`语句支持远程查询，包括下推到PostgreSQL和MySQL。
- **VARIANT**：成为一等公民，支持分片执行、提取下推、Parquet支持和`variant_*`函数。
- **触发器**：完整支持`BEFORE`/`AFTER`、行/语句级触发器、过渡表和每个事件的多个触发器。
- **SQL新增**：用于相似性搜索的NEAREST连接、CTE中的DML、嵌套模式、`$variable`语法、JSON变更函数和递归CTE聚合。
- **异步I/O**：扩展并行远程读取，特别有利于S3/对象存储；支持Parquet、CSV和DuckDB文件格式。
- **性能**：递归CTE快约40倍，扩展行组修剪、分区感知规划、聚合溢出和更快的CLI物化。
- **存储格式v2**：缓冲区管理的ART索引、惰性列元数据、默认FSST压缩、紧凑删除和更强的损坏验证。
- **新SQL解析器**：取代源自PostgreSQL的解析器；扩展可以扩展语法，并提供Spark兼容模式。
- **移除ICU**：时区、日历和排序规则现在原生实现，更小更快。
- **稳定C API**：扩展只需编写一次，并针对版本化、生成的API/ABI构建，实现长期兼容性和自托管分发。

总体而言，v2.0强调DuckDB作为长期运行的服务器、更深入的半结构化数据支持，以及重大的性能和可扩展性改进。

---

## 5. AI生成的GitHub Copilot“自动修复”导致Snowflake的Jira遭到入侵

**原文标题**: AI-Generated GitHub Copilot “Autofix” Allowed Compromise of Snowflake's Jira

**原文链接**: [https://www.wiz.io/blog/red-agent-snowflake-copilot-cicd-bug](https://www.wiz.io/blog/red-agent-snowflake-copilot-cicd-bug)

Wiz Research 的 AI 驱动的“Red Agent”通过 HackerOne 在 Snowflake 的公共仓库 `snowflake-connector-net` 中发现了一个严重的 GitHub Actions 脚本注入漏洞。该漏洞允许任何未经认证的用户通过打开一个标题经过特殊构造的 issue，在 GitHub Actions 运行器上执行任意命令。

该漏洞于 2026 年 6 月 18 日 PR #1218 合并时引入。该提交将一个安全模式——通过 `env:` 变量传递 issue 标题并使用 `jq --arg`——替换为直接将 `${{ github.event.issue.title }}` 字符串插值到 shell 脚本中。该 PR 由“Copilot Autofix powered by AI”共同撰写，而 GitHub 的 AI 辅助审查未能标记出注入风险。

Wiz 通过构造一个跳出 shell 命令的 issue 标题来利用该漏洞，并通过带外回调窃取了 Jira 凭据。Red Agent 最初遇到语法错误，随后自主调整其 payload，并成功获取了令牌。被窃取的凭据以 `qa@snowflake.net` 身份进行认证，授予了对 Snowflake Jira 项目的读取权限，包括工程和安全数据。

在 2026 年 6 月 23 日负责任披露后，Snowflake 当天就修补了该工作流，恢复了安全的 `env:` + `jq` 模式，并轮换了受影响的 Jira 令牌。审计日志确认在五天的暴露窗口期内没有第三方访问；仅涉及 Wiz 的测试 IP 地址。

关键要点：AI 生成的代码可能会在没有历史上下文的情况下重新引入不安全模式；自主安全代理能在数天内发现漏洞；组织必须实施严格的审查、静态分析和护栏，以防止 AI 助手用直接字符串插值取代安全的解析器。

---

## 6. 与 GitHub.com 相关的事件

**原文标题**: Incident with Github.com

**原文链接**: [https://www.githubstatus.com/incidents/zkxwbgr0cnmx](https://www.githubstatus.com/incidents/zkxwbgr0cnmx)

2026年8月17日，GitHub 发生重大故障，影响了多项核心服务。故障约始于13:40 UTC，当时 GitHub 报告称正在调查 Git 操作、Webhooks、API 请求、Issues、Pull Requests、Actions、Pages 和 Copilot 的性能下降问题。

主要影响包括：
- Web 体验和 API 流量的错误率约为 20%。
- 存档下载和原始仓库内容下载的错误率约为 50%。
- 与身份验证相关的服务受到影响，包括 SAML、OIDC、SCIM 和 Team Sync。
- Copilot 的可用性下降，部分应用程序出现偶发的身份验证故障；GitHub CLI 和 GitHub App 未受影响。

GitHub 工程师定位到问题组件，并采取了纠正措施。这带来了明显的恢复迹象，但众多服务在数小时内仍存在残余影响。部分服务在不同时间被报告为已缓解并恢复正常运行，包括 API 请求、Actions、Git 操作、Issues、Pages、Pull Requests 和 Webhooks。

故障持续到晚间，偶发的 Copilot 身份验证故障仍在调查中。到20:22 UTC，GitHub 报告 Issues 已恢复正常运行，表明故障已解决。在整个故障期间，GitHub 频繁发布状态更新，并采取了部分缓解措施（如禁用身份验证令牌重试）以提高稳定性。

---

## 7. 印度打造了最大的数字支付奇迹：现在代价来了

**原文标题**: India built the biggest digital payments miracle: Now comes the bill

**原文链接**: [https://www.bbc.com/news/articles/c8xnwqe00v1o](https://www.bbc.com/news/articles/c8xnwqe00v1o)

印度统一支付接口（UPI）已成为全球数字支付的成功典范，仅7月就有236亿笔交易，拥有5.5亿用户，并在11个国家得到受理。其基于二维码的免费模式让消费者和商家都习以为常。如今，印度政府正考虑允许银行和支付公司对大额UPI交易向商家收取手续费（MDR），这可能终结免费时代。讨论中的提案包括针对大型企业的高价值交易收取0.3%至0.5%的MDR，门槛可能设在2000卢比左右。消费者和个人对个人支付仍将免费。这项定向费用只会影响约4%的交易量，但占交易额的67%，可能为银行和支付公司带来高达10亿美元的收入。这一举措源于UPI并非没有成本——服务器、欺诈检测和网络防护都需要资金，而政府长期对系统进行补贴。印度储备银行行长桑杰·马尔霍特拉（Sanjay Malhotra）近日表示：“总要有人来承担成本。”然而，经济学家警告说，商家受理程度一直是UPI增长的关键驱动力，而不仅仅是附带效应。如果费用波及欠发达地区的小型或非正规商户，可能会减缓普及速度，并削弱该网络的无摩擦吸引力。巴西的Pix提供了一个模式：对个人免费，对企业收取较低费用，同时依然非常成功。专家表示，UPI的网络效应太强，用户不会轻易放弃，但2024年的一项调查发现，如果引入收费，75%的用户会停止使用。正如一位经济学家所言，真正的挑战在于设计一种定价结构，既要为系统提供资金，又要保护那些仍在被纳入数字生态系统中的边缘商户。印度UPI的下一阶段，是在可持续性与包容性之间取得平衡。

---

## 8. 日晷

**原文标题**: Sun Clock

**原文链接**: [https://sunclock.net/](https://sunclock.net/)

太阳钟是一款免费、轻量级（约 100 KB）的 Web 应用，可充当 24 小时时钟，根据用户当前位置显示太阳位置及每日事件——日出、正午太阳、日落、黄金时刻和暮光——同时也显示月亮位置、月相及升落时间。该网站需要 JavaScript，除使用 Simple Analytics 的聚合统计脚本外，不含广告或跟踪。用户位置和设置均存储在浏览器本地，不使用 Cookie。

其一个显著特点是旋转方向：它会根据用户所在半球自动调整——北半球顺时针，南半球逆时针——以模拟太阳在天空中的实际运动。用户可在设置中更改此行为。

界面具有交互性：点击或悬停于时段、月亮、时针或中心圆点，即可显示开始/结束时间。设置项包括 12 小时制显示、在钟面上显示奇数、走动秒针、深色模式，以及根据一天中的时间自动变色的自动配色模式。

太阳钟是一款渐进式 Web 应用，可安装到设备主屏幕并离线使用。它还提供年度日历功能。该项目基于 MIT 许可证开源，其更新历史显示自 2022 年 5 月发布以来持续更新，包括错误修复和新功能。除可选的用户赞助外，无任何商业化方式。

---

## 9. 如何禁用或避免侵扰性AI

**原文标题**: How to disable or avoid intrusive AI

**原文链接**: [https://www.librarian.net/notoai/](https://www.librarian.net/notoai/)

本指南帮助用户减少常见平台和应用中侵入式 AI 功能的使用。

**Adobe：** 在 Acrobat/Reader 的偏好设置中禁用生成式 AI。

**Android/Gemini：** 如有可能，卸载 Gemini 应用，或在 Messages 设置中关闭 Gemini，禁用 Gemini Apps 活动记录，并通过“系统 > 手势”阻止其接管电源按钮。

**Amazon：** 使用浏览器扩展禁用“Alexa 购物功能”。

**Apple：** 在“设置”（或“系统设置”）中关闭 Apple Intelligence。在隐私设置中禁用 Siri 的“从此 App 学习”功能。

**浏览器：** 使用替代浏览器，如 Zen 或 Helium。在 Chrome 中，前往 chrome://flags 并禁用 GLIC 和 Gemini 功能。在 Edge 中，通过 flags、外观设置和语言设置禁用 Copilot。Firefox 148+ 内置了“阻止 AI 增强功能”设置。使用扩展从搜索结果中移除 AI 垃圾内容。

**DuckDuckGo：** 使用 noai.duckduckgo.com 作为无 AI 搜索引擎，或下载 DDG 浏览器。

**Google Workspace：** 在 Gmail 设置中，于“常规”标签下禁用“智能功能”。

**Slack：** 管理员可通过帮助页面管理 AI 功能。

**WhatsApp：** 在设置中关闭建议回复、AI 贴纸和 AI 消息摘要。

**Windows 11/Copilot：** 从开始菜单或应用列表中卸载 Copilot。通过任务栏设置将其关闭。禁用文件资源管理器、记事本及其他应用中的 AI。使用 O&O ShutUp10 或 Win11DeBloat 等工具进行彻底移除。

**Office 365/Outlook：** 在各自应用中取消勾选“启用 Copilot”，或更改隐私设置。

**Yahoo Mail：** 在 AI 功能设置中关闭消息摘要。

**Zoom：** 在账户设置中禁用 Zoom AI 功能，并关闭“我的笔记”转录功能。

**其他资源：** 提供“如何给你的互联网去 AI 化”指南、Library Freedom Project 宣传资料，以及可打印的“别跟我谈 AI”卡片的链接。

---

## 10. GPT 5.6 Sol 是 OpenAI 发布过的最好的“视觉”模型

**原文标题**: GPT 5.6 Sol is the best "vision" model OpenAI ever released

**原文链接**: [https://blog.roboflow.com/openai-gpt-5-6/](https://blog.roboflow.com/openai-gpt-5-6/)

OpenAI的GPT-5.6系列推出了三个视觉模型——Sol、Terra和Luna。Roboflow在一个即将发布的VLM基准上对它们进行了测试，涵盖检测、计数、OCR和数据提取。

**关键结果**：Sol是OpenAI迄今为止最好的视觉模型。目标检测从GPT-5.5的13.8 mAP@50跃升至Sol的46.2，Terra为44.7，Luna为43.3。Sol在文档布局检测和密集场景中表现出色，但在大图像（约2000×2000）上可能变得不稳定，可通过更高的推理强度或调整大小/裁剪来缓解。

计数也有改进：Sol得分73.0%（GPT-5.5为64.9%），Terra为67.6%，Luna为66.2%。Sol在处理重叠括号和基于区域的计数时表现良好，但在泡罩包装和模糊的糖果目标上表现困难。

OCR性能几乎持平：Sol的平均相似度为90.7%，而GPT-5.5为91.2%（Terra 88.8%，Luna 88.4%）。文本提取有所下降：Sol 82.5%，GPT-5.5 87.6%，Terra 79.4%，Luna 81.4%。Sol在手写笔记、复杂场景（轮胎文字、曲棍球比分）上表现良好，但在低对比度的有效日期上失败。

**权衡**：Sol平均每张图像约10秒，约2.5美分；Terra约6秒/约1美分；Luna约5秒/低于0.5美分。Gemini 3.5 Flash在高容量检测/计数方面仍然更强且更便宜，每张图像0.8美分。

**要点**：GPT-5.6使OpenAI在视觉领域更具竞争力，特别是在智能体、屏幕理解、文档工作流和视觉推理方面，但成本、延迟和偶尔的不稳定性仍然存在。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 2 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 3 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 4 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 5 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 6 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 7 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 8 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 9 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 10 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 11 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 12 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 13 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 14 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 15 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 16 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 17 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 18 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 19 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 20 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 21 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 22 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 23 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 24 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 25 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 26 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 27 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 28 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 29 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 30 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 31 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 32 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 33 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 34 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 35 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 36 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 37 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 38 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 39 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 40 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 41 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 42 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 43 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 44 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 45 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 46 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 47 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 48 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 49 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 50 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 51 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 52 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 53 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 54 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 55 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 56 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 57 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 58 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 59 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 60 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 61 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 62 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 63 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 64 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 65 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 66 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 67 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 68 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 69 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 70 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 71 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 72 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 73 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 74 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 75 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 76 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 77 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 78 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 79 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 80 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 81 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 82 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 83 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 84 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 85 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 86 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 87 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 88 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 89 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 90 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 91 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 92 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 93 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 94 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 95 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 96 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 97 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 98 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 99 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 100 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 101 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 102 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 103 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 104 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 105 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 106 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 107 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 108 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 109 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 110 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 111 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 112 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 113 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 114 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 115 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 116 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 117 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 118 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 119 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 120 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 121 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 122 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 123 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 124 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 125 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 126 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 127 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 128 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 129 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 130 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 131 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 132 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 133 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 134 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 135 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 136 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 137 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 138 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 139 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 140 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 141 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 142 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 143 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 144 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 145 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 146 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 147 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 148 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 149 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 150 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 151 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 152 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 153 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 154 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 155 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 156 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 157 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 158 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 159 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 160 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 161 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 162 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 163 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 164 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 165 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 166 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 167 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 168 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 169 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 170 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 171 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 172 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 173 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 174 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 175 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 176 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 177 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 178 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 179 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 180 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 181 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 182 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 183 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 184 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 185 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 186 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 187 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 188 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 189 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 190 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 191 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 192 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 193 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 194 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 195 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 196 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 197 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 198 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 199 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 200 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 201 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 202 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 203 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 204 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 205 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 206 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 207 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 208 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 209 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 210 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 211 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 212 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 213 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 214 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 215 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 216 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 217 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 218 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 219 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 220 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 221 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 222 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 223 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 224 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 225 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 226 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 227 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 228 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 229 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 230 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 231 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 232 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 233 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 234 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 235 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 236 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 237 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 238 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 239 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 240 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 241 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 242 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 243 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 244 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 245 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 246 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 247 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 248 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 249 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 250 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 251 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 252 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 253 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 254 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 255 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 256 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 257 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 258 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 259 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 260 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 261 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 262 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 263 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 264 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 265 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 266 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 267 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 268 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 269 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 270 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 271 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 272 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 273 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 274 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 275 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 276 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 277 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 278 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 279 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 280 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 281 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 282 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 283 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 284 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 285 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 286 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 287 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 288 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 289 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 290 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 291 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 292 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 293 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 294 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 295 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 296 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 297 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 298 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 299 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 300 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 301 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 302 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 303 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 304 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 305 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 306 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 307 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 308 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 309 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 310 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 311 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 312 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 313 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 314 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 315 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 316 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 317 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 318 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 319 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 320 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 321 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 322 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 323 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 324 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 325 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 326 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 327 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 328 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 329 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 330 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 331 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 332 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 333 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 334 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 335 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 336 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 337 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 338 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 339 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 340 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 341 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 342 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 343 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 344 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 345 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 346 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 347 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 348 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 349 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 350 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 351 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 352 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 353 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 354 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 355 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 356 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 357 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 358 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 359 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 360 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 361 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 362 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 363 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 364 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 365 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 366 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 367 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 368 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 369 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 370 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 371 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 372 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 373 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 374 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 375 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 376 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 377 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 378 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 379 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 380 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 381 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 382 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 383 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 384 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 385 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 386 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 387 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 388 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 389 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 390 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 391 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 392 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 393 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 394 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 395 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 396 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 397 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 398 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 399 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 400 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 401 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 402 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 403 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 404 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 405 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 406 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 407 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 408 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 409 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 410 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 411 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 412 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 413 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 414 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 415 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 416 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 417 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 418 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 419 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 420 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 421 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 422 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 423 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 424 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 425 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 426 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 427 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 428 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 429 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 430 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 431 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 432 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 433 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 434 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 435 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 436 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 437 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 438 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 439 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 440 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 441 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 442 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 443 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 444 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 445 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 446 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 447 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 448 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 449 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 450 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 451 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 452 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 453 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 454 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 455 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 456 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 457 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 458 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 459 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 460 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 461 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 462 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 463 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 464 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 465 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 466 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 467 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 468 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 469 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 470 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 471 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 472 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 473 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 474 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 475 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 476 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 477 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 478 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 479 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 480 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 481 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 482 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 483 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 484 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 485 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 486 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 487 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 488 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 489 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 490 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 491 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 492 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 493 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 494 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 495 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 496 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 497 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 498 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 499 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 500 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 501 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 502 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 503 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 504 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 505 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 506 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 507 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 508 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 509 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 510 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 511 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
