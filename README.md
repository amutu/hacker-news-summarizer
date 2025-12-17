# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2025-12-17.md)

*最后自动更新时间: 2025-12-17 20:20:08*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 2 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 3 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 4 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 5 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 6 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 7 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 8 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 9 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 10 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 11 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 12 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 13 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 14 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 15 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 16 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 17 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 18 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 19 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 20 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 21 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 22 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 23 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 24 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 25 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 26 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 27 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 28 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 29 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 30 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 31 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 32 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 33 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 34 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 35 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 36 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 37 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 38 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 39 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 40 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 41 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 42 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 43 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 44 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 45 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 46 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 47 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 48 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 49 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 50 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 51 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 52 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 53 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 54 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 55 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 56 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 57 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 58 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 59 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 60 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 61 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 62 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 63 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 64 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 65 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 66 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 67 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 68 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 69 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 70 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 71 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 72 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 73 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 74 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 75 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 76 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 77 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 78 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 79 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 80 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 81 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 82 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 83 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 84 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 85 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 86 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 87 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 88 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 89 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 90 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 91 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 92 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 93 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 94 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 95 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 96 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 97 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 98 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 99 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 100 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 101 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 102 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 103 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 104 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 105 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 106 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 107 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 108 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 109 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 110 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 111 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 112 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 113 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 114 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 115 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 116 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 117 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 118 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 119 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 120 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 121 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 122 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 123 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 124 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 125 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 126 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 127 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 128 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 129 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 130 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 131 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 132 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 133 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 134 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 135 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 136 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 137 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 138 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 139 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 140 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 141 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 142 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 143 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 144 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 145 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 146 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 147 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 148 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 149 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 150 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 151 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 152 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 153 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 154 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 155 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 156 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 157 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 158 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 159 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 160 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 161 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 162 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 163 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 164 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 165 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 166 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 167 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 168 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 169 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 170 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 171 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 172 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 173 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 174 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 175 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 176 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 177 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 178 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 179 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 180 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 181 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 182 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 183 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 184 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 185 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 186 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 187 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 188 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 189 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 190 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 191 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 192 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 193 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 194 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 195 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 196 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 197 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 198 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 199 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 200 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 201 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 202 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 203 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 204 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 205 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 206 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 207 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 208 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 209 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 210 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 211 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 212 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 213 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 214 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 215 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 216 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 217 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 218 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 219 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 220 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 221 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 222 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 223 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 224 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 225 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 226 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 227 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 228 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 229 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 230 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 231 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 232 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 233 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 234 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 235 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 236 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 237 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 238 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 239 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 240 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 241 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 242 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 243 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 244 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 245 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 246 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 247 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 248 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 249 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 250 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 251 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 252 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 253 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 254 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 255 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 256 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 257 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 258 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 259 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 260 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 261 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 262 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 263 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 264 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 265 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 266 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 267 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 268 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 269 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 270 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 271 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
