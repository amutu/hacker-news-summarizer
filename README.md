# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-13.md)

*最后自动更新时间: 2026-02-13 20:36:49*
## 1. GPT-5.2在理论物理学中取得新成果

**原文标题**: GPT-5.2 derives a new result in theoretical physics

**原文链接**: [https://openai.com/index/new-result-theoretical-physics/](https://openai.com/index/new-result-theoretical-physics/)

无法访问文章链接。

---

## 2. 苹果，在计时结束前修好我的键盘，否则我就换掉iPhone。

**原文标题**: Apple, fix my keyboard before the timer ends or I'm leaving iPhone

**原文链接**: [https://ios-countdown.win/](https://ios-countdown.win/)

本文是一位沮丧的iPhone用户向苹果发出的最后通牒，要求修复iOS键盘长期存在的问题。作者详细列举了顽固的故障：激进且不准确的自动更正、不可靠的滑动输入、糟糕的文字选取功能，以及按键识别错误。

作者设定了公开期限：苹果必须在2026年全球开发者大会结束前修复键盘，或公开承认问题并承诺解决方案。否则，他将转投安卓阵营至少两年。

文章结尾提出了三种可能的结果。其一，苹果承认问题并满足要求，作者因此“暂时”留在iOS阵营。在最终结局中，苹果未在期限内采取行动，作者践行威胁转用安卓，并盛赞其更出色的输入体验。本文既是个人的抗议，也是对苹果软件质量下滑的批判。

---

## 3. 单线素描

**原文标题**: Monosketch

**原文链接**: [https://monosketch.io/](https://monosketch.io/)

**MonoSketch** 是一款开源的 ASCII 艺术与图表绘制应用，专为使用文本字符创建视觉设计和技术示意图而设计。它允许用户直接在基于文本的格式中将想法转化为结构化图表，例如网络流程图、界面原型图和电子电路图。

该工具强调简洁性，提供矩形、线条和文本框等基本构建块，以及多种格式化样式以增强视觉效果。它特别适合需要将图表集成到代码文档中，或希望创建简单、代码友好型视觉内容而不依赖传统图形软件的开发者和演示者。

文章强调，MonoSketch 源于创作者个人对一款高效 ASCII 图表工具的需求，填补了现有解决方案的空白。文中通过多个示例展示了其应用，包括客户端-服务器通信图、应用系统架构图，甚至演示幻灯片。

作为一款基于 Apache 2.0 许可证的开源项目，MonoSketch 鼓励通过 GitHub 进行社区贡献，并提供通过 GitHub Sponsors 和 Ko-fi 进行资金支持的选项。该项目旨在为传统的演示和图表工具提供一个多功能、易获取的替代方案。

---

## 4. 三明治物料清单

**原文标题**: Sandwich Bill of Materials

**原文链接**: [https://nesbitt.io/2026/02/08/sandwich-bill-of-materials.html](https://nesbitt.io/2026/02/08/sandwich-bill-of-materials.html)

本文幽默地虚构了一份模仿软件物料清单（SBOM）的“三明治物料清单”规范，旨在标准化三明治成分与供应链的记录。核心规范要求使用JSON文件详细记录每种成分，包括唯一标识符、版本、供应商、完整性哈希值以及食物主题许可证（例如代表“芥末可转让”的MIT许可证）。

主要动机包括管理复杂的成分依赖关系、预防供应链中断（如“鸡蛋价格危机”），以及支持针对食品安全风险数据库的漏洞扫描。该规范还涵盖依赖项解析、签名来源证明，并设定了实现可复现三明治制作的理想目标。

文章指出业界对此反应不一，欧盟和美国正推动相关合规监管。最后，文章描述了一个虚构的“三明治遗产基金会”在数字化保存实体三明治时面临的挑战，凸显了将严格的软件工程原则应用于易腐食品本身存在的荒诞性。

---

## 5. 展示HN：让Claude Code/Codex启动虚拟机和GPU的技能

**原文标题**: Show HN: Skill that lets Claude Code/Codex spin up VMs and GPUs

**原文链接**: [https://cloudrouter.dev/](https://cloudrouter.dev/)

**Cloudrouter** 是一款 CLI 工具和 AI 代理技能，使开发者和 AI 助手（如 Claude Code/Codex）能够即时创建和管理基于云的虚拟机与 GPU 实例。用户可直接从本地目录或 Git 仓库启动远程开发沙箱。

**主要功能包括：**
*   **即时沙箱：** 启动支持可选 GPU（从 T4 到 H100/B200）的虚拟机，适用于 AI 模型训练和推理等任务。
*   **AI 代理集成：** 可作为编码代理的“技能”安装，使其具备创建环境、运行命令和自动化任务的能力。
*   **多种访问方式：** 通过基于浏览器的 VS Code、Jupyter Lab、VNC 桌面或交互式终端进行连接。
*   **浏览器自动化：** 内置 Chrome 自动化功能，可通过命令行进行导航、点击、表单填写和截图。
*   **文件同步：** 轻松在本地机器与沙箱之间上传/下载文件，并具备自动更新的监视模式。

**核心工作流程：** 安装（`npx skills add manaflow-ai/cloudrouter`）并完成身份验证后，用户可使用 `cloudrouter start .` 创建沙箱，然后通过 `cloudrouter code <id>` 访问，或使用 `cloudrouter ssh` 运行命令。该工具强调除非特别指定，否则使用默认的“大型”实例规格，并包含重要设置步骤，例如在新沙箱中修复 npm 权限。

Cloudrouter 是开源（MIT 许可证）的，可作为全局 npm 包在 macOS、Linux 和 Windows 上使用。

---

## 6. 海关与边境保护局签署Clearview AI协议，将面部识别技术用于“战术目标定位”。

**原文标题**: CBP Signs Clearview AI Deal to Use Face Recognition for 'Tactical Targeting'

**原文链接**: [https://www.wired.com/story/cbp-signs-clearview-ai-deal-to-use-face-recognition-for-tactical-targeting/](https://www.wired.com/story/cbp-signs-clearview-ai-deal-to-use-face-recognition-for-tactical-targeting/)

美国海关与边境保护局（CBP）签署了一份价值22.5万美元的合同，将获取Clearview AI人脸识别技术的一年使用权。该工具利用从互联网抓取的超过600亿张图像，将被情报部门用于国家安全和移民行动中的“战术目标锁定”与“战略反网络分析”。

此项协议扩大了人脸识别技术在联邦执法机构中的应用，并引发了严重的公民自由担忧。包括参议员埃德·马基在内的批评者指出，该技术正作为常规情报基础设施被部署，却缺乏明确的使用限制、透明度或公众同意。合同未明确说明搜索范围是否包含美国公民，也未规定数据保留方式。

Clearview基于未经同意收集图像的业务模式已受到审查。尽管CBP公开声称其系统不使用商业数据，但Clearview很可能被整合进其更广泛的自动定位系统中。

近期政府测试凸显了关键技术局限：虽然对高质量照片识别准确，但在边境检查站等受控程度较低的场景中，错误率超过20%。专家指出存在一种权衡——减少误匹配的同时会增加漏识别的风险。因此，系统通常生成需人工审核的排序名单，但即使如此，仍可能对数据库中不存在的人员产生错误“匹配”。

---

## 7. 1180万欧盟公民向无权投票的政府缴纳税款。

**原文标题**: 11.8M EU citizens pay taxes to governments they cannot vote for

**原文链接**: [https://homolova.sk/missingvoters/](https://homolova.sk/missingvoters/)

**摘要**

约1180万欧盟公民在非出生国工作生活。虽然他们向居住国政府纳税，但其中相当一部分人却被剥夺了该国大选的投票权。这造成了民主赤字：庞大群体为公共服务和基础设施提供财政支持，却对影响日常生活的政治决策没有直接发言权。

问题的根源在于，欧盟条约虽保障流动公民在欧洲议会和地方选举中的投票权，但国家选举投票权仍由各成员国自行决定。因此各国规则差异悬殊：爱尔兰、瑞典等国允许非公民居民参与国家选举投票，而包括德国、法国等主要移居国在内的大多数国家则不予许可。

这种情况对欧盟内部移民影响尤为严重，他们实际上被"排斥"在居住国的国家政治进程之外。改革支持者指出，这违背了欧盟人员自由流动与平等待遇的核心原则，形成了政治权利的双重标准。文章强调这已成为欧盟日益严峻的民主挑战，并对大量流动公民承担纳税义务却无法获得完整政治代表权的公平性提出质疑。

---

## 8. IronClaw：一款基于Rust的clawd工具，可在隔离的WASM沙箱中运行程序。

**原文标题**: IronClaw: a Rust-based clawd that runs tools in isolated WASM sandboxes

**原文链接**: [https://github.com/nearai/ironclaw](https://github.com/nearai/ironclaw)

IronClaw是一款安全、开源的AI助手，旨在确保用户数据隐私并实现本地化控制。它通过将不可信工具运行在隔离的WebAssembly（WASM）沙箱中，并采用严格的基于权限的能力控制机制，以防止数据泄露和滥用。所有数据均本地存储于PostgreSQL数据库，密钥经过加密处理，且不收集任何遥测信息。

主要功能包括多通道访问（REPL、HTTP、Web界面）、并行任务执行，以及支持用户通过描述自动构建新WASM工具的自扩展系统。它内置例行任务引擎用于计划任务，并配备混合搜索系统以增强记忆检索能力。

用户可通过主流平台的安装程序或使用Rust从源码安装。配置过程包含运行数据库和身份验证的设置向导。其架构采用多层安全设计，包括提示注入防御和终端点白名单机制，确保助手以透明可靠的方式为用户服务。

---

## 9. 开源不是为了你（2018）

**原文标题**: Open Source Is Not About You (2018)

**原文链接**: [https://gist.github.com/richhickey/1563cddea1002958f96e7ba9519972d9](https://gist.github.com/richhickey/1563cddea1002958f96e7ba9519972d9)

在这篇2018年的文章中，Clojure的创造者Rich Hickey对开源软件的普遍期望提出了挑战。他认为，开源本质上是一种授予源代码访问权的许可模式，而非强制创作者管理社区或满足用户需求的社会契约。

Hickey坚称，项目维护者完全有权决定如何运作自己的项目。用户无权要求特定功能、关注或确保自己的贡献被接受。他为Clojure保守的开发流程辩护，解释说Cognitect核心团队自愿资助并致力于这门语言的开发，没有直接盈利，且优先考虑稳定性而非快速变更。

文章直面批评，指出许多提交的补丁构思不佳，而有意义的社区贡献机会存在于库、文档和推广等领域。Hickey警告，不切实际的社会期望和消极的索取心态会侵蚀创作者的士气。他最后敦促那些对Clojure治理方式不满的人，将精力投入到积极、独立的行动中，而非破坏性的批评。

---

## 10. 展示 HN：Moltis – 具备记忆、工具与自我扩展技能的AI助手

**原文标题**: Show HN: Moltis – AI assistant with memory, tools, and self-extending skills

**原文链接**: [https://www.moltis.org](https://www.moltis.org)

**Moltis** 是一款自托管、开源的 AI 助手，专为本地部署设计。它是一个单一二进制文件，无需运行时依赖，强调安全性和可扩展性。

**主要功能包括：**
*   **记忆与学习：** 采用混合向量和全文搜索实现长期上下文记忆，并能在运行时通过创建新技能进行自我扩展。
*   **工具与扩展性：** 通过钩子系统、MCP（模型上下文协议）服务器和定时任务支持插件。它既提供完整的文件系统访问，也支持基于会话的 Docker 沙箱，以实现安全的自动化。
*   **灵活部署：** 可通过包管理器（Homebrew、Cargo）、Docker 或从源代码安装。它支持多个 LLM 提供商，包括云服务（OpenAI、GitHub Copilot）和本地离线模型。
*   **多渠道访问：** 提供 Web 界面、Telegram 机器人、JSON-RPC API，并包含通过 TTS/STT 实现的语音功能。
*   **安全优先：** 包含 HTTPS、通行密钥认证、限定范围的 API 密钥和 SSRF 保护。作者提醒用户将其视为测试版软件，并谨慎授予权限。

Moltis 采用 MIT 许可证，专为希望拥有一个强大、可定制且完全由自己掌控的 AI 助手的用户而构建。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 2 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 3 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 4 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 5 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 6 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 7 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 8 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 9 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 10 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 11 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 12 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 13 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 14 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 15 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 16 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 17 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 18 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 19 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 20 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 21 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 22 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 23 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 24 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 25 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 26 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 27 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 28 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 29 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 30 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 31 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 32 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 33 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 34 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 35 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 36 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 37 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 38 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 39 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 40 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 41 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 42 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 43 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 44 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 45 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 46 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 47 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 48 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 49 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 50 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 51 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 52 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 53 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 54 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 55 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 56 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 57 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 58 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 59 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 60 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 61 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 62 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 63 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 64 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 65 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 66 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 67 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 68 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 69 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 70 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 71 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 72 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 73 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 74 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 75 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 76 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 77 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 78 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 79 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 80 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 81 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 82 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 83 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 84 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 85 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 86 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 87 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 88 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 89 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 90 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 91 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 92 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 93 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 94 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 95 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 96 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 97 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 98 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 99 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 100 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 101 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 102 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 103 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 104 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 105 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 106 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 107 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 108 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 109 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 110 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 111 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 112 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 113 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 114 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 115 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 116 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 117 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 118 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 119 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 120 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 121 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 122 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 123 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 124 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 125 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 126 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 127 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 128 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 129 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 130 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 131 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 132 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 133 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 134 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 135 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 136 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 137 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 138 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 139 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 140 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 141 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 142 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 143 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 144 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 145 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 146 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 147 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 148 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 149 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 150 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 151 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 152 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 153 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 154 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 155 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 156 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 157 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 158 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 159 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 160 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 161 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 162 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 163 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 164 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 165 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 166 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 167 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 168 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 169 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 170 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 171 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 172 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 173 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 174 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 175 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 176 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 177 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 178 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 179 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 180 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 181 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 182 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 183 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 184 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 185 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 186 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 187 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 188 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 189 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 190 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 191 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 192 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 193 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 194 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 195 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 196 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 197 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 198 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 199 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 200 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 201 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 202 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 203 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 204 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 205 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 206 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 207 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 208 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 209 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 210 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 211 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 212 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 213 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 214 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 215 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 216 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 217 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 218 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 219 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 220 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 221 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 222 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 223 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 224 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 225 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 226 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 227 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 228 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 229 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 230 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 231 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 232 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 233 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 234 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 235 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 236 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 237 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 238 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 239 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 240 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 241 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 242 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 243 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 244 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 245 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 246 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 247 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 248 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 249 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 250 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 251 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 252 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 253 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 254 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 255 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 256 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 257 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 258 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 259 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 260 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 261 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 262 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 263 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 264 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 265 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 266 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 267 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 268 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 269 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 270 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 271 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 272 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 273 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 274 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 275 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 276 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 277 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 278 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 279 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 280 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 281 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 282 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 283 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 284 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 285 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 286 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 287 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 288 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 289 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 290 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 291 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 292 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 293 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 294 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 295 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 296 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 297 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 298 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 299 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 300 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 301 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 302 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 303 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 304 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 305 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 306 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 307 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 308 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 309 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 310 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 311 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 312 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 313 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 314 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 315 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 316 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 317 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 318 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 319 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 320 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 321 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 322 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 323 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 324 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 325 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 326 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 327 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 328 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
