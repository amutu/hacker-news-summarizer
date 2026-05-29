# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-05-29.md)

*最后自动更新时间: 2026-05-29 20:33:23*
## 1. SQLite 是持久化工作流的唯一所需

**原文标题**: SQLite is all you need for durable workflows

**原文链接**: [https://obeli.sk/blog/sqlite-is-all-you-need-for-durable-workflows/](https://obeli.sk/blog/sqlite-is-all-you-need-for-durable-workflows/)

**摘要：**

本文认为，对于许多持久化工作流系统（尤其是AI代理）而言，SQLite是比Postgres或专用编排层更简单且足够的替代方案。其核心见解在于：“持久化执行”主要需要保存工作流状态，而非昂贵的基础设施；计算资源可以保持廉价和可丢弃性。

SQLite无需独立数据库服务即可提供事务性持久化能力，消除了网络跳转和运维开销。在可移植性方面，**Litestream**可以将SQLite变更异步流式传输至兼容S3的存储以用于备份和检查，但需注意复制是异步的，可能遗漏最新的本地写入。

该模型特别适合AI代理：每个代理或租户可以在SQLite文件中拥有小型自包含状态，运行于微型虚拟机或容器中。与单一大型共享系统相比，这种方法更简单、成本更低，且具有更好的故障隔离性。

然而，SQLite并非通用方案。当需要更高可用性、共享可扩展性或同步持久化时，**Postgres**更优。本文总结道，许多系统在初始阶段并不需要此类基础设施，而本地SQLite数据库配合Litestream备份——辅以廉价工作节点——即可提供持久化、低基础设施的解决方案，使其成为众多AI代理工作流中最合理的默认选择。

---

## 2. 《死亡经济理论》

**原文标题**: The dead economy theory

**原文链接**: [https://www.owenmcgrann.com/p/the-dead-economy-theory](https://www.owenmcgrann.com/p/the-dead-economy-theory)

本文《死亡经济理论》警示，人工智能产业的首要目标是大规模替代人类劳动力，这将引发一场自我毁灭的经济危机。作者指出，OpenAI和Anthropic等AI公司需要数万亿投资，而唯一能支撑这一规模的市场就是全球劳动力市场。它们的真正产品是消灭人类工人，而非增强人类能力。

核心论点遵循一个三步循环：企业用AI替代工人，推高股价；被裁员工失去收入，停止消费；消费者需求崩溃，摧毁这些企业赖以生存的市场。这被称为“AI裁员陷阱”，一种囚徒困境——企业争相自动化，最终集体走向毁灭。经济学家指出，从众行为使裁员速度远超效率所需。

与过去耗时数十年且范围有限的技术变革不同，此次威胁同时波及所有认知劳动。作者警告，这将摧毁民主治理：工人失去经济杠杆，税基遭到侵蚀，财富集中——公共资助的研究成果被少数私营企业独占。全民基本收入等提议被认为不充分，作者援引失去经济目标的社区中“绝望致死”案例上升的现象。结论警告，无需面对选举压力的专制政权正成为该技术的首选客户。

---

## 3. Mistral AI巴黎峰会现场笔记

**原文标题**: Notes from the Mistral AI Now Summit in Paris

**原文链接**: [https://koenvangilst.nl/lab/mistral-ai-now-summit](https://koenvangilst.nl/lab/mistral-ai-now-summit)

**Mistral AI 最新峰会摘要**

Mistral AI 正从模型公司转型为全栈 AI 提供商，拥有自有算力（包括一座 40 兆瓦的巴黎数据中心），并专注于可本地部署的高效、开放及定制化模型。本次峰会侧重企业合作伙伴关系（如 ASML、法国巴黎银行、亚马逊 Alexa+）而非新模型发布，同时推出了“Vibe for Work”产品。

关键主题包括：
- **智能体 AI**：“框架”（上下文、持久化、学习）至关重要；推理能力可实现错误恢复与透明度。技能模块可捕捉组织最佳实践。
- **专业化小模型**：在效率上超越通用大模型——应用于欧盟专利局 OCR 的 Document AI、Alexa+ 语音的 Voxtral 以及工业机器人领域的 Robostral。
- **主权与本地部署**：法国巴黎银行通过 Mistral 本地部署进行 KYC 审核；西班牙对外银行通过智能体编排服务超 100 万客户。这对寻求美国超大规模云服务商替代方案的受监管欧洲企业颇具吸引力。
- **人文学科影响**：Codestral 经微调后用于解读古代纸莎草文献，解锁了 18 万份文档——若人工处理需耗时 2000 年以上。

Mistral 的愿景并非赢得 AGI 竞赛，而是成为欧洲的全栈 AI 合作伙伴，提供即时可用的实际投资回报。其开放模型、本地部署灵活性及企业级聚焦，有望吸引大型欧盟机构，标志着减少对美国科技巨头依赖的趋势转变。

---

## 4. 加利福尼亚州众议院通过了《保护我们的游戏法案》

**原文标题**: The California State Assembly Has Passed the 'Protect Our Games Act'

**原文链接**: [https://www.invenglobal.com/articles/22330/stop-killing-games-movement-gains-momentum-california-assembly-passes-game-protection-bill](https://www.invenglobal.com/articles/22330/stop-killing-games-movement-gains-momentum-california-assembly-passes-game-protection-bill)

加州众议院以43票赞成、16票反对的结果通过了《保护我们的游戏法案》（AB 1921），这是“停止杀戮游戏”运动的一次重大胜利。该法案要求数字游戏发行商确保游戏在停止在线服务后仍可访问。具体而言，公司必须至少在终止服务前60天发出通知，提供替代版本或补丁以维持游戏可玩性，若无法实现则需退款。该法律适用于2027年1月1日之后发布或转售的数字销售游戏，但不包括订阅服务、免费游戏和离线游戏。同时禁止继续销售因服务终止而无法使用的游戏。该法案源于育碧2024年关闭《飙酷车神》引发的争议，此举导致购买者完全无法访问该游戏。娱乐软件协会以安全和知识产权为由反对该法案，而游戏保护组织认为游戏属于文化遗产。该法案仍需加州参议院批准及州长签署。在拥有EA和动视暴雪等大型游戏公司的加州通过这一法案具有高度象征意义，并可能影响美国游戏产业政策。

---

## 5. 关于渲染差异的探讨

**原文标题**: On Rendering Diffs

**原文链接**: [https://pierre.computer/writing/on-rendering-diffs](https://pierre.computer/writing/on-rendering-diffs)

**摘要：**

本文由皮埃尔计算机公司介绍**CodeView**，这是一种用于在浏览器中渲染大型代码差异的新组件，旨在解决代码审查工具中的性能问题。核心挑战在于，审查大型差异（例如由AI生成的代码）会导致响应迟缓、内存占用高以及滚动时出现空白区域。

作者识别出三个问题领域：**渲染**（DOM过载）、**处理**（大规模下每个文件的昂贵操作）和**内存**（大型数据结构）。为解决这些问题，他们开发了一种新颖的虚拟化技术，称为**反向粘性技术**。与传统方法在快速滚动时可能出现空白不同，这种混合方法使用带有负偏移量的CSS `position: sticky`。当用户滚动过渲染区域时，内容会粘在视口的顶部或底部，在保持原生滚动行为的同时防止出现空白区域。

除虚拟化外，CodeView还利用行高估算和二分查找（通过行检查点系统）来改进布局计算，从而在非常大的代码块中快速定位可见行。文章指出，虽然该技术几乎消除了空白，但在极端滚动条件下，Safari仍可能出现空白区域。

最终成果是一个能够“几乎即时渲染任何差异”的组件，使团队能够专注于围绕代码审查的产品开发，而无需从零构建差异工具。

---

## 6. 根据您当前的天气状况推荐罗斯科风格

**原文标题**: Rothko for your current weather conditions

**原文链接**: [https://rothko.joonas.wtf/](https://rothko.joonas.wtf/)

本文介绍了一个交互式数字艺术项目，该项目将观众当前所在地区的天气状况与马克·罗斯科的特定画作相匹配。界面实时显示本地天气数据，同时展示一幅选定的罗斯科作品。简短的背景部分阐释道，罗斯科在20世纪40年代末停止描绘可辨识的物体，转而专注于光、色彩与情感冲击力。他的标志性风格是在画布上排列两三个边缘柔和的矩形，反复打磨画面直至色彩仿佛营造出内在氛围。他要求画廊将画作挂低、调暗灯光，并允许观众静坐观赏，强调艺术旨在唤起喜悦、狂喜、厄运或悲剧等情感，而非仅仅被观看。该项目将这些艺术追求与当下时刻相连，将罗斯科画作的情绪基调与用户所在地的天气融为一体。

---

## 7. Bijou64：一种可变长度整数编码

**原文标题**: Bijou64: A variable-length integer encoding

**原文链接**: [https://www.inkandswitch.com/tangents/bijou64/](https://www.inkandswitch.com/tangents/bijou64/)

**《Bijou64：可变长整数编码》摘要**

本文介绍了Bijou64，一种为Subduction CRDT同步协议开发的新型可变长整数编码。其主要设计目标是消除非规范编码（即单个整数可由多个字节序列表示），这是涉及签名或内容寻址协议中的安全问题。

与LEB128等常见可变长整数编码不同（后者允许过长编码并需要运行时检查规范性），Bijou64**通过构造实现规范性**。它通过两种技术达成目标：（1）首字节同时充当数据（0–247）和标签（248–255），用于指示后续字节数；（2）根据总长度对数据字节应用偏移量，避免重复表示。

这一设计带来了显著的性能优势。解码速度比LEB128快约2–10倍，尤其对于较大整数，因为Bijou64能从首字节获知总长度（O(1)对比O(n)扫描）。它采用大端连续有效载荷和可预测分支，实现高度一致的性能。编码速度通常也更快。编码大小与LEB128相当。

Bijou64已发布在crates.io上，最适合需要规范性和高解码性能的新协议。

---

## 8. 购买Framework 12的理由很难站得住脚

**原文标题**: It's hard to justify buying a Framework 12

**原文链接**: [https://www.jeffgeerling.com/blog/2026/its-hard-to-justify-framework-12/](https://www.jeffgeerling.com/blog/2026/its-hard-to-justify-framework-12/)

本文对比了Framework 12与MacBook Neo两款适合高中毕业生的笔记本电脑，认为Framework 12性价比不高。作者的侄子最终选择了MacBook Neo。核心对比：

- **价格与性能**：MacBook Neo起售价499美元，Framework 12为749-799美元。Neo在多数基准测试中（Geekbench 6、GPU）速度更快，无风扇设计更安静，能效高出两倍，同时拥有更优秀的屏幕和做工质量。
- **Framework 12优势**：配备触摸屏、360°铰链、模块化接口，且高度可维修/升级（DDR5内存、2230固态硬盘、Wi-Fi网卡、接口）。主动散热使其在高负载下持续性能略胜一筹。
- **劣势**：塑料机身、屏幕色彩差、扬声器糟糕，尽管屏幕更小却更厚更重，手写笔和平板模式体验平庸。整体体验更差，价格却贵了20-40%。

作者指出Framework受规模限制被迫妥协（如采用现成屏幕）。若看重可维修性和Linux支持，Framework 13更值得考虑。MacBook Neo比以往Mac更易维修，但Framework 12因价格更高、体验不佳仍难以推荐。

---

## 9. Shifts公司将免费清洁家居以训练未来机器人

**原文标题**: Shift will clean homes for free to train future robots

**原文链接**: [https://www.theverge.com/ai-artificial-intelligence/939765/ai-training-data-startup-shift-free-cleaning](https://www.theverge.com/ai-artificial-intelligence/939765/ai-training-data-startup-shift-free-cleaning)

一家名为Shift的纽约人工智能初创公司正提供免费家庭清洁服务，以换取清洁工记录工作过程的数据用于训练未来机器人。清洁工需佩戴一顶内置摄像头的"魔法帽"，从第一视角拍摄画面。该公司声明将保护客户隐私，所有面部、姓名及个人信息在用于AI训练前均经过模糊化与匿名处理。清洁工需通过合作方背景审查，但并非Shift公司雇员。

该服务现阶段仅限纽约地区，但即将扩展至旧金山、伦敦、苏黎世和慕尼黑。Shift已通过旗下应用向15个国家的数万人支付报酬，用以记录其日常活动。公司计划最终进军管道维修、烹饪及建筑等领域，目标是为实现房屋自主清洁奠定基础。

---

## 10. Liquid AI发布基于38T tokens训练的8B-A1B MoE模型

**原文标题**: Liquid AI reveals 8B-A1B MoE trained on 38T

**原文链接**: [https://www.liquid.ai/blog/lfm2-5-8b-a1b](https://www.liquid.ai/blog/lfm2-5-8b-a1b)

**Liquid AI 发布 LFM2.5-8B-A1B 模型摘要**

Liquid AI 发布了 LFM2.5-8B-A1B，这是一款经过改进的 80 亿参数混合专家（MoE）边缘模型，专为快速设备端工具调用和智能体任务设计。相较于前代（LFM2-8B-A1B），主要升级包括：上下文窗口扩大四倍（128K tokens）、预训练数据量从 12T 扩展至 38T tokens、词汇量翻倍（128K）以优化非拉丁语系分词效果，以及大规模强化学习。

该模型现为“纯推理型”，在输出答案前会生成显式思维链，从而在不牺牲速度的前提下提升质量。在基准测试中，新版本表现显著提升：AA-Omniscience 指数从 -78.42 升至 -24.70，IFEval 从 79.44 升至 91.84，MATH500 从 74.80 升至 88.76。通过基于 avg@k 奖励的目标强化学习阶段，模型幻觉率大幅降低（非幻觉率从 7.46% 提升至 63.47%）。

训练亮点包括：原地扩展分词器、通过调整 RoPE 基值扩展上下文、以及长推理轨迹中的“死循环”缩减阶段。该模型在与更大规模密集模型和 MoE 模型的竞争中表现突出。

模型首日即支持 llama.cpp、MLX、vLLM 和 SGLang 框架，在 M5 Max 笔记本 CPU 上可达 253 tokens/s，在单块 H100 GPU 上可达 18.5K 输出 tokens/s。该开放权重模型已上架 Hugging Face，可在内存小于 6GB 的消费级硬件上运行。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 2 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 3 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 4 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 5 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 6 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 7 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 8 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 9 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 10 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 11 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 12 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 13 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 14 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 15 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 16 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 17 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 18 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 19 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 20 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 21 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 22 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 23 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 24 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 25 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 26 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 27 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 28 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 29 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 30 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 31 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 32 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 33 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 34 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 35 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 36 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 37 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 38 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 39 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 40 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 41 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 42 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 43 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 44 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 45 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 46 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 47 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 48 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 49 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 50 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 51 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 52 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 53 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 54 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 55 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 56 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 57 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 58 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 59 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 60 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 61 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 62 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 63 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 64 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 65 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 66 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 67 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 68 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 69 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 70 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 71 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 72 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 73 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 74 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 75 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 76 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 77 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 78 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 79 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 80 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 81 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 82 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 83 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 84 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 85 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 86 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 87 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 88 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 89 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 90 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 91 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 92 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 93 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 94 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 95 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 96 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 97 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 98 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 99 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 100 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 101 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 102 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 103 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 104 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 105 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 106 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 107 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 108 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 109 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 110 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 111 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 112 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 113 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 114 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 115 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 116 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 117 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 118 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 119 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 120 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 121 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 122 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 123 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 124 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 125 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 126 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 127 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 128 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 129 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 130 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 131 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 132 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 133 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 134 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 135 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 136 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 137 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 138 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 139 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 140 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 141 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 142 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 143 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 144 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 145 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 146 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 147 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 148 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 149 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 150 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 151 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 152 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 153 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 154 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 155 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 156 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 157 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 158 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 159 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 160 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 161 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 162 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 163 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 164 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 165 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 166 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 167 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 168 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 169 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 170 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 171 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 172 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 173 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 174 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 175 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 176 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 177 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 178 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 179 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 180 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 181 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 182 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 183 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 184 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 185 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 186 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 187 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 188 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 189 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 190 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 191 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 192 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 193 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 194 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 195 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 196 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 197 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 198 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 199 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 200 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 201 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 202 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 203 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 204 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 205 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 206 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 207 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 208 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 209 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 210 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 211 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 212 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 213 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 214 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 215 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 216 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 217 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 218 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 219 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 220 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 221 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 222 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 223 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 224 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 225 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 226 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 227 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 228 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 229 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 230 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 231 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 232 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 233 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 234 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 235 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 236 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 237 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 238 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 239 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 240 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 241 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 242 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 243 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 244 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 245 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 246 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 247 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 248 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 249 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 250 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 251 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 252 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 253 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 254 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 255 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 256 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 257 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 258 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 259 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 260 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 261 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 262 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 263 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 264 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 265 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 266 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 267 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 268 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 269 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 270 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 271 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 272 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 273 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 274 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 275 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 276 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 277 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 278 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 279 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 280 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 281 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 282 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 283 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 284 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 285 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 286 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 287 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 288 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 289 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 290 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 291 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 292 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 293 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 294 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 295 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 296 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 297 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 298 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 299 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 300 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 301 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 302 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 303 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 304 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 305 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 306 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 307 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 308 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 309 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 310 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 311 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 312 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 313 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 314 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 315 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 316 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 317 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 318 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 319 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 320 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 321 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 322 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 323 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 324 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 325 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 326 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 327 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 328 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 329 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 330 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 331 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 332 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 333 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 334 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 335 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 336 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 337 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 338 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 339 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 340 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 341 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 342 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 343 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 344 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 345 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 346 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 347 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 348 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 349 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 350 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 351 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 352 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 353 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 354 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 355 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 356 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 357 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 358 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 359 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 360 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 361 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 362 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 363 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 364 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 365 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 366 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 367 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 368 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 369 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 370 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 371 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 372 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 373 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 374 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 375 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 376 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 377 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 378 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 379 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 380 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 381 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 382 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 383 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 384 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 385 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 386 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 387 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 388 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 389 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 390 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 391 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 392 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 393 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 394 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 395 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 396 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 397 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 398 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 399 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 400 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 401 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 402 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 403 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 404 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 405 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 406 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 407 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 408 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 409 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 410 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 411 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 412 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 413 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 414 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 415 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 416 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 417 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 418 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 419 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 420 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 421 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 422 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 423 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 424 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 425 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 426 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 427 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 428 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 429 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 430 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 431 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 432 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 433 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
