# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-08-04.md)

*最后自动更新时间: 2026-08-04 20:47:23*
## 1. Show HN：简单算法与色彩空间生成多样化肤色

**原文标题**: Show HN: Simple algorithm and color space to generate diverse skin tones

**原文链接**: [https://toneyalexander.github.io/inclusive-color-space/](https://toneyalexander.github.io/inclusive-color-space/)

本文介绍了一个项目，旨在为数字工具中生成多样化的人类肤色定义一个简单、包容的色彩空间。作者手动将许多RGB颜色标记为合理的肤色，然后使用主成分分析将数据转换为更易于处理的PCA空间。接着，他们手动将球面方程拟合到数据云上，创建了RGB与新的TUV色彩空间之间的变换。文中提供了程序化生成肤色颜色的示例代码。

由此产生的颜色选择器具有三个直观的组成部分：T（深/浅）、U（潮红/赭色）和V（冷/暖）。作者强调这项工作“足够好”，并非权威，并列出了局限性：真实皮肤受生物学、光照、健康状况和显示差异的影响。他们还包含一个人文部分，讨论种族主义、肤色主义以及Nyma Tang的视频和Humanae摄影项目等资源。总体而言，该项目旨在弥合少数预设色调与数百万任意颜色之间的差距，为角色创建者、数字艺术和包容性色彩工具提供一个实用的起点。

---

## 2. Mistral的Shieldstral：用于多模态审核的3B开源权重模型

**原文标题**: Mistral's Shieldstral: 3B open-weights model for multimodal moderation

**原文链接**: [https://mistral.ai/news/shieldstral/](https://mistral.ai/news/shieldstral/)

Mistral 发布了 **Shieldstral**，这是一款采用 Apache 2.0 许可证的 3B 开放权重多模态安全分类器。它在文本安全方面超越了规模高达其 7 倍的开放护栏模型，并在多模态审核方面达到了新的最先进水平。

与传统采用固定危害分类体系的护栏模型不同，Shieldstral 将审核视为一项**策略自适应问答任务**。在推理时，用户提供一条自然语言策略查询（例如"该内容是否宣扬暴力？"）以及一份文档——文本、图像或两者兼有。模型从是/否 logits 输出经过校准的安全评分，从而支持按置信度进行阈值设定或排序。这一统一接口涵盖提示分类、响应审核、拒答检测和毒性检测，无需重新训练即可适应新策略。

主要亮点：
- **性能**：在文本安全、拒答检测、策略适应性和多模态基准测试中，达到或超越规模高达其 7 倍的模型。
- **效率**：可在单块 16GB NVIDIA GPU 上运行。
- **数据策略**：将带有冲突标签的异构公开数据集转换为统一的指令-查询-文档格式；严格程度按数据源进行校准。
- **判别优于记忆**：对比训练对教会模型区分相似策略，从而提升对未见过的用户自定义策略的泛化能力。
- **多模态基础**：使用通用图像数据集、查询增强和视觉-语言重排序来补充有限的视觉安全数据，以减少错误标注。
- **模型合并**：通过 SLERP 合并 LoRA 微调检查点，以保持校准、策略适应性和指令遵循能力。
- **基于 Forge 构建**：Mistral 的训练平台负责处理基础设施、数据和分布式训练。

Shieldstral 现已提供下载，未来的工作将聚焦于多语言覆盖、长文档鲁棒性和更广泛的多模态安全。

---

## 3. Waymo – 达拉斯对所有人开放

**原文标题**: Waymo – Dallas Open to All

**原文链接**: [https://waymo.com/blog/shorts/dallas-open-to-all/](https://waymo.com/blog/shorts/dallas-open-to-all/)

Waymo 现已向达拉斯的所有人开放：从今天起，任何人都可以下载 Waymo 应用并预约一次完全自动驾驶的行程。自二月份推出以来，该服务已迎来近15万名来自兴趣名单的乘客。此次扩展不仅让达拉斯居民可以搭乘 Waymo 办理事务、通勤和夜间外出，也让游客和访客能够使用。

Waymo 正在达拉斯爱田机场航站楼继续进行完全自动驾驶测试，计划很快为那里的旅客提供服务。它还将开始在达拉斯高速公路上进行完全自动驾驶测试——这被描述为向公众乘客开放这些路线之前的最后一步。

该公司强调了社区的支持，并引用了德克萨斯州癫痫基金会首席执行官克里斯·贾斯特尔的话，称 Waymo 是对于因医疗状况而限制驾驶的人们来说具有变革性的一步。该合作旨在扩大全德克萨斯州安全、独立的出行选择。

文章最后指出，在达拉斯乘车很简单：只需下载 Waymo 应用即可出发。

---

## 4. Hop.earth – 基于OpenStreetMap的赛车游戏

**原文标题**: Hop.earth – OpenStreetMap based car racing game

**原文链接**: [https://hop.earth/?server=lkhr7&route=fQ5nuu9R](https://hop.earth/?server=lkhr7&route=fQ5nuu9R)

Hop.earth是一款基于OpenStreetMap的赛车游戏，玩家可以在真实世界的地点展开竞速。游戏使用来自Copernicus DEM（COP-DEM-GLO-30）、IGN RGE ALTI®和CNIG LIDAR的高程与地形数据，致谢EU/ESA/IGN/CNIG。

---

## 5. Warp Agent CLI

**原文标题**: The Warp Agent CLI

**原文链接**: [https://www.warp.dev/blog/introducing-the-warp-agent-cli-coding-agent](https://www.warp.dev/blog/introducing-the-warp-agent-cli-coding-agent)

Warp Agent 现已作为独立 CLI 提供，可在任何终端中使用——Ghostty、iTerm 2、VS Code、Windows Terminal 等等。它是一个多模型、成本优化的编程代理，内置前沿模型和开放权重模型，并支持基于任务复杂度的自动路由以及自定义模型路由器。

该 CLI 基于 Warp 的终端基础设施构建，原生支持代理会话的多路复用，从而实现超越其他 CLI 代理的能力：

- 持久化会话：在会话中途切换目录，并可在远程机器上运行代理，无需安装远程二进制文件。
- 全屏/交互式应用控制：代理可以驱动 sqlite、python、gdb、htop、vim 等应用。
- 无缝输入：使用 `!` 执行 shell 命令，并具备自然语言检测功能，可自动区分命令与提示。
- Tab 补全：在任何终端中提供 Warp 旗舰级的参数/标志建议。

对于高级工作流，它支持多代理编排和云代理。它可以委派给子代理——包括 Claude Code 和 Codex 等其他框架——并将 CLI 会话移交给云端，以便工作可以从网页端继续。

快速开始：通过 curl（Mac/Linux）或 PowerShell（Windows）安装。推理选项包括 Warp 订阅（每月 18 美元起）、按需积分（10 美元起），或自带 API 密钥/OpenAI 兼容端点/SuperGrok 登录。

---

## 6. 美国在伊朗战争期间使用了“几乎所有”远程精确导弹

**原文标题**: U.S. used 'virtually all' of its long-range precision missiles during Iran war

**原文链接**: [https://www.cnbc.com/2026/08/04/us-has-used-virtually-all-of-its-long-range-precision-missiles-report.html](https://www.cnbc.com/2026/08/04/us-has-used-virtually-all-of-its-long-range-precision-missiles-report.html)

据报道，据三位熟悉相关数据的匿名消息人士透露，美国军方在与伊朗长达五个月的战争中已使用了“几乎所有”远程精确导弹——主要是陆军战术导弹系统（ATACMS）和精确打击导弹（PrSM）。这引发了人们对未来冲突（包括针对中国或俄罗斯的冲突）战备能力的担忧。

这些远程地对地弹药每枚造价超过100万美元，能够从安全距离实施精确打击。美国供应的ATACMS在乌克兰也发挥了关键作用。PrSM是较新型、更先进的ATACMS替代品。消息人士拒绝说明剩余数量。

白宫援引特朗普总统的话称，美国的弹药“比世界上任何国家都多得多”，且产量比以往任何时候都高。分析人士同意产量处于创纪录水平，但同时警告称，对于一场持久战而言，供应可能仍显不足。洛克希德·马丁公司和雷神公司未予回应；五角大楼发言人表示，军方拥有“所需的一切”。

据报道，此次消耗反映了政府选择避免风险更高的有人驾驶飞机打击。PrSM的库存本已偏低，因为该系统的列装时间相对较短。此外，防御性武器也遭到大量消耗：根据战略与国际研究中心（CSIS）的一份报告估计，约65%的“爱国者”拦截弹和至少38%的“萨德”（THAAD）拦截弹已被消耗，而一位消息人士称，“战斧”巡航导弹库存减少近一半。消息人士称，这些数字与美国内部数据相符。

军事顾问曾就库存水平向特朗普发出警告，据报道这影响了他不发动另一场大规模攻势的决定，不过一名美国官员将这一选择归因于海湾国家施加的压力。这场冲突于2月与以色列一同发动，特朗普未寻求国会授权此次战争。

---

## 7. 为什么有些人修剪草坪比别人做得好？

**原文标题**: Why some people mow a lawn better than others

**原文链接**: [https://pudding.cool/2026/06/mow/](https://pudding.cool/2026/06/mow/)

文章描述了一项在线实验，30,954人在虚拟草坪上割草，以研究人类在覆盖路径规划中的效率——这是一个与旅行商问题相关的问题。在一块49格的小草坪上，52%的玩家与最优路径的差距在五步以内，16%的玩家达到了完美，中位数效率为91%。人们找到了14,589条不同路线，其中包括全部12种完美解。

成功的关键在于识别出死胡同区域，并在那里收尾，以避免回溯。最优秀的割草者会在关键的岔路口停下来规划，而较差的割草者则快速通过，只在陷入困境时才作出反应。这种模式在更大、更杂乱的草坪上依然成立：即使问题规模增大，效率仍保持在90%左右，这表明草坪的结构比大小更重要。人类通过将草坪分解成较小的区域并逐步解决来处理复杂性。

令人惊讶的是，总思考时间与表现并不相关——时间对结果差异的解释度不足5%。重要的是玩家暂停的*时机*：表现最好的人会在决策早期和关键决策点上花时间，然后在开阔区域轻松通过。这反映了有效的启发式策略：将注意力分配给重要的决策，而忽略其余部分。文章还指出，最优解有时需要回溯，而研究使用了穷举算法来确定效率。

---

## 8. DeepSeek V4 Flash在单个AMD MI300X上运行

**原文标题**: DeepSeek V4 Flash on a Single AMD MI300X

**原文链接**: [https://github.com/ryanzhou/deepseek-v4-flash-mi300x](https://github.com/ryanzhou/deepseek-v4-flash-mi300x)

本文介绍了一种生产就绪配置，用于在单块 AMD MI300X GPU（192 GB HBM3，5.3 TB/s 带宽）上运行 3040 亿参数的 DeepSeek-V4-Flash-0731 模型，无需权重量化或卸载。该技术栈采用摘要固定的 vLLM ROCm 夜间版，集成 AITER 内核，并附带正确性补丁、调优表和 Docker Compose 文件。

关键结果：单流解码 168.6 token/秒，预填充约 7.9–8.5K token/秒，8 路并发流聚合吞吐 542 token/秒，64 路流 830 token/秒，并验证了 256K 上下文。权重占用 HBM 156.67 GiB，为 20 GB GPU KV 池和 96 GiB CPU 卸载层留出空间。

主要技术挑战在于 MI300X 的 AMD/Graphcore FNUZ FP8 格式，它不同于 MI325X 及更新 GPU 上使用的 OCP 标准 FP8——错误解读会导致两倍的缩放误差。该仓库提供了修复此问题的 overlay，此外还修复了 MXFP4 MoE 路由缺陷（填充通道损坏）、DSpark-7 草稿模型的因果推测验证、CPU↔GPU KV 同步，以及缺失的 gfx942 形状 AITER GEMM 调优表。

性能调优实现了：AITER 调优使解码提升 +42–62%，融合 SiLU 和快速路由带来 +64% 提升，路由内核延迟从每层 42.6 微秒降至 11.9 微秒。采用 2,048 token 调度器预算配合 1,024 token 预填充上限，改善了延迟隔离，将长预填充后的短请求 TTFT 从 8.2 秒降至 0.5 秒。

运维说明：HBM 余量紧张（预热后 204.5/205.8 GB），重启后需预热内核，并强调在吞吐之外的正确性测试（工具调用、BFCL、长上下文召回）。该技术栈采用 Apache-2.0 许可证，附有上游差异文档以保证可复现性。

---

## 9. 斯蒂芬·沃尔弗拉姆的妻子去世

**原文标题**: Stephen Wolfram's Wife Has Died

**原文链接**: [https://writings.stephenwolfram.com/2026/08/in-memory-of-my-wife-elise-cawley-1961-2026-with-thanks-for-36-wonderful-years/](https://writings.stephenwolfram.com/2026/08/in-memory-of-my-wife-elise-cawley-1961-2026-with-thanks-for-36-wonderful-years/)

无法访问文章链接。

---

## 10. 当AI基准测试达到平台期：基准饱和的系统性研究

**原文标题**: When AI Benchmarks Plateau: A Systematic Study of Benchmark Saturation

**原文链接**: [https://arxiv.org/abs/2602.16763](https://arxiv.org/abs/2602.16763)

这篇论文发表于ICML 2026，由Mubashara Akhtar与36位合著者共同撰写，系统性地考察了AI评估中的“基准饱和”现象——即基准测试在模型间不再具有区分度，从而失去其效用。作者对基准饱和进行了定义，并利用与模型性能趋势相关的14项属性，分析了60个语言模型基准测试。

主要发现：近半数被研究的基准测试呈现出饱和迹象，且随着基准测试“年龄”的增长，饱和率也在上升。值得注意的是，采用专家精选数据的基准测试对饱和更具抵抗力，而公开测试数据的可用性似乎并不能防止饱和。作者认为，审慎的设计选择，尤其是专家参与基准构建，能够延长基准测试的使用寿命，并支持更持久的AI评估实践。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 2 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 3 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 4 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 5 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 6 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 7 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 8 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 9 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 10 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 11 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 12 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 13 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 14 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 15 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 16 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 17 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 18 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 19 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 20 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 21 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 22 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 23 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 24 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 25 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 26 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 27 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 28 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 29 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 30 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 31 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 32 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 33 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 34 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 35 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 36 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 37 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 38 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 39 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 40 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 41 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 42 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 43 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 44 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 45 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 46 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 47 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 48 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 49 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 50 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 51 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 52 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 53 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 54 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 55 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 56 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 57 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 58 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 59 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 60 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 61 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 62 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 63 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 64 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 65 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 66 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 67 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 68 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 69 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 70 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 71 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 72 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 73 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 74 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 75 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 76 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 77 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 78 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 79 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 80 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 81 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 82 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 83 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 84 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 85 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 86 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 87 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 88 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 89 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 90 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 91 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 92 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 93 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 94 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 95 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 96 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 97 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 98 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 99 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 100 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 101 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 102 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 103 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 104 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 105 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 106 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 107 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 108 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 109 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 110 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 111 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 112 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 113 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 114 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 115 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 116 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 117 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 118 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 119 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 120 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 121 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 122 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 123 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 124 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 125 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 126 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 127 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 128 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 129 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 130 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 131 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 132 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 133 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 134 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 135 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 136 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 137 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 138 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 139 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 140 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 141 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 142 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 143 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 144 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 145 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 146 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 147 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 148 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 149 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 150 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 151 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 152 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 153 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 154 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 155 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 156 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 157 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 158 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 159 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 160 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 161 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 162 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 163 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 164 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 165 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 166 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 167 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 168 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 169 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 170 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 171 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 172 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 173 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 174 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 175 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 176 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 177 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 178 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 179 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 180 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 181 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 182 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 183 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 184 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 185 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 186 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 187 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 188 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 189 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 190 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 191 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 192 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 193 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 194 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 195 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 196 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 197 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 198 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 199 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 200 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 201 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 202 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 203 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 204 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 205 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 206 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 207 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 208 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 209 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 210 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 211 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 212 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 213 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 214 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 215 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 216 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 217 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 218 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 219 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 220 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 221 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 222 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 223 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 224 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 225 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 226 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 227 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 228 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 229 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 230 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 231 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 232 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 233 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 234 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 235 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 236 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 237 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 238 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 239 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 240 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 241 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 242 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 243 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 244 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 245 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 246 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 247 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 248 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 249 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 250 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 251 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 252 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 253 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 254 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 255 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 256 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 257 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 258 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 259 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 260 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 261 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 262 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 263 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 264 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 265 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 266 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 267 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 268 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 269 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 270 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 271 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 272 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 273 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 274 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 275 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 276 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 277 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 278 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 279 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 280 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 281 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 282 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 283 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 284 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 285 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 286 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 287 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 288 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 289 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 290 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 291 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 292 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 293 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 294 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 295 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 296 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 297 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 298 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 299 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 300 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 301 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 302 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 303 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 304 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 305 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 306 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 307 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 308 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 309 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 310 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 311 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 312 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 313 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 314 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 315 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 316 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 317 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 318 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 319 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 320 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 321 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 322 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 323 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 324 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 325 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 326 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 327 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 328 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 329 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 330 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 331 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 332 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 333 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 334 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 335 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 336 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 337 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 338 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 339 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 340 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 341 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 342 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 343 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 344 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 345 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 346 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 347 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 348 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 349 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 350 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 351 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 352 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 353 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 354 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 355 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 356 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 357 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 358 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 359 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 360 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 361 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 362 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 363 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 364 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 365 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 366 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 367 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 368 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 369 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 370 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 371 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 372 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 373 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 374 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 375 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 376 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 377 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 378 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 379 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 380 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 381 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 382 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 383 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 384 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 385 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 386 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 387 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 388 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 389 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 390 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 391 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 392 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 393 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 394 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 395 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 396 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 397 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 398 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 399 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 400 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 401 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 402 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 403 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 404 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 405 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 406 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 407 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 408 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 409 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 410 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 411 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 412 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 413 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 414 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 415 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 416 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 417 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 418 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 419 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 420 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 421 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 422 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 423 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 424 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 425 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 426 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 427 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 428 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 429 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 430 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 431 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 432 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 433 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 434 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 435 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 436 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 437 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 438 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 439 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 440 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 441 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 442 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 443 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 444 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 445 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 446 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 447 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 448 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 449 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 450 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 451 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 452 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 453 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 454 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 455 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 456 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 457 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 458 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 459 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 460 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 461 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 462 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 463 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 464 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 465 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 466 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 467 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 468 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 469 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 470 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 471 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 472 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 473 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 474 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 475 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 476 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 477 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 478 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 479 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 480 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 481 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 482 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 483 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 484 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 485 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 486 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 487 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 488 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 489 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 490 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 491 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 492 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 493 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 494 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 495 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 496 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 497 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 498 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
