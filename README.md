# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-04-04.md)

*最后自动更新时间: 2026-04-04 20:34:51*
## 1. Show HN：一款让你亲手打造GPU的游戏

**原文标题**: Show HN: A game where you build a GPU

**原文链接**: [https://jaso1024.com/mvidia/](https://jaso1024.com/mvidia/)

**概述：**

《Mvidia》是一款全新的浏览器模拟游戏，玩家可在其中设计并打造自己的图形处理器（GPU）。游戏的核心玩法涉及管理GPU开发的复杂流程，涵盖架构设计、组件选择、制造生产以及商业策略等多个方面。

玩家需要在技术决策（如核心数量、内存带宽和功耗）与经济因素（如生产成本、定价和市场竞争）之间取得平衡。目标是通过超越竞争对手的创新，满足模拟市场的需求，从而创建一家成功且盈利的GPU公司。

该游戏旨在以通俗易懂且引人入胜的方式，揭开半导体工程与商业领域的复杂面纱。目前可直接在网页浏览器中体验。

---

## 2. 索普威斯

**原文标题**: Sopwith

**原文链接**: [http://www.sopwith.org/](http://www.sopwith.org/)

这段简短文字并非文章，而是网站“Sopwith”的浏览器通知。核心信息是用户当前使用的网页浏览器版本过旧，无法兼容该网站基于框架技术搭建的系统。

通知主要实现两个目的：
1.  **告知用户**其浏览器缺乏必要支持，无法正常显示网站内容。
2.  **提供解决方案**：首先推荐升级浏览器以获得最佳体验，其次为无法或不愿升级的用户提供直接访问链接作为替代方案。

关键信息在于“Sopwith”网站需要更现代的浏览器，同时为用户提供了可访问的备用方案。

---

## 3. 尴尬简单的自蒸馏提升代码生成能力

**原文标题**: Embarrassingly simple self-distillation improves code generation

**原文链接**: [https://arxiv.org/abs/2604.01193](https://arxiv.org/abs/2604.01193)

**摘要**

论文《极其简单的自蒸馏提升代码生成》提出了一种无需验证器、教师模型或强化学习等外部工具的简洁方法，用于增强大语言模型（LLM）的代码生成能力。其核心技术称为“简单自蒸馏”（SSD），包含两个步骤：

1.  **生成样本**：使用特定的温度和截断设置，从模型本身采样多个代码解决方案。
2.  **微调**：将这些自生成的样本作为标准监督微调的训练数据，用于同一模型。

结果显示该方法带来了显著提升。例如，SSD将Qwen3-30B-Instruct模型在LiveCodeBench v6基准测试上的pass@1分数从42.4%提升至55.3%，且在较难问题上提升幅度最大。该方法的有效性在多种模型系列（Qwen、Llama）、不同规模（4B、8B、30B）及变体（指令、思维）上均得到了验证。

作者分析认为，SSD通过解决LLM解码中的“精确性与探索性冲突”而发挥作用。它选择性地重塑模型的词元概率分布：在需要精确输出的关键位置，抑制低概率、分散注意力的“尾部”概率；而在探索有益的上下文中，则保留有用的多样性。这使得SSD成为一种互补且有效的后训练方法，用于提升代码生成性能。

---

## 4. 微软有多少款产品被命名为“Copilot”？我逐一进行了梳理。

**原文标题**: How many products does Microsoft have named 'Copilot'? I mapped every one

**原文链接**: [https://teybannerman.com/strategy/2026/03/31/how-many-microsoft-copilot-are-there.html](https://teybannerman.com/strategy/2026/03/31/how-many-microsoft-copilot-are-there.html)

文章揭示，微软对“Copilot”品牌的使用已变得极其分散。作者因找不到一份完整的清单，亲自整理并绘制了所有使用该名称的产品，发现至少存在75个不同的项目。

这些产品涵盖各类应用程序、平台功能、一个专用键盘按键、一类笔记本电脑，甚至包括用于开发更多Copilot的开发工具。关键发现是，该名称不再指代单一特定产品，而是指向一个庞大且令人困惑的生态系统。

为说明这一点，作者创建了一个交互式可视化图表，将75多个Copilot按类别分组并展示其关联，邀请读者自行探索其中的复杂性。核心结论是，微软的品牌策略造成了显著的模糊性，即使是对科技产品较为了解的用户，也难以明确“Copilot”具体指代什么。

---

## 5. Show HN: TurboQuant-WASM – 在浏览器中实现谷歌的向量量化

**原文标题**: Show HN: TurboQuant-WASM – Google's vector quantization in the browser

**原文链接**: [https://github.com/teamchong/turboquant-wasm](https://github.com/teamchong/turboquant-wasm)

**TurboQuant-WASM** 是一款面向浏览器和 Node.js 的库，它将谷歌研究团队先进的向量量化算法引入 Web 环境。该库基于 2026 年 ICLR 论文《TurboQuant：具有接近最优失真率的在线向量量化》，能够在浏览器中直接对高维数据进行高效压缩与相似性搜索。

该库将浮点向量压缩为紧凑的二进制码（约每维度 4.5 比特，实现约 6 倍压缩比），同时保持其几何特性。核心功能包括通过 TypeScript API 进行编码、解码，以及直接在压缩数据上计算快速点积——这对于向量搜索、图像相似性匹配和 3D 高斯泼溅压缩至关重要，实时演示已展示其应用。

为追求性能，该库采用 WebAssembly（WASM）及宽松 SIMD 指令构建，要求现代浏览器（Chrome 114+、Firefox 128+、Safari 18+）或 Node.js 20+ 环境。其实现经验证可产生与原始 Zig 参考代码完全一致的比特级结果，确保准确性。该库以 npm 包形式提供，并在 MIT 许可下开源。

---

## 6. 苹果批准驱动程序，允许Nvidia外置显卡在Arm架构Mac上运行。

**原文标题**: Apple approves driver that lets Nvidia eGPUs work with Arm Macs

**原文链接**: [https://www.theverge.com/tech/907003/apple-approves-driver-that-lets-nvidia-egpus-work-with-arm-macs](https://www.theverge.com/tech/907003/apple-approves-driver-that-lets-nvidia-egpus-work-with-arm-macs)

苹果已批准Tiny Corp开发的驱动程序，使英伟达外置显卡（eGPU）能够兼容采用苹果芯片（基于Arm架构）的Mac电脑。这是一个值得关注的进展，因为多年来苹果一直未在其现代Mac产品中官方支持英伟达显卡。

不过，该驱动并非英伟达提供的简易即插即用方案。它是由Tiny Corp创建的第三方驱动程序，主要设计用于运行大语言模型（LLM），而非通用图形处理或游戏场景。用户需通过Docker自行编译驱动。

关键优势在于该驱动已获得苹果的批准和数字签名。这意味着用户无需像以往类似解决方案那样，必须禁用苹果关键的系统完整性保护（SIP）安全功能即可完成安装。

总而言之，这代表着苹果芯片Mac通过第三方驱动使用英伟达外置显卡的有限但官方认可的通道已开启，尤其适用于AI/计算任务。

---

## 7. 《粗心之人》作者被禁止发表任何关于Meta的负面言论。

**原文标题**: Author of "Careless People" banned from saying anything negative about Meta

**原文链接**: [https://www.thetimes.com/uk/technology-uk/article/sarah-wynn-williams-careless-people-meta-nrffdfpmf](https://www.thetimes.com/uk/technology-uk/article/sarah-wynn-williams-careless-people-meta-nrffdfpmf)

撰写揭露性作品《粗心之人》、指控Meta存在性骚扰和审查制度的作者莎拉·温-威廉姆斯，已被该公司通过法律手段禁止再发表任何针对该公司的负面公开言论。此项禁言令是在该书出版后实施的。

她的出版商指出，Meta试图让她噤声的做法，恰恰印证了该书的核心指控：该公司实施审查并压制批评。文章认为这一法律行动并非驳斥她的主张，反而是支持其指控的证据。

要点如下：
1.  **指控内容**：温-威廉姆斯的著作指控Meta存在职场性骚扰和内部审查。
2.  **公司回应**：Meta通过法律禁令阻止作者批评该公司。
3.  **出版商立场**：这种报复性禁言令被视作印证了书中描述的压制文化。

---

## 8. 瘟疫船

**原文标题**: Plague Ships

**原文链接**: [https://www.afloat.com.au/feature/plague-ships/](https://www.afloat.com.au/feature/plague-ships/)

本文以对“红宝石公主号”邮轮处理不当的当代事件为切入点，将现代疫情应对措施与历史经验进行对照。文章追溯了隔离措施的历史沿革，指出如今象征健康的黄旗历史上曾是疾病标志。文中详述了1347年黑死病通过瘟疫船只传入的历史，并强调系统化隔离制度于1377年在杜布罗夫尼克确立（后延长至40日，衍生出“隔离”一词）。作者特别赞扬了威尼斯早在1423年就已采用的配备玻璃窗的精密健康检查站和隔离医院。

随后作者对疾病名称政治化提出质疑，指出若将新冠肺炎称为“武汉病毒”，那么1918年大流行就该称为“堪萨斯流感”。文章解释这种H1N1病毒源自美国堪萨斯州的军营，经由一战期间军队调遣传播至全球，并批评当时各国政府未能实施社交隔离，以费城一场导致第二波更致命疫情暴发的致命公众游行作为例证。

文章核心论点是：历史为通过早期科学隔离措施遏制疫情提供了明确借鉴，而忽视这些教训——或为政治目的扭曲事实——必将带来灾难性后果。

---

## 9. 科学家观察到细胞内形成免疫信号复合体

**原文标题**: Scientists observe an immune signaling complex forming inside cells

**原文链接**: [https://news.stanford.edu/stories/2026/03/immune-response-inside-cells-inflammation-research](https://news.stanford.edu/stories/2026/03/immune-response-inside-cells-inflammation-research)

**《科学家观察到细胞内免疫信号复合体形成》摘要**

斯坦福大学研究人员取得一项重大突破，首次在活细胞内实时直接观测到一种关键免疫信号复合体的形成过程。这种被称为 **"髓样分化因子复合体（myddosome）"** 的结构是先天免疫系统的核心组件，负责在检测到细菌或病毒等威胁时启动炎症反应。

该研究由李凌寅博士领导，团队利用先进成像技术捕捉了髓样分化因子复合体的组装过程。当细胞表面受体识别入侵者时，会触发级联反应，使多个蛋白质分子聚集形成一个大型信号平台，进而激活引发炎症防御的基因。

关键发现是这些复合体并非预先组装，而是在感染时快速、动态地 **"按需形成"** 。研究人员还发现一种名为 **TASL** 的特定蛋白质在稳定复合体结构中起关键桥梁作用。若缺乏TASL，髓样分化因子复合体则无法正常组装，导致免疫信号中断。

这项研究为理解基础免疫过程提供了前所未有的视角。明确髓样分化因子复合体的精确组装机制，为治疗干预开辟了新途径。研究表明，靶向TASL等组件可能使科学家能够 **调控炎症反应**——既可增强其活性以对抗感染或癌症，也可抑制其过度活跃以治疗狼疮等自身免疫性疾病。

---

## 10. 阿尔忒弥斯二号宇航员拍摄到地球“壮观”景象

**原文标题**: Artemis II crew take “spectacular” image of Earth

**原文链接**: [https://www.bbc.com/news/articles/ce8jzr423p9o](https://www.bbc.com/news/articles/ce8jzr423p9o)

阿尔忒弥斯二号乘组在前往月球途中已行至半程，从猎户座飞船拍摄了震撼的地球新影像。这些由指挥官里德·怀斯曼拍摄的照片中，包含一张名为"你好，世界"的高清图像，展现了大西洋、大气辉光与两极的极光。

影像拍摄于乘组成功完成关键引擎点火后，此时飞船正沿轨道驶向月球背面——这是自1972年以来人类首次超越地球轨道的航行。达成这一里程碑时，飞船距地球约14.2万英里。

其他已公布照片显示了昼夜分界线（晨昏圈）以及近乎全暗状态下缀满城市灯光的地球。美国宇航局还发布了此次新影像与1972年阿波罗17号任务拍摄画面的对比图。

从佛罗里达州发射的阿尔忒弥斯二号任务，预计将于4月6日飞越月球，并于4月10日返回地球在太平洋海域溅落。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 2 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 3 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 4 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 5 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 6 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 7 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 8 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 9 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 10 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 11 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 12 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 13 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 14 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 15 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 16 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 17 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 18 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 19 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 20 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 21 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 22 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 23 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 24 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 25 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 26 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 27 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 28 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 29 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 30 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 31 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 32 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 33 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 34 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 35 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 36 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 37 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 38 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 39 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 40 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 41 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 42 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 43 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 44 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 45 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 46 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 47 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 48 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 49 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 50 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 51 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 52 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 53 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 54 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 55 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 56 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 57 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 58 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 59 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 60 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 61 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 62 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 63 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 64 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 65 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 66 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 67 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 68 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 69 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 70 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 71 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 72 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 73 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 74 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 75 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 76 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 77 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 78 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 79 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 80 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 81 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 82 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 83 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 84 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 85 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 86 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 87 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 88 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 89 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 90 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 91 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 92 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 93 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 94 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 95 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 96 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 97 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 98 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 99 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 100 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 101 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 102 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 103 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 104 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 105 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 106 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 107 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 108 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 109 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 110 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 111 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 112 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 113 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 114 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 115 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 116 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 117 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 118 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 119 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 120 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 121 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 122 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 123 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 124 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 125 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 126 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 127 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 128 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 129 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 130 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 131 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 132 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 133 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 134 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 135 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 136 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 137 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 138 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 139 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 140 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 141 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 142 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 143 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 144 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 145 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 146 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 147 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 148 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 149 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 150 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 151 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 152 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 153 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 154 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 155 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 156 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 157 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 158 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 159 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 160 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 161 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 162 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 163 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 164 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 165 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 166 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 167 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 168 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 169 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 170 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 171 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 172 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 173 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 174 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 175 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 176 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 177 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 178 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 179 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 180 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 181 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 182 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 183 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 184 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 185 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 186 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 187 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 188 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 189 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 190 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 191 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 192 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 193 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 194 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 195 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 196 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 197 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 198 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 199 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 200 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 201 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 202 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 203 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 204 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 205 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 206 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 207 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 208 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 209 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 210 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 211 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 212 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 213 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 214 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 215 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 216 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 217 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 218 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 219 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 220 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 221 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 222 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 223 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 224 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 225 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 226 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 227 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 228 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 229 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 230 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 231 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 232 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 233 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 234 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 235 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 236 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 237 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 238 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 239 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 240 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 241 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 242 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 243 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 244 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 245 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 246 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 247 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 248 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 249 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 250 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 251 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 252 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 253 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 254 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 255 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 256 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 257 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 258 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 259 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 260 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 261 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 262 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 263 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 264 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 265 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 266 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 267 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 268 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 269 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 270 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 271 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 272 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 273 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 274 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 275 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 276 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 277 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 278 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 279 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 280 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 281 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 282 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 283 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 284 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 285 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 286 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 287 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 288 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 289 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 290 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 291 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 292 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 293 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 294 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 295 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 296 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 297 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 298 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 299 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 300 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 301 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 302 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 303 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 304 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 305 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 306 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 307 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 308 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 309 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 310 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 311 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 312 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 313 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 314 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 315 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 316 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 317 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 318 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 319 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 320 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 321 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 322 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 323 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 324 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 325 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 326 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 327 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 328 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 329 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 330 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 331 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 332 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 333 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 334 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 335 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 336 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 337 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 338 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 339 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 340 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 341 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 342 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 343 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 344 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 345 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 346 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 347 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 348 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 349 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 350 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 351 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 352 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 353 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 354 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 355 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 356 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 357 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 358 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 359 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 360 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 361 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 362 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 363 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 364 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 365 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 366 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 367 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 368 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 369 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 370 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 371 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 372 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 373 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 374 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 375 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 376 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 377 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 378 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
