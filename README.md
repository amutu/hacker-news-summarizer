# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-09-09.md)

*最后自动更新时间: 2026-09-09 04:57:33*
## 1. 英国机场因空管故障取消数百架航班

**原文标题**: 100s of flights cancelled at UK airports due to ATC issue

**原文链接**: [https://www.bbc.com/news/live/c6x2z0yy32ejt](https://www.bbc.com/news/live/c6x2z0yy32ejt)

受英国国家空中交通管制服务（Nats）系统故障影响，英国多个机场当日有数百架航班被迫取消。东米德兰兹机场与同属曼彻斯特机场集团的曼彻斯特机场均于当地时间20:20发布联合声明，确认当天早些时候的Nats系统问题已得到修复，但仍预计航班延误将在当日剩余时间内持续。两机场同时表示，次日将全面恢复正常运营，执行完整航班计划。此次事件反映出英国航空网络对空管系统的高度依赖，一次短暂的系统中断即引发大规模航班连锁取消与延误。

---

## 2. Google DeepMind 发布 AlphaGenome 图谱

**原文标题**: Google DeepMind Releases AlphaGenome Atlas

**原文链接**: [https://blog.google/innovation-and-ai/models-and-research/google-deepmind/alphagenome-atlas/](https://blog.google/innovation-and-ai/models-and-research/google-deepmind/alphagenome-atlas/)

2026年9月，Google DeepMind推出AlphaGenome Atlas，这是迄今最全面的人类DNA基因变异影响图谱。该数据库依托AlphaGenome AI模型，预先计算了人类基因组中全部90亿个单核苷酸变异的调控影响，生成规模达1PB的数据集，覆盖已知的2%编码区与98%非编码区。为简化使用，Atlas推出AVI（变异影响）评分，将编码与非编码区域预测整合为单一指标，帮助研究者快速筛选高价值方向。应用层面，Broad Institute借助AVI分数锁定DNM1基因中导致异常剪接位点的关键变异，成功攻克一例罕见病；英国生物银行5.4万参与者数据分析显示，该方法额外发现22%的非编码遗传关联，并定位19个与体质指数相关的遗传区域。Atlas已通过直观网站门户面向全球免费开放，无需编程技能即可查询，旨在降低门槛、加速基因组学发现。

---

## 3. Muse：Meta 个人 AI 智能体——功能与能力

**原文标题**: Muse: Meta's personal AI agent, features and capabilities

**原文链接**: [https://ai.meta.com/muse/](https://ai.meta.com/muse/)

无法访问该文章链接

---

## 4. DaVinci Resolve 21.1 版本发布

**原文标题**: DaVinci Resolve 21.1

**原文链接**: [https://www.blackmagicdesign.com/media/release/20260908-03](https://www.blackmagicdesign.com/media/release/20260908-03)

本文是 Blackmagic Design（黑魔术设计）公司媒体栏目中关于 DaVinci Resolve 21.1 版本的资讯页面。DaVinci Resolve 是该公司推出的一体化专业后期制作软件，集成视频剪辑、色彩调色、音频后期及视觉特效等核心功能，广泛应用于电影、电视及影视工业领域。21.1 作为该软件的阶段性更新版本，通常涵盖性能优化、新功能引入及系统兼容性改进等内容。该页面归属于 Blackmagic Design 官网"Media"媒体板块，主要用于发布产品更新公告与相关新闻动态。受原文信息篇幅所限，本次更新的具体功能细节与技术支持要点未在此处进一步展开。

---

## 5. Qwen3.8 27B 量化基准实测：4-bit 稳如磐石，1-bit 彻底崩溃

**原文标题**: Benchmarking Qwen3.8 27B quantizations: 4-bit holds up, 1-bit collapses

**原文链接**: [https://quesma.com/blog/qwen38-27b-quantizations-benchmarked/](https://quesma.com/blog/qwen38-27b-quantizations-benchmarked/)

本文对 Qwen3.8 27B 四种 Unsloth 量化版本（8-bit/29GB、4-bit/17GB、2-bit/10.7GB、1-bit/6.2GB）在 GPQA Diamond、IFBench 及 Terminal-Bench 2.1 等基准上进行了系统对比。核心发现：4-bit（Q4_K_M，17GB）在三项基准上与 BF16 全精度（55GB）表现持平，可装入 RTX 4090（24GB）并保留约 64k token 上下文；2-bit 在指令遵循等任务上仍可用，但科学推理与编程出现明显下降；1-bit 则彻底崩塌，得分接近甚至低于随机猜测，且增加推理深度反而导致更多空答案。作者指出量化损伤呈非线性特征——从无损到骤降之间存在一个"悬崖"。测试在 Modal 云端 GPU 上完成，总花费约 3000 美元。结论：本地部署应选能装入显存的最大量化版本，4-bit 通常足以满足绝大多数需求，量化值得拥抱而非畏惧。

---

## 6. 论纳维-斯托克斯方程千禧年数学难题

**原文标题**: On the Navier–Stokes Millennium Prize Problem

**原文链接**: [https://openai.com/index/navier-stokes-solution/](https://openai.com/index/navier-stokes-solution/)

无法访问该文章链接。

---

## 7. Show HN：大语言模型注意力机制可视化

**原文标题**: Show HN: LLM Attention Visualization

**原文链接**: [https://ishamf.dev/p/llm-attention-visualizer/](https://ishamf.dev/p/llm-attention-visualizer/)

本文介绍了一个基于Web的LLM注意力机制可视化工具，用户可点击或悬停生成文本中的任意token，查看影响其生成的历史token。可视化将注意力权重乘以value向量幅值，跨注意力头聚合、跨层求和后，用透明度表示影响强弱。文章展示了若干有趣现象：复制地址、日期时注意力集中在源数据上；仅6亿参数的模型能近乎完整复现一段JS函数；"remain"一词同时汲取"work"与"stay the same"的信息，体现跨短语融合。作者借此解答了LLM为何能精准"复制粘贴"的疑问——因可回溯全部历史token并选择性取用，出错概率极低。技术实现上，作者基于React与Transformers.js构建前端，但需自行编写生成循环以获取中间数据；又因WASM下运行的ONNX模型无法直接访问非预定义输出，作者通过脚本修改ONNX文件暴露内部值，并上传"插桩"后的模型至Hugging Face。为免用户等待下载，示例均采用预生成方案，代码已开源。

---

## 8. i-have-adhd：让编程助手直给答案、拒绝废话

**原文标题**: I-have-ADHD: A skill to stop coding agents from burying the answer

**原文链接**: [https://github.com/ayghri/i-have-adhd](https://github.com/ayghri/i-have-adhd)

i-have-adhd 是一款面向编程助手（如 Claude Code）的技能插件，旨在输出 ADHD 友好型回答，无需真实诊断。它解决的核心痛点是 AI 助手惯以"好问题！""希望有帮助"等寒暄开头，将关键操作淹没在冗长叙述中。安装后助手遵循十条规则：行动优先、多步骤编号、每轮仅留一个明确下一步、禁止跑题、每轮重申当前状态、时间估算精确到分钟、突出已完成事项、客观陈述错误、列表上限五项、彻底删除寒暄与客套结尾。项目附有安装前后对话对比：安装前是长篇解释加"顺便一提"，安装后直接给出命令与文件行号。灵感源自《成人 ADHD 工具书》（Ramsay 与 Rostain 著），但将理念从人类日常调整为 LLM 响应规范。支持 GitHub 一键安装、复制提示词快捷部署，或 Fork 后编辑 SKILL.md 自定义规则。采用 MIT 协议，已适配中、英、日、韩、泰等七种语言。

---

## 9. 拥有放射性旋翼的直升机

**原文标题**: The Helicopter with Radioactive Blades

**原文链接**: [https://hackaday.com/2026/09/07/the-helicopter-with-radioactive-blades/](https://hackaday.com/2026/09/07/the-helicopter-with-radioactive-blades/)

CH-53"海上种马"重型直升机1966年服役，其六至七片巨型旋翼承受极高载荷，叶片裂纹检测至关重要。早期主梁为挤压铝，后续型号改用冷成型钛合金，但均面临微小裂纹难以及时发现的风险。地面检测上，叶片以氮气密封加压，裂纹致气体泄漏，外置气压指示器即可目视判断。然而飞行中需实时预警，而当时电子元件尚不可靠，在旋转桨叶上装无线传感器或经滑环布线均不现实。工程师最终采用IBIS（飞行中叶片监测系统）：在气压指示器中嵌入微量放射性锶-90（β粒子发射体），由机舱内盖革计数器探测信号，叶片一旦漏压即刻触发警报。该方案无需电池或电子设备置于旋转部件，以纯机械方式破解难题，极为巧妙。时至今日，老型号仍沿用这一"核方案"，而采用全复合材料机翼的新型号则改用光纤进行故障检测。

---

## 10. GCC 嵌套函数的实现机制（与 C++ Lambda 对比）

**原文标题**: Implementation of GCC's Nested Functions (vs. C++ Lambdas)

**原文链接**: [https://uecker.codeberg.page/2026-09-05.html](https://uecker.codeberg.page/2026-09-05.html)

本文介绍了GCC嵌套函数的实现原理，并将其与C++ Lambda进行对比。GCC在编译前端早期将嵌套函数降低为普通函数：收集父函数中被子函数访问的所有变量，合成一个结构体（frame），将指向该结构体的指针作为隐藏参数传递给子函数，父函数变量的访问被重写为对该结构体成员的访问。此方法将嵌套函数与编译器其余部分解耦，通用优化器可像处理普通结构一样对其进行优化；多层嵌套时，frame中包含指向上一层的指针，形成链式结构。与C++ Lambda相比，语言层面存在差异：嵌套函数是有名函数定义，类型为普通函数指针；Lambda是匿名表达式，类型为不可命名的Voldemort类型。但实现机制本质相似——均将捕获变量封装入结构体或可调用对象。关键区别在于：GCC为同一父函数中所有嵌套函数共享同一个frame结构体，C++则为每个Lambda各创建独立的可调用对象。结论是，GCC嵌套函数在语义上仅为C++ Lambda的子集，已支持Lambda的编译器完全可以基于现有机制实现该功能。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 2 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 3 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 4 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 5 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 6 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 7 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 8 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 9 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 10 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 11 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 12 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 13 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 14 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 15 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 16 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 17 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 18 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 19 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 20 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 21 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 22 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 23 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 24 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 25 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 26 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 27 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 28 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 29 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 30 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 31 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 32 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 33 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 34 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 35 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 36 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 37 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 38 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 39 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 40 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 41 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 42 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 43 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 44 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 45 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 46 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 47 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 48 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 49 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 50 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 51 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 52 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 53 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 54 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 55 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 56 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 57 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 58 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 59 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 60 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 61 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 62 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 63 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 64 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 65 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 66 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 67 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 68 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 69 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 70 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 71 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 72 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 73 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 74 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 75 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 76 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 77 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 78 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 79 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 80 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 81 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 82 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 83 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 84 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 85 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 86 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 87 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 88 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 89 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 90 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 91 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 92 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 93 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 94 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 95 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 96 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 97 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 98 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 99 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 100 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 101 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 102 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 103 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 104 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 105 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 106 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 107 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 108 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 109 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 110 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 111 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 112 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 113 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 114 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 115 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 116 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 117 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 118 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 119 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 120 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 121 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 122 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 123 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 124 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 125 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 126 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 127 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 128 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 129 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 130 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 131 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 132 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 133 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 134 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 135 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 136 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 137 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 138 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 139 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 140 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 141 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 142 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 143 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 144 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 145 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 146 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 147 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 148 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 149 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 150 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 151 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 152 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 153 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 154 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 155 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 156 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 157 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 158 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 159 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 160 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 161 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 162 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 163 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 164 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 165 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 166 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 167 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 168 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 169 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 170 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 171 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 172 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 173 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 174 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 175 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 176 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 177 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 178 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 179 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 180 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 181 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 182 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 183 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 184 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 185 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 186 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 187 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 188 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 189 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 190 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 191 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 192 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 193 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 194 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 195 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 196 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 197 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 198 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 199 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 200 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 201 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 202 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 203 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 204 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 205 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 206 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 207 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 208 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 209 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 210 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 211 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 212 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 213 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 214 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 215 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 216 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 217 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 218 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 219 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 220 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 221 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 222 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 223 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 224 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 225 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 226 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 227 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 228 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 229 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 230 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 231 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 232 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 233 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 234 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 235 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 236 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 237 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 238 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 239 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 240 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 241 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 242 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 243 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 244 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 245 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 246 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 247 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 248 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 249 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 250 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 251 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 252 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 253 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 254 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 255 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 256 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 257 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 258 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 259 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 260 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 261 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 262 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 263 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 264 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 265 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 266 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 267 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 268 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 269 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 270 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 271 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 272 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 273 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 274 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 275 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 276 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 277 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 278 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 279 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 280 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 281 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 282 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 283 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 284 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 285 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 286 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 287 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 288 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 289 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 290 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 291 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 292 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 293 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 294 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 295 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 296 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 297 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 298 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 299 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 300 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 301 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 302 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 303 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 304 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 305 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 306 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 307 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 308 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 309 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 310 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 311 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 312 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 313 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 314 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 315 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 316 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 317 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 318 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 319 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 320 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 321 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 322 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 323 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 324 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 325 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 326 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 327 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 328 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 329 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 330 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 331 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 332 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 333 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 334 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 335 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 336 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 337 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 338 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 339 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 340 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 341 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 342 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 343 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 344 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 345 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 346 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 347 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 348 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 349 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 350 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 351 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 352 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 353 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 354 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 355 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 356 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 357 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 358 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 359 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 360 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 361 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 362 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 363 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 364 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 365 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 366 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 367 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 368 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 369 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 370 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 371 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 372 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 373 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 374 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 375 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 376 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 377 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 378 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 379 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 380 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 381 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 382 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 383 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 384 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 385 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 386 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 387 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 388 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 389 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 390 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 391 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 392 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 393 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 394 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 395 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 396 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 397 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 398 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 399 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 400 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 401 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 402 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 403 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 404 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 405 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 406 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 407 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 408 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 409 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 410 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 411 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 412 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 413 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 414 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 415 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 416 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 417 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 418 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 419 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 420 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 421 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 422 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 423 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 424 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 425 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 426 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 427 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 428 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 429 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 430 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 431 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 432 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 433 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 434 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 435 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 436 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 437 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 438 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 439 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 440 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 441 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 442 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 443 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 444 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 445 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 446 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 447 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 448 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 449 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 450 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 451 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 452 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 453 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 454 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 455 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 456 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 457 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 458 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 459 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 460 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 461 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 462 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 463 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 464 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 465 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 466 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 467 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 468 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 469 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 470 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 471 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 472 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 473 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 474 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 475 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 476 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 477 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 478 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 479 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 480 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 481 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 482 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 483 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 484 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 485 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 486 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 487 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 488 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 489 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 490 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 491 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 492 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 493 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 494 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 495 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 496 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 497 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 498 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 499 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 500 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 501 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 502 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 503 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 504 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 505 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 506 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 507 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 508 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 509 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 510 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 511 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 512 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 513 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 514 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 515 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 516 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 517 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 518 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 519 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 520 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 521 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 522 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 523 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 524 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 525 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 526 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 527 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 528 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 529 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 530 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 531 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 532 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 533 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 534 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
