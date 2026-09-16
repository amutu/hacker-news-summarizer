# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-09-17.md)

*最后自动更新时间: 2026-09-17 04:56:08*
## 1. 训练4B模型生成比Postgres快81%的查询计划

**原文标题**: Training a 4B model to produce 81% faster query plans than Postgres

**原文链接**: [https://rohanbansal.com/qorl](https://rohanbansal.com/qorl)

摘要：文章探讨用小规模开放模型替代Postgres查询优化器的可行性。连接排序是NP-hard问题，搜索空间随表数组合爆炸——3表已有4608种计划，9表逼近9万亿种，使优化器长期难以找到最优解。作者利用"生成难、验证易"的特性，以查询执行时间为奖励信号，对4B参数模型进行监督微调（SFT）与强化学习（RL）后训练，在113个连接密集型查询上取得44.7%的延迟降低，而该模型初始时对99个查询完全无法产出有效计划。核心工程贡献包括：构建最小化Linux页缓存竞争噪声的Postgres测量框架；设计适配噪声环境的自定义GRPO变体；采用2×H100节点（vLLM与训练端）配合桌面四Postgres容器的跨机器分布式训练；以及基于GPT-6 Astra代理轨迹的半离线蒸馏。文章以IMDb数据集为例，直观展示选择性谓词如何使不同连接顺序的代价相差数倍，论证了该问题对强化学习的高度适配性。

---

## 2. 向量化与性能可移植的快速排序算法

**原文标题**: Vectorized and performance-portable Quicksort (2022)

**原文链接**: [https://opensource.googleblog.com/2022/06/Vectorized%20and%20performance%20portable%20Quicksort.html](https://opensource.googleblog.com/2022/06/Vectorized%20and%20performance%20portable%20Quicksort.html)

2022年6月，研究者发布了一种向量化且性能可移植的快速排序算法，排序速度比C++标准库std::sort快约10倍，并在多种CPU架构上超越了此前针对特定架构优化的排序方案。文章指出，列式数据库的兴起为排序优化提供了动机。核心思路是利用SIMD向量指令加速快速排序中占据主要耗时的分区操作：借助现代指令集中的"压缩存储"（compress-store）指令，一次性将小于或大于基准值的元素分别写入两个子数组；对于缺少该指令的架构（如AVX2），则通过置换指令模拟。该实现基于Highway可移植SIMD库，一套代码即可适配x86（AVX2/AVX-512）、Arm（NEON/SVE）及RISC-V共六种指令集、三大架构，并支持16至128位数值。实测表明：Apple M1上排序速率达466–499 MB/s，Skylake AVX-512上达约1120 MB/s，AVX2上为798 MB/s，较此前最佳AVX2方案（699 MB/s）和标准库（117 MB/s）分别提升约14%和7倍，整体实现9至19倍加速。项目采用Apache 2.0许可开源，代码托管于GitHub，并附有详细技术论文。

---

## 3. Small programming tricks

**原文标题**: Small programming tricks

**原文链接**: [https://will-keleher.com/posts/small-programming-tricks-matter/](https://will-keleher.com/posts/small-programming-tricks-matter/)

文章之前已经处理过

---

## 4. AMD矩阵运算核心的精确建模

**原文标题**: Accurate Models of AMD Matrix Cores

**原文链接**: [https://arxiv.org/abs/2609.14845](https://arxiv.org/abs/2609.14845)

本文针对GPU矩阵乘法器不符合IEEE 754标准、不同厂商及架构间存在累加器宽度、舍入行为、归一化点、中间溢出/下溢处理等差异而导致小矩阵运算结果无法跨设备复现的问题，对AMD CDNA 1（MI100）、CDNA 2（MI210/250）和CDNA 3（MI300A/300X）三代架构的数值行为进行了系统表征。作者设计了针对各支持输入格式的测试向量，阐明每个向量所揭示的特定数值特性，并据此构建基于MATLAB的软件模型。采用随机测试与测试精炼相结合的迭代优化策略，经一千百万组随机输入向量验证，模型达到与硬件逐位一致的可复现精度。最后，以两大数值应用作为概念验证，量化了AMD矩阵核心与NVIDIA张量核心在应用层面的精度差异，展示了所建模型在实验性数值研究中的实用价值。

---

## 5. Dream-RSI：基于演化世界的递归式自我改进

**原文标题**: Dream-RSI: Recursive Self-Improvement through Evolving Worlds

**原文链接**: [https://arxiv.org/abs/2609.14858](https://arxiv.org/abs/2609.14858)

递归自我改进对自主AI代理至关重要，但管理并优化探索策略仍是核心瓶颈。现有方法面临两难困境：固定策略难以适应扩展的搜索空间，而在线策略优化则需在延迟且昂贵的长时程反馈下遍历庞大的元搜索空间。本文提出Dream-RSI框架，实现可扩展的递归式探索自我改进。该框架以轻量级编排层将探索过程显式化、可编程化，同时保持底层编码代理不变。其核心思想是将积累的发现历史构建为已实现搜索空间上的重放模拟器，通过在该模拟器中"做梦"获得即时、低成本的离策略反馈，从而评估与精炼探索策略，避免重复昂贵的在线评估。改进后的策略再重新部署至在线环境驱动进一步发现，持续扩展模拟器池，形成自我改进闭环。实验表明，Dream-RSI在算法工程、数学优化及GPU内核工程等领域取得竞争性或更优的发现质量，同时显著降低发现成本。

---

## 6. 前沿模型的物理能力究竟如何？专家重评揭示评测缺陷与主流基准的接近饱和

**原文标题**: How good are frontier models at physics?

**原文链接**: [https://arxiv.org/abs/2609.13009](https://arxiv.org/abs/2609.13009)

摘要：尽管主流物理基准报告显示前沿大模型在高级物理问题上表现欠佳，但领域专家的实际使用体验与此并不一致。本文对此进行了系统审计：选取六个广泛使用的物理基准，由具备相关领域的教授和研究生专家审查题目表述、参考答案及模型回答，将模型真正的推理错误与评分失误、参考答案错误、题目模糊或条件缺失等基准测试问题加以区分。结果表明，绝大多数最初被判为"错误"的案例实为基准本身的问题，而非模型的物理推理缺陷。专家团队随后修正了错误答案、修复或剔除了有缺陷的题目。修正后，GPT-5.6-Sol在HLE-Physics上的mean@4从47.3%跃升至78.7%，CMT-Benchmark上从61.0%升至87.2%，在保留的54道CritPt挑战题上修正pass@4达94.4%；UGPhysics、PRISM-Physics和PHYBench等其他基准亦有显著提升。研究结论指出，现有基准严重低估了前沿模型解决良定义物理问题的能力，这些封闭任务的接近饱和凸显了开发更具挑战性、经专家验证的评测体系的迫切需求。

---

## 7. Mistral与Mozilla联手：打造隐私、多语言AI浏览体验

**原文标题**: Mistral X Mozilla: Private, Multilingual AI Browsing

**原文链接**: [https://mistral.ai/news/mistral-x-mozilla/](https://mistral.ai/news/mistral-x-mozilla/)

2026年9月16日，法国AI公司Mistral与开源浏览器Firefox母公司Mozilla宣布战略合作，Mistral模型将驱动Firefox智能窗口（Smart Window Beta）AI浏览助手，帮助用户理解复杂搜索结果、回顾浏览内容并基于标签页提供信息，首批覆盖法国与北美，英国和德国年内跟进。双方强调四大意义：一是以开源分发服务全球用户；二是针对各地语言、方言及文化进行模型微调，实现AI体验本地化；三是保障用户隐私与控制权，对话默认不在服务器存储，Mistral承诺零数据留存；四是将"主权AI"从企业级延伸至全球消费者。Mozilla CEO Anthony Enzor-DeMeo指出，浏览器不应成为单一公司的封闭管道，应保留互联网自由探索的本质，让不同AI服务商公平竞争。Mistral CEO Arthur Mensch表示，这是两家开源倡导者携手将前沿创新带给全球用户的里程碑。

---

## 8. Show HN: An e-ink frame that hears birds and draws them as 1800s illustrations

**原文标题**: Show HN: An e-ink frame that hears birds and draws them as 1800s illustrations

**原文链接**: [https://github.com/arnegiacomo/fugleramme](https://github.com/arnegiacomo/fugleramme)

文章之前已经处理过

---

## 9. 告诉演讲者，你欣赏他们的演讲

**原文标题**: Tell the speakers that you liked their talks

**原文链接**: [https://ohhelloana.blog/tell-the-speakers/](https://ohhelloana.blog/tell-the-speakers/)

本文是Ana Rodrigues参加SmashingConf Freiburg会议后发布的博文。她回忆起在会议后派对上鼓励一位害羞的与会者主动与演讲者交流的经历，并提到自己在CSS Day担任主持人时也竭力促进演讲者与观众之间的互动。作为近年才踏入"演讲圈"的新人，她坦言自己经历过缺少反馈的焦虑——有时整场演讲收不到任何线上评论，不禁怀疑自己是否做得不够好。她也坦率承认，自己常忘记向朋友表达对他们演出的赞美，且因害怕"暴露不足"而不敢主动结识他人。文章的核心呼吁是：无论多简单的互动，都请让演讲者知道你喜欢他们的演讲。演讲者倾注了大量心血，期待观众享受内容，也渴望得到肯定。哪怕只是一次短暂的寒暄与一句真诚的赞美，对演讲者而言都意义非凡。作者借此鼓励读者鼓起勇气，迈出表达欣赏的那一步。

---

## 10. 逆向解析 Factorio 的随机数生成器

**原文标题**: Reversing Factorio's RNG

**原文链接**: [https://gegell.github.io/posts/factorio-rng/](https://gegell.github.io/posts/factorio-rng/)

摘要：本文阐述了如何逆向分析并破解《异星工厂》（Factorio 2.0）中的伪随机数生成器，从而在游戏内预测"随机"事件。随着太空时代DLC引入物品品质系统，玩家有动力获取高品质物品。作者发现游戏采用Boost.Random库的taus88生成器，由三个线性反馈移位寄存器（LFSR）异或组合而成。通过Wube前开发者在论坛的早期回复获取线索，再利用Ghidra和Binary Ninja对随游戏发布的PDB调试符号进行反编译，验证了生成器实现。关键在于LFSR的线性本质：在GF(2)域上，每个输出位均为初始状态的线性组合，因此已知足够输出即可重建内部状态，进而预测所有未来输出。作者将两种实现（Boost源码与游戏二进制）用SymPy符号计算逐位验证等价。利用此原理，作者在游戏内实时同步运行同一算法，预判哪次合成将产出高品质物品，避免了仅靠统计大数定律的被动等待。需注意，Factorio 2.1已更改RNG调用方式，破坏了游戏内实现，但taus88的数学原理与可预测性本质不变，理论部分仍成立。全文仅需线性代数基础即可理解。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 2 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 3 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 4 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 5 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 6 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 7 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 8 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 9 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 10 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 11 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 12 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 13 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 14 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 15 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 16 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 17 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 18 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 19 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 20 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 21 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 22 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 23 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 24 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 25 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 26 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 27 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 28 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 29 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 30 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 31 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 32 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 33 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 34 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 35 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 36 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 37 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 38 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 39 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 40 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 41 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 42 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 43 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 44 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 45 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 46 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 47 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 48 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 49 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 50 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 51 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 52 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 53 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 54 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 55 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 56 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 57 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 58 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 59 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 60 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 61 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 62 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 63 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 64 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 65 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 66 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 67 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 68 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 69 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 70 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 71 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 72 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 73 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 74 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 75 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 76 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 77 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 78 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 79 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 80 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 81 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 82 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 83 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 84 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 85 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 86 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 87 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 88 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 89 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 90 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 91 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 92 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 93 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 94 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 95 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 96 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 97 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 98 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 99 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 100 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 101 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 102 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 103 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 104 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 105 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 106 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 107 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 108 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 109 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 110 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 111 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 112 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 113 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 114 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 115 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 116 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 117 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 118 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 119 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 120 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 121 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 122 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 123 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 124 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 125 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 126 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 127 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 128 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 129 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 130 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 131 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 132 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 133 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 134 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 135 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 136 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 137 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 138 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 139 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 140 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 141 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 142 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 143 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 144 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 145 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 146 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 147 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 148 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 149 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 150 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 151 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 152 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 153 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 154 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 155 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 156 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 157 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 158 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 159 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 160 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 161 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 162 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 163 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 164 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 165 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 166 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 167 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 168 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 169 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 170 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 171 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 172 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 173 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 174 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 175 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 176 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 177 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 178 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 179 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 180 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 181 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 182 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 183 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 184 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 185 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 186 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 187 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 188 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 189 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 190 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 191 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 192 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 193 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 194 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 195 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 196 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 197 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 198 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 199 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 200 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 201 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 202 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 203 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 204 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 205 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 206 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 207 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 208 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 209 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 210 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 211 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 212 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 213 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 214 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 215 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 216 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 217 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 218 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 219 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 220 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 221 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 222 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 223 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 224 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 225 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 226 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 227 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 228 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 229 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 230 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 231 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 232 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 233 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 234 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 235 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 236 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 237 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 238 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 239 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 240 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 241 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 242 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 243 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 244 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 245 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 246 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 247 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 248 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 249 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 250 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 251 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 252 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 253 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 254 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 255 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 256 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 257 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 258 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 259 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 260 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 261 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 262 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 263 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 264 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 265 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 266 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 267 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 268 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 269 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 270 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 271 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 272 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 273 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 274 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 275 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 276 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 277 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 278 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 279 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 280 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 281 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 282 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 283 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 284 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 285 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 286 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 287 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 288 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 289 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 290 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 291 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 292 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 293 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 294 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 295 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 296 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 297 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 298 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 299 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 300 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 301 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 302 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 303 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 304 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 305 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 306 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 307 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 308 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 309 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 310 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 311 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 312 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 313 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 314 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 315 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 316 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 317 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 318 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 319 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 320 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 321 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 322 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 323 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 324 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 325 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 326 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 327 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 328 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 329 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 330 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 331 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 332 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 333 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 334 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 335 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 336 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 337 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 338 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 339 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 340 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 341 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 342 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 343 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 344 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 345 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 346 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 347 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 348 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 349 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 350 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 351 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 352 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 353 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 354 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 355 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 356 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 357 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 358 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 359 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 360 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 361 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 362 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 363 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 364 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 365 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 366 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 367 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 368 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 369 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 370 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 371 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 372 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 373 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 374 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 375 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 376 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 377 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 378 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 379 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 380 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 381 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 382 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 383 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 384 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 385 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 386 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 387 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 388 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 389 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 390 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 391 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 392 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 393 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 394 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 395 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 396 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 397 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 398 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 399 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 400 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 401 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 402 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 403 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 404 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 405 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 406 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 407 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 408 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 409 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 410 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 411 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 412 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 413 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 414 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 415 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 416 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 417 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 418 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 419 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 420 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 421 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 422 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 423 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 424 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 425 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 426 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 427 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 428 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 429 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 430 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 431 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 432 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 433 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 434 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 435 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 436 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 437 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 438 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 439 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 440 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 441 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 442 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 443 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 444 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 445 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 446 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 447 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 448 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 449 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 450 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 451 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 452 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 453 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 454 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 455 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 456 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 457 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 458 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 459 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 460 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 461 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 462 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 463 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 464 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 465 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 466 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 467 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 468 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 469 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 470 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 471 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 472 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 473 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 474 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 475 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 476 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 477 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 478 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 479 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 480 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 481 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 482 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 483 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 484 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 485 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 486 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 487 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 488 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 489 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 490 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 491 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 492 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 493 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 494 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 495 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 496 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 497 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 498 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 499 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 500 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 501 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 502 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 503 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 504 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 505 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 506 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 507 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 508 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 509 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 510 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 511 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 512 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 513 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 514 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 515 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 516 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 517 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 518 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 519 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 520 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 521 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 522 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 523 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 524 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 525 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 526 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 527 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 528 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 529 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 530 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 531 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 532 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 533 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 534 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 535 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 536 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 537 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 538 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 539 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 540 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 541 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 542 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
