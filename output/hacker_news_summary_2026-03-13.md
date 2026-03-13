# Hacker News 热门文章摘要 (2026-03-13)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 展示HN：频道冲浪——像看有线电视一样观看YouTube

**原文标题**: Show HN: Channel Surfer – Watch YouTube like it’s cable TV

**原文链接**: [https://channelsurfer.tv](https://channelsurfer.tv)

**摘要：**

“频道冲浪者”是一款网络应用程序，它通过YouTube内容重现了观看传统有线电视的体验。由RDU开发，该应用将精选的YouTube频道呈现为独立的电视频道。用户只需按下一个按钮即可开始观看，无需搜索或选择特定视频。其核心理念是被动、线性的观看方式——就像在有线电视上切换频道一样——内容会持续播放而无需用户干预。这款工具专为那些寻求更轻松、无需频繁决策的YouTube观看方式的人群设计，让人回想起广播电视的“后仰式”观看体验。

---

## 2. 我能在本地运行AI吗？

**原文标题**: Can I run AI locally?

**原文链接**: [https://www.canirun.ai/](https://www.canirun.ai/)

本文证实，您可以在自有硬件上本地运行AI模型，并以Meta的Llama 3.1 8B作为典型范例。

关键信息如下：

*   **模型：** Llama 3.1 8B，这是Meta于2024年7月发布的80亿参数模型。
*   **本地可行性：** 该模型在质量与推理速度之间取得了出色平衡，非常适合在消费级硬件（如拥有足够内存的现代笔记本电脑或台式机）上进行本地部署。
*   **文件大小：** 模型提供多种“量化”版本以降低内存需求，范围从极小的4.1 GB（Q2_K）到完整精度的16 GB（F16）文件。用户可根据自身系统配置选择合适版本。
*   **能力：** 该模型在**对话**、**代码**和**推理**任务中展现出多功能性。
*   **上下文长度：** 它支持128K令牌的长上下文窗口，能够处理大量对话或文档。

总之，文章将Llama 3.1 8B定位为本地AI实用且强大的选择，提供多种文件大小以适应不同硬件，同时在各类应用中保持强劲性能。

---

## 3. Hammerspoon

**原文标题**: Hammerspoon

**原文链接**: [https://github.com/Hammerspoon/hammerspoon](https://github.com/Hammerspoon/hammerspoon)

Hammerspoon是一款macOS自动化工具，它将操作系统与Lua脚本引擎连接起来。它充当桥梁，使用户能够编写自定义Lua脚本，通过一系列内置扩展控制其OS X环境的各个方面。

安装时，用户可选择手动下载应用程序，或使用Homebrew通过命令`brew install hammerspoon --cask`进行安装。默认情况下，Hammerspoon在用户于`~/.hammerspoon/init.lua`创建配置文件前不具备任何功能。

该项目为用户提供了多种资源，包括入门指南、API文档、示例配置，以及通过IRC和Google群组提供的社区支持。它是早期Mjolnir项目的分支，不同之处在于通过将扩展集成在核心应用程序内提供了更一体化的体验。

未来的开发目标侧重于扩展其扩展中的系统API覆盖范围、改进扩展间的集成度，并提升整体用户体验。

---

## 4. 斯坦福研究人员首次记录到蓝鲸心率（2019年）

**原文标题**: Stanford researchers report first recording of a blue whale's heart rate (2019)

**原文链接**: [https://news.stanford.edu/stories/2019/11/first-ever-recording-blue-whales-heart-rate](https://news.stanford.edu/stories/2019/11/first-ever-recording-blue-whales-heart-rate)

**《斯坦福研究人员首次记录蓝鲸心率》（2019年）摘要**

斯坦福大学研究人员首次成功记录了一头野生蓝鲸的心率，揭示了其惊人的生理极限。数据通过一套特制的传感器设备采集，该设备以吸盘固定于加州海岸附近的一头蓝鲸身上。

关键发现显示，蓝鲸的心率变化极大，已逼近生物学极限。当深潜觅食时，其心率骤降至**每分钟2次**，比预期值慢约30至50倍。这种极度的心动过缓有助于节省氧气，支持长时间潜水。

相反，当蓝鲸在潜水间隙浮出水面呼吸时，心率会加速至峰值**每分钟37次**。这种高速心率能迅速恢复血液中的含氧量。然而，记录到的最高心率仍比预测值低50%至85%，表明蓝鲸的心脏可能已接近其生理极限。

这项发表于《美国国家科学院院刊》的研究，为了解地球上已知最大动物——蓝鲸的生理机制提供了关键见解。它展示了蓝鲸的心血管系统如何独特地支撑其庞大身躯与深潜生活方式，在水下最小化耗氧的同时，于水面实现最大化摄氧。该研究也有助于科学家理解这些海洋巨兽的能量需求，以及它们如何受环境生理性制约。

---

## 5. Show HN: Context Gateway – 在信息抵达LLM前压缩代理上下文

**原文标题**: Show HN: Context Gateway – Compress agent context before it hits the LLM

**原文链接**: [https://github.com/Compresr-ai/Context-Gateway](https://github.com/Compresr-ai/Context-Gateway)

**Context Gateway** 是 YC 支持的 Compresr 推出的一款工具，可在长对话历史记录发送至 LLM API 前，自动为 AI 代理进行压缩和优化。

其主要目的是消除当代理对话触及上下文窗口限制时的用户等待时间。该网关无需暂停进行压缩，而是通过后台预计算摘要，实现**即时历史记录压缩**。

**主要功能：**
*   作为 AI 代理（如 Claude Code、Cursor、OpenClaw）与 LLM 之间的中间件。
*   当上下文使用率达到可配置阈值（默认：75%）时自动触发压缩。
*   提供 TUI 向导简化设置，用户可选择代理、配置摘要模型/API 密钥并设置偏好。
*   通过日志文件（`history_compaction.jsonl`）提供透明度。

**快速开始：** 用户可通过 shell 命令安装，并运行交互式向导完成配置。

总之，Context Gateway 是一款性能优化工具，旨在通过主动、无感的压缩防止上下文限制中断，使 AI 代理交互无缝顺畅。

---

## 6. 卡塔尔氦气停产使芯片供应链面临两周倒计时。

**原文标题**: Qatar helium shutdown puts chip supply chain on a two-week clock

**原文链接**: [https://www.tomshardware.com/tech-industry/qatar-helium-shutdown-puts-chip-supply-chain-on-a-two-week-clock](https://www.tomshardware.com/tech-industry/qatar-helium-shutdown-puts-chip-supply-chain-on-a-two-week-clock)

卡塔尔主要的氦气生产设施——拉斯拉凡综合设施自3月2日起因伊朗无人机袭击而停产，导致全球约30%的供应中断。卡塔尔能源公司已宣布遭遇不可抗力，且暂无立即重启计划。

此次中断对半导体行业构成重大威胁，尤其对韩国影响显著——该国2025年近65%的氦气依赖卡塔尔供应。氦气在芯片制造过程中对硅片冷却至关重要，且无可替代材料。行业专家警告，若停产持续超过两周，可能引发长达数月的供应链危机，分销商将被迫紧急转移设备并寻找新供应商。

对此，韩国政府已启动对中东关键半导体材料供应的调查。尽管SK海力士声称已实现氦气供应多元化并保有充足库存，台积电目前也未预见显著影响，但局势依然脆弱。韩国与台湾各占全球芯片产能的18%。

此次事件与2022年乌克兰战争引发的氦气及氖气短缺危机相呼应，当时已促使韩国寻求供应多元化。当前危机再次凸显全球芯片供应链的脆弱性及其对地缘政治动荡区域的依赖。

---

## 7. TUI Studio – 可视化终端用户界面设计工具

**原文标题**: TUI Studio – visual terminal UI design tool

**原文链接**: [https://tui.studio/](https://tui.studio/)

**概述**

TUI Studio 是一款可视化、类似 Figma 的设计工具，用于创建终端用户界面（TUI）。它允许开发者通过将组件拖放到带有实时 ANSI 预览的实时画布上，来设计完全在终端中运行的应用程序。

**主要特性：**
*   **可视化编辑器：** 提供拖放界面和实时画布，支持绝对定位、Flexbox 和网格布局。
*   **组件库：** 包含超过 20 个内置 TUI 组件，如按钮、输入框、表格、模态框和进度条。
*   **主题支持：** 提供八种预配置的颜色主题（例如 Dracula、Nord），可实时更新设计。
*   **多框架导出（计划中）：** 旨在为六个流行的 TUI 框架（Ink、Bubble Tea、Blessed、Textual、OpenTUI 和 Tview）生成生产就绪代码，不过此功能在当前 Alpha 版本中尚不可用。
*   **便携式项目：** 将设计保存为 `.tui` JSON 文件，便于共享、版本控制和协作。

**当前状态与获取方式：**
该工具目前处于早期 Alpha 阶段，可免费下载适用于 macOS（Apple Silicon）、Windows 和 Docker 的版本。用户需注意，由于缺少代码签名，macOS 和 Windows 可能会显示安全警告，需要手动步骤才能运行应用程序。

---

## 8. Parallels确认MacBook Neo可在虚拟机中运行Windows。

**原文标题**: Parallels confirms MacBook Neo can run Windows in a virtual machine

**原文链接**: [https://www.macrumors.com/2026/03/13/macbook-neo-runs-windows-11-vm/](https://www.macrumors.com/2026/03/13/macbook-neo-runs-windows-11-vm/)

Parallels已确认其虚拟化软件Parallels Desktop兼容苹果新款平价笔记本MacBook Neo，使其能够在虚拟机中运行Windows。这得益于MacBook Neo搭载的A18 Pro芯片采用了与苹果M系列Mac芯片相同的ARM架构。

但该公司提醒，MacBook Neo的硬件配置将严重限制性能表现，特别是其不可升级的8GB统一内存。由于Windows 11虚拟机至少需要4GB内存，仅剩4GB内存供macOS及其他同时运行的Mac应用程序使用。

Parallels表示，MacBook Neo仅适合轻度、偶发性的Windows使用场景（例如访问遗留商业应用程序或仅支持Windows的工具软件），可能提供"可接受的体验"。该设备**明确不推荐**用于运行对CPU或GPU要求较高的Windows软件。

对于需要更强Windows虚拟机性能的用户，文章建议考虑性能更强的替代方案，例如搭载M5芯片的基础款MacBook Air（起售价1099美元，配备16GB内存）或翻新版M4 MacBook Air，这些机型均标配更大内存。

---

## 9. 埃隆·马斯克在AI编码项目遇挫之际，将更多xAI创始人排挤出局。

**原文标题**: Elon Musk pushes out more xAI founders as AI coding effort falters

**原文链接**: [https://www.ft.com/content/e5fbc6c2-d5a6-4b97-a105-6a96ea849de5](https://www.ft.com/content/e5fbc6c2-d5a6-4b97-a105-6a96ea849de5)

**摘要：**

据报道，埃隆·马斯克正推动其人工智能初创公司xAI的更多创始成员离职，因为该公司的核心项目——一款AI编程助手——难以达到性能预期。这些离职事件表明公司内部存在动荡和技术挑战。

这篇文章由《金融时报》发布，内容需付费阅读。可见文本主要为《金融时报》的订阅推广，详细列出了不同价格层级及数字访问、新闻通讯和优质内容等权益。核心新闻片段非常简短，指出xAI的领导层变动与其AI编程项目进展不顺有关。在可访问的部分中，未提及离职创始人的具体姓名，也未提供技术缺陷的进一步细节。

---

## 10. 你的手机就是一台完整的电脑。

**原文标题**: Your phone is an entire computer

**原文链接**: [https://medhir.com/blog/your-phone-is-an-entire-computer](https://medhir.com/blog/your-phone-is-an-entire-computer)

本文认为，现代智能手机（如iPhone）本质上已是功能完备的计算机，但被制造商（主要是苹果）人为限制。作者以采用与iPhone 16 Pro相同A18 Pro芯片的新款MacBook Neo为例，指出苹果政策的不一致之处。

MacBook允许用户从网络下载软件、运行开发工具，甚至安装Linux等替代操作系统，而iPhone却被锁定在iOS和App Store生态中。作者认为，以“用户安全”为由实施限制实属虚伪，其真正动机是通过App Store生态系统维持控制权与利润。

核心论点是：移动设备硬件层面的限制不可接受，它们既限制了用户自由，又助长了企业与政府的控制。作者主张将“获取Root权限的权利”作为维修权运动的一部分，强调设备所有者应拥有法律与技术能力，在自有设备上安装任何软件（包括macOS等桌面操作系统）。文章最后表达了将iPhone改造成通用计算机的愿景，强调用户选择权应高于人为的硬件限制。

---

## 11. 发布HN：Captain（YC W26）——面向文件的自动化RAG系统

**原文标题**: Launch HN: Captain (YC W26) – Automated RAG for Files

**原文链接**: [https://www.runcaptain.com/](https://www.runcaptain.com/)

Captain是一个自动化的RAG（检索增强生成）平台，旨在帮助开发者和企业利用自有文档快速构建和部署AI驱动的搜索与智能体系统。它致力于简化构建RAG流程中复杂的手动操作，将开发时间从数月缩短至几分钟，并将平均准确率从78%提升至95%。

该平台支持多种数据源（如云存储、SharePoint和Notion）的通用索引，处理预处理任务（包括OCR和文本分块），并提供托管的向量存储。其采用API优先的设计理念便于集成，同时具备智能体搜索与混合搜索功能。关键的企业级特性包括基于角色的访问控制、SOC 2合规认证，以及安全、精细化的元数据过滤。

简而言之，Captain定位为全托管服务，负责处理RAG所需的基础设施与复杂技术，让用户能够通过简洁的API专注于数据查询。

---

## 12. 约翰·卡马克谈开源与反AI活动人士

**原文标题**: John Carmack about open source and anti-AI activists

**原文链接**: [https://twitter.com/id_aa_carmack/status/2032460578669691171](https://twitter.com/id_aa_carmack/status/2032460578669691171)

由于提供的“文章”内容仅为X平台（原Twitter）在JavaScript被禁用时显示的技术错误提示页面，其中并未包含任何关于约翰·卡马克、开源或反AI活动家的实际论述或新闻内容。

因此，无法根据所给文本生成所要求的摘要。该页面仅提示用户需要启用JavaScript或更换浏览器才能正常访问X平台，并附有标准的网站页脚链接。

要获取约翰·卡马克对此类话题的真实观点，需要查找其本人公开发表的文章、访谈或社交媒体的真实帖文作为信息来源。

---

## 13. 使用Thunderbird订阅RSS

**原文标题**: Using Thunderbird for RSS

**原文链接**: [https://rubenerd.com/using-thunderbird-for-rss/](https://rubenerd.com/using-thunderbird-for-rss/)

作者已重新将Thunderbird邮件客户端作为主要RSS阅读器，发现其虽为本地应用而非网页端，但效果显著。他们曾使用自托管网页客户端以实现跨设备访问，但现在更倾向于避免在智能手机上阅读RSS。

文章强调了Thunderbird的核心优势：将RSS与邮件、日历和笔记集中管理。作者详述了两个实用功能：应用邮件式过滤器自动标记已读条目（符合“信息流”理念），以及将订阅源归类至专属“Feeds”账户的文件夹中。

尽管承认NetNewsWire是更优秀的Mac专属选择，作者总结认为Thunderbird作为跨平台RSS客户端表现卓越，能完美融入其现有工作流程。

---

## 14. 编码之后：我们所熟知的计算机编程的终结

**原文标题**: Coding after coders: The end of computer programming as we know it

**原文链接**: [https://www.nytimes.com/2026/03/12/magazine/ai-coding-programming-jobs-claude-chatgpt.html?smid=url-share](https://www.nytimes.com/2026/03/12/magazine/ai-coding-programming-jobs-claude-chatgpt.html?smid=url-share)

无法访问文章链接。

---

## 15. 发布HN：Spine Swarm（YC S23）——在视觉画布上协作的AI智能体

**原文标题**: Launch HN: Spine Swarm (YC S23) – AI agents that collaborate on a visual canvas

**原文链接**: [https://www.getspine.ai/](https://www.getspine.ai/)

**Spine Swarm（YC S23）概述**

Spine Swarm 是一个平台，旨在实现**人类与多个AI代理在共享视觉画布上的协同工作**。其核心理念是超越简单的一对一AI聊天，转向一个更具动态性的多代理协作环境。

**核心功能与要点：**

*   **多代理协作：** 用户可以部署专门的AI代理（如“研究员”、“设计师”或“写手”），让它们像团队一样协同完成任务。
*   **视觉画布：** 所有工作在一个无限的数字化白板上进行，允许对想法、文档以及代理输出内容（文本、图像、图表）进行空间化组织。
*   **人在回路：** 人类用户充当导演或项目经理的角色，引导代理群、设定目标并做出关键决策，而不仅仅是给出孤立的指令。
*   **应用场景：** 面向复杂、多步骤的项目，如产品构思、战略规划、内容创作和研究综合，这些项目需要不同的技能和视角。
*   **愿景：** 通过创建一个更自然、更强大的界面，让AI成为用户认知和创造能力的延伸，从而构建人机协作的未来。

本质上，Spine Swarm 不仅仅是另一个AI聊天机器人；它是一个工作空间，用户可以**指挥一支AI专家团队**，以视觉化和交互式的方式处理开放式项目。

---

## 16. 怀登警报再次响起：我们将对国安局根据第702条款的行为感到“震惊”

**原文标题**: The Wyden Siren Goes Off Again: We'll Be "Stunned" by NSA Under Section 702

**原文链接**: [https://www.techdirt.com/2026/03/12/the-wyden-siren-goes-off-again-well-be-stunned-by-what-the-nsa-is-doing-under-section-702/](https://www.techdirt.com/2026/03/12/the-wyden-siren-goes-off-again-well-be-stunned-by-what-the-nsa-is-doing-under-section-702/)

根据Techdirt提供的文章，以下是简要总结：

参议员罗恩·怀登就《外国情报监视法》（FISA）第702条下美国国家安全局（NSA）监控活动可能存在的滥用行为发出了严厉而隐晦的警告。他表示，如果公众了解政府如何解释并运用该法律赋予的权力，将会感到“震惊”和“愤怒”。

怀登警告的核心在于NSA据称进行监控的一个具体且未公开的“情况”。他已正式“搁置”对NSA网络司令部新任负责人的提名，要求拜登政府公开这一秘密的法律解释。怀登认为，这一信息对于围绕即将重新授权的第702条展开知情辩论至关重要。

文章将此描述为一种反复出现的模式——“怀登警报”——即这位参议员利用程序性工具迫使政府披露隐藏的监控行为。文章推测，问题很可能涉及一种有争议的国内监控行为，其伪装成“对外”情报收集，例如先前曝光的无需授权即可查询美国公民数据的“后门搜索”。

本质上，怀登暗示NSA正依据一项公众不知情的、可能过于宽泛的第702条秘密解释进行运作，而他正试图在国会投票续期该监控权限前迫使政府将其公之于众。

---

## 17. Mouser：Logi-Plus鼠标软件的开源替代品

**原文标题**: Mouser: An open source alternative to Logi-Plus mouse software

**原文链接**: [https://github.com/TomBadash/MouseControl](https://github.com/TomBadash/MouseControl)

Mouser是一款开源的本地替代软件，用于重新映射罗技MX Master 3S鼠标的按键，可替代罗技Options+软件。它支持Windows和macOS系统，无需安装或网络连接，并避免了官方软件的遥测功能和账户登录要求。

该工具允许用户重新映射全部六个可编程按键，创建按应用程序配置文件以实现自动切换，并从22种内置操作中选择导航、浏览、编辑和媒体控制功能。它还提供DPI/速度调节和滚轮方向反转功能。其关键特点是完全支持通过HID++协议在蓝牙模式下使用手势按钮，无需依赖罗技官方软件。

该应用采用现代化的Qt界面，配有交互式鼠标示意图以便轻松配置，并在系统托盘中静默运行。它能自动处理设备重连，并将所有设置本地存储于JSON文件中。

目前该软件仅支持MX Master 3S鼠标，但其架构设计可扩展至其他罗技鼠标。用户需确保不同时运行罗技Options+软件，以避免冲突。

---

## 18. 桶式蹲守（终于）结束了

**原文标题**: Bucketsquatting is (finally) dead

**原文链接**: [https://onecloudplease.com/blog/bucketsquatting-is-finally-dead](https://onecloudplease.com/blog/bucketsquatting-is-finally-dead)

本文宣布AWS针对S3中长期存在的“桶占位”安全漏洞推出了新解决方案。桶占位攻击发生在原所有者删除S3存储桶后，攻击者注册该全局唯一桶名，从而可能获取数据或干扰服务。

解决方案是采用新的推荐桶命名命名空间，语法为`<前缀>-<账户ID>-<区域>-an`（例如`myapp-123456789012-us-west-2-an`）。该结构确保仅指定AWS账户能在对应区域创建同名存储桶，杜绝他人占位。AWS建议所有新建存储桶默认采用此命名模式。

为推广该方案，AWS新增条件键`（s3:x-amz-bucket-namespace）`，允许安全管理员通过服务控制策略（SCP）强制执行此命名规范。该保护机制不适用于现有存储桶，此类桶需迁移才能获得保护。

文章对比了其他云服务商：谷歌云存储通过对特定存储桶进行域名验证来缓解此问题，而Azure Blob存储因其账户级命名结构仍存在风险。核心结论是：新的S3命名空间能从根本上消除新建存储桶面临的桶占位威胁。

---

## 19. NanoClaw创造者狂野六周，终与Docker达成协议

**原文标题**: The wild six weeks for NanoClaw's creator that led to a deal with Docker

**原文链接**: [https://techcrunch.com/2026/03/13/the-wild-six-weeks-for-nanoclaws-creator-that-led-to-a-deal-with-docker/](https://techcrunch.com/2026/03/13/the-wild-six-weeks-for-nanoclaws-creator-that-led-to-a-deal-with-docker/)

加夫里埃尔·科恩开发了NanoClaw——一款微型开源AI智能体工具，作为广受欢迎但存在安全隐患的OpenClaw的安全替代品。该项目在Hacker News引发病毒式传播并获得AI研究员安德烈·卡帕西赞誉后迅速走红，累计收获22,000个GitHub星标。

科恩关停自己的AI营销初创公司，创立NanoCo并全力投入NanoClaw开发。项目的发展促成了与Docker的合作，后者将把沙箱容器技术整合至NanoClaw，从而扩大其开发者覆盖范围。

该项目的灵感源于科恩对OpenClaw安全漏洞的担忧——他发现该工具能无限制访问并存储个人数据。他运用安全容器技术构建了这个仅500行代码的极简替代方案，以确保隔离性与安全性。

尽管NanoClaw保持免费开源，NanoCo计划推出商业模型，提供企业级支持产品和嵌入式工程服务，初期资金来自亲友支持。项目的快速成功已引起风险投资机构的关注。

---

## 20. 遗失的《神秘博士》剧集被发现

**原文标题**: Lost Doctor Who Episodes Found

**原文链接**: [https://www.bbc.co.uk/news/articles/c4g7kwq1k11o](https://www.bbc.co.uk/news/articles/c4g7kwq1k11o)

1965年《神秘博士》系列剧《戴立克终极计划》中两集失传已久的剧集已被发现，该剧由威廉·哈特尼尔饰演初代博士。这两集名为《噩梦开端》与《魔鬼星球》的影片，是在一位收藏家去世后捐赠给莱斯特慈善机构“电影真美妙！”的私人电影藏品纸箱中找到的。

自英国广播公司首播后，这些剧集便再未公开出现，因该系列从未在海外发行且母带后期遭销毁。此次发现补全了这部12集故事的前三集，其中第二集曾于2004年被寻回。

饰演旅伴史蒂文·泰勒的演员彼得·珀维斯在观看修复片段时深感惊喜。修复版剧集将于2026年4月4日在BBC流媒体平台上线，并在伦敦特别展映活动中放映。

---

## 21. Meta Platforms：游说、黑钱与《应用商店问责法案》

**原文标题**: Meta Platforms: Lobbying, dark money, and the App Store Accountability Act

**原文链接**: [https://github.com/upper-up/meta-lobbying-and-other-findings](https://github.com/upper-up/meta-lobbying-and-other-findings)

这项调查指控Meta Platforms策划了一场隐蔽的多渠道游说活动，以推动《应用商店问责法案》通过。该法案将年龄验证的成本和负担从社交媒体公司转移至苹果和谷歌的应用商店。

关键发现包括：Meta在2025年花费创纪录的2630万美元用于联邦游说；在各州部署数十名说客；并秘密资助一个名为“数字童年联盟”的“草根”组织来推动该法案。该联盟缺乏标准非营利组织的透明度，只批评应用商店而从未提及Meta。

该行动还涉及超过7000万美元的州级超级政治行动委员会支出及战略性竞选捐款。调查虽探讨了其与一个大型“黑钱”网络的潜在关联，但未发现该网络直接资助儿童安全倡导。

《应用商店问责法案》已在犹他州、得克萨斯州和路易斯安那州通过，其他多州及联邦层面也有相关法案待决。报告总结称，若立法生效，Meta将得以规避新的合规要求，而应用商店生态系统中的竞争对手将承担相关成本。

---

## 22. 《意外之室》（2018）

**原文标题**: The Accidental Room (2018)

**原文链接**: [https://99percentinvisible.org/episode/the-accidental-room/](https://99percentinvisible.org/episode/the-accidental-room/)

2003年，艺术家迈克尔·汤森与因城市开发而流离失所的朋友们，在普罗维登斯广场购物中心内秘密建造了一间公寓。数年前商场施工期间，汤森就注意到墙壁间有一处未被使用的意外空隙。在他们的艺术团体"雷霆堡垒"因超市建设被拆除后，他们便将这750平方英尺的空隙作为反抗过度开发的庇护所与宣言。

近四年间，他们暗中清理废墟，用商场物品和个人家当布置空间，每次连续居住数周。他们以居民而非顾客的视角观察商场生态。2007年商场保安因入室盗窃案调查时，撞见汤森正向访客展示该空间，公寓由此曝光。汤森被控非法侵入，但仅获轻罪判决，永久禁止踏入商场成为最终裁决。

该项目凸显了城市空间的闲置问题，质询了空间居住权的归属，将被人遗忘的建筑副产品转化为临时居所与艺术性的空间 reclaimation 行动。

---

## 23. Okmain：如何选择图像的主色调

**原文标题**: Okmain: How to pick an OK main colour of an image

**原文链接**: [https://dgroshev.com/blog/okmain/](https://dgroshev.com/blog/okmain/)

Okmain 是一个用于从图像中提取视觉愉悦、具有代表性的主色调的库，它改进了常见的将图像缩放至单个像素的方法（该方法通常产生暗淡的颜色）。

其核心方法采用三种技术。首先，通过 **k-means 颜色聚类** 将相似像素分组为最多四个不同的颜色群组，避免产生所有颜色的平庸平均值。其次，计算在 **Oklab 色彩空间** 而非 sRGB 中进行，从而实现感知上更准确、更鲜艳的颜色混合。第三，**聚类排序** 通过基于像素数量、中心性（偏好图像中央区域）和颜色饱和度（色度）对聚类进行加权，来确定最突出的颜色。

在性能方面，Okmain 对大型图像进行下采样，并使用优化的、可自动向量化的 Rust 代码，对于数百万像素的图像能在约 100 毫秒内得出结果。作者还尝试了 LLM 辅助开发，发现其在初始搭建阶段很有用，但在生成优化且可读的核心算法方面效果有限。

最终成果是一个快速、开源的工具，能够可靠地提取美观的主色调，适用于如 UI 卡片背景等应用场景。

---

## 24. Instagram端到端加密消息功能将于5月8日后停止支持。

**原文标题**: E2E encrypted messaging on Instagram will no longer be supported after 8 May

**原文链接**: [https://help.instagram.com/491565145294150](https://help.instagram.com/491565145294150)

**文章摘要：Instagram端到端加密消息功能将于5月8日后停止支持**

Meta将于**2024年5月8日**起停止支持Instagram的端到端（E2E）加密消息功能。此变更主要影响私信中的**“闪灭模式”**和照片视频的**“限时查看”**功能。

*   **终止内容：** 目前为闪灭模式（阅后即焚）发送的消息内容以及媒体的“限时查看”选项提供的E2E加密保护。
*   **关键日期：** 2024年5月8日后，这些功能将不再受E2E加密保护。通过它们发送的消息将转而由Instagram的标准安全措施进行保护。
*   **不受影响：** 此变更**不会**影响**Messenger上的聊天和通话**，或Instagram私信中**“秘密对话”**功能（在可用地区）的E2E加密。这些功能仍保持完全端到端加密。
*   **用户操作：** Instagram建议用户在分享敏感内容时留意此变更。他们推荐未来在Instagram上使用平台的**“秘密对话”**功能以获得端到端加密的消息体验。

简而言之，Instagram正在从两项特定的短暂消息功能中移除额外的隐私层（E2E加密），同时为其专用的秘密聊天选项保留该加密。

---

## 25. 各国军方正争相打造自己的星链系统。

**原文标题**: Militaries are scrambling to create their own Starlink

**原文链接**: [https://www.newscientist.com/article/2517766-why-the-worlds-militaries-are-scrambling-to-create-their-own-starlink/](https://www.newscientist.com/article/2517766-why-the-worlds-militaries-are-scrambling-to-create-their-own-starlink/)

本文阐述了全球各国军队为何正紧急发展自有卫星互联网星座，其驱动力源于SpaceX星链所展现的战略优势与潜在风险。

星链由近万颗卫星组成的网络在全球提供可靠且难以干扰的互联网服务，使其在现代战争中（包括无人机作战和战场通信）具有不可估量的价值。然而，该网络由埃隆·马斯克领导的私营公司掌控，带来了重大风险——正如乌克兰战场上俄军访问权限受限所暴露的那样，这直接影响了其军事协调能力。

这种依赖性已引发全球竞相发展主权替代方案。欧盟正在建设IRIS²网络（计划2030年投入运营），中国正推进国网和千帆星座建设，而德国、英国等欧洲国家也在自主研发系统或投资OneWeb等供应商。

专家指出，虽然富裕的超级大国最终会迎头赶上，但得益于SpaceX极具成本效益的发射能力，星链目前仍保持显著领先。建设这类星座耗资巨大，需要持续发射卫星并进行维护——对于英国等缺乏独立发射能力的国家而言尤为困难。

总之，星链虽革新了军事通信，但也暴露出依赖商业化、外国控制服务的脆弱性。因此，各国正投资建设主权卫星网络，以确保未来冲突中的通信安全可靠。

---

## 26. Digg又消失了。

**原文标题**: Digg is gone again

**原文链接**: [https://digg.com/](https://digg.com/)

Digg因在当前互联网环境下未能实现产品市场契合，正大幅缩减团队规模。公司指出两大主要挑战：一是泛滥的机器人和AI垃圾信息严重损害了社区互动的可信度，二是由于强大的网络效应，难以与成熟的社交平台竞争。

尽管遭遇挫折，Digg并未关闭。一个小型团队将留任，以“彻底重塑”的战略重建平台，不再直接对标现有巨头。关键举措是创始人凯文·罗斯将于四月全职回归公司，引领这一新方向。

公司播客节目《Diggnation》将继续每月更新。CEO对离职团队和社区表达了感谢，承认他们的失望情绪，并承诺将为未来重启保留用户名。其核心使命始终不变：打造互联网上值得信赖的内容平台。

---

## 27. Raspbian上的Gvisor

**原文标题**: Gvisor on Raspbian

**原文链接**: [https://nubificus.co.uk/blog/gvisor-rpi5/](https://nubificus.co.uk/blog/gvisor-rpi5/)

本文阐述了如何在树莓派5上成功运行gVisor这一安全容器运行时。核心挑战在于特定的内核配置：默认的Raspbian系统使用39位虚拟地址空间，而gVisor需要48位虚拟地址空间才能正常运行。

gVisor通过运行沙盒化的“用户空间内核”来拦截容器系统调用。这种架构需要大量虚拟地址空间来管理自身代码、客户内存映射和内部页表。39位虚拟地址空间512GB的限制会导致容量不足，使gVisor因隐晦的内存错误而运行失败。相比之下，48位虚拟地址空间可提供256TB容量，为运行留出充足余量。

文章将此与传统KVM等管理程序进行对比——后者在特权硬件层级运行，不易受单个进程虚拟地址空间限制的约束。随后给出了明确的解决方案：在树莓派上直接或通过更快的交叉编译方式，启用`CONFIG_ARM64_VA_BITS_48`选项重新编译内核。用户也可选择切换至已采用48位配置的树莓派版Ubuntu系统。

总之，启用48位虚拟寻址对于在树莓派5上运行gVisor这类先进的云原生软件至关重要，这将释放其在安全隔离边缘计算工作负载方面的潜力。

---

## 28. 分形夫人：镜像、旋转、缩放（2025）

**原文标题**: The Mrs Fractal: Mirror, Rotate, Scale (2025)

**原文链接**: [https://www.4rknova.com//blog/2025/06/22/mrs-fractal](https://www.4rknova.com//blog/2025/06/22/mrs-fractal)

本文介绍了**MRS分形**——一种通过几何操作生成复杂自相似结构的技术。与曼德博集或朱利亚集不同，它通过对三维点施加三种简单迭代运算构建而成：**镜像**（空间折叠）、**旋转**以及带偏移的**缩放**。

其核心数学过程定义为 \(p_{n+1} = s \cdot R(M(p_n)) - o\)，即对点进行镜像、旋转、乘以缩放系数 \(s > 1\) 后再进行偏移。重复此循环会折叠并扩展空间，形成嵌套分形图案。

文中包含一段实用的**着色器代码片段**（基于GLSL），实现了该概念的二维版本。代码对UV坐标迭代施加绝对值镜像、旋转矩阵和衰减缩放因子，最终通过变换后坐标的长度生成视觉输出，展示了该技术在程序化渲染中的应用。

总之，MRS分形提供了一种**兼具几何直观性的分形生成替代方案**，它强调镜像与缩放而非复数运算，可直接应用于实时着色器图形领域。

---

## 29. 在Transformer中执行程序以实现指数级加速推理

**原文标题**: Executing programs inside transformers with exponentially faster inference

**原文链接**: [https://www.percepta.ai/blog/can-llms-be-computers](https://www.percepta.ai/blog/can-llms-be-computers)

**《在Transformer中执行程序实现指数级加速推理》摘要**

本文探讨了一种创新技术，使大型语言模型能够以数量级提升的速度执行程序推理。其核心思想超越了标准自回归逐词生成模式——这种模式本质上是顺序执行且速度缓慢。

提出的"Transformer程序执行"方法，通过训练Transformer模型在内部表征并运行完整的程序控制流与状态。模型不再以文本形式逐步*生成*代码，而是在前向传播中直接*计算*程序输出。这类似于让模型在前向传播过程中充当虚拟机或解释器。

关键优势在于从**顺序**执行（n个词需O(n)步）转向**并行**计算（前向传播仅需恒定时间O(1)）。模型经特定程序或算法训练后，仅需一次大规模并行的前向传播即可产生正确输出，实现该任务的"指数级加速推理"。

文章讨论了该方法如何要求模型学习算法推理与状态追踪。潜在应用包括：在大型模型中嵌入快速习得算法（如排序子程序）、创建超高效专用模型，以及推进推理能力发展。这标志着LLM从文本模拟器向习得程序的直接高效计算器转变。

---

## 30. 在变压器内部执行程序，实现指数级加速的推理

**原文标题**: Executing programs inside transformers with exponentially faster inference

**原文链接**: [https://www.percepta.ai/blog/can-llms-be-computers](https://www.percepta.ai/blog/can-llms-be-computers)

**《在Transformer中以指数级加速推理执行程序》摘要**

Percepta AI的这篇文章探讨了一种新颖方法，使大型语言模型（LLM）能以显著提升的效率执行程序。其核心解决的是Transformer中标准的自回归生成问题，这种方式本质上是缓慢且顺序执行的，导致像代码执行这类任务计算成本高昂。

提出的解决方案是在Transformer架构内部进行**“直接程序执行”**。该方法不是为外部解释器逐个生成代码标记，而是将程序（如Python函数）直接编译到模型的权重中，从而创建一个专门的“程序Transformer”。

关键创新在于**推理速度的指数级提升**。一旦编译完成，执行程序仅需模型的**单次前向传播**，无论程序的逻辑长度或复杂度如何。这与标准生成方式形成鲜明对比，后者的运行时间与输出长度成线性比例。

其机制在于将程序的控制流（如循环、条件判断）视为模型内部计算的一部分。利用Transformer的前馈网络在单个层内并行执行程序步骤，有效地将算法“展开”到模型的隐藏维度中。

文章展示的基准测试表明，该技术能以完美准确度执行诸如两个n位数相加或计算奇偶性等算法，且推理速度比标准生成方式快数个数量级。结论指出，这种方法模糊了LLM与计算机之间的界限，预示着未来模型能以神经网络的原生速度内化并运行复杂算法，为更高效的人工智能辅助编程与推理开辟了新道路。

---

