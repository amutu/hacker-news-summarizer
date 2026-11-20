# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-21.md)

*最后自动更新时间: 2026-11-21 04:57:16*
## 1. 紧急公告：Alessandro Masullo 的广义黎曼猜想证明

**原文标题**: Hurried Announcement: Alessandro Masullo GRH

**原文链接**: [https://math216.wordpress.com/2026/11/20/hurried-announcement-alessandro-masullo-grh/](https://math216.wordpress.com/2026/11/20/hurried-announcement-alessandro-masullo-grh/)

2026年11月20日，一位数学家在美国数学会（AMS）执行委员会与董事会会议间隙，紧急发布博文宣布：Alessandro Masullo已完成广义黎曼猜想（GRH）的证明草案。知名数学家Brian Conrad已对该证明审查数月并给出详尽反馈，Masullo正据此修订，目前整体前景良好。该工作完全由人类独立完成，未借助任何AI工具。原计划是将Masullo邀至斯坦福大学驻留一年，完善行文后再正式公布，但鉴于形势紧迫，决定提前公开当前版本，文件题为《素数的音乐》（The Music of the Primes）。发布方呼吁全球数学界尽快审阅、形式化验证该证明并填补可能存在的细微漏洞。发布者强调对Conrad学术判断力的充分信任，同时坦言"真希望这个证明能成立"，并预告日后会补充完整背景。

---

## 2. Levent Alpöge声称证明广义黎曼猜想

**原文标题**: Levent Alpöge claims proof of the Generalized Riemann Hypothesis [pdf]

**原文链接**: [https://alpo.ge/remark.pdf](https://alpo.ge/remark.pdf)

本文档为Levent Alpöge提交的一份PDF论文，声称对广义黎曼猜想（Generalized Riemann Hypothesis, GRH）给出证明。广义黎曼猜想是解析数论中最核心的未解决问题之一，由黎曼1859年提出的ζ函数零点猜想推广而来，断言所有戴达金L-函数的非平凡零点均位于临界线Re(s)=1/2上。该猜想与素数分布的精确性、类数问题及众多解析数论估计紧密相关，被誉为"数学界皇冠上的宝石"之一。本文作者试图对这一百年难题给出完整证明，但需指出，历史上针对GRH及黎曼猜想的"证明"尝试众多，绝大多数经同行审查后被发现有根本性缺陷，本文的具体证明路径、核心方法及是否经得起严格审验，尚需数学共同体进一步检验。该文档以PDF格式发布，属于预印本性质的学术声明。

---

## 3. 灵思 2 Mini 模型发布

**原文标题**: Inkling 2 Mini

**原文链接**: [https://thinkingmachines.ai/news/inkling-2-mini/](https://thinkingmachines.ai/news/inkling-2-mini/)

灵思 2 Mini（Inkling 2 Mini）是一款可在消费级笔记本上本地运行的高效混合专家模型，总参数 26.4B、激活参数 3.4B，内存约 20GB。其核心创新为循环 Transformer 架构：将 24 层中的中间 12 层重复运行 3 次，使模型以更少 token 完成更深推理，在 Agentic 编码任务上优势显著。在 DeepSWE v1.1（48.2%）、SWE-bench Pro v2（77.9%）等基准上，它领先所有 100B 参数以下的开源模型；搜索与工具使用类任务（BrowseComp 79.0%、DeepSearchQA 85.3%）同样突出。斯坦福测试中其"智能/瓦特"比达 0.703，远超 Qwen3.6 与 Gemma-4，适合在单台 MacBook 上驱动多个持久化智能体。知识类能力与同规模模型持平，但通过搜索与工具调用有效弥补。局限方面，多轮对话和复杂约束任务落后于 Qwen3.8-27B，纯推理基准逊于更大模型。循环设计未增加知识容量，但链式思维仍保持可读，安全指标（误行为率 9.8%）优于竞品。模型以 NVFP4/MXFP8 量化部署，权重已全面开源。

---

## 4. 语言模型可自主改写自身权重

**原文标题**: Language Models Can Rewrite Their Own Weights

**原文链接**: [https://arxiv.org/abs/2611.21885](https://arxiv.org/abs/2611.21885)

本文提出"自我重写"范式：语言模型通过自身推理直接改写权重，无需梯度计算或训练流程。作者展示了一个270亿参数的开源模型，在获得自身权重、带评分答案及运行自身能力后，能诊断推理失败并重写底层权重。实验表明：该模型在未见过的题目上准确率提升6.6个百分点；通过在练习题上验证并仅提交有效编辑，连续八次迭代中准确率单调递增；模型还能修复一份几乎无法解题的受损副本，在从未读取原始权重的条件下，仅凭前向传播将其恢复至原始准确率的80%以上。研究还发现显著规模效应：同一模型家族中，较小模型无法有效编辑甚至自我破坏，仅最大模型具备自我改进与修复能力。与测试时扩展不同，自我重写将性能增益永久写入权重，推理时无额外开销；与传统训练不同，全程仅执行前向传播。作者认为，打破训练与推理的界限是迈向递归自我改进的必要步骤，未来模型或可不再区分训练与推理，实现持续自主升级。

---

## 5. 无外力驱动下纳维-斯托克斯奇点与广义黎曼假设

**原文标题**: Unforced Navier-Stokes Singularity and the Generalized Riemann Hypothesis

**原文链接**: [https://terrytao.wordpress.com/2026/11/20/unforced-euler-singularity-unforced-navier-stokes-singularity-and-the-generalized-riemann-hypothesis/](https://terrytao.wordpress.com/2026/11/20/unforced-euler-singularity-unforced-navier-stokes-singularity-and-the-generalized-riemann-hypothesis/)

摘要：本文发表于WordPress平台，由Ben Eastaugh与Chris Sternal-Johnson维护。从标题判断，文章探讨的核心问题涉及两个深刻数学难题的潜在关联：一是无外力驱动（非强迫）条件下纳维-斯托克斯方程是否会出现有限时间奇点（即解的爆破或奇异性），这是千禧年大奖难题之一，关乎三维不可压缩流体力学方程解的光滑性；二是广义黎曼假设，该猜想断言黎曼ζ函数所有非平凡零点的实部均为1/2，其推广形式涉及更广泛的狄利克雷L函数及自守形式。文章可能试图在流体力学的奇点形成机制与解析数论中的零点分布之间建立某种结构性或方法论上的联系。然而，所提供的正文内容仅包含平台归属信息，未呈现具体的数学推导或论证细节，因此无法进一步概述其技术要点与结论。

---

## 6. 我们悄悄把开发者"升职"成了架构师

**原文标题**: We promoted developers into architects without informing them

**原文链接**: [https://manidoraisamy.com/developer-to-architect.html](https://manidoraisamy.com/developer-to-architect.html)

作者以调试Google Forms插件的经历为例，指出同事用AI生成的日志代码因多次嵌套API调用，导致欢迎界面加载耗时15秒。这一案例揭示核心问题：AI编程工具擅长实现功能需求，却缺乏架构判断力——它不会权衡性能与安全，不会主动"推回"不合理需求，只会忠实执行指令。正确做法应由架构师先完成数据模型设计，再约束AI在既定架构内编码，而非让AI自行决定架构。AI默认偏向安全而牺牲性能，且倾向保留多版本数据表，导致系统臃肿。行业困境在于：公司用AI替代了编码，却未告知开发者角色已转变为架构师——需负责评审需求、设计数据模型、设定架构边界并审查AI产出。这种"无声的升职"正是当下开发者对vibe coding产生困惑与抵触的根源。作者呼吁：编码工作正在消失，但开发者的价值不会消失，应主动学习架构思维，拥抱角色转变。

---

## 7. 氛围编程一枚推理芯片

**原文标题**: Vibecoding an inference chip

**原文链接**: [https://ankitg.me/blog/vibecoding-inference-chip/](https://ankitg.me/blog/vibecoding-inference-chip/)

摘要：作者从未写过C++或Verilog，却借助AI编码代理在AWS F2实例上"氛围编程"，将FPGA改造为LLM推理芯片。他仅凭"再快两倍，你可以的"等模糊指令，驱动Claude与OpenAI在Conductor中自主迭代数天，采用DeepGrove三元权重架构适配16GB HBM，全程生成约300万行代码、解析3000万行日志，token费用仅约一万美元。性能从6.43 tokens/s逐步攀升至213 tokens/s，累计提升33倍，路径为渐进式复合优化——每步约1.5倍，涵盖主机开销削减、突发注意力、并行MoE路由、推测解码、内存端口复用等。值得玩味的是，DeepGrove创始人提供的详尽设计经验在思路层面帮助有限（代理本可自行推导），但在迭代策略上（如避免24小时级仿真、缩短反馈循环）立竿见影。核心结论：人类仍擅长定义迭代节奏与正确性标准，而AI代理已能高效管理大规模硬件探索，FPGA级底层编程正从高门槛专业领域变为可及的"氛围编程"对象。

---

## 8. Winedroid——无需安卓系统即可运行安卓应用（WASM 演示）

**原文标题**: Winedroid – run Android apps without Android (WASM demo)

**原文链接**: [https://winedroid.soham.sh/demo/](https://winedroid.soham.sh/demo/)

Winedroid 是一个基于 WebAssembly（WASM）技术的演示项目，旨在让用户无需安装安卓系统即可在网页中运行安卓应用。界面提供计算器、冥想、文件管理、天气、货币转换等常用应用入口。然而，该演示在运行过程中遭遇意外错误，运行时崩溃并显示"Winedroid 已停止"提示，系统提供"复制崩溃信息"和"重新加载页面"两个恢复选项；同时弹出"无法打开 APK 文件"的错误对话框，用户仅能通过点击"确定"关闭提示。整体来看，该项目展示了在浏览器中模拟安卓环境的探索方向，但当前版本稳定性不足，APK 解析或加载环节存在明显缺陷，尚处于早期实验阶段。

---

## 9. Navier–Stokes方程的有限时间爆破

**原文标题**: Finite-time blow-up for the Navier–Stokes equations

**原文链接**: [https://github.com/tristanbuckmaster/navier-stokes/](https://github.com/tristanbuckmaster/navier-stokes/)

本仓库收录L. Alpöge与T. Buckmaster关于Navier–Stokes方程有限时间爆破的论文（79页，2026年11月20日版）及其Lean 4形式化证明。Lean包基于v4.33.1与Mathlib，规模约2270个文件、60万行代码。顶层陈述文件给出定义并以sorry占位，Solution.lean从lean/Breakdown/库完成证明；comparator*.json将陈述文件与解耦并限定仅允许propext、Quot.sound与Classical.choice三个公理。形式化覆盖论文定理1.1、定理7.1、推论7.2及附录B。需注意：仓库不含论文给出的证书数据，也不含用于验证证书满足附录B条件的区间算术计算（128位精度，基于Arb/FLINT库），论文源文件亦未随仓库提供。当前Lean包为论文工作仓库加2026年11月20日补丁的版本，补丁涉及cell-layer陈述中权重由m²+¼改为(|m|+½)²、允许某常数取零、限制模型谐波范围；附录B已按此修正形式陈述，但补丁后未重新构建。

---

## 10. 若无法用简单语言解释，说明你并未真正理解

**原文标题**: If you can't explain something in simple terms, you don't understand it (2017)

**原文链接**: [https://kottke.org/17/06/if-you-cant-explain-something-in-simple-terms-you-dont-understand-it](https://kottke.org/17/06/if-you-cant-explain-something-in-simple-terms-you-dont-understand-it)

2017年，Jason Kottke在博文中引用了物理学家理查德·费曼的一个著名轶事：当同事请他用大一学生的水平解释"自旋1/2粒子为何服从费米-狄拉克统计"时，费曼尝试数日后坦言失败——"我无法将其降至大一水平，这意味着我们并不真正理解它。"该故事出自古德斯坦所著《费曼遗失的讲座》。文章指出，这一"费曼标准"不仅适用于科学教育，也是苹果公司的工程文化：能用通俗语言阐明复杂技术，是彻底理解的最佳证明。费曼以化繁为简著称——他将火喻为"储存的阳光"，生动讲解橡皮筋、火车过弯与磁铁，却也坦诚承认局限：磁力无法用更熟悉的概念解释，因为"我本身就不理解它"；关于量子力学，他直言"没有人真正理解量子力学"。费曼晚年在黑板上留下的最后一句话是："我无法创造的东西，我就不理解。"全文以物理学家的谦逊与洞见，阐明"以简驭繁"既是真正理解的标志，也是智识诚实的体现。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-21](output/hacker_news_summary_2026-11-21.md) |
| 2 | [2026-11-20](output/hacker_news_summary_2026-11-20.md) |
| 3 | [2026-11-19](output/hacker_news_summary_2026-11-19.md) |
| 4 | [2026-11-18](output/hacker_news_summary_2026-11-18.md) |
| 5 | [2026-11-17](output/hacker_news_summary_2026-11-17.md) |
| 6 | [2026-11-16](output/hacker_news_summary_2026-11-16.md) |
| 7 | [2026-11-15](output/hacker_news_summary_2026-11-15.md) |
| 8 | [2026-11-14](output/hacker_news_summary_2026-11-14.md) |
| 9 | [2026-11-13](output/hacker_news_summary_2026-11-13.md) |
| 10 | [2026-11-12](output/hacker_news_summary_2026-11-12.md) |
| 11 | [2026-11-11](output/hacker_news_summary_2026-11-11.md) |
| 12 | [2026-11-10](output/hacker_news_summary_2026-11-10.md) |
| 13 | [2026-11-09](output/hacker_news_summary_2026-11-09.md) |
| 14 | [2026-11-08](output/hacker_news_summary_2026-11-08.md) |
| 15 | [2026-11-07](output/hacker_news_summary_2026-11-07.md) |
| 16 | [2026-11-06](output/hacker_news_summary_2026-11-06.md) |
| 17 | [2026-11-05](output/hacker_news_summary_2026-11-05.md) |
| 18 | [2026-11-04](output/hacker_news_summary_2026-11-04.md) |
| 19 | [2026-11-03](output/hacker_news_summary_2026-11-03.md) |
| 20 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 21 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 22 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 23 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 24 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 25 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 26 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 27 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 28 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 29 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 30 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 31 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 32 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 33 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 34 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 35 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 36 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 37 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 38 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 39 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 40 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 41 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 42 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 43 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 44 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 45 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 46 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 47 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 48 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 49 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 50 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 51 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 52 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 53 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 54 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 55 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 56 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 57 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 58 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 59 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 60 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 61 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 62 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 63 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 64 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 65 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 66 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 67 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 68 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 69 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 70 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 71 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 72 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 73 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 74 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 75 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 76 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 77 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 78 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 79 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 80 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 81 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 82 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 83 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 84 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 85 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 86 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 87 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 88 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 89 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 90 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 91 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 92 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 93 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 94 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 95 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 96 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 97 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 98 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 99 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 100 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 101 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 102 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 103 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 104 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 105 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 106 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 107 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 108 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 109 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 110 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 111 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 112 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 113 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 114 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 115 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 116 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 117 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 118 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 119 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 120 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 121 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 122 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 123 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 124 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 125 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 126 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 127 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 128 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 129 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 130 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 131 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 132 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 133 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 134 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 135 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 136 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 137 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 138 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 139 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 140 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 141 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 142 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 143 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 144 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 145 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 146 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 147 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 148 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 149 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 150 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 151 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 152 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 153 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 154 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 155 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 156 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 157 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 158 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 159 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 160 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 161 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 162 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 163 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 164 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 165 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 166 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 167 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 168 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 169 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 170 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 171 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 172 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 173 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 174 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 175 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 176 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 177 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 178 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 179 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 180 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 181 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 182 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 183 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 184 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 185 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 186 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 187 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 188 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 189 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 190 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 191 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 192 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 193 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 194 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 195 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 196 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 197 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 198 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 199 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 200 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 201 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 202 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 203 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 204 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 205 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 206 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 207 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 208 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 209 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 210 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 211 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 212 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 213 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 214 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 215 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 216 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 217 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 218 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 219 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 220 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 221 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 222 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 223 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 224 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 225 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 226 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 227 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 228 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 229 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 230 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 231 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 232 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 233 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 234 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 235 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 236 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 237 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 238 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 239 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 240 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 241 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 242 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 243 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 244 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 245 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 246 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 247 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 248 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 249 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 250 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 251 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 252 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 253 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 254 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 255 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 256 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 257 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 258 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 259 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 260 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 261 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 262 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 263 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 264 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 265 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 266 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 267 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 268 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 269 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 270 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 271 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 272 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 273 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 274 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 275 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 276 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 277 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 278 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 279 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 280 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 281 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 282 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 283 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 284 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 285 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 286 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 287 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 288 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 289 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 290 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 291 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 292 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 293 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 294 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 295 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 296 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 297 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 298 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 299 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 300 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 301 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 302 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 303 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 304 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 305 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 306 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 307 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 308 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 309 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 310 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 311 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 312 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 313 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 314 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 315 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 316 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 317 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 318 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 319 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 320 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 321 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 322 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 323 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 324 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 325 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 326 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 327 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 328 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 329 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 330 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 331 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 332 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 333 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 334 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 335 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 336 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 337 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 338 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 339 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 340 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 341 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 342 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 343 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 344 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 345 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 346 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 347 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 348 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 349 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 350 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 351 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 352 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 353 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 354 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 355 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 356 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 357 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 358 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 359 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 360 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 361 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 362 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 363 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 364 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 365 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 366 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 367 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 368 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 369 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 370 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 371 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 372 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 373 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 374 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 375 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 376 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 377 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 378 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 379 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 380 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 381 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 382 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 383 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 384 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 385 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 386 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 387 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 388 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 389 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 390 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 391 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 392 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 393 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 394 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 395 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 396 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 397 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 398 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 399 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 400 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 401 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 402 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 403 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 404 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 405 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 406 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 407 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 408 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 409 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 410 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 411 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 412 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 413 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 414 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 415 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 416 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 417 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 418 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 419 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 420 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 421 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 422 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 423 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 424 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 425 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 426 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 427 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 428 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 429 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 430 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 431 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 432 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 433 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 434 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 435 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 436 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 437 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 438 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 439 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 440 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 441 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 442 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 443 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 444 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 445 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 446 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 447 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 448 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 449 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 450 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 451 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 452 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 453 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 454 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 455 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 456 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 457 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 458 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 459 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 460 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 461 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 462 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 463 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 464 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 465 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 466 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 467 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 468 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 469 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 470 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 471 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 472 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 473 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 474 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 475 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 476 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 477 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 478 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 479 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 480 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 481 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 482 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 483 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 484 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 485 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 486 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 487 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 488 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 489 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 490 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 491 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 492 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 493 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 494 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 495 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 496 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 497 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 498 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 499 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 500 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 501 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 502 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 503 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 504 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 505 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 506 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 507 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 508 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 509 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 510 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 511 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 512 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 513 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 514 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 515 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 516 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 517 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 518 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 519 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 520 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 521 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 522 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 523 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 524 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 525 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 526 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 527 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 528 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 529 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 530 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 531 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 532 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 533 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 534 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 535 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 536 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 537 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 538 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 539 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 540 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 541 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 542 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 543 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 544 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 545 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 546 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 547 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 548 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 549 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 550 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 551 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 552 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 553 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 554 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 555 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 556 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 557 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 558 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 559 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 560 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 561 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 562 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 563 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 564 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 565 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 566 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 567 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 568 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 569 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 570 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 571 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 572 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 573 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 574 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 575 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 576 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 577 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 578 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 579 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 580 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 581 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 582 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 583 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 584 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 585 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 586 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 587 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 588 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 589 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 590 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 591 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 592 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 593 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 594 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 595 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 596 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 597 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 598 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 599 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 600 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 601 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 602 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 603 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 604 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 605 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 606 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 607 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
