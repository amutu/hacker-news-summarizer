# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-06-12.md)

*最后自动更新时间: 2026-06-12 20:32:53*
## 1. CRISPR技术可选择性摧毁癌细胞，包括“不可成药”型癌症

**原文标题**: CRISPR tech selectively shreds cancer cells, including "undruggable" cancers

**原文链接**: [https://innovativegenomics.org/news/crispr-technique-selectively-shreds-cancer-cells/](https://innovativegenomics.org/news/crispr-technique-selectively-shreds-cancer-cells/)

科学家开发出一种基于CRISPR技术的新疗法，能选择性地撕碎癌细胞DNA，包括胶质母细胞瘤这类此前“无药可医”的癌症——这是最常见且最致命的脑肿瘤。这种被称为“癌症撕碎”的方法采用改良版CRISPR-Cas9系统，专门靶向癌细胞中特有的重复DNA序列。通过锁定这些序列，该疗法能引发大规模基因组不稳定和细胞死亡，同时不伤害健康细胞。

其关键创新在于利用了癌细胞独特的基因组结构——癌细胞常含有长段重复DNA。经过编程的CRISPR系统会反复识别并切割这些序列，导致癌细胞基因组发生灾难性断裂。在胶质母细胞瘤的实验室测试及动物模型中，该技术成功消除了肿瘤并提高了存活率。

该方法为治疗缺乏特定药物靶点的难治性癌症（如多种脑肿瘤）开辟了新途径。尽管仍处于早期实验阶段，研究人员希望它最终能发展成适用于多种癌症的通用治疗平台，特别是对现有疗法耐药的癌症。下一步将进行安全性测试并优化递送系统，为潜在的人体试验做准备。

---

## 2. 我不是反向半人马

**原文标题**: I Am Not a Reverse Centaur

**原文链接**: [https://blog.miguelgrinberg.com/post/i-am-not-a-reverse-centaur](https://blog.miguelgrinberg.com/post/i-am-not-a-reverse-centaur)

**摘要：**

资深开源开发者米格尔·格林伯格反对成为“反向半人马”——即仅负责审查机器生成代码的人类。一年前，他拒绝用大语言模型写代码；如今，几乎所有不请自来的拉取请求（PR）都是大语言模型生成的劣质内容，常常无关紧要或考虑不周。这一趋势迫使他花费时间审查AI生成的代码，而他拒绝扮演这一角色。

为抵制此现象，格林伯格更新了贡献指南：贡献者必须先通过议题讨论拟议的改动，再提交PR。未经请求的PR若无真实人类参与的证明，将立即关闭。他建议依赖大语言模型的用户只需在议题中描述问题，而非浪费算力提交他会忽略的PR。

格林伯格还质疑开源是否仍有意义。他感到编程的分享乐趣已减退，因为人们正对真实编程挑战失去兴趣，转而向AI实验室付费获取机器生成的代码。他誓言要反抗人类沦为“反向半人马”的未来——机器及其亿万富翁所有者掌控一切。帖文最后号召通过捐款支持他的工作。

---

## 3. 如何在 macOS 上设置本地编码代理

**原文标题**: How to setup a local coding agent on macOS

**原文链接**: [https://ikyle.me/blog/2026/how-to-setup-a-local-coding-agent-on-macos](https://ikyle.me/blog/2026/how-to-setup-a-local-coding-agent-on-macos)

**摘要：在macOS上搭建本地编程智能体**

本文详细介绍了如何在Mac（在M1 Max、64GB内存上测试）上使用llama.cpp、Gemma 4 26B-A4B和Pi编程智能体，搭建一个快速的本地编程智能体。

**关键配置：**
- **运行时：** 使用Metal和Accelerate构建的llama.cpp。
- **主模型：** GGUF格式的Gemma 4 26B-A4B（Q4_K_XL，约16GB）。
- **速度提升：** 添加Q8 MTP草稿模型以实现推测解码。最佳结果为**72.2 tokens/秒**，使用`--spec-draft-n-max 3`（相比不使用MTP时的58.2 tk/s，提升24%）。测试了1至6个草稿token的性能。
- **多模态支持：** 加载`mmproj-BF16.gguf`投影器以支持图像/截图输入（对文本无速度影响）。
- **编程智能体：** Pi，配置为使用本地兼容OpenAI的端点（`http://127.0.0.1:8080/v1`），支持文本和图像输入。

**性能对比：**
- 在此配置下，llama.cpp + MTP（72.2 tk/s）比MLX-LM（最高45.8 tk/s）更快。
- Qwen3.6 35B-A3B被认为是更好的编程模型，但速度（约55 tk/s）慢于Gemma 4。

**最终技术栈：** llama.cpp（Metal）+ Gemma 4 26B-A4B Q4（MTP 3）+ mmproj + Pi智能体。文章包含了Gemma和Qwen两个方案的完整下载、构建及配置说明。

---

## 4. 恶意软件开发者在其间谍软件中加入了核武器和生物武器的相关文本内容。

**原文标题**: Malware developers added nuclear and biological weapons text to to their spyware

**原文链接**: [https://twitter.com/jsrailton/status/2064661778978533571](https://twitter.com/jsrailton/status/2064661778978533571)

**摘要**

安全研究员约翰·斯科特-雷尔顿报告称，恶意软件开发者已在其间谍软件代码中添加了涉及核武器和生物武器的引用。其目的是触发AI安全扫描仪的安全拒绝机制，阻止它们分析该恶意软件。

这一策略利用了以激进安全护栏编程的大型语言模型（LLM）的漏洞。当这些模型检测到敏感关键词（如大规模杀伤性武器）时，它们会完全拒绝处理代码——即使是为合法分析目的——从而有效阻止检测。这是因过度强调一阶安全而产生的一种“二阶盲点”。

斯科特-雷尔顿警告称，这是攻击者将AI安全特性武器化的早期案例。他建议，需要细致分析能力的网络安全工具可能应采用限制较少的模型，以避免此类操纵。正如Socket Security的相关文章指出的，该事件也凸显了恶意软件分析流水线中意图感知设计的重要性。

---

## 5. 《海盗：一款受席德·梅尔《海盗》启发的海战游戏》

**原文标题**: Pirates, a naval warfare game inspired by Sid Meier's Pirates

**原文链接**: [https://piwodlaiwo.github.io/pirates/](https://piwodlaiwo.github.io/pirates/)

该文章介绍了一款名为《海盗：海战》的手机海战游戏，其灵感来源于《席德·梅尔的海盗！》。玩家将指挥海盗船与船员，在公海上展开实时战术对决。核心特色包括：

- **船只管理**：玩家可升级并自定义船只，更换不同火炮、风帆与船体。
- **船员机制**：管理船员士气与技能（如炮术、航海术）将影响作战表现。
- **实时战斗**：海战需运用战术机动、利用风向，并瞄准侧舷炮击以重创敌船。
- **掠夺与成长**：获胜可获取金币、资源与战利品，用于升级船只及招募更精锐的船员。
- **多样化敌人**：对手包括敌对海盗、海军巡逻队及商船，各自拥有独特战术。

游戏聚焦于短小精悍的激烈海战，而非开放世界探索，为移动平台打造精简体验。其强调战术深度、船只定制，以及经典的掠夺与征服海盗主题。

---

## 6. 基于阅读方式变化的PDF文档

**原文标题**: A PDF that changes based on how its read

**原文链接**: [https://sgaud.com/texts/pdf](https://sgaud.com/texts/pdf)

文章介绍了一种创建“自适应PDF”的技术，这类PDF在视觉上呈现给人类，但向机器展示结构化标记语言。作者利用了PDF规范中自1.4版本起支持的“标记内容替换文本”特性。通常，该功能可让“fi”等连字字形提取为两个字符，但作者将其应用于文档层级，用Markdown文本（标题、表格、项目符号）替换整个内容流序列。

关键成果：单个PDF文件在任何阅读器（预览、Adobe）中外观相同，但PyMuPDF等文本提取工具会返回干净的Markdown，而非缺乏层次结构的原始零散文本。基准测试显示，令牌数量保持相近，但结构提升了机器可读性。通过ChatGPT和Claude的测试证实，它们能从智能PDF中提取出Markdown。

其优势包括无需维护两个文档版本、文件大小仅增加个位数百分比的开销，以及提升LLM处理的清晰度。作者正在探索开发Google Docs扩展，并在GitHub（iminoaru/adaptivepdf）上提供代码。该技术有效创建了能根据人类或机器阅读而调整输出的文档。

---

## 7. 稍微降低AI生成前端代码的粗糙程度

**原文标题**: Slightly reducing the sloppiness of AI generated front end

**原文链接**: [https://envs.net/~volpe/blog/posts/reduce-slop.html](https://envs.net/~volpe/blog/posts/reduce-slop.html)

**摘要：** 作者自称“无品味之人”，尝试探讨如何减少AI生成前端界面中的“随意感”。他们发现，AI生成的网页常带有一种千篇一律、缺乏吸引力的“廉价感”，即便模仿特定设计风格也依然存在。通过使用AI代理（Codex CLI中的GPT-5.5-thinking模型）尝试不同视觉风格后，一种方法脱颖而出：直接要求AI将界面设计成**Qt应用程序**（经典桌面GUI框架）的外观。这一简单指令几乎完全消除了作者感受中的“廉价感”。他们将这种“Qt风格”应用于多个个人软件项目，发现视觉效果显著提升。文章带有主观色彩，作者欢迎反馈，但认为这一技巧或许能为非设计人员提供一条实用捷径，既快速生成美观的前端界面，又摆脱典型的AI廉价感。

---

## 8. 执法部门的“战士”问题（2015）

**原文标题**: Law Enforcement's "Warrior" Problem (2015)

**原文链接**: [https://harvardlawreview.org/forum/vol-128/law-enforcements-warrior-problem/](https://harvardlawreview.org/forum/vol-128/law-enforcements-warrior-problem/)

**摘要：** 本文认为，执法部门采纳“战士心态”已损害警民关系并引发不必要的暴力。这种最初旨在应对生命威胁情境的生存型思维，现已演变为对所有互动采取过度警觉的态度，使警员将每位平民视为潜在的致命威胁。这滋生了恐惧，削弱了社区警务，并激起了本可避免的冲突。

作者建议用“守护者”的隐喻取代“战士”定位，强调以服务、合作与长期关系取代命令与控制。文中提出两项切实可行的培训改革：1）**要求非执法接触**——新警员须在不采取执法行动（不查验身份、不开罚单、不逮捕）的情况下与平民互动，以建立信任与沟通技巧。2）**强调战术克制**——教导警员尽可能规避风险、缓和局势，并在无须使用武力时保持原位或撤退。这种方法通过减少暴力冲突的可能性，将警员与平民的危险降至最低。文章主张，这些改革虽非全新举措，却能通过优先考虑合法性、公平性与自我克制（而非激进控制）来提升公共安全与信任。

---

## 9. 推出 HN：BitBoard（YC P25）——AI 代理分析工作区

**原文标题**: Launch HN: BitBoard (YC P25) – Analytics Workspace for Agents

**原文链接**: [https://bitboard.work/](https://bitboard.work/)

**《Launch HN：BitBoard（YC P25）——智能体分析工作台》摘要**

BitBoard 是一个全新的分析工作台，旨在无缝集成各类 AI 工具，包括聊天界面与编码智能体。其核心价值在于将分析从临时的、孤立的聊天线程转变为持久的、互联的资产。

关键要点：
- **AI 集成**：用户可直接通过偏好的 AI 聊天工具或编码智能体生成仪表盘并执行分析，从而充分利用现有工作流程。
- **互联资产**：BitBoard 不会让洞察丢失在一次性对话中，而是将分析输出转化为可持久保存、可共享且相互关联的资源（如仪表盘和报告），支持反复查看、优化及引用。
- **工作台理念**：它作为分析专用环境，弥合了 AI 生成洞察与长期商业智能之间的鸿沟。

BitBoard 解决了分析成果被禁锢于瞬时 AI 聊天会话这一常见问题，为数据驱动决策提供了更具结构化与协作性的方案。

---

## 10. 地球的海洋从何而来？也许是它自己创造的

**原文标题**: Where Did Earth Get Its Oceans? Maybe It Made Them Itself

**原文链接**: [https://www.quantamagazine.org/where-did-earth-get-its-oceans-maybe-it-made-them-itself-20260612/](https://www.quantamagazine.org/where-did-earth-get-its-oceans-maybe-it-made-them-itself-20260612/)

**摘要：**

本文探讨了关于地球海洋起源的持续科学争论。起初，彗星是主流理论，但乔托号和罗塞塔号等任务发现彗星水的氘氢比与地球不同，导致彗星理论失宠。随后小行星成为首选来源，温奇科姆陨石和龙宫小行星等样本显示了与地球相似的氘氢比。然而，稀有气体比例的不匹配以及对备受争议的后期重轰击的依赖，使这一理论仍不完整。

一项新假说认为地球可能自身产生了大部分水。使用金刚石砧和激光模拟早期地球条件的实验室实验表明，高压氢与岩浆海洋反应可生成大量水——其水量可能比原先预测的多1000倍。这一自生成模型得到系外行星观测的支持，但其对地球质量行星的适用性仍不确定。

文章总结称，没有任何单一来源是决定性的。近期研究通过重新分析过往数据，在哈特利2号和12P/庞斯-布鲁克斯彗星中发现了类似地球的氘氢比，从而复兴了彗星理论。科学家现在怀疑地球的水可能来自彗星、小行星和内部地质过程的共同作用，这使得海洋起源成为一个复杂且仍未解开的谜题。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 2 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 3 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 4 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 5 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 6 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 7 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 8 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 9 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 10 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 11 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 12 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 13 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 14 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 15 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 16 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 17 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 18 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 19 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 20 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 21 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 22 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 23 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 24 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 25 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 26 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 27 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 28 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 29 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 30 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 31 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 32 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 33 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 34 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 35 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 36 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 37 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 38 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 39 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 40 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 41 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 42 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 43 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 44 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 45 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 46 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 47 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 48 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 49 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 50 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 51 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 52 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 53 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 54 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 55 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 56 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 57 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 58 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 59 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 60 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 61 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 62 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 63 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 64 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 65 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 66 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 67 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 68 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 69 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 70 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 71 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 72 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 73 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 74 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 75 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 76 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 77 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 78 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 79 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 80 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 81 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 82 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 83 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 84 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 85 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 86 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 87 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 88 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 89 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 90 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 91 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 92 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 93 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 94 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 95 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 96 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 97 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 98 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 99 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 100 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 101 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 102 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 103 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 104 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 105 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 106 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 107 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 108 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 109 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 110 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 111 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 112 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 113 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 114 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 115 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 116 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 117 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 118 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 119 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 120 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 121 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 122 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 123 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 124 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 125 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 126 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 127 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 128 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 129 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 130 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 131 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 132 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 133 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 134 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 135 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 136 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 137 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 138 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 139 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 140 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 141 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 142 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 143 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 144 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 145 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 146 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 147 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 148 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 149 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 150 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 151 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 152 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 153 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 154 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 155 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 156 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 157 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 158 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 159 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 160 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 161 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 162 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 163 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 164 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 165 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 166 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 167 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 168 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 169 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 170 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 171 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 172 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 173 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 174 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 175 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 176 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 177 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 178 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 179 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 180 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 181 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 182 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 183 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 184 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 185 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 186 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 187 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 188 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 189 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 190 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 191 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 192 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 193 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 194 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 195 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 196 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 197 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 198 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 199 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 200 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 201 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 202 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 203 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 204 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 205 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 206 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 207 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 208 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 209 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 210 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 211 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 212 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 213 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 214 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 215 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 216 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 217 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 218 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 219 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 220 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 221 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 222 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 223 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 224 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 225 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 226 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 227 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 228 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 229 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 230 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 231 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 232 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 233 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 234 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 235 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 236 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 237 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 238 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 239 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 240 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 241 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 242 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 243 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 244 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 245 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 246 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 247 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 248 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 249 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 250 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 251 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 252 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 253 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 254 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 255 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 256 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 257 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 258 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 259 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 260 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 261 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 262 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 263 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 264 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 265 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 266 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 267 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 268 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 269 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 270 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 271 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 272 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 273 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 274 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 275 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 276 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 277 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 278 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 279 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 280 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 281 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 282 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 283 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 284 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 285 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 286 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 287 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 288 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 289 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 290 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 291 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 292 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 293 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 294 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 295 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 296 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 297 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 298 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 299 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 300 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 301 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 302 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 303 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 304 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 305 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 306 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 307 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 308 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 309 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 310 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 311 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 312 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 313 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 314 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 315 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 316 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 317 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 318 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 319 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 320 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 321 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 322 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 323 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 324 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 325 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 326 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 327 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 328 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 329 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 330 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 331 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 332 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 333 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 334 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 335 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 336 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 337 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 338 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 339 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 340 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 341 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 342 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 343 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 344 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 345 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 346 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 347 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 348 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 349 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 350 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 351 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 352 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 353 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 354 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 355 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 356 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 357 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 358 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 359 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 360 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 361 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 362 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 363 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 364 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 365 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 366 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 367 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 368 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 369 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 370 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 371 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 372 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 373 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 374 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 375 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 376 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 377 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 378 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 379 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 380 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 381 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 382 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 383 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 384 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 385 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 386 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 387 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 388 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 389 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 390 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 391 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 392 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 393 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 394 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 395 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 396 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 397 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 398 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 399 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 400 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 401 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 402 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 403 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 404 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 405 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 406 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 407 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 408 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 409 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 410 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 411 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 412 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 413 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 414 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 415 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 416 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 417 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 418 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 419 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 420 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 421 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 422 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 423 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 424 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 425 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 426 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 427 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 428 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 429 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 430 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 431 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 432 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 433 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 434 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 435 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 436 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 437 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 438 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 439 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 440 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 441 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 442 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 443 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 444 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 445 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 446 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 447 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
