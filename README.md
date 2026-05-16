# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-05-16.md)

*最后自动更新时间: 2026-05-16 20:32:12*
## 1. 铠侠与戴尔将10 PB容量塞进纤薄2RU服务器

**原文标题**: Kioxia and Dell cram 10 PB into slim 2RU server

**原文链接**: [https://www.blocksandfiles.com/flash/2026/05/14/kioxia-and-dell-cram-10-pb-into-slim-2ru-server/5240574](https://www.blocksandfiles.com/flash/2026/05/14/kioxia-and-dell-cram-10-pb-into-slim-2ru-server/5240574)

**摘要：**

铠侠与戴尔合作打造了一款高密度全闪存存储服务器——戴尔PowerEdge R7725xd，在纤薄的2U外形中容纳了9.8 PB的存储容量。这一成果通过集成40块铠侠LC9 QLC固态硬盘实现，每块硬盘采用E3.L规格，容量达245.76 TB。该服务器搭载AMD EPYC 9005系列处理器，并支持最多五个400 Gbps网卡以实现快速数据传输。

双方高管强调了其优势：戴尔的Arun Narayanan指出，该方案提升了存储密度和能效，有助于扩展AI基础设施；铠侠的Neville Ichhaporia则表示，该产品能以更小占用部署海量数据摄取流并扩展数据湖，从而改善总体拥有成本。理论上，单机柜可容纳20台此类服务器，存储容量可达196 PB。

文章还指出，美光、闪迪、SK海力士（及其子公司Solidigm）和三星等其他制造商正在开发或计划推出类似的高容量硬盘。三星未来的近线级固态硬盘被视为潜在的机械硬盘杀手，其产品路线图指向1 PB容量的硬盘。

---

## 2. Windows 9x Linux 子系统

**原文标题**: Windows 9x Subsystem for Linux

**原文链接**: [https://codeberg.org/hails/wsl9x](https://codeberg.org/hails/wsl9x)

无法访问文章链接。

---

## 3. SANA-WM：一款2.6B参数的开源世界模型，可生成1分钟720p视频

**原文标题**: SANA-WM, a 2.6B open-source world model for 1-minute 720p video

**原文链接**: [https://nvlabs.github.io/Sana/WM/](https://nvlabs.github.io/Sana/WM/)

**SANA-WM 简介**

SANA-WM 是一款拥有26亿参数的开源世界模型，旨在生成720p分辨率的高质量、时长一分钟的视频。其关键创新在于，无需巨大计算成本即可实现高效的长时视频生成。

该模型采用**稀疏注意力机制**，结合**3D-VAE（变分自编码器）**与**DiT（扩散Transformer）**架构。这种稀疏方法降低了计算复杂度，使其能够处理长序列（30帧/秒下最长30秒），并保持时间一致性。

SANA-WM支持**端到端视频生成**以及基于输入帧的**视频续写**。在维持长时物体恒存与运动连贯性方面（这是基于扩散模型的一个公认难题），它表现出了强大的性能。该模型在多样化数据集上训练，能够生成逼真及风格化的视频。

通过开源发布SANA-WM，开发者旨在让研究和创意应用能够更广泛地使用先进的世界建模技术，助力模拟、视频编辑及自动驾驶场景生成等任务。这标志着在消费级硬件上实现实用、实时的世界模拟迈出了重要一步。

---

## 4. 《加速》（2005）

**原文标题**: Accelerando (2005)

**原文链接**: [https://www.antipope.org/charlie/blog-static/fiction/accelerando/accelerando.html](https://www.antipope.org/charlie/blog-static/fiction/accelerando/accelerando.html)

无法访问文章链接。所提供的网址指向antipope.org上的特定页面，但该网站的架构可能阻止直接文本提取，或内容位于动态界面之后。

---

## 5. 澳大利亚青少年团队让乡村学校负担得起射电天文学

**原文标题**: An australian teen team is making radio astronomy affordable for rural schools

**原文链接**: [https://mag.openrockets.com/p/how-an-australian-teen-team-is-making-radio-astronomy-affordable-for-rural-schools-4894opuisyhfdisubgi/?b=2](https://mag.openrockets.com/p/how-an-australian-teen-team-is-making-radio-astronomy-affordable-for-rural-schools-4894opuisyhfdisubgi/?b=2)

无法访问文章链接。

---

## 6. 告别Tailwind，学习如何构建我的CSS

**原文标题**: Moving away from Tailwind, and learning to structure my CSS

**原文链接**: [https://jvns.ca/blog/2026/05/15/moving-away-from-tailwind--and-learning-to-structure-my-css-/](https://jvns.ca/blog/2026/05/15/moving-away-from-tailwind--and-learning-to-structure-my-css-/)

作者在使用Tailwind CSS八年后迁移至原生CSS，认为这一过程既有趣又富有教育意义。他们意识到Tailwind教会了他们组织CSS的宝贵方法论，如今正手动复现这些实践。

核心要点包括：
- **重置样式：** 复制了Tailwind的预检样式（如`box-sizing: border-box`）。
- **组件化：** CSS按组件组织，每个组件拥有独立类名与专属文件，避免跨组件干扰。
- **颜色与字号：** 定义为CSS变量（如`--pink`、`--size-lg`），保持全站视觉一致性。
- **工具类：** 保留极少量可复用类（如`.sr-only`）。
- **基础样式：** 最小化全局样式（如章节宽度、链接颜色），审慎应用。
- **间距控制：** 通过“猫头鹰选择器”（`*+*`）将间距交由父级布局组件管理。
- **响应式设计：** 采用弹性CSS网格（如`auto-fit`、`minmax`）而非大量媒体查询，突破Tailwind的限制实现复杂布局。
- **构建系统：** 开发阶段依赖原生CSS的导入与嵌套，仅在生产打包时使用esbuild。

放弃Tailwind的原因包括：对构建系统的过度依赖、文件体积膨胀、对“非标准”CSS的限制、需维护混合原生/Tailwind项目，以及理念转变——作者希望珍视CSS专业能力而非贬低其价值的工具，受批判Tailwind对CSS社区影响的博文启发。如今，他们将CSS视为一门严肃且不断演进的技术。

---

## 7. Δ-Mem：面向大型语言模型的高效在线内存

**原文标题**: Δ-Mem: Efficient Online Memory for Large Language Models

**原文链接**: [https://arxiv.org/abs/2605.12357](https://arxiv.org/abs/2605.12357)

**《Δ-Mem：面向大型语言模型的高效在线记忆机制》摘要**

本文提出Δ-Mem，一种轻量级记忆机制，旨在增强大型语言模型在长期任务中的表现，无需昂贵的上下文扩展或全参数微调。其核心思想是：在冻结的全注意力骨干网络上，附加一个紧凑的、固定大小的在线状态矩阵作为联想记忆。

Δ-Mem通过Delta规则学习更新该状态，高效压缩历史信息。在生成过程中，模型读取该状态并生成低秩修正项，直接耦合到骨干网络的注意力计算中。这一设计使模型能够有效回忆并复用历史信息。

该方法以极低的开销实现了显著性能提升：仅使用8×8的记忆状态，Δ-Mem便将平均得分提升至冻结骨干网络的1.10倍，比最强非Δ-Mem基线高出1.15倍。在记忆密集型基准测试上增益尤为明显，在MemoryAgentBench上达到1.31倍，在LoCoMo上达到1.20倍，同时较好地保留了通用能力。

核心启示是：通过一个直接集成到注意力计算中的紧凑在线状态，即可实现有效的记忆功能，无需全参数微调、替换骨干网络或显式扩展上下文。

---

## 8. 前沿AI打破了开放CTF的赛制

**原文标题**: Frontier AI has broken the open CTF format

**原文链接**: [https://kabir.au/blog/the-ctf-scene-is-dead](https://kabir.au/blog/the-ctf-scene-is-dead)

**摘要：作者认为，前沿人工智能模型已摧毁了开放式在线CTF竞赛的竞技公平性。**

要点如下：

1.  **人工智能已自动化大部分解题过程**：从GPT-4开始，尤其是Claude Opus 4.5和GPT-5.5 Pro，AI可以一次性解决中高难度挑战（包括堆漏洞利用）。编排多个AI代理的战队可以自动解决计分板上的大部分问题。

2.  **计分板已失效**：当前的表现反映的是AI编排能力和Token消耗，而非人类的安全技能。开放式CTF已变成“付费即赢”的游戏，CTFTime排行榜也不再反映真实能力。

3.  **对新手有害**：让新手逐步提升技能的正反馈循环已被打破。新手在培养核心直觉之前就被迫使用AI，而当计分板被自动化解题所主导时，可见的进步会令人沮丧。

4.  **组织者无力反抗**：试图让挑战对AI不友好的努力，往往会让挑战对人类而言更糟糕。针对AI使用的规则无法强制执行。

5.  **“只要适应就好”是空洞的说辞**：没有具体说明要适应什么，这种建议忽视了竞技形式的核心目的——衡量人类技能——已经不复存在。

6.  **社区衰退**：顶尖战队（例如TheHackersCrew）参赛减少。久负盛名的CTF赛事（例如Plaid CTF）已停办。顶尖从业者报告称失去兴趣。

作者总结道，当前形式的开放式在线CTF已经消亡，但敦促通过社交活动、线下聚会和学习平台来保留社区。

---

## 9. 名声！一种误解：阿尔贝·加缪完整笔记新译本

**原文标题**: Fame! A Misunderstanding: A new translation of Albert Camus's complete notebooks

**原文链接**: [https://lareviewofbooks.org/article/albert-camus-complete-notebooks-ryan-bloom-existentialism-absurd/](https://lareviewofbooks.org/article/albert-camus-complete-notebooks-ryan-bloom-existentialism-absurd/)

本文评述瑞安·布鲁姆对阿尔贝·加缪《全集笔记》的新译作，指出该译本纠正了长期以来公众对加缪的误解。尽管其作品在逝世后陆续出版，但加缪始终被片面地描绘为存在主义哲学家或荒诞派哲人。这些笔记——尤其是1938至1942年间首次译介的《奥兰笔记》——揭示出加缪始终将自己定位为艺术家而非哲学家。其著作《西西弗神话》明确声明这不是哲学论著，而是对"精神疾病"的文学描述；他更批评"主题小说"背离了真实体验。文章追溯了误读的源头：1943年萨特的评论将《西西弗神话》错误简化为哲学体系，并将《局外人》视为其注脚；1945年萨特与波伏娃掀起的"存在主义攻势"将加缪归入该流派；1946年《局外人》在美国出版时更被包装为"存在主义小说"。加缪曾多次否认自己是存在主义者。笔记还展现了他对"哲学式自杀"（用抽象概念取代生命体验）的批判，以及1938年因个人自杀危机而衍生出对政治性谋杀的反对立场。布鲁姆的译作提供了理解这些成长经历的新视角，厘清了加缪作为真正艺术家和反哲学家立场的本质。

---

## 10. 集群变得个人化（正如个人电脑一样）

**原文标题**: Clusters become personal (like PCs did)

**原文链接**: [https://aranya.tech/blog/arrival-of-the-personal-cluster](https://aranya.tech/blog/arrival-of-the-personal-cluster)

本文展望了计算的未来，提出**个人集群**——由Kubernetes等编排软件管理的多计算机协同系统——将很快像个人电脑（PC）曾经那样普及。

作者克里斯蒂安·翁达杰认为，我们已间接通过人工智能交互消费了集群级计算。他预测这种使用方式将从企业服务转向个人拥有，首先出现在工作场所，随后进入个人生活。

个人集群的普及预计将沿三大历史脉络演进：
1. **工作场所脉络**：类似PC的崛起，在工作中使用Kubernetes的技术人员将推动更简单的集群操作系统需求，最终使雇主在新员工入职时发放个人集群。
2. **爱好者脉络**：类似Linux的发展史，爱好者将构建并围绕开源集群操作系统聚集，培育社区驱动的生态系统。
3. **游戏玩家脉络**：受早期电脑游戏启发，开发者将创造原生支持集群的游戏，使强大计算变得触手可及且充满乐趣。

为实现这一未来，作者已开发并开源了**clusterdOS**——一款个人集群分布式操作系统。其背后的Aranya公司旨在让更多人获得强大计算能力，同时构建可持续发展的商业模式。文章最后坚信：下一代计算将是个人化、强大且基于集群的。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 2 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 3 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 4 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 5 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 6 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 7 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 8 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 9 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 10 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 11 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 12 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 13 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 14 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 15 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 16 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 17 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 18 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 19 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 20 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 21 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 22 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 23 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 24 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 25 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 26 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 27 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 28 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 29 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 30 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 31 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 32 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 33 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 34 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 35 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 36 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 37 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 38 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 39 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 40 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 41 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 42 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 43 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 44 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 45 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 46 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 47 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 48 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 49 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 50 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 51 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 52 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 53 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 54 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 55 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 56 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 57 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 58 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 59 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 60 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 61 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 62 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 63 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 64 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 65 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 66 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 67 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 68 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 69 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 70 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 71 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 72 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 73 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 74 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 75 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 76 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 77 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 78 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 79 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 80 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 81 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 82 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 83 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 84 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 85 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 86 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 87 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 88 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 89 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 90 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 91 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 92 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 93 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 94 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 95 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 96 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 97 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 98 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 99 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 100 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 101 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 102 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 103 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 104 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 105 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 106 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 107 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 108 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 109 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 110 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 111 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 112 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 113 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 114 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 115 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 116 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 117 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 118 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 119 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 120 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 121 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 122 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 123 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 124 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 125 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 126 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 127 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 128 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 129 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 130 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 131 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 132 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 133 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 134 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 135 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 136 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 137 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 138 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 139 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 140 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 141 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 142 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 143 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 144 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 145 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 146 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 147 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 148 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 149 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 150 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 151 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 152 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 153 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 154 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 155 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 156 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 157 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 158 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 159 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 160 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 161 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 162 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 163 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 164 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 165 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 166 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 167 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 168 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 169 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 170 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 171 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 172 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 173 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 174 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 175 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 176 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 177 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 178 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 179 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 180 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 181 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 182 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 183 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 184 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 185 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 186 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 187 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 188 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 189 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 190 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 191 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 192 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 193 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 194 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 195 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 196 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 197 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 198 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 199 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 200 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 201 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 202 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 203 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 204 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 205 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 206 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 207 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 208 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 209 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 210 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 211 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 212 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 213 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 214 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 215 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 216 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 217 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 218 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 219 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 220 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 221 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 222 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 223 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 224 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 225 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 226 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 227 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 228 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 229 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 230 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 231 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 232 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 233 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 234 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 235 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 236 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 237 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 238 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 239 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 240 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 241 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 242 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 243 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 244 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 245 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 246 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 247 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 248 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 249 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 250 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 251 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 252 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 253 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 254 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 255 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 256 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 257 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 258 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 259 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 260 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 261 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 262 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 263 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 264 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 265 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 266 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 267 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 268 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 269 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 270 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 271 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 272 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 273 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 274 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 275 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 276 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 277 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 278 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 279 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 280 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 281 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 282 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 283 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 284 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 285 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 286 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 287 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 288 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 289 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 290 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 291 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 292 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 293 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 294 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 295 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 296 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 297 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 298 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 299 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 300 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 301 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 302 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 303 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 304 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 305 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 306 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 307 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 308 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 309 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 310 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 311 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 312 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 313 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 314 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 315 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 316 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 317 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 318 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 319 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 320 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 321 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 322 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 323 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 324 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 325 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 326 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 327 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 328 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 329 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 330 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 331 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 332 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 333 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 334 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 335 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 336 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 337 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 338 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 339 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 340 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 341 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 342 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 343 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 344 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 345 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 346 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 347 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 348 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 349 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 350 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 351 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 352 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 353 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 354 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 355 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 356 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 357 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 358 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 359 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 360 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 361 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 362 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 363 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 364 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 365 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 366 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 367 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 368 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 369 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 370 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 371 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 372 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 373 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 374 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 375 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 376 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 377 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 378 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 379 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 380 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 381 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 382 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 383 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 384 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 385 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 386 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 387 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 388 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 389 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 390 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 391 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 392 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 393 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 394 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 395 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 396 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 397 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 398 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 399 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 400 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 401 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 402 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 403 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 404 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 405 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 406 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 407 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 408 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 409 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 410 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 411 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 412 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 413 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 414 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 415 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 416 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 417 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 418 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 419 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 420 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
