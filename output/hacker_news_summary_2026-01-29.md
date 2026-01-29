# Hacker News 热门文章摘要 (2026-01-29)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 项目精灵：探索无限互动世界的实验

**原文标题**: Project Genie: Experimenting with infinite, interactive worlds

**原文链接**: [https://blog.google/innovation-and-ai/models-and-research/google-deepmind/project-genie/](https://blog.google/innovation-and-ai/models-and-research/google-deepmind/project-genie/)

谷歌正在向美国的Google AI Ultra订阅用户推出**Project Genie**，这是一款实验性研究原型。它允许用户实时创建、探索和修改由人工智能生成的互动世界。

该原型基于**Genie 3世界模型**，用户可通过文字提示和图像“绘制”世界，在动态生成的世界中自由探索，并能从作品库中重新组合创作。体验中还包括对角色视角（第一人称或第三人称）和移动风格的控制。

谷歌将此视为朝着构建更通用的人工智能系统（AGI）迈出的一步，这类系统能够理解和模拟多样化的环境。公司承认目前存在一些限制，包括生成的世界可能不够逼真、角色控制偶尔出现延迟，以及生成时间限制在60秒内。一些先前宣布的功能，如可通过提示改变世界事件，目前尚未包含在内。

该服务首先面向美国订阅用户开放，并计划扩展到更多地区。目标是收集反馈，最终将这项世界构建技术推广给更多用户。

---

## 2. 我的妈妈与DeepSeek博士（2025）

**原文标题**: My Mom and Dr. DeepSeek (2025)

**原文链接**: [https://restofworld.org/2025/ai-chatbot-china-sick/](https://restofworld.org/2025/ai-chatbot-china-sick/)

本文讲述了一位57岁的中国肾移植患者——作者的母亲，因不满医院就诊的仓促与冷漠，转而向AI聊天机器人DeepSeek寻求医疗建议的故事。在不堪重负的医疗体系中感到被忽视的她，发现DeepSeek成了一位耐心、共情且随时在线的“医生”，能为她分析检查报告并提供详细的生活与用药指导。

虽然聊天机器人给了她掌控感和关怀，但其医疗建议往往存在严重谬误。例如，它曾建议她减少免疫抑制剂的处方剂量——这一举动可能危及移植肾脏的存活。审阅对话记录的美国肾病专家指出，其建议中存在重大错误。

这个故事反映了一个更广泛的趋势：随着AI聊天机器人逐渐融入全球医疗体系，它们为缺乏资源或关注的患者提供了慰藉与信息。然而，文章也强调了将医疗咨询外包给容易产生“幻觉”和偏见的系统所带来的严重风险，并指出尽管这些工具语气令人信服且富有同理心，但绝不能替代专业医疗判断。

---

## 3. 克劳德代码每日基准测试用于退化追踪

**原文标题**: Claude Code Daily Benchmarks for Degradation Tracking

**原文链接**: [https://marginlab.ai/trackers/claude-code/](https://marginlab.ai/trackers/claude-code/)

本文介绍了一个针对Claude Code Opus 4.5在软件工程任务上的独立日常性能追踪器。其主要目标是检测统计显著的性能下降，灵感来源于Anthropic曾承认模型性能回退的过往事件。

该追踪器每日在精选的SWE-Bench-Pro子集上运行基准测试，直接使用最新的Claude Code CLI（不依赖定制框架）以反映真实用户体验。每日评估50个测试实例。

展示的关键指标包括：
*   **每日、7日及30日通过率**（当前分别为50%、53%和54%）。
*   **历史基线通过率**为58%，作为参考标准。
*   过去30天触发**“检测到性能下降”**警报，当前54%的通过率相较58%的基线存在统计显著下降。

该方法采用统计检验（95%置信区间）判定显著性。判定显著变化所需的误差范围随样本量变化：日结果需±14.0%，周结果需±5.6%，月结果需±3.4%。当前30日周期4.1%的降幅已超出阈值，证实存在显著性能回退。

---

## 4. 研究发现药物组合可阻断胰腺癌肿瘤耐药性

**原文标题**: Drug trio found to block tumour resistance in pancreatic cancer

**原文链接**: [https://www.drugtargetreview.com/news/192714/drug-trio-found-to-block-tumour-resistance-in-pancreatic-cancer/](https://www.drugtargetreview.com/news/192714/drug-trio-found-to-block-tumour-resistance-in-pancreatic-cancer/)

西班牙国家癌症研究中心的一项临床前研究发现，一种三药联合疗法能够诱导胰腺肿瘤完全且持久的消退，同时防止治疗耐药性的产生。

该研究针对胰腺导管腺癌（PDAC）——一种治疗选择有限、致死率极高的癌症。该策略同时抑制三个关键信号通路：下游KRAS信号通路（使用RMC-6236/daraxonrasib）、上游EGFR受体（使用阿法替尼）以及平行的STAT3生存通路（使用SD36）。

在原位小鼠模型中，这种联合疗法实现了肿瘤的完全消退。关键的是，治疗后超过200天未观察到肿瘤再生或耐药现象。该疗法在基因工程小鼠模型和患者来源的肿瘤异种移植模型中也显示出疗效，并且在动物体内耐受性良好。

研究人员总结认为，克服PDAC的耐药性需要这种协调的多通路联合攻击。他们指出，这些结果应指导针对胰腺癌患者的新临床试验设计，标志着向潜在新疗法迈出了重要一步。

---

## 5. OTelBench：AI在简单SRE任务中表现不佳（Opus 4.5仅获29%得分）

**原文标题**: OTelBench: AI struggles with simple SRE tasks (Opus 4.5 scores only 29%)

**原文链接**: [https://quesma.com/blog/introducing-otel-bench/](https://quesma.com/blog/introducing-otel-bench/)

该基准测试OTelBench在11种编程语言中，针对为小型微服务添加OpenTelemetry分布式追踪的23项实际任务，评估了14个AI模型。结果显示，即使是前沿模型在这一核心站点可靠性工程（SRE）任务上也表现艰难。

表现最佳的Claude 4.5 Opus成功率仅为29%，GPT 5.2为26%。值得注意的是，Gemini 3 Pro并未比更廉价的Gemini 3 Flash（19%）展现出优势。不同语言间性能差异显著：模型在Java、Ruby和Swift上完全失败，而在Go（20%）和C++（37%）中取得有限成功。

关键问题在于，许多AI生成的解决方案虽能正确编译，却产生功能错误的追踪——例如将独立的用户操作错误合并为单个追踪——这表明模型往往机械式实施插装而缺乏业务上下文理解。

研究者总结认为，尽管AI展现潜力，但当前模型仍缺乏可靠生产环境插装所需的多语言技能、长周期推理能力和深层理解。他们指出2026年AI的SRE能力被过度炒作，目前工程师仍需亲自编写这类代码。该基准测试已开源发布，以指导未来开发。

---

## 6. C++模块化已成定局。

**原文标题**: C++ Modules Are Here to Stay

**原文链接**: [https://faresbakhit.github.io/e/cpp-modules/](https://faresbakhit.github.io/e/cpp-modules/)

本文介绍了C++20模块作为传统头文件（`#include`）的现代替代方案。它阐释了模块如何通过显式导出声明，实现对库（如`std`、Qt或自定义代码）的更清晰封装，从而改善代码组织并减少编译时间。

涵盖的核心概念包括：
*   **模块单元：** 声明模块的翻译单元，可合并接口与实现。
*   **导出：** 显式将声明提供给模块使用者。
*   **分区：** 将大型模块拆分为私有的、相互依赖的单元以优化代码结构。
*   **全局模块片段：** 通过允许模块使用传统的`#include`指令实现向后兼容。

文章强调了模块带来的显著**编译速度优势**，引用了一项基准测试中相比标准编译8.6倍的加速效果。同时指出工具链支持（编译器和CMake）仍在发展中，但对许多项目（尤其是个人项目）已足够成熟。文中提供了简明的CMake配置示例和一个使用Clang实现`import std;`的实用脚本，以帮助读者快速上手。核心论点是：虽然头文件仍可工作，但模块为C++开发提供了更快速、更易维护的未来方向。

---

## 7. 欧洲新一代气象卫星传回首批图像

**原文标题**: Europe’s next-generation weather satellite sends back first images

**原文链接**: [https://www.esa.int/Applications/Observing_the_Earth/Meteorological_missions/meteosat_third_generation/Europe_s_next-generation_weather_satellite_sends_back_first_images](https://www.esa.int/Applications/Observing_the_Earth/Meteorological_missions/meteosat_third_generation/Europe_s_next-generation_weather_satellite_sends_back_first_images)

2025年11月发布的第三代气象卫星探测载荷（MTG-S）首批图像，展现了其革新欧洲和非洲天气预报的先进能力。这颗卫星运行于地球静止轨道，其红外探测仪采集了整个地球圆盘的地表/云顶温度及大气湿度详细数据。

这些初始图像突显了特定气象特征，如非洲和南美洲的温暖陆地、撒哈拉沙漠上空的干燥空气以及其他区域的湿润地带。欧洲特写图像显示了西班牙上空的天气锋面，而一段动画则追踪了埃塞俄比亚的火山灰羽流，彰显了卫星的监测潜力。

MTG-S是欧洲航天局及其合作伙伴的一项开创性任务。其核心创新在于成为欧洲首个地球静止轨道高光谱探测仪。通过1700个红外通道，它将每30分钟生成温度、湿度和痕量气体的三维大气图谱。这种前所未有的数据将显著提升天气预报的准确性和时效性，尤其有助于强风暴的临近预报。

该卫星于2025年7月发射，同时搭载了哥白尼哨兵-4号探测仪。任务控制与数据分发由欧洲气象卫星开发组织负责。

---

## 8. OpenAI的内部数据代理

**原文标题**: OpenAI's In-House Data Agent

**原文链接**: [https://openai.com/index/inside-our-in-house-data-agent](https://openai.com/index/inside-our-in-house-data-agent)

**《OpenAI内部数据代理工具概述》**

OpenAI开发了一款内部AI代理工具，旨在自动化并改进其数据标注流程，这对AI模型的训练和评估至关重要。该代理基于GPT-4构建，能够解析复杂的自然语言指令，执行多种以往依赖人工、耗时且难以规模化的数据任务。

主要要点包括：

*   **目的：** 该代理旨在解决高质量数据标注这一AI发展中的主要瓶颈，可处理数据筛选、分类、评估和标注等任务。
*   **工作原理：** 工程师向代理提供自然语言指令（例如：“标注所有助手存在欺骗性的对话”），代理随后编写并执行代码（主要是Python）来完成这些数据处理工作。
*   **影响：** 这种自动化显著加速了OpenAI的研发周期。它使得小型团队能够在数小时内而非数周内执行大规模数据项目，从而更快地进行模型训练和安全评估的迭代。
*   **人机协同：** 该系统专为协作设计。人类会审查代理生成的代码和结果，通过迭代反馈循环进行监督并优化指令，以确保质量和准确性。
*   **更广泛的意义：** OpenAI将此视为利用AI构建更好AI的一个案例研究——一个“数据飞轮”：改进的模型能创造出更好的数据处理工具，进而催生出更优秀的模型。

本质上，这篇文章详细介绍了一款利用OpenAI自身技术来优化其核心开发工作流程的内部工具，展示了AI在规模化与增强AI研究本身方面的实际应用。

---

## 9. 美国网络安全主管向ChatGPT泄露敏感政府文件：报道称

**原文标题**: US cybersecurity chief leaked sensitive government files to ChatGPT: Report

**原文链接**: [https://www.dexerto.com/entertainment/us-cybersecurity-chief-leaked-sensitive-government-files-to-chatgpt-report-3311462/](https://www.dexerto.com/entertainment/us-cybersecurity-chief-leaked-sensitive-government-files-to-chatgpt-report-3311462/)

据《政治报》调查，2025年7月，代理CISA局长马杜·戈图穆卡拉将标有“仅限官方使用”的敏感政府文件上传至公开版ChatGPT。此举触发了内部安全警报并引发联邦损害评估，因为公开版ChatGPT的输入内容会与其开发商OpenAI共享，可能造成数据泄露。

戈图穆卡拉此前获准特例使用该人工智能工具——国土安全部其他员工均被禁止使用。CISA发言人表示，其使用是“短期且有限的”，且国土安全部已实施管控措施。

该事件使戈图穆卡拉的任期受到更多审视。据报道，他此前曾未通过反情报测谎测试，但他在近期国会听证中否认了这一说法。自2025年5月起，他一直以代理身份领导CISA，等待参议院对常任局长的确认。

此报告发布之际，特朗普政府正推动人工智能在联邦机构中的广泛应用，包括五角大楼近期提出的“人工智能优先”战略，以及一项旨在限制州级人工智能监管的行政命令。

---

## 10. EmulatorJS

**原文标题**: EmulatorJS

**原文链接**: [https://github.com/EmulatorJS/EmulatorJS](https://github.com/EmulatorJS/EmulatorJS)

**概述：**

EmulatorJS 是一款自托管、开源的 JavaScript 模拟器，支持多种经典游戏系统。截至 4.0 版本，它已完全重写，主仓库不再包含模拟核心。用户必须通过项目发布版本或专用 CDN 单独获取这些核心。

主要操作要点包括：
*   **部署：** 生产环境中，建议使用官方发布版本或 CDN，而非克隆仓库。
*   **版本管理：** 采用三个独立的版本分支：**stable**（经过测试的发布版）、**latest**（最新代码搭配稳定核心）和 **nightly**（前沿但可能不稳定的构建版）。
*   **CDN：** 公共 CDN（`cdn.emulatorjs.org`）托管所有必需文件，简化了设置过程。
*   **集成：** 设计为插件形式，旨在集成到其他前端项目中，已有多个第三方实现可用。
*   **开发：** 包含本地测试工具和生产环境优化所需的代码压缩功能。

该项目支持模拟任天堂、世嘉、雅达利、康懋达、索尼 PlayStation 以及 3DO 和 MAME 等多种系统。它无广告，通过 Patreon 和可选演示页面广告获得资助，并鼓励提交详细的错误报告以协助开发。

---

## 11. 县府向评估法院安全而被捕的渗透测试者支付60万美元

**原文标题**: County pays $600k to pentesters it arrested for assessing courthouse security

**原文链接**: [https://arstechnica.com/security/2026/01/county-pays-600000-to-pentesters-it-arrested-for-assessing-courthouse-security/](https://arstechnica.com/security/2026/01/county-pays-600000-to-pentesters-it-arrested-for-assessing-courthouse-security/)

2019年，渗透测试员加里·德默库里奥和贾斯汀·温恩在对爱荷华州达拉斯县法院进行授权安全评估时被捕。他们的雇主Coalfire实验室与爱荷华州司法部门签有合同，明确允许包括开锁在内的实体安全测试。

尽管测试人员向警员出示了授权书——警员最初确认了其合法性，甚至与测试人员交谈——但警长查德·伦纳德抵达后介入此事。他坚称对该法院拥有管辖权，并以重罪盗窃罪名逮捕了两人。他们在缴纳保释金前被关押了20小时。尽管指控后来被减轻并最终撤销，伦纳德警长仍继续公开指控其非法活动，损害了这些专业人士的声誉。

德默库里奥和温恩以非法逮捕、诽谤和恶意起诉为由起诉该县及警长。就在2024年庭审即将开始前，达拉斯县同意支付60万美元和解金。测试人员认为，此事向安全专业人员发出了令人寒心的信号，通过惩罚受雇发现漏洞的人员破坏了公共安全。和解协议确认了他们的工作具有授权且合法。

---

## 12. Reflex（YC W23）高级基础设施软件工程师

**原文标题**: Reflex (YC W23) Senior Software Engineer Infra

**原文链接**: [https://www.ycombinator.com/companies/reflex/jobs/Jcwrz7A-lead-software-engineer-infra](https://www.ycombinator.com/companies/reflex/jobs/Jcwrz7A-lead-software-engineer-infra)

**职位概述：Reflex（YC W23）基础设施首席软件工程师**

Reflex正在旧金山招聘一名基础设施首席软件工程师，负责全面掌管并开发其整个基础设施技术栈。该职位要求具备3年以上经验，并精通Kubernetes、Helm、Terraform、Python和AWS。薪资范围为13万至20万美元，另加股权（0.15%-0.50%）。

**主要职责：** 领导基础设施团队，维护并改进可观测性与监控技术栈，推动技术边界。

**面试流程：** 完全远程进行，包括介绍电话、技术性带回家测试、2-3轮远程技术面试以及最终团队决策。

**关于Reflex：** 该公司提供统一的平台，用于构建、部署和管理企业应用程序，旨在取代碎片化的工具链。它结合了开源框架与托管平台。

**加入理由：** Reflex报告已取得显著进展，构建了超过100万个应用程序，GitHub星标超过28,000个，并被30%的财富500强公司使用。创始团队包括经验丰富的开源维护者和竞赛程序员，公司在最近一轮融资后正处于高速增长阶段。

---

## 13. MakuluLinux（下载量达640万次）通过开发者自有C2服务器分发持久性后门程序。

**原文标题**: MakuluLinux (6.4M Downloads) Ships Persistent Backdoor from Developer's Own C2

**原文链接**: [https://werai.ca/security-disclosure.html](https://werai.ca/security-disclosure.html)

**摘要**

安全研究人员在拥有超过640万次下载量的MakuluLinux操作系统中发现了一个关键后门。该后门并非第三方入侵所致，而是由唯一开发者Jacque Montague Raymer故意嵌入。

**主要发现：**

*   **持久性后门：** 操作系统安装程序会放置一个二进制文件（`check.bin`），该文件会创建自启动项，并与IP地址为`217.77.8.210:2006`的命令与控制（C2）服务器建立持久的、隐藏的TCP连接。
*   **与开发者关联的基础设施：** 该IP地址托管着开发者的域名（`makulu.online`），确凿地将后门与开发者自己的服务器联系起来。
*   **关键安全漏洞：** 系统使用不安全的更新机制，每五分钟就以`sudo`权限通过纯HTTP下载并执行脚本，使其易受中间人攻击。
*   **商业模式：** 分析表明，MakuluLinux充当了一个集中式AI即服务平台的中介。其40多项“AI功能”大多是瘦客户端，通过开发者的服务器代理用户数据和请求，从而可能实现数据收集和控制。
*   **即时缓解措施：** 建议用户终止后门进程、删除相关文件、屏蔽C2服务器IP/域名、禁用更新脚本、更改密码，并迁移至可信的Linux发行版。

此次披露揭示了一个作为特洛伊木马运作的操作系统，使其开发者能够未经授权远程访问和控制用户系统，同时通过隐藏的AI服务层进行牟利。

---

## 14. 苹果将很快在iOS应用中向所有Patreon创作者收取高达30%的分成。

**原文标题**: Apple to soon take up to 30% cut from all Patreon creators in iOS app

**原文链接**: [https://www.macrumors.com/2026/01/28/patreon-apple-tax/](https://www.macrumors.com/2026/01/28/patreon-apple-tax/)

苹果为Patreon设定了新的截止日期——2026年11月1日，要求其将所有创作者在iOS应用内的支付迁移至苹果的应用内购买系统。这意味着苹果将从这些交易中抽取高达30%的佣金（若订阅时长超过一年，则降至15%）。

使用该应用的Patreon创作者现在面临选择：要么为iOS用户提高订阅价格以覆盖苹果的费用，要么自行承担成本以保持价格统一。支持者若想避免苹果佣金，可直接通过Patreon网站订阅，而非使用应用内支付。

此次政策执行源于一项推迟的截止期限，苹果认为这些支付属于数字商品交易，需遵守其标准应用商店佣金规则。Patreon对苹果的做法表示失望，但该公司指出，仅有4%的创作者仍在使用受此变更影响的旧版支付系统。

---

## 15. Usenet人物

**原文标题**: Usenet personality

**原文链接**: [https://en.wikipedia.org/wiki/Usenet_personality](https://en.wikipedia.org/wiki/Usenet_personality)

这篇维基百科文章将“Usenet名人”定义为一种早期的网络红人，他们通过在Usenet网络上大量或独特的发帖而声名鹊起。这些人通常因其奇特的想法、幽默或怪异的文风、或破坏性行为在特定的网络社区中成名。

文章列举了几类典型例子：
*   **古怪的信徒：** 如数学家亚历山大·阿比安，以其“炸毁月球以阻止自然灾害”的理论闻名；以及阿基米德·钚，他提出宇宙是一个巨大的钚原子。
*   **犯罪与怪诞人物：** 包括像塞尔达尔·阿尔吉奇这样使用机器人程序否认亚美尼亚种族灭绝的人物，以及因邮件炸弹攻击被判有罪的大卫·达马托。
*   **特立独行者：** 如虚构的新手“B1FF”、自动发帖程序“Mark V Shaney”，以及平克·弗洛伊德谜题的匿名出题人“Publius”。
*   **其他名人：** 因宝贵贡献而受认可的人物，例如物理学家约翰·C·贝兹和软件企业家布拉德·坦普尔顿。

总体而言，文章将Usenet名人描绘为早期网络文化的基础部分，强调了该平台的匿名性和广泛影响力如何让富有洞见的贡献者和挑衅性的怪才都能获得一种独特的网络名声。

---

## 16. Box64扩展至RISC-V与龙芯架构领域

**原文标题**: Box64 Expands into RISC-V and LoongArch territory

**原文链接**: [https://boilingsteam.com/box64-expands-into-risc-v-and-loong-arch-territory/](https://boilingsteam.com/box64-expands-into-risc-v-and-loong-arch-territory/)

Box64版本0.4于2026年初发布，显著扩展了其x86/64指令翻译能力，支持更多CPU架构。关键进展包括正式支持龙芯公司独立研发的独特指令集架构——龙架构（LoongArch），该架构现已获得官方Linux发行版支持。此次更新还大幅增强了对RISC-V的支持，包括重构动态重编译器（Dynarec），以提升性能并改善对经典游戏的兼容性。

本次发布聚焦三大方向：更广泛的平台支持、性能优化与兼容性提升。Linux版Steam客户端首次可在RISC-V和龙架构硬件上运行。性能提升源于重写的操作码解码器、更高效的可回收内存动态缓存（DynaCache），以及实验性的NTSync机制支持，这些改进能显著提高游戏帧率。

软件兼容性方面，战网、EA App和Rockstar Launcher等主流游戏启动器支持得到改善，用于32位应用程序的内部Box32组件也更为稳定。文章指出，尽管Box64发展势头良好，但仍面临Valve支持的FEX等项目的竞争，这标志着行业正朝着减少PC游戏对传统x86硬件依赖的方向广泛转型。

---

## 17. 火焰截图

**原文标题**: Flameshot

**原文链接**: [https://github.com/flameshot-org/flameshot](https://github.com/flameshot-org/flameshot)

Flameshot是一款功能强大、开源的截图工具，适用于Linux、Windows和macOS系统，以其高级功能与易用性的平衡而著称。其核心功能包括内置标注编辑器（如箭头、文本和模糊处理）、图形界面与命令行操作，以及支持将图片上传至Imgur。

主要亮点包括可自定义外观、DBus接口以及大量高效的键盘快捷键编辑功能。文章详细介绍了在不同桌面环境（如KDE Plasma、GNOME、XFCE和Fluxbox）中配置全局快捷键（例如Print Screen）的设置步骤。

安装方式灵活多样，提供预编译包、发行版仓库包（如Arch、Debian、Fedora）、Snap/Flatpak格式包以及列明依赖项的源码编译安装。针对macOS系统，文章特别给出了安全设置解决方案，并确保系统托盘图标正常显示。

总结部分涵盖了基本使用命令、命令行配置选项、文件存储位置，以及在极简窗口管理器或Wayland环境下使用的注意事项。

---

## 18. 使用Moltworker在Cloudflare上运行Clawdbot/Moltbot

**原文标题**: Run Clawdbot/Moltbot on Cloudflare with Moltworker

**原文链接**: [https://blog.cloudflare.com/moltworker-self-hosted-ai-agent/](https://blog.cloudflare.com/moltworker-self-hosted-ai-agent/)

本文介绍了**Moltworker**——一个概念验证性适配方案，它使得流行的自托管AI智能体**Moltbot**（原名Clawdbot）能够运行在**Cloudflare开发者平台**上，而无需依赖Mac mini等本地硬件。

该解决方案的核心利用了多项Cloudflare服务：
*   **沙盒环境**：提供安全隔离的运行环境，用于执行Moltbot运行时及其集成组件，替代了对专用本地设备的需求。
*   **AI网关**：管理对接AI服务商（如Anthropic的Claude）的连接，提供集中管控、成本可视化及便捷切换模型的能力。
*   **R2对象存储**：为智能体的记忆与数据提供持久化存储，这对瞬态容器环境至关重要。
*   **浏览器渲染**：通过编程接口实现网页自动化任务（如浏览与截图），简化了在沙盒内运行浏览器的需求。
*   **零信任访问**：通过内置身份验证机制保障管理界面与API的安全性。

文章重点阐述了Cloudflare日益完善的**Node.js兼容性**及其产品套件如何使其成为复杂AI应用的可行平台。Moltworker展示了如何将这些服务组合运用，在全球边缘网络上高效安全地运行AI智能体，并具备内置可观测性与扩展性。

该项目已在GitHub开源，用户可部署自有实例，但需注意其本质是Cloudflare平台能力的展示案例，而非官方产品。

---

## 19. 打造小众解决方案才是关键所在

**原文标题**: Making niche solutions is the point

**原文链接**: [https://ntietz.com/blog/making-niche-solutions-is-the-point/](https://ntietz.com/blog/making-niche-solutions-is-the-point/)

本文认为，3D打印与软件开发的真正价值，在于能够针对具体的个人需求创造高度定制化的小众解决方案。

作者以自身3D打印经历为例，从打印通用模型转向为理疗用品设计专属收纳盒，以此凸显其核心优势：快速创造出原本不存在、却完美契合需求的定制物品。

文章进而将这一逻辑直接类比至软件工程领域——从业者同样利用可塑性媒介（代码）构建专属工具与应用。作者以自建的家庭用低维护网络应用为例，说明如何通过小众软件方案精准满足独特需求。

尽管文章承认使用现有设计或代码往往是务实之选（即“自建与购买”之辩），但其核心论点是：这两门学科的独特力量与乐趣，正源于自由创造所需之物的能力。制造小众产品并非附带效果，而是其本质意义所在。

---

## 20. 如何为你的CLI应用程序选择颜色（2023版）

**原文标题**: How to Choose Colors for Your CLI Applications (2023)

**原文链接**: [https://blog.xoria.org/terminal-colors/](https://blog.xoria.org/terminal-colors/)

本文为CLI应用程序中的颜色选择提供了一份指南，以确保在不同终端主题下的可读性。作者通过测试一套示例配色方案在多个流行终端主题（Sorcerer、macOS Terminal.app的Basic、Tango和Solarized）下的表现，展示了在一种主题中看起来不错的颜色在另一种主题中可能变得难以辨认。

主要发现包括：
*   **亮色问题突出：** 如`bryellow`和`brblue`这类颜色对比度往往较差，尤其在浅色主题中。
*   **灰度不可靠：** `white`/`brwhite`在浅色背景上难以辨认，而`black`/`brblack`在深色背景上难以辨认。
*   **Solarized是特例：** 其独特的16色调色板将几种亮色重新用于自身界面，导致使用这些颜色的CLI工具在其众多用户中显示异常。
*   **粗体文本使情况复杂化：** 由于历史遗留问题，粗体文本可能意外地呈现为亮色，进一步减少了安全选项的范围。

文章总结认为，为了最大化兼容性，开发者应将调色板限制在**32种可能的颜色和粗体组合中的仅11种**。核心建议是避免使用亮色和极端灰度，坚持使用一组有限的、非亮色的标准颜色，以确保工具能为最广泛的用户群体保持可用性。

---

## 21. 用最大的粒子加速器为家庭供暖

**原文标题**: Heating homes with the largest particle accelerator

**原文链接**: [https://home.cern/news/news/cern/heating-homes-worlds-largest-particle-accelerator](https://home.cern/news/news/cern/heating-homes-worlds-largest-particle-accelerator)

**摘要：**

欧洲核子研究中心（CERN）已开始利用其大型强子对撞机（LHC）产生的余热，为邻近的法国小镇费尔奈-伏尔泰的家庭和企业供暖。自2026年1月中旬起，一套新的热交换系统投入运行，该系统从位于小镇附近的8号点收集冷却LHC低温设备产生的热水。

该系统不再通过冷却塔将余热排入大气，而是通过两台5兆瓦的热交换器将热量输送至当地区域供热网络。预计该网络可为相当于数千户家庭供暖，从而避免使用传统燃气供暖，并每年减少数千吨二氧化碳排放。

CERN在确保不影响其科学运行的前提下，尽可能提供余热。目前，费尔奈-伏尔泰最多可使用5兆瓦热量，但当LHC全面运行时，供热能力可翻倍。即使从2026年夏季开始的计划性多年维护停机（LS3）期间，CERN也将持续提供1至5兆瓦的热量，仅会有短暂中断。

该举措是CERN更广泛的能源管理和环境战略的一部分，其中包括其他余热回收项目。预计从2027年起，这些努力每年将节省25至30吉瓦时的能源。

---

## 22. 使用Einsum进行分片计算

**原文标题**: Computing Sharding with Einsum

**原文链接**: [https://blog.ezyang.com/2026/01/computing-sharding-with-einsum/](https://blog.ezyang.com/2026/01/computing-sharding-with-einsum/)

本文介绍了如何运用爱因斯坦求和（einsum）符号作为一种快速高效的方法，用于在分布式机器学习中推理张量分片，尤其适用于矩阵乘法等操作。文章指出，虽然图示方法直观易懂，但einsum提供了一种更为简洁的方式来计算输出和梯度的分片模式。

其核心思想是将操作转化为einsum公式（例如，线性层可表示为`"bi,oi->bo"`）。作者随后基于维度是*批次*（自由）、*收缩*还是*自由*维度，提出了一套简洁的分片规则。例如，若在两个输入中同时分片收缩维度，则输出为`Partial()`，表示有待执行的全归约操作。

该方法通过两个实例展示了其实用性。首先，在**张量并行**中，分析`ColumnParallelLinear`层的反向传播过程揭示了为何输入梯度需要全归约，因为它产生了`Partial()`分片。其次，在带有缩放因子的**序列并行**中，分析表明权重梯度变为`Partial()`，同样需要全归约。这种基于einsum的方法系统性地阐明了在分布式训练的反向传播过程中何时需要通信（如全归约）。

---

## 23. 在8位摩托罗拉6809上使用深度卷积神经网络玩棋盘游戏

**原文标题**: Playing Board Games with Deep Convolutional Neural Network on 8bit Motorola 6809

**原文链接**: [https://ipsj.ixsq.nii.ac.jp/records/229345](https://ipsj.ixsq.nii.ac.jp/records/229345)

本文介绍了一项研究项目，成功在摩托罗拉6809（一款1978年推出的8位微处理器）上运行了围棋对弈深度卷积神经网络（CNN）。该工作在一台复古的Thomson MO5微型计算机上实现。

研究解决的核心挑战在于：虽然训练深度神经网络需要强大的计算能力，但其推理（执行）阶段可以针对效率进行优化。作者通过将CNN部署在资源极度受限的历史系统上，将这一思路推向了极致。实现这一成果的关键在于采用**量化**技术，该技术降低了神经网络数值参数的精度（例如从32位浮点数降至8位整数），从而大幅减少了内存和处理需求。

尽管6809 CPU存在硬件限制，但最终开发的围棋对弈程序达到了与知名基准程序**GNU Go**相当的棋力。这表明通过精细的优化和量化，复杂的深度学习模型可以在功耗极低的老旧计算设备上运行。该项目作为推动高效神经网络推理边界的一个显著范例，具有重要参考价值。

---

## 24. 网络掌握着解决一个关于波的数十年难题的关键。

**原文标题**: Networks Hold the Key to a Decades-Old Problem About Waves

**原文链接**: [https://www.quantamagazine.org/networks-hold-the-key-to-a-decades-old-problem-about-waves-20260128/](https://www.quantamagazine.org/networks-hold-the-key-to-a-decades-old-problem-about-waves-20260128/)

本文详细阐述了在解决一个关于傅里叶变换的、存在数十年的数学难题——乔拉余弦问题——方面取得的突破。该问题于1965年提出，探讨了一组简单余弦波（每个波对应一个整数集合中的整数）的和可以变得多小。尽管问题看似简单，但在20年间进展甚微。

2025年，四位数学家——金志涵、阿莱克萨·米洛耶维奇、伊斯特万·托蒙和张盛桐——取得了首次重大进展。他们的突破并非源于傅里叶分析，而是来自对一个名为最大割的图论问题的无关研究。他们开发了新技术来分析图的特征值，这些特征值衡量了图的结构特性。

数论学家伊利亚·什克雷多夫认识到，通过将乔拉问题与一种特殊类型的图（凯莱图）联系起来，他们的图论结果可以应用于乔拉问题。该团队随后证明，对于任意包含N个整数的集合，对应的余弦和必须低于-N^(1/10)。这是首次得到与乔拉原始猜想形式相符的界限（该猜想预测最小值约为-√N）。几天后，本杰明·贝德特使用传统傅里叶方法将界限略微改进至-N^(1/7)。

这一成果不仅意义重大，因为它向乔拉猜想迈进了一步，还展示了图论与傅里叶分析这两个看似独立的领域之间强大而意外的桥梁，为未来研究开辟了新途径。

---

## 25. Waymo自动驾驶出租车在圣莫尼卡一所小学附近撞伤一名儿童

**原文标题**: Waymo robotaxi hits a child near an elementary school in Santa Monica

**原文链接**: [https://techcrunch.com/2026/01/29/waymo-robotaxi-hits-a-child-near-an-elementary-school-in-santa-monica/](https://techcrunch.com/2026/01/29/waymo-robotaxi-hits-a-child-near-an-elementary-school-in-santa-monica/)

1月23日，一辆Waymo自动驾驶出租车在圣莫尼卡一所小学附近撞伤一名儿童，造成轻微伤害。Waymo表示，事故发生在学校送学时段，该儿童突然从一辆停靠的高大SUV后方闯入车道。当时自动驾驶车辆以约17英里/小时的速度行驶，虽紧急刹车，仍以6英里/小时的速度发生碰撞。

美国国家公路交通安全管理局（NHTSA）和国家运输安全委员会（NTSB）均已对此事故展开调查。NHTSA正重点核查该车辆在学校区域、儿童与交通协管员在场、以及道路存在双排停车的情况下是否采取了充分谨慎措施。

Waymo称其系统已立即识别到行人，并指出根据其内部模型测算，即便是全神贯注的人类驾驶员也可能会以约14英里/小时的更高速度撞上该儿童。公司正配合调查工作。

此次事件发生之际，Waymo正因旗下车辆在亚特兰大和奥斯汀违规超越校巴而面临多项联邦调查。

---

## 26. 《你能破解我吗：利用3DES/AES NFC中的PKO与中继攻击》

**原文标题**: Break Me If You Can: Exploiting PKO and Relay Attacks in 3DES/AES NFC

**原文链接**: [https://www.breakmeifyoucan.com/](https://www.breakmeifyoucan.com/)

这项研究揭示了广泛应用的NFC技术（如MIFARE Ultralight C/AES和NTAG 223/224 DNA）中的关键漏洞，使攻击者能够恢复加密密钥并伪造凭证。

核心问题并非密码算法本身（3DES/AES），而在于协议与部署缺陷。在通过中继攻击成功突破距离限制后，攻击者可实施**部分密钥覆写**攻击。该技术利用密钥分散存储在多个可独立写入的内存页的特性，通过对多张共享静态密钥的卡片进行部分密钥覆写，攻击者将暴力破解难度从2^112降至可行的2^28，从而实现完整密钥恢复。

影响极为严重：**非NXP兼容卡片**（约占抽样酒店门卡的34%）因随机数生成器存在缺陷，可在*单张*卡片上于一分钟内恢复密钥；**NTAG DNA**标签因缺乏完整性校验而存在风险。实际部署系统脆弱性极高，调查显示100%的系统存在内存未锁定或使用静态密钥等配置缺陷。

缓解措施包括：锁定密钥存储页、实施密钥多样化、启用完整性校验（CMAC）以及验证正品NXP芯片。对于高安全需求场景，建议迁移至MIFARE DESFire EV3。相关漏洞已负责任地披露给NXP公司，概念验证工具已公开。

---

## 27. 邮件无法送达超过500英里之外（2002年）

**原文标题**: We can’t send mail farther than 500 miles (2002)

**原文链接**: [https://web.mit.edu/jemorris/humor/500-miles](https://web.mit.edu/jemorris/humor/500-miles)

某统计部门报告了一个离奇问题：他们的电子邮件无法发送到大约520英里以外的地方。该问题始于一名顾问修补并重启了他们的服务器。

经调查，系统管理员发现了根本原因：服务器升级时意外将sendmail软件从版本8降级至版本5，却保留了新版配置文件。旧版sendmail无法解析新配置中的详细选项，导致连接超时等关键设置默认归零。

由于超时时间为零，系统会在约3毫秒后中止连接尝试。在他们高速交换网络中，连接远程服务器的限制因素变成了光速。简单计算显示，3毫秒正是光往返约560英里所需的时间，这解释了观测到的500英里限制。通过重新安装正确的sendmail版本，问题得以解决。

---

## 28. 主权科技基金投资Scala语言

**原文标题**: The Sovereign Tech Fund Invests in Scala

**原文链接**: [https://www.scala-lang.org/blog/2026/01/27/sta-invests-in-scala.html](https://www.scala-lang.org/blog/2026/01/27/sta-invests-in-scala.html)

德国公共倡议项目“主权科技基金”已向Scala编程语言投资377,300欧元，为期两年，旨在加强其长期安全性、维护性和开发者体验。Scala中心将负责协调相关工作。

此项投资将Scala认定为关键数字基础设施，该语言广泛应用于金融、公共服务和数据管道等可靠性至关重要的核心系统。

资金将支持五个关键领域：
1. 由OSTIF对Scala核心组件进行安全审计
2. 改进**scoverage**代码覆盖率工具
3. 维护标准库与核心API以保障稳定性
4. 实现核心库文档与网站的现代化升级
5. 对**sbt**构建工具进行重大更新（2.0版本），其构建定义将采用Scala 3

Scala中心强调，这项公共投资将增强生态系统的韧性与可持续性。项目进展将通过Scala博客和贡献者论坛同步发布。

---

## 29. 美食家综合征

**原文标题**: Gourmand Syndrome

**原文链接**: [https://en.wikipedia.org/wiki/Gourmand_syndrome](https://en.wikipedia.org/wiki/Gourmand_syndrome)

**美食家综合征概述**

美食家综合征是一种罕见的良性进食障碍，由特定脑区损伤引发，最常见于右额叶或颞叶、基底神经节或边缘结构。此类损伤通常由中风或外伤等事件导致。

其核心症状是在脑损伤后六至十二个月内，患者对精致、高品质食物产生全新且强烈的沉迷。这超越了单纯的享受，包含两个关键方面：饮食习惯与口味偏好的精微改变，以及强迫性、渴求驱动的成分。值得注意的是，患者通常并无食物沉迷或进食障碍的既往史。

该综合征于1997年首次被确认，被认为与调控正常进食行为的前额叶-颞叶神经回路受损有关。虽然罕见（截至2001年仅约36例记录），但它可能导致显著的生活方式改变，例如转行至食品相关领域、为美食频繁旅行以及体重大幅增加。它在生物学特征上与强迫症和成瘾性疾病有相似之处。

---

## 30. 美食家综合征

**原文标题**: Gourmand Syndrome

**原文链接**: [https://en.wikipedia.org/wiki/Gourmand_syndrome](https://en.wikipedia.org/wiki/Gourmand_syndrome)

**美食家综合征概述**

美食家综合征是一种罕见且良性的进食障碍，由脑损伤引发，通常在右额叶或颞叶受损后6至12个月内出现，常累及皮层区域、基底神经节或边缘结构。该综合征于1997年首次被识别，其特征是患者在受伤后对美食和精致食物产生一种全新的、强迫性的热衷，即使此前对食物毫无兴趣。

该综合征包含两个核心要素：一是口味偏好转向高级餐饮的改变；二是具有强迫性、渴求驱动的特征，与成瘾障碍有相似的生物学基础。据信，这是由于涉及正常进食行为的前额叶-颞叶脑回路遭到破坏所致。

截至2001年，仅记录了约36例病例。著名案例包括一名中风后转为美食评论家的政治记者，以及一名马拉松运动员转变为美食评论家，为品尝佳肴频繁旅行并体重显著增加。仅有一例儿科病例被报道，涉及一名右颞叶异常的儿童。

本质上，美食家综合征是一种神经系统疾病，脑损伤导致患者对高品质食物产生深刻而特定的痴迷，从而改变其生活方式和饮食关注点。

---

