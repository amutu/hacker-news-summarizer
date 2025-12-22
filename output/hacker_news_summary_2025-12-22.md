# Hacker News 热门文章摘要 (2025-12-22)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. 美国阻止所有海上风电建设，称原因属于机密。

**原文标题**: US blocks all offshore wind construction, says reason is classified

**原文链接**: [https://arstechnica.com/science/2025/12/us-government-finds-new-excuse-to-stop-construction-of-offshore-wind/](https://arstechnica.com/science/2025/12/us-government-finds-new-excuse-to-stop-construction-of-offshore-wind/)

美国内政部已暂停国内所有五个在建海上风电项目的施工，理由是一份国防部机密报告指出了未明确的“国家安全风险”。特朗普政府的这一举措延续了此前阻止单个项目的失败尝试，那些尝试均被法院驳回。

受影响的五个项目——弗吉尼亚沿海海上风电、帝国风电、革命风电、日出风电和葡萄园风电1号——处于不同建设阶段，其中一个已接近完工。政府声称风险涉及雷达干扰和“对手技术的快速发展”，但由于报告属于机密，未公开具体细节，这一做法将使法律挑战复杂化。

已投入数十亿美元的各州官员和项目开发商强烈反对这一决定。康涅狄格州总检察长称此举是“无视法律且反复无常”的尝试，意在规避先前的法院命令，并表示正考虑采取法律行动。文章指出，在以往的诉讼中，政府未能提供阻止项目的实质性理由，暗示其内部动机主要源于总统对风电的反对。

---

## 12. 黎智英是自由的殉道者。

**原文标题**: Jimmy Lai Is a Martyr for Freedom

**原文链接**: [https://reason.com/2025/12/19/jimmy-lai-is-a-martyr-for-freedom/](https://reason.com/2025/12/19/jimmy-lai-is-a-martyr-for-freedom/)



---

## 13. SQL的崛起：每个人都需掌握的第二编程语言

**原文标题**: The Rise of SQL:the second programming language everyone needs to know

**原文链接**: [https://spectrum.ieee.org/the-rise-of-sql](https://spectrum.ieee.org/the-rise-of-sql)

**简明摘要：**

文章认为，SQL（结构化查询语言）已成为许多领域专业人士必备的第二编程语言，而不仅仅是软件开发者与数据科学家的专属工具。其兴起源于数字经济时代数据的爆炸式增长，直接查询与分析数据库的能力已成为一项关键技能。

主要观点包括：
*   **普遍性与需求：** SQL是与全球绝大多数关系型数据库交互的基础，这些数据库存储着企业与组织的关键数据。如今，SQL知识在远超传统技术岗位的就业市场中备受青睐。
*   **易用性与强大功能：** 该语言因其声明式、类英语的语法而相对易学，同时又能处理复杂的数据检索与操作任务，这种结合使其成为一种多功能工具。
*   **广泛适用性：** 市场营销、金融、研究和运营等领域的专业人士，正越来越多地被要求使用SQL来提取洞察、生成报告并做出数据驱动的决策，而无需依赖中间环节。

核心论点是：在当今以数据为中心的世界里，SQL已从一项小众技术技能转变为近乎通用的信息价值提取素养，从而巩固了其作为必备语言的地位。

---

## 14. 史上最大的CRT显示器：索尼PVM-4300

**原文标题**: The biggest CRT ever made: Sony's PVM-4300

**原文链接**: [https://dfarq.homeip.net/the-biggest-crt-ever-made-sonys-pvm-4300/](https://dfarq.homeip.net/the-biggest-crt-ever-made-sonys-pvm-4300/)

本文详述了索尼PVM-4300（亦称KV-45ED1），这款史上最大的传统显像管电视。它于1989年在日本推出，配备45英寸显像管和43英寸可视屏幕，重约450磅，因其手工制造工艺在美国售价达4万美元。该电视采用改进清晰度电视（IDTV）技术以提升画质。

1990年仅约20台进口至美国，销售因经济衰退受阻。数十年来，存世机型的存在一直成谜。然而在2024年末，一位名为Shank Mods的YouTube博主记录了一台PVM-4300从日本餐厅被抢救并运往美国的过程，证实至少有一台由复古计算机爱好者保存至今。

---

## 15. 亨格探测器

**原文标题**: Henge Finder

**原文链接**: [https://hengefinder.rcdis.co/#learn](https://hengefinder.rcdis.co/#learn)

**《“亨奇”探测器》摘要**

“亨奇”探测器是一款网络工具，旨在帮助用户发现其所在街道何时会出现“亨奇”现象——即日落与街道方向完美对齐的景象，类似于纽约的“曼哈顿亨奇”。

该工具需在台式电脑上运行。用户按照指引输入街道地址后，网站会利用地图数据估算街道走向，并提供一个可调节箭头供用户微调精确方向。设定完成后，工具将计算出日落方位角与该方向对齐的具体日期。

文章解释道，理想的“亨奇”街道应具备长、直、西侧视野开阔的特点，且大致呈东西走向。文中阐明，“亨奇”现象源于地球23.5°的轴倾角导致日落位置在一年中沿地平线移动。虽然街道方向固定，但太阳仅在特定几日与其对齐，从而形成这一壮观景象。交互式可视化图表对比了“亨奇”日与非“亨奇”日的太阳路径，并演示了地球轨道运动如何促成这种对齐。

---

## 16. 古建筑向冬至致敬

**原文标题**: The ancient monuments saluting the winter solstice

**原文链接**: [https://www.bbc.com/culture/article/20251219-the-ancient-monuments-saluting-the-winter-solstice](https://www.bbc.com/culture/article/20251219-the-ancient-monuments-saluting-the-winter-solstice)

本文探讨了古今纪念碑如何设计成与冬至日对齐，以标记一年中最短的白昼和太阳象征性的重生。

从奥克尼群岛的梅肖韦古墓（约公元前2800年）到布列塔尼的仙女石，古代建筑通过精确的朝向捕捉冬至日出或日落。这种对齐可能曾服务于生存与农业等实际需求，同时也承载着深刻的精神意义，象征着年度循环中死亡与重生的关键时刻。

在20至21世纪，艺术家通过大地艺术复兴了这一理念。南希·霍尔特的作品《太阳隧道》和詹姆斯·特瑞尔的《罗登火山口》以纪念碑式的形态框定冬至日出与日落，旨在重新连接人类与自然节律。同样，杉本博司在日本建造的江之浦测候所，是一座明确以“新石器时代美学”设计、用于追踪太阳轨迹的现代建筑。

这些跨越古今的纪念碑共同彰显了人类对冬至持久的迷恋。它们将我们置于时间与宇宙的坐标中，颂赞光明回归的承诺与生命循环的本质。

---

## 17. 微软将淘汰造成数十年危害的过时加密算法。

**原文标题**: Microsoft will kill obsolete cipher that has wreaked decades of havoc

**原文链接**: [https://arstechnica.com/security/2025/12/microsoft-will-finally-kill-obsolete-cipher-that-has-wreaked-decades-of-havoc/](https://arstechnica.com/security/2025/12/microsoft-will-finally-kill-obsolete-cipher-that-has-wreaked-decades-of-havoc/)

微软在历经26年后，终于默认禁用Windows中过时且易受攻击的RC4加密算法。这种流密码算法于1987年推出，1994年遭泄露，数十年来一直是已知的安全漏洞，却仍是Windows Active Directory身份验证的默认备选方案。

这种默认支持使得黑客能够利用名为Kerberoasting的攻击技术，该技术利用了RC4在Active Directory中的实现方式（使用未加盐的单轮MD4哈希）。这是多起重大数据泄露事件的关键因素，例如2023年针对医疗保健提供商Ascension的攻击，此事曾引发美国参议员罗恩·怀登的批评。

到2026年中，微软将更新域控制器，默认仅允许更安全的AES-SHA1加密。除非管理员明确重新启用，否则RC4将被禁用。AES-SHA1的抗破解能力显著更强，所需时间和资源约为RC4的1000倍。

微软承认移除这种长期存在的算法存在困难，但表示其使用率已降至可忽略水平。公司正在提供更新的日志记录工具和PowerShell脚本，以帮助管理员在变更生效前识别仍依赖RC4的遗留系统。

---

## 18. Debian的Git过渡

**原文标题**: Debian's Git Transition

**原文链接**: [https://diziet.dreamwidth.org/20436.html](https://diziet.dreamwidth.org/20436.html)

根据文章内容，以下是简洁的总结：

**《Debian的Git转型》摘要**

文章详述了Debian项目正在进行的、复杂的转型过程——从其历史上使用的多种版本控制系统（主要是Bazaar）转向基于Git的统一系统。作者（一位Debian开发者）指出，这并非简单的切换，而是对项目基础设施的根本性重构，涉及三个主要部分：

1.  **打包工作流（`debgit`）：** 创建新工具，使开发者能直接在Git中处理Debian软件包，同时维护必要的Debian特定元数据和补丁管理。该系统设计为与现有工作流兼容。

2.  **协作平台（`Salsa`）：** 建立名为Salsa（software.debian.org）的GitLab实例，用于托管仓库并促进打包和上游开发的协作、代码审查和持续集成。

3.  **归档系统集成：** 最具挑战性的部分是将基于Git的打包工作连接到Debian的核心归档系统（所有已构建软件包的仓库）。新系统`git.debian.org`作为权威网关，自动在Git仓库与传统归档之间导入和导出数据。

作者强调，这一转型是一项庞大而长期的工程，旨在通过使用更熟悉的工具集（Git/GitLab）来现代化Debian的开发流程、改善协作并吸引新的贡献者。关键要点在于：这是深刻的基础设施变革，而不仅仅是客户端命令的更改，其成功对Debian的未来至关重要。

---

## 19. 本·乔丹——这款Flock监控摄像头泄露事件堪比跟踪狂的“网飞”[视频]

**原文标题**: Benn Jordan – This Flock Camera Leak Is Like Netflix for Stalkers [video]

**原文链接**: [https://www.youtube.com/watch?v=vU1-uiUlHTo](https://www.youtube.com/watch?v=vU1-uiUlHTo)

由于提供的文本并非关于本·乔丹或相机泄露的文章，因此无法提供摘要。所提供的内容是YouTube网页的标准页脚，包含通用的法律链接、版权信息以及谷歌/YouTube的联系方式。

没有关于所述主题（“这次Flock相机泄露如同跟踪狂的Netflix”）的文章内容、主要论点或关键信息可供总结。用户似乎误将网页页脚当成了视频描述或文章正文进行了复制。

---

## 20. 用于音乐创作的编程语言

**原文标题**: Programming languages used for music

**原文链接**: [https://timthompson.com/plum/cgi/showlist.cgi?sort=name&concise=yes](https://timthompson.com/plum/cgi/showlist.cgi?sort=name&concise=yes)

本文概述了众多专门用于创作、分析和处理音乐的编程语言与环境。这些语言可分为几大类别。

许多语言用于**声音合成与音频处理**，例如属于Music-N家族的Csound、CLM（Common Lisp Music）和CMIX，它们通过基于文本的乐队和乐谱文件生成声音。FAUST是用于实时信号处理的函数式语言，而ChucK以其强大的时序和并发能力著称。

另一主要类别专注于**算法作曲与音乐结构**，允许作曲家定义生成音乐的过程。例如可输出至多种合成目标的Common Music，以及通常采用面向对象设计并支持实时交互的HMSL、JMSL和FORMES等语言。

部分语言专为**乐谱记谱与表示**而设计，例如简洁的文本格式ABC、用于高质量音乐排版的LilyPond，以及CMN（通用音乐记谱法）。

其他语言则作为**MIDI音序与控制语言**服务于实时演奏与交互，例如用于Cakewalk的CAL、KeyKit和Hyperlisp。此外还有Kyma和Interactor等可视化编程环境。

这些语言展现了从底层音频合成到高层作曲策略的多元方法，并体现出Lisp和Forth等语言对许多系统的深远历史影响。

---

## 21. Show HN: Netrinos – 为小团队设计的极简Mesh VPN

**原文标题**: Show HN: Netrinos – A keep it simple Mesh VPN for small teams

**原文链接**: [https://netrinos.com](https://netrinos.com)

**Netrinos** 是一款简单、零配置的网状 VPN 服务，专为小型团队和个人设计，用于在互联网上创建安全、私密的网络。其核心承诺是提供无缝的远程设备访问，无需复杂的防火墙更改、端口转发或 IT 技术支持。

该服务采用 **WireGuard 加密技术** 在设备间建立安全的加密隧道，使它们能够像在同一本地网络上一样通信。它能自动适应设备在不同网络（如办公室局域网、家庭 WiFi 或蜂窝数据）间的切换，非常适合远程办公和旅行。

其强调的主要特点包括：
*   **易于使用：** 安装应用并登录，即可自动发现和配置设备。
*   **跨平台支持：** 支持 Windows、Mac、Linux、服务器、树莓派和云虚拟机。
*   **透明定价：** 提供免费个人计划（1 位用户，100 台设备，非商业用途）、**专业计划（每月 10 美元）**（支持 10 位用户和 100 台设备）以及定制企业解决方案。

总之，Netrinos 致力于成为在公共互联网上安全连接分布式设备和团队成员的无忧解决方案。

---

## 22. 世上没有假羽毛这种东西[视频]

**原文标题**: There's no such thing as a fake feather [video]

**原文链接**: [https://www.youtube.com/watch?v=N5yV1Q9O6r4](https://www.youtube.com/watch?v=N5yV1Q9O6r4)

本文并非新闻报道或视频内容，而是YouTube的标准行政页脚。

其主要内容包括：
*   标明YouTube为内容平台。
*   列出关键法律与政策链接（服务条款、隐私权、安全中心）。
*   声明该平台由Google LLC运营，首席执行官为Sundar Pichai，并附上公司地址。
*   提供韩国用户支持的联系方式。
*   澄清视频中展示的商品由第三方商家销售，与YouTube无关，YouTube不承担相关责任。
*   包含版权声明（© 2025 Google LLC）。

本质上，这是YouTube页面底部常见的标准法律免责声明及公司归属信息。

---

## 23. 氛围之年

**原文标题**: A year of vibes

**原文链接**: [https://lucumr.pocoo.org/2025/12/22/a-year-of-vibes/](https://lucumr.pocoo.org/2025/12/22/a-year-of-vibes/)

在这份年终回顾中，阿明·罗纳赫将2025年描述为他编程生涯的转折之年，其标志是向“智能体编程”的转变。如今他主要使用Claude Code等AI工具来无接触地生成和审查代码，从直接编程者转变为AI智能体的“工程领航员”。

他指出，由于这些新工具挑战了数十年的软件工程实践，当前行业讨论已由成熟经验转向“氛围感知”。未来的核心挑战与期望包括：

*   **新工具：** 现有版本控制系统（如Git/GitHub）和代码审查机制难以适配AI生成代码，缺乏追踪提示词与失败尝试的功能。
*   **新可观测性：** 大语言模型编写复杂查询与脚本的能力可能彻底改变调试与系统监控方式。
*   **社会契约：** 开源项目中低投入AI生成贡献的激增，需要建立尊重协作的新规范。

罗纳赫也坦言与这些AI“智能体”存在着复杂时而令人不适的关系，指出它们易引发单向情感联结，且讨论其角色时难以避免拟人化倾向。他最终以谨慎乐观的态度总结，认为AI有望通过降低定制解决方案的构建难度，减少对外部库的依赖。

---

## 24. Flock将其AI摄像头暴露在互联网上。我们追踪了自己。

**原文标题**: Flock Exposed Its AI-Powered Cameras to the Internet. We Tracked Ourselves

**原文链接**: [https://www.404media.co/flock-exposed-its-ai-powered-cameras-to-the-internet-we-tracked-ourselves/](https://www.404media.co/flock-exposed-its-ai-powered-cameras-to-the-internet-we-tracked-ourselves/)

Flock Safety公司至少60台AI驱动的Condor监控摄像头存在重大安全漏洞，其实时画面与后台管理权限暴露在公开互联网中，使得任何人都能在无需密码的情况下查看实时监控、调取录像存档并修改摄像头设置。

研究人员本·乔丹和乔恩·盖恩斯发现，这些本用于追踪并聚焦行人（不仅限于车辆）的摄像头正监控着美国各地的停车场、街道和游乐场等公共场所。记者通过加州贝克斯菲尔德摄像头的直播画面验证了该漏洞，观察到摄像头自动追踪行人，包括佐治亚州游乐场上的儿童及自行车道上的轮滑者。

此次事件暴露出严重的隐私与安全风险，高分辨率画面可能被轻易滥用于跟踪或身份识别。向执法部门及社区推广此类摄像头的Flock Safety公司尚未对此事置评。研究人员使用Shodan等工具定位摄像头，并演示了如何结合开源情报通过监控画面识别个人身份。

---

## 25. 展示HN：一种轻松广播身边电台的方法（寻求反馈）

**原文标题**: Show HN: An easy way of broadcasting radio around you (looking for feedback)

**原文链接**: [https://github.com/dpipstudio/botwave](https://github.com/dpipstudio/botwave)

**BotWave** 是一个基于树莓派设备通过FM广播播放音频文件的系统。它采用服务器-客户端模型，允许从单一服务器集中管理多个树莓派客户端。

主要功能包括远程音频文件上传、启动/停止广播以及服务器与客户端之间的身份验证。客户端需要具有root权限的树莓派，而服务器可在任何安装Python 3.6+的机器上运行。该项目使用基于PiFmRds的自定义后端`bw_custom`。

系统通过适用于Debian系操作系统的自动安装脚本实现便捷部署，支持服务器、客户端或两者同时安装。该系统包含无需服务器的本地广播工具（`Local Client`）以及通过systemd实现的开机自启工具（`AutoRunner`）。

作者特别强调：用户必须遵守本地广播法规，建议使用带通滤波器以减少信号干扰，并自行承担所有法律与安全责任。本软件采用GPLv3.0许可证发布。

---

## 26. 如何保护我的Forgejo实例免受AI网络爬虫侵扰

**原文标题**: How I protect my Forgejo instance from AI web crawlers

**原文链接**: [https://her.esy.fun/posts/0031-how-i-protect-my-forgejo-instance-from-ai-web-crawlers/index.html](https://her.esy.fun/posts/0031-how-i-protect-my-forgejo-instance-from-ai-web-crawlers/index.html)

作者描述了一种轻量级方法来保护其自托管的Forgejo实例免受导致服务器过载的AI网络爬虫侵扰。他们没有采用像Anubis这样的复杂方案，而是通过简单的nginx配置实现防护。

核心策略基于Cookie验证机制。nginx会对每个网络请求检查特定Cookie（例如`Yogsototh_opens_the_door=1`）。若未检测到该Cookie，服务器将返回包含JavaScript代码的418错误页面，该脚本会设置Cookie并重新加载页面。启用JavaScript的合法用户几乎无感知地经历一次重定向即可正常访问，而大多数自动化爬虫则会被拦截。该规则特别为`git`和`git-lfs`用户代理设置了例外，以确保正常的仓库克隆操作不受影响。

作者承认这只是基础且易被绕过的防护措施，但指出当前阶段仍然有效，因为爬虫程序往往更注重抓取规模而非技术对抗。他们注意到这种方案需要用户启用JavaScript，但认为这对自身使用场景是可接受的取舍。该方法被定位为替代重型反爬虫系统的简易临时方案。

---

## 27. 蓄意互联网中断

**原文标题**: Deliberate Internet Shutdowns

**原文链接**: [https://www.schneier.com/blog/archives/2025/12/deliberate-internet-shutdowns.html](https://www.schneier.com/blog/archives/2025/12/deliberate-internet-shutdowns.html)

本文详述了政府蓄意中断互联网的惊人全球趋势。文章以2025年9月阿富汗为例展开：为期两天的全国断网严重阻碍了震后救援、银行业务和航班运行。这只是更广泛趋势的一部分——2024年全球共发生296起断网事件，到2025年底前又有244起，波及数十个国家。

断网手段多样，既有全面封锁，也有针对社交媒体的屏蔽或带宽限制。其动机各异：镇压抗议（如巴拿马）、操纵选举（如白俄罗斯）、控制信息（如伊朗），甚至为防止考试作弊（如阿尔及利亚和印度）。印度是断网次数最多的国家，其次是缅甸和巴基斯坦。

文章指出，这些行为不仅是干扰，更是侵犯人权的举措——它们压制社会声音、掩盖暴行，并瘫痪医疗、金融和人道援助等关键服务，在冲突地区尤为严重。尽管存在VPN等变通方案，但大多数人无法使用。

断网事件的增加与政治动荡、抗议运动及互联网基础设施集中化有关，后者使断网更易实施。虽然国际压力偶尔奏效，但随着各国政府相互效仿，这种做法仍在蔓延。文章最后强调，要扭转这种根深蒂固的趋势，各国政府必须在法律上确立并维护互联网接入权和言论自由权。

---

## 28. 如果你不规划自己的职业生涯，别人就会替你规划（2014）

**原文标题**: If you don't design your career, someone else will (2014)

**原文链接**: [https://gregmckeown.com/if-you-dont-design-your-career-someone-else-will/](https://gregmckeown.com/if-you-dont-design-your-career-someone-else-will/)

本文警示人们不要被日常工作所吞噬，以至于忽略了主动规划职业生涯的重要性，并指出如果我们不为自己设计职业道路，别人就会替我们做决定。为此，作者提出了一套八步反思练习，建议在假期中完成。

这一过程从回顾过去一年的项目与成就开始，随后像记者一样分析背后的趋势。核心步骤是毫无保留地构思理想的职业路径，特别鼓励读者重新审视自己最初却常被忽略的热情所在。接着，该方法强调无情的优先级排序：先确定六个年度目标，然后划掉五个，只专注于一个“真正的北极星”目标。最后，制定一个月的行动计划，并关键性地决定为了守护这个首要目标，需要对哪些事情说“不”。

作者分享说，正是这一过程促使他做出了改变人生的决定——放弃法学院学业，移居他国，成为一名教师和作家——并建议，几小时的战略规划就能显著改善未来一年的职业与个人生活。

---

## 29. 解构协同效应：逆向工程中的人机协作 [pdf]

**原文标题**: Decompiling the Synergy: Human–LLM Teaming in Reverse Engineering [pdf]

**原文链接**: [https://www.zionbasque.com/files/papers/dec-synergy-study.pdf](https://www.zionbasque.com/files/papers/dec-synergy-study.pdf)

**《“反编译协同效应：逆向工程中的人与大型语言模型团队协作”摘要》**

本研究探讨了以GPT-4为代表的大型语言模型如何协助人类专家进行逆向工程任务，特别是反编译代码（将低级汇编语言转换回高级源代码）。

核心发现是，人类分析师与LLM之间采用**协作式、迭代的团队合作模式**，其效果远胜于任何一方单独工作。研究表明，虽然LLM能够生成有用的反编译输出和解释，但它们常常会引入细微的错误、幻觉或逻辑不准确之处。

有效团队协作的关键在于**人类的批判性监督**。推荐的工作流程包括：
1.  人类向LLM提供汇编代码，并通过精确的提示指导其分析。
2.  LLM生成候选的反编译代码及自然语言解释。
3.  人类专家批判性地审查输出，识别缺陷，随后进入反馈循环——纠正LLM、要求澄清或请求替代解释。

这种协同作用利用了LLM强大的模式识别和代码生成能力，同时依赖人类的领域专业知识、推理能力和最终验证。论文得出结论：LLM是逆向工程师强大的**“力量倍增器”**，而非替代品。最优的工作流程是一种互动伙伴关系，即由人类指导LLM并严格验证其工作，从而实现比纯手动或全自动化方法更准确、更高效的反编译。

---

## 30. 迪士尼幻想工程推出新一代机器人角色奥拉夫

**原文标题**: Disney Imagineering Debuts Next-Generation Robotic Character, Olaf

**原文链接**: [https://disneyparksblog.com/disney-experiences/robotic-olaf-marks-new-era-of-disney-innovation/](https://disneyparksblog.com/disney-experiences/robotic-olaf-marks-new-era-of-disney-innovation/)

迪士尼幻想工程揭晓了《冰雪奇缘》中雪宝的下一代机器人版本，标志着角色技术的重大进步。该原型在巴黎迪士尼乐园首次亮相，并与电影原版动画师紧密合作开发，以确保角色个性和动作的真实性。

创造雪宝因其动画化的非实体动作而带来独特挑战。团队运用人工智能的分支——强化学习，使机器人能在远少于传统编程所需的时间内掌握逼真的手势和行走。关键特色包括采用虹彩纤维制成的闪烁“雪”外观、完全可动的嘴巴和眼睛，以及可拆卸的胡萝卜鼻子和手臂。雪宝还能说话并与游客进行对话。

这项创新建立在先前如《星球大战》BDX机器人等角色基础上，代表了表达性表演的新高度。迪士尼计划运用此技术在全球乐园中规模化创造更具情感表现力的角色。

游客很快将能在巴黎迪士尼乐园即将开放的冰雪奇缘世界（于3月29日在迪士尼冒险世界内开幕）的艾莎湾演出中见到机器人雪宝，并有机会在香港迪士尼乐园的限时活动中一睹其风采。

---

