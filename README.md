# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-02-06.md)

*最后自动更新时间: 2026-02-06 20:36:54*
## 1. Waymo世界模型：自动驾驶仿真的新前沿

**原文标题**: The Waymo World Model: A New Frontier for Autonomous Driving Simulation

**原文链接**: [https://waymo.com/blog/2026/02/the-waymo-world-model-a-new-frontier-for-autonomous-driving-simulation](https://waymo.com/blog/2026/02/the-waymo-world-model-a-new-frontier-for-autonomous-driving-simulation)

Waymo推出了Waymo世界模型，这是一种新型生成式AI模型，旨在为自动驾驶创建超逼真的大规模模拟。该模型基于Google DeepMind的Genie 3构建，利用视频预训练中获取的广泛世界知识，模拟罕见且复杂的场景——例如极端天气、自然灾害和异常物体（如大象或龙卷风）——这些场景仅靠真实世界数据难以捕捉。

其关键进展在于能够生成同步的高保真摄像头和激光雷达传感器数据，提供更完整的模拟环境。该模型还具有强大的可控性，允许工程师通过语言提示、驾驶操作和场景布局修改模拟，以测试特定的“假设”场景和反事实情况。

这项技术增强了Waymo在公共道路上遇到之前，在虚拟世界中严格测试其自动驾驶系统应对长尾安全挑战的能力。它还能将常规行车记录仪视频转换为多模态模拟，并支持对长时间场景进行可扩展的高效推理。其目标是建立更稳健的安全基准，加速自动驾驶汽车在不同环境中的安全部署。

---

## 2. 展示 HN：我花了四年时间打造一款只包含我常用功能的UI设计工具

**原文标题**: Show HN: I spent 4 years building a UI design tool with only the features I use

**原文链接**: [https://vecti.com](https://vecti.com)

Vecti是一款由创始人Serge历时四年打造的全新协作式UX/UI设计工具，旨在满足设计师的特定需求。作为基于浏览器的应用程序，它强调高性能、直观界面和实时协作功能，允许多名团队成员同时编辑设计。

其突出功能包括支持像素级精准设计的强大渲染引擎、共享资源库，以及具备权限控制的工作分享与演示工具。可复用组件功能即将推出。

该工具提供免费入门版（限制项目数量和编辑人数）和付费专业版（无限项目、按编辑人数计费、优先技术支持）。公司强调其运营基地位于欧盟，并致力于保障用户隐私与产品性能。

文末附有用户评价，并阐述了创始人打造透明、以社区为导向、优先服务创作者的使命。

---

## 3. 微软开源LiteBox，一个专注于安全的库操作系统。

**原文标题**: Microsoft open-sources LiteBox, a security-focused library OS

**原文链接**: [https://github.com/microsoft/litebox](https://github.com/microsoft/litebox)

**摘要：**

微软已开源**LiteBox**，这是一个专注于安全的库操作系统，旨在通过大幅限制应用程序与宿主系统的交互界面来减少攻击面。它充当沙盒层，将程序与底层平台隔离。

该项目目前处于积极开发阶段，稳定版发布前其API可能发生变更。其核心设计支持多种“北向”（面向应用程序）接口与“南向”（面向平台/宿主）实现之间的灵活互操作。LiteBox为应用程序提供了基于Rust、受nix/rustix启发的API。

强调的主要应用场景包括：
*   在Windows上运行未经修改的Linux程序。
*   在Linux系统上对Linux应用程序进行沙盒化以增强安全性。
*   在AMD SEV-SNP和OP-TEE等安全硬件平台上运行程序。
*   在LVBS等轻量级虚拟化系统上运行。

该项目基于MIT许可证发布，微软提供了标准的开源文档，涵盖贡献指南、行为准则、安全及支持信息。公告中包含关于使用微软及第三方商标的标准免责声明。

---

## 4. 谢尔顿·布朗的自行车技术信息

**原文标题**: Sheldon Brown's Bicycle Technical Info

**原文链接**: [https://www.sheldonbrown.com/](https://www.sheldonbrown.com/)

本网页是已故谢尔顿·布朗关于自行车机械与骑行文化的著作核心在线存档。作为一个全面分类的资源库，它涵盖从新手建议、维修技巧到固定齿轮车、双人自行车及专业传动系统等广泛主题。

网站设有刹车、变速、车轮、通勤骑行及幽默故事等清晰板块，其特色内容《自行车术语词典》是骑行领域的权威参考。页面还收录了谢尔顿·布朗的个人资料，包括日记、摄影作品和家族历史，体现了该网站最初作为个人项目的渊源。

尽管核心技术信息仍备受推崇并被广泛使用，页面标注现由约翰·艾伦负责更新，表明其已转型为持续维护的遗产网站。所提供的网址旨在方便需要直接链接到这个持久实用骑行知识库的用户。

---

## 5. 从上下文学习比我们想象的要困难。

**原文标题**: Learning from context is harder than we thought

**原文链接**: [https://hy.tencent.com/research/100025?langVersion=en](https://hy.tencent.com/research/100025?langVersion=en)

**《“从上下文学习”比我们想象的更难》摘要**

腾讯混元研究院的文章挑战了一个乐观假设，即大型语言模型（LLM）能够可靠地学习和应用在单次对话或上下文窗口中呈现的新信息。核心发现是，这种“上下文学习”的有效性远低于此前的认知，且更为脆弱。

主要观点包括：

*   **学习的假象：** 虽然LLM在上下文中看似能遵循新指令或使用提供的数据，但这往往是表面的模式匹配，而非真正的知识获取。模型的表现高度依赖于提示中信息的确切格式和位置。
*   **关键局限：** 研究揭示了特定的失败模式：
    *   **近因偏差：** 模型倾向于过度依赖最近呈现的信息，即使这些信息与同一上下文中更早、更准确的数据相矛盾。
    *   **指令忽视：** 如果提示中提供的明确、新颖指令与其预训练偏见相冲突，模型常常无法遵循这些指令。
    *   **缺乏整合：** 在上下文中给出的新“事实”并未被稳健地整合到模型的理解中；它们很容易在后续推理步骤中被遗忘或误用。
*   **影响：** 这对依赖上下文学习的应用具有重大影响，例如：
    *   通过检索增强生成（RAG）提供最新信息。
    *   给出复杂的一次性系统提示或指令。
    *   试图在单次会话中纠正模型的错误或偏见。

结论是，要真正更新模型的知识或行为，需要在大量示例上进行微调，而不仅仅是在上下文中呈现信息。这凸显了当前LLM架构在从单次交互中进行动态、可靠学习方面存在根本性局限。

---

## 6. 直观理解神经网络

**原文标题**: Understanding Neural Network, Visually

**原文链接**: [https://visualrambling.space/neural-network/](https://visualrambling.space/neural-network/)

本文通过交互式可视化，以通俗易懂的方式阐释神经网络的基本工作原理。文章开篇将神经网络描述为受生物大脑启发的系统，其通过相互连接的神经元层处理数据。

核心概念以手写数字识别为例进行说明：首先将图像转换为数值化的像素数据（亮度值），作为第一层神经元的输入。神经元之间的每个连接都有独特的“权重”。输入值乘以这些权重后，在接收神经元中求和，再通过“激活函数”（此处简化为阈值规则）判断该神经元是否激活。

激活意味着神经元识别出了特定模式，如线条或曲线。随着数据在连续层中传递，每个拥有独立权重和阈值的神经元会检测不同模式。浅层网络识别简单特征，深层网络则组合这些特征以识别更复杂的形状，最终在输出层通过激活状态呈现网络预测结果（例如识别出的数字）。

作者最后指出，本文解释了数据的前向传播过程，但省略了关键的“学习”机制——即如何通过训练确定正确的权重与阈值，这一主题将留待后续探讨。本文旨在为神经网络机制提供基础性的可视化入门指引。

---

## 7. 如何利用AI高效编写优质代码

**原文标题**: How to effectively write quality code with AI

**原文链接**: [https://heidenstedt.org/posts/2026/how-to-effectively-write-quality-code-with-ai/](https://heidenstedt.org/posts/2026/how-to-effectively-write-quality-code-with-ai/)

本文概述了开发者如何与人工智能有效协作以产出高质量代码的策略。其核心原则是必须确保人类始终掌握主导权，提供清晰的指导和监督。

关键步骤包括预先建立详细的愿景和架构，因为每一个未明确记录的决定都将由人工智能自行做出。为引导人工智能和团队，对需求、标准和复杂逻辑进行精确、标准化的文档记录至关重要。

作者强调通过严格测试来应对人工智能倾向于取巧或走捷径的问题。这包括自行编写高层次基于属性的测试，并让另一个独立的人工智能生成无偏见的接口测试，且两者都应受到保护以防止被篡改。代码应标注审查级别（例如//A表示AI生成）和安全风险标签（例如//高风险），以确保关键部分得到适当的人工审查。

实用建议包括使用严格的代码检查工具、创建针对特定情境的智能体提示（如CLAUDE.md），以及减少不必要的代码复杂性以节约成本和认知负担。复杂任务应被分解，并利用人工智能的速度进行快速原型设计，但开发者绝不能失去对代码内部运作的监督。

---

## 8. 我现在认为苹果新闻上的所有广告都是骗局。

**原文标题**: I now assume that all ads on Apple news are scams

**原文链接**: [https://kirkville.com/i-now-assume-that-all-ads-on-apple-news-are-scams/](https://kirkville.com/i-now-assume-that-all-ads-on-apple-news-are-scams/)

本文批评苹果公司在2024年与广告网络Taboola达成合作后，放任其Apple News应用中诈骗广告泛滥。作者指出，这些类似低质“诱饵内容”的广告日益具有欺骗性，并列举了近期多个案例：包括AI生成的“停业清仓”促销广告，以及来自新注册域名（如MUSTYLEVO.COM、SOLVERACO.COM）的产品广告——这些均是诈骗活动的典型特征。其中一则推广“Tidenox”的广告自称拥有26年经营历史，但其域名注册于2025年5月，且广告图片暗藏AI生成水印。

文章核心指控在于，苹果与Taboola均未对这些广告进行充分审核与监督。苹果将这些广告置于本应优质的服务中（甚至付费版Apple News+仍包含广告），实则是打造了“诈骗广告的温床”。作者最终得出结论：苹果已无法被信任其能负责任地管理旗下产品的广告业务。

---

## 9. 黑客（1995）动画体验

**原文标题**: Hackers (1995) Animated Experience

**原文链接**: [https://hackers-1995.vercel.app/](https://hackers-1995.vercel.app/)

本文介绍了一部粉丝制作的动画视频，它以风格化的动态漫画形式重新演绎了1995年的邪典电影《黑客》。该作品由艺术家大卫·维多维创作，将电影情节浓缩为一段简短而视觉动态的体验。

概述强调了视频的核心艺术手法：采用有限的色彩（主要为绿色、黑色和白色）来唤起早期计算机终端的美学以及电影标志性的“网络空间”视觉。动画风格被描述为充满活力，运用快速剪辑、数字特效和漫画式构图，以捕捉电影的高能基调与黑客场景。

作品的主要目的被呈现为一种怀旧致敬。它旨在为既有影迷和新观众提炼《黑客》的核心魅力——包括其过时却迷人的技术、反文化精神以及如零度酷客和酸蚀等令人难忘的角色。文章将维多维的作品定位为并非替代，而是一种创造性的致敬，颂扬了这部电影在赛博朋克流行文化中独特的风格与持久的影响。

---

## 10. 被称作自由的单子

**原文标题**: The Monad Called Free

**原文链接**: [http://blog.sigfpe.com/2014/04/the-monad-called-free.html](http://blog.sigfpe.com/2014/04/the-monad-called-free.html)

本文探讨了**自由**单子作为自函子范畴（Endo）中的“高阶单子”概念，而非标准类型范畴（Hask）。作者通过类比Hask中的列表与Endo中的自由单子，揭示了自由单子如同“函子列表”的特性。

核心要点包括：
*   **HFunctor与HMonad**：文章定义了Endo范畴中的函子（`HFunctor`）和单子（`HMonad`）类型类，其中态射为自然变换。
*   **自由单子的列表类比**：正如列表可以是`Nil`或`Cons a (List a)`，自由单子`Free f a`表现为`Pure a`或`Free (f (Free f a))`，这使得`Free`成为Endo范畴中的“自由幺半群”。
*   **操作的泛化**：列表操作如`singleton`和`foldMap`在自由单子中有直接对应（`hsingleton`、`hFoldMap`），常用于构建和解释抽象语法树。
*   **实现**：文章核心提供了Haskell代码，展示`Free`作为`HFunctor`和`HMonad`的实例，其中`hreturn`和`hbind`分别对应列表的`return`和`>>=`操作。

本质上，文章通过范畴论视角重构自由单子，强调其与列表的结构相似性，并阐释这一视角如何澄清其在建模和解释带副作用计算中的作用。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 2 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 3 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 4 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 5 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 6 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 7 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 8 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 9 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 10 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 11 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 12 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 13 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 14 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 15 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 16 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 17 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 18 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 19 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 20 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 21 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 22 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 23 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 24 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 25 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 26 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 27 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 28 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 29 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 30 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 31 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 32 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 33 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 34 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 35 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 36 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 37 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 38 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 39 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 40 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 41 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 42 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 43 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 44 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 45 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 46 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 47 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 48 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 49 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 50 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 51 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 52 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 53 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 54 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 55 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 56 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 57 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 58 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 59 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 60 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 61 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 62 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 63 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 64 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 65 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 66 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 67 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 68 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 69 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 70 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 71 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 72 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 73 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 74 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 75 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 76 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 77 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 78 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 79 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 80 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 81 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 82 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 83 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 84 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 85 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 86 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 87 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 88 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 89 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 90 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 91 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 92 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 93 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 94 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 95 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 96 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 97 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 98 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 99 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 100 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 101 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 102 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 103 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 104 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 105 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 106 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 107 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 108 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 109 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 110 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 111 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 112 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 113 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 114 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 115 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 116 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 117 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 118 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 119 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 120 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 121 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 122 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 123 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 124 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 125 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 126 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 127 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 128 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 129 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 130 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 131 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 132 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 133 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 134 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 135 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 136 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 137 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 138 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 139 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 140 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 141 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 142 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 143 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 144 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 145 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 146 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 147 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 148 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 149 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 150 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 151 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 152 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 153 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 154 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 155 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 156 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 157 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 158 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 159 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 160 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 161 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 162 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 163 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 164 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 165 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 166 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 167 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 168 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 169 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 170 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 171 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 172 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 173 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 174 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 175 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 176 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 177 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 178 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 179 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 180 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 181 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 182 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 183 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 184 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 185 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 186 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 187 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 188 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 189 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 190 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 191 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 192 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 193 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 194 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 195 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 196 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 197 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 198 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 199 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 200 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 201 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 202 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 203 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 204 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 205 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 206 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 207 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 208 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 209 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 210 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 211 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 212 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 213 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 214 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 215 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 216 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 217 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 218 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 219 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 220 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 221 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 222 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 223 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 224 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 225 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 226 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 227 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 228 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 229 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 230 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 231 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 232 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 233 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 234 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 235 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 236 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 237 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 238 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 239 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 240 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 241 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 242 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 243 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 244 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 245 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 246 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 247 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 248 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 249 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 250 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 251 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 252 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 253 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 254 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 255 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 256 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 257 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 258 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 259 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 260 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 261 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 262 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 263 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 264 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 265 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 266 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 267 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 268 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 269 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 270 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 271 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 272 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 273 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 274 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 275 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 276 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 277 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 278 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 279 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 280 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 281 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 282 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 283 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 284 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 285 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 286 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 287 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 288 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 289 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 290 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 291 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 292 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 293 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 294 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 295 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 296 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 297 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 298 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 299 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 300 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 301 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 302 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 303 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 304 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 305 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 306 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 307 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 308 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 309 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 310 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 311 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 312 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 313 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 314 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 315 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 316 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 317 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 318 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 319 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 320 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 321 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
