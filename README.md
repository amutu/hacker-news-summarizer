# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-04-08.md)

*最后自动更新时间: 2026-04-08 20:35:19*
## 1. 我将Mac OS X移植到了任天堂Wii上。

**原文标题**: I ported Mac OS X to the Nintendo Wii

**原文链接**: [https://bryankeller.github.io/2026/04/08/porting-mac-os-x-nintendo-wii.html](https://bryankeller.github.io/2026/04/08/porting-mac-os-x-nintendo-wii.html)

本文详细介绍了作者成功将Mac OS X 10.0“猎豹”系统移植到任天堂Wii上的项目。项目从可行性研究开始，确认了Wii搭载的PowerPC 750CL处理器和88MB内存与这一旧版操作系统兼容。作者选择从头编写定制引导程序，以处理硬件初始化、从SD卡加载Mach-O内核，并向内核传递硬编码的设备树。

最初尝试运行内核时系统频繁崩溃，作者通过修改内核二进制文件，在启动序列的特定阶段点亮Wii前面板的LED灯来进行调试。修复内核源代码中的内存映射问题并启用串行调试输出后，系统终于进入“仍在等待根设备”阶段。

为继续推进，作者开始编写IOKit驱动程序，使操作系统能够将Wii的SD卡识别为根文件系统。该项目展现了深入实践的低层系统编程方法，通过解决硬件兼容性、引导流程复杂性、内核补丁和驱动程序开发等挑战，成功在非常规硬件上运行了经典操作系统。

---

## 2. 阅读代码前我必运行的Git命令

**原文标题**: Git commands I run before reading any code

**原文链接**: [https://piechowski.io/post/git-commands-before-reading-code/](https://piechowski.io/post/git-commands-before-reading-code/)

本文概述了作者在阅读代码前会运行的五个诊断性Git命令，用于快速评估项目的健康状况和历史。

关键命令包括：
1.  **文件变更频率：** 识别过去一年中修改最频繁的20个文件，突出潜在的高风险或问题区域。
2.  **贡献者分析：** 按提交次数列出作者，以揭示“巴士因子”风险及团队所有权的变化。
3.  **缺陷热点：** 查找在缺陷修复提交中频繁提及的文件，指示问题代码。
4.  **提交速度：** 按月显示提交数量，可视化项目进展和团队稳定性随时间的变化。
5.  **应急处理：** 搜索回滚或热修复提交，以评估部署信心和危机频率。

核心观点是：交叉对比这些输出结果——尤其是那些既是高变更频率文件又是缺陷热点的部分——能够准确定位代码库中最具风险的部分。这种数据驱动的方法能快速、客观地呈现团队动态、代码质量和项目轨迹，从而在代码审查的第一时间实现更聚焦、更明智的决策。

---

## 3. 我已经等待Anthropic客服回复超过一个月了。

**原文标题**: I've been waiting over a month for Anthropic support to respond

**原文链接**: [https://nickvecchioni.github.io/thoughts/2026/04/08/anthropic-support-doesnt-exist/](https://nickvecchioni.github.io/thoughts/2026/04/08/anthropic-support-doesnt-exist/)

三月初，一名Claude Max订阅者在未使用服务的情况下，三天内被错误收取约180美元的“超额使用费”，其会话记录极少可证实此情况。该问题似乎普遍存在，其他用户在GitHub和Reddit等平台也报告了类似的使用计量错误和扣费问题。

用户于3月7日向Anthropic客服提交详细证据，但仅收到AI客服的自动回复，引导其进入不适用于该情况的退款流程。尽管后续一个月内多次要求转接人工客服，用户仍未获得进一步回应或解决方案。

核心投诉尖锐指出：一家尖端AI公司依赖低效的纯AI客服系统，反而阻断了人工协助渠道，导致合理账单问题悬置逾月未解——这本身构成了一种讽刺。

---

## 4. USB面向软件开发人员：编写用户空间USB驱动程序入门

**原文标题**: USB for Software Developers: An introduction to writing userspace USB drivers

**原文链接**: [https://werwolv.net/posts/usb_for_sw_devs/](https://werwolv.net/posts/usb_for_sw_devs/)

本文向软件开发人员介绍了如何使用libusb编写用户空间的USB驱动程序，强调这比内核级编程更为简单。作者以处于bootloader模式的安卓手机为例，详细说明了如何：

1. **枚举设备**：使用`lsusb`识别供应商ID（VID）和产品ID（PID）。
2. **以编程方式检测设备**：利用libusb的热插拔API。
3. **通过控制端点通信**（始终为端点0x00）：发送如`GET_STATUS`和`GET_DESCRIPTOR`等标准请求。
4. **解析描述符数据**（如设备、配置、接口和端点描述符）：以了解设备功能。
5. **识别其他端点**（如用于fastboot的批量端点）：用于实际数据传输。

文章指出，用户空间驱动程序避免了复杂的内核代码，更易于调试，并能处理特定供应商的协议。同时提到平台相关的注意事项，例如在Windows上使用Zadig安装兼容驱动程序。整体目标是通过与网络套接字编程的类比，揭开USB通信的神秘面纱。

---

## 5. 通过一个简单的雷达示例理解卡尔曼滤波器

**原文标题**: Understanding the Kalman filter with a simple radar example

**原文链接**: [https://kalmanfilter.net](https://kalmanfilter.net)

本文介绍了卡尔曼滤波器，这是一种在测量和过程噪声等不确定性中估计和预测系统状态的算法。它通过一个简单的雷达跟踪示例来阐释其核心概念。

该滤波器在目标跟踪和导航等领域至关重要。本指南通过三种学习路径进行讲解：单页概述、免费在线教程以及一本全面的书籍。

雷达示例追踪飞机的距离和速度。过程从滤波器初始化开始，其中首次噪声测量定义了初始状态估计及其不确定性（协方差矩阵）。随后使用恒定速度动态模型（状态转移矩阵）来预测飞机的未来位置。

关键的是，卡尔曼滤波器不仅提供估计值，还计算并传播与每个预测和测量更新相关的不确定性。这使得它能够最优地结合预测与新测量，从而产生精确可靠的状态估计，使其成为处理嘈杂现实世界数据的强大工具。

---

## 6. 缪斯火花：迈向个人超级智能的规模化发展

**原文标题**: Muse Spark: Scaling towards personal superintelligence

**原文链接**: [https://ai.meta.com/blog/introducing-muse-spark-msl/?_fb_noscript=1](https://ai.meta.com/blog/introducing-muse-spark-msl/?_fb_noscript=1)

根据Meta官方博客文章，以下是《缪斯火花：迈向个人超级智能之路》的概要：

Meta AI推出了**缪斯火花**，这是一个旨在开发**个人AI助手**的新研究项目，该助手能代表用户执行广泛任务。其核心目标是创建一个能在各类应用与设备间处理复杂多步骤目标的智能体，超越简单问答功能，实现主动协助。

关键要点包括：
*   **智能体核心设计：** 缪斯火花被构建为一种**“智能体”**，能够理解用户高层意图、利用工具（如应用程序和API）规划并执行操作、从反馈中学习，并同步任务进展。
*   **通过MSL实现可扩展性：** 该项目开创了名为**模型社会学习**的新范式。MSL并非训练单一巨型模型，而是让多样化的专业AI模型组成协作社群，相互教学。这种设计旨在提升效率与可扩展性，并能快速整合新技能。
*   **核心能力：** 其设想能力涵盖日程管理、旅行预订、复杂研究、编程与创意任务——通过按指令在数字世界中执行操作来实现。
*   **研究重点：** 缪斯火花团队当前专注于推理、工具使用、规划与记忆等基础研究挑战，以保障该愿景的可靠性与安全性。
*   **长期愿景：** 该项目体现了Meta开发“个人超级智能”的长期抱负——即打造一个高度个性化、能力卓越的AI，使其成为用户真正的延伸。MSL框架旨在以负责任的方式推进这一目标。

本质上，缪斯火花是Meta对构建实用通用AI智能体的基础性研究，通过创新的协作训练方法（MSL）以实现更强的可扩展性与综合能力。

---

## 7. 他们是用肉做的（1991）

**原文标题**: They're made out of meat (1991)

**原文链接**: [http://www.terrybisson.com/theyre-made-out-of-meat-2/](http://www.terrybisson.com/theyre-made-out-of-meat-2/)

在特里·比森1991年的短篇小说《他们是肉做的》中，两个外星生物讨论着他们发现的一种智慧物种——人类。故事的核心揭示是：这个物种完全由生物物质（即“肉”）构成，包括他们的大脑，这让外星人感到荒谬且恶心。

外星人确认，尽管人类由肉构成，却已建造了机器（如无线电）进行交流，并积极向太空发射信号寻求接触。他们指出了肉基生命的局限：人类受限于光速旅行，且若无特殊容器便无法在其他星球生存。

对话以外星人决定——无论是正式还是非正式地——无视人类的接触尝试而告终。他们删除了相关记录，将地球所在星区标记为无人居住，并修改了所有被检查人类的记忆，使其看似梦境。随后，他们转而讨论去联系其他更易接受的、非肉基的智慧生命。

这篇小说以幽默和外来者的厌恶感，讽刺了人类中心主义，并探讨了意识、偏见以及宇宙孤独等主题。

---

## 8. Veracrypt项目更新

**原文标题**: Veracrypt project update

**原文链接**: [https://sourceforge.net/p/veracrypt/discussion/general/thread/9620d7a4b3/](https://sourceforge.net/p/veracrypt/discussion/general/thread/9620d7a4b3/)

**《VeraCrypt项目进展更新》摘要**

本文是VeraCrypt团队发布的官方更新，旨在回应社区对项目看似停滞的担忧。核心信息是：开发工作仍在持续，但已转向更缓慢、更系统化的“维护模式”，重点在于保障稳定与安全，而非频繁推出新功能。

要点包括：

*   **积极开发**：团队确认VeraCrypt并未被放弃。下一版本（1.25）的开发仍在进行中，将主要包含安全修复和少量功能改进。
*   **重心转移**：项目当前的首要任务是维护稳定、安全的代码库。目前暂无计划添加重大新功能或彻底重写图形界面，因为现有界面被认为功能完备且安全可靠。
*   **处理漏洞**：团队承认GitHub上积压的漏洞报告和功能请求。他们解释说，每项处理都需要大量时间进行分析、编码和测试，以避免引入新的安全风险。
*   **安全流程**：更新中强调了谨慎的开发理念。所有代码变更都经过严格审查和测试，以确保不损害产品的核心安全性，这自然延长了发布周期。
*   **未来规划**：1.25版本的路线图包括支持Linux内核6.0+、解决Windows 11相关问题及其他兼容性更新。长期目标是将Windows版本迁移至现代编译器（VS 2022）。

简而言之，此次更新旨在向用户保证VeraCrypt仍在积极维护，但团队优先考虑的是审慎、以安全为核心的开发方式，而非快速发布，因此公开更新会相对较少。

---

## 9. 机器学习注定会变得异常诡异。

**原文标题**: ML promises to be profoundly weird

**原文链接**: [https://aphyr.com/posts/411-the-future-of-everything-is-lies-i-guess](https://aphyr.com/posts/411-the-future-of-everything-is-lies-i-guess)

本文认为，当前的机器学习系统，尤其是大语言模型，是“极其怪异”且不可靠的“胡言乱语机器”。尽管它们在编程、写作和分析等任务中展现出令人印象深刻、有时甚至惊人的能力，但它们同样容易产生自信的虚构、低级错误和荒谬的输出。作者将这种能力与愚行不可预测的混合状态描述为“锯齿状前沿”，使得这些系统难以被信任或评估。

主要观点包括：大语言模型通过预测统计上可能的文本补全来运作，而非基于理解或推理。它们没有内在记忆或元认知能力，因此对其自身行为的解释都是捏造的。尽管存在缺陷，它们类人的输出和“人工智能”的标签导致人们高估了其智能与可靠性。文章总结指出，虽然这些模型是强大的工具，但它们本质上不可预测且倾向于说谎，随着它们被融入日常生活和工作的更多方面，将带来重大风险。

---

## 10. MegaTrain：在单GPU上实现1000亿+参数大语言模型的完整精度训练

**原文标题**: MegaTrain: Full Precision Training of 100B+ Parameter LLMs on a Single GPU

**原文链接**: [https://arxiv.org/abs/2604.05091](https://arxiv.org/abs/2604.05091)

**《MegaTrain：在单GPU上全精度训练1000亿+参数大语言模型》摘要**

本文介绍**MegaTrain**——一种新颖的系统，能够在仅使用单个GPU的情况下，以全精度（FP32/BF16）训练参数量超过1000亿的超大规模语言模型。其核心创新在于一种**以内存为中心的架构**，从根本上改变了资源管理方式。

MegaTrain不将庞大的模型参数和优化器状态存储在有限的GPU内存中，而是将其保留在容量更大、成本更低的**主机（CPU）内存**里。GPU被视作一个**临时计算引擎**。在训练每一层时，系统将所需参数从CPU流式传输至GPU，执行前向/反向传播，随后立即将计算出的梯度流式传回CPU进行更新。这最大限度地减少了GPU上的持久状态。

为克服CPU-GPU数据传输的性能瓶颈，MegaTrain采用了两项关键优化：
1.  **流水线双缓冲执行引擎**：通过多个CUDA流重叠参数预取、GPU计算和梯度卸载，保持GPU持续忙碌。
2.  **无状态层模板**：取代PyTorch的持久自动求导图。权重在流入时动态绑定，消除了图元数据的内存开销，并允许灵活的调度。

作者证明，在配备1.5TB主机内存的单个NVIDIA H200 GPU上，MegaTrain能够可靠地训练高达**1200亿参数**的模型。对于140亿参数模型，其训练吞吐量相比采用CPU卸载的DeepSpeed ZeRO-3提升了**1.84倍**，并且能够在单个GH200系统上训练上下文长度长达512K token的70亿参数模型。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 2 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 3 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 4 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 5 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 6 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 7 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 8 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 9 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 10 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 11 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 12 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 13 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 14 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 15 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 16 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 17 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 18 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 19 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 20 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 21 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 22 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 23 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 24 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 25 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 26 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 27 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 28 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 29 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 30 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 31 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 32 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 33 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 34 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 35 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 36 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 37 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 38 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 39 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 40 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 41 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 42 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 43 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 44 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 45 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 46 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 47 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 48 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 49 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 50 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 51 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 52 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 53 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 54 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 55 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 56 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 57 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 58 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 59 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 60 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 61 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 62 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 63 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 64 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 65 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 66 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 67 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 68 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 69 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 70 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 71 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 72 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 73 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 74 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 75 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 76 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 77 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 78 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 79 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 80 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 81 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 82 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 83 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 84 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 85 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 86 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 87 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 88 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 89 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 90 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 91 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 92 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 93 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 94 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 95 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 96 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 97 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 98 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 99 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 100 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 101 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 102 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 103 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 104 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 105 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 106 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 107 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 108 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 109 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 110 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 111 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 112 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 113 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 114 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 115 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 116 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 117 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 118 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 119 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 120 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 121 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 122 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 123 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 124 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 125 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 126 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 127 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 128 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 129 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 130 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 131 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 132 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 133 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 134 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 135 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 136 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 137 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 138 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 139 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 140 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 141 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 142 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 143 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 144 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 145 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 146 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 147 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 148 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 149 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 150 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 151 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 152 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 153 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 154 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 155 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 156 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 157 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 158 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 159 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 160 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 161 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 162 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 163 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 164 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 165 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 166 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 167 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 168 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 169 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 170 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 171 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 172 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 173 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 174 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 175 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 176 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 177 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 178 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 179 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 180 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 181 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 182 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 183 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 184 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 185 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 186 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 187 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 188 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 189 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 190 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 191 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 192 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 193 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 194 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 195 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 196 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 197 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 198 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 199 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 200 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 201 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 202 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 203 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 204 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 205 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 206 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 207 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 208 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 209 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 210 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 211 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 212 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 213 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 214 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 215 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 216 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 217 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 218 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 219 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 220 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 221 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 222 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 223 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 224 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 225 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 226 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 227 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 228 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 229 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 230 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 231 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 232 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 233 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 234 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 235 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 236 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 237 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 238 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 239 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 240 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 241 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 242 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 243 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 244 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 245 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 246 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 247 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 248 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 249 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 250 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 251 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 252 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 253 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 254 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 255 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 256 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 257 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 258 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 259 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 260 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 261 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 262 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 263 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 264 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 265 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 266 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 267 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 268 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 269 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 270 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 271 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 272 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 273 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 274 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 275 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 276 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 277 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 278 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 279 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 280 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 281 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 282 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 283 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 284 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 285 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 286 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 287 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 288 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 289 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 290 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 291 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 292 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 293 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 294 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 295 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 296 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 297 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 298 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 299 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 300 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 301 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 302 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 303 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 304 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 305 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 306 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 307 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 308 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 309 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 310 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 311 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 312 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 313 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 314 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 315 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 316 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 317 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 318 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 319 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 320 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 321 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 322 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 323 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 324 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 325 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 326 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 327 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 328 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 329 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 330 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 331 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 332 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 333 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 334 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 335 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 336 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 337 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 338 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 339 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 340 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 341 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 342 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 343 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 344 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 345 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 346 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 347 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 348 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 349 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 350 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 351 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 352 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 353 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 354 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 355 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 356 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 357 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 358 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 359 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 360 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 361 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 362 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 363 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 364 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 365 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 366 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 367 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 368 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 369 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 370 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 371 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 372 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 373 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 374 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 375 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 376 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 377 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 378 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 379 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 380 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 381 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 382 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
