# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-05-05.md)

*最后自动更新时间: 2026-05-05 20:33:23*
## 1. 加速Gemma 4：借助多令牌预测草稿实现更快的推理

**原文标题**: Accelerating Gemma 4: faster inference with multi-token prediction drafters

**原文链接**: [https://blog.google/innovation-and-ai/technology/developers-tools/multi-token-prediction-gemma-4/](https://blog.google/innovation-and-ai/technology/developers-tools/multi-token-prediction-gemma-4/)

**摘要：**

谷歌为 Gemma 4 模型系列推出了多令牌预测（MTP）草稿模型，在不损失输出质量或推理准确性的情况下，推理速度最高提升 3 倍。

其核心创新在于**推测解码**，该技术解决了标准大型语言模型推理中因内存带宽限制导致的延迟瓶颈。草稿模型不会逐词生成，而是通过轻量级“草稿”模型快速预测多个未来令牌。随后，更大的 Gemma 4“目标”模型在单次并行传递中验证所有这些令牌，若验证通过则接受该序列，并在此过程中额外生成一个令牌。

这使得开发者能够以显著更快的速度获得相同的高质量输出。主要优势包括：
- **提升**实时聊天和智能体的响应速度。
- **增强**消费级 GPU（如 26B 和 31B 模型）上的本地性能。
- **提高**边缘模型（E2B、E4B）的设备端效率，延长电池续航。

这些草稿模型共享目标模型的键值缓存以提高效率，并针对特定硬件进行了优化，在 Apple Silicon 上配合较大批次处理时，速度可提升约 2.2 倍。

MTP 草稿模型现已在 Hugging Face、Kaggle 和其他平台以 Apache 2.0 许可证提供，可立即与 transformers、MLX、vLLM 和 Ollama 等工具配合使用。

---

## 2. 人工智能三大逆定律

**原文标题**: Three Inverse Laws of AI

**原文链接**: [https://susam.net/inverse-laws-of-robotics.html](https://susam.net/inverse-laws-of-robotics.html)

文章《人工智能的三条逆定律》警示人们不应盲目信任生成式人工智能系统——这类系统正日益嵌入搜索引擎和软件等日常工具。作者指出，将AI生成的答案置于搜索结果顶端等设计选择，会训练用户将AI视为权威而非调查起点。

为此，作者提出三条“机器人学逆定律”，即人类与AI互动时应遵循的行为准则：
1. **非拟人化**：人类不得将情感、意图或道德主体性赋予AI。拟人化会扭曲判断，导致情感依赖，尤其当聊天机器人被设计为模仿人类声音时。
2. **非顺从**：人类不得盲目信任AI输出。与经过同行评议的机构指南不同，AI回应具有随机性且未经验证。批判性审视的责任在于用户，尤其在重要决策场景中。
3. **非推卸责任**：人类对借助AI作出的决策承担全部责任。“是AI让我们这么做的”永远不是可被接受的借口；选择遵循AI建议的人须承担全部责任。

作者总结道，尽管没有万无一失的定律体系，但这些原则能促使人们清醒认识AI的局限性，抵制削弱判断力的惯性思维，并强化一个认知：AI是工具，而非权威。

---

## 3. 计算机使用成本是结构化API的45倍

**原文标题**: Computer Use is 45x more expensive than structured APIs

**原文链接**: [https://reflex.dev/blog/computer-use-is-45x-more-expensive-than-structured-apis/](https://reflex.dev/blog/computer-use-is-45x-more-expensive-than-structured-apis/)

本文比较了两种AI智能体操作网页应用的方法——视觉智能体（使用截图和点击）与结构化API智能体——在成本和性能上的差异。

**主要发现：**

- **视觉智能体成本极高：** 视觉智能体每项任务消耗约55万输入token，耗时约17分钟；而API智能体仅使用约1.2万token，完成时间约20秒。这使得视觉智能体的成本高出约45倍。

- **视觉智能体需要显式指引：** 视觉智能体最初完全无法完成任务（遗漏分页内容）。仅在获得14步手动指引后才成功，这本身代表了一种隐藏的工程成本。

- **视觉性能差异大：** 视觉智能体的运行时间波动剧烈（749秒-1257秒），token消耗差异悬殊（40.7万-75.1万）；而API智能体的运行高度一致（8次调用，token差异±27个）。

- **Haiku模型无法完成视觉路径**，但在不到8秒内以不到1万token完成了API路径。

**结论：** 成本差异源于架构——视觉智能体必须在每一步渲染并解析像素，而API智能体则直接读取结构化响应。虽然视觉智能体对于你无法控制的第三方应用仍然必要，但作者认为，对于自行构建的内部工具，自动生成的API端点（由其Reflex框架实现）使得API方法现在更具经济性。

---

## 4. EEVblog：555定时器迎来55周年 [视频]

**原文标题**: EEVblog: The 555 Timer is 55 years old [video]

**原文链接**: [https://www.youtube.com/watch?v=6JhK8iCQuqI](https://www.youtube.com/watch?v=6JhK8iCQuqI)

此内容并非一篇文章，而是来自YouTube视频《EEVblog：555定时器已55岁 [视频]》的元数据和法律页脚。提供的文本不包含关于555定时器本身或视频内容的任何信息，仅由标准YouTube页面元素组成：平台政策链接（条款、隐私、版权）、广告与开发者信息、谷歌在美国的公司地址及联系方式，以及关于YouTube视频中展示产品的免责声明。该声明指出，这些产品由商家销售，而非YouTube，YouTube对此不承担任何责任。文本中还包含了谷歌2026年的版权声明。无法从这些数据中提取出关于555定时器历史、意义或EEVblog演示的任何摘要。

---

## 5. 谷歌Chrome在未经用户同意的情况下悄悄安装4GB的AI模型

**原文标题**: Google Chrome silently installs a 4 GB AI model on your device without consent

**原文链接**: [https://www.thatprivacyguy.com/blog/chrome-silent-nano-install/](https://www.thatprivacyguy.com/blog/chrome-silent-nano-install/)

**摘要：**

谷歌Chrome浏览器未经同意，在用户设备上静默下载一个4GB的AI模型（Gemini Nano）。该文件名为`weights.bin`，存储在`OptGuideOnDeviceModel`目录中，用于支持“帮我写”和诈骗检测等功能。

作者亚历山大·汉夫在macOS上通过内核的`.fseventsd`文件系统日志验证了这一行为。在一个用于自动审计的全新、未使用的浏览器配置文件中，Chrome在零人工干预的情况下，于14分28秒内下载了该4GB模型。Chrome将模型下载等同于常规安全更新，并将它们合并处理。

主要发现：
- **无同意或选择加入：** 没有复选框或提示。符合条件的硬件上默认进行下载。
- **难以删除：** 删除该文件会导致Chrome自动重新下载。用户必须通过晦涩的`chrome://flags`或企业策略禁用AI功能。
- **证据链：** macOS内核日志、Chrome自身状态文件、运行时功能标志以及谷歌更新程序日志均证实了该行为。

作者认为这违反了欧盟法律（《电子隐私指令》第5条第3款、《通用数据保护条例》的合法性/公平性/透明性原则，以及数据保护设计原则）。按Chrome的规模（超过34亿用户），单次推送该模型的环境成本估计相当于6000至60000吨二氧化碳排放量。此模式与此前报道的Anthropic公司Claude Desktop的类似问题如出一辙。

---

## 6. GLM-5V-Turbo：面向多模态智能体的原生基础模型

**原文标题**: GLM-5V-Turbo: Toward a Native Foundation Model for Multimodal Agents

**原文链接**: [https://arxiv.org/abs/2604.26752](https://arxiv.org/abs/2604.26752)

**《GLM-5V-Turbo：迈向多模态智能体的原生基础模型》摘要**

本文介绍**GLM-5V-Turbo**，一种专为多模态智能体设计的原生基础模型，而非将视觉作为语言模型的附加功能。其核心创新在于将**多模态感知**直接融入推理、规划、工具使用及执行环节。

关键改进涵盖模型设计、多模态训练、强化学习、工具链扩展及智能体框架集成。该模型在**多模态编码**（如理解屏幕截图）、**可视化工具使用**（如GUI导航）及基于框架的智能体任务中表现卓越，同时保持具有竞争力的纯文本编码能力。

该研发为构建多模态智能体提供了实践洞见，强调三大核心支柱：原生多模态感知的关键作用、感知与推理间分层优化的必要性，以及可靠端到端验证的重要性。

---

## 7. 展示HN：探索由3000幅大师画作启发的配色方案

**原文标题**: Show HN: Explore color palettes inspired by 3000 master painter artworks

**原文链接**: [https://paletteinspiration.com/](https://paletteinspiration.com/)

本文介绍了**调色板灵感**网站，该网站从3000多位大师画作中生成配色方案。其核心功能允许用户根据特定艺术家和作品浏览调色板——例如朱利奥·罗萨蒂的"柔和焦糖色"或喜多川歌麿的"淡杏色"，并配有诸如"暗影藤黄"和"朦胧茶色"等色彩名称。

关键互动工具是**色彩智能·和谐探索器**，用户可拖拽色轮，探索历史上大师画家曾将哪些色调与所选颜色搭配。它按互补色、类似色、三角色和四角色彩方案等分类展示配色。

网站还提供**特色艺术家**（如克劳德·莫奈、文森特·梵高、亨利·马蒂斯）、**特色风格与流派**（如斑点主义、内景主义、分析立体主义）以及附有十六进制代码的**特色色彩**（如柠檬黄#E4D00A）。**艺术家A-Z名录**收录了超过3065位画家，同时设有专栏展示作品中**最受欢迎艺术家**的精选集。

---

## 8. 金融服务与保险代理人

**原文标题**: Agents for financial services and insurance

**原文链接**: [https://www.anthropic.com/news/finance-agents](https://www.anthropic.com/news/finance-agents)

Anthropic发布了十款即用型AI智能体模板，专为金融服务领域设计，可自动化制作路演手册、审查KYC文件及月末结算等任务。每套模板可作为Claude Cowork与Claude Code的插件，或作为Claude Managed Agents的操作指南，数日内即可完成部署。模板包含：路演手册生成器、会议准备助手、财报分析员、模型构建器、市场研究员、估值审查员、总账核对工具、月末结算程序、报表审计师及KYC审查员。

Claude现已集成Microsoft 365（Excel、PowerPoint、Word、Outlook），能够跨应用自动携带上下文信息。用户还可在离开工位时通过Dispatch分配任务。

新增数据接口包括：邓白氏、Fiscal AI、Financial Modeling Prep、Guidepoint、IBISWorld、SS&C IntraLinks、Third Bridge及Verisk。穆迪已推出信用评级数据MCP应用。

Claude已被FIS（将反洗钱调查周期压缩）、凯雷集团及Walleye Capital（实现100%员工使用率）等大型机构采用。Claude Opus 4.7在Vals AI金融智能体基准测试中以64.37%得分领先。上述智能体与数据接口现已面向付费用户开放，Outlook集成功能即将上线。

---

## 9. 加州农民将在德尔蒙特破产后砍伐42万棵桃树

**原文标题**: California farmers to destroy 420k peach trees following Del Monte bankruptcy

**原文链接**: [https://www.sfgate.com/centralcoast/article/usda-aid-california-farmers-22240694.php](https://www.sfgate.com/centralcoast/article/usda-aid-california-farmers-22240694.php)

根据提供的文本，标题为“加州农民因德尔蒙破产将销毁42万棵桃树”的文章因技术错误无法访问。所显示的内容并非实际文章，而是一条网站错误信息，表明浏览器中的JavaScript被禁用，导致页面无法加载。

因此，无法根据所给信息生成文章要点摘要。唯一可用的关键细节是标题本身：加州农民计划销毁42万棵桃树，且此举是德尔蒙破产的结果。文本片段中未提供进一步的背景、原因或影响。

---

## 10. IBM不希望微软使用Tab键在对话框字段间切换。

**原文标题**: IBM didn't want Microsoft to use the Tab key to move between dialog fields

**原文链接**: [https://devblogs.microsoft.com/oldnewthing/20260505-00/?p=112298](https://devblogs.microsoft.com/oldnewthing/20260505-00/?p=112298)

微软与IBM在OS/2合作期间的文化冲突，从一次关于对话框字段切换按键的争议中可见一斑。被IBM视为散漫的微软开发者选择了TAB键，但被微软视为官僚的IBM高层提出了反对。当时派驻佛罗里达州的微软开发人员接到自己经理的指示自行决策，于是他给出了企业版的回应："微软支持使用TAB键。"IBM方面将此事逐级上报至比程序员高七级的副总裁，要求微软相应级别人员确认。这位开发者回复道："比尔·盖茨的母亲对TAB键不感兴趣。"此言终结了争论，保住了TAB键。文章结尾还幽默地提及了母亲节。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 2 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 3 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 4 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 5 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 6 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 7 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 8 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 9 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 10 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 11 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 12 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 13 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 14 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 15 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 16 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 17 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 18 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 19 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 20 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 21 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 22 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 23 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 24 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 25 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 26 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 27 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 28 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 29 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 30 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 31 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 32 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 33 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 34 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 35 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 36 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 37 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 38 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 39 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 40 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 41 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 42 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 43 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 44 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 45 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 46 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 47 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 48 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 49 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 50 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 51 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 52 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 53 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 54 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 55 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 56 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 57 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 58 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 59 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 60 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 61 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 62 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 63 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 64 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 65 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 66 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 67 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 68 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 69 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 70 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 71 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 72 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 73 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 74 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 75 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 76 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 77 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 78 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 79 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 80 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 81 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 82 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 83 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 84 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 85 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 86 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 87 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 88 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 89 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 90 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 91 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 92 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 93 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 94 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 95 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 96 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 97 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 98 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 99 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 100 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 101 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 102 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 103 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 104 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 105 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 106 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 107 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 108 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 109 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 110 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 111 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 112 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 113 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 114 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 115 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 116 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 117 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 118 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 119 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 120 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 121 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 122 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 123 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 124 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 125 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 126 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 127 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 128 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 129 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 130 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 131 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 132 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 133 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 134 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 135 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 136 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 137 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 138 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 139 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 140 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 141 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 142 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 143 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 144 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 145 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 146 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 147 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 148 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 149 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 150 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 151 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 152 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 153 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 154 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 155 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 156 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 157 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 158 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 159 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 160 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 161 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 162 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 163 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 164 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 165 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 166 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 167 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 168 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 169 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 170 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 171 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 172 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 173 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 174 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 175 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 176 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 177 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 178 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 179 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 180 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 181 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 182 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 183 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 184 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 185 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 186 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 187 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 188 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 189 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 190 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 191 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 192 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 193 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 194 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 195 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 196 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 197 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 198 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 199 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 200 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 201 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 202 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 203 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 204 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 205 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 206 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 207 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 208 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 209 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 210 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 211 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 212 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 213 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 214 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 215 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 216 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 217 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 218 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 219 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 220 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 221 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 222 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 223 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 224 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 225 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 226 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 227 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 228 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 229 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 230 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 231 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 232 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 233 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 234 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 235 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 236 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 237 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 238 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 239 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 240 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 241 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 242 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 243 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 244 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 245 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 246 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 247 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 248 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 249 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 250 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 251 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 252 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 253 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 254 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 255 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 256 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 257 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 258 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 259 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 260 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 261 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 262 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 263 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 264 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 265 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 266 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 267 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 268 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 269 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 270 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 271 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 272 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 273 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 274 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 275 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 276 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 277 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 278 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 279 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 280 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 281 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 282 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 283 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 284 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 285 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 286 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 287 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 288 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 289 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 290 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 291 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 292 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 293 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 294 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 295 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 296 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 297 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 298 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 299 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 300 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 301 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 302 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 303 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 304 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 305 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 306 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 307 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 308 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 309 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 310 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 311 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 312 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 313 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 314 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 315 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 316 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 317 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 318 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 319 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 320 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 321 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 322 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 323 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 324 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 325 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 326 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 327 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 328 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 329 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 330 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 331 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 332 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 333 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 334 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 335 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 336 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 337 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 338 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 339 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 340 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 341 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 342 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 343 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 344 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 345 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 346 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 347 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 348 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 349 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 350 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 351 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 352 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 353 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 354 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 355 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 356 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 357 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 358 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 359 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 360 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 361 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 362 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 363 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 364 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 365 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 366 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 367 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 368 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 369 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 370 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 371 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 372 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 373 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 374 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 375 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 376 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 377 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 378 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 379 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 380 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 381 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 382 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 383 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 384 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 385 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 386 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 387 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 388 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 389 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 390 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 391 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 392 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 393 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 394 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 395 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 396 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 397 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 398 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 399 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 400 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 401 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 402 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 403 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 404 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 405 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 406 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 407 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 408 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 409 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
