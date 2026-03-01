# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-01.md)

*最后自动更新时间: 2026-03-01 20:36:44*
## 1. Ghostty – 终端模拟器

**原文标题**: Ghostty – Terminal Emulator

**原文链接**: [https://ghostty.org/docs](https://ghostty.org/docs)

Ghostty是一款快速、跨平台的终端模拟器，通过原生UI和GPU加速强调性能表现，开箱即用无需配置。

该项目提供便捷的安装方式：macOS用户可直接下载即用二进制文件，Linux用户可通过软件包或源码编译安装。其核心功能包括高度可定制的快捷键绑定、内置数百种支持明暗模式自动切换的色彩主题，以及丰富的外观与行为配置选项。

此外，Ghostty为开发者提供了终端API参考文档，用于处理控制序列。所有文档均开源并托管于GitHub平台。

---

## 2. Microgpt

**原文标题**: Microgpt

**原文链接**: [http://karpathy.github.io/2026/02/12/microgpt/](http://karpathy.github.io/2026/02/12/microgpt/)

安德烈·卡帕西的**MicroGPT**是一个极简的、仅200行Python代码的GPT模型实现，无需任何依赖库。它在一个包含32,000个名字的数据集上进行训练和推理，学习生成新颖且合理的人名。

该项目将语言模型分解为核心组件：
1.  **数据集与分词器：** 在名字数据集上使用简单的字符级分词器，并引入特殊的BOS标记来标识文档边界。
2.  **自动微分引擎：** 通过自定义的`Value`类从零实现自动微分（反向传播），为所有模型参数计算梯度。
3.  **模型架构：** 采用类似GPT-2的简化单层Transformer，使用RMSNorm和ReLU，总计约4,192个参数。
4.  **训练：** 模型通过梯度下降和Adam优化器进行训练，以预测序列中的下一个标记。

该代码呈现了大型语言模型的“最简要素”，以极其紧凑且具有教育意义的形式展示了ChatGPT等系统背后的基础算法。项目提供Python文件、网页版和Colab笔记本三种形式。

---

## 3. 运营问题 – 多项服务（阿联酋）

**原文标题**: Operational issue – Multiple services (UAE)

**原文链接**: [https://health.aws.amazon.com/health/status](https://health.aws.amazon.com/health/status)

无法访问文章链接。

您提供的网址（https://health.aws.amazon.com/health/status）是亚马逊网络服务（AWS）的主要状态仪表板。这是一个动态页面，显示所有区域中所有AWS服务的当前运行状态。由于该页面的内容会根据实时事件不断变化，我无法从此地址检索或总结一篇题为“运行问题 – 多项服务（阿联酋）”的具体历史文章。

要获取该特定事件的摘要，您需要提供文章本身的文本，或AWS健康仪表板或AWS服务健康仪表板新闻源中静态帖子的直接链接。

---

## 4. 为什么XML标签对Claude如此重要

**原文标题**: Why XML tags are so fundamental to Claude

**原文链接**: [https://glthr.com/XML-fundamental-to-Claude](https://glthr.com/XML-fundamental-to-Claude)

根据文章内容，以下是简明摘要：

文章认为，在与Anthropic的AI助手Claude交互时，XML标签是构建提示词和输出的基础且高效的工具。文中指出，虽然Claude能够理解自然语言，但使用XML标签能提供清晰、明确的结构，帮助AI解析复杂指令、区分请求的不同部分，并精确格式化响应。

强调的主要优势包括：
*   **清晰性与条理性：** 诸如`<task>`、`<thinking>`和`<output>`等标签创建了明确的区块，避免指令、Claude内部推理和最终答案之间的混淆。
*   **精确控制：** 用户可指定具体的输出格式（如`<json>`、`<html>`）并执行严格规则，减少错误和“提示词漂移”。
*   **提升性能：** 这种结构化方法能带来更可靠、一致和准确的响应，尤其适用于涉及推理、数据提取或创意格式化的复杂多步骤任务。

作者总结道，虽然对于简单查询并非必需，但在高级或生产级使用场景中采用XML标签是最佳实践。它将对话式提示转变为定义明确的“API调用”，利用Claude遵循结构化模式的优势，显著提升其输出的质量和可用性。

---

## 5. MCP与CLI相比，何时更适用？

**原文标题**: When does MCP make sense vs CLI?

**原文链接**: [https://ejholmes.github.io/2026/02/28/mcp-is-dead-long-live-the-cli.html](https://ejholmes.github.io/2026/02/28/mcp-is-dead-long-live-the-cli.html)

本文认为模型上下文协议（MCP）是一种不必要的抽象，主张传统命令行界面（CLI）在让大型语言模型与工具交互方面更具优势。

作者指出，大型语言模型经过海量文档和Shell脚本的训练，已能熟练使用CLI。相比之下，MCP引入了复杂性却未带来明显益处。文中强调CLI的主要优势包括：

*   **可调试性：** 当大型语言模型操作失败时，用户可复现并调试确切的CLI命令，而非面对MCP不透明的JSON日志。
*   **可组合性：** CLI可通过管道与`jq`、`grep`等工具链式组合，实现强大的数据处理能力，而MCP难以复制此特性。
*   **稳健的认证机制：** CLI沿用久经考验的现有认证流程（如AWS配置、GitHub CLI登录），对人类用户和智能代理同样适用。
*   **简洁性与可靠性：** CLI是静态二进制文件，无需MCP服务器常见的后台进程、初始化不稳定性和重复认证问题。

作者承认，对于没有CLI替代方案的工具，MCP或许有其存在价值，但仍坚持认为：对于大多数任务，已有数十年历史的CLI范式——兼具可组合性、可调试性及人性化设计——对人类和AI代理而言仍是更高效可靠的选择。文章核心呼吁是：企业应优先构建稳健的API和CLI，而非过度投入MCP服务器。

---

## 6. 决策树——嵌套决策规则的不合理威力

**原文标题**: Decision trees – the unreasonable power of nested decision rules

**原文链接**: [https://mlu-explain.github.io/decision-tree/](https://mlu-explain.github.io/decision-tree/)

本文通过构建一个决策树来解释其工作原理，该决策树根据树干直径和高度将树木分类为苹果树、樱桃树或橡树。

过程始于确定最有效的初始规则，例如将所有直径大于0.45的树木分类为橡树。这形成了根节点和第一个叶节点。算法随后递归地划分剩余数据，向不断生长的树中添加新的决策节点（如“高度≤4.88”以区分樱桃树）和叶节点。

文章强调，目标是找到最有利的分割点，以创建清晰、同质的区域。然而，文章也警告不要因分割过细而创建过深的树。这样做会捕捉训练数据中的噪声和特定细节，导致过拟合，并在新的未见数据上表现不佳。这关联到机器学习中根本性的偏差-方差权衡。

最终经过剪枝的树提供了一套嵌套决策规则，只需将新数据点的测量值传入树结构，即可对其进行分类。

---

## 7. Microgpt交互式详解

**原文标题**: Microgpt explained interactively

**原文链接**: [https://growingswe.com/blog/microgpt](https://growingswe.com/blog/microgpt)

本文对安德烈·卡帕西的MicroGPT进行了适合初学者的可视化讲解。这是一个仅用200行Python代码编写的脚本，展示了ChatGPT等大型语言模型（LLM）的核心原理。

该模型通过名字数据集训练，学习统计字符模式并生成新名字。文本首先被转换为数字标记。模型的核心任务是下一标记预测：给定一个标记序列，它预测最可能的下一个标记。

关键组件通过交互方式解释：
*   **Softmax**将模型的原始输出分数转换为概率分布。
*   **交叉熵损失**衡量预测误差，惩罚置信度高的错误答案。
*   **反向传播**计算模型4,192个参数中每个参数如何影响损失，从而实现学习。

模型本身使用**嵌入**将标记表示为学习到的向量。**注意力机制**允许标记之间“交流”，不同注意力头学习如关注最近字符或序列开头等模式。数据流经归一化、注意力和多层感知机（MLP）组成的流程，其中**残差连接**对稳定训练至关重要。

最终，训练循环使用Adam优化器反复调整参数以最小化损失，阐释了从标记化到反向传播的基础算法——这些正是驱动所有现代大型语言模型的核心技术。

---

## 8. 长续航电动自行车（2021款）

**原文标题**: Long Range E-Bike (2021)

**原文链接**: [https://jacquesmattheij.com/long-range-ebike/](https://jacquesmattheij.com/long-range-ebike/)

本文详细介绍了作者通过定制高容量电池组，显著提升Riese & Müller S-Pedelec电动自行车续航里程的项目。由于对标准及S-Pedelec电池约45-55公里的有限续航感到不满，作者致力于打造一款可替代汽车的通勤工具。

项目的核心挑战在于突破博世电池管理系统（BMS）的专有技术限制——该系统采用数字版权管理机制排斥第三方电池组。解决方案是使用从损坏电池组中拆出的原装博世BMS，并搭配外部均衡器进行电芯监控。经过大量研究和安全防护准备，作者最终采用170节三星E35电芯构建了10S17P电池组，并将其封装在定制非导电外壳中，完美嵌入车架内部。

这款2150瓦时的电池组在全功率模式下可提供约180公里续航，节能模式下续航超过500公里。除续航里程的大幅提升外，大容量电池组通过更温和的充放电循环延长了使用寿命。作者最后倡导将电动自行车作为汽车替代品，并呼吁制造商支持用户对长续航选项的需求。

---

## 9. Python类型检查器对比：空容器类型推断

**原文标题**: Python Type Checker Comparison: Empty Container Inference

**原文链接**: [https://pyrefly.org/blog/container-inference-comparison/](https://pyrefly.org/blog/container-inference-comparison/)

本文探讨了不同Python类型检查器如何处理推断空容器（如`[]`或`{}`）类型的常见挑战。由于这些容器不提供初始类型信息，检查器必须采用平衡类型安全、错误清晰度和性能的策略。

主要识别出三种策略：
1.  **推断为`Any`**（Pyright、Ty、Pyre采用）：容器被类型化为例如`list[Any]`。这种方法简单且宽松，避免了误报，但完全牺牲了类型安全，可能导致错误未被检测到。
2.  **从所有使用中推断**（Pytype采用）：检查器分析容器的所有操作，推断出联合类型（例如`list[int | str]`）。这紧密模拟了运行时行为，提高了从容器读取时的安全性，但错误信息可能远离实际错误位置。
3.  **从首次使用中推断**（Mypy、Pyrefly默认采用）：基于首次操作猜测类型（例如`x.append(1)`推断为`list[int]`）。这种方法在类型不匹配源头附近提供可操作的错误，但如果首次使用不具有代表性，可能导致误报。开发者可通过显式注解覆盖。

选择涉及权衡：`Any`策略追求宽松性，“所有使用”策略追求运行时保真度，“首次使用”策略追求可操作的错误信息。作者团队（Pyrefly）倾向于最后一种策略，因其在安全性和清晰度之间取得平衡，同时提供配置选项以保持灵活性。

---

## 10. 我们不认为应该将Anthropic指定为供应链风险。

**原文标题**: We do not think Anthropic should be designated as a supply chain risk

**原文链接**: [https://twitter.com/OpenAI/status/2027846016423321831](https://twitter.com/OpenAI/status/2027846016423321831)

此文本并非文章，而是来自X.com（原Twitter）的浏览器错误提示。主要内容包括：

*   用户浏览器已禁用JavaScript。
*   X.com平台需要JavaScript才能正常运行。
*   提示信息指导用户启用JavaScript或切换至受支持的浏览器。
*   提供帮助中心链接（查看受支持浏览器列表）及其他法律页面链接（服务条款、隐私政策等）。
*   页脚注明网站所有者为X Corp.并显示版权日期。

所给标题（“我们认为不应将Anthropic指定为供应链风险”）与可见内容无关，后者仅为技术性访问提示。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 2 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 3 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 4 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 5 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 6 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 7 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 8 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 9 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 10 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 11 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 12 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 13 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 14 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 15 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 16 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 17 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 18 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 19 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 20 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 21 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 22 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 23 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 24 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 25 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 26 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 27 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 28 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 29 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 30 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 31 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 32 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 33 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 34 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 35 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 36 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 37 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 38 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 39 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 40 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 41 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 42 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 43 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 44 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 45 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 46 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 47 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 48 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 49 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 50 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 51 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 52 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 53 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 54 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 55 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 56 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 57 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 58 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 59 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 60 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 61 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 62 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 63 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 64 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 65 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 66 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 67 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 68 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 69 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 70 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 71 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 72 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 73 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 74 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 75 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 76 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 77 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 78 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 79 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 80 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 81 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 82 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 83 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 84 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 85 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 86 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 87 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 88 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 89 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 90 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 91 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 92 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 93 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 94 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 95 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 96 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 97 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 98 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 99 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 100 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 101 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 102 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 103 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 104 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 105 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 106 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 107 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 108 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 109 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 110 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 111 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 112 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 113 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 114 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 115 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 116 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 117 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 118 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 119 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 120 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 121 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 122 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 123 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 124 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 125 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 126 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 127 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 128 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 129 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 130 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 131 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 132 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 133 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 134 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 135 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 136 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 137 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 138 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 139 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 140 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 141 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 142 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 143 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 144 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 145 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 146 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 147 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 148 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 149 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 150 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 151 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 152 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 153 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 154 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 155 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 156 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 157 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 158 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 159 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 160 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 161 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 162 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 163 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 164 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 165 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 166 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 167 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 168 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 169 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 170 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 171 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 172 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 173 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 174 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 175 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 176 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 177 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 178 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 179 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 180 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 181 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 182 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 183 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 184 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 185 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 186 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 187 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 188 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 189 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 190 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 191 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 192 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 193 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 194 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 195 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 196 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 197 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 198 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 199 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 200 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 201 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 202 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 203 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 204 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 205 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 206 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 207 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 208 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 209 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 210 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 211 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 212 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 213 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 214 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 215 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 216 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 217 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 218 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 219 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 220 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 221 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 222 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 223 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 224 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 225 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 226 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 227 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 228 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 229 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 230 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 231 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 232 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 233 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 234 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 235 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 236 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 237 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 238 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 239 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 240 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 241 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 242 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 243 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 244 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 245 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 246 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 247 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 248 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 249 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 250 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 251 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 252 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 253 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 254 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 255 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 256 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 257 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 258 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 259 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 260 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 261 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 262 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 263 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 264 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 265 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 266 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 267 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 268 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 269 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 270 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 271 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 272 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 273 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 274 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 275 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 276 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 277 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 278 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 279 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 280 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 281 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 282 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 283 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 284 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 285 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 286 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 287 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 288 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 289 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 290 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 291 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 292 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 293 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 294 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 295 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 296 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 297 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 298 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 299 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 300 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 301 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 302 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 303 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 304 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 305 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 306 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 307 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 308 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 309 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 310 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 311 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 312 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 313 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 314 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 315 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 316 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 317 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 318 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 319 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 320 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 321 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 322 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 323 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 324 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 325 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 326 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 327 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 328 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 329 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 330 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 331 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 332 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 333 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 334 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 335 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 336 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 337 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 338 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 339 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 340 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 341 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 342 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 343 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 344 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
