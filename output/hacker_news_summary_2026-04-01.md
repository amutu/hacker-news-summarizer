# Hacker News 热门文章摘要 (2026-04-01)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 阿尔忒弥斯二号宇航员乘坐宇航车抵达39B发射台。

**原文标题**: Artemis II astronauts arrive at launch pad 39B in an astrovan

**原文链接**: [https://techfixated.com/artemis-ii-astronauts-arrive-at-launch-pad-39b-in-an-astrovan/](https://techfixated.com/artemis-ii-astronauts-arrive-at-launch-pad-39b-in-an-astrovan/)

美国宇航局的"阿尔忒弥斯二号"任务将于2026年4月1日发射，四名宇航员将开启为期10天的绕月往返之旅。这是53年多来人类首次超越近地轨道的太空航行。由指令长里德·怀斯曼、飞行员维克多·格洛弗、任务专家克里斯蒂娜·科赫和任务专家杰里米·汉森组成的乘组创造了历史——包含首位执行月球任务的女性及非裔宇航员。

此次任务并非登月，而是一次关键性试飞。宇航员将先绕地球飞行检测系统，随后沿自由返回轨道飞掠月球，可能打破人类离地最远纪录。任务将验证"猎户座"飞船与强大的太空发射系统火箭执行深空任务的能力。

与阿波罗计划不同，阿尔忒弥斯计划旨在建立人类在月球的永久存在，目标锁定蕴藏水冰资源的月球南极，这些资源对未来可持续驻留及火星任务至关重要。继本次任务后，美国宇航局计划于2027年执行阿尔忒弥斯三号（对接测试），2028年执行阿尔忒弥斯四号（载人登陆）。

发射窗口于美国东部时间下午6点24分在肯尼迪航天中心开启，预计4月10日在太平洋海域溅落。

---

## 2. 你仍然在用错误的方式签署数据结构。

**原文标题**: You're still signing data structures the wrong way

**原文链接**: [https://blog.foks.pub/posts/domain-separation-in-idl/](https://blog.foks.pub/posts/domain-separation-in-idl/)

本文指出，密码系统的一个常见缺陷是缺乏适当的领域分隔，这使得攻击者可能将针对一种数据类型的签名误认为对另一种类型也有效。这种“类型混淆”攻击已在比特币、TLS等系统中被利用。

提出的解决方案名为Snowpack，它将唯一的64位随机领域分隔符直接嵌入数据结构接口定义语言（IDL）中。当对`TreeRoot`这类结构进行签名时，其不可变的领域分隔符会在密码学操作前被添加到序列化字节中。这确保了签名仅对该特定数据类型有效。

编译器在类型层面强制执行此机制：只有带有领域分隔符的结构体才能被传入签名/验证函数，从而防止意外误用。分隔符采用随机生成以避免冲突，并在协议生命周期内固定不变，即使字段发生演进。

除领域分隔外，Snowpack还提供规范序列化（采用受限形式的MessagePack），并通过类JSON的中间编码支持前向/后向兼容性，使其同时适用于RPC和密码学场景。其核心思想是将领域分隔从一种临时且易出错的做法，转变为序列化层中系统化、编译器强制实施的功能。

---

## 3. EmDash – 解决插件安全问题的WordPress精神续作

**原文标题**: EmDash – a spiritual successor to WordPress that solves plugin security

**原文链接**: [https://blog.cloudflare.com/emdash-wordpress/](https://blog.cloudflare.com/emdash-wordpress/)

EmDash是一款基于TypeScript的新型开源CMS，旨在成为WordPress的现代继任者。其核心创新在于安全的插件架构：每个插件都在独立的沙箱（动态工作器）中运行，并需明确声明权限，从而从根本上解决了WordPress普遍存在的插件安全漏洞问题。

主要特性包括：优先采用无服务器架构以实现最佳性能与成本控制，内置支持x402支付标准以实现内容变现，以及基于Astro框架的现代化主题系统以支持前端开发。该平台设计为AI原生，提供CLI和MCP服务器等工具，支持程序化与智能体管理模式。

EmDash采用MIT许可协议，可在任何Node.js服务器或Cloudflare平台上运行，致力于在延续WordPress民主化精神的同时，解决其在现代网络环境中面临的关键安全与架构缺陷。

---

## 4. 美国产水泥与混凝土的人工智能应用

**原文标题**: AI for American-produced cement and concrete

**原文链接**: [https://engineering.fb.com/2026/03/30/data-center-engineering/ai-for-american-produced-cement-and-concrete/](https://engineering.fb.com/2026/03/30/data-center-engineering/ai-for-american-produced-cement-and-concrete/)

Meta发布了一款名为“贝叶斯优化混凝土设计”（BOxCrete）的新型开源人工智能模型，旨在帮助美国建筑业利用本土材料设计更可持续的混凝土配方。该模型在美国混凝土学会2026年春季大会期间推出，通过自适应实验快速识别符合强度、成本和可持续性目标的最佳混凝土配方。

此举的核心动机是减少对进口水泥的依赖——目前进口水泥约占美国需求量的23%。通过加速测试采用美国本土材料的混凝土配方，该人工智能可帮助生产商将产能转回国内，支持本土就业，并符合美国环保标准。

Meta已通过合作项目验证了该模型的实际成效。在与制造商Amrize及伊利诺伊大学的合作中，BOxCrete为Meta位于明尼苏达州罗斯蒙特的数据中心开发出一种混凝土配方，使用美国本土材料使强度形成速度提升43%，开裂风险降低近10%。此外，软件公司Quadrel已将Meta的人工智能框架集成至其预拌混凝土行业平台，将其嵌入日常质量控制流程。

该人工智能模型及罗斯蒙特项目的基础数据集已在GitHub上以MIT许可证开源，鼓励商业与学术领域广泛使用。Meta致力于推动全行业向人工智能辅助的混凝土配方设计转型，以增强供应链韧性、降低碳排放，并提升美国混凝土生产商的竞争力。

---

## 5. TurboQuant KV压缩与SSD专家流技术，适用于M5 Pro和IOS。

**原文标题**: TurboQuant KV Compression and SSD Expert Streaming for M5 Pro and IOS

**原文链接**: [https://github.com/SharpAI/SwiftLM](https://github.com/SharpAI/SwiftLM)

SwiftLM是一款专为Apple Silicon设计的原生Swift推理服务器，通过OpenAI兼容API提供MLX模型服务。它通过消除Python开销并利用Metal实现底层GPU加速，以性能为核心优势。

其关键创新在于**TurboQuant KV缓存压缩**与**SSD专家流式加载**技术。TurboQuant采用混合算法将键值缓存压缩至约每坐标3.6比特，相比FP16格式在精度损失极小的前提下实现约3.5倍内存节省。SSD专家流式加载技术使1220亿参数的Qwen3.5等巨型混合专家模型能在统一内存有限的设备上运行，通过将专家层直接从NVMe固态硬盘交换至GPU实现高效推理。

该项目配套提供**iOS应用**（SwiftLM Chat）支持设备端推理与模型管理。macOS服务器提供预编译二进制版本及源码编译选项，并严格建议使用版本匹配的Metal库以避免崩溃。

在配备64GB内存的MacBook Pro M5 Pro等硬件测试中，SwiftLM展现了在苹果生态系统中高效运行大语言模型的解决方案价值。

---

## 6. Windows 95 针对安装程序用旧文件覆盖新文件的防御机制

**原文标题**: Windows 95 defenses against installers that overwrite a file with an older one

**原文链接**: [https://devblogs.microsoft.com/oldnewthing/20260324-00/?p=112159](https://devblogs.microsoft.com/oldnewthing/20260324-00/?p=112159)

在16位Windows时代，安装程序常常会覆盖系统文件，即便是旧版本也可能导致系统崩溃。为防止这种情况，Windows 95引入了一个隐藏的备份目录（`C:\Windows\SYSBCKUP`）。系统不再实时阻止安装程序（这常导致安装失败或强制重启），而是允许安装完成，随后自动比对关键文件的版本号。若安装程序降级了某个文件，Windows会从备份中恢复较新的版本；若安装程序提供了真正更新的版本，则该文件会被存入备份以供未来保护。

这种反应式的“清理”机制被证明比主动拦截更有效，既避免了安装程序报错，也减少了用户的困惑。此外，部分组件开始提供专属安装程序，以防止不受信任的第三方软件直接篡改关键系统文件。

---

## 7. 展示 HN：Git bayesect – 针对非确定性错误的贝叶斯式 Git 二分查找

**原文标题**: Show HN: Git bayesect – Bayesian Git bisection for non-deterministic bugs

**原文链接**: [https://github.com/hauntsaninja/git_bayesect](https://github.com/hauntsaninja/git_bayesect)

**摘要**

`git bayesect` 是一个命令行工具，它扩展了传统的 `git bisect`，用于定位那些引入了事件*概率*变化的提交，例如测试变得更容易或更少地出现不稳定的情况。该工具专为处理非确定性缺陷而设计，在这些情况下，简单的通过/失败结果不足以定位问题。

该工具采用**贝叶斯推断**来建模每个提交前后失败的可能性。它通过最小化预期熵来智能选择下一个要测试的提交，从而高效地缩小搜索范围，无需用户事先了解确切的失败率。

主要功能包括：
*   在已知的“旧”（良好）和“新”（不良）提交之间**开始二分查找**。
*   在特定提交上**记录观察结果**（`通过`/`失败`），以更新概率模型。
*   根据提交信息、更改的文件或其他启发式方法为提交**设置自定义先验概率**，以加快搜索速度。
*   通过 `git bayesect run $CMD` 进行**自动化运行**，该命令执行用户提供的命令来自动收集观察结果。

该工具可通过 `pip` 或 `uv` 安装，并包含一个演示仓库，用于说明如何使用它来查找更改了不稳定脚本失败率的提交。

---

## 8. StepFun 3.5 Flash是OpenClaw任务（300场对战）中性价比最高的模型。

**原文标题**: StepFun 3.5 Flash is #1 cost-effective model for OpenClaw tasks (300 battles)

**原文链接**: [https://app.uniclaw.ai/arena?tab=costEffectiveness&via=hn](https://app.uniclaw.ai/arena?tab=costEffectiveness&via=hn)

**摘要：**

本文宣布，基于300场对战评估，StepFun 3.5 Flash AI模型在OpenClaw平台任务中被评为最具性价比的模型。

核心发现是，尽管其他更昂贵的模型可能在原始性能上表现更优，但StepFun 3.5 Flash在能力与成本之间实现了最佳平衡，使其成为优先考虑效率的用户的首选。

该排名源自OpenClaw的竞技场，该平台旨在真实条件下测试AI模型。它通过真实的AI代理让不同模型在实际任务中相互竞争，旨在提供真实且实用的性能结果，而非仅仅是理论基准。

本质上，文章将OpenClaw定位为基于实际应用比较AI模型的关键基准环境，并强调StepFun 3.5 Flash是该生态系统中当前性价比的领先者。

---

## 9. Show HN: Zerobox – 用文件、网络、凭据控制沙盒化任何命令

**原文标题**: Show HN: Zerobox – Sandbox any command with file, network, credential controls

**原文链接**: [https://github.com/afshinm/zerobox](https://github.com/afshinm/zerobox)

Zerobox 是一款轻量级、跨平台的进程沙盒工具，允许用户安全地运行任何命令，并对文件、网络和凭证访问进行细粒度控制。它遵循“默认拒绝”原则，除非明确允许，否则会阻止写入、网络调用和大多数环境变量。

主要功能包括：
*   **凭证注入：** 安全传递 API 密钥和机密信息，沙盒进程仅看到占位符。真实值仅在已批准的出站网络请求时注入。
*   **访问控制：** 精确允许或拒绝对特定路径的文件读/写，以及对特定域的出站网络流量。
*   **纯净环境：** 默认情况下，仅继承必要的环境变量（如 `PATH`、`HOME`），防止意外泄露机密。
*   **跨平台与高性能：** 在 macOS 和 Linux 上运行（Windows 计划中），为单一二进制文件，开销极低（约 10 毫秒，约 7MB 内存）。
*   **多接口支持：** 包含用于 Shell 的 CLI 和用于编程集成的、具有 Deno 风格 API 的 TypeScript SDK。

适用场景包括安全执行 AI 生成的代码、限制单个 LLM 工具调用，以及在构建或测试期间保护仓库免受意外数据泄露或外部调用影响。

---

## 10. 欧洲核子研究中心升级配备新型超导卡丁车

**原文标题**: CERN levels up with new superconducting karts

**原文链接**: [https://home.cern/news/news/engineering/cern-levels-new-superconducting-karts](https://home.cern/news/news/engineering/cern-levels-new-superconducting-karts)

欧洲核子研究中心的工程师们开发了原型超导卡丁车，旨在为2026年夏季开始的第三次长期停机升级期间，在27公里长的大型强子对撞机隧道内实现更快速的通勤。这些卡丁车将取代目前使用的自行车，由64台超导发动机驱动。冷却后，发动机利用迈斯纳效应使车辆悬浮，从而在升级高亮度大型强子对撞机时实现前往工作现场的高速通行。

初步测试结果令人鼓舞，并计划开展进一步的地下试验。安全规程包括为驾驶员配备专用设备。该项目源于欧洲核子研究中心工程师与现场幼儿园的合作，儿童设计的卡丁车图纸提供了灵感来源。

除了在欧洲核子研究中心的直接应用，该技术还具有潜在的社会衍生价值。欧洲核子研究中心知识转移小组已与一家初创公司展开讨论，共同探索其在航空航天及下一代反重力交通工具领域的应用前景。文章同时强调了该机构对培养下一代好奇心的承诺。

---

## 11. 书写系统与Unicode简介

**原文标题**: An Introduction to Writing Systems and Unicode

**原文链接**: [https://r12a.github.io/scripts/tutorial/part2](https://r12a.github.io/scripts/tutorial/part2)

本文介绍了书写系统，重点聚焦于中日韩（CJK）文字，并解释了字符集与Unicode的基本原理。

**中日韩书写系统：**
*   **中文：** 使用汉字，包括繁体（用于台湾、香港）和简体（用于中国大陆）两种变体。汉字表意而非表音。
*   **日文：** 混合使用三种文字：汉字（借用的中文字符，用于词根）、平假名（用于本土词汇/语法）和片假名（用于外来词）。
*   **韩文：** 主要使用韩文（Hangul），这是一种独特的字母音节文字。它也可以与汉字（Hanja）结合使用，不过如今已不常见。

**字符集与Unicode：**
文章解释了从有限的、特定于文字的字符集（如ASCII和双字节亚洲字符集）到**Unicode**的演变。Unicode是一个通用标准，它为所有主要书写系统中的每个字符分配一个唯一的码点，统一于一个集合中。它采用多平面结构，其中基本多文种平面（BMP）包含了大多数常用字符，而补充平面则用于其他字符（如表情符号或额外的汉字）。

**编码方式：**
抽象的Unicode码点通过不同的编码方式存储：
*   **UTF-8：** 变长编码（1-4字节），对基于拉丁字母的文本效率高。
*   **UTF-16：** 对BMP字符使用2字节，对其他字符使用4字节。
*   **UTF-32：** 固定每个字符4字节。

文章推荐在网页内容中使用UTF-8编码，因为它能无缝表示混合文字。

---

## 12. 苹果五十周年

**原文标题**: Apple at 50

**原文链接**: [https://www.apple.com/](https://www.apple.com/)

**摘要**

苹果公司正迎来其50周年庆典。尽管这一里程碑促使人们回顾公司历史，但文章强调，苹果的核心特质始终面向未来。中心主题是，五十年来，苹果一直以其“非同凡想”的理念为定义。

文章指出，公司持久的使命是创造创新工具，提供有意义的体验，以改善和丰富用户的生活。在庆祝这一重要周年之际，苹果肯定过去的成就，但将庆祝活动视为对前路的激励。最后特别强调了协作精神，期待未来与客户及社区“携手”共创的创新与进步。

---

## 13. Show HN：Claude代码智能体团队的实时仪表盘

**原文标题**: Show HN: Real-time dashboard for Claude Code agent teams

**原文链接**: [https://github.com/simple10/agents-observe](https://github.com/simple10/agents-observe)

**Agents Observe** 是一款面向 Claude Code 多智能体会话的实时可观测性仪表板，旨在揭示原本不透明的智能体活动。它通过 Claude Code 钩子捕获每个事件（如工具调用、文件编辑、子智能体生成），并实时流式传输至动态仪表板。

**核心功能：**
- **实时监控：** 即时查看工具调用与智能体操作。
- **智能体层级：** 可视化智能体间的父子关系。
- **强大筛选：** 按智能体、工具类型或内容搜索过滤事件。
- **历史会话：** 通过可读名称浏览过往会话记录。
- **调试时间线：** 追踪事件以调试复杂多智能体工作流中的问题。

**安装方式：**  
通过 Claude Code 插件市场安装。服务器运行于 Docker 中，安装后钩子将自动捕获事件。开发环境也提供独立部署方案。

**架构说明：**  
钩子将原始事件发送至 Node.js 服务器，数据存储于 SQLite 数据库并通过 WebSocket 实时推送至 React 仪表板。仪表板直接从事件流中推导智能体状态（状态、事件计数）。

**应用场景：**  
- 监控并行智能体执行（如代码审查、测试、文档生成）。
- 调试嵌套智能体交互中的错误。
- 分析跨会话的工具使用模式。

**故障排除：**  
常见问题包括 Docker 未运行、端口冲突或钩子配置错误，可通过内置命令如 `/observe status` 或 `just health` 解决。

**发展路线：**  
未来计划支持 Codex、OpenClaw 及 pi-code 等智能体。

Agents Observe 回应了自主智能体系统对透明度的关键需求，将不透明的流程转化为可操作、可观测的工作流。

---

## 14. OpenAI墓地：那些未实现的交易与产品

**原文标题**: The OpenAI Graveyard: All the Deals and Products That Haven't Happened

**原文链接**: [https://www.forbes.com/sites/phoebeliu/2026/03/31/openai-graveyard-deals-and-products-havent-happened-openai/](https://www.forbes.com/sites/phoebeliu/2026/03/31/openai-graveyard-deals-and-products-havent-happened-openai/)

无法访问文章链接。

---

## 15. AI营销炒作指数

**原文标题**: The AI Marketing BS Index

**原文链接**: [https://bastian.rieck.me/blog/2026/bs/](https://bastian.rieck.me/blog/2026/bs/)

本文介绍了一个讽刺性的“AI营销废话指数”，模仿约翰·贝兹的“民科指数”，旨在批判AI产品营销中普遍存在的空洞术语和过度炒作。作者指出，虽然部分公司提供真实产品，但许多企业滥用技术术语来营造虚假的复杂感。

该指数以-5分为基准，随后根据具体营销违规行为加分。违规行为包括：无证据编造概念（10分）；误用数学或科学术语（每项10分）；使用欺骗性模糊话术（20分）；以伪深刻陈述结尾（20分）；宣称产品模仿“自然”或“宇宙”（20分）；错误引用“涌现特性”（20分）；攀附名校机构（每项20分）；未提出可证伪主张（30分）；列出无法核实的研究合作（每项40分）。

其核心目的是提供一个幽默而尖锐的框架，用以识别并揭露那些充满流行词却缺乏实质内容的营销材料，以期推动科技行业进行更诚实、清晰的沟通。

---

## 16. 美国宇航局阿尔忒弥斯二号月球任务现场发射直播

**原文标题**: NASA Artemis II moon mission live launch broadcast

**原文链接**: [https://plus.nasa.gov/scheduled-video/nasas-artemis-ii-crew-launches-to-the-moon-official-broadcast/](https://plus.nasa.gov/scheduled-video/nasas-artemis-ii-crew-launches-to-the-moon-official-broadcast/)

**摘要**

美国宇航局将于今天下午1点发射其首次载人阿尔忒弥斯任务——阿尔忒弥斯二号。直播将在美国宇航局官网及各社交媒体平台同步进行。

此次任务将派遣四名宇航员——美国宇航局的里德·怀斯曼、维克多·格洛弗和克里斯蒂娜·科赫，以及加拿大航天局的杰里米·汉森——进行为期约10天的绕月飞行并返回地球。飞船将从佛罗里达州肯尼迪航天中心发射，本次飞行是对猎户座飞船载人生命支持系统的关键测试。收集的数据将为未来旨在让人类重返月球表面并建立可持续驻留的阿尔忒弥斯任务奠定重要基础。

---

## 17. BGP现在安全了吗？

**原文标题**: Is BGP safe yet?

**原文链接**: [https://isbgpsafeyet.com/](https://isbgpsafeyet.com/)

根据Cloudflare的文章《BGP安全了吗？》的核心答案是**不**，BGP本质上仍不安全。边界网关协议负责在互联网上路由流量，但缺乏内置安全机制，容易遭受劫持和重大中断。

然而，解决方案是存在的：**RPKI（资源公钥基础设施）**。这一认证系统允许网络运营商对其IP地址块进行加密签名，使其他方能够验证BGP路由声明的合法性。

文章重点追踪了RPKI的采用情况。它提供了主要供应商实施RPKI“路由起源验证”（过滤无效路由）的时间线，并维护了网络及其状态的详细列表（例如“已签名+过滤”、“部分安全”）。

关键要点：
*   **问题：** BGP本质上不安全。
*   **解决方案：** 广泛部署RPKI验证。
*   **进展：** 势头强劲，许多全球主要骨干网提供商（如Lumen、Cogent、NTT）、大型ISP（如Comcast、Verizon、Deutsche Telekom）以及云巨头（如微软、亚马逊）现已对其路由进行签名并过滤无效路由。
*   **现状：** 尽管采用率快速增长，但工作尚未完成。在RPKI验证得到普遍部署之前，BGP仍然脆弱。

---

## 18. 随机数字，波斯代码：神秘信号令无线电侦探们着迷

**原文标题**: Random numbers, Persian code: A mysterious signal transfixes radio sleuths

**原文链接**: [https://www.rferl.org/a/mystery-numbers-station-persian-signal-iran-war/33700659.html](https://www.rferl.org/a/mystery-numbers-station-persian-signal-iran-war/33700659.html)

一段神秘的波斯语短波无线电信号，正吸引着业余无线电爱好者和情报专家的关注。这段被识别为“数字电台”的广播始于2026年2月28日，恰逢美国和以色列对伊朗实施空袭后不久。信号中，一个男声朗读着随机数字，随后说出“注意”一词。

数字电台是冷战时期的间谍工具，用于向持有一次性密码本的潜伏人员发送无法破解的加密信息。这段代号V32的信号经三角定位，推测源自西欧某地。

3月4日，谜团进一步加深：一个强大的“气泡干扰器”——与针对西方波斯语广播（如Radio Farda）的干扰设备相同——开始扰乱原频率。这种对抗性干扰表明该广播具有重要行动意义。电台随后短暂停播，并切换至新频率以规避干扰。

关于广播方与干扰方的身份，专家意见不一。有观点认为美国或其盟友可能在向伊朗境内的情报人员发送加密指令，也有人推测伊朗自身可能是信号源，或将其视为心理战行动。该电台在冲突爆发时突然出现，加之遭遇精密干扰，均指向国家层面的介入，凸显了传统间谍手段在现代地缘政治紧张局势中的持续运用。

---

## 19. Ada与Spark在ARM Cortex-M上的应用教程——基于Arduino和Nucleo的实例解析

**原文标题**: Ada and Spark on ARM Cortex-M – A Tutorial with Arduino and Nucleo Examples

**原文链接**: [http://inspirel.com/articles/Ada_On_Cortex.html](http://inspirel.com/articles/Ada_On_Cortex.html)

本教程是针对有兴趣在ARM Cortex-M微控制器上使用Ada和SPARK编程语言的嵌入式系统开发人员的实用指南。它通过使用Arduino和STM32 Nucleo等流行开发板提供动手示例。

核心目标是展示如何将Ada的可靠性特性与SPARK的形式化验证能力应用于资源受限的嵌入式环境。教程按渐进式主题结构编排，从设置文档和工具、编写第一个程序，到管理链接与启动流程。

随后通过Ada涵盖嵌入式基础概念，包括数字输入/输出、实现延时、生成随机数以及设计有限状态机。内容逐步深入至更复杂的主题，如直接插入机器代码、处理中断、管理共享状态和使用系统定时器。

关键实践章节引导读者通过串行通信输出“Hello World!”，并讲解混合使用Ada与C/C++代码的技术。重点强调利用SPARK预防和检测运行时错误，以提升系统安全性与正确性。教程最后总结了嵌入式Ada开发中的各类细节问题。

本资源提供可下载的代码示例，并附赠关于简单调度器的补充材料，既可作为入门指导，也可作为在常见微控制器平台上应用高完整性编程范式的参考手册。

---

## 20. Wasmer（YC S19）正在招聘——Rust与开发者关系职位

**原文标题**: Wasmer (YC S19) Is Hiring – Rust and DevRel Positions

**原文链接**: [https://www.workatastartup.com/companies/wasmer](https://www.workatastartup.com/companies/wasmer)

Wasmer（YC S19）是一家专注于构建WebAssembly（WASM）应用程序运行工具的公司，目前正在招聘两个关键职位。

第一个职位是加入核心团队的**高级Rust工程师**。该职位将负责Wasmer运行时及相关工具的开发，要求具备深厚的Rust语言和系统编程专业知识，并最好拥有WebAssembly、编译器或虚拟化相关经验。

第二个职位是**开发者关系工程师**，旨在拓展Wasmer社区。该职位需要创建技术内容、与开发者互动、改进文档并收集用户反馈。出色的沟通能力和技术背景至关重要，优先考虑具有WebAssembly或系统编程经验者。

该招聘帖强调了Wasmer致力于让WebAssembly成为通用运行时的使命，并提及了其开源产品，如Wasmer运行时和WAPM包管理器。文中还突出了远程友好文化、有竞争力的薪酬以及参与基础开源技术工作的机会。

**总结：** Wasmer正在招聘一位负责核心运行时开发的高级Rust工程师，以及一位致力于社区建设的开发者关系工程师，两个职位均以推动其WebAssembly生态系统发展为重心。

---

## 21. 乌克兰无人机坚守阵地六周

**原文标题**: Ukrainian Drone Holds Position for 6 Weeks

**原文链接**: [https://defenceleaders.com/news/ukrainian-combat-robot-holds-frontline-position-for-six-weeks-in-sign-of-growing-ugv-maturity/](https://defenceleaders.com/news/ukrainian-combat-robot-holds-frontline-position-for-six-weeks-in-sign-of-growing-ugv-maturity/)

**摘要：**

文章报道了英国为应对伊朗袭击大幅升级，向海湾地区进行的一次重大且持续的军事部署。英国采取的关键行动包括：

1.  **部署防空系统：** 英国已紧急将其先进的**"天剑"**导弹防御系统派遣至三个未具名的海湾国家，以协助其防御空中威胁。
2.  **延长战斗机部署：** 英国皇家空军在该地区部署的**"台风"**战斗机将延长驻期，以继续提供空中巡逻和拦截能力。

此次军事增援是对伊朗一系列袭击行动的直接回应。文章指出，伊朗针对该地区的导弹和无人机袭击现已超过**3500次**。整体背景是地区紧张局势加剧，以及西方为加强盟国海湾国家的防御、抵御伊朗持续的空中袭击而进行的持续努力。

---

## 22. Claude编写了完整的FreeBSD远程内核RCE漏洞利用程序，可获取Root Shell权限（CVE-2026-4747）

**原文标题**: Claude Wrote a Full FreeBSD Remote Kernel RCE with Root Shell (CVE-2026-4747)

**原文链接**: [https://github.com/califio/publications/blob/main/MADBugs/CVE-2026-4747/write-up.md](https://github.com/califio/publications/blob/main/MADBugs/CVE-2026-4747/write-up.md)

本文详细介绍了FreeBSD `kgssapi.ko`模块中一个关键的远程内核缓冲区溢出漏洞（CVE-2026-4747）。该漏洞存在于`svc_rpc_gss_validate()`函数中，该函数在无边界检查的情况下将RPC凭据体复制到128字节的栈缓冲区中。超长的凭据（>96字节）会导致缓冲区溢出，破坏栈上保存的寄存器和返回地址。

当`kgssapi.ko`模块加载且使用RPCSEC_GSS（Kerberos）认证时，该漏洞可通过NFS服务器（端口2049/TCP）远程利用。攻击者需要持有NFS服务主体的有效Kerberos票据才能进入漏洞代码路径。

利用过程采用多轮攻击以绕过400字节的凭据限制。每轮攻击会建立一个Kerberos上下文，发送恶意数据包触发溢出，并执行ROP链以将部分shellcode写入内核内存。每轮攻击会终止一个NFS工作线程，因此至少需要2个CPU（16个线程）来完成部署完整432字节shellcode所需的15轮攻击，最终获得root shell。

文章还包含了搭建易受攻击的FreeBSD 14.4虚拟机（配置NFS和Kerberos KDC）及攻击主机的详细步骤，说明了成功利用所需的Kerberos配置和网络设置。

---

## 23. 直觉理解普拉特解析法

**原文标题**: Intuiting Pratt Parsing

**原文链接**: [https://louis.co.nz/2026/03/26/pratt-parsing.html](https://louis.co.nz/2026/03/26/pratt-parsing.html)

本文阐述了普拉特解析法，这是一种将数学表达式解析为抽象语法树（AST）的方法，其核心基于树形结构的几何直观。核心思想是：严格递增优先级的运算符序列生成右倾树，而非递增（递减或相等）优先级的序列则生成左倾树。

解析的挑战出现在优先级改变方向时，特别是从递增转为递减。解决方案是一种“回退”过程：当遇到优先级更低或相等的新运算符时，解析器会沿着当前右倾子树的“主干”向上回退，收集所有更高优先级的运算符，使该子树成为新运算符的左子节点，从而开启一个新的左倾部分。

普拉特解析器的伪代码使用带`while`循环的递归函数。循环条件通过比较下一个运算符的左结合力（LBP）与阈值来决定：若更高，则消耗该运算符，并以其右结合力（RBP）递归解析右侧表达式。`while`循环实现了回退过程，为相等或更低优先级的运算符构建左倾树。右结合性（例如赋值运算符`=`）通过设置运算符的RBP低于其LBP来处理，确保递归调用能消耗连续的运算符。

总之，普拉特解析法通过基于结合力的简单比较，动态切换构建右倾与左倾子树，优雅地处理了混合优先级的解析问题。

---

## 24. 《格陵兰鲨鱼》（2020）

**原文标题**: Consider the Greenland Shark (2020)

**原文链接**: [https://www.lrb.co.uk/the-paper/v42/n09/katherine-rundell/consider-the-greenland-shark](https://www.lrb.co.uk/the-paper/v42/n09/katherine-rundell/consider-the-greenland-shark)

本文探讨了非凡的格陵兰鲨——地球上最长寿的脊椎动物。科学家估计有些个体可能已超过500岁，历经了数百年的人类历史。尽管寿命极长，它们却并不符合传统审美：行动迟缓，因寄生眼虫而近乎失明，且除非经过发酵，其肉含有毒性。

这些鲨鱼栖息在寒冷深海，可能遍布全球，既是捕食者也是食腐动物。它们的生理机制极为特殊，新陈代谢极其缓慢，仅需极少食物。其生命周期至今仍是谜团，无人目睹过它们交配或生产。种群状况尚不明确，但由于历史上的过度捕捞，以及雌性需约150年才能达到繁殖年龄，它们已处于濒危状态。

作者最终从这种鲨鱼的持久存在中看到了希望。这些见证过无数人类危机的古老生物，代表着某种永恒与延续，在地球变迁中存续的时间，将远远超越我们人类的生命尺度。

---

## 25. Apple平台上的随机性（2024）

**原文标题**: Randomness on Apple Platforms (2024)

**原文链接**: [https://blog.xoria.org/randomness-on-apple-platforms/](https://blog.xoria.org/randomness-on-apple-platforms/)

本文探讨了在苹果平台（iOS、macOS等）上获取随机数的最佳方法，通过追溯各类系统API的底层硬件来源对其进行评估。

作者首先指出传统的C标准库函数（`rand`、`random`、`rand48`）已过时且质量低下，其手册页明确建议改用`arc4random`。调查发现`arc4random`（及其变体如`arc4random_buf`）通过`ccrng_generate`等函数在内部调用苹果私有库`corecrypto`。

文章继而分析了`/dev/random`与`/dev/urandom`，指出二者在苹果系统中完全相同且均基于Fortuna算法实现。系统调用`getentropy`则被提出作为比这些设备文件更稳健的替代方案。

文中还剖析了两个高层级API：`SecRandomCopyBytes`（来自Security.framework）与`CCRandomGenerateBytes`（来自Common Crypto）。作者发现二者最终都与`arc4random`调用相同的`corecrypto`函数。`SecRandomCopyBytes`是`CCRandomGenerateBytes`的简单封装，而后者仅是私有`corecrypto`随机数生成器的公开接口。

结论是对于大多数开发者而言，`arc4random`（特别是`arc4random_buf`）是最佳选择。它获得官方支持、无需额外链接、提供高质量的加密随机数且能自动初始化种子。`CCRandomGenerateBytes`虽功能等效但无实际优势。`getentropy`更接近底层且存在大小限制，通用场景下不够便捷。传统的C函数及直接文件系统访问（`/dev/random`）则不予推荐。

---

## 26. Show HN：通过逆向工程REWE API订购杂货的CLI工具（Haskell实现）

**原文标题**: Show HN: CLI to order groceries via reverse-engineered REWE API (Haskell)

**原文链接**: [https://github.com/yannick-cw/korb](https://github.com/yannick-cw/korb)

本文介绍了**korb**，这是一款用Haskell编写的命令行界面（CLI）工具，允许用户通过编程方式从德国连锁超市REWE订购商品并选择自提服务。该工具通过逆向工程的REWE API实现交互。

该工具主要设计用于AI代理自动化购物。典型工作流程包括：代理使用基于订单历史生成的常用商品默认模板，检查共享购物清单中的新增项目，通过产品搜索调整购物篮，并在用户确认后最终下单。

核心功能包括用户身份验证、门店选择、产品搜索（按名称、EAN或收藏夹）、购物篮管理、时段选择以及下单/取消订单。所有命令输出均为JSON格式，便于自动化系统解析。

一个值得注意的技术特点是使用Lean 4对推荐引擎进行了**形式化验证**，其数学特性已得到证明，并通过与Haskell实现的差分随机测试进行验证。

该项目为非官方项目，与REWE无关，且依赖可能变更的API。可通过预构建二进制文件或源码安装，需从REWE移动应用中提取mTLS证书。

---

## 27. 每日一点，杂乱不见。

**原文标题**: A dot a day keeps the clutter away

**原文链接**: [https://scottlawsonbc.com/post/dot-system](https://scottlawsonbc.com/post/dot-system)

本文介绍了一种简单、低成本的库存系统，通过使用彩色圆点贴纸来追踪个人实验室中电子元件和工具的使用情况。该系统的核心规则是：在特定日期每次打开透明储物盒时，就在其标签上添加一个彩色圆点，且每年使用不同颜色。

创建该系统是为了解决零件收藏日益增多的问题，帮助作者识别哪些物品真正有用、哪些无用。四年后，圆点形成的可视化“仪表板”显示出清晰的规律：常用物品多为通用型、跨领域的元件，如连接器、电池、胶水和基础工具，而专用传感器和一些高级测试设备则很少使用。

这种数据驱动的洞察有助于更好地组织物品，根据使用频率将其分为“热”、“温”、“冷”存储类别。它也为清理未使用的物品提供了依据，从而使收藏保持可持续的稳定状态。关键的实用建议包括：使用统一的透明盒子、为所有物品标注日期、用厚透明袋进行细分收纳，以及将贴纸放在随手可及的地方以确保习惯的养成。该系统的优势在于其简洁性，无需复杂软件或大量精力即可提供长期、可操作的数据。

---

## 28. Claude代码解析：可视化指南

**原文标题**: Claude Code Unpacked : A visual guide

**原文链接**: [https://ccunpacked.dev/](https://ccunpacked.dev/)

本文《Claude Code 架构解析》是一份关于AI编程助手Claude Code内部架构的可视化指南。它完整描绘了从用户输入到AI响应的全过程——即包含11个步骤的“智能体循环”，涵盖输入处理、系统提示、API调用、工具使用及最终渲染等环节。

指南深入剖析了代码库结构，重点标注了`tools/`、`commands/`、`components/`等核心目录。系统梳理了超过50项内置工具（包括文件操作、代码执行、网络搜索等）以及数十条斜杠命令，涵盖环境配置、日常工作和调试流程。

最后，指南揭示了源代码中若干“隐藏”或未发布功能：虚拟终端宠物伙伴“Buddy”、持久化记忆模式“Kairos”、高级多智能体协作“协调者模式”，以及远程控制功能“桥梁”。本文堪称对该系统技术能力与未来潜力的深度探索。

---

## 29. SQL中的国际象棋

**原文标题**: Chess in SQL

**原文链接**: [https://www.dbpro.app/blog/chess-in-pure-sql](https://www.dbpro.app/blog/chess-in-pure-sql)

本文展示了如何运用SQL创建并操作可视化棋盘，从简单的数据存储进阶到动态对弈。其核心思路是将棋盘表示为包含`行`与`列`字段的数据表，以此存储每个棋子的位置。

关键技术在于通过`GROUP BY`子句中的条件聚合函数（`MAX(CASE...)`）实现数据透视查询。这种操作将数据行转换为8×8的网格视图，空白格位则用占位符标识。

棋步移动通过标准的`DELETE`和`INSERT`语句更新棋子位置来实现。文章通过解析经典开局走法，并完整复现1858年保罗·摩菲著名的“歌剧博弈”对局来演示这一过程，展现了将军与将死的SQL实现。

文章最终论证了SQL的表达能力远超常规认知——通过基础查询与数据操作，它能实现棋盘、日历、热力图等复杂网格可视化，展现出强大的可塑性。

---

## 30. 展示 HN：1-Bit Bonsai，首个具备商业可行性的 1-Bit 大型语言模型

**原文标题**: Show HN: 1-Bit Bonsai, the First Commercially Viable 1-Bit LLMs

**原文链接**: [https://prismml.com/](https://prismml.com/)

PrismML宣布推出其"1-bit Bonsai"系列大语言模型，宣称这是首个采用1比特权重的商业化可行模型。该技术大幅降低了内存需求，使80亿参数模型（Bonsai 8B）仅需1.15GB内存，较标准16比特模型减少14倍。

该公司强调这种效率带来的显著性能提升：与全精度模型相比，新模型速度提升高达8倍，能效提高5倍，据称在标准基准测试中仍能匹配领先的80亿参数模型性能。PrismML将这种进步称为"智能密度"的10倍提升。

该产品线包含三种规格：80亿参数（1.15GB）、40亿参数（0.57GB）和17亿参数（0.24GB），专为机器人、实时AI智能体及智能手机等边缘计算设备设计。最小模型据称可在iPhone上实现每秒130个令牌的处理速度。

基于加州理工学院的研究成果，PrismML的使命是提升AI效率，优先追求"每比特智能"而非单纯扩大模型规模。本次公告同时发布了工程师招聘计划，并将公司定位为可持续设备端AI解决方案的提供者。

---

