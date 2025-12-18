# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2025-12-18.md)

*最后自动更新时间: 2025-12-18 20:19:59*
## 1. 自2026年1月起，所有ACM出版物将转为开放获取。

**原文标题**: Beginning January 2026, all ACM publications will be made open access

**原文链接**: [https://dl.acm.org/openaccess](https://dl.acm.org/openaccess)

**《自2026年1月起，所有ACM出版物将转为开放获取》摘要**

美国计算机协会（ACM）宣布了一项重大政策调整：自2026年1月起，其所有期刊、会议论文集和杂志上发表的新文章将在出版后**立即转为开放获取（OA）**。

**要点：**

*   **政策生效日期：** 该变更适用于2026年1月1日及之后提交的所有稿件。
*   **适用范围：** 适用于ACM全部出版内容，确保其未来发布的所有研究成果将在全球范围内免费阅读，无订阅障碍。
*   **资助模式：** 为支持此转型，ACM将采用**“作者付费”的开放获取模式**。文章处理费将由作者、其所属机构或资助方承担。ACM表示将负责任地设定这些费用，并提供费用减免与折扣，以确保资金有限作者的公平性。
*   **核心理由：** 此举源于ACM推动计算科学和专业发展的使命。通过消除获取障碍，ACM旨在最大限度地促进计算研究在全球范围内的传播、影响力及再利用。
*   **现有内容：** 该政策具有前瞻性。2026年之前出版的内容将保持其现有获取条款，不过ACM的大部分历史档案已通过各种项目免费提供。
*   **转型支持：** ACM计划在未来几年与各机构、图书馆和联盟密切合作，以促进向新模式的平稳过渡。

本质上，这一决定标志着ACM对可持续开放获取未来的全面承诺，顺应了学术出版更广泛的趋势，以确保公共资助的研究能够立即免费获取。

---

## 2. 我们通过供应链攻击成功入侵了X、Vercel、Cursor和Discord。

**原文标题**: We pwned X, Vercel, Cursor, and Discord through a supply-chain attack

**原文链接**: [https://gist.github.com/hackermondev/5e2cdc32849405fff6b46957747a2d28](https://gist.github.com/hackermondev/5e2cdc32849405fff6b46957747a2d28)

2025年11月，一名16岁的安全研究员在Mintlify中发现了一个严重的跨站脚本（XSS）漏洞。Mintlify是一个流行的人工智能驱动文档平台，被X、Vercel、Cursor和Discord等大公司使用。

该漏洞存在于Mintlify的一个API端点（`/_mintlify/static/[sub域名]/[...路由]`），允许从*任何*Mintlify托管的文档站点获取静态文件，无论域名如何。通过向一个测试文档站点上传包含嵌入式JavaScript的SVG文件，当用户访问一个特制链接时，该研究员可以在Mintlify客户的主要域名上执行该脚本。

这意味着攻击者可以通过一个恶意链接窃取用户凭据或接管Discord等平台上的账户。该研究员和两名合作者负责任地披露了该漏洞。Discord暂时将其开发者文档下线并恢复到旧平台，而Mintlify的工程团队则努力修补该问题。

这一事件突显了广泛使用的服务中单个漏洞所带来的重大供应链风险。研究人员因其发现总共获得了约11,000美元的漏洞赏金。

---

## 3. Agent Skills现已开放为标准

**原文标题**: Agent Skills is now an open standard

**原文链接**: [https://claude.com/blog/organization-skills-and-directory](https://claude.com/blog/organization-skills-and-directory)

本文宣布，Claude的“技能”功能——一种教授Claude可重复工作流程的方式——现已成为一个开放标准，使其能够在不同AI平台间移植。此次更新为企业用户带来了三项重大改进。

首先，组织级管理功能允许团队和企业计划的管理员默认集中配置和部署已批准的技能给所有用户，确保工作流程的一致性。

其次，技能的创建和发现过程得到简化。用户可以描述一个技能让Claude构建、编辑现有技能，或浏览来自Notion、Canva、Figma、Atlassian和Cloudflare等合作伙伴的全新公共预建技能目录。这些合作伙伴技能为常用工具提供了即用型集成工作流程。

第三，通过将Agent Skills发布为开放标准，Anthropic旨在确保技能能在Claude之外运行，促进AI生态系统的互操作性，类似于其模型上下文协议（MCP）。

文章最后指导用户如何在Claude Apps、Claude Code和API中开始使用，并指出技能需要启用代码执行和文件创建功能。

---

## 4. GPT-5.2-Codex

**原文标题**: GPT-5.2-Codex

**原文链接**: [https://openai.com/index/introducing-gpt-5-2-codex/](https://openai.com/index/introducing-gpt-5-2-codex/)

无法访问文章链接。

---

## 5. 古典雕像并非被涂得面目全非。

**原文标题**: Classical statues were not painted horribly

**原文链接**: [https://worksinprogress.co/issue/were-classical-statues-painted-horribly/](https://worksinprogress.co/issue/were-classical-statues-painted-horribly/)

本文挑战了一个广为流传的观点——即古希腊和罗马的彩绘雕像色彩俗艳，令现代观者感到丑陋，这一观点因“神祇的色彩”等现代重建展览而流行。作者指出，问题在于重建工作本身存在缺陷，而非古人的审美与现代人格格不入。

文中列举的证据包括古代壁画和镶嵌画，它们描绘的雕像色彩细腻自然，常保留大理石大面积的白色，这与现代审美感受相符。此外，作者提到，其他地区的彩绘雕塑传统（如埃及或文艺复兴时期的作品）如今备受欣赏，并未引发类似的不适感。

文章认为，重建之所以不准确，是因为它们仅依据残留的底层颜料，而忽略了已完全风化的表层修饰。这导致重建色彩单调饱和，缺乏原作的微妙层次。作者推测，重建作品的丑陋可能源于重建者艺术技巧的不足、保守的修复理念，甚至是为了吸引公众关注而刻意制造的争议。结论是：古典雕像并非被“糟糕地”彩绘；它们很可能原本精美绝伦，而现代重建则误导了公众认知。

---

## 6. 公众在加密货币暴跌中赚取数百万

**原文标题**: Public Makes Millions on Plunging Crypto

**原文链接**: [https://cepr.net/publications/public-makes-trillions-on-plunging-crypto/](https://cepr.net/publications/public-makes-trillions-on-plunging-crypto/)

**《公众如何在加密货币暴跌中获利数百万》摘要**

经济与政策研究中心（CEPR）的文章分析了散户投资者通过“做空”策略从加密货币价格下跌中获利的现象。文章挑战了“加密货币价格下跌必然损害公众利益”的普遍说法。

核心论点是：加密货币市场是零和游戏，有亏必有盈。在市场崩盘时，长期持有者（“HODLer”）和后期买入者固然蒙受损失，但其他参与者通过做空市场获利。文章强调，普通投资者可通过反向交易所交易基金（ETF）和交易平台的衍生品等多种金融工具便捷地使用这些做空策略。

关键一点在于，2022年加密货币暴跌中的巨额利润并非仅由精英对冲基金独享。主要反向ETF的公开数据显示，在市场暴跌期间，这些基金为股东创造了数十亿美元的回报，表明散户投资者广泛参与了这些收益的分配。

文章总结道，公众与加密货币波动性的关系是复杂的。尽管许多人遭受损失，但大量散户投资者积极利用工具从市场下跌中获利，使他们与大型机构做空者一样，成为市场崩盘的直接财务受益者。这反驳了“加密货币崩盘纯粹是财富从公众转移到华尔街”的简单化观点。

---

## 7. 中国如何打造其“曼哈顿计划”以在AI芯片领域与西方抗衡

**原文标题**: How China built its ‘Manhattan Project’ to rival the West in AI chips

**原文链接**: [https://www.japantimes.co.jp/business/2025/12/18/tech/china-west-ai-chips/](https://www.japantimes.co.jp/business/2025/12/18/tech/china-west-ai-chips/)

根据文章内容，以下是简明摘要：

文章详述了中国为在高端AI芯片领域实现自给自足、缩小与西方（尤其是美国）技术差距而发起的一项国家主导的“曼哈顿计划”式行动。这项国家倡议的启动，是为了应对美国不断升级的出口管制，这些限制阻碍了中国获取尖端半导体技术。

中国战略的核心包含两条并行路径。其一，旨在开发西方设计芯片的国产替代品，例如打造可替代英伟达主导的硬件和软件生态的方案。其二，也是更为关键的一点，中国正试图通过开创全新的芯片架构和材料（包括基于光子而非电子的设计）来实现技术跨越。

该项目规模宏大且高度集中协调，在政府指导下汇聚了顶尖科技公司（如华为）、研究机构和大学的资源。尽管已取得显著进展——尤其是华为的7纳米昇腾AI芯片——但该计划仍面临重大障碍。这些障碍包括因制裁而在获取先进制造工具（如极紫外光刻机）方面持续存在的瓶颈、构建完全独立供应链的巨大复杂性，以及核心半导体领域严重的人才短缺。

总体结论是，尽管中国的雄心勃勃的计划使其更具韧性，并推动了替代技术的创新，但要完全独立于西方半导体技术，仍是一个遥远且极具挑战性的目标。美国的制裁减缓了但并未阻止中国的进步，为持续的技术竞争奠定了基础。

---

## 8. FunctionGemma 270M 模型

**原文标题**: FunctionGemma 270M Model

**原文链接**: [https://blog.google/technology/developers/functiongemma/](https://blog.google/technology/developers/functiongemma/)

谷歌发布了**FunctionGemma**，这是其轻量级Gemma 3 270M模型的专用版本，专门针对**函数调用**进行了微调。这使得模型能够将自然语言转化为可执行的API操作，从对话式聊天机器人转变为能够执行任务的主动智能体。

FunctionGemma的主要特点包括：
*   **统一行动与对话：** 它能够生成结构化函数调用，并以自然语言总结执行结果。
*   **专为定制设计：** 该模型旨在针对特定应用进行微调，测试显示，在“移动操作”数据集上，微调后其准确率从58%提升至85%。
*   **为边缘计算打造：** 其小巧的体积使其能够在手机和NVIDIA Jetson Nano等设备上本地运行，确保低延迟和数据隐私。
*   **广泛的生态系统支持：** 它与Hugging Face Transformers、vLLM和Ollama等主流开发和部署工具兼容。

该模型面向那些已定义好应用操作集、准备通过微调提升可靠性，并优先考虑本地、私密且快速的设备端执行的开发者。演示案例包括一个用于离线手机指令的“移动操作”助手，以及一款名为“TinyGarden”的语音控制游戏。

FunctionGemma现已在Hugging Face和Kaggle上提供下载，并附有微调和部署指南。

---

## 9. 你的工作是交付经过验证可运行的代码。

**原文标题**: Your job is to deliver code you have proven to work

**原文链接**: [https://simonwillison.net/2025/Dec/18/code-proven-to-work/](https://simonwillison.net/2025/Dec/18/code-proven-to-work/)

本文认为，软件工程师的核心职责是交付*经过验证可运行*的代码，而不仅仅是编写代码。文章批评了提交大量未经测试的AI生成代码并期望评审人员验证的做法，称这是浪费时间且失职的行为。

作者概述了验证代码有效性的强制两步流程：
1.  **手动测试：** 开发者必须亲自验证代码正确运行，并记录步骤和结果，包括测试“正常路径”和边界情况。
2.  **自动化测试：** 代码变更必须包含自动化测试，当实现被回退时测试会失败。作者指出，AI工具使编写此类测试比以往更容易。

文章强调，虽然AI编程助手在生成甚至执行代码方面很强大，但人类工程师必须承担最终责任。开发者应训练这些助手通过手动执行（如运行CLI命令、截屏）和编写自动化测试来证明其工作成果。人类需最终确保提交的任何代码都附带其按预期运行的证据。

---

## 10. 软件控制等级军用标准

**原文标题**: Military Standard on Software Control Levels

**原文链接**: [https://entropicthoughts.com/mil-std-882e-software-control](https://entropicthoughts.com/mil-std-882e-software-control)

MIL-STD-882E标准根据软件故障可能造成的危险程度，定义了四种简化的软件控制级别：

1.  **最危险：** 软件直接、即时控制系统，其故障会立即引发危险（例如飞行控制软件）。

2.  **高度危险：** 要么（a）软件直接控制，但危险后果的出现存在延迟；要么（b）软件不直接控制，但人员必须立即根据其信号采取行动以防止迫在眉睫的危险（例如触发反应堆最后一秒停堆的软件）。

3.  **较不危险：** 软件不直接控制，且人员在采取行动前有足够时间通过独立方法验证其建议。

4.  **最不危险：** 软件仅起辅助性、非关键作用，不参与控制重要系统。

作者指出，这一框架在当今尤其具有现实意义，因为人工智能（如大语言模型和计算机视觉）的进步，正在创造新的机会将软件集成到以往以人为监督为主导的流程中。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 2 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 3 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 4 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 5 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 6 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 7 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 8 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 9 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 10 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 11 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 12 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 13 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 14 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 15 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 16 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 17 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 18 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 19 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 20 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 21 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 22 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 23 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 24 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 25 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 26 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 27 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 28 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 29 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 30 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 31 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 32 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 33 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 34 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 35 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 36 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 37 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 38 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 39 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 40 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 41 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 42 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 43 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 44 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 45 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 46 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 47 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 48 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 49 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 50 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 51 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 52 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 53 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 54 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 55 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 56 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 57 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 58 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 59 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 60 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 61 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 62 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 63 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 64 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 65 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 66 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 67 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 68 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 69 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 70 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 71 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 72 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 73 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 74 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 75 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 76 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 77 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 78 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 79 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 80 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 81 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 82 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 83 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 84 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 85 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 86 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 87 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 88 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 89 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 90 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 91 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 92 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 93 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 94 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 95 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 96 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 97 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 98 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 99 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 100 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 101 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 102 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 103 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 104 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 105 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 106 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 107 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 108 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 109 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 110 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 111 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 112 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 113 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 114 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 115 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 116 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 117 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 118 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 119 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 120 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 121 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 122 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 123 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 124 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 125 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 126 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 127 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 128 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 129 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 130 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 131 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 132 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 133 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 134 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 135 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 136 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 137 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 138 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 139 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 140 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 141 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 142 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 143 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 144 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 145 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 146 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 147 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 148 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 149 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 150 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 151 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 152 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 153 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 154 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 155 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 156 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 157 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 158 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 159 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 160 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 161 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 162 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 163 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 164 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 165 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 166 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 167 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 168 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 169 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 170 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 171 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 172 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 173 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 174 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 175 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 176 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 177 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 178 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 179 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 180 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 181 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 182 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 183 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 184 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 185 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 186 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 187 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 188 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 189 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 190 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 191 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 192 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 193 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 194 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 195 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 196 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 197 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 198 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 199 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 200 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 201 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 202 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 203 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 204 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 205 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 206 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 207 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 208 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 209 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 210 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 211 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 212 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 213 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 214 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 215 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 216 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 217 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 218 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 219 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 220 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 221 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 222 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 223 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 224 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 225 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 226 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 227 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 228 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 229 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 230 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 231 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 232 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 233 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 234 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 235 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 236 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 237 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 238 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 239 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 240 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 241 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 242 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 243 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 244 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 245 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 246 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 247 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 248 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 249 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 250 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 251 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 252 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 253 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 254 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 255 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 256 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 257 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 258 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 259 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 260 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 261 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 262 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 263 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 264 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 265 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 266 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 267 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 268 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 269 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 270 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 271 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 272 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
