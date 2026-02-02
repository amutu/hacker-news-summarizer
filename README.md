# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-02.md)

*最后自动更新时间: 2026-02-02 20:36:29*
## 1. Codex应用

**原文标题**: The Codex App

**原文链接**: [https://openai.com/index/introducing-the-codex-app/](https://openai.com/index/introducing-the-codex-app/)

**《Codex应用介绍》摘要**

OpenAI的文章介绍了Codex应用，这是一款为展示其Codex AI系统能力而构建的实验性应用程序。Codex是驱动GitHub Copilot的AI模型，擅长将自然语言转化为代码。

该应用的主要目的是作为一个**公开演示和研究工具**，让用户能直接与Codex交互以生成软件。它拥有一个简洁的界面，用户可以输入英文指令（例如："创建一个带有显示'你好'按钮的网页"），并实时看到Codex生成相应代码。该应用支持多种编程语言和框架，包括JavaScript、Python和HTML。

文章要点包括：
*   **展示潜力：** 该应用并非商业产品，而是展示AI如何协助编程任务的范例，从创建简单网站到小型游戏。
*   **研究重点：** OpenAI发布此应用旨在收集用户反馈，研究人们如何与AI编程助手互动，这将为未来发展提供参考。
*   **承认局限性：** 文章指出，Codex有时会产生错误或无意义的代码，强调它最好作为经验丰富的开发者的工具使用，以便审查和编辑其输出。
*   **更广阔愿景：** 此演示是OpenAI探索AI如何增强人类创造力和生产力、降低软件创作门槛的一部分。

本质上，Codex应用是一个互动性的公开实验，它展示了当前AI辅助编程的现状、其充满希望的潜力以及现存的局限性。

---

## 2. 入侵Moltbook

**原文标题**: Hacking Moltbook

**原文链接**: [https://www.wiz.io/blog/exposed-moltbook-database-reveals-millions-of-api-keys](https://www.wiz.io/blog/exposed-moltbook-database-reveals-millions-of-api-keys)

**摘要：**

Moltbook——一个面向AI智能体的病毒式社交网络——因Supabase数据库配置不当被发现存在严重安全漏洞。安全研究人员在其客户端JavaScript代码中发现了暴露的API密钥，使得未经认证的用户能够对完整生产数据库进行读写操作。

泄露数据包含150万个智能体身份验证令牌、超过3.5万个用户邮箱地址及私密消息，其中部分消息还涉及OpenAI等第三方API密钥。虽然该平台宣称拥有150万注册智能体，但数据库仅显示约1.7万人类所有者，表明大多数“智能体”实为人类操作的机器人。

除数据泄露外，攻击者本可劫持任意账户、编辑或篡改所有平台帖子，并操控AI智能体接收的内容。该漏洞源于行级安全策略缺失，这是AI辅助快速开发的“氛围编程”应用中常见的疏忽。

Moltbook团队在收到通知后数小时内通过多次迭代修复完成了数据库加固。此事件揭示了在快速发展的人工智能生态中，开发速度超越安全部署所带来的系统性风险，同时凸显了AI驱动开发工具需内置自动化安全默认配置的迫切性。

---

## 3. 托德·C·米勒——Sudo维护者超过30年

**原文标题**: Todd C. Miller – Sudo maintainer for over 30 years

**原文链接**: [https://www.millert.dev/](https://www.millert.dev/)

托德·C·米勒是安全工具 **sudo** 的长期维护者，担任这一角色已超过30年。本页面的主要目的是宣布他**正在积极寻求赞助方**，以资助 sudo 的持续维护与未来发展。他邀请有意向的个人或组织就赞助事宜与他联系。

米勒还提及了他参与 **OpenBSD** 项目的情况，并指出他在该项目的活跃度较以往有所下降。此外，他列举了以往对其他项目的重要贡献，特别是 **ISC cron**。

本页面以简短且不定期更新的个人说明形式呈现，作者引导访问者通过网站其他链接获取更实质性的信息。

---

## 4. Nano-vLLM：vLLM风格推理引擎的工作原理

**原文标题**: Nano-vLLM: How a vLLM-style inference engine works

**原文链接**: [https://neutree.ai/blog/nano-vllm-part-1](https://neutree.ai/blog/nano-vllm-part-1)

Nano-vLLM是一个极简的生产级推理引擎，它展示了vLLM等系统背后的核心架构。它通过管理两个关键阶段高效地将提示转换为生成文本：**预填充**（处理输入）和**解码**（生成输出标记）。

其性能依赖于一个采用中心**调度器**的**生产者-消费者模式**。该组件通过批处理请求来分摊GPU开销，平衡固有的**吞吐量与延迟权衡**。**块管理器**通过将序列划分为固定大小的块并启用**前缀缓存**来优化内存——复用常见提示前缀的缓存结果以避免冗余计算。

在执行层面，**模型运行器**负责GPU操作，通过领导者-工作者模式支持跨多GPU的**张量并行**。它利用**CUDA图**在解码步骤中最小化内核启动开销。最后，**采样**步骤对模型逻辑值应用温度参数以选择最终输出标记，从而控制响应的随机性。

该架构将调度、内存管理和计算解耦，为高性能大语言模型服务提供了可扩展的蓝图。

---

## 5. 使用rclone实现网络文件同步速度提升4倍（相较于rsync）（2025年）

**原文标题**: 4x faster network file sync with rclone (vs rsync) (2025)

**原文链接**: [https://www.jeffgeerling.com/blog/2025/4x-faster-network-file-sync-rclone-vs-rsync/](https://www.jeffgeerling.com/blog/2025/4x-faster-network-file-sync-rclone-vs-rsync/)

本文详述了通过从`rsync`切换至`rclone`，在10 Gbps网络上同步大型视频项目文件时实现的显著性能提升。

作者通常的工作流程涉及使用`rsync`将数百个文件（包括许多大小为1-10 GB的文件）从高速NAS同步到本地SSD。尽管硬件速度很高，但由于`rsync`按顺序复制文件，传输速度被限制在约350 MB/秒，同步约59 GB数据需要超过8分钟。

解决方案是采用作者先前仅用于云备份的工具`rclone`。通过使用其`--multi-thread-streams=32`选项，`rclone`实现了并行文件传输。这一简单调整使得网络连接能够以满速1 GB/秒运行。

最终，相同的数据传输仅需略多于2分钟即可完成——比`rsync`快了约**4倍**。作者指出，若仅同步少量已更改文件，两种工具表现相近，因为目录扫描时间相当。而速度的大幅提升完全得益于`rclone`能够同时传输多个大文件，从而充分利用了可用网络带宽。

---

## 6. 通过游戏竞技场推进人工智能基准测试

**原文标题**: Advancing AI Benchmarking with Game Arena

**原文链接**: [https://blog.google/innovation-and-ai/models-and-research/google-deepmind/kaggle-game-arena-updates/](https://blog.google/innovation-and-ai/models-and-research/google-deepmind/kaggle-game-arena-updates/)

谷歌DeepMind正在Kaggle上扩展其Game Arena基准测试平台，以评估AI模型在更复杂的现实场景中的表现。该平台最初专注于国际象棋以测试战略推理能力，现在引入了两款新游戏：狼人杀和扑克。

狼人杀是一款社交推理游戏，旨在测试AI在模糊情境中导航、沟通、谈判以及通过自然语言识别欺骗的能力——这些技能对未来AI助手至关重要。扑克则挑战模型管理风险和量化不确定性的能力，要求它们推断隐藏信息并适应对手的策略。

这些游戏作为受控环境，用于衡量AI在社交动态和不完全信息下决策等领域的进展。它们也充当安全研究的沙盒，允许开发者在低风险环境中研究操纵等行为。排行榜显示，谷歌最新的Gemini模型目前在性能上处于领先地位。

为庆祝平台上线，谷歌DeepMind将于2月2日至4日举办直播锦标赛，邀请国际象棋和扑克领域的专家进行解说，届时顶尖AI模型将同台竞技。

---

## 7. 地质学家可能已解开格林河“逆流而上”路径之谜

**原文标题**: Geologists may have solved mystery of Green River's 'uphill' route

**原文链接**: [https://phys.org/news/2026-01-geologists-mystery-green-river-uphill.html](https://phys.org/news/2026-01-geologists-mystery-green-river-uphill.html)

**《地质学家或已解开格林河“逆坡而上”之谜》摘要**

地质学家对一个长期谜题提出了新的解释：为何犹他州格林河的一段河道看似“逆坡而上”，与区域地形坡度相悖。这条河流穿越尤因塔山脉，似乎违背重力原理，从海拔较低的盆地流入了海拔较高的山脉。

传统理论认为，河流在山脉缓慢抬升过程中保持了原有河道（称为“先成河”）。然而，新研究对此提出了挑战。

该研究的关键发现是，格林河的河道并非先成，而是**叠置河**。研究人员提出，该河道形成时间要晚得多，约在500万至1200万年前，当时河流在一片广阔平缓的沉积岩层（尤因塔盆地地层）上确立流向，该岩层曾完全覆盖下方的古老山脉。随着河流向下切割这层沉积覆盖物，最终触及并“锁定”下方更坚硬的山脉基岩，从而继承了如今看似异常的河道。随后的侵蚀作用移除了周围的沉积岩层，使河流暴露出来，呈现出我们今天所见到的横穿抬升山脉的景象。

这一叠置模型更好地解释了该河相对年轻的峡谷年龄及其与基岩区域褶皱的一致性。研究表明，河流并非早于山脉抬升形成，而是受一层现已消失、掩盖了真实地形的地质层引导，从而解决了这一表象上的矛盾。

---

## 8. 64位可表示的最大数字

**原文标题**: The largest number representable in 64 bits

**原文链接**: [https://tromp.github.io/blog/2026/01/28/largest-number-revised](https://tromp.github.io/blog/2026/01/28/largest-number-revised)

本文探讨了64位可表示的最大数值，超越标准数据类型，考虑不同计算模型中的程序。

最大的64位无符号整数是2^64 - 1（约1.8×10^19），而64位双精度浮点数可达约1.8×10^308。然而，若将64位解释为程序，则可能表示远大于此的数值。

在图灵机中，繁忙海狸函数BB(n)定义了n状态停机机器的最大步数。一个6状态机器可容纳于64位中，但BB(6)未知且其数值极其巨大，尽管可能小于阿克曼函数Ackermann(9,9)。

作为函数式编程基础的λ演算允许更高效的编码。一个49位λ项（“梅洛数”）已超过葛立恒数，而一个61位λ项（“w218”）则更为庞大，利用了快速增长层级。

文章比较了衡量λ项输出大小的“函数式繁忙海狸”（BBλ）与经典BB函数。由于λ演算卓越的可编程性，BBλ仅用少得多的位数就实现了类似的巨大增长率，这与编程图灵机的繁琐性形成对比。这引发了一个问题：尽管效率低下，为何图灵机仍是此类理论极限的标准模型？

---

## 9. 美国环保署推进农民维修权

**原文标题**: EPA Advances Farmers' Right to Repair

**原文链接**: [https://www.epa.gov/newsreleases/epa-advances-farmers-right-repair-their-own-equipment-saving-repair-costs-and](https://www.epa.gov/newsreleases/epa-advances-farmers-right-repair-their-own-equipment-saving-repair-costs-and)

2026年2月2日，美国环境保护署（EPA）发布指南，明确《清洁空气法案》（CAA）支持农民和设备所有者自行维修非道路柴油设备的权利。指南指出，制造商不能再以《清洁空气法案》的反篡改条款为由，限制维修工具或软件的获取。

此前，制造商曾将该法律解读为禁止其分享必要的诊断工具，迫使农民只能通过授权经销商进行维修。这导致维修成本上升和延误，常常促使农民继续使用他们能够自行维修但更老旧、环保性较差的设备。

环保署澄清，为“维修目的”恢复设备功能时，临时停用排放控制系统是法律允许的。这适用于选择性催化还原和柴油尾气处理液（DEF）系统等技术。此举并未修改法律或削弱排放标准，而是申明《清洁空气法案》不应成为及时、经济维修的障碍。

该指南应约翰迪尔公司的请求发布，被特朗普政府视为农民的胜利，将为他们节省开支并增强自主性。环保署表示，此举通过鼓励使用更新、更清洁的设备，既支持了农民，也符合该机构的环境保护使命。

---

## 10. 为何软件股遭受重创

**原文标题**: Why software stocks are getting pummelled

**原文链接**: [https://www.economist.com/business/2026/02/01/why-software-stocks-are-getting-pummelled](https://www.economist.com/business/2026/02/01/why-software-stocks-are-getting-pummelled)

无法访问文章链接。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 2 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 3 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 4 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 5 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 6 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 7 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 8 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 9 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 10 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 11 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 12 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 13 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 14 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 15 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 16 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 17 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 18 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 19 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 20 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 21 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 22 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 23 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 24 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 25 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 26 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 27 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 28 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 29 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 30 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 31 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 32 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 33 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 34 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 35 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 36 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 37 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 38 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 39 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 40 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 41 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 42 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 43 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 44 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 45 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 46 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 47 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 48 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 49 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 50 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 51 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 52 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 53 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 54 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 55 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 56 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 57 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 58 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 59 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 60 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 61 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 62 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 63 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 64 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 65 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 66 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 67 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 68 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 69 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 70 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 71 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 72 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 73 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 74 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 75 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 76 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 77 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 78 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 79 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 80 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 81 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 82 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 83 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 84 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 85 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 86 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 87 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 88 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 89 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 90 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 91 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 92 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 93 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 94 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 95 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 96 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 97 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 98 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 99 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 100 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 101 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 102 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 103 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 104 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 105 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 106 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 107 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 108 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 109 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 110 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 111 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 112 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 113 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 114 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 115 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 116 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 117 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 118 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 119 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 120 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 121 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 122 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 123 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 124 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 125 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 126 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 127 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 128 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 129 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 130 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 131 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 132 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 133 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 134 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 135 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 136 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 137 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 138 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 139 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 140 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 141 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 142 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 143 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 144 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 145 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 146 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 147 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 148 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 149 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 150 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 151 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 152 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 153 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 154 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 155 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 156 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 157 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 158 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 159 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 160 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 161 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 162 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 163 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 164 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 165 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 166 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 167 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 168 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 169 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 170 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 171 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 172 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 173 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 174 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 175 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 176 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 177 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 178 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 179 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 180 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 181 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 182 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 183 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 184 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 185 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 186 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 187 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 188 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 189 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 190 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 191 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 192 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 193 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 194 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 195 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 196 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 197 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 198 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 199 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 200 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 201 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 202 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 203 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 204 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 205 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 206 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 207 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 208 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 209 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 210 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 211 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 212 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 213 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 214 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 215 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 216 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 217 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 218 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 219 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 220 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 221 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 222 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 223 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 224 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 225 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 226 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 227 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 228 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 229 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 230 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 231 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 232 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 233 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 234 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 235 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 236 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 237 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 238 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 239 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 240 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 241 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 242 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 243 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 244 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 245 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 246 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 247 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 248 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 249 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 250 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 251 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 252 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 253 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 254 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 255 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 256 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 257 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 258 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 259 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 260 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 261 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 262 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 263 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 264 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 265 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 266 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 267 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 268 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 269 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 270 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 271 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 272 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 273 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 274 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 275 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 276 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 277 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 278 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 279 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 280 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 281 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 282 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 283 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 284 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 285 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 286 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 287 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 288 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 289 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 290 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 291 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 292 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 293 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 294 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 295 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 296 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 297 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 298 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 299 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 300 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 301 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 302 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 303 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 304 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 305 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 306 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 307 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 308 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 309 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 310 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 311 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 312 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 313 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 314 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 315 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 316 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 317 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
