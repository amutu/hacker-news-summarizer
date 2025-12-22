# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2025-12-22.md)

*最后自动更新时间: 2025-12-22 20:19:55*
## 1. 图解Transformer

**原文标题**: The Illustrated Transformer

**原文链接**: [https://jalammar.github.io/illustrated-transformer/](https://jalammar.github.io/illustrated-transformer/)

《图解Transformer》一文解析了Transformer模型，这是一种在《Attention is All You Need》论文中提出的神经网络架构。该模型完全依赖注意力机制，实现了并行处理和更快的训练速度，从而彻底改变了机器翻译及其他自然语言处理任务。

该模型由编码器和解码器组成，两者均由多个相同层堆叠而成。编码器使用自注意力机制在编码特定词语时权衡其他词语的重要性，随后通过前馈网络处理。解码器则额外包含一个专注于编码器输出的注意力层。

关键细节包括：
- **自注意力机制**：为每个词语生成查询向量、键向量和值向量。注意力分数决定对其他词语的关注程度，从而产生具有上下文感知的编码。
- **多头注意力机制**：多组注意力权重使模型能同时关注句子的不同部分（例如“它”所指代的对象及其状态）。
- **位置编码**：由于模型缺乏内在的顺序感知，位置向量被添加到词嵌入中，以提供词语位置信息。

Transformer的效率和性能源于其可并行化的设计及强大的注意力机制，这为GPT、BERT等模型奠定了重要基础。

---

## 2. 垃圾回收手册

**原文标题**: The Garbage Collection Handbook

**原文链接**: [https://gchandbook.org/index.html](https://gchandbook.org/index.html)

《垃圾回收手册（第二版）》是对2012年自动内存管理经典著作的权威性全面更新。本书整合了六十余年的研究成果，以应对现代硬件与软件环境带来的新挑战。

书中提供了理解和比较最重要垃圾回收算法的完整框架，涵盖基础简易技术与先进高性能方法，包括并行、增量、并发及实时回收器。内容设计注重可读性，常采用伪代码和图示阐释复杂概念。

本版新增章节涉及持久化内存与能耗感知垃圾回收技术，扩充90多页内容，并对现代商用回收器进行详细解析。同时深入探讨了与运行时系统接口等复杂实现问题。

重要配套资源包含近3400篇垃圾回收相关文献的在线书目数据库，并持续更新。增强版电子书配备大量导航超链接，全书已翻译成中文和日文。本手册是当今计算环境中程序员与系统设计者选择、配置及理解高性能内存管理的重要参考资源。

---

## 3. 超声波癌症治疗：声波对抗肿瘤

**原文标题**: Ultrasound Cancer Treatment: Sound Waves Fight Tumors

**原文链接**: [https://spectrum.ieee.org/ultrasound-cancer-treatment](https://spectrum.ieee.org/ultrasound-cancer-treatment)

本文详细介绍了组织切片术的发展历程，这是一种利用聚焦超声波机械性摧毁肿瘤的非侵入性癌症治疗方法。该技术由密歇根大学的研究人员首创，并由HistoSonics公司实现商业化，通过发射极短的高压超声脉冲在肿瘤内部产生并压溃微气泡（空化效应）。这一过程能在不产生显著热量的情况下液化癌组织，从而保护周围健康结构。

HistoSonics公司的Edison系统于2023年获得美国FDA针对肝脏肿瘤的批准，目前针对肾癌和胰腺癌的关键研究正在进行中。胰腺癌因其高致死率及该疗法在早期试验中表现出的安全性而成为重点目标。

组织切片术的主要优势包括其精确性、人体对残留碎屑的自然清除能力，以及一项观察到的附加益处：该破坏过程似乎能刺激免疫反应，可能帮助机体攻击残余癌细胞。研究人员正探索将其与免疫疗法结合以增强此效应。

在新投资的支持下，HistoSonics公司正通过改进成像与反馈系统推进该技术。文章将组织切片术定位为非侵入性医学中充满前景的新支柱，使超声波从诊断工具转变为手术工具。

---

## 4. Claude Code获得原生LSP支持

**原文标题**: Claude Code gets native LSP support

**原文链接**: [https://github.com/anthropics/claude-code/blob/main/CHANGELOG.md](https://github.com/anthropics/claude-code/blob/main/CHANGELOG.md)

Anthropic旗下AI驱动的代码编辑器Claude Code现已新增对语言服务器协议（LSP）的原生支持。该集成使编辑器能够直接连接外部语言服务器，显著增强了自动补全、跳转定义和错误检查等核心编码功能。

此前，Claude Code完全依赖内置的Claude 3.5 Sonnet模型处理这些任务。新的原生LSP支持为语言特定智能提供了更可靠、更精确的基础架构。开发者现在可以配置编辑器使用专用服务器（例如针对TypeScript、Python或Rust），从而实现更快速、更精准且能理解项目上下文的代码分析。

此次更新标志着向混合架构的转变——将Claude AI模型的广泛推理能力与传统LSP工具的专业化确定性功能相结合。其目标是提供更稳健、更专业的开发体验，使Claude Code在与成熟IDE的竞争中更具优势。

该功能现已上线，用户可通过编辑器设置配置LSP服务器，以提升对特定编程语言和工具链的支持效果。

---

## 5. 将大型语言模型扩展至更大规模的代码库

**原文标题**: Scaling LLMs to Larger Codebases

**原文链接**: [https://blog.kierangill.xyz/oversight-and-guidance](https://blog.kierangill.xyz/oversight-and-guidance)

本文探讨了如何有效扩展大型语言模型（LLM）以应用于更庞大的软件代码库。核心论点是成功取决于两项关键投入：**引导**与**监督**。

**引导**涉及为LLM提供恰当的上下文，使其能做出正确的实现选择，从而减少手动返工并实现高效的“一次性”解决方案。这通过构建包含文档和最佳实践的**提示库**，以及维护一个**清晰、结构良好的代码库**来实现——遵循“垃圾进，垃圾出”原则，让LLM易于理解和导航。

**监督**强调人类工程师仍然不可或缺，他们并非可替代的执行者，而是战略监督者。工程师需具备设计能力和产品知识，以评估LLM的架构选择并确保其符合长期目标。文章建议通过研究优秀作品和阅读代码来提升这些设计能力，同时指出部分监督可通过编程环境中的**安全检查**（如强类型）实现自动化，以防止常见错误。

最后，文章指出随着LLM代码输出量的增加，**验证**（如代码审查、质量保证）将成为瓶颈，并提出通过改进测试框架和编码审查标准等思路来解决这一问题。

---

## 6. 让我们来写一个玩具UI库

**原文标题**: Let's write a toy UI library

**原文链接**: [https://nakst.gitlab.io/tutorial/ui-part-1.html](https://nakst.gitlab.io/tutorial/ui-part-1.html)

本文是一个从零开始构建玩具UI库教程系列的第一部分。文章首先建立了用于处理屏幕上矩形区域的基础辅助函数。

作者定义了一个包含左、右、上、下坐标的`Rectangle`结构体，并实现了几个核心工具函数：
*   `RectangleMake`用于初始化矩形
*   `RectangleValid`用于检查矩形是否具有正尺寸
*   `RectangleIntersection`用于计算两个矩形的重叠区域
*   `RectangleBounding`用于计算包围两个矩形的最小外接矩形
*   `RectangleEquals`用于矩形比较
*   `RectangleContains`用于测试像素坐标是否位于矩形内

文章提供了`RectangleIntersection`和`RectangleContains`的示例实现，同时介绍了用于安全字符串复制的`StringCopy`函数，以及用于存储未来库级数据的`GlobalState`结构体。作者鼓励读者自行实现这些函数，并提供了完整的代码文件（`part1.c`）供验证，建议构建时启用地址消毒检测。本部分为后续教程奠定了必要基础，后续内容将涵盖窗口、UI元素、消息传递、布局及更高级的功能。

---

## 7. 美国正用“拆毁球”摧毁自身的科学领导地位

**原文标题**: US 'demolishing its scientific leadership with a wrecking ball'

**原文链接**: [https://sciencebusiness.net/news/horizon-europe/us-demolishing-its-scientific-leadership-wrecking-ball-says-chief-eu-research](https://sciencebusiness.net/news/horizon-europe/us-demolishing-its-scientific-leadership-wrecking-ball-says-chief-eu-research)

**《美国“正用大锤摧毁自身科学领导地位”》摘要**

文章报道了欧盟创新与研究委员伊利亚娜·伊万诺娃的强烈批评。她指出，美国近期政策正严重损害全球科学合作及美国自身的研究领导地位。

核心争议在于美国的 **《芯片与科学法案》** 。该法案虽旨在提振国内半导体制造，但其“护栏”条款包含限制性规定，禁止受资助者与“受关注国家”（尤其是中国）的实体进行重大联合研究或技术许可。伊万诺娃认为这些措施过犹不及，正引发“多米诺骨牌效应”，促使荷兰、日本等国采取类似保护主义政策。

她的主要论点如下：
1. **损害美国领导力**：她表示美国正在自我孤立，破坏科学进步赖以生存的开放合作，最终将削弱自身竞争力。
2. **全球连锁反应**：这些政策正引发全球转向研究保护主义，割裂国际科学生态系统。
3. **欧盟的对比路径**：伊万诺娃强调欧盟的 **“地平线欧洲”计划** 作为一种反模式，注重开放性与全球合作（包括吸纳英国、瑞士等国的努力）。她警告称，若美国继续此道路，欧盟不会“袖手旁观”，将建立自身的合作伙伴关系。

简言之，这位欧盟最高研究官员警告，美国以国家安全为由的科学限制措施正在适得其反，不仅危及美国的科学卓越地位，更将世界推向一个割裂且创新乏力的研究格局。

---

## 8. 上周停电后，NIST的时间比协调世界时慢了5微秒。

**原文标题**: NIST was 5 μs off UTC after last week's power cut

**原文链接**: [https://www.jeffgeerling.com/blog/2025/nist-was-5-μs-utc-after-last-weeks-power-cut](https://www.jeffgeerling.com/blog/2025/nist-was-5-μs-utc-after-last-weeks-power-cut)

美国国家标准与技术研究院（NIST）博尔德实验室因极端大风导致停电，备用发电机故障后，其主原子钟与协调世界时（UTC）失步数日。尽管如此，时间偏差被控制在5微秒以内。

对于使用NIST网络时间协议（NTP）服务器校准互联网时间的公众而言，这种微小偏差相比正常网络延迟可忽略不计。但对依赖NIST授时信号的科研、航空航天及专业工业用户来说，这种精度至关重要。由杰夫·谢尔曼带领的NIST团队通过启用电池备份和调整供电线路应对突发状况，并决定维持服务器在线以避免更大范围的中断。

此次事件暴露出高精度授时基础设施的脆弱性，也引发了对过度依赖全球定位系统（GPS）授时的广泛担忧，凸显了发展弹性替代方案（如拟议的广播定位系统BPS）的必要性。尽管GPS和现场原子钟（受爱好者和专业人士使用）等冗余系统提供了备份，但本次事件仍考验了NIST的灾难应对能力——最终成功避免了大规模影响。

---

## 9. 你的Supabase是公开的

**原文标题**: Your Supabase Is Public

**原文链接**: [https://skilldeliver.com/your-supabase-is-public](https://skilldeliver.com/your-supabase-is-public)

本文详细阐述了使用Supabase构建的应用程序中一个普遍且严重的安全漏洞：由于未启用行级安全（RLS），无意中暴露了整个数据库。作者描述了如何仅通过网站代码中公开的Supabase匿名密钥，轻松访问了一个朋友的项目以及其他项目，包括一家种子阶段的初创公司。该密钥允许无限制访问如`users`等表，暴露了电子邮件和密码哈希等敏感数据。

核心问题在于，虽然匿名密钥本应是公开的，但开发者常常在创建表时未配置RLLS策略，实际上将该密钥变成了数据库的万能钥匙。作者批评Supabase未在这一关键设置阶段提供更强、更明确的警告，尤其是对于像`users`这样的常见表。他们将其与PocketBase进行了对比，后者具有安全的默认设置，需要开发者明确操作才能覆盖。

文章强调了这一风险的规模，指出类似平台上每天有数千个项目被创建，并认为工具设计应承担起责任，防止这种本可轻易避免的错误，而不仅仅是依赖开发者的技能。

---

## 10. GLM-4.7：提升编程能力的新进展

**原文标题**: GLM-4.7: Advancing the Coding Capability

**原文链接**: [https://z.ai/blog/glm-4.7](https://z.ai/blog/glm-4.7)

**摘要：**

本文介绍了GLM系列的最新版本GLM-4.7，相比前代GLM-4.6，其在编程能力上取得了显著进步。本次发布的核心目标是提升模型在编程相关任务中的表现。

主要改进包括更优的代码生成、调试和解释能力。GLM-4.7在根据自然语言指令编写代码、理解复杂代码库以及修复错误方面，展现出更高的准确性和效率。该模型在生成全面的文档和注释方面也更为出色。

虽然核心文本简短，但“向下滚动查看更多”的提示表明，完整文章很可能详细介绍了具体的基准测试结果，例如在标准化编程评估数据集（如HumanEval、MBPP）上提升的分数，并可能强调新功能，如支持更多编程语言、更好地处理长代码文件的上下文，或与开发者工具的集成。

本质上，GLM-4.7是在GLM-4.6基础上的一次专业化升级，旨在为软件开发者、研究人员及所有编程相关人员提供更强大、更可靠的人工智能助手。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 2 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 3 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 4 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 5 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 6 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 7 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 8 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 9 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 10 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 11 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 12 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 13 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 14 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 15 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 16 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 17 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 18 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 19 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 20 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 21 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 22 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 23 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 24 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 25 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 26 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 27 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 28 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 29 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 30 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 31 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 32 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 33 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 34 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 35 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 36 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 37 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 38 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 39 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 40 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 41 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 42 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 43 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 44 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 45 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 46 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 47 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 48 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 49 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 50 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 51 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 52 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 53 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 54 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 55 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 56 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 57 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 58 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 59 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 60 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 61 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 62 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 63 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 64 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 65 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 66 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 67 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 68 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 69 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 70 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 71 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 72 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 73 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 74 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 75 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 76 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 77 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 78 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 79 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 80 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 81 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 82 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 83 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 84 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 85 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 86 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 87 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 88 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 89 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 90 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 91 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 92 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 93 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 94 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 95 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 96 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 97 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 98 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 99 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 100 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 101 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 102 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 103 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 104 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 105 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 106 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 107 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 108 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 109 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 110 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 111 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 112 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 113 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 114 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 115 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 116 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 117 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 118 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 119 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 120 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 121 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 122 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 123 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 124 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 125 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 126 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 127 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 128 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 129 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 130 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 131 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 132 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 133 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 134 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 135 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 136 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 137 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 138 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 139 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 140 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 141 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 142 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 143 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 144 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 145 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 146 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 147 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 148 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 149 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 150 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 151 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 152 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 153 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 154 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 155 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 156 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 157 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 158 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 159 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 160 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 161 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 162 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 163 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 164 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 165 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 166 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 167 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 168 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 169 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 170 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 171 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 172 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 173 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 174 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 175 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 176 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 177 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 178 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 179 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 180 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 181 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 182 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 183 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 184 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 185 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 186 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 187 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 188 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 189 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 190 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 191 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 192 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 193 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 194 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 195 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 196 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 197 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 198 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 199 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 200 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 201 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 202 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 203 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 204 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 205 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 206 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 207 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 208 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 209 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 210 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 211 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 212 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 213 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 214 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 215 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 216 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 217 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 218 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 219 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 220 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 221 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 222 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 223 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 224 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 225 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 226 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 227 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 228 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 229 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 230 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 231 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 232 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 233 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 234 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 235 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 236 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 237 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 238 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 239 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 240 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 241 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 242 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 243 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 244 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 245 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 246 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 247 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 248 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 249 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 250 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 251 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 252 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 253 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 254 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 255 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 256 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 257 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 258 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 259 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 260 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 261 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 262 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 263 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 264 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 265 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 266 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 267 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 268 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 269 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 270 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 271 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 272 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 273 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 274 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 275 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 276 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
