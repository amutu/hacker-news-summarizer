# Hacker News 热门文章摘要 (2026-06-16)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 美国撤回海洋传感器对加拿大研究造成"冲击"，厄尔尼诺现象临近

**原文标题**: U.S. pulling ocean sensors a 'shock' for Canadian research as El Niño nears

**原文链接**: [https://www.timescolonist.com/local-news/us-pulling-ocean-sensors-a-shock-for-canadian-research-as-el-nino-nears-12422874](https://www.timescolonist.com/local-news/us-pulling-ocean-sensors-a-shock-for-canadian-research-as-el-nino-nears-12422874)

**摘要：**

美国决定移除北太平洋一组关键海洋传感器网络。加拿大科学家表示，此举将严重干扰重要的气候与天气预报，尤其是在厄尔尼诺现象临近之际。这些传感器隶属于美国国家海洋和大气管理局（NOAA）的热带大气海洋（TAO）观测阵列，用于监测海洋温度及海况，协助预测厄尔尼诺和拉尼娜模式。加拿大研究人员在不列颠哥伦比亚省及北极地区的渔业管理、海岸安全及长期气候模型中高度依赖该数据。此次撤除被形容为“震惊”，因其在最需要精准预测之际，给监测能力留下了显著空白。加拿大缺乏自身等效的浮标船队，且暂无替代美国系统的即时计划，这引发了各方担忧，认为风暴及海洋热浪的预警时间将会缩短，进而影响生态体系与沿海社区。

---

## 2. 本地运行模型现已表现良好

**原文标题**: Running local models is good now

**原文链接**: [https://vickiboykis.com/2026/06/15/running-local-models-is-good-now/](https://vickiboykis.com/2026/06/15/running-local-models-is-good-now/)

本文探讨了作者在编码和开发任务中使用本地AI模型的经历，截至2026年6月，发现其表现惊人地出色。作者使用配备64GB内存的M2 Mac电脑，通过llama.cpp、Ollama和LM Studio等工具，运行Mistral 7B、Gemma 3、GPT-OSS以及Qwen系列变体等模型。

**核心要点：**

- **质量飞跃：** 本地模型性能大幅提升。此前落后于API模型，GPT-OSS首个实现了几乎无需二次核验。采用Gemma 4（如26b-a4b、12b-qat）后，自主编码循环的准确率和速度已达到前沿模型的约75%。

- **应用场景：** 作者使用本地模型重构Python代码、编写单元测试、校对博客文章以及搭建代码仓库。为保障安全，其在Docker容器中运行自主工作流。

- **部署方案：** 文章详细介绍了使用**Pi**（代理框架）配合**LM Studio**（推理服务器）的配置方案。通过Docker隔离会话，并在`models.json`中配置Pi指向本地端点。核心组件包括Docker Compose文件及用于安全启动代理的bash脚本。

- **优势与局限：** 本地模型具有透明性（实时令牌监控、上下文窗口调优）和灵活性（自由切换模型与量化方案）等优势。但仍受硬件限制（推理速度慢、上下文窗口小、64GB内存占用），且偶尔出现提示模板不匹配问题。

- **结论：** 作者认为本地模型尚未达到生产级软件开发要求，但对其快速发展的生态给予高度评价，并鼓励开发者积极尝试。

---

## 3. 苹果即将让"隐藏邮件地址"功能变得毫无用处

**原文标题**: Apple is about to make Hide My Email useless

**原文链接**: [https://arseniyshestakov.com/2026/06/16/apple-is-about-to-make-hide-my-email-useless/](https://arseniyshestakov.com/2026/06/16/apple-is-about-to-make-hide-my-email-useless/)

Apple于2026年6月15日宣布，“通过Apple登录”和iCloud+“隐藏邮件地址”功能生成的别名，今后将统一归属@private.icloud.com子域名，而非此前的@icloud.com域名。这一调整使得第三方服务更容易屏蔽所有这些别名，而不会影响常规iCloud邮件账户。作者认为，此举削弱了隐私保护与可否认性——这原本正是“隐藏邮件地址”的核心价值，如今它反而像那些常被屏蔽的免费临时邮箱。文章呼吁苹果重新考虑这一决定，并建议用户在变更生效前在@icloud.com上生成更多别名，并指出每小时至少可创建30个。

---

## 4. SpaceX将以600亿美元收购Cursor

**原文标题**: SpaceX to buy Cursor for $60B

**原文链接**: [https://www.reuters.com/legal/transactional/spacex-buy-anysphere-60-billion-2026-06-16/](https://www.reuters.com/legal/transactional/spacex-buy-anysphere-60-billion-2026-06-16/)

无法访问该文章链接。

---

## 5. TIL：无需curl，利用Bash的/dev/tcp即可发起HTTP请求

**原文标题**: TIL: You can make HTTP requests without curl using Bash /dev/TCP

**原文链接**: [https://mareksuppa.com/til/bash-dev-tcp-http-without-curl/](https://mareksuppa.com/til/bash-dev-tcp-http-without-curl/)

**摘要：**

本文介绍如何使用 Bash 内置的 `/dev/tcp` 功能发起 HTTP 请求，适用于无法使用 curl 或 wget 的场景（如精简版 Docker 容器）。

Bash 可通过重定向语法 `exec 3<>/dev/tcp/host/port` 打开原始 TCP 套接字，接着用 `printf` 手动构造 HTTP 请求，并用 `cat` 读取响应。例如：

```bash
exec 3<>/dev/tcp/service/8642
printf 'GET /health HTTP/1.1\r\nHost: service\r\nConnection: close\r\n\r\n' >&3
cat <&3
```

`Connection: close` 头部至关重要，缺少它将导致 `cat` 持续等待数据而挂起。此方法仅适用于明文 HTTP（不支持 TLS）。它是 Bash 特有的编译时功能（非 POSIX 标准），通过 `--enable-net-redirections` 选项启用，在 dash 或 zsh 中无法使用。

虽然它无法替代 curl——缺乏解析、重定向、压缩、重试及 TLS 处理能力——但在无法安装额外工具的极简环境中，可作为一种快速调试手段用于连通性检测。

---

## 6. 《卡尔文与霍布斯》与诚实的代价

**原文标题**: Calvin and Hobbes and the price of integrity

**原文链接**: [https://therepublicofletters.substack.com/p/calvin-and-hobbes-and-the-price-of](https://therepublicofletters.substack.com/p/calvin-and-hobbes-and-the-price-of)

《卡尔文与霍布斯》创作者比尔·沃特森将艺术完整性置于商业成功之上，本文即围绕这一主题展开。文章从一则大学轶事切入：沃特森曾在宿舍天花板上临摹米开朗基罗的画作，却在离校前将其粉刷覆盖，以此昭示他对创作过程的专注远胜于最终成品。

多年后，当该漫画于1995年声名鼎盛之际，沃特森以停更《卡尔文与霍布斯》之举震惊业界——他自认在每日截稿压力下已穷尽创作可能。他拒绝包括霍布斯玩偶在内的丰厚周边合约，认为这些商业行为会贬损漫画的魔力并玷污艺术愿景。他坚持让这部作品保持"单兵作战"模式以维护其纯粹性，甚至直言不讳地称其联合报社为"企业寄生虫"。

本文将沃特森的博弈诠释为道德抉择：为捍卫作品主导权，他拒绝了那个时代（如加菲猫商业帝国）标志性的授权暴利。尽管承受着续更压力，他仍执意按照自己的方式终结漫画，这巩固了他作为不妥协艺术家的不朽地位——一个视创作满足感高于名利的人。

---

## 7. 机械腕表（2022）

**原文标题**: Mechanical Watch (2022)

**原文链接**: [https://ciechanow.ski/mechanical-watch/](https://ciechanow.ski/mechanical-watch/)

**《机械手表》摘要（2022）**

本文解析了机械手表机芯的内部运作原理，重点介绍了无需电池即可实现精准计时的七个关键部件。

**动力：** 能量储存于**发条**中——即位于**发条盒**内的螺旋扭力弹簧。上链时收紧发条，释放时带动发条盒旋转，为手表提供动力。摩擦式打滑机制可防止过度上链。

**齿轮：** 发条盒旋转一圈需转化为秒针约2400圈旋转。为避免不切实际的两齿轮结构，**轮系**（包括发条轮、秒轮、三轮和四轮）逐级放大转速。每个大齿轮驱动同轴上的更小**齿轮轴**，齿形采用摆线轮廓以提高传动效率。

**擒纵机构：** **擒纵轮**与**擒纵叉**控制能量释放。擒纵叉交替锁止与释放擒纵轮，使轮齿以受控步进方式"逃脱"。叉臂末端的合成红宝石可减少摩擦与磨损。

**摆轮：** **摆轮**与**游丝**（扭力弹簧）以精准频率振荡，构成手表的计时核心。摆轮上的**宝石滚轴**撞击擒纵叉，解锁擒纵轮并推动摆轮，维持其振荡。调节游丝刚度与摆轮转动惯量即可设定节拍速率。

这些部件协同运作，将储存的发条能量转化为表针稳定、规律的转动。

---

## 8. GPT‑NL：面向荷兰的主权语言模型

**原文标题**: GPT‑NL: a sovereign language model for the Netherlands

**原文链接**: [https://www.tno.nl/en/digital/artificial-intelligence/gpt-nl/](https://www.tno.nl/en/digital/artificial-intelligence/gpt-nl/)

**GPT‑NL 概要：面向荷兰的主权语言模型**

GPT‑NL 是由 TNO、SURF 及荷兰法医研究所（NFI）联合开展的项目，旨在构建独立的荷兰语语言模型及生态系统。该项目由荷兰经济事务与气候政策部提供 1350 万欧元资助，致力于增强数字自主权，并确保人工智能以符合公共价值观的方式负责任地发展。

核心原则包括：
- **主权性**：在荷兰/欧洲境内开发，避免依赖非欧洲供应商。
- **开放透明**：源代码开源；公开数据集洞察及受控许可下的模型权重。
- **可信赖**：从头训练以避免数据来源不明、版权风险或个人信息问题。数据收集排除有害内容、重复数据及机密信息，同时保护知识产权并对个人信息进行匿名化处理。
- **互惠互利**：通过内容委员会建立公平的数据供应链，实现创作者收益共享。
- **高效性**：在模型规模与训练过程中注重能源与水资源效率。
- **公共资助与问责**：公共投资确保透明度及与社会目标的契合。

GPT‑NL 证明了强大的人工智能能够与公共价值观共存，为荷兰创造更公平、更自主的未来。

---

## 9. 但剃牦牛毛也挺有趣的

**原文标题**: But yak shaving is fun

**原文链接**: [https://parksb.github.io/en/article/32.html](https://parksb.github.io/en/article/32.html)

**摘要：**

本文探讨了“无效迂回”（yak shaving）这一概念——即由初始目标引发的一连串无关任务，常常导致人们偏离最初的目的。文章解释了该术语源自《莱恩和史丁比》剧集，并由麻省理工学院学生卡林·维耶里推广开来。

作者讲述了自己因发现现有工具过于受限，而从零开始构建静态网站生成器的经历，并承认这正是一次“无效迂回”。尽管工程师和管理者常因时间和预算风险而警告不要从头开始构建，但文章认为，“无效迂回”可以很有趣且富有教育意义。

一个关键例子是高德纳创建TeX。为了排版一本书，他最终发明了一门编程语言（WEB）、一种范式（文学编程）、一个算法（Knuth-Plass换行算法）、一套字体（Computer Modern）以及一种格式（DVI）——这场持续十年的“无效迂回”最终取得了成功。

文章总结道，大多数“无效迂回”都会失败，但对学习者而言，其效果却异常显著，往往比完成原始任务能获得更多知识。即使未能抵达终点，学习过程本身也让此举物有所值，正如《计算机系统要素》等项目所证明的那样。归根结底，“无效迂回”既有趣又富有价值。

---

## 10. 没人点你的分享按钮

**原文标题**: Nobody clicks your share buttons

**原文链接**: [https://ankursethi.com/links/nobody-clicks-your-share-buttons/](https://ankursethi.com/links/nobody-clicks-your-share-buttons/)

研究表明，网站上的社交分享按钮使用率极低。英国政府一项覆盖680万次页面浏览的研究发现，分享按钮点击率仅为0.21%（每476名访问者中仅有1人点击），且从未有用户主动要求该功能——他们更倾向于复制粘贴链接。Moovweb对6100万次移动端会话的分析显示，仅有0.2%的用户与分享按钮互动，而他们点击广告的可能性是分享按钮的12倍。Luke Wroblewski从1800万次页面浏览中收集的众包数据显示，不同组织和受众的平均互动率仅为0.25%。

人们并非点击分享按钮，而是复制粘贴网址或使用浏览器自带的分享功能。2012年，《大西洋月刊》的Alexis Madrigal指出，分析数据中很大一部分流量显示为“直接访问”——并非来自输入的网址或书签，而是来自粘贴到短信、邮件或Slack聊天中的链接。本文作者也证实了这一模式，其网站的首要流量来源正是“直接/无来源”。关键结论：社交分享按钮几乎无人问津，因为用户自然倾向于手动分享链接。

---

## 11. 10Gb/s以太网：切换至博通SFP+模块

**原文标题**: 10Gb/s Ethernet: switching to a Broadcom SFP+ module

**原文链接**: [https://www.gilesthomas.com/2026/06/10g-ethernet-switching-to-broadcom-sfp-plus](https://www.gilesthomas.com/2026/06/10g-ethernet-switching-to-broadcom-sfp-plus)

作者使用六类网线和10GBASE-T SFP+模块，将家中局域网升级至万兆。但其书房交换机（搭载Marvell芯片的MikroTik S+RJ10模块）温度极高（达93°C），并在温度接近95°C时开始间歇性断连，尤其在炎热天气中更为严重。开空调虽是权宜之计，但终需永久解决方案。

基于Hacker News及论坛建议，作者改用更新款、基于博通芯片的模块（10Gtek ASF-10G-T80-INT），宣称功耗更低。旧模块拆卸颇为棘手，但新模块安装顺利。

检查交换机SFP+诊断信息时，该模块显示为Intel光纤收发器（料号FTLX8571D3BCV-IT），而非铜缆RJ45模块——为兼容性而“谎报”身份。由此，SNMP无法获取温度读数。

虽缺乏直接温度监测，但两项积极结果显现：（1）更换两周内（含暑热期）未出现网络断连；（2）交换机CPU温度在更换后下降约5°C。作者断定此次更换成功，并期待该模块能扛过里斯本的炎夏。

---

## 12. 苹果奇特的防晕眩小点治好了我的晕车

**原文标题**: Apple's weird anti-nausea dots cured my car sickness

**原文链接**: [https://www.theverge.com/tech/942854/apple-vehicle-motion-cues-review-really-work](https://www.theverge.com/tech/942854/apple-vehicle-motion-cues-review-really-work)

苹果于2024年推出的"车辆动态提示"功能，可有效消除在移动车辆中使用设备时的晕车感。该功能通过iPhone、iPad和Mac的辅助功能设置启用，利用屏幕边缘的动画圆点与车辆运动同步（例如右转时圆点向左扫动），使视觉输入与内耳运动信号保持一致，从而防止恶心。

作者托马斯·里克曾在为期两个月的公路旅行中测试该功能，成功实现连续数小时读写而不适感。用户可手动开关该功能或设置为自动激活，并能调整圆点尺寸、颜色和密度。iPhone支持通过背部轻点手势快速切换。作者指出，在直线道路上，圆点会短暂干扰静态内容，但总体而言，这一功能彻底改变了在旅途中工作或阅读的体验。

---

## 13. 克劳德：多模型出现错误升级

**原文标题**: Claude: Elevated errors across many models

**原文链接**: [https://status.claude.com/incidents/xmhsglsz3h3w](https://status.claude.com/incidents/xmhsglsz3h3w)

**Claude状态事件摘要**

2026年6月16日，Claude多个模型出现错误率升高问题，影响范围涵盖claude.ai、Claude API以及Claude Code/Cowork。

该事件分为两个阶段：
- **太平洋时间10:23–11:00**：所有Sonnet和Opus模型均受影响，错误率约为10%。
- **太平洋时间11:00–12:20**：错误持续出现在Opus 4.8（以及后来的Haiku 4.5）上，平均错误率维持在10%。

团队进行了调查，确定了问题根源，实施了修复措施并持续监控结果。该事件已于**世界协调时19:32**正式解决。未披露根本原因。

---

## 14. 我很钦佩法布里斯·贝拉尔。他几乎可以确定是一位更全面的程序员。

**原文标题**: I admire Fabrice Bellard. He is almost certainly a better overall programmer

**原文链接**: [https://twitter.com/ID_AA_Carmack/status/2064095424420487226](https://twitter.com/ID_AA_Carmack/status/2064095424420487226)

**摘要：**

文章着重介绍了知名程序员约翰·卡马克对法布里斯·贝拉的钦佩之情，他认为贝拉是更全面的程序员。贝拉是一位低调生活在巴黎的法国工程师，三十年来编写了大量驱动现代互联网的基础软件。他的代码支撑着每一个YouTube视频、Netflix剧集和TikTok短视频的流媒体播放，同时负责运行虚拟机及其他核心基础设施。尽管贡献卓著，贝拉在公众中仍鲜为人知。文章强调了他低调的天才及其巨大且无形的作品影响力。

---

## 15. 《杀戮尖塔2》中的关联随机性

**原文标题**: Correlated randomness in Slay the Spire 2

**原文链接**: [https://tck.mn/blog/correlated-randomness-sts2/](https://tck.mn/blog/correlated-randomness-sts2/)

**《杀戮尖塔2》中的关联随机性**

《杀戮尖塔2》存在一个漏洞：由于C#的`System.Random`类存在缺陷，游戏中的多个随机数生成器（RNG）产生了关联。尽管每个RNG都使用当前局主种子不同的哈希值进行播种，但算法的线性特性导致固定差值的种子会产生可预测的关联输出。这使得玩家能够通过一个随机事件推断另一个事件的结果。

关键例子：
- **涅奥的遗骨**：在"地下码头"中，你有约54%的概率获得致命的"负债"诅咒；但在"繁茂林地"中，几乎不会出现"负债"，而是约74%的概率获得"扭结"。这使得涅奥的遗骨的负面效果远超预期。
- **大型胶囊**：其稀有度和出现率随章节大幅变化，并与涅奥处看到的诅咒池遗物挂钩。
- **首战药水**：掉落率因章节和你获得的诅咒遗物不同，范围从0%到99%。
- **垃圾堆（仅地下码头）**：无法获得"反弹"卡牌；产出完全取决于所见到的诅咒遗物。
- **第一道闪电充能球的目标**：在多敌人战斗中，故障机器人的首个充能球有75%概率击中左侧敌人，更精确的命中概率与涅奥遗物相关。

这种关联性显著影响了游戏体验，尤其是对能够预测诅咒分布、遗物稀有度和战斗目标等结果的了解内情的玩家。虽然有些效果颇为有趣，但另一些（如偏差的诅咒权重）则使某些遗物的实际强度与设计意图大相径庭。

---

## 16. 使 ast.walk 速度提升 220 倍

**原文标题**: Making ast.walk 220x Faster

**原文链接**: [https://reflex.dev/blog/why-ast-walk-when-you-can-ast-sprint/](https://reflex.dev/blog/why-ast-walk-when-you-can-ast-sprint/)

文章阐述了Reflex团队如何将Python的`ast.walk`函数优化220倍，以加速其针对AI生成代码的自定义代码检查工具。

**问题背景：**初始代码检查工具使用`ast.walk`检测批量生成Python代码中的语法错误。尽管`ast.walk`能以2ms处理约7000个节点（约285纳秒/节点），但在处理大量代码时，由于单次仅能发现一处错误，该函数成为了性能瓶颈。

**优化历程：**
1.  **Python层级优化（累计提升55%）：**移除生成器（`yield`）、内联`iter_child_nodes`与`iter_fields`、直接使用`getattr()`（提升25%）。通过直接读取`_fields`进一步获得增益（累计提升55%）。

2.  **Rust/PyO3实现（累计提升78%）：**使用`cast_unchecked`和通过`__dict__`直接迭代字典，在Rust中重写了遍历器。

3.  **高级Rust优化（累计提升99.5%，约220倍加速）：**
    -   将所有132个AST子类的内存地址存储于哈希集中，用于快速`isinstance`检查
    -   重写字典迭代逻辑以规避CPython的`PyDict_Next`开销
    -   预计算2KB查找表，将类型指针映射至字段数量
    -   仅扫描`_fields`条目，跳过`lineno`等`_attributes`

**成果：**通过消除所有CPython函数调用并利用Rust原生性能与内存级优化，实现了220倍速度提升，处理时间从约285纳秒/节点降至约1.3纳秒/节点。相关代码已作为`fast-walk`托管于GitHub。

---

## 17. x86模拟器团队曾发现代码质量极差，以至于在模拟过程中直接修复了它

**原文标题**: The time the x86 emulator team found code so bad they fixed it during emulation

**原文链接**: [https://devblogs.microsoft.com/oldnewthing/20260615-00/?p=112419](https://devblogs.microsoft.com/oldnewthing/20260615-00/?p=112419)

**摘要：**

一款x86-32模拟器采用二进制翻译技术（类似JIT编译器），在非x86系统上以更高性能运行Windows程序。有同事发现某编译后的程序分配了64KB栈内存并初始化，但编译器未使用紧凑循环，而是"优化"为完全展开的循环，生成65536条单字节写入指令，每条4字节。结果**仅初始化64KB数据，代码却占用256KB**，使简单操作的内存占用量翻倍。模拟器团队对此深恶痛绝，遂在翻译器中添加特殊检测代码，在模拟时将臃肿序列替换为高效紧凑循环。

---

## 18. 形式化方法与编程的未来

**原文标题**: Formal Methods and the Future of Programming

**原文链接**: [https://blog.janestreet.com/formal-methods-at-jane-street-index/](https://blog.janestreet.com/formal-methods-at-jane-street-index/)

**《形式化方法与编程的未来》摘要**

25年来，Jane Street一直认为形式化方法成本过高，不具实用性——以seL4微内核为例，验证8700行代码就耗费了25人年。然而，智能体编程的兴起改变了他们的看法。两大关键因素推动了这一转变：

1. **成本降低**：AI模型如今能自动完成编写证明的大部分繁琐工作，降低了形式化方法的门槛。
2. **收益增加**：智能体生成的代码往往杂乱无章——复杂、充满错误、容易破坏不变量。形式化方法可以缓解验证瓶颈，并为人工审查者和AI智能体提供强大的反馈循环。

Jane Street正在组建一个形式化方法团队。他们认为自己具备独特优势：既能深度掌控自身语言（通过OxCaml实现对OCaml的控制），又拥有一个积极追求高级类型系统特性的开发者社区。他们的目标是让形式化方法像当今精良的类型系统一样无处不在。

他们计划将面向证明的技术（从模块化规约到所有权约束）整合到语言中，同时利用Lean、Dafny和Rocq等外部工具。该公司正在伦敦和纽约招聘相关岗位以推进这一愿景。

---

## 19. SubQ 1.1 小型

**原文标题**: SubQ 1.1 Small

**原文链接**: [https://subq.ai/subq-1-1-small-technical-report](https://subq.ai/subq-1-1-small-technical-report)

**SubQ 1.1小型版发布摘要**

SubQ推出SubQ 1.1 Small，这是其亚二次稀疏注意力（SSA）模型的第二次迭代，专为解决需要对整个代码库、文档或合同进行推理的企业AI问题而设计。该模型消除了二次注意力约束，无需检索变通方案即可直接对大型工件进行推理。

**主要特性：**
- 在"大海捞针"测试中，对高达1200万令牌实现近乎完美的检索，注意力计算量减少约1000倍。
- 在处理100万令牌时，计算量仅为密集注意力的64.5分之一，运行速度比FlashAttention-2快56倍。
- 平衡了长上下文优化与通用推理能力。

**基准测试：**
- **RULER（128K）：** 准确率99.12%。
- **GPQA Diamond：** 85.4%（接近中端前沿模型水平）。
- **LiveCodeBench v6：** pass@4达89.7%（接近绝对前沿水平）。
- **AutomationBench Finance：** 13%（与最强模型持平）。

**训练：** 基于开源前沿模型，将密集注意力替换为SSA，随后通过约1万亿令牌的自然长文档持续预训练，分阶段扩展上下文长度（从26.2万至200万令牌）。经过100余次实验优化长短上下文的平衡。

**应用场景：** 金融分析、法律/合同工作以及软件工程（完整仓库代码推理）。

**后续步骤：** 未来数周首批设计合作伙伴加入，本季度扩大推广，年底前发布通用模型。

---

## 20. 停止使用JWT

**原文标题**: Stop Using JWTs

**原文链接**: [https://gist.github.com/samsch/0d1f3d3b4745d778f78b230cf6061452](https://gist.github.com/samsch/0d1f3d3b4745d778f78b230cf6061452)

**摘要：停止使用 JWT 管理会话**

本文反对使用 JSON Web 令牌（JWT）进行用户会话管理，认为其不安全且不适合此用途。关键要点如下：

1. **JWT 专为短期令牌设计**（约 5 分钟），而非会话所需的更长有效期。
2. **无状态身份验证并不安全**——真正安全的身份验证需要服务器端状态。如果需要数据库，最好直接存储会话数据。
3. **仅用作会话令牌时，JWT 效率低下**，与普通 Cookie 相比毫无优势。
4. **JWT 规范本身存在缺陷**，且不受安全专家信任，因其历史上允许伪造令牌。

**推荐的替代方案：** 使用**常规 Cookie 会话**，此类会话专为用户身份验证而设计，并得到 Web 框架的广泛支持（例如 Node.js 中的 express-session）。

**对反驳意见的回应：**
- Google 仅将 JWT 用于**单点登录（SSO）**传输，而非浏览器会话，并已对其进行了安全定制。
- 没有海量资源，“无状态只是谎言”。
- 通过框架文档即可轻松设置会话。

**需要短期令牌？** 使用 **PASETO** 替代 JWT——其设计以安全为优先。切勿将会话管理交给 JWT。

---

## 21. 千问机器人套件：面向物理世界智能的基础模型套件

**原文标题**: Qwen-Robot Suite: A Foundation Model Suite for Physical World Intelligence

**原文链接**: [https://qwen.ai/blog?id=qwen-robotsuite](https://qwen.ai/blog?id=qwen-robotsuite)

**摘要：**

本文介绍了 **Qwen-Robot Suite**，这是一套旨在通过整合感知、推理与行动能力来推进物理世界智能的基础模型套件。该套件基于 Qwen 大语言模型家族构建，包含三个关键组成部分：

1.  **Qwen-Robot** —— 一个视觉-语言-行动模型，能够处理视觉输入和语言指令，生成机器人控制指令。它在真实世界机器人数据上进行微调，并支持开放词汇的操作任务。

2.  **Qwen-Agent** —— 一个具身智能体框架，将大语言模型与环境交互相结合，支持复杂任务规划、工具使用及多步推理。

3.  **Qwen-Grasp** —— 一个专门的抓取基础模型，无需特定任务训练即可根据视觉线索执行精准的物体抓取。

该套件利用在多样化数据（包括图像、视频和机器人轨迹）上进行的大规模预训练，实现了跨不同机器人、物体和环境的强大泛化能力。它在拾取与放置、工具操作和移动操作等任务中展示了业界领先的性能。作者强调，Qwen-Robot Suite 弥合了语言理解与物理行动之间的鸿沟，旨在成为在现实世界中构建智能机器人的可扩展、多功能基础。

---

## 22. 规格增强现实眼镜

**原文标题**: Specs Augmented Reality Glasses

**原文链接**: [https://newsroom.snap.com/introducing-specs-augmented-reality-glasses](https://newsroom.snap.com/introducing-specs-augmented-reality-glasses)

**Snap发布SPECS增强现实眼镜公告摘要**

2026年6月16日，Snap推出SPECS，一款全新的独立增强现实（AR）眼镜，旨在将AI、工作工具和娱乐融入日常生活，同时不将用户与其周围环境隔离。与笨重的头显或功能有限的AI眼镜不同，SPECS重量轻（132–136克），由瑞士TR90聚合物制成，提供两种尺寸并支持处方镜片。

关键功能包括：专有硅基液晶显示屏，提供51度视场角和1600万色，可呈现24英寸显示器或115英寸影院屏幕效果；电致变色镜片可在10秒内从透明切换为遮光状态。搭载双骁龙处理器，SPECS可实现7毫秒运动到光子延迟、快速手部追踪以及最长4小时混合使用电池续航（搭配充电盒可达20小时）。

隐私保护方面，设备采用本地处理、LED录制指示灯和用户数据控制。SPECS支持数百款开发者构建的Lenses，用于共享体验、生产力和教育。新增工具包括通过Claude Code、Codex和Cursor在Lens Studio中进行智能体开发。

SPECS中的AI能够观察并理解用户环境，提供实时情境协助。预购起价为2,195美元，需支付200美元可退还押金，预计2026年秋季在美国、英国和法国发货。宣传活动中邀请了吉米·巴特勒和凯雅·格伯等远见者，由史蒂文·梅塞尔拍摄。

---

## 23. 专访一位苹果表情符号设计师

**原文标题**: An interview with an Apple emoji designer

**原文链接**: [https://shadycharacters.co.uk/2026/06/ollie-wagner/](https://shadycharacters.co.uk/2026/06/ollie-wagner/)

**总结：**

《笑出眼泪的脸》作者基思·休斯顿采访了苹果首批表情符号设计师之一奥利·瓦格纳。瓦格纳于2008年在苹果人机交互团队实习，与安吉拉·古兹曼、雷蒙德·塞普尔维达共同创作了最初的苹果表情符号集。

这一表情项目源于苹果在日本市场竞争的需求。瓦格纳根据软银提供的电子表格，几乎以1:1的比例映射其设计，同时省略了不雅符号。他将现有iChat“笑脸”的视觉语言扩展为数百种多样符号，在Photoshop中手绘矢量图并手动着色。设计先由软银审核，再由史蒂夫·乔布斯最终批准。早期工作中，统一码联盟并未参与。

瓦格纳在实习结束前设计了超过300个表情符号。团队严肃对待该项目，却未预料其未来的文化影响力。完成整套设计后，瓦格纳在苹果全职参与了初代iPad研发，现为YAP Studios合伙人。

文章揭示了苹果如何将最初为满足市场需求而精心设计的功能，最终打造出全球最知名的表情符号集。

---

## 24. 纽约或将立法禁止“幽灵职位”

**原文标题**: 'Ghost jobs' could soon be illegal in New York

**原文链接**: [https://www.fastcompany.com/91558427/ghost-jobs-could-soon-be-illegal-in-new-york](https://www.fastcompany.com/91558427/ghost-jobs-could-soon-be-illegal-in-new-york)

**摘要：**

纽约正考虑立法将“幽灵职位”——即实际不存在或并未积极招聘的岗位发布——定为非法。拟议法案要求雇主披露所列职位是否目前空缺且有真实招聘意图，旨在打击企业发布虚假职位以营造增长假象、评估劳动力市场或建立候选人数据库却无即时招聘计划的欺骗行为。

支持者认为，这种做法浪费求职者时间、扭曲劳动统计并破坏信任。若法案通过，纽约将成为美国首个明确禁止幽灵职位的州，并对违规行为处以罚款。该法案仍需获得州议会和州长批准。支持者希望借此提升招聘透明度，而批评者则担忧可能对合法的招聘策略造成意外影响。

---

## 25. Perlin噪声场的创意应用

**原文标题**: Getting Creative with Perlin Noise Fields

**原文链接**: [https://sighack.com/post/getting-creative-with-perlin-noise-fields](https://sighack.com/post/getting-creative-with-perlin-noise-fields)

本文介绍了一项生成艺术挑战：作者仅使用Perlin噪声流场这一简单算法，便创作出25种不同设计。该算法通过Perlin噪声为画布赋予方向力，引导粒子运动形成有机图案。

从基础的黑白条纹开始，作者通过调整参数快速迭代设计：配色方案、线条粗细、透明度、端点样式、形状（线条、弧线、圆形、三角形、矩形）以及图层叠加。关键迭代包括火焰效果、炭笔质感、星空、秋叶，甚至文字图案。创作过程中不乏"意外之喜"——代码故障催生惊艳效果，也常有陷入瓶颈的时刻。

作者总结出三点创作心得：限制能聚焦探索；复杂作品源于简单迭代；创造力是主动过程，而非被动等待灵感。核心启示是：即便从基础想法开始，也要着手创作，让过程揭示新可能。完整代码与图片已发布于GitHub。

---

## 26. 独角兽——终极CPU模拟器

**原文标题**: Unicorn – The Ultimate CPU Emulator

**原文链接**: [https://www.unicorn-engine.org/](https://www.unicorn-engine.org/)

文章宣布，开源CPU模拟器Unicorn Engine于2022年11月13日获得阿里云颁发的“亚洲之星10x10奖项”，以表彰其在网络安全及其他领域的影响力。该项目诞生于七年前，以开源许可证形式发布以惠及社区。团队持续维护和开发，使Unicorn Engine成为学术界和工业界创新工作中广泛使用的、事实上的模拟器基础。文章最后感谢社区的支持，并提供了了解该奖项详情的链接。

---

## 27. 展示HN：花园之花——ASCII艺术之前的图形字体档案

**原文标题**: Show HN: Garden of Flowers – an archive of pictorial typography before ASCII art

**原文链接**: [https://garden-of-flowers.heikkilotvonen.com/](https://garden-of-flowers.heikkilotvonen.com/)

本文是一篇Hacker News帖子，标题为《花园之花——ASCII艺术之前的印刷图案字体档案》。它展示了一个基于标签的海量历史印刷装饰图案与绘画设计收藏，主要时间跨度从17世纪到20世纪初。

内容为原始图像数据的转储，每条记录都带有元数据标签，包括来源、产地（如德国、法国、英国）、创作者（如威廉·卡斯隆、皮埃尔-西蒙·富尼耶）、日期以及描述性标签（如“字体建筑”、“章首章尾装饰”、“剪影风格”）。亮点包括大量来自卡斯隆和弗莱与斯蒂尔等著名字体铸造厂的样本、复杂的边框和模块化字体设计，以及完全由字体元素构成的“字体建筑”图像。

该档案展示了现代ASCII艺术丰富的装饰性前身，包含由字体构成的花卉装饰、建筑结构、人物和动物。许多条目来自德国出版物，如20世纪20年代的《印刷通讯》和18世纪的法国字体样本。帖子的用户“heikki”有效地为这段装饰性印刷的视觉历史提供了一个精选索引，强调了前数字时代字体插图的工艺性与艺术性。

---

## 28. Show HN：Sabela —— 一个面向Haskell的反应式笔记本

**原文标题**: Show HN: Sabela – A Reactive Notebook for Haskell

**原文链接**: [https://sabela.datahaskell.com/](https://sabela.datahaskell.com/)

以下是文章的精要总结：

该文章介绍了 **Sabela**——一个专为 Haskell 编程语言设计的反应式笔记本环境。与传统笔记本（如 Jupyter）线性执行单元格不同，Sabela 采用**反应式**系统，修改任意单元格将自动且即时地重新计算所有依赖单元格，这与 Haskell 的惰性求值模型相呼应。

示例笔记本展示了**构造实体几何（CSG）**——一种通过布尔运算（如并集、交集、差集）组合简单形状（图元）来创建复杂 3D 模型的技术。作者在笔记本中直接使用 Haskell 以编程方式构建了 3D 对象。

其核心特色包括：
- **实时反应性：**对 Haskell 代码的编辑会立即更新视觉输出和下游计算。
- **一流的 Haskell 支持：**整个笔记本使用 Haskell 语法和类型，避免了其他工具常见的多语言桥接问题。
- **图形与 3D 集成：**笔记本可内联渲染 3D CSG 模型，展示了 Haskell 在图形、仿真和可视化领域的潜力。
- **导出功能：**笔记本可以下载为 Markdown（`.md`）文件，便于分享和版本控制。

文章将 Sabela 定位为一款将 Haskell 的优势（纯度、强类型、表现力）融入交互式探索工作流的工具，尤其吸引从事图形、游戏开发或形式数学的开发者。

---

## 29. 为何Meta正在摧毁自己的工程组织？

**原文标题**: Why is Meta destroying its engineering organization?

**原文链接**: [https://newsletter.pragmaticengineer.com/p/why-is-meta-destroying-its-engineering](https://newsletter.pragmaticengineer.com/p/why-is-meta-destroying-its-engineering)

以下是文章的简要总结：

自2025年4月以来，Meta历史上以工程师为主导的强大文化因激进、自上而下的变革（旨在追赶AI领域）而迅速恶化。以CEO马克·扎克伯格和新任AI主管亚历山德·王（来自被收购的Scale AI）为首的领导层，正在瓦解二十年来赋予工程师权力的“在稳定基础设施上快速行动”的成功文化。

关键破坏性变革包括：
1. **侵入式监控：** 工程师的每次键盘敲击和鼠标点击都被追踪以生成AI训练数据，且无法选择退出，引发重大隐私问题。
2. **强制调岗：** 核心产品和基础设施团队中30%-50%的工程师（约4000-5000人）被强制调至新的ADO（代理数据优化）部门，从事低级的数标注和RLHF工作，剥夺了他们传统上选择影响性项目的自主权。
3. **士气低落的氛围：** 持续一个月的公开裁员期（削减10%员工）引发了广泛恐慌。加上激进的绩效评估系统（PSC）促使同事间相互竞争，工程师感到自己的工作如今被轻视，被视为“成本中心”而非“利润中心”。

结果是人才大量外流，工程师将当前角色视为“数据标注”工作，同时积极寻找新职位，这标志着Meta长期以来的工程卓越性面临存亡威胁。

---

## 30. 以光速冷却

**原文标题**: Cooling at the Speed of Light

**原文链接**: [https://cacm.acm.org/news/cooling-at-the-speed-of-light/](https://cacm.acm.org/news/cooling-at-the-speed-of-light/)

**《以光速降温》**

文章报道了罗切斯特大学及其合作者在辐射冷却技术上的突破。他们研发出一种由二氧化硅、氮化硅和氧化铝构成的多层"反射镜"，能通过在大气"透明窗口"（8-13微米）发射热辐射来冷却物体。该窗口可使热量直接穿过地球大气层进入外太空。

与传统冷却方式（如风扇或空调）不同，该装置无需电力或制冷剂。即使在阳光直射下也能工作，实现比环境温度低5-10°C（9-18°F）。关键创新在于它能反射几乎全部太阳能的同时发射红外热，成为一种被动式零能耗冷却方案。

潜在应用包括降低建筑冷却负荷、防止太阳能电池板过热以及稳定温度敏感设备。研究人员指出，该涂层可采用现有薄膜沉积技术制造，具备规模化生产可行性。虽仍需优化耐久性和成本，但这项技术有望显著节能并减少碳足迹。

---

