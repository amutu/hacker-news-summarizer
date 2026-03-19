# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-19.md)

*最后自动更新时间: 2026-03-19 20:37:38*
## 1. Anthropic对OpenCode采取法律行动

**原文标题**: Anthropic takes legal action against OpenCode

**原文链接**: [https://github.com/anomalyco/opencode/pull/18186](https://github.com/anomalyco/opencode/pull/18186)

Anthropic对OpenCode采取了法律行动，导致代码库中所有与Anthropic相关的引用被移除。这包括删除带有Anthropic品牌标识的系统提示文件、移除用于Anthropic身份验证的内置插件，以及从供应商提示和文档中清除Anthropic相关内容。这些改动是为了遵守法律要求，明确禁止使用Anthropic OAuth和Pro-Max身份验证流程。

代码重构带来的一个关键意外副作用是，所有第三方供应商（如OpenAI、Google和Azure）的`User-Agent: opencode/${VERSION}`请求头被静默移除——此前该请求头会发送给除Anthropic外的所有供应商。此问题在代码审查中被标记，但未在合并前得到处理。

社区反应显示出担忧与沮丧，用户们讨论需要寻找不涉及OpenCode名称的替代方案，同时指出第三方Anthropic插件可能仍有使用空间。该拉取请求已被合并，相关分支随后被删除。

---

## 2. Astral将加入OpenAI

**原文标题**: Astral to Join OpenAI

**原文链接**: [https://astral.sh/blog/openai](https://astral.sh/blog/openai)

开发了Ruff、uv和ty等热门Python工具的公司Astral已同意加入OpenAI。该公司创始人表示，其核心使命——提升编程效率——将通过将其工具开发专长与OpenAI的Codex团队相结合来实现。

公告强调，Astral每月下载量达数亿次的开源工具在收购后将继续获得公开支持与开发。创始人认为以Codex为代表的AI技术是提升开发者生产力的新前沿，加入OpenAI将使Astral能对软件开发的未来产生更大影响。

公告最后对Astral团队、投资者及用户社区的支持与信任表达了个人感谢。

---

## 3. OpenTTD在Steam/GOG平台上的更新动态

**原文标题**: An update on Steam / GOG changes for OpenTTD

**原文链接**: [https://www.openttd.org/news/2026/03/19/steam-changes-update](https://www.openttd.org/news/2026/03/19/steam-changes-update)

为回应雅达利重新发行《运输大亨豪华版》的举措，OpenTTD项目已更新其在Steam和GOG平台的获取方式。今后新玩家需在这些平台购买原版游戏方可使用OpenTTD，而该项目仍可通过OpenTTD官网免费下载。

开发团队澄清，这是与雅达利协商达成的合作方案，并非迫于压力，旨在平衡版权方的商业利益与项目的免费开放性。他们选择不完全下架商店版本，既为避免影响现有玩家体验，也为保持未来的可发现性。

公告重申OpenTTD对《运输大亨豪华版》及克里斯·索耶的传承渊源，视此次合作为支持原版重制发行、保障OpenTTD长期可持续发展的方式。根据协议，雅达利将承担部分服务器运维成本。开发团队同时感谢社区近期的捐赠支持。

公告坦言理解社区疑虑，但强调OpenTTD始终保持完全独立，并呼吁以尊重方式反馈意见，期待两款游戏能继续为玩家带来欢乐。

---

## 4. 展示 HN：三款新的 Kitten TTS 模型——最小不到 25MB

**原文标题**: Show HN: Three new Kitten TTS models – smallest less than 25MB

**原文链接**: [https://github.com/KittenML/KittenTTS](https://github.com/KittenML/KittenTTS)

Kitten TTS v0.8 推出了三款新的轻量级开源文本转语音模型，其中最小的一款是参数为1500万、体积小于25MB的模型。该库基于ONNX构建，针对CPU推理进行了优化，无需GPU，适合边缘部署。

此次发布包含四种模型变体：**kitten-tts-mini**（8000万参数/80MB）、**kitten-tts-micro**（4000万/41MB）、**kitten-tts-nano**（1500万/56MB）以及**int8量化版nano**模型（1500万/25MB）。所有模型均提供八种内置音色（Bella、Jasper、Luna等），支持可调节的语速和内置文本预处理功能，并输出高质量的24 kHz音频。

作为开发者预览版，其API可能会发生变化。项目提供了快速入门的Python安装方式、基础与高级使用示例，以及在Hugging Face Spaces上的在线演示。商业支持涵盖集成、定制音色和企业级授权。路线图计划包括优化的推理引擎、移动端SDK、多语言模型以及语音识别系统（KittenASR）。

---

## 5. Noq：n0团队用Rust语言开发的全新QUIC实现

**原文标题**: Noq: n0's new QUIC implementation in Rust

**原文链接**: [https://www.iroh.computer/blog/noq-announcement](https://www.iroh.computer/blog/noq-announcement)

n0发布了**noq**，这是一个基于Rust的全新QUIC实现，现已为iroh提供支持。该项目最初是Quinn的一个分支，但为了更好满足iroh的特定需求——尤其是**多路径支持**和**NAT穿透**——最终进行了全面重写。

noq的核心特性包括：
*   **完整的QUIC多路径实现：** 路径（如中继连接和直连）现已成为QUIC中的一等概念，可实现更优的性能和拥塞控制。
*   **集成化NAT穿透：** 采用QUIC层级打洞方案，显著提升连接可靠性。
*   **增强调试功能：** 提供扩展的QLog支持，可对包括多路径流在内的连接进行精细化分析。
*   **生产就绪：** noq自iroh 0.96版本起已投入运行，并完成了互操作性测试。

通过建立独立代码库，n0能够在点对点网络的关键功能上快速创新，同时继续保持与更广泛QUIC社区的合作承诺。

---

## 6. 《奥伯拉丁的回归》：一款采用球面映射抖动技术的1bpp第一人称游戏

**原文标题**: Return of the Obra Dinn: spherical mapped dithering for a 1bpp first-person game

**原文链接**: [https://forums.tigsource.com/index.php?topic=40832.msg1363742#msg1363742](https://forums.tigsource.com/index.php?topic=40832.msg1363742#msg1363742)

**《奥伯拉丁的回归：为一款1bpp第一人称游戏实现的球面映射抖动技术》摘要**

这篇开发者文章详述了为打造《奥伯拉丁的回归》独特黑白视觉风格所采用的渲染技术。其核心挑战在于，如何在一个完全3D的第一人称游戏中，实现高对比度、1位每像素（1bpp）的“Macintosh System 1”美学风格。

主要解决方案是一种自定义的**球面抖动**算法。开发者没有采用标准的屏幕空间抖动图案（这种图案会因摄像机移动而产生不自然的断裂和游动感），而是将一张抖动纹理映射到一个包围整个游戏场景的球体上。随着玩家摄像机的移动和旋转，它会从这个固定的、包裹场景的抖动球体上采样。这产生了一种稳定、一致的颗粒感，这种颗粒感仿佛附着于世界几何体而非屏幕之上，从而避免了传统抖动技术带来的令人分心的视觉噪点。

关键技术要点包括：
*   抖动球体使用8x8有序抖动（拜耳）图案。
*   游戏先以彩色和完整细节正常渲染，最后一步才使用此球面抖动流程将最终图像转换为单色。
*   此方法成功保持了所需的复古美学，同时允许复杂的3D环境、动态光照、阴影和流畅的摄像机运动——这些元素若使用更简单的后处理滤镜会产生冲突。

本质上，其创新在于将抖动视为游戏世界的一种全局空间属性，而非2D屏幕效果，这对于在第一人称视角下保持视觉清晰度和沉浸感至关重要。

---

## 7. 谷歌详解24小时侧载未验证安卓应用新流程

**原文标题**: Google details new 24-hour process to sideload unverified Android apps

**原文链接**: [https://arstechnica.com/gadgets/2026/03/google-details-new-24-hour-process-to-sideload-unverified-android-apps/](https://arstechnica.com/gadgets/2026/03/google-details-new-24-hour-process-to-sideload-unverified-android-apps/)

谷歌正在推出一项新的24小时流程，允许用户从非认证开发者侧载应用至安卓设备，该功能计划于2026年全球上线。这一“高级流程”是对其即将推出的开发者认证计划的反馈回应，该计划将阻止未支付25美元认证费及提供身份信息的开发者所发布应用的安装。

此绕过流程被刻意设计得繁琐且隐藏在开发者选项中。启用后，用户必须等待24小时——谷歌称此举旨在防范高压社交工程诈骗——之后才能选择临时或永久允许安装非认证应用。

谷歌强调，此次调整关乎安全而非控制，目标是通过验证开发者身份而非审查应用内容来减少恶意软件。公司表示，其超过30亿台设备的安全改进面临监管压力。认证系统将于2025年9月率先在巴西、新加坡、印尼和泰国推出，届时绕过功能将同步开放。该功能属于安卓16.1系统的一部分，最终将覆盖所有受支持的设备。

---

## 8. NanoGPT慢跑：无限算力下的十倍数据效率

**原文标题**: NanoGPT Slowrun: 10x Data Efficiency with Infinite Compute

**原文链接**: [https://qlabs.sh/10x](https://qlabs.sh/10x)

本文宣布了“NanoGPT慢速训练”项目，该项目的语言模型数据效率提升了10倍。核心发现是：一个由18亿参数模型组成的集成模型（总参数量180亿），仅用1亿个词元训练，就能达到标准模型用10亿词元训练的效果。

实现这一突破的关键创新包括：
1.  **链式蒸馏集成**：顺序训练多个模型，每个新模型都从前一个模型中学习，即使单个模型过拟合，也能显著提升集成模型的性能。
2.  **激进正则化**：使用比常规方法强得多的权重衰减和丢弃法，由于模型相对于小数据集是高度过参数化的，这种做法是可行的。
3.  **循环结构**：采用循环Transformer架构，在特定层内迭代优化表征，从而为每个预测分配更多计算量。
4.  **架构微调**：通过实验引入多项具体改进（如独占自注意力、U-Net跳跃连接），以提升效率。

文章指出，这种方法至关重要，因为未来人工智能的进步将受限于数据而非算力。通过大幅提升数据效率，性能将能够与可用计算能力同步扩展。研究团队相信，进一步的突破可能带来100倍的效率提升。

---

## 9. 从示波器到Wireshark：一个UDP的故事

**原文标题**: From Oscilloscope to Wireshark: A UDP Story

**原文链接**: [https://www.mattkeeter.com/blog/2022-08-11-udp/](https://www.mattkeeter.com/blog/2022-08-11-udp/)

本文详细阐述了如何将示波器捕获的原始物理层信号解码为UDP数据包的过程。作者在Oxide计算机公司的管理网络中，通过探测VSC7448交换芯片与VSC8504物理层芯片之间的QSGMII链路来诊断一个故障。

整个过程包含以下关键步骤：
1.  **信号捕获**：从示波器导出模拟波形数据。
2.  **8b/10b解码**：将电压电平转换为10位“码组”流，并使用逗号字符进行同步。
3.  **流分离**：通过检测端口0特有的K28.1同步字符，将单个QSGMII数据流拆分为四个独立的SGMII通道。
4.  **PCS解码**：根据IEEE 802.3标准，将码组转换为物理编码子层（PCS）元素，例如空闲模式、数据包起始/结束分隔符以及实际数据字节。
5.  **数据包组装**：最终输出显示以太网帧的原始字节，其中包含UDP数据报。

本文展示了从第一层（物理电压）到第四层（传输协议数据）的深度解析，通过实际应用网络标准（QSGMII、8b/10b、IEEE 802.3），从硬件信号中提取出有意义的数据包。

---

## 10. OpenBSD：PF队列突破4 Gbps壁垒

**原文标题**: OpenBSD: PF queues break the 4 Gbps barrier

**原文链接**: [https://undeadly.org/cgi?action=article;sid=20260319125859](https://undeadly.org/cgi?action=article;sid=20260319125859)

本文宣布了OpenBSD的PF包过滤器的一项重大更新，移除了一个长期存在的限制，该限制曾导致流量整形队列无法正确处理超过约4.29 Gbps的带宽。这一上限源于内核HFSC调度器结构中的32位整数限制。

随着10G、25G和100G网络接口的普及，这一限制在配置更高带宽时会导致错误行为。现已开发出一个补丁，将相关带宽字段从32位整数改为64位整数，从而有效消除瓶颈，并支持至少高达999G的带宽值。

此修复还解决了`pftop(1)`工具中的一个显示错误，该工具先前对超过4 Gbps的带宽显示不正确的数值。对用户而言，这意味着PF队列配置（例如`bandwidth 10G`）现在可以在现代高速硬件上按预期工作，而现有的低于4G的配置无需任何更改。

该补丁已在`tech@`邮件列表上讨论，并计划于2026年3月20日前提交至OpenBSD代码库。文章鼓励测试-current快照版本并向OpenBSD基金会捐款。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 2 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 3 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 4 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 5 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 6 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 7 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 8 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 9 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 10 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 11 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 12 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 13 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 14 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 15 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 16 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 17 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 18 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 19 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 20 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 21 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 22 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 23 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 24 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 25 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 26 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 27 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 28 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 29 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 30 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 31 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 32 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 33 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 34 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 35 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 36 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 37 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 38 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 39 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 40 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 41 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 42 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 43 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 44 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 45 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 46 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 47 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 48 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 49 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 50 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 51 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 52 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 53 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 54 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 55 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 56 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 57 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 58 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 59 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 60 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 61 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 62 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 63 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 64 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 65 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 66 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 67 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 68 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 69 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 70 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 71 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 72 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 73 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 74 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 75 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 76 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 77 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 78 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 79 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 80 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 81 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 82 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 83 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 84 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 85 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 86 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 87 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 88 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 89 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 90 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 91 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 92 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 93 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 94 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 95 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 96 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 97 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 98 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 99 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 100 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 101 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 102 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 103 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 104 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 105 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 106 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 107 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 108 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 109 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 110 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 111 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 112 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 113 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 114 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 115 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 116 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 117 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 118 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 119 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 120 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 121 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 122 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 123 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 124 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 125 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 126 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 127 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 128 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 129 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 130 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 131 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 132 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 133 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 134 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 135 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 136 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 137 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 138 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 139 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 140 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 141 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 142 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 143 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 144 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 145 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 146 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 147 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 148 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 149 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 150 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 151 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 152 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 153 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 154 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 155 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 156 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 157 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 158 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 159 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 160 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 161 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 162 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 163 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 164 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 165 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 166 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 167 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 168 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 169 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 170 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 171 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 172 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 173 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 174 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 175 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 176 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 177 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 178 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 179 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 180 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 181 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 182 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 183 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 184 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 185 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 186 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 187 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 188 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 189 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 190 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 191 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 192 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 193 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 194 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 195 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 196 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 197 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 198 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 199 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 200 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 201 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 202 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 203 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 204 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 205 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 206 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 207 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 208 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 209 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 210 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 211 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 212 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 213 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 214 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 215 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 216 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 217 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 218 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 219 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 220 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 221 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 222 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 223 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 224 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 225 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 226 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 227 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 228 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 229 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 230 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 231 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 232 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 233 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 234 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 235 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 236 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 237 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 238 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 239 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 240 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 241 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 242 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 243 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 244 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 245 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 246 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 247 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 248 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 249 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 250 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 251 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 252 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 253 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 254 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 255 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 256 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 257 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 258 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 259 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 260 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 261 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 262 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 263 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 264 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 265 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 266 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 267 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 268 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 269 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 270 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 271 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 272 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 273 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 274 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 275 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 276 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 277 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 278 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 279 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 280 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 281 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 282 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 283 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 284 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 285 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 286 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 287 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 288 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 289 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 290 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 291 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 292 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 293 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 294 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 295 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 296 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 297 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 298 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 299 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 300 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 301 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 302 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 303 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 304 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 305 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 306 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 307 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 308 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 309 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 310 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 311 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 312 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 313 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 314 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 315 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 316 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 317 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 318 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 319 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 320 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 321 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 322 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 323 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 324 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 325 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 326 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 327 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 328 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 329 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 330 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 331 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 332 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 333 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 334 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 335 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 336 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 337 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 338 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 339 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 340 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 341 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 342 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 343 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 344 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 345 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 346 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 347 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 348 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 349 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 350 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 351 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 352 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 353 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 354 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 355 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 356 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 357 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 358 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 359 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 360 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 361 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 362 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
