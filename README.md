# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-01-05.md)

*最后自动更新时间: 2026-01-05 20:38:10*
## 1. 展示 HN：Tailsnitch – Tailscale 的安全审计工具

**原文标题**: Show HN: Tailsnitch – A security auditor for Tailscale

**原文链接**: [https://github.com/Adversis/tailsnitch](https://github.com/Adversis/tailsnitch)

**Tailsnitch** 是一款开源安全审计工具，专为扫描和识别 Tailscale 网络（tailnets）中的配置错误而设计。它能检测超过 50 种潜在安全问题，包括过于宽松的访问控制、认证密钥风险以及违反安全最佳实践的情况。

主要功能包括：
*   **全面审计**：扫描访问控制（ACL）、认证、设备安全和网络暴露等多个类别。
*   **基于严重性筛选**：允许用户专注于关键或高严重性的发现。
*   **交互式修复模式**：可通过 Tailscale API 自动修复特定问题（如删除闲置设备或认证密钥）。
*   **SOC 2 证据导出**：生成符合通用准则控制的报告，用于合规性证明。
*   **灵活集成**：支持 API 密钥或推荐的 OAuth 认证，可通过 CLI 运行，并能集成到 CI/CD 流水线中。
*   **忽略功能**：允许团队使用忽略文件来屏蔽已知且已接受的风险。

该工具通过识别诸如默认“允许所有”策略、可重复使用的认证密钥、禁用的 Tailnet 锁定以及暴露的服务等风险，帮助管理员强化其 Tailscale 配置，并为每个发现提供清晰的修复指导。

---

## 2. 塔霍图标难以自圆其说。

**原文标题**: It's hard to justify Tahoe icons

**原文链接**: [https://tonsky.me/blog/tahoe-icons/](https://tonsky.me/blog/tahoe-icons/)

本文批评了macOS Tahoe系统中新推出的以图标为主的菜单设计，认为其违背了苹果公司1992年《人机界面指南》确立的核心可用性原则。作者指出，图标本应帮助用户更快找到功能，但Tahoe的设计却适得其反，原因在于：

*   **图标缺乏区分度**：当每个菜单项都采用相似的黑白图标时，没有任何元素脱颖而出，完全背离了图标的设计初衷。
*   **一致性严重缺失**：相同的操作（如新建、保存、关闭）在不同应用中使用截然不同的图标，而同一图标却被重复用于不同功能，导致用户困惑。
*   **图标设计粗糙**：在视网膜显示屏上，这些图标物理尺寸过小且细节过多，常常呈现为模糊、像素错位的混乱图像。许多图标依赖令人费解或无意义的隐喻，无法清晰传达对应功能。
*   **破坏用户工作流**：文本与图标的不规则对齐方式干扰了菜单的视觉浏览效率。

作者总结道，“为每个菜单项配备图标”的目标存在根本缺陷，因为并非每个操作都能找到合适的视觉隐喻。1992年《人机界面指南》的原则至今依然适用，因为它们基于人类认知规律——而这一规律从未改变。因此，新设计非但没有带来清晰性，反而制造了混乱与困惑。

---

## 3. 试着站在我的位置：我得到过的最佳晋升建议

**原文标题**: Try to take my position: The best promotion advice I ever got

**原文链接**: [https://andrew.grahamyooll.com/blog/Try-to-Take-My-Position/](https://andrew.grahamyooll.com/blog/Try-to-Take-My-Position/)

这篇文章提出了一条关键的职业建议：想要获得晋升，你必须先展现出你所渴望职位的胜任能力，这一理念被描述为“尝试取代我的位置”。

这意味着要主动发现并解决你的上级或团队关心的问题，而不是等待指示。作者以一位初级工程师为例，他独立提出了一个团队层面问题的解决方案，展现出超越本职任务的责任感和战略思维。

关键在于，文章强调晋升是基于**持续的表现**，而非孤立的成就。管理者会在大约六个月的时间里观察稳定可靠的行为，因为他们早在正式评估之前就已预先筛选候选人。这种在更高层级上行动的模式证明你能够长期承担相应责任。

最终，这条建议倡导一种**责任优先的思维模式**：职衔跟随已展现的行为而来，而非相反。为了获得晋升，你必须持续以更高层级的标准要求自己，像你的上级一样思考，并在晋升正式到来之前就妥善解决他们面临的问题。

---

## 4. 世嘉联合创始人戴维·罗森去世

**原文标题**: Sega co-founder David Rosen has died

**原文链接**: [https://www.theguardian.com/games/2026/jan/05/sega-co-founder-david-rosen-dies](https://www.theguardian.com/games/2026/jan/05/sega-co-founder-david-rosen-dies)

世嘉联合创始人大卫·罗森于圣诞节去世，享年95岁。作为街机和电子游戏产业的关键人物，他于1954年在日本创业，最初进口照相亭，后来经营投币式游戏机。1965年，他将公司合并成立了世嘉。

在他的领导下，世嘉从进口商转型为顶尖街机游戏开发商，推出了《Out Run》《Virtua Fighter》等标志性作品。罗森善于发掘人才，例如后来的社长中山隼雄。他还主导了世嘉进军家用游戏机市场。

1980年代末，他通过“Genesis does what Nintendon't”等激进营销策略，将世嘉Genesis（Mega Drive）游戏机在美国定位为比任天堂更成熟的选择。罗森一直任职至1996年退休，被誉为现代电子游戏产业的奠基人之一。

---

## 5. 管道之梦——雅虎Pipes的兴衰史（2023）

**原文标题**: Pipe Dreams – The life and times of Yahoo Pipes (2023)

**原文链接**: [https://retool.com/pipes](https://retool.com/pipes)

**《管道梦想——雅虎Pipes的兴衰史（2023）》摘要**

本文记述了雅虎Pipes这一开创性网络服务（2007-2015年）的兴衰历程。该服务允许用户通过可视化方式，将来自不同来源（RSS、API、网页）的数据流组合起来，无需编写代码即可创建定制化应用。它曾被盛赞为革命性的“可视化编程”工具，使非开发者、记者和爱好者能够“混搭”网络资源，实现任务自动化并创建新颖的数据驱动工具。

雅虎Pipes的失败主要归因于雅虎公司内部的忽视，该公司当时正深陷战略方向的困境。该服务从未实现货币化，市场营销投入极少，其工程团队最终也被解散。从技术角度看，随着网络从RSS转向实时API和社交媒体信息流，其架构无法高效扩展，反而成了负担。

尽管雅虎Pipes已不复存在，但文章认为其遗产影响深远。它直接启发了现代成功的无代码/低代码平台（如Zapier、IFTTT和Retool）的核心概念。它证明了市场对于赋能非程序员实现工作流自动化和服务集成存在巨大需求。文章将Pipes描绘成一个具有远见但不幸被管理不善的先驱，它在可视化编程成为主流趋势的数年前，就已展示了其潜力。它的故事是一个教训：优秀的产品可能因企业环境而失败，但其核心理念终将获胜。

---

## 6. 所以，你想快速分块吗？

**原文标题**: So, you want to chunk really fast?

**原文链接**: [https://minha.sh/posts/so,-you-want-to-chunk-really-fast](https://minha.sh/posts/so,-you-want-to-chunk-really-fast)

本文详细介绍了**memchunk**的开发过程，这是一个专为RAG流水线优化的高性能文本分块库。其核心问题在于如何高效地按语义边界（如句号或换行符）分割大型文本语料，避免将句子从中切断，从而损害检索质量。

关键创新在于采用高度优化的字节搜索策略。对于1-3个分隔符，它利用**memchr**库，通过SIMD指令（如AVX2）实现一次扫描32字节。对于4个及以上分隔符，则回退至**256项查找表**——这是一种快速、无分支的每字节O(1)检查。

一项重要优化是**从目标分块大小处向后搜索**。这能在单次操作中找到最佳分割点，避免前向扫描的开销。

基准测试显示memchunk的吞吐量达到**约164 GB/秒**，比现有库快数个数量级——仅需约120毫秒即可完成整个英文维基百科的分块处理。该库提供零拷贝的Python和WebAssembly绑定，确保在不同环境中保持高性能。

总之，memchunk将经典技术（SIMD、查找表）与智能启发式方法（反向搜索、策略选择）相结合，将文本分块性能推至接近理论极限。

---

## 7. 重构——不列入待办清单（2014）

**原文标题**: Refactoring – Not on the backlog (2014)

**原文链接**: [https://ronjeffries.com/xprog/articles/refactoring-not-on-the-backlog/](https://ronjeffries.com/xprog/articles/refactoring-not-on-the-backlog/)

本文反对将大规模重构作为独立的“用户故事”或项目列入开发待办事项。相反，它主张将持续、渐进的重构融入日常功能开发中。

作者用一片原本整洁的田野逐渐杂草丛生（代表劣质代码）来比喻。起初，开发人员会绕过这些问题以保持开发速度，但随着“杂草丛”不断蔓延，开发进度会逐渐放缓。最终，代码库变得如此臃肿，以至于似乎必须进行一次大规模清理，但这种“大爆炸”式的重构难以获得支持、耗时过长，且带来的效益往往延迟且不足。

提出的解决方案是“边走边清理路径”。在开发新功能时，开发人员应抓住机会重构正在处理的特定代码，而不是回避其中的缺陷。虽然这可能会略微延长单个功能的开发时间，但通常不会，而且它能立即开始产生回报。后续涉及同一区域的功将能更快实现，从而产生积极的复合效应。

这种方法将重构成本分摊到时间中，为开发速度带来即时且持续的益处，并避免了大型、破坏性强且难以推动的清理项目的陷阱。其结果是维持更整洁的代码库，并实现更高的长期生产力。

---

## 8. 法律守门人：揭秘Westlaw与LexisNexis的双头垄断格局

**原文标题**: Gatekeepers of Law: Inside the Westlaw and LexisNexis Duopoly

**原文链接**: [https://www.thebignewsletter.com/p/gatekeepers-of-law-inside-the-westlaw](https://www.thebignewsletter.com/p/gatekeepers-of-law-inside-the-westlaw)

本文审视了法律研究领域Westlaw与LexisNexis的双头垄断格局，指出其限制了公众对法律的获取并推高了成本。文章追溯至19世纪，当时West出版公司通过建立公共法庭意见的标准引用体系确立了主导地位。1990年代的数字化浪潮中，Mead Data Central推出了Lexis，West则以Westlaw作为回应。

1991年最高法院的一项关键裁决削弱了West对页码（其核心专有资产）的控制，引发了一轮大规模行业整合。1990年代中期，励德爱思唯尔收购了Lexis，而汤姆森集团在一场备受争议的并购中收购了West——作者指控该交易凭借政治影响力绕过了反垄断审查。

最终市场被两大巨头掌控，导致法律检索费用高昂（Lexis单次查询可达469美元），这与法律材料的公共领域属性背道而驰。身为联邦法院书记官的作者总结道：在反垄断执法失效的纵容下，这种双头垄断将法律禁锢在付费墙后，损害了民主社会的法律可及性与法治原则。

---

## 9. 乌托邦学者

**原文标题**: Utopian Scholastic

**原文链接**: [https://wol.fm/blog/utopian-scholastic.html](https://wol.fm/blog/utopian-scholastic.html)

这篇文章介绍了“乌托邦学术风”，一种盛行于20世纪90年代末至21世纪初的美学与学习理念。其视觉风格以抽象、教育导向的素材图片拼贴为特征，常置于纯白背景上，多见于CD-ROM软件、微软Encarta等百科全书以及DK Eyewitness丛书系列。这种风格体现了对自主探索和非线性知识获取的技术乐观主义信念，常见于互动媒体和早期计算机界面。

作者怀旧地将这个时代与个人童年经历联系起来——在图书馆使用教育软件，强调用户自主权和孤独而由好奇心驱动的探索。然而，文章指出这一理想主义时期随着现代互联网、社交媒体和智能手机应用的兴起而衰落。它将“乌托邦学术风”的探索精神与当代“企业孟菲斯”设计风格及算法驱动平台进行对比，认为后者削弱了用户自主权，助长了被动消费。文章最后感叹这一转变，指出当今包括AI工具在内的界面设计因外包认知处理过程，可能阻碍深度学习和批判性思维。

---

## 10. 展示 HN：开源 8 通道脑机接口板（ESP32 与 ADS1299 及 OpenBCI 图形界面）

**原文标题**: Show HN: Open-Source 8-Ch BCI Board (ESP32 and ADS1299 and OpenBCI GUI)

**原文链接**: [https://github.com/Cerelog-ESP-EEG/ESP-EEG](https://github.com/Cerelog-ESP-EEG/ESP-EEG)

**概述：**

Cerelog ESP-EEG 是一款开源、8通道的生物传感板，专为脑电图（EEG）、肌电图（EMG）、心电图（ECG）及脑机接口（BCI）研究设计。其核心组件包括高精度的德州仪器 ADS1299 ADC 和 ESP32-WROOM-DA 微控制器，支持 USB 及 WiFi/蓝牙连接。

其宣称的一个关键优势在于实现了真正的闭环主动偏置（右腿驱动）电路，以实现卓越的降噪效果，旨在即使在非屏蔽环境中也能获得研究级数据。

该板在软件上通过 Lab Streaming Layer（LSL）协议与流行的 OpenBCI GUI 分支版本兼容，并可将数据流传输至 Brainflow API 进行分析。所有固件、软件和原理图均以开源形式提供。

**重要安全警告：** 该设备**未采用电气隔离设计**。为确保安全和信号质量，**必须仅**与使用电池供电的计算机（例如未插电的笔记本电脑或使用移动电源供电的树莓派）配合使用。切勿将其连接到由市电供电的台式机或插电的笔记本电脑，以防触电风险和地线噪声干扰。

本产品严格用于研究、工程和教育目的。它并非经认证的医疗设备，制造商对其使用不承担任何责任。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 2 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 3 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 4 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 5 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 6 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 7 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 8 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 9 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 10 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 11 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 12 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 13 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 14 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 15 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 16 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 17 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 18 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 19 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 20 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 21 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 22 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 23 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 24 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 25 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 26 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 27 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 28 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 29 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 30 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 31 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 32 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 33 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 34 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 35 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 36 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 37 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 38 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 39 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 40 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 41 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 42 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 43 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 44 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 45 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 46 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 47 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 48 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 49 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 50 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 51 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 52 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 53 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 54 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 55 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 56 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 57 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 58 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 59 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 60 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 61 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 62 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 63 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 64 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 65 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 66 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 67 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 68 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 69 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 70 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 71 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 72 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 73 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 74 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 75 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 76 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 77 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 78 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 79 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 80 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 81 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 82 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 83 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 84 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 85 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 86 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 87 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 88 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 89 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 90 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 91 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 92 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 93 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 94 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 95 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 96 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 97 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 98 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 99 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 100 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 101 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 102 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 103 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 104 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 105 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 106 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 107 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 108 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 109 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 110 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 111 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 112 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 113 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 114 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 115 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 116 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 117 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 118 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 119 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 120 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 121 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 122 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 123 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 124 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 125 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 126 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 127 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 128 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 129 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 130 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 131 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 132 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 133 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 134 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 135 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 136 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 137 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 138 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 139 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 140 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 141 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 142 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 143 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 144 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 145 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 146 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 147 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 148 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 149 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 150 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 151 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 152 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 153 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 154 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 155 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 156 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 157 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 158 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 159 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 160 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 161 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 162 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 163 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 164 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 165 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 166 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 167 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 168 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 169 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 170 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 171 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 172 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 173 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 174 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 175 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 176 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 177 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 178 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 179 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 180 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 181 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 182 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 183 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 184 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 185 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 186 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 187 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 188 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 189 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 190 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 191 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 192 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 193 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 194 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 195 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 196 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 197 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 198 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 199 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 200 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 201 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 202 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 203 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 204 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 205 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 206 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 207 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 208 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 209 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 210 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 211 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 212 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 213 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 214 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 215 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 216 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 217 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 218 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 219 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 220 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 221 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 222 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 223 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 224 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 225 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 226 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 227 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 228 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 229 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 230 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 231 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 232 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 233 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 234 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 235 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 236 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 237 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 238 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 239 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 240 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 241 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 242 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 243 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 244 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 245 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 246 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 247 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 248 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 249 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 250 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 251 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 252 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 253 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 254 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 255 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 256 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 257 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 258 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 259 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 260 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 261 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 262 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 263 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 264 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 265 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 266 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 267 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 268 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 269 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 270 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 271 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 272 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 273 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 274 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 275 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 276 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 277 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 278 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 279 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 280 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 281 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 282 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 283 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 284 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 285 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 286 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 287 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 288 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 289 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
