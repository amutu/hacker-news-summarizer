# Hacker News 热门文章摘要 (2025-12-17)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 双子座3闪电版：专为速度打造的前沿智能

**原文标题**: Gemini 3 Flash: frontier intelligence built for speed

**原文链接**: [https://blog.google/products/gemini/gemini-3-flash/](https://blog.google/products/gemini/gemini-3-flash/)

谷歌发布了Gemini 3 Flash，这是一款旨在以高速和低成本提供高级智能的新AI模型。它结合了更大规模Gemini 3 Pro模型的高级推理能力和Flash系列的高效特性。

主要特性与可用性包括：
*   **性能：** 在复杂推理基准测试中表现优异，尤其擅长编程任务，在速度和质量上均超越了前代Gemini 2.5 Pro。
*   **速度与成本：** 速度比Gemini 2.5 Pro快三倍，且计算资源消耗更少，为开发者提供了更高的成本效益。
*   **多模态能力：** 该模型能快速分析和推理图像、视频及音频，例如根据视频创建计划或依据语音指令构建应用程序。
*   **获取方式：** 现已成为Gemini应用和谷歌搜索AI模式中的默认免费模型。开发者可通过Google AI Studio、Vertex AI等工具进行访问。

总之，Gemini 3 Flash致力于为日常用户和构建交互式应用的开发者广泛提供强大、快速的AI辅助。

---

## 2. SQLite是如何进行测试的

**原文标题**: How SQLite is tested

**原文链接**: [https://sqlite.org/testing.html](https://sqlite.org/testing.html)

SQLite通过广泛而严格的测试实现其高可靠性。核心库约15.58万行C代码，其测试套件规模超过代码量的590倍。测试采用四个主要独立框架：用于开发的原始TCL测试、为嵌入式系统提供100%分支及MC/DC覆盖率的专有TH3测试、用于跨引擎验证的SQL逻辑测试（SLT），以及专有的dbsqlfuzz模糊测试器。

测试重点聚焦异常处理，通过模拟内存不足、I/O错误和系统崩溃等故障场景，确保系统能优雅恢复并保持数据完整性。模糊测试采用美国模糊Lop（AFL）、谷歌OSS Fuzz和dbsqlfuzz等工具，对SQLite施加畸形输入和变异数据库，以发现隐蔽错误。

该项目在部署配置中保持100%分支测试覆盖率，并通过语句/分支覆盖测试与变异测试进行验证。结合Valgrind动态分析、未定义行为检查以及大量`assert()`语句的运用，进一步强化代码健壮性。所有版本发布前均需通过多平台多配置的完整测试，每次代码提交前还会运行"极速"测试子集以快速捕获大多数错误。

---

## 3. AWS首席执行官称用AI取代初级开发人员是“最愚蠢的想法之一”

**原文标题**: AWS CEO says replacing junior devs with AI is 'one of the dumbest ideas'

**原文链接**: [https://www.finalroundai.com/blog/aws-ceo-ai-cannot-replace-junior-developers](https://www.finalroundai.com/blog/aws-ceo-ai-cannot-replace-junior-developers)

在最近的一次采访中，亚马逊云科技（AWS）首席执行官马特·加尔曼表示，用人工智能取代初级开发人员是一种目光短浅且战略错误的做法，并称这是他听过“最愚蠢的想法之一”。他为此立场提供了三个关键理由。

首先，初级开发人员通常最擅长使用人工智能工具，因为他们伴随着新技术成长。相比资深同事，他们更容易将这些工具融入日常工作，从而在人工智能的辅助下提高工作效率。

其次，以初级岗位作为削减成本的目标在财务上并不高效。作为薪酬最低的员工，裁减他们所能节省的成本有限，远不如进行更广泛的组织优化。加尔曼警告说，专注于削减初级岗位的公司往往最终不得不重新招聘。

第三，取消初级岗位招聘会破坏企业的人才输送渠道。就像一支没有新秀的体育队伍一样，企业需要持续培养新人才，以促进创新、培养未来领导者，并避免未来出现技能短缺。

加尔曼总结道，虽然人工智能将改变工作岗位并提高生产力，但长期战略仍需投资于人才。他坚信，人工智能最终创造的工作岗位将多于它所取代的。

---

## 4. 更安全的容器生态系统与Docker：免费Docker加固镜像

**原文标题**: A Safer Container Ecosystem with Docker: Free Docker Hardened Images

**原文链接**: [https://www.docker.com/blog/docker-hardened-images-for-every-developer/](https://www.docker.com/blog/docker-hardened-images-for-every-developer/)

Docker已将其加固镜像（DHI）在Apache 2.0许可证下免费开源，为容器安全树立了新的行业标准。此举旨在为超过2600万开发者提供安全、精简且生产就绪的应用基础，从首次拉取镜像开始即可使用。

DHI通过可验证的软件物料清单（SBOM）、SLSA构建三级溯源，并采用Alpine和Debian等可信开源基础镜像，确保透明性与易用性。它能显著减少通用漏洞披露（CVE）数量并缩小镜像体积。免费层级为所有用户提供这一安全基础。

对于有更严格需求的企业，Docker推出**DHI企业版**，提供商业功能，包括7天内保障关键CVE补丁、符合FIPS/STIG标准，以及可定制的镜像构建。**扩展生命周期支持**附加服务可在上游支持终止后提供长达五年的安全补丁。

该计划得到日益壮大的合作伙伴生态支持，包括谷歌、MongoDB和CNCF，并能与安全工具集成。Docker的目标是通过让加固组件成为所有开发者的默认起点，保障整个软件供应链的安全。

---

## 5. Coursera将与Udemy合并

**原文标题**: Coursera to combine with Udemy

**原文链接**: [https://investor.coursera.com/news/news-details/2025/Coursera-to-Combine-with-Udemy-to-Empower-the-Global-Workforce-with-Skills-for-the-AI-Era/default.aspx](https://investor.coursera.com/news/news-details/2025/Coursera-to-Combine-with-Udemy-to-Empower-the-Global-Workforce-with-Skills-for-the-AI-Era/default.aspx)

**Coursera与Udemy合并案摘要**

Coursera与Udemy已达成最终合并协议，将以全股票交易形式合并，打造一个联合平台以应对全球技能缺口，尤其面向人工智能驱动型经济。

**核心要点：**

*   **交易结构：** 本次合并为全股票交易，合并后公司估值约70亿美元。交易完成后，Coursera股东将拥有合并实体约53%的股份，Udemy股东拥有约47%。
*   **战略考量：** 合并旨在整合Coursera在学术内容、学位课程及企业/政府合作方面的优势，与Udemy庞大的实践性、讲师主导课程库及其中小企业客户基础，打造一个全面的“技能对接就业”平台。
*   **领导与品牌：** Coursera首席执行官Jeff Maggioncalda将领导合并后的公司。Coursera和Udemy的品牌及消费者平台均将继续独立运营。
*   **市场定位：** 合并旨在更好地服务从个人学习者、中小企业到大型企业、高校及政府的广阔市场，提供更广泛的内容、证书和工具。
*   **未来目标：** 核心使命是为全球劳动力提供人工智能时代所需的技能，构建一条从学习到职业发展的更融合路径。双方预计交易将于2025年下半年完成，具体取决于监管机构与股东的批准。

---

## 6. Show HN：用Rust实现的高性能Python小波矩阵

**原文标题**: Show HN: High-Performance Wavelet Matrix for Python, Implemented in Rust

**原文链接**: [https://pypi.org/project/wavelet-matrix/](https://pypi.org/project/wavelet-matrix/)

本文宣布了一个新的Python库，它实现了一个高性能的小波矩阵数据结构，其核心计算引擎用Rust编写以确保速度。

关键点包括：
*   **目的：** 该库提供了一个快速且内存高效的小波矩阵，这是一种用于对序列进行高级查询（如排名、选择和范围分位数查询）的数据结构。
*   **核心技术：** 性能关键组件用Rust实现，并通过绑定层（可能使用`PyO3`）暴露给Python，从而将Rust的速度与Python的易用性结合起来。
*   **主要优势：** 相较于纯Python实现，它提供了显著的性能提升，使得对更大数据集进行高级序列分析变得可行。
*   **预期用途：** 它专为生物信息学、数据压缩和信息检索等领域的开发者和研究人员设计，这些领域需要对大型符号序列（如DNA碱基、文本字符或整数）进行高效查询。

本文以“Show HN”帖子的形式呈现，表明这是一个与Hacker News社区分享以获取反馈和讨论的项目。

---

## 7. 为何按成果计费对AI代理来说合情合理

**原文标题**: Why outcome-billing makes sense for AI Agents

**原文链接**: [https://www.valmi.io/blog/an-imperative-for-ai-agents-outcome-billing-with-valmi/](https://www.valmi.io/blog/an-imperative-for-ai-agents-outcome-billing-with-valmi/)

本文主张AI智能体开发者应采用**基于成果的计费模式**，而非传统的按席位或使用量定价。

核心论点是：AI智能体的真正价值在于其实现的商业成果（如解决的工单数量、完成的招聘），而非其内部活动量。通过根据这些可衡量的成果收费，开发者可以合理分享（例如10%）其为客户创造的价值，比如显著的效率提升。

作者认为**传统计费系统不适用于AI智能体**，主要原因有二：
1.  **高昂且多变的成本**：AI系统具有显著且不可预测的大语言模型成本，与传统SaaS产品边际成本可忽略的特性截然不同。
2.  **定价错位**：按席位定价在AI替代人力时失效，而按使用量定价无法区分单纯活动与成功成果。

文章介绍了开源平台**Valmi**作为解决方案，它帮助开发者实施成果计费。该平台将成本追踪与成果衡量相结合，提供利润透明度。这种方法还能通过将风险转移给开发者来**销售可靠性不定的AI**——客户只需为有效成果付费。Valmi通过客户价值展示面板提供支持。

总之，文章主张成果计费对于公平定价AI智能体、体现其真实价值以及在非确定性技术中建立客户信任至关重要。

---

## 8. AI能力并非人性

**原文标题**: AI capability isn't humanness

**原文链接**: [https://research.roundtable.ai/capabilities-humanness/](https://research.roundtable.ai/capabilities-humanness/)

**摘要：**

本文认为，无论人工智能的能力多么先进，都不等同于人类意识或人性。文章区分了人工智能的*功能性输出*（如生成文本、识别模式或解决问题）与定义人类生活的*主观体验*（如情感、意向性和自我意识）。

核心观点是，人工智能通过复杂的数据处理和模式识别运作，但缺乏真正的理解、感知或内在生命。其“智能”是基于训练数据和算法的模拟，而非意识的产物。作者提醒不要将人工智能系统拟人化，警告赋予它们类人特质是一种范畴错误，可能导致不切实际的期望和伦理疏忽。

最终，文章总结道，尽管人工智能是一种强大的工具，能够模仿或增强某些人类认知功能，但其本质仍是机械性的。真正的人性涉及具身体验、情感深度和自我意识，这是当前人工智能所不具备且可能永远无法复制的。关键启示是：在欣赏人工智能实用性的同时，不应将其能力与人类存在的本质混为一谈。

---

## 9. Zmij：更快的浮点双精度转字符串转换

**原文标题**: Zmij: Faster floating point double-to-string conversion

**原文链接**: [https://vitaut.net/posts/2025/faster-dtoa/](https://vitaut.net/posts/2025/faster-dtoa/)

本文介绍了一种名为Zmij的新型高性能算法，用于将双精度浮点数转换为十进制字符串。该算法在一个周末内开发完成，并在Dragon4、Grisu和Schubfach等现有方法的基础上进行了改进。

相较于之前的领先算法Schubfach，Zmij的主要改进包括：
*   将候选数字数量从2-4个减少到1-3个。
*   使用更快的32位对数近似计算替代64位计算。
*   用更快的乘法运算替代部分整数除法。
*   实现了无分支处理不规则舍入区间。
*   通过数字对查找表实现更高效的输出格式化。

性能基准测试显示，Zmij比Dragonbox快约68%，比作者自己的Schubfach实现快约2倍。在Apple M1芯片上，单个双精度浮点数的转换仅需约10-20纳秒。

该算法目前仅支持科学计数法（指数表示法），但作者指出添加定点格式支持较为直接。作者计划将Zmij集成到{fmt}库中，并建议该算法将有益于JSON序列化；同时，通过一项C++标准提案，它有望提升`std::to_string`的性能。

---

## 10. 关于已排序数据的说明

**原文标题**: Notes on Sorted Data

**原文链接**: [https://amit.prasad.me/blog/sorted-data](https://amit.prasad.me/blog/sorted-data)

本文探讨了在使用原始字节字符串的系统中按排序顺序存储和比较数据所面临的挑战及解决方案。

核心问题在于字节字典序无法自然地保持多种数据类型的逻辑顺序。对于**整数**，直接存储内存字节会因字节序问题而失效。解决方案是采用长度前缀的大端编码，通过先比较大小再比较值来保持顺序。对于**有符号整数**，通过与最小值进行按位异或运算，将其映射到无符号范围以实现正确排序。

**浮点数**因其IEEE-754格式更为复杂。文章建议采用两步转换：对负数进行顺序反转，再应用与有符号整数相同的异或技术。

对于**字符串和任意数据**，简单的长度前缀会破坏排序。推荐使用空终止符（如C字符串），因为它始终是最小的字节，并能清晰分隔元素以便比较。

最后，对于**复合数据（元组）**，直接拼接元素可能导致歧义。在元素间使用空终止符可在字节比较时保持预期的元组顺序。文章总结指出，虽然长度前缀有助于随机访问，但空终止在维护排序顺序方面更为优越。

---

## 11. Flick（YC F25）正在招聘创始工程师，打造AI电影制作的Figma。

**原文标题**: Flick (YC F25) Is Hiring Founding Engineer to Build Figma for AI Filmmaking

**原文链接**: [https://www.ycombinator.com/companies/flick/jobs/Tdu6FH6-founding-frontend-engineer](https://www.ycombinator.com/companies/flick/jobs/Tdu6FH6-founding-frontend-engineer)

Flick是一家获得Y Combinator支持（YC F25）的初创公司，现招聘一名创始前端工程师，负责构建AI电影制作的核心界面，他们将其描述为“AI电影领域的Figma + Cursor”。

**职位描述：** 创始工程师将主导产品核心创意工具（包括画布、时间轴和节点图）的开发，直接与创始人合作。该职位提供10万至20万美元的薪资和0.10%-1.00%的股权，工作地点位于加利福尼亚州桑尼维尔或远程，并提供签证支持。

**任职

**公司背景：** Flick由一位曾参与开发Instagram Stories的技术领导者和一位获奖电影制作人共同创立。公司获得了顶级风险投资机构的充足资金，致力于为AI原生视觉叙事打造未来标准。

**理想人选：** 此职位适合热衷于开发直观创意软件的人士，有视频/设计工具、动画系统经验，或对电影和艺术有个人兴趣者优先。

---

## 12. FCC主席暗示该机构并非独立，使命声明中删除相关措辞

**原文标题**: FCC chair suggests agency isn't independent, word cut from mission statement

**原文链接**: [https://www.axios.com/2025/12/17/brendan-carr-fcc-independent-senate-testimony-website](https://www.axios.com/2025/12/17/brendan-carr-fcc-independent-senate-testimony-website)

根据Axios的文章，以下是关键要点总结：

2025年12月，共和党籍联邦通信委员会（FCC）委员布伦丹·卡尔在参议院委员会作证时表示，FCC“并非独立机构”，而是“行政部门的一部分”。这一说法与长期以来将FCC视为独立监管委员会的理解相悖。

卡尔的言论是在FCC官网更新后发表的——其使命声明中删除了“独立”一词。修订后的声明将FCC描述为“监管”通信的“联邦机构”，而此前版本明确称其为“监督”通信的“独立美国政府机构”。

这一变动引发了民主党人和消费者权益倡导者的强烈争议与担忧。批评者（包括民主党籍FCC主席杰西卡·罗森沃塞尔）认为，此举旨在蓄意削弱该机构传统上免受政治压力（尤其是白宫影响）的独立性，可能导致网络中立、媒体所有权和宽带监管等决策受到更多党派干预。

卡尔及其支持者辩称，此举仅是法律和宪法层面的准确表述，强调FCC组织结构本就属于行政部门。这场辩论凸显了关于监管机构角色及其自主性的根本性意识形态冲突。

---

## 13. 双倍速被黑，揭露其AI生成账户正在推广的内容

**原文标题**: Doublespeed hacked, revealing what its AI-generated accounts are promoting

**原文链接**: [https://www.404media.co/hack-reveals-the-a16z-backed-phone-farm-flooding-tiktok-with-ai-influencers/](https://www.404media.co/hack-reveals-the-a16z-backed-phone-farm-flooding-tiktok-with-ai-influencers/)

**摘要：**

由安德森·霍洛维茨基金（a16z）投资的初创公司Doublespeed遭黑客入侵。该公司运营着一个至少包含数百部智能手机的“手机农场”，用于管理推广产品的AI生成社交媒体账户。

此次入侵暴露了两个关键问题：
1.  它揭示了这些AI账户正在推广的具体产品，且相关帖子通常未按法律要求披露其为广告内容。
2.  黑客得以控制了Doublespeed网络中超过1000部手机。

这位匿名黑客声称已于10月31日向Doublespeed报告了该安全漏洞，但在报告时仍能访问公司的后端系统，包括手机农场。Doublespeed尚未对此事件公开置评。

包含这些细节的原文受付费墙保护，仅限该出版机构的付费订阅者阅读。

---

## 14. 人工智能将使形式化验证成为主流。

**原文标题**: AI will make formal verification go mainstream

**原文链接**: [https://martin.kleppmann.com/2025/12/08/ai-formal-verification.html](https://martin.kleppmann.com/2025/12/08/ai-formal-verification.html)

在这篇文章中，马丁·克莱普曼预测，人工智能将把形式化验证——即软件正确性的数学证明——带入主流软件工程领域。

他指出，尽管形式化验证工具早已存在，但由于编写证明需要高昂的成本和博士级别的专业知识，使其一直局限于小众领域，对大多数项目而言经济上不可行。然而，基于大语言模型的编程助手的兴起正在改变这一现状。这些人工智能系统正逐渐擅长生成复杂的证明脚本，从而大幅降低了成本和工作量。

克莱普曼认为，人工智能也*催生*了对形式化验证的更大需求。与其依赖人工审查AI生成的代码，我们可以让AI自行证明其代码的正确性，这使得其输出比手工编写的代码更值得信赖。这个过程是自我修正的，因为任何无效的证明都会被经过验证的证明检查器拒绝。

文章指出，主要的挑战将从编写证明转向正确定义代码必须满足的形式化规范。虽然AI可能协助这种转换，但这需要审慎的思考。最终，克莱普曼展望了这样一个未来：开发者以高级方式指定所需属性，AI则自动生成正确的代码及其证明，从而从根本上改变软件开发。

---

## 15. 车牌识别观察

**原文标题**: alpr.watch

**原文链接**: [https://alpr.watch/](https://alpr.watch/)

**alpr.watch 概述**

alpr.watch 是一个网站和倡导工具，旨在帮助公民追踪并反对地方政府采用大规模监控技术，特别是像 Flock Safety 那样的自动车牌识别系统。

该网站的核心功能是一个地图，它会扫描市政会议议程中与监控相关的关键词（如“Flock”、“ALPR”）。地图上会显示正在讨论这些技术的地点标记，使居民能够找到相关会议并采取行动。地图还显示了现有 ALPR 摄像头的位置。

文章指出，这些系统正在美国各地悄然扩散，已部署的摄像头超过 80,000 个。它警告说，ALPR 会创建居民活动的永久数据库，带来重大的隐私风险。该技术被描述为一种“滑坡效应”，系统会超越其声称的解决犯罪目的，扩展到移民执法等领域，且缺乏有效监督。

该网站允许用户注册电子邮件提醒，以了解所在地区关于监控的讨论，并提供资源帮助理解 ALPR 和 Flock Safety。最后，它列出了积极反对大规模监控的全国性和地方性组织，如电子前沿基金会和美国公民自由联盟。

---

## 16. 宣布ty的Beta版本发布

**原文标题**: Announcing the Beta release of ty

**原文链接**: [https://astral.sh/blog/ty](https://astral.sh/blog/ty)

Astral宣布推出**ty**的Beta版本，这是一款用Rust编写的全新、极速Python类型检查器和语言服务器。作为mypy和Pyright等工具的替代方案，ty优先考虑性能和卓越的开发体验。

其主要特性包括：
*   **极致速度：** 在无缓存情况下，ty比现有类型检查器快10至60倍，编辑器中的增量更新速度最高可达500倍。
*   **增量架构：** 专为语言服务器从头构建，可在代码编辑后近乎实时地更新诊断信息。
*   **高级类型检查：** 提供一流交集类型和高级类型收窄等复杂功能，实现更精准且符合人体工学的反馈。
*   **高质量诊断：** 错误信息清晰且结合上下文，常会解释根本原因并提供修复建议。
*   **编辑器支持：** 提供VS Code扩展，具备完整的语言服务器协议功能（跳转到定义、自动补全等）。

Beta版本发布后，Astral计划向稳定版推进，重点包括修复错误、完善类型规范以及增加对Pydantic等库的支持。长远来看，ty旨在为Astral工具链中的高级语义分析提供核心支持。

---

## 17. 无图形API

**原文标题**: No Graphics API

**原文链接**: [https://www.sebastianaaltonen.com/blog/no-graphics-api](https://www.sebastianaaltonen.com/blog/no-graphics-api)

本文认为，现代低级图形API（DirectX 12、Vulkan、Metal）已经过时且过于复杂。这些API设计于十年前，针对的是旧的GPU架构，需要大量预编译状态对象（PSO）来管理性能，导致缓存巨大和游戏卡顿。

作者追溯了GPU硬件和API的历史演变，解释了诸如独立内存池和固定功能单元等历史遗留限制如何影响了早期API的设计。随着GPU演变为具有直接内存访问和无绑定资源的通用缓存一致性处理器，这些限制已经过时。

核心论点是，当代GPU不再需要当前API中繁重的“保留模式”对象捆绑。一个为当今硬件设计的新简化API可以消除大部分复杂性，减少PSO排列爆炸，并通过利用64位GPU指针和一致性缓存层次结构等功能来提高性能。文章呼吁从根本上重新思考图形API，以匹配现代GPU的能力。

---

## 18. 我为Typst创建了一个逐步编码指南的发布系统。

**原文标题**: I created a publishing system for step-by-step coding guides in Typst

**原文链接**: [https://press.knowledge.dev/p/new-150-pages-rust-guide-create-a](https://press.knowledge.dev/p/new-150-pages-rust-guide-create-a)

根据文章内容，作者开发了一套新的出版系统，用于利用现代排版系统**Typst**创建详细的、循序渐进的编程指南。

关键要点如下：

*   **项目与动机：** 该系统专为制作一本全面的、**150页的Rust编程指南**而创建，该指南名为《从零开始创建编程语言》。作者发现现有工具（如传统出版软件或基于Web的平台）对于此类技术性强、代码密集的内容效率低下。
*   **核心创新——Typst系统：** 作者没有使用标准工具，而是在**Typst**内部构建了一个定制化工作流程。这使得代码片段、解释说明和图表能够无缝集成到一个单一、可复现的文档中。该系统强调**模块化**，便于管理和更新大型、复杂的指南。
*   **强调的优势：** 作者认为这种方法对于技术指南更优，因为它提供了**出版级排版质量**、一致的样式，以及一个可以同时输出**印刷就绪的PDF**和Web格式的单一事实来源。它消除了在编辑器和文档之间复制代码的麻烦。
*   **成果：** 主要成果是新的Rust指南本身，它引导读者逐步构建一个解释器。该出版系统是使创建如此冗长而详细的资源变得可行的使能技术。

总而言之，文章宣布了一本新的Rust编程指南，并介绍了为高效创建此类深入、以代码为中心的学习材料而构建的、基于Typst的定制出版系统。

---

## 19. 将SSH密钥放入.git文件夹以实现仓库的USB便携性

**原文标题**: Put SSH keys in .git to make repos USB-portable

**原文链接**: [https://dansjots.github.io/posts/per-repo-ssh-key/](https://dansjots.github.io/posts/per-repo-ssh-key/)

本文介绍了一种方法，通过将SSH部署密钥存储在仓库的`.git`目录中，使Git仓库自包含且可移植。其目标是确保推送操作始终使用正确的、仓库专用的SSH密钥，避免因错误用户账户导致的意外推送。

核心方法是将私钥文件（例如`id_ed25519`）直接放入`.git`文件夹中，然后通过运行Git命令配置仓库仅使用此密钥：
`git config core.sshCommand "ssh -i .git/id_ed25519"`。

此配置存储在仓库本地，使得整个设置完全可移植。整个仓库（包括其专用SSH密钥）可以移动到不同位置或机器（如U盘），无需重新配置即可正常工作。

文章还提供了使用此方法初始化新仓库的逐步指南：在`.git`内生成密钥对，将公钥添加为远程托管服务（如GitHub）上的部署密钥，并设置远程源。这样创建了一个干净、隔离的设置，使仓库的身份验证随其一同迁移。

---

## 20. 人工智能的真正超能力：在于消费，而非创造

**原文标题**: AI's real superpower: consuming, not creating

**原文链接**: [https://msanroman.io/blog/ai-consumption-paradigm](https://msanroman.io/blog/ai-consumption-paradigm)

文章认为，人工智能最强大的应用并非内容创作，而是对个人已有知识的消化与整合。作者指出，尽管大多数人使用AI生成新文本或代码，但这是一种局限的用法。

核心在于利用AI分析完整的个人知识库——例如作者在Obsidian笔记库中积累多年的笔记、会议思考和观察记录。通过查询这个档案库，AI能够发现人类难以在数千份文档中手动识别的模式与关联。

具体案例包括：识别出绩效问题往往在工具抱怨前数周就已出现，追踪个人对技术债务看法的演变过程，以及发现无意识的设计模式在不同项目中的重复应用。

作者的核心论点是：我们积累的经验是一种竞争优势，但传统搜索方式和人类记忆无法使其完全发挥作用。AI通过概念检索和跨时间关联思想，将这种“上锁的宝库”转化为可查询的个人专业知识数据库。

建议的转变方向是：系统化记录一切，并将AI作为“研究助理”来挖掘过去的自己。这使每条笔记都可能成为未来的洞察，通过重现被遗忘的上下文和隐藏模式，从而实现更快的问题解决和更优的决策制定。

---

## 21. 学习最古老的编程语言（2024）

**原文标题**: Learning the oldest programming language (2024)

**原文链接**: [https://uncenter.dev/posts/learning-fortran/](https://uncenter.dev/posts/learning-fortran/)

本文详细介绍了作者在2024年学习古老语言Fortran的经历。文章指出，Fortran（公式翻译器）诞生于1957年，至今仍在高性能计算领域占有一席之地。作者选择学习现代自由格式语法（使用`.f90`文件），而非传统的固定格式风格。

文章核心是一篇实践教程。首先通过简单的“Hello, World!”程序展示基本结构（`program`/`end program`）和`print *`语句，随后构建命令行计算器来演示关键概念：使用`implicit none`强制显式变量声明、`real`与`character`数据类型、通过`read *`获取用户输入，以及`if`条件控制流程。

教程通过迭代优化计算器功能，先增加除零检查，再用更清晰的`select case`语句重构逻辑，以此展现Fortran编写简洁代码的现代特性。文章最后说明了编译器命令（`gfortran`）的使用，并表达了对Fortran持续现代化及日益增长的学习热潮的热情。

---

## 22. 此处无AI*——回应Mozilla的新篇章

**原文标题**: No AI* Here – A Response to Mozilla's Next Chapter

**原文链接**: [https://www.waterfox.com/blog/no-ai-here-response-to-mozilla/](https://www.waterfox.com/blog/no-ai-here-response-to-mozilla/)

本文中，Waterfox创始人批评了Mozilla以人工智能为核心的新战略，认为其从根本上误解了浏览器的本质。尽管理解Mozilla面临的市场压力，他区分了透明、单一用途的机器学习（如翻译工具）与不透明的大型语言模型。他认为，将黑箱式大型语言模型嵌入浏览器核心会制造一个不可信的中介——“用户代理的用户代理”——这将损害用户控制权、透明度与自主权，即使这些功能是可选的。

作者指出，Mozilla追逐主流用户的做法可能疏远其技术导向、注重隐私的传统社区——这正是其历史优势——且无法确保成功。相比之下，Waterfox致力于成为一款“简洁高效”的浏览器，专注于性能、自定义和网络标准，而不依赖大型语言模型。他还强调Waterfox通过正式治理与问责机制，与其他Firefox分支形成关键区别，从而实现了对Widevine等功能的支持。

作者总结道，浏览器的职责是服务用户而非替用户思考，并将Waterfox定位为一种持久、有原则的替代选择，服务于那些珍视独立性、不盲从行业人工智能趋势的用户。

---

## 23. Mozilla是在自寻死路吗？

**原文标题**: Is Mozilla trying hard to kill itself?

**原文链接**: [https://infosec.press/brunomiguel/is-mozilla-trying-hard-to-kill-itself](https://infosec.press/brunomiguel/is-mozilla-trying-hard-to-kill-itself)

在最近的一次采访中，Mozilla的新任CEO恩佐尔-德梅奥表示，虽然在Firefox中屏蔽广告拦截器可能带来约1.5亿美元的收入，但他不愿这样做，因为这“感觉偏离了使命”。

文章作者对此声明表达了深切的担忧和失望，认为这暗示该选项仍“摆在桌面上”是一种潜在威胁。他们指出，Firefox强大的扩展系统和对用户隐私的承诺——以高效的广告拦截器为代表——正是吸引其忠诚技术用户群体的核心优势。移除这一功能不仅会疏远这些关键支持者，还会失去对抗恶意广告的重要安全工具。

作为自Mozilla应用套件时代起的老用户，作者担心此举将成为Firefox的又一“棺材钉”，剥夺常影响主流用户的社区话语权。尽管承认Mozilla需要创收，但作者批评CEO不必要地提及这个争议性选项，引发了负面舆论并播下不信任的种子。整体观点是：在广告拦截功能上妥协将背叛Firefox的立身原则，并危及其仅存的核心社区。

---

## 24. TLA+建模技巧

**原文标题**: TLA+ Modeling Tips

**原文链接**: [http://muratbuffalo.blogspot.com/2025/12/tla-modeling-tips.html](http://muratbuffalo.blogspot.com/2025/12/tla-modeling-tips.html)

本文为创建有效的TLA+规范提供了实用建议。其核心理念是**极简建模**：从一个微小但可运行的核心开始，仅添加与分析行为相关的必要组件。作者强调编写**声明式规范**，即阐明必须满足的条件而非实现方法，并避免模拟实际代码。

关键技巧包括严格**审查非法知识**以确保进程不会非现实地访问全局状态，以及使用**细粒度的守卫命令式动作**来展现真实并发性。作者主张编写**TypeOK不变式**作为文档和安全保障，同时配合**进展性质**以确保系统活性。

最后，文章强调建模是辅助思考的工具而非替代品。建议对成功的模型检查保持怀疑态度，应**主动破坏规范**以验证不变式与约束条件是否具有实质意义。针对模型检查器的优化应是独立且最终才进行的步骤。

---

## 25. GitHub Actions 定价变更

**原文标题**: Pricing Changes for GitHub Actions

**原文链接**: [https://resources.github.com/actions/2026-pricing-changes-for-github-actions/](https://resources.github.com/actions/2026-pricing-changes-for-github-actions/)

GitHub 决定推迟原定针对自托管运行器的计费变更计划，以便根据用户反馈重新评估方案。不过，公司仍将按计划于2026年1月1日起将GitHub托管运行器的价格降低最高39%。

此次推迟变更的核心内容，是针对私有仓库中托管与自托管运行器上的工作流，新增每分钟0.002美元的"云平台费用"。对于托管运行器，该费用已包含在降价后的新费率中；而自托管运行器的此项收费原定于2026年3月1日生效，现已被暂停。

GitHub表示，96%的客户账单不会发生变化。在受影响的4%客户中，85%将看到费用下降，其余15%的月账单中位数将增加约13美元。公共仓库的Actions服务仍将保持免费。

与此同时，GitHub宣布将加大对自托管运行器体验的投入，包括推出用于自定义自动扩缩容的全新规模集客户端、多标签支持、Actions运行器控制器的更新，以及提升可观测性的Actions数据流服务。

公司指出，此次调整旨在使成本与所有Actions用户获得的价值及基础设施使用情况相匹配，从而为持续的平台改进和创新提供资金支持。

---

## 26. GPT图像1.5

**原文标题**: GPT Image 1.5

**原文链接**: [https://openai.com/index/new-chatgpt-images-is-here/](https://openai.com/index/new-chatgpt-images-is-here/)

根据提供的网址，我无法访问具体的文章内容。链接“https://openai.com/index/new-chatgpt-images-is-here/”并未指向OpenAI官网的有效页面，这可能是一个已失效或不正确的地址。

**无法访问文章链接。**

要获取关于OpenAI图像生成功能的准确信息，建议直接访问OpenAI官方博客或平台。您提到的“GPT Image 1.5”并非官方名称；OpenAI的图像生成模型名为**DALL-E**，并已集成到ChatGPT Plus、Team和Enterprise版本中。其主要功能通常包括根据详细文字描述生成和编辑图像。

---

## 27. 微薄的欲望正在蚕食生命

**原文标题**: Thin desires are eating life

**原文链接**: [https://www.joanwestenberg.com/thin-desires-are-eating-your-life/](https://www.joanwestenberg.com/thin-desires-are-eating-your-life/)

文章认为，现代生活被“浅层欲望”所主导——这些欲望易于满足却无法改变我们，例如查看通知或刷社交媒体。它们由消费科技精心设计，旨在提供快速、成瘾性的回报（如联结感或成就感），却无需付出努力、承受脆弱或经历其“深层”欲望所带来的成长。

相比之下，“深层欲望”——如精通一门手艺或建立深厚的社群关系——会在追求过程中重塑我们。它们往往不便、耗时，并将我们嵌入责任之中，使其在追求无摩擦效率的市场中显得低效。因此，社会基础设施已转向青睐浅层欲望，尽管连接达到前所未有的程度，却加剧了人们的焦虑与孤独。

作者提出，虽然大规模解决方案难以实现，但个体仍可通过小而刻意的行动来培育深度，例如亲手烘焙面包、邮寄手写信件，或仅为一人编写工具代码。这些实践重拾了耐心与意义，并非为了改变世界，而是为了让我们重新体悟“渴望真正值得渴望之物是一种怎样的感受”。

---

## 28. Mozilla任命安东尼·恩佐-德梅奥为新任首席执行官

**原文标题**: Mozilla appoints new CEO Anthony Enzor-Demeo

**原文链接**: [https://blog.mozilla.org/en/mozilla/leadership/mozillas-next-chapter-anthony-enzor-demeo-new-ceo/](https://blog.mozilla.org/en/mozilla/leadership/mozillas-next-chapter-anthony-enzor-demeo-new-ceo/)

Mozilla任命安东尼·恩佐尔-德梅奥为新任首席执行官。他接替了劳拉·钱伯斯的临时领导职位，钱伯斯在任期内带领公司应对了包括人工智能兴起和Firefox发展在内的重大挑战。此后，钱伯斯将回归Mozilla董事会。

恩佐尔-德梅奥为Mozilla的未来勾勒出清晰愿景：成为"全球最受信赖的软件公司"。他指出信任是科技领域的关键议题，尤其在涉及隐私和人工智能决策的浏览器领域。Mozilla将通过三大核心承诺实现这一目标：

1.  **用户自主权：** 产品将提供清晰的控制选项、易懂的数据处理方式，并允许用户轻松退出人工智能功能。
2.  **信任导向的商业化：** 收入增长将来自用户认可的透明盈利模式。
3.  **Firefox生态系统：** Firefox浏览器将升级为现代化的"AI浏览器"，并作为更广泛可信软件组合的核心支柱。

该战略将以"双重底线"来衡量：既要推进Mozilla的使命，也要实现市场成功。未来三年的关键目标包括：整合符合Mozilla原则的人工智能技术、拓展搜索以外的多元化收入来源，以及扩大Firefox用户基数。

恩佐尔-德梅奥认为，当前人工智能发展、监管环境变化以及浏览器作为数字控制点的角色转变，为Mozilla创造了重要机遇。凭借其可信品牌和独立运营模式，Mozilla有望提升行业影响力。

---

## 29. 40%的功能磁共振成像信号并不对应实际的大脑活动。

**原文标题**: 40 percent of fMRI signals do not correspond to actual brain activity

**原文链接**: [https://www.tum.de/en/news-and-events/all-news/press-releases/details/40-percent-of-mri-signals-do-not-correspond-to-actual-brain-activity](https://www.tum.de/en/news-and-events/all-news/press-releases/details/40-percent-of-mri-signals-do-not-correspond-to-actual-brain-activity)

《自然·神经科学》发表的一项新研究从根本上挑战了功能磁共振成像（fMRI）的核心假设。fMRI作为近30年来脑科学研究的主要工具，其标准信号解读方式被证明并不可靠。

慕尼黑工业大学和埃尔朗根-纽伦堡大学的研究人员发现，fMRI通过测量血流量变化（BOLD信号）来推断神经元活动增强和需氧量增加的经典理论存在缺陷。在对40多名受试者进行实际耗氧量同步测量后发现，这种关联并非普遍成立：约40%的情况下，fMRI信号增强对应的是大脑活动减弱，反之亦然。大脑完全可以通过从现有血流中提取更多氧气来满足更高的能量需求，而无需增加灌注量。

这一发现意味着，此前数以万计的fMRI研究——包括针对抑郁症和阿尔茨海默病等病症的研究——可能存在误读，因为信号变化反映的可能是血管差异而非神经元活动。

研究者主张在标准fMRI基础上补充定量氧代谢测量。这种转变将推动建立基于能量代谢的脑模型，通过关注实际能量消耗而非推断的血流变化，为衰老和神经系统疾病研究提供更精准的视角。

---

## 30. 我使用Codex CLI和GPT-5.2在几小时内将JustHTML从Python移植到JavaScript。

**原文标题**: I ported JustHTML from Python to JavaScript with Codex CLI and GPT-5.2 in hours

**原文链接**: [https://simonwillison.net/2025/Dec/15/porting-justhtml/](https://simonwillison.net/2025/Dec/15/porting-justhtml/)

2025年12月，作者使用Codex CLI搭配GPT-5.2，仅用4.5小时便将JustHTML Python HTML5解析器移植到JavaScript。生成的库**justjshtml**无任何依赖，通过了html5lib测试套件中超过9,200项测试，并复现了原始API。

整个过程始于一个分析Python代码并创建技术规范的提示。随后，作者指导AI分阶段实施项目，从基础可用版本开始。完成初始设置后，AI自主工作数小时，提交了43次代码，生成了约9,000行JavaScript代码。作者在兼顾其他事务的同时，通过GitHub监控进展。

该项目仅以极少量人工干预完成——总计仅使用了八条提示。AI还构建了基于浏览器的演示平台和完整文档。虽然令牌使用量很高（超过200万），但费用已由ChatGPT Plus订阅覆盖。

作者强调了几个启示：前沿大语言模型现已能在极少监督下执行复杂、持续数小时的编程任务；拥有完善的测试套件对智能体开发至关重要；生成功能性代码的成本已大幅下降。文章最后提出了一系列开放性问题，涉及AI生成代码的合法性、伦理及其对开源软件开发的影响。

---

