# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-11.md)

*最后自动更新时间: 2026-02-11 20:35:25*
## 1. 地球温室化轨迹的风险

**原文标题**: The risk of a hothouse Earth trajectory

**原文链接**: [https://www.cell.com/one-earth/fulltext/S2590-3322%2825%2900391-4](https://www.cell.com/one-earth/fulltext/S2590-3322%2825%2900391-4)

《“温室地球”轨迹风险综述》

发表于《一个地球》期刊的这篇文章警告称，当前的气候政策和行动不足以阻止地球可能跨越临界点，从而将地球锁定在不可逆转的“温室地球”发展轨迹上。这一路径将导致全球长期升温较工业化前水平高出4-5°C，远超《巴黎协定》的控温目标。

作者分析了政治承诺与气候系统所需实质性变革之间的差距。他们指出，即使净零排放承诺得以兑现，地球系统过程——如冰盖融化、永久冻土消融和森林衰退——所具有的延迟性和累积性，仍会带来激活反馈循环的高风险，从而加剧全球变暖。这形成了“气候政策悖论”：当前排放的完整后果将在数十年甚至数百年后才会显现，而届时触发这些临界点可能已无法避免。

核心结论是：防止这种灾难性发展轨迹的时间窗口正在迅速关闭。渐进式减排已不再足够；文章呼吁建立以“负向临界点”为核心的紧急行动范式——即加速社会、技术和经济的积极转型，以实现快速脱碳。这需要立即开展全球协同行动，从根本上重塑能源、粮食和经济体系，超越单纯减排，转向积极恢复地球气候稳定性。

---

## 2. 丰田萤石："主机级"Flutter游戏引擎

**原文标题**: Toyota Fluorite: "console-grade" Flutter game engine

**原文链接**: [https://fluorite.game/](https://fluorite.game/)

丰田萤石引擎是一款专为Flutter框架打造的“主机级”3D游戏引擎。其核心创新在于允许开发者直接使用Dart语言编写游戏逻辑，无缝集成Flutter的UI组件及热重载等开发工具，实现快速迭代。

引擎底层采用高性能、数据导向的实体组件系统（ECS），由C++编写以确保在低端硬件上流畅运行，同时提供高级Dart API以降低使用门槛。

渲染方面，引擎依托Google的Filament渲染器，支持Vulkan等现代图形API，可实现基于物理的光照、后期处理效果及自定义着色器等高级视觉表现。

其关键特性“模型定义触控触发区”允许3D美术师直接在Blender等建模工具中定义交互区域，开发者随后可为这些区域绑定事件，从而简化直观的3D空间界面创建流程。

总之，萤石引擎致力于将高性能的主机级3D画面与Flutter及Dart的高效开发流程相结合。

---

## 3. 克劳德代码正在被简化。

**原文标题**: Claude Code Is Being Dumbed Down

**原文链接**: [https://symmetrybreak.ing/blog/claude-code-is-being-dumbed-down/](https://symmetrybreak.ing/blog/claude-code-is-being-dumbed-down/)

2026年2月，Anthropic的Claude Code版本2.1.20将详细的文件读取和搜索日志替换为单一通用摘要行（例如“读取了3个文件”）。许多每月支付200美元的用户抱怨，这隐藏了文件路径和搜索模式等关键信息。

社区要求恢复旧版行为或提供简易开关选项。Anthropic的回应是引导用户使用“详细模式”，但用户认为该模式并不适用——它会在终端中淹没过多调试数据、思维轨迹和完整子代理记录，而非用户所需的简洁具体日志。

后续更新试图通过剔除部分元素来减轻详细模式的冗杂感，但仍包含子代理输出等无关内容。这种处理方式激怒了用户，他们认为这是在通过复杂步骤变相实现配置开关功能，同时也损害了原本为特定目的使用详细模式的用户体验。

核心批评在于：Anthropic无视用户对简易解决方案（配置开关）的直接反馈，转而采用复杂且不尽人意的替代方案，导致许多用户将安装版本锁定在之前的2.1.19版。

---

## 4. NetNewsWire迎来23周年

**原文标题**: NetNewsWire Turns 23

**原文链接**: [https://netnewswire.blog/2026/02/11/netnewswire-turns.html](https://netnewswire.blog/2026/02/11/netnewswire-turns.html)

热门RSS阅读器NetNewsWire于2026年2月11日庆祝了其23周年纪念。团队近期发布了适用于Mac和iOS的7.0版本，目前正着手开发7.0.1更新，以解决发布后急需的修复和调整。

展望未来，开发路线图包括专注于同步功能改进的7.1版本。7.2版本计划尚未最终确定，但可能涉及用户体验修复和整体优化。目前暂无7.3版本计划，这将取决于早期更新的成果以及苹果即将召开的WWDC大会上可能发布的新技术。

文章强调开发优先级具有灵活性且可能调整。最后，团队表达了前瞻性的乐观态度，相信NetNewsWire的最佳版本仍在未来。

---

## 5. GLM-5：从氛围编程到智能体工程

**原文标题**: GLM-5: From Vibe Coding to Agentic Engineering

**原文链接**: [https://z.ai/blog/glm-5](https://z.ai/blog/glm-5)

**《GLM-5：从氛围编程到智能体工程》摘要**

本文介绍了智谱AI的新一代大语言模型GLM-5，它被定位为对其前身GLM-4的一次重大飞跃。其核心进步在于从基础的对话式AI（“氛围编程”）转向复杂的“智能体工程”，这意味着该模型能够自主规划、推理并执行复杂的多步骤任务。

文章重点强调的关键能力和特性包括：

*   **性能提升：** 据报道，GLM-5在主要基准测试（如MMLU、GPQA）和编码（HumanEval）上超越了GPT-4和Claude 3.5等领先模型。其专门变体GLM-5-Flash为成本敏感型应用提供了高速处理能力。
*   **超长上下文窗口：** 支持长达100万tokens的上下文，能够对研究论文或整个代码库等长篇文档进行深入分析。
*   **先进的多模态与工具调用：** 该模型集成了强大的视觉能力和稳健的函数调用功能，使其能够解读图像、使用工具，并无缝地与外部API及数据源交互。
*   **网络搜索与文件处理：** 内置原生网络搜索功能，并能处理多种文件格式（图像、PDF、Word文档等），增强了其在研究和分析方面的实用性。
*   **面向开发者：** GLM-5被设计为一个构建复杂AI智能体的平台。可通过智谱API和全新的开发者控制台进行访问，鼓励开发者利用其自主、多步骤推理能力创建应用程序。

本质上，GLM-5代表着一个转变：从一个协助处理简单任务的聊天机器人，转变为一个强大的通用推理引擎，能够作为独立智能体来解决复杂的现实世界问题。

---

## 6. 西班牙单根骨骼首次提供汉尼拔战象的直接证据

**原文标题**: Single bone in Spain offers first direct evidence of Hannibal's war elephants

**原文链接**: [https://phys.org/news/2026-02-hannibal-famous-war-elephants-bone.html](https://phys.org/news/2026-02-hannibal-famous-war-elephants-bone.html)

**西班牙发现单根骨头，为汉尼拔战象提供首个直接证据**

在西班牙一处考古遗址发现的大型动物骨骼，首次为迦太基将军汉尼拔·巴卡在第二次布匿战争（公元前218-201年）中使用的战象提供了直接实物证据。

这块被鉴定为象股骨碎片的骨头出土于古遗址*卡斯蒂洛*，该地曾是重要的伊比利亚城市和贸易中心。放射性碳测年显示其年代约为公元前220-200年，与汉尼拔的征战时间完全吻合。公元前218年翻越阿尔卑斯山进攻罗马之前，汉尼拔曾在伊比利亚半岛筹集资源与盟友，其军队中便包括一支北非战象部队。

此项发现意义重大：尽管波利比乌斯、李维等古代史学家的记载描述了汉尼拔的战象，但其象群在欧洲从未发现过确凿的实物遗存。骨骼出土于主要聚居地，表明这头战象曾随迦太基军队驻扎该区域，可能因伤病死亡，或是在为著名的阿尔卑斯山远征做后勤准备时遗留。

这一发现为古代文献提供了切实佐证，深化了我们对汉尼拔宏大军事行动中实际挑战与资源调配的理解，并证实了其战象在踏上那段最著名且艰险的征途前，确曾踏足欧洲土地。

---

## 7. 我们渲染并嵌入了一百万个CAD文件

**原文标题**: We rendered and embedded one million CAD files

**原文链接**: [https://cad-search-three.vercel.app/](https://cad-search-three.vercel.app/)

本文宣布，在线CAD平台Explore0已成功将一百万个3D CAD模型渲染并嵌入其基于网页的查看器中。核心成就是开发了一个可扩展的自动化流程，能够处理海量多样化的CAD文件（如STEP和IGES格式），并将其转换为轻量级、可流式传输的3D可视化内容，直接在网页浏览器中呈现。

关键要点包括：
*   **规模：** 该项目成功处理了一百万个文件，展现了强大的技术基础设施。
*   **技术：** 利用基于云的渲染流程实现自动化转换，克服了传统共享CAD数据所需的复杂性和人工操作。
*   **可访问性：** 用户无需专业的桌面CAD软件即可在线即时查看复杂的工程模型，促进了更便捷的协作与共享。
*   **意义：** 这一里程碑标志着在提高CAD数据在Web上的可访问性和互操作性方面迈出了重要一步，可能改变工程师和设计师共享与评审3D设计的方式。

本质上，本文强调了基于Web的CAD可视化领域的一项重大技术成就，实现了交互式3D工程模型的无缝、大规模发布。

---

## 8. GLM-OCR：精准 × 快速 × 全面

**原文标题**: GLM-OCR: Accurate × Fast × Comprehensive

**原文链接**: [https://github.com/zai-org/GLM-OCR](https://github.com/zai-org/GLM-OCR)

GLM-OCR是一款基于GLM-V架构构建的多模态OCR模型，专为精准高效的文档理解而设计。它在OmniDocBench等基准测试中表现卓越，尤其擅长处理表格、代码、印章等复杂现实文档。

其核心特性包括：0.9B参数规模确保高效推理，支持通过vLLM、SGLang和Ollama进行部署，并提供用户友好的SDK。用户可通过智谱AI托管的API快速上手，也可自行部署模型以获得完全控制权。

该SDK提供多种使用方式：命令行界面、Python API以及Flask网页服务。输出结果同时支持结构化JSON与格式化Markdown。系统采用模块化流程，支持对版面检测、结果格式化等组件进行定制。

本项目为开源项目，代码遵循Apache 2.0许可证，模型采用MIT许可证。

---

## 9. WiFi或将成为无形的群体监控系统

**原文标题**: WiFi Could Become an Invisible Mass Surveillance System

**原文链接**: [https://scitechdaily.com/researchers-warn-wifi-could-become-an-invisible-mass-surveillance-system/](https://scitechdaily.com/researchers-warn-wifi-could-become-an-invisible-mass-surveillance-system/)

卡尔斯鲁厄理工学院的研究人员展示了一种新方法，能够利用普通WiFi信号识别个体，而无需对方携带任何主动设备。该技术通过被动分析标准WiFi路由器及联网设备发出的无线电波与空间中人体交互产生的信号模式来实现，其效果类似于生成摄像头图像。

关键在于，该方法无需专用硬件，而是利用现有活跃WiFi网络中已传输的未加密反馈信号（波束成形反馈信息）。一项涉及197名参与者的研究表明，经训练的机器学习模型可借此在数秒内以近乎100%的准确率从多角度识别人员。

研究人员警告称，这将使无处不在的WiFi路由器转变为隐蔽的监控基础设施，对隐私构成严重威胁。即便关闭个人设备，只要周边有其他活跃网络，防护依然无效。他们强调，亟需在下一代WiFi标准中建立隐私保护机制，以防止该技术被滥用，尤其在威权环境中。

---

## 10. 你的开发公司应该开源吗？

**原文标题**: Should your developer company go open source?

**原文链接**: [https://extremefoundership.substack.com/p/should-your-developer-company-go](https://extremefoundership.substack.com/p/should-your-developer-company-go)

本文认为，选择开源是一项战略性商业决策，而非哲学理念。只有当开源能够通过加速市场采用、增强产品防御性或优化盈利模式，从结构上帮助产品取胜时，才值得推行。

核心检验标准是“联邦测试”：当用户与贡献者为同一类角色时（例如数据工程师既使用*又*开发数据连接器），开源效果最佳。这会形成复合网络效应。若用户与贡献者分离（即“体育场”模式），社区贡献将微乎其微。

开源对技术型用户、成熟问题领域最为有效，并可作为绕过采购流程的楔子，让工程师快速上手。作者建议明确界定“开源楔子”——即开源版本能完全解决的具体需求（例如单用户场景），同时将团队协作与治理等功能保留给付费产品。

文章警示了隐藏成本：持续高标准的执行要求、公开合约的锁定效应，以及需要强大治理机制来回绝贡献者。创始人必须诚实地评估自身业务能否满足这些要求，并承受潜在分叉风险；若不能，闭源才是更明智的选择。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 2 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 3 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 4 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 5 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 6 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 7 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 8 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 9 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 10 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 11 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 12 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 13 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 14 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 15 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 16 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 17 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 18 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 19 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 20 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 21 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 22 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 23 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 24 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 25 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 26 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 27 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 28 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 29 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 30 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 31 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 32 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 33 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 34 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 35 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 36 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 37 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 38 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 39 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 40 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 41 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 42 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 43 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 44 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 45 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 46 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 47 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 48 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 49 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 50 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 51 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 52 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 53 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 54 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 55 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 56 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 57 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 58 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 59 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 60 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 61 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 62 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 63 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 64 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 65 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 66 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 67 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 68 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 69 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 70 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 71 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 72 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 73 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 74 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 75 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 76 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 77 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 78 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 79 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 80 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 81 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 82 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 83 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 84 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 85 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 86 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 87 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 88 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 89 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 90 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 91 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 92 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 93 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 94 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 95 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 96 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 97 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 98 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 99 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 100 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 101 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 102 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 103 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 104 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 105 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 106 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 107 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 108 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 109 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 110 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 111 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 112 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 113 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 114 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 115 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 116 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 117 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 118 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 119 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 120 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 121 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 122 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 123 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 124 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 125 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 126 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 127 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 128 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 129 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 130 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 131 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 132 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 133 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 134 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 135 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 136 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 137 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 138 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 139 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 140 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 141 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 142 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 143 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 144 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 145 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 146 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 147 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 148 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 149 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 150 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 151 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 152 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 153 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 154 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 155 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 156 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 157 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 158 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 159 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 160 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 161 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 162 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 163 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 164 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 165 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 166 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 167 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 168 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 169 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 170 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 171 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 172 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 173 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 174 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 175 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 176 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 177 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 178 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 179 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 180 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 181 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 182 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 183 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 184 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 185 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 186 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 187 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 188 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 189 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 190 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 191 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 192 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 193 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 194 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 195 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 196 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 197 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 198 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 199 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 200 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 201 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 202 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 203 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 204 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 205 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 206 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 207 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 208 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 209 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 210 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 211 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 212 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 213 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 214 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 215 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 216 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 217 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 218 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 219 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 220 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 221 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 222 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 223 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 224 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 225 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 226 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 227 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 228 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 229 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 230 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 231 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 232 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 233 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 234 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 235 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 236 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 237 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 238 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 239 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 240 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 241 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 242 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 243 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 244 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 245 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 246 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 247 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 248 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 249 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 250 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 251 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 252 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 253 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 254 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 255 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 256 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 257 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 258 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 259 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 260 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 261 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 262 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 263 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 264 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 265 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 266 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 267 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 268 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 269 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 270 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 271 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 272 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 273 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 274 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 275 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 276 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 277 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 278 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 279 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 280 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 281 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 282 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 283 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 284 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 285 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 286 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 287 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 288 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 289 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 290 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 291 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 292 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 293 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 294 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 295 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 296 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 297 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 298 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 299 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 300 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 301 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 302 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 303 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 304 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 305 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 306 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 307 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 308 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 309 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 310 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 311 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 312 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 313 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 314 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 315 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 316 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 317 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 318 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 319 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 320 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 321 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 322 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 323 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 324 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 325 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 326 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
