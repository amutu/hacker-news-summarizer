# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2025-12-29.md)

*最后自动更新时间: 2025-12-29 00:15:14*
## 1. 一张未经处理的照片是什么样子

**原文标题**: What an unprocessed photo looks like

**原文链接**: [https://maurycyz.com/misc/raw_photo/](https://maurycyz.com/misc/raw_photo/)

本文阐述了将原始相机传感器数据转化为可观看照片所需的复杂处理过程。未经处理的图像是一幅暗沉的单色网格，其中的灰度值仅代表光线强度。要生成可识别的照片，需经过几个关键步骤：首先拉伸对比度以利用完整的亮度范围。接着，由于相机传感器采用拜耳滤镜（由红、绿、蓝滤镜组成的网格），需要通过去马赛克处理，根据相邻像素的平均值估算每个像素的完整色彩。

由于人类视觉与显示技术对亮度的感知呈非线性，此时图像仍显过暗。因此需应用伽马校正曲线来提亮中间色调，并为暗部分配更多数据，从而匹配人眼的感知方式。然而，这一过程常因传感器对绿色更敏感、且拜耳滤镜中绿色像素数量是红蓝两倍的原因，导致图像产生偏色（通常偏绿）。此时需通过白平衡调整红、蓝、绿通道来校正色彩，使白色呈现中性。

作者指出，即使是基础的“机内直出”JPEG图像，也是通过这套复杂的计算流程来模拟人类视觉感知的结果。因此，诸如调整对比度或白平衡的后期编辑并非使图像“失真”，而是对同一原始数据的不同诠释——当自动化处理做出不完美判断时，这类调整往往十分必要。

---

## 2. 在担任Mockito维护者十年后卸任

**原文标题**: Stepping down as Mockito maintainer after 10 years

**原文链接**: [https://github.com/mockito/mockito/issues/3777](https://github.com/mockito/mockito/issues/3777)

**摘要**

作为Mockito维护者近十年后，Tim van der Lippe宣布将于2026年3月卸任。他的决定主要基于三个因素。

首先，近期JVM变更要求Mockito成为代理程序，这一过程消耗了大量精力。他认为该变更缺乏协作支持，给志愿维护者带来了不当压力，且低估了对项目的社会影响。

其次，他担忧Kotlin日益普及将影响Mockito未来的可维护性。Kotlin独特的JVM实现常需在Mockito核心代码中编写复杂且重复的代码，导致代码库更难以维护且开发体验下降。

最后，他在参与Servo网页引擎等其他开源项目中重获乐趣，不再愿意在有限的个人时间里优先处理Mockito相关工作。

尽管这些问题促使他决定离开，但他相信可能有更合适的人选来推动Mockito发展。他对这段经历表示感谢，并鼓励更多人承担类似的志愿角色。

---

## 3. Unity的Mono问题：为何你的C#代码运行速度不及预期

**原文标题**: Unity's Mono problem: Why your C# code runs slower than it should

**原文链接**: [https://marekfiser.com/blog/mono-vs-dot-net-in-unity/](https://marekfiser.com/blog/mono-vs-dot-net-in-unity/)

本文基于作者的基准测试，揭示了Unity的Mono运行时与现代.NET之间存在显著的性能差距。作者游戏中的模拟代码（不依赖Unity库）在.NET上运行速度快2-3倍，部分微基准测试甚至显示高达15倍的加速。

作者将这一问题追溯到Unity对Mono的持续依赖——这套框架早在2006年就被选用。尽管微软自2016年起对开源跨平台的.NET Core（现称.NET）进行了重大性能优化，但Unity承诺已久的CoreCLR运行时迁移至今仍未完成。该项目于2018年公布时预估能带来2-10倍加速，但截至2025年底仍缺乏生产环境支持，目前仅被列入Unity 6.x的开发路线图。

核心问题在于陈旧的Mono JIT编译器会生成低效的汇编代码。文章通过一个鲜明对比佐证：使用自定义结构的简单循环在.NET中耗时约750毫秒，在Mono中却需要约11.5秒（慢15倍）。Mono的汇编代码显示其存在大量内存冗余操作且缺乏优化，而.NET的JIT则能生成精简的基于寄存器的代码。

作者强调，采用CoreCLR不仅是为了支持新版C#特性，更是为了获得根本性的运行时性能提升、更优的垃圾回收机制以及现代API（如`Span<T>`和硬件内在函数）的访问能力。虽然Unity提供了面向高性能代码的Burst编译器，但其功能存在局限。文章最终指出，在集成CoreCLR之前，Unity开发者实际上在默默承受性能层面的“隐形税”，无法享受多年来.NET的优化成果。

---

## 4. 历时62年打造：纽约市最新输水隧道接近竣工

**原文标题**: 62 years in the making: NYC's newest water tunnel nears the finish line

**原文链接**: [https://ny1.com/nyc/all-boroughs/news/2025/11/09/water--dep--tunnels-](https://ny1.com/nyc/all-boroughs/news/2025/11/09/water--dep--tunnels-)

纽约市即将完成其庞大的3号水隧工程，这项始于1970年的基础设施项目已历时62年。该隧道对维持城市供水至关重要，它将使建于1917年和1936年的两条老旧隧道得以首次停运并进行重大维修。

目前，该隧道已为布朗克斯区和曼哈顿区供水。最后阶段将延伸至布鲁克林和皇后区，预计于2032年完工。项目全面竣工后，该系统将确保来自纽约州北部水库的清洁水源在未来数百年持续输送。

市政官员强调该项目的长期价值，指出虽然建设历时数十年，但隧道将为纽约服务数百年。工程需在地下近800英尺深处挖掘，并在裸露岩层上浇筑混凝土衬砌，形成密封防水的通道。

项目完成后，纽约市民将继续享有可靠的供水，而大多数人并不会意识到支撑这一切的复杂地下网络。

---

## 5. 球形牛

**原文标题**: Spherical Cow

**原文链接**: [https://lib.rs/crates/spherical-cow](https://lib.rs/crates/spherical-cow)

**《球形牛》摘要 (lib.rs/crates/spherical-cow)**

本文介绍了一个名为 `spherical-cow` 的 Rust 库。其主要目的是在指定的任意三维边界形状内，高效生成互不重叠的球体的随机堆积。

核心算法基于 **“任意维度下的快速泊松圆盘采样”**（Bridson, 2007），并适配于三维空间。该过程首先定义一个封闭的三维边界（使用如 `ncollide3d` 这类库）。算法随后尝试用给定半径的球体填充此体积，步骤如下：
1.  在边界框内生成一个随机候选点。
2.  检查该点是否位于目标边界内部。
3.  确保新球体不与任何已放置的球体相交。

若满足这些条件，则球体被接受。该库设计为 **快速且内存高效**，通过使用背景网格来快速剔除与现有球体距离过近的候选点。

主要应用场景包括：为分子动力学生成初始构型、创建程序化三维内容（例如多孔材料、聚集体），或任何需要在复杂容器内实现球体非重叠随机分布的应用。

摘要指出，此库是该概念的 Rust 实现，其名称来源于物理学中幽默的“球形牛”比喻，该比喻用于将复杂问题简化为更易处理的理想化模型。

---

## 6. PySDR：使用Python的软件定义无线电与数字信号处理指南

**原文标题**: PySDR: A Guide to SDR and DSP Using Python

**原文链接**: [https://pysdr.org/content/intro.html](https://pysdr.org/content/intro.html)

**PySDR** 是 Marc Lichtman 博士编写的一本免费在线教材，旨在通过 Python 为读者提供**软件定义无线电（SDR）**和**数字信号处理（DSP）**的实用入门指南。本书面向具有一定 Python 编程经验，但对无线通信和 DSP 概念相对陌生的程序员和学习者。

该指南强调**直观、动手实践的方法**，通过动画和 Python 代码示例（使用 NumPy 和 Matplotlib）来解释核心理论，而非过度依赖复杂的数学推导。它将基础的 DSP 和信号知识浓缩为易于理解的章节，然后过渡到实际的 SDR 应用。

教材涵盖广泛的主题，从频域分析和数字调制，到流行 SDR 硬件（如 PlutoSDR、RTL-SDR 和 USRP）的实践教程，以及同步、波束成形和链路预算等高级内容。本书通过 Patreon 获得社区支持，并得益于贡献者的翻译，已提供多种语言版本。

总之，**PySDR** 力求成为进入 SDR 和 DSP 领域的简明而引人入胜的入门途径，帮助读者快速开始进行智能信号处理并有效使用 SDR。

---

## 7. MongoBleed简明解析

**原文标题**: MongoBleed Explained Simply

**原文链接**: [https://bigdata.2minutestreaming.com/p/mongobleed-explained-simply](https://bigdata.2minutestreaming.com/p/mongobleed-explained-simply)

MongoBleed（CVE-2025-14847）是MongoDB中的一个严重漏洞，允许攻击者从数据库服务器读取任意未初始化的堆内存。该漏洞影响自2017年以来的所有版本，可能泄露密码、API密钥和客户信息等敏感数据。

该漏洞利用MongoDB处理zlib压缩消息的缺陷。攻击者发送一个带有虚假大`uncompressedSize`字段的压缩请求，诱使服务器分配一个大型内存缓冲区。服务器随后未能验证实际解压数据的大小，导致缓冲区部分区域残留先前操作的“堆内存垃圾”。

为提取这些数据，攻击者构造一个BSON消息，其首个字段缺少空终止符。当服务器解析这个畸形字段时，会扫描内存缓冲区直至找到空字节，无意中将相邻的堆内存垃圾包含在字段名中。服务器随后在错误消息中返回这个无效字段名，从而泄露敏感数据。

该漏洞属于“预认证”类型，仅需网络访问数据库即可利用。尽管漏洞已在2025年12月下旬修复，但已停止支持的旧版本仍处于未修补状态。缓解措施包括更新至最新版本或禁用zlib网络压缩。漏洞披露时间线及大量暴露在互联网的MongoDB实例，使得该漏洞的潜在影响尤为重大。

---

## 8. 首席执行官成本高昂，为何不将其自动化？

**原文标题**: CEOs are hugely expensive. Why not automate them?

**原文链接**: [https://www.newstatesman.com/business/companies/2023/05/ceos-salaries-expensive-automate-robots](https://www.newstatesman.com/business/companies/2023/05/ceos-salaries-expensive-automate-robots)

本文质疑了CEO的必要性及其高昂成本，并提出自动化作为潜在替代方案。文章指出，股东们对高管薪酬的不满日益加剧，尤其是在疫情期间企业获得政府支持的情况下，并强调了CEO与普通员工薪资间的巨大差距。

核心论点是：如果CEO的大部分工作——如战略制定、运营管理和沟通协调——能够被外包（正如一位CEO所承认的），那么理论上这些工作也可以实现自动化。作者认为，自动化高层战略决策可能比自动化基层岗位更符合逻辑，因为这有助于减少昂贵的人为偏见和巨大的管理可变成本。

尽管承认AI在面向公众的职位上存在风险，但文章指出高层决策通常经过团队审核，可能降低此类风险。文中以香港交通系统自动化决策的成功案例佐证。

最终，文章将讨论从CEO薪酬的道德争议转向投资者面临的实际问题：如果机器能有效执行高层管理任务，为何人类管理者的成本如此高昂？

---

## 9. 研究人员发现自闭症大脑存在分子差异

**原文标题**: Researchers Discover Molecular Difference in Autistic Brains

**原文链接**: [https://medicine.yale.edu/news-article/molecular-difference-in-autistic-brains/](https://medicine.yale.edu/news-article/molecular-difference-in-autistic-brains/)

耶鲁大学医学院的研究人员发现，自闭症患者大脑中存在一项关键的分子差异。他们发表在《美国精神病学杂志》上的研究表明，自闭症成人体内的代谢型谷氨酸受体5（mGlu5）数量显著减少，该受体对涉及神经递质谷氨酸的大脑兴奋性信号传递至关重要。

这一发现支持了长期以来的假说，即自闭症与大脑兴奋性和抑制性信号传递失衡有关。研究人员通过正电子发射断层扫描和磁共振成像技术识别出这种受体可用性的降低。此外，他们将分子层面的发现与脑电图读数相关联，表明脑电图可能成为未来研究该大脑机制更便捷的工具。

该发现为自闭症提供了可测量的生物学依据，而目前自闭症仅通过行为观察进行诊断。尽管研究仅纳入认知能力处于平均水平或以上的自闭症成人，但团队计划采用新型低辐射扫描技术对儿童和青少年展开研究，以确定受体差异是自闭症的原因还是结果。

最终，这项研究可能推动诊断方法的改进，并催生针对mGlu5受体的新药物，从而帮助那些症状影响生活质量的自闭症患者。

---

## 10. 在“404未找到”中成长：中国戈壁沙漠中的核城

**原文标题**: Growing up in “404 Not Found”: China's nuclear city in the Gobi Desert

**原文链接**: [https://substack.com/inbox/post/182743659](https://substack.com/inbox/post/182743659)

根据所提供的文本，由于无法访问文章内容，无法提供完整摘要。所给文本仅为标题、副标题及网站错误信息，并非文章正文。

现有信息表明文章主题如下：
*   **主题：** 关于一座位于戈壁沙漠的中国秘密核城市的生活。
*   **核心主题：** 这是一座“封闭城市”，曾被刻意从地图上抹去（故有“404未找到”的隐喻），突显其保密性与隔离性。
*   **视角：** 文章似乎是对在此高度受限环境中“成长”的个人或报道性记述。

若要总结实际文章内容，则需要获取详细描述居民经历、城市用途、历史背景以及在国家保密状态下日常生活的全文。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 2 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 3 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 4 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 5 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 6 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 7 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 8 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 9 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 10 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 11 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 12 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 13 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 14 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 15 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 16 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 17 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 18 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 19 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 20 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 21 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 22 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 23 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 24 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 25 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 26 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 27 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 28 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 29 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 30 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 31 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 32 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 33 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 34 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 35 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 36 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 37 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 38 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 39 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 40 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 41 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 42 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 43 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 44 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 45 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 46 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 47 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 48 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 49 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 50 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 51 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 52 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 53 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 54 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 55 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 56 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 57 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 58 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 59 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 60 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 61 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 62 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 63 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 64 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 65 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 66 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 67 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 68 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 69 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 70 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 71 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 72 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 73 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 74 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 75 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 76 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 77 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 78 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 79 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 80 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 81 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 82 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 83 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 84 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 85 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 86 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 87 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 88 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 89 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 90 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 91 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 92 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 93 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 94 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 95 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 96 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 97 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 98 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 99 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 100 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 101 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 102 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 103 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 104 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 105 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 106 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 107 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 108 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 109 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 110 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 111 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 112 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 113 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 114 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 115 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 116 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 117 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 118 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 119 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 120 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 121 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 122 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 123 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 124 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 125 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 126 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 127 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 128 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 129 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 130 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 131 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 132 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 133 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 134 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 135 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 136 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 137 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 138 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 139 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 140 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 141 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 142 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 143 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 144 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 145 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 146 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 147 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 148 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 149 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 150 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 151 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 152 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 153 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 154 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 155 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 156 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 157 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 158 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 159 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 160 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 161 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 162 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 163 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 164 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 165 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 166 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 167 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 168 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 169 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 170 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 171 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 172 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 173 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 174 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 175 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 176 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 177 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 178 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 179 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 180 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 181 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 182 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 183 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 184 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 185 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 186 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 187 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 188 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 189 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 190 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 191 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 192 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 193 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 194 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 195 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 196 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 197 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 198 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 199 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 200 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 201 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 202 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 203 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 204 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 205 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 206 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 207 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 208 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 209 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 210 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 211 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 212 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 213 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 214 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 215 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 216 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 217 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 218 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 219 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 220 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 221 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 222 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 223 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 224 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 225 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 226 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 227 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 228 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 229 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 230 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 231 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 232 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 233 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 234 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 235 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 236 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 237 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 238 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 239 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 240 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 241 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 242 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 243 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 244 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 245 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 246 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 247 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 248 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 249 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 250 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 251 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 252 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 253 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 254 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 255 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 256 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 257 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 258 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 259 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 260 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 261 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 262 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 263 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 264 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 265 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 266 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 267 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 268 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 269 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 270 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 271 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 272 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 273 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 274 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 275 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 276 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 277 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 278 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 279 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 280 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 281 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 282 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
