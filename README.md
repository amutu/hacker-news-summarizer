# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-04-01.md)

*最后自动更新时间: 2026-04-01 20:36:16*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 2 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 3 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 4 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 5 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 6 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 7 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 8 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 9 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 10 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 11 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 12 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 13 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 14 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 15 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 16 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 17 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 18 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 19 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 20 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 21 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 22 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 23 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 24 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 25 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 26 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 27 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 28 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 29 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 30 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 31 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 32 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 33 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 34 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 35 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 36 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 37 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 38 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 39 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 40 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 41 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 42 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 43 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 44 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 45 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 46 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 47 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 48 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 49 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 50 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 51 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 52 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 53 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 54 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 55 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 56 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 57 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 58 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 59 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 60 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 61 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 62 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 63 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 64 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 65 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 66 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 67 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 68 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 69 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 70 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 71 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 72 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 73 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 74 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 75 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 76 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 77 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 78 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 79 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 80 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 81 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 82 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 83 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 84 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 85 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 86 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 87 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 88 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 89 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 90 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 91 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 92 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 93 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 94 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 95 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 96 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 97 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 98 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 99 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 100 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 101 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 102 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 103 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 104 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 105 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 106 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 107 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 108 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 109 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 110 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 111 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 112 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 113 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 114 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 115 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 116 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 117 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 118 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 119 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 120 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 121 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 122 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 123 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 124 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 125 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 126 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 127 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 128 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 129 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 130 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 131 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 132 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 133 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 134 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 135 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 136 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 137 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 138 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 139 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 140 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 141 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 142 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 143 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 144 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 145 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 146 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 147 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 148 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 149 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 150 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 151 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 152 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 153 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 154 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 155 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 156 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 157 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 158 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 159 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 160 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 161 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 162 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 163 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 164 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 165 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 166 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 167 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 168 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 169 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 170 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 171 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 172 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 173 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 174 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 175 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 176 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 177 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 178 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 179 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 180 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 181 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 182 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 183 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 184 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 185 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 186 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 187 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 188 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 189 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 190 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 191 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 192 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 193 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 194 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 195 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 196 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 197 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 198 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 199 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 200 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 201 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 202 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 203 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 204 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 205 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 206 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 207 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 208 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 209 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 210 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 211 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 212 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 213 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 214 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 215 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 216 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 217 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 218 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 219 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 220 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 221 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 222 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 223 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 224 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 225 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 226 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 227 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 228 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 229 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 230 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 231 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 232 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 233 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 234 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 235 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 236 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 237 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 238 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 239 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 240 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 241 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 242 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 243 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 244 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 245 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 246 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 247 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 248 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 249 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 250 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 251 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 252 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 253 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 254 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 255 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 256 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 257 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 258 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 259 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 260 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 261 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 262 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 263 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 264 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 265 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 266 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 267 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 268 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 269 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 270 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 271 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 272 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 273 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 274 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 275 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 276 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 277 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 278 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 279 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 280 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 281 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 282 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 283 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 284 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 285 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 286 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 287 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 288 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 289 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 290 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 291 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 292 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 293 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 294 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 295 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 296 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 297 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 298 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 299 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 300 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 301 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 302 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 303 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 304 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 305 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 306 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 307 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 308 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 309 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 310 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 311 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 312 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 313 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 314 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 315 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 316 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 317 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 318 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 319 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 320 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 321 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 322 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 323 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 324 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 325 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 326 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 327 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 328 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 329 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 330 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 331 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 332 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 333 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 334 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 335 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 336 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 337 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 338 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 339 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 340 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 341 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 342 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 343 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 344 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 345 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 346 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 347 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 348 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 349 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 350 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 351 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 352 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 353 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 354 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 355 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 356 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 357 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 358 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 359 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 360 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 361 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 362 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 363 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 364 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 365 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 366 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 367 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 368 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 369 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 370 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 371 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 372 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 373 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 374 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 375 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
