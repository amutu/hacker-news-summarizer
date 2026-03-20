# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-20.md)

*最后自动更新时间: 2026-03-20 20:36:26*
## 1. 法国航母实时位置被《世界报》通过健身应用追踪曝光

**原文标题**: France's aircraft carrier located in real time by Le Monde through fitness app

**原文链接**: [https://www.lemonde.fr/en/international/article/2026/03/20/stravaleaks-france-s-aircraft-carrier-located-in-real-time-by-le-monde-through-fitness-app_6751640_4.html](https://www.lemonde.fr/en/international/article/2026/03/20/stravaleaks-france-s-aircraft-carrier-located-in-real-time-by-le-monde-through-fitness-app_6751640_4.html)

一名法国海军军官在“戴高乐”号航母甲板上跑步时，通过公开的Strava健身账号记录运动轨迹，无意间泄露了该航母的实时位置。2026年3月13日，其智能手表记录的7公里地中海跑步数据被上传至网络，使《世界报》得以定位到该航母位于塞浦路斯西北方向、距土耳其约100公里处。

航母部署至该区域并非秘密：此前美以对伊朗实施打击后，法国总统马克龙已于数日内下令调动。“戴高乐”号原在波罗的海参与北约演习，于3月6日作为海军打击群（含数艘护卫舰）的一部分通过直布罗陀海峡。

此事凸显了个人健身追踪技术与公开共享数据带来的作战安全风险——即便军事调动已获官方公开。

---

## 2. ArXiv宣布独立于康奈尔大学

**原文标题**: ArXiv declares independence from Cornell

**原文链接**: [https://www.science.org/content/article/arxiv-pioneering-preprint-server-declares-independence-cornell](https://www.science.org/content/article/arxiv-pioneering-preprint-server-declares-independence-cornell)

**《arXiv宣布脱离康奈尔大学独立运营》摘要**

文章报道称，物理学及其他科学领域的开创性预印本服务器arXiv，已正式结束康奈尔大学长达30年的托管，转型为由社区支持的独立运营模式。

**核心要点：**

*   **新治理架构：** arXiv现由名为“arXiv中心”的独立非营利机构管理，该机构位于纽约市康奈尔理工大学校区。新架构旨在更灵活地响应全球用户社区的需求。
*   **资助模式：** 服务资助模式正从严重依赖康奈尔大学和西蒙斯基金会，转向更广泛、可持续的“集体资助模式”。该模式将向全球数百家从该服务中获益最多的研究机构、图书馆和实验室募集年度捐款。
*   **变革原因：** 此举旨在确保arXiv的长期财务可持续性与中立性。作为开放科学的基础性非商业资源，独立性对其未来发展至关重要，可避免过度依赖任何单一机构或捐赠方。
*   **延续性：** 尽管独立，arXiv仍将与康奈尔大学保持紧密联系。其领导层和员工将保持不变，运营与核心原则也将延续。目标是确保其作为免费、快速传播平台的核心作用，同时稳固其财务基础。

简而言之，此次转型标志着arXiv从一个大学托管项目，演变为一个自我维持、由社区共有的科学交流基础设施。

---

## 3. VisiCalc 重构版

**原文标题**: VisiCalc Reconstructed

**原文链接**: [https://zserge.com/posts/visicalc/](https://zserge.com/posts/visicalc/)

本文详述了一个重建VisiCalc（1979年开创性电子表格软件）极简克隆版的项目。作者认为，VisiCalc的用户体验至今仍是最佳设计之一，在简洁性与强大数据处理能力间取得了完美平衡。

该重建项目的核心是一个围绕三大组件构建的C语言程序：
1.  **数据模型**：由单元格组成的网格，每个单元格可为空，或包含数字、文本标签及以`+`为前缀的公式。
2.  **公式计算器**：采用递归下降解析器计算表达式，支持单元格引用（如`A1`），并包含`@SUM`等基础函数。
3.  **响应式重算机制**：模拟VisiCalc的原始设计，当单元格内容变更时，通过迭代计算对整个表格进行重新评估，直至数值稳定。

用户界面采用`ncurses`库构建基于文本的界面，复现了VisiCalc的经典布局：状态栏、编辑行、列标题和可滚动的网格视窗。该界面采用模态输入系统，用户可通过导航、输入命令（如用`/Q`退出）或直接编辑单元格内容进行操作。

该完整概念验证实现仅用不到500行C代码。文章最后指出，虽然省略了文件I/O和高级命令等功能，但电子表格的核心机制——单元格、公式、引用和重算逻辑——在VisiCalc问世近50年后依然保持原貌。

---

## 4. 洛杉矶水道真是狂野

**原文标题**: The Los Angeles Aqueduct Is Wild

**原文链接**: [https://practical.engineering/blog/2026/3/17/the-los-angeles-aqueduct-is-wild](https://practical.engineering/blog/2026/3/17/the-los-angeles-aqueduct-is-wild)

洛杉矶引水渠是一条长约300英里的重力输水系统，将内华达山脉东侧欧文斯河的水源输送至洛杉矶，支撑了这座城市的巨大发展。该工程于1913年竣工，是一项不朽的工程壮举，全程利用运河、隧道和管道实现无泵输水。然而，其建设过程极具争议：水权收购导致欧文斯河谷干涸，引发了与当地牧场主的“加州水战”，并造成诸如欧文斯湖干涸后产生有毒粉尘等环境问题。

为提升输水能力，1970年增建了第二条引水渠。该系统包含多项关键设施：阿拉巴马闸泄洪道、兼具储水与备用功能的海威水库、用于跨越深谷的加压钢制虹吸管，以及穿越佩洛纳山脉的伊丽莎白隧道。渠中还建有水力发电厂，利用水流发电。

该工程的声誉因1928年圣弗朗西斯大坝溃决事故而受损，这场灾难导致400多人丧生，也使总工程师威廉·穆赫兰德的声誉蒙上阴影。如今，这条引水渠仍是洛杉矶至关重要的水源（约占全市供水的三分之一），但其背后交织着雄心、工程奇迹与资源争夺的复杂历史。

---

## 5. 注意力残差

**原文标题**: Attention Residuals

**原文链接**: [https://github.com/MoonshotAI/Attention-Residuals](https://github.com/MoonshotAI/Attention-Residuals)

本文介绍了**注意力残差（AttnRes）**，这是一种用于Transformer模型的新型标准残差连接替代方案。标准残差连接会均匀叠加所有先前层的输出，这可能稀释各层的独立贡献，并导致隐藏状态幅度的无界增长，尤其在深层模型中更为明显。

AttnRes通过让每一层使用一种可学习的、输入依赖的注意力机制，**选择性关注**所有先前层的输出，从而解决了这一问题。这使得各层能够基于内容感知访问早期表示。为实现该方法的大规模应用，作者提出了**块级注意力残差（Block AttnRes）**，将层分组为块，仅在块级别应用注意力机制。这使内存开销从O(Ld)降至O(Nd)，同时保留了大部分优势。

实验表明，采用AttnRes的模型在不同计算预算和下游任务中均持续超越基线模型。在多步推理（如在GPQA-Diamond上提升+7.5分）和代码生成（在HumanEval上提升+3.1分）任务中表现尤为突出。AttnRes还通过限制输出幅度、使梯度范数在各层间更均匀分布，有效改善了训练动态。

---

## 6. 并行Perl – 具备即时编译功能的自动并行化解释器

**原文标题**: Parallel Perl – autoparallelizing interpreter with JIT

**原文链接**: [https://perl.petamem.com/gpw2026/perl-mit-ai-gpw2026.html#/4/1/1](https://perl.petamem.com/gpw2026/perl-mit-ai-gpw2026.html#/4/1/1)

理查德·杰利内克的本次演讲概述了从使用Perl进行AI开发，到借助AI构建先进Perl系统的十年历程。核心项目是**WHIP（智能家居基础设施处理器）**，这是一个以Perl为中心的复杂家庭自动化系统，专为“Villa-A”这类复杂的离网住宅设计。WHIP采用稳健的架构：通过CAN总线上的STM32微控制器节点确保可靠性，树莓派集线器负责特定领域控制，Perl服务器进行整体协调。

大部分工作涉及将AI作为编程助手。这种人机协作产生了大量工具与集成方案，包括高性能SNMP MIB编译器以及全新的Perl版gRPC实现。

演讲最后介绍了**`pperl`（PetaPerl/并行Perl）**——这是一个在AI辅助下用Rust编写的雄心勃勃的全新Perl 5解释器。其目标是高度兼容Perl 5.42，并通过**循环自动并行化**（基于Rust的Rayon）、JIT编译器、C库自动FFI接口及预编译快速启动等功能实现显著性能提升。早期基准测试显示`pperl`在多方面超越标准Perl，有望成为真正现代化的Perl实现方案。

---

## 7. Delve – 虚假合规即服务

**原文标题**: Delve – Fake Compliance as a Service

**原文链接**: [https://deepdelver.substack.com/p/delve-fake-compliance-as-a-service](https://deepdelver.substack.com/p/delve-fake-compliance-as-a-service)

本文指控合规自动化平台Delve通过提供虚假合规认证，系统性欺骗客户。核心指控如下：

*   **捏造证据与报告：** Delve被指伪造证据（如董事会会议纪要和测试结果），并预先起草带有结论的审计报告，随后由主要在印度运营却伪装成美国机构的关联审计公司走形式批准。
*   **破坏审计独立性：** 这一流程让服务提供商Delve实质上充当了审计方，缺乏独立验证，违反了基本审计准则（如AICPA的SOC 2标准）。
*   **误导性营销：** 该公司以人工智能驱动自动化作为卖点，但交付的产品被描述为几乎没有真正人工智能的基础模板包，迫使客户要么采用虚假证据，要么进行手动操作。
*   **客户高风险：** 包括知名企业在内的客户在不知情下面临严重的监管风险（如HIPAA下的刑事责任和巨额GDPR罚款）及声誉损害。
*   **管理层共谋：** 文章指出Delve的创始人和核心领导层明知故犯地参与此不当行为，并在被质疑时采用转移视线策略（如魅力攻势和承诺未来修复）。

这些指控源于一份泄露的客户审计报告电子表格所引发的调查，撰写者称该文件揭露了欺诈行为。

---

## 8. 欧洲输电系统运营商联盟关于2025年伊比利亚大停电的最终报告

**原文标题**: Entso-E final report on Iberian 2025 blackout

**原文链接**: [https://www.entsoe.eu/publications/blackout/28-april-2025-iberian-blackout/](https://www.entsoe.eu/publications/blackout/28-april-2025-iberian-blackout/)

2025年4月28日，西班牙和葡萄牙大陆发生全面停电，这是欧洲20多年来最严重的一次。欧洲输电系统运营商网络（ENTSO-E）成立独立专家小组进行调查。其于2026年3月20日发布的最终报告指出，停电是由多种因素相互作用共同导致的。这些因素包括功率振荡、电压与无功控制缺陷、电压调节实践差异，以及西班牙境内发电机的快速降载与脱网。这引发了电压骤升和连锁发电损失，最终导致停电。

专家小组的建议重点在于通过强化运行实践、改进系统行为监测、加强电力系统各参与方之间的协调与数据交换，以防止类似事件再次发生。报告同时强调，监管框架需适应并支持电力系统的持续演进。此次调查表明，局部变化可能引发系统性影响，凸显了市场机制和政策必须与电网物理限制保持协调的重要性。

---

## 9. 社交小网络

**原文标题**: The Social Smolnet

**原文链接**: [https://ploum.net/2026-03-20-social-smolnet.html](https://ploum.net/2026-03-20-social-smolnet.html)

在文章《社交小网》中，普卢姆提出，通过博客、Gemini/Gopher胶囊和电子邮件的结合，一种去中心化的社交网络已然存在。他详细介绍了自己基于终端的浏览器Offpunk如何通过简单的“分享”和“回复”命令来激活这一网络。

“分享”命令会打开一封预设链接的电子邮件，而“回复”则自动查找或允许用户保存作者的邮箱地址以备将来联系。这一流程与他的邮件客户端集成，使他无需离开终端即可发送快速、个性化的反馈。

普卢姆表示，这种极简主义方法将他的“小网”体验转变成了一个真正的社交网络，让他得以与数十位博主互动。他的核心结论是：功能性社交网络不在于新协议，而在于创造性地利用电子邮件和个人网站等现有的开放基础设施。他主张重新拥抱这种简单、去中心化且无需JavaScript的在线连接方式。

---

## 10. 使用Vulkan计算着色器在FFmpeg中进行视频编码与解码

**原文标题**: Video Encoding and Decoding with Vulkan Compute Shaders in FFmpeg

**原文链接**: [https://www.khronos.org/blog/video-encoding-and-decoding-with-vulkan-compute-shaders-in-ffmpeg](https://www.khronos.org/blog/video-encoding-and-decoding-with-vulkan-compute-shaders-in-ffmpeg)

本文阐述了FFmpeg如何利用Vulkan计算着色器为专业工作流程加速视频编码与解码，从而与专用硬件（Vulkan Video）形成互补。历史上，由于数据传输延迟问题，CPU/GPU混合方案未能成功，因此现代实现方案将所有处理流程保留在GPU上。

核心挑战在于编解码算法混合了并行与串行步骤，而GPU擅长并行处理。解决方案利用现代高分辨率视频会产生大量小型独立工作单元（如切片或区块）的特性，这些单元可在GPU上并行处理。基于计算的编码器在质量上也具有优势，因为它们能够执行不受固定功能硬件限制的详尽搜索。

FFmpeg是实现此技术的理想平台，其架构允许在稳健的软件编解码器基础上无缝集成硬件加速。文章详细介绍了多种编解码器的实现方案：

*   **FFv1：** 无损归档编解码器，其主要挑战在于将其复杂的串行范围编码器并行化。
*   **APV与ProRes：** 中间编解码器，其结构相对易于在GPU上并行处理。
*   **ProRes RAW：** 基于RAW传感器数据的编解码器，其分块结构具有高度可并行性。
*   **DPX：** 非压缩格式，GPU可高效处理其像素解包启发式算法。
*   **VC-2与JPEG：** 通过创新技术（如VC-2的小波变换和JPEG串行熵编码的概率性重同步）实现了GPU加速的编解码器。

相关工作正在FFmpeg中持续推进，目前已支持多种编解码器，而VC-2、JPEG和APV解码器等功能仍在开发中。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 2 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 3 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 4 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 5 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 6 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 7 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 8 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 9 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 10 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 11 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 12 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 13 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 14 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 15 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 16 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 17 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 18 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 19 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 20 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 21 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 22 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 23 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 24 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 25 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 26 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 27 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 28 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 29 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 30 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 31 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 32 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 33 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 34 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 35 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 36 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 37 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 38 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 39 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 40 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 41 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 42 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 43 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 44 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 45 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 46 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 47 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 48 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 49 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 50 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 51 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 52 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 53 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 54 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 55 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 56 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 57 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 58 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 59 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 60 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 61 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 62 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 63 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 64 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 65 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 66 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 67 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 68 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 69 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 70 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 71 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 72 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 73 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 74 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 75 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 76 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 77 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 78 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 79 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 80 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 81 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 82 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 83 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 84 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 85 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 86 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 87 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 88 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 89 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 90 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 91 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 92 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 93 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 94 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 95 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 96 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 97 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 98 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 99 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 100 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 101 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 102 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 103 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 104 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 105 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 106 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 107 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 108 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 109 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 110 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 111 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 112 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 113 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 114 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 115 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 116 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 117 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 118 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 119 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 120 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 121 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 122 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 123 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 124 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 125 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 126 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 127 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 128 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 129 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 130 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 131 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 132 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 133 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 134 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 135 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 136 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 137 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 138 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 139 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 140 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 141 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 142 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 143 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 144 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 145 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 146 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 147 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 148 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 149 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 150 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 151 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 152 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 153 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 154 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 155 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 156 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 157 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 158 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 159 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 160 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 161 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 162 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 163 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 164 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 165 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 166 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 167 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 168 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 169 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 170 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 171 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 172 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 173 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 174 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 175 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 176 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 177 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 178 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 179 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 180 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 181 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 182 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 183 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 184 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 185 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 186 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 187 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 188 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 189 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 190 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 191 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 192 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 193 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 194 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 195 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 196 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 197 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 198 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 199 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 200 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 201 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 202 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 203 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 204 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 205 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 206 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 207 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 208 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 209 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 210 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 211 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 212 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 213 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 214 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 215 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 216 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 217 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 218 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 219 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 220 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 221 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 222 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 223 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 224 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 225 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 226 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 227 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 228 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 229 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 230 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 231 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 232 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 233 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 234 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 235 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 236 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 237 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 238 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 239 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 240 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 241 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 242 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 243 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 244 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 245 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 246 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 247 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 248 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 249 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 250 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 251 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 252 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 253 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 254 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 255 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 256 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 257 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 258 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 259 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 260 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 261 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 262 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 263 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 264 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 265 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 266 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 267 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 268 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 269 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 270 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 271 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 272 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 273 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 274 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 275 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 276 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 277 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 278 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 279 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 280 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 281 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 282 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 283 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 284 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 285 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 286 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 287 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 288 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 289 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 290 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 291 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 292 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 293 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 294 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 295 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 296 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 297 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 298 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 299 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 300 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 301 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 302 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 303 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 304 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 305 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 306 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 307 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 308 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 309 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 310 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 311 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 312 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 313 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 314 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 315 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 316 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 317 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 318 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 319 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 320 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 321 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 322 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 323 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 324 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 325 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 326 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 327 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 328 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 329 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 330 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 331 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 332 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 333 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 334 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 335 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 336 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 337 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 338 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 339 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 340 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 341 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 342 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 343 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 344 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 345 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 346 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 347 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 348 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 349 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 350 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 351 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 352 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 353 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 354 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 355 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 356 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 357 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 358 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 359 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 360 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 361 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 362 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 363 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
