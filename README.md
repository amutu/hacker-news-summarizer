# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-01-29.md)

*最后自动更新时间: 2026-01-29 20:38:18*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 2 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 3 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 4 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 5 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 6 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 7 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 8 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 9 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 10 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 11 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 12 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 13 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 14 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 15 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 16 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 17 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 18 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 19 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 20 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 21 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 22 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 23 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 24 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 25 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 26 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 27 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 28 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 29 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 30 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 31 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 32 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 33 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 34 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 35 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 36 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 37 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 38 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 39 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 40 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 41 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 42 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 43 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 44 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 45 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 46 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 47 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 48 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 49 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 50 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 51 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 52 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 53 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 54 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 55 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 56 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 57 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 58 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 59 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 60 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 61 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 62 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 63 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 64 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 65 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 66 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 67 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 68 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 69 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 70 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 71 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 72 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 73 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 74 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 75 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 76 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 77 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 78 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 79 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 80 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 81 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 82 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 83 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 84 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 85 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 86 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 87 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 88 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 89 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 90 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 91 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 92 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 93 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 94 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 95 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 96 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 97 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 98 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 99 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 100 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 101 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 102 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 103 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 104 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 105 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 106 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 107 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 108 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 109 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 110 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 111 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 112 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 113 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 114 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 115 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 116 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 117 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 118 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 119 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 120 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 121 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 122 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 123 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 124 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 125 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 126 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 127 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 128 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 129 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 130 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 131 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 132 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 133 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 134 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 135 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 136 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 137 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 138 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 139 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 140 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 141 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 142 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 143 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 144 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 145 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 146 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 147 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 148 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 149 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 150 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 151 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 152 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 153 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 154 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 155 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 156 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 157 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 158 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 159 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 160 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 161 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 162 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 163 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 164 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 165 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 166 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 167 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 168 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 169 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 170 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 171 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 172 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 173 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 174 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 175 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 176 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 177 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 178 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 179 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 180 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 181 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 182 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 183 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 184 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 185 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 186 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 187 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 188 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 189 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 190 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 191 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 192 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 193 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 194 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 195 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 196 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 197 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 198 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 199 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 200 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 201 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 202 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 203 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 204 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 205 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 206 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 207 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 208 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 209 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 210 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 211 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 212 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 213 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 214 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 215 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 216 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 217 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 218 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 219 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 220 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 221 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 222 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 223 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 224 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 225 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 226 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 227 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 228 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 229 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 230 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 231 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 232 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 233 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 234 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 235 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 236 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 237 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 238 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 239 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 240 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 241 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 242 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 243 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 244 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 245 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 246 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 247 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 248 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 249 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 250 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 251 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 252 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 253 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 254 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 255 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 256 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 257 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 258 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 259 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 260 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 261 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 262 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 263 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 264 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 265 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 266 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 267 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 268 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 269 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 270 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 271 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 272 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 273 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 274 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 275 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 276 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 277 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 278 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 279 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 280 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 281 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 282 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 283 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 284 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 285 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 286 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 287 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 288 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 289 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 290 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 291 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 292 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 293 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 294 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 295 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 296 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 297 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 298 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 299 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 300 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 301 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 302 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 303 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 304 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 305 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 306 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 307 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 308 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 309 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 310 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 311 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 312 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 313 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
