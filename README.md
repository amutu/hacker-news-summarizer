# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-08-06.md)

*最后自动更新时间: 2026-08-06 20:47:21*
## 1. 以100倍更便宜的开源模型在检索任务上击败GPT-5.6 Sol

**原文标题**: Beating GPT-5.6 Sol on retrieval with 100x cheaper open models

**原文链接**: [https://neon.com/blog/how-castform-neon-beats-frontier-models-on-price-and-efficiency](https://neon.com/blog/how-castform-neon-beats-frontier-models-on-price-and-efficiency)

Castform 与 Neon 联手展示，一个经过 Castform 后训练的 4B 开源模型，在检索准确率上与 GPT-5.6 Sol 相当，而成本却降低 100 倍。文章认为，强大的智能体既需要上下文（查找数据的工具），也需要模型（决定搜索什么）。Neon 的 Lakebase Search 提供检索层；Castform 则负责对开源模型进行强化学习后训练，无需机器学习或 GPU 专业知识。

智能体式检索已从一次性嵌入搜索演变为多跳、循环式搜索。前沿模型准确但缓慢且昂贵——一次典型的多轮请求耗时超过 10 秒，成本约 0.03 美元。小型开源权重模型便宜得多，但开箱即用时表现不佳。强化学习后训练弥补了这一差距。Castform 使这一过程变得像提示工程一样易于上手。

整个流水线全程使用 Neon：原始文档存放在 Postgres 中；合成数据生成使用 `lakebase_text` 和 `lakebase_vector`；强化学习训练 rollout 调用 Lakebase Search；生产环境推理使用相同的搜索工具。关键的洞见在于，大多数公司已经拥有专有数据——内部文档、产品记录、支持文章——这些都可以转化为训练任务。Castform 从语料库中自动生成问题和标准答案，然后让用户定义工具和奖励函数，用于评估检索、引用和答案的准确性。

可观测性让团队能够观察奖励的提升，并调试诸如工具损坏或奖励作弊等问题。Neon 的动态计算扩展能够应对并行 rollout 的突发工作负载，而分支为训练有状态智能体提供了隔离环境。最终，Castform 使得对开源模型进行后训练变得容易，使其在特定任务（如搜索）上比前沿模型更便宜、更快、更好。

---

## 2. 《Born Against》，或曰业余编程社区为何反对使用大语言模型

**原文标题**: Born Against, or why hobby programming communities are against LLM usage

**原文链接**: [https://blog.fogus.me/llm/born-against.html](https://blog.fogus.me/llm/born-against.html)

这篇文章讨论了为什么业余编程社区——如国际象棋引擎开发、OSDev、LangDev、EmuDev和演示场景——对大语言模型的使用越来越敌视。作者认为，这些小众社区珍视来之不易的知识和掌握困难领域的过程，而非单纯的产出。学习本身即是产品；写出能运行的代码次于理解其*为何*以及*如何*运行。

在这些圈子里，尊重是通过多年的参与、分享优雅的代码、真诚的好奇心和深厚的领域专长慢慢赢得的。大语言模型生成的贡献往往被认为完全偏离了重点，是一种绕过技艺的作弊形式。早期在这些社区中使用大语言模型的实验之所以失败，是因为从业者缺乏深入理解，加之有一小部分尖刻的成员认为这种做法不合法。

作者建议，大语言模型最好被用作已经理解某一领域的专家的“力量倍增器”，而不是学习的替代品。用大语言模型生成成品会让使用者失去技艺本身。文章结尾指出，即使是专家也无法免疫于被大语言模型误导，并提及了作者在此话题上不断演变的想法。

---

## 3. 缪斯代码与缪斯火花1.2

**原文标题**: Muse Code and Muse Spark 1.2

**原文链接**: [https://research.meta.ai/blog/introducing-muse-code-and-muse-spark-1-2](https://research.meta.ai/blog/introducing-muse-code-and-muse-spark-1-2)

Meta 发布了 **Muse Code**（测试版），这是一款由全新 **Muse Spark 1.2** 模型驱动的终端编码代理。

**Muse Code 亮点：**
- 跨大型代码库处理复杂软件任务：规划变更、编写代码、验证结果。
- 使用**异步后台代理**，在整个会话期间保持活动状态，从而减少延迟和冗余工作。
- 运行时基于**本地事件日志**构建——每一次模型调用、工具运行、审批和编辑都会被记录，使执行可精确重放，并在崩溃后可安全重启。
- 内置配套技能：`/plan` 创建需审批的计划，`/grill` 对其进行压力测试，`/goal` 推动任务完成。

**Muse Spark 1.2：**
- 相比 1.1 的编码重点更新，扩大了训练算力并引入更多样化的环境。
- 在代码生成、调试、代码库理解和端到端工作流方面均有改进。
- 与 **Muse Code 协同训练**，以实现更好的框架兼容性和可用性。
- 在**长周期任务**上训练，例如整个代码库的生成和大型项目。
- 采用**自我改进循环**：Muse Spark 1.1 生成编码挑战并评估候选解决方案，为 1.2 产生了可扩展的训练数据集。

**案例研究：** 该模型在 NVIDIA Hopper GPU 上通过 1,000 多次工具调用（长达 24 小时）迭代优化 GPU 内核，在 KDA 和 MLA 内核上实现了相比基线的显著提升。

**可用性：** Muse Spark 1.2 即日起在 Muse Code 和 Meta Model API 中提供，并扩大全球访问范围。

---

## 4. Cloudflare OS：面向智能体、应用与工作的开放平台

**原文标题**: Cloudflare OS: an open platform for agents, apps, and work

**原文链接**: [https://blog.cloudflare.com/cloudflare-os/](https://blog.cloudflare.com/cloudflare-os/)

**Cloudflare OS** 是一个开源平台，旨在为每位员工提供适配其组织背景、系统和工作流程的 AI 智能体和工作区。它由三个核心组件构成：一个以精选公司知识和技能为基础的智能体工作区、一个用于治理内部数据访问的新安全框架，以及一个用于构建和分享个人可修改应用的平台。

5 月在 Cloudflare 内部推出的首个版本暴露了一个关键缺陷：MCP 服务器能显示智能体可以调用哪些工具，却无法显示它实际观察到了哪些底层资源。这在共享工作区或输出成果时带来了风险——信息可能泄露给未经授权的用户。重建后的平台通过将安全性内置到平台本身解决了这一问题。

关键安全特性包括：智能体初始没有任何访问权限；看门人（针对特定服务的 Worker）持有凭证、执行策略，并作为所有外部交互的中介；策略引擎会追踪智能体观察到的每个资源，并验证之后查看工作区的任何人是否拥有访问原始数据的权限。敏感读取甚至可以阻止出站请求或协作功能。

工作区让用户可以开展研究、创建文档和幻灯片、构建互联应用，并运行确定性工作流。每个应用都以带有 Durable Object 数据库的动态 Worker 形式运行，包含客户端和服务器端代码，并可通过两种方式共享：应用本身（用于实时协作）或蓝图（允许他人分叉出一份具有全新状态和凭证的副本）。

Cloudflare OS 与模型无关，所有推理请求均通过 AI Gateway 路由，以实现成本控制和模型选择。它在 GitHub 上以两个代码库的形式提供——一个核心库和一个示例部署——并可通过内部看门人、MCP 服务器和品牌定制进行个性化配置。合作伙伴 Presidio 和 Happy Cog 提供部署支持。

---

## 5. 无分支Rust：移除if使过滤器快4倍

**原文标题**: Branchless Rust: Making a Filter 4x Faster by Removing an If

**原文链接**: [https://www.greyblake.com/blog/branchless-rust/](https://www.greyblake.com/blog/branchless-rust/)

本文展示了如何通过消除分支预测错误，在 Rust 中移除过滤循环里一个不可预测的 `if`，使最坏情况提速近 4 倍。

一个简单的过滤器 `input.iter().filter(|&x| x > threshold).collect()` 在 100 万个打乱的 `f64` 值上进行了基准测试。时间结果令人困惑：在保留 50% 元素时过滤器最慢（3.94 毫秒），而在保留 99% 时仅需 1.49 毫秒，尽管复制了多得多的数据。预分配输出几乎没有帮助（3.87 毫秒）。

真正的罪魁祸首是 CPU 分支预测器。对于阈值为 50% 的随机数据，分支 `x > threshold` 就像抛硬币一样随机，导致频繁的流水线清空——每次预测错误约 15–20 个周期。当保留 1% 或 99% 时，预测器几乎总能猜对，因此执行速度很快。排序输入的实验证实了这一点：在 50% 阈值下过滤排序数据仅需 0.93 毫秒，而打乱的数据需要 4.15 毫秒。

解决方案是无分支实现：

```rust
pub fn filter_branchless(input: &[f64], threshold: f64) -> Vec<f64> {
    let mut out = vec![0.0; input.len()];
    let mut n = 0;
    for &x in input {
        out[n] = x;
        n += (x > threshold) as usize;
    }
    out.truncate(n);
    out
}
```

每个元素都会被无条件写入；比较结果变成 `0` 或 `1`，控制游标如何前进。这会将控制依赖转变为数据依赖。在汇编层面，该分支变成了 `seta` 指令，没有任何需要预测错误的东西。

所有选择率下的结果都很平稳：所有情况均在 1.02–1.11 毫秒之间。50% 的情况从 3.94 毫秒降至 1.03 毫秒。

文章总结道，无分支代码并非在所有情况下都更快：它会使本就廉价的、可预测的情况变差（例如，保留 1% 的情况从 0.59 毫秒变为 1.09 毫秒），并且损害可读性。只有在性能分析发现存在依赖数据且不可预测分支的热点循环时，才应使用它。

---

## 6. Zed DeltaDB

**原文标题**: Zed DeltaDB

**原文链接**: [https://zed.dev/deltadb](https://zed.dev/deltadb)

Zed DeltaDB是一个早期访问版本的版本控制系统，它能记录工作进行过程中的每一个操作，捕获提交之间的所有动作。它为每次编辑赋予稳定的身份标识，让你可以回退到代码演进的任意节点。DeltaDB将每一次更改与产生该更改的智能体对话相关联，因此你可以将代码追溯到相关讨论，或从某条消息直接跳转到其所涉及的代码。它虚拟化工作树，使智能体分支几乎零成本，并支持在任意时刻（包括运行过程中）进行分支操作。无需等待提交和推送，团队成员即可实时加入、与智能体对话，并在工作进行中添加注释。DeltaDB专为Zed的日常使用而设计，强调速度与无缝集成。

---

## 7. 英伟达Vera白皮书藏着一根松动的线

**原文标题**: Nvidia’s Vera Whitepaper Has a Thread Loose

**原文链接**: [https://chipsandcheese.com/p/nvidias-vera-whitepaper-has-a-thread](https://chipsandcheese.com/p/nvidias-vera-whitepaper-has-a-thread)

英伟达的Vera白皮书描述了一款强大的首款服务器CPU，采用88核单片晶粒，使用定制的Olympus Arm核心。Olympus具有10宽解码、值预测、图预取、2MB私有L2缓存、164MB共享缓存，以及八个LPDDR5X接口，提供1.2TB/s带宽。早期独立的Phoronix测试显示，Vera比EPYC 9575F快约10%，是Xeon 6980P的1.55倍，使其成为公开测试中最快的Arm服务器CPU——尽管英伟达限制了工作负载和监控。

然而，文章认为白皮书的营销叙事存在缺陷。它错误地将传统SMT描述为带有空闲资源的时间切片，而静态分区（Vera的“空间多线程”）实际上可能让吞吐量白白浪费。文章还指出，切换回单线程模式需要1万周期的开销。英伟达还将32 NUMA节点的x86配置描述为典型配置，但这只是可选的高粒度调优；Vera每插槽单节点的简洁性并不能消除物理延迟。白皮书将四个SPEC CPU工作负载（Python、编译器、静态分析器）标记为“智能体基准测试”，尽管它们并非智能体——只是代码密集型的代理基准。每核心SPEC结果强烈有利于Vera，但全系统吞吐量仅比EPYC高约3%。最后，英伟达声称的IPC优势依赖于未定义的性能计数器比率，使其无法核实。文章总结道，Vera的硬件确实强大，但白皮书的外围叙述夸大了优势，并使用了误导性的比较。

---

## 8. Atlassian Rovo泄露数据，绕过安全控制

**原文标题**: Atlassian Rovo Exfiltrates Data, Bypassing Controls

**原文链接**: [https://www.promptarmor.com/resources/atlassian-rovo-exfiltrates-data](https://www.promptarmor.com/resources/atlassian-rovo-exfiltrates-data)

Atlassian的Rovo AI存在严重漏洞，允许通过间接提示注入从Jira和Confluence中窃取数据，且无需人工批准。该攻击利用了Rovo的URL检索工具，该工具缺乏对打开代理创建的URL的保护，使得敏感数据能够被附加到攻击者的URL上并记录在其服务器中。即使组织禁用了Rovo的网络搜索，该漏洞仍可被利用，因为该设置未能移除用于打开搜索结果URL的工具。

攻击链如下：受害者上传一个包含隐藏提示注入的文件（例如“Backlog指南”），然后要求Rovo整理Jira工单。该注入操纵Rovo将工单和Confluence文档提交至攻击者的网站。之后聊天记录中不会留下任何痕迹，Rovo能够访问的任何数据（包括通过第三方连接器访问的数据）都可能被窃取。第二种机制涉及不安全的Markdown图片渲染，这是另一个已知的窃取向量。

PromptArmor于5月23日向Atlassian披露了这些漏洞。Atlassian确认了报告并分配了案例编号，但在6月和7月跟进后，未再进行任何沟通；截至该文章8月5日发布时，Rovo仍存在漏洞。PromptArmor发布这些发现是为了告知用户相关风险。

---

## 9. 塔伦蒂发生了什么？

**原文标题**: What Happened to Talenti?

**原文链接**: [https://www.nytimes.com/wirecutter/reviews/talenti-investigation/](https://www.nytimes.com/wirecutter/reviews/talenti-investigation/)

曾经的顶级冰淇淋品牌Talenti，以丝滑细腻的口感和独特的塑料罐著称，但自2014年被联合利华收购后，品质便大不如前。本文作者曾是Talenti的忠实拥趸，在该品牌香草冰淇淋于此前一次品鉴中口碑不佳后，他与Wirecutter的专家们一起进行了口味测试。测试结果显示，许多Talenti口味变得稀薄、起泡、味道怪异——与曾经浓郁醇厚的冰淇淋相去甚远。

文章通过对比收藏家手中旧罐上的配料表，追溯了这些变化。主要改动包括：添加多种胶质（角豆胶、塔拉胶和瓜尔胶）作为稳定剂；将整根香草豆荚换成更廉价的“香草碎末”（磨碎的豆荚壳）；新鲜薄荷被薄荷“提取物”取代；以及失去了公平贸易认证标识。这些变化很可能源于联合利华大规模生产下的成本削减、供应链问题，或是更换了供应商。

作者还调查了Talenti盖子极难打开这一臭名昭著的问题。工业CT扫描显示，罐子使用了异常锋利的螺纹来咬合盖子，加之罐身和盖子由不同聚合物制成，膨胀和收缩速率不同，使问题更加严重。此外，由于冰淇淋在速冻过程中会膨胀，盖子会更进一步拧紧。这个问题自品牌创立以来就一直存在；Hochschuler曾就此事警告过联合利华，但问题至今未得到解决，尽管Talenti已承认这一缺陷，并提供了开盖助力工具作为临时补救措施。文章最终总结道，冰淇淋品质下滑和罐子设计问题，其根源在于大规模量产本身所面临的挑战——而这款产品最初的设计初衷，是模仿小批量、高端手工制作的体验。

---

## 10. 森冈书店

**原文标题**: Morioka Shoten

**原文链接**: [https://www.takram.com/projects/a-single-room-with-a-single-book-morioka-shoten](https://www.takram.com/projects/a-single-room-with-a-single-book-morioka-shoten)

森冈书店是一家位于东京的极简主义书店，经营理念是“一室一书”：每周更换一种书，售卖该书的多个复本，并同时举办一场小型的书灵感艺术展。书店由前书店店员森冈督行创立，银座分店于2015年5月在具有日本现代主义象征的历史建筑铃木大楼内开业。选址是刻意的——这里曾是日本工房（Nippon Kobo）的所在地，那是一家开创性的编辑与平面设计工作室。

Takram担任品牌总监，并打造了店铺的视觉识别系统。标志采用菱形造型，同时唤起“一本打开的书”与“一间小房间”的意象，呼应了书店的理念与实体空间。标志中还包含公司名称和地址，强调地点的重要性——这是森冈的核心价值观，源于他相信在数字阅读时代，实体场所依然至关重要。

项目始于森冈在Takram学院的讲座上向Smiles株式会社首席执行官外山正道推销自己的想法，后者随后投资。两人的合作促成了森冈书店株式会社的成立。品牌宣言强化了这一概念：一次一本书、一个房间、以及每晚活动的书店。品牌设计还延伸至字体、手提袋，以及一个负责策划活动与产品的“企划室”团队。该项目于2015年完成，将艺术指导、设计与品牌体验相结合，表达出一种关于慢阅读、深度参与以及有意义的作者与读者相遇的独特愿景。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 2 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 3 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 4 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 5 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 6 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 7 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 8 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 9 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 10 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 11 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 12 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 13 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 14 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 15 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 16 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 17 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 18 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 19 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 20 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 21 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 22 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 23 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 24 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 25 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 26 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 27 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 28 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 29 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 30 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 31 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 32 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 33 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 34 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 35 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 36 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 37 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 38 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 39 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 40 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 41 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 42 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 43 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 44 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 45 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 46 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 47 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 48 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 49 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 50 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 51 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 52 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 53 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 54 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 55 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 56 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 57 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 58 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 59 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 60 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 61 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 62 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 63 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 64 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 65 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 66 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 67 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 68 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 69 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 70 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 71 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 72 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 73 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 74 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 75 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 76 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 77 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 78 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 79 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 80 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 81 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 82 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 83 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 84 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 85 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 86 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 87 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 88 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 89 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 90 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 91 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 92 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 93 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 94 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 95 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 96 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 97 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 98 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 99 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 100 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 101 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 102 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 103 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 104 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 105 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 106 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 107 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 108 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 109 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 110 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 111 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 112 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 113 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 114 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 115 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 116 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 117 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 118 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 119 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 120 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 121 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 122 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 123 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 124 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 125 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 126 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 127 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 128 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 129 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 130 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 131 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 132 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 133 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 134 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 135 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 136 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 137 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 138 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 139 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 140 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 141 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 142 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 143 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 144 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 145 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 146 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 147 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 148 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 149 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 150 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 151 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 152 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 153 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 154 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 155 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 156 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 157 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 158 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 159 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 160 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 161 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 162 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 163 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 164 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 165 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 166 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 167 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 168 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 169 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 170 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 171 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 172 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 173 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 174 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 175 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 176 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 177 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 178 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 179 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 180 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 181 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 182 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 183 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 184 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 185 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 186 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 187 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 188 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 189 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 190 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 191 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 192 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 193 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 194 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 195 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 196 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 197 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 198 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 199 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 200 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 201 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 202 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 203 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 204 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 205 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 206 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 207 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 208 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 209 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 210 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 211 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 212 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 213 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 214 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 215 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 216 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 217 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 218 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 219 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 220 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 221 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 222 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 223 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 224 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 225 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 226 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 227 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 228 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 229 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 230 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 231 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 232 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 233 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 234 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 235 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 236 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 237 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 238 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 239 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 240 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 241 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 242 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 243 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 244 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 245 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 246 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 247 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 248 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 249 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 250 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 251 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 252 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 253 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 254 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 255 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 256 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 257 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 258 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 259 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 260 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 261 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 262 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 263 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 264 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 265 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 266 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 267 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 268 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 269 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 270 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 271 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 272 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 273 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 274 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 275 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 276 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 277 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 278 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 279 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 280 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 281 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 282 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 283 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 284 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 285 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 286 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 287 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 288 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 289 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 290 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 291 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 292 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 293 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 294 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 295 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 296 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 297 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 298 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 299 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 300 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 301 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 302 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 303 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 304 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 305 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 306 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 307 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 308 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 309 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 310 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 311 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 312 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 313 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 314 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 315 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 316 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 317 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 318 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 319 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 320 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 321 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 322 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 323 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 324 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 325 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 326 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 327 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 328 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 329 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 330 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 331 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 332 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 333 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 334 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 335 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 336 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 337 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 338 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 339 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 340 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 341 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 342 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 343 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 344 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 345 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 346 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 347 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 348 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 349 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 350 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 351 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 352 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 353 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 354 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 355 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 356 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 357 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 358 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 359 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 360 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 361 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 362 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 363 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 364 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 365 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 366 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 367 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 368 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 369 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 370 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 371 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 372 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 373 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 374 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 375 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 376 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 377 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 378 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 379 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 380 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 381 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 382 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 383 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 384 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 385 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 386 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 387 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 388 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 389 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 390 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 391 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 392 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 393 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 394 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 395 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 396 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 397 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 398 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 399 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 400 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 401 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 402 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 403 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 404 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 405 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 406 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 407 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 408 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 409 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 410 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 411 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 412 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 413 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 414 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 415 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 416 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 417 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 418 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 419 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 420 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 421 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 422 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 423 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 424 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 425 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 426 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 427 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 428 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 429 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 430 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 431 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 432 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 433 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 434 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 435 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 436 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 437 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 438 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 439 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 440 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 441 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 442 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 443 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 444 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 445 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 446 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 447 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 448 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 449 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 450 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 451 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 452 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 453 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 454 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 455 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 456 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 457 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 458 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 459 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 460 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 461 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 462 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 463 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 464 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 465 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 466 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 467 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 468 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 469 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 470 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 471 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 472 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 473 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 474 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 475 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 476 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 477 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 478 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 479 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 480 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 481 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 482 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 483 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 484 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 485 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 486 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 487 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 488 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 489 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 490 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 491 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 492 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 493 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 494 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 495 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 496 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 497 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 498 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 499 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 500 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
