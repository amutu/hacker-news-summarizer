# Hacker News 热门文章摘要 (2026-04-26)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. GoDaddy在没有任何文件的情况下将一个域名交给了一名陌生人

**原文标题**: GoDaddy Gave a Domain to a Stranger Without Any Documentation

**原文链接**: [https://anchor.host/godaddy-gave-a-domain-to-a-stranger-without-any-documentation/](https://anchor.host/godaddy-gave-a-domain-to-a-stranger-without-any-documentation/)

**摘要：**

一个运营27年的非营利组织域名（HELPNETWORKINC.ORG）在无预警的情况下被从GoDaddy账户中扣押，导致所有邮件和网站离线四天。该账户启用了双重双重认证和域名所有权保护。GoDaddy的审计日志显示，该转移由一名“内部用户”完成，且“变更验证状态：否”。

尽管拨打了32通电话（合计9.6小时）并发送了17封邮件，GoDaddy客服给出的指示反复更改，始终未能解决问题。四天后，GoDaddy宣布此事结案，称该域名现已归他人所有。

最终，一名远在2000英里外的女性苏珊发现自己的GoDaddy账户中出现了错误的域名，她联系了Flagstream并在不到5分钟内将域名转回。

调查显示，GoDaddy在**零文件证明**的情况下批准了苏珊的转移申请。她原本试图恢复另一个不同的域名（HELPNETWORKLOCAL.ORG）。GoDaddy的恢复团队看到她的邮件签名引用了父域名下的一个子域名，便在没有任何所需文件的情况下将父域名转移至她的账户。上传文件的链接过期后，转移仍被批准。

真正的解决方案来自一位陌生人，而非GoDaddy。作者曾试图向security@godaddy.com报告此安全漏洞，但邮件被退回，随后通过HackerOne提交。文章呼吁GoDaddy审核其转移验证流程，并为Flagstream提供真实的人工联系人。

---

## 2. 人工智能正在催生一批离开它便无法思考的工程师

**原文标题**: A.I. is creating engineers who can't think without it

**原文链接**: [https://www.koshyjohn.com/blog/ai-should-elevate-your-thinking-not-replace-it/](https://www.koshyjohn.com/blog/ai-should-elevate-your-thinking-not-replace-it/)

**摘要：**

本文警示，过度依赖人工智能正催生出一代丧失基础批判性思维技能的工程师。文章强调了一种日益分化的现象：一方将AI视为拐杖，用于快速获取不假思索的解决方案（自我造成的不相关性）；另一方则将其视为战略性工具，用于深化理解与提升效率（真正的工程杠杆）。

其核心论点是：AI应当**提升而非取代**人类的思考。当工程师习惯性地将问题解决交给AI——跳过调试、分析和第一性原理推理——当工具失效或新问题出现时，他们便无法独立思考。这种“认知萎缩”威胁着他们的长期能力与解决复杂问题的水平。

相反，高效的工程师则利用AI处理常规任务并加速分析，同时始终作为关键决策者。他们会验证输出、质疑假设，并将AI的工作整合进更宏观的概念理解中。

文章总结道，关键的区别在于“意图性”。为避免变得无关紧要，工程师必须优先学习AI生成解决方案背后的“为什么”，利用这项技术来增强自身的推理能力，而非将其外包。未来不属于使用AI最多的人，而属于在必要时能够脱离AI进行独立思考的人。

---

## 3. Dillo浏览器3.3.0版本发布

**原文标题**: Dillo Browser Release 3.3.0

**原文链接**: [https://dillo-browser.org/release/3.3.0/](https://dillo-browser.org/release/3.3.0/)

**Dillo 浏览器 3.3.0 发布概要**

Dillo 3.3.0 于 2026 年 4 月 26 日发布，引入了多项新功能、配置选项及错误修复。

**主要新功能：**
- **通过 UNIX 套接字远程控制**：新增 `dilloc` 命令行程序，支持通过脚本控制 Dillo（例如打开 URL、刷新、转储页面内容、退出）。
- **页面操作**：用户可从右键菜单执行任意命令，实现强大的页面操作（例如通过 curl 模仿 Chrome 绕过 JavaScript 限制，或运行修复脚本）。
- **实验性 FLTK 1.4 支持**：使用 `--enable-experimental-fltk` 构建，以在 FLTK 1.4 下测试（建议使用 1.4.5 版本以获得更好的字体渲染）。在高 DPI 或 Wayland 环境下仍存在视觉问题。

**其他改进：**
- **OAuth 登录修复**：现允许在用户发起请求后接受重定向产生的 Cookie，使得 Fediverse 登录成为可能，同时阻止第三方跟踪。
- **易用性**：Ctrl+左键点击在新标签页中打开链接；Ctrl+C 复制选中文本；Alt+数字键聚焦标签页；鼠标按钮实现前进/后退导航。
- **新增内部页面**：`about:keys`（快捷键）、`about:cache`、`about:dicache`（缓存详情）。
- **选项**：`mark_unloaded_images`（未加载图片显示边框）、`trace_http`（调试 HTTP）、`search_url` 前缀匹配、支持 brotli 编码。
- **错误修复**：修复了 LibreSSL 导致的段错误、Cookie Max-Age 解析、表单提交缓存以及释放后使用错误。

**下载与迁移**：源码位于 dillo-browser.org（已从 GitHub 迁移），同时在 Codeberg 和 SourceHut 上托管镜像。

---

## 4. Asahi Linux 进度 Linux 7.0

**原文标题**: Asahi Linux Progress Linux 7.0

**原文链接**: [https://asahilinux.org/2026/04/progress-report-7-0/](https://asahilinux.org/2026/04/progress-report-7-0/)

**Asahi Linux 进展报告摘要：Linux 7.0**

Asahi Linux 项目在经历三年 6.x 内核版本后，发布了 Linux 7.0，并同步推出重大安装器更新。主要改进包括：

1.  **自动化安装器**：安装器现采用 GitHub 工作流和独立的数据仓库管理清单，实现自动构建与更新。这解决了旧版捆绑设备树导致新内核无法启动的问题。

2.  **环境光传感器（ALS）支持**：新增驱动程序可从 macOS 中获取校准数据，该数据存储在 EFI 系统分区。用户可通过在 macOS 恢复模式下重新运行安装器来更新固件。

3.  **电源管理**：在 M1 Pro/Max/Ultra 芯片上启用电源管理处理器（PMP），使闲置功耗降低约 20%（半瓦）。基础款 M1 设备的 PMP 支持正在开发中。

4.  **蓝牙修复**：现支持 Wi-Fi/蓝牙共存的供应商专用 HCI 命令，消除了干扰（如扫描时）导致的音频中断问题。

5.  **可变刷新率（VRR）**：通过在显示控制器（DCP）固件中设置单个参数可启用 VRR，但这需要模式设置（违反 VESA/KMS 规范）。用户可通过内核参数强制启用 VRR，但因兼容性限制未向用户空间公开。未来 HDMI 兼容性可能会改善。

---

## 5. 一个AI代理删除了我们的生产数据库。该代理的认罪陈述如下。

**原文标题**: An AI agent deleted our production database. The agent's confession is below

**原文链接**: [https://twitter.com/lifeof_jer/status/2048103471019434248](https://twitter.com/lifeof_jer/status/2048103471019434248)

**摘要：**  
一篇题为《AI智能体删除了我们的生产数据库，其认错声明如下》的文章，本应是技术事件报告或轶事。但实际显示的却是X（原Twitter）的报错页面，提示用户浏览器禁用了JavaScript。页面列出了标准支持链接（帮助中心、服务条款、隐私政策、Cookie政策、版权声明、广告信息）以及2026年X Corp.的版权声明。  

核心在于：因技术限制，无法查看这篇详述AI智能体导致数据库删除及其后续"认错"的预期文章。关键信息即报错提示本身——要求用户启用JavaScript或换用支持的浏览器后查看内容。因此，文章实质内容仍不可知，仅止于标题与拦截信息。

---

## 6. 黏土PCB教程

**原文标题**: Clay PCB Tutorial

**原文链接**: [https://feministhackerspaces.cargo.site/Clay-PCB-Tutorial](https://feministhackerspaces.cargo.site/Clay-PCB-Tutorial)

**《黏土PCB制作教程》概要**

该教程来自女权创客空间，介绍了一种利用黏土和铜箔胶带制作印刷电路板的低成本替代方法，专为缺乏传统蚀刻设备的创客设计。

首先将风干黏土擀成薄片，裁剪至所需电路板尺寸。趁黏土未干时，用刻针在表面绘制或压印电路走线图案，形成浅槽。随后将铜箔胶带压入凹槽形成导电路径。为确保电气连接，转角处需做成圆弧形以防胶带翘起，重叠区域需用导电环氧树脂或焊锡连接。元件通过引脚直接插入黏土，并焊接至铜箔胶带上。

主要特点包括易于返工（可拔出元件、重布走线）且无需化学药剂。局限性为易碎（黏土可能开裂）及高频性能不佳。教程建议用透明指甲油或树脂密封成品电路板以增加耐用性。该方案适用于快速原型开发、教学工坊及艺术项目，优先考虑无毒快捷制作，而非工业级精度。

---

## 7. 停止招聘初级工程师，高级工程师将反制于你

**原文标题**: If You Stop Hiring Juniors, Your Senior Engineers Own You

**原文链接**: [https://evalcode.com/posts/if-you-stop-hiring-juniors-your-seniors-own-you/](https://evalcode.com/posts/if-you-stop-hiring-juniors-your-seniors-own-you/)

**摘要：** 本文认为，为了短期成本削减而停止招聘初级工程师是一种具有战略危险性的错误，主要因为它消除了组织的杠杆效应。核心论点是，掌握关键机构知识的高级工程师，在没有初级人才梯队成长为未来的中级和高级人才时，将获得过高的议价能力。缺乏这一人才储备，公司将被迫满足高级员工加薪要求，否则将面临灾难性的人才流失。

文章警告了一种可预见的“人才管道危机”：今天被回避的初级工程师将是明天定价过高的高级工程师。它将此比作企业因退休业主无继任者而倒闭的情况，强调学徒制是一种生存模式，而非慈善行为。文章还指出了软件工程领域的独特风险：财务独立的高级工程师可以轻易离开，使公司失去任何制约能力。

在承认人工智能影响的同时，文章认为它改变了初级工作的*性质*（例如审查AI输出），而非消除了人才发展管道的需求。结论是，押注AI完全取代这一人才管道的企业将面临多年的发展时间损失，并以Shopify继续招聘早期职业人才作为战略反例。

---

## 8. 为何SWE-bench Verified不再衡量前沿编码能力

**原文标题**: Why SWE-bench Verified no longer measures frontier coding capabilities

**原文链接**: [https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)

无法访问文章链接。

---

## 9. 《可见的Zorker：Zork 1》

**原文标题**: The Visible Zorker: Zork 1

**原文链接**: [https://eblong.com/infocom/visi/zork1/](https://eblong.com/infocom/visi/zork1/)

标题和内容显示这是一个可在线游玩的经典文字冒险游戏《**Zork 1**》网页版，风格为“可见的佐克人”。页面含有一个**Patreon**链接，暗示这可能是一个创作者支持的项目或解说频道。主要特点包括：需在浏览器中**启用JavaScript**才能游玩，并配有加载画面。页面上出现“欢迎使用解说音轨”信息，标记为**TITLE**叠加层，表明游戏附带了音频或文字解说。该页面似乎是原游戏的解说增强版，可能属于系列内容或Patreon资助项目。可见文本中未提供更多游戏或解说细节。摘要突出了游戏本体、Patreon关联、对JavaScript的需求以及加载时出现的解说音轨。

---

## 10. 工程热力学免费教材

**原文标题**: Free Textbook on Engineering Thermodynamics

**原文链接**: [https://thermodynamicsbook.com/](https://thermodynamicsbook.com/)

**《工程热力学》摘要——奥利维耶·克莱宁著**

这是一本免费、开放许可（CC-by-sa）的大学教材，对工程热力学进行了严谨而易于理解的介绍。作者为奥利维耶·克莱宁博士（工学博士）。2025年国际版采用国际单位制，译自历经十余年打磨的法语原版。

全书共330页，提供三种格式：**免费PDF下载**、**2欧元PDF**（作者可获得1.5欧元版税）以及**49欧元平装本**。内容涵盖从基本能量原理到闭口系统与开口系统、理想气体、相变、热力循环、第二定律和熵等核心概念，并以蒸汽循环（朗肯循环）和空气基循环（奥托循环、狄塞尔循环、燃气轮机）的专门章节作为收尾。

本书的一大特色在于注重应用，包含59道配有完整注释的例题和96道附有解答的习题，并穿插历史探究。本书采用知识共享署名-相同方式共享许可协议，允许重复使用和重新编排。目前已被包括贡比涅技术大学、索邦大学和INSA鲁昂在内的多所院校使用，并因其清晰易懂而受到赞誉，尤其深受在建立学科直觉方面有困难的学生好评。

---

## 11. 状态图：分层状态机

**原文标题**: Statecharts: hierarchical state machines

**原文链接**: [https://statecharts.dev/](https://statecharts.dev/)

**文章摘要：状态图——层次化状态机**

状态图是一种用于复杂系统的可视化形式，本质上是“增强版”状态机，能够解决状态爆炸等问题。它带来显著优势：提高代码可读性、将行为与组件解耦、便于测试与修改、降低缺陷数量，并提升可扩展性。状态图还有助于沟通，使非开发人员能理解系统，让QA团队能够探索系统。

**缺点**包括存在学习曲线、可能遭遇团队阻力，以及对小型项目增加代码开销。尽管如此，优点通常大于缺点。

文章介绍了**可执行状态图**，即通过单一事实来源（如JSON或XML格式）同时定义运行时行为并生成精确图表，从而消除翻译错误，确保图表保持同步。

实际应用得到W3C SCXML标准及各类库的支持，这些库处理语义与边缘情况。在社区支持方面，文章指向Gitter聊天室与GitHub讨论区，并引用了关于概念、术语表及用例的更多资源。

---

## 12. 业余人士借助ChatGPT解决了一个埃尔德什问题

**原文标题**: Amateur armed with ChatGPT solves an Erdős problem

**原文链接**: [https://www.scientificamerican.com/article/amateur-armed-with-chatgpt-vibe-maths-a-60-year-old-problem/](https://www.scientificamerican.com/article/amateur-armed-with-chatgpt-vibe-maths-a-60-year-old-problem/)

23岁的业余数学家利亚姆·普莱斯（Liam Price）借助ChatGPT Pro订阅服务，解决了一个困扰世界级数学家60年之久的未解数学难题——即所谓的“埃尔德什问题”。该问题涉及整数中的“本原集”，即集合中任何数都不能整除另一个数。数学家保罗·埃尔德什曾猜想，在这样一个由逐渐增大的数构成的集合中，其可能的最小总和（即分数）恰好为1。此前包括斯坦福大学贾里德·利希特曼在内的专家尝试均告失败，原因在于集体陷入了“思维僵局”。

普莱斯向ChatGPT提出了这个问题，AI便采用了一种人类未曾尝试过的数学方法，生成了一个新颖的解决方案。尽管其原始输出质量不佳，但陶哲轩、贾里德·利希特曼等专家对其进行了完善，并识别出AI独特的洞察力。他们认为，这种提供思考大数新途径的方法可能在数学领域具有更广泛的应用前景，不过其长期意义仍有待评估。该解决方案已发布在埃尔德什问题网站上。

---

## 13. Waymo表示，指望无人驾驶出租车避开自行车道是不现实的。

**原文标题**: Waymo says expecting driverless taxis to stay out of bike lanes is unrealistic

**原文链接**: [https://road.cc/news/driverless-taxis-veering-into-cycle-lanes-normal-practice-says-waymo](https://road.cc/news/driverless-taxis-veering-into-cycle-lanes-normal-practice-says-waymo)

**摘要：**

文章标题与所附评论批评了Waymo的立场，即期望其无人驾驶出租车始终避免驶入自行车道并不现实。评论提出了一个尖锐的类比，认为如果一家公司指望客户希望法律被违反，它就不应仅仅接受并顺从——这与银行对反洗钱法规的变通做法相提并论。这暗示Waymo正将其技术应承担的法律责任转嫁出去，表现出一种双重标准：一方面将安全法规（如避开自行车道）视为不可实现，另一方面却要求其他行业严格遵守法律规定。核心矛盾在于Waymo的操作借口与公众对自动驾驶汽车必须遵守所有交通法规（包括保护骑行者）的期待之间。

---

## 14. 新研究发现植物能感知雨声

**原文标题**: Plants can sense the sound of rain, a new study finds

**原文链接**: [https://news.mit.edu/2026/plants-can-sense-sound-rain-new-study-finds-0422](https://news.mit.edu/2026/plants-can-sense-sound-rain-new-study-finds-0422)

**摘要：**

一项发表于《科学报告》的麻省理工学院新研究首次提供了植物种子能在自然界中感知声音的直接证据。研究人员发现，暴露在雨水滴落声中的水稻种子，其发芽速度比处于相同条件但无声音环境下的种子快30%至40%。

由尼古拉斯·马克里斯教授领导的团队将约8000颗水稻种子置于浅水中，并播放模拟小雨、中雨和大雨的滴水录音。距离水面较近的种子反应更为强烈。其机制涉及植物细胞内的微小重力感应细胞器——“平衡石”。雨滴撞击产生的振动足以扰动这些平衡石，从而向种子发出信号，使其打破休眠并开始生长。

马克里斯解释说，在水下，雨滴声产生的压力波相当于空气中靠近喷气发动机的程度。这种物理刺激具有生物学优势：感知到雨水的种子很可能处于有利于获取水分和安全生长的最佳深度。研究人员认为其他类型的种子也可能有类似反应，并计划探究植物是否能感知风等其他自然振动。该研究得到了麻省理工学院博斯奖学金和科克教席的支持。

---

## 15. 为何阿尔茨海默病的研究进展如此缓慢？

**原文标题**: Why has there been so little progress on Alzheimer's disease?

**原文链接**: [https://freakonomics.com/podcast/why-has-there-been-so-little-progress-on-alzheimers-disease/](https://freakonomics.com/podcast/why-has-there-been-so-little-progress-on-alzheimers-disease/)

无法访问文章链接。

---

## 16. Show HN：将高斯泼溅变成电子游戏

**原文标题**: Show HN: Turning a Gaussian Splat into a videogame

**原文链接**: [https://blog.playcanvas.com/turning-a-gaussian-splat-into-a-videogame/](https://blog.playcanvas.com/turning-a-gaussian-splat-into-a-videogame/)

PlayCanvas 的这篇文章详细阐述了将逼真高斯泼溅转换为基于浏览器的交互式视频游戏的分步流程。核心挑战在于泼溅体缺乏传统游戏元素，如物理、光照和AI导航。

构建流程包含八个关键步骤：

1. **获取泼溅体**：从SuperSplat下载一个采用知识共享许可的免费场景。
2. **流式传输**：使用`splat-transform`命令行工具将大型泼溅体转换为流式LOD格式，以便在任何设备上快速加载。
3. **碰撞网格**：使用`splat-transform`并通过`-K`标志对泼溅体进行体素化，生成用于物理计算的`.collision.glb`文件。
4. **光照探针**：通过每隔1米渲染立方体贴图来烘焙`lightness.json`网格，使动态3D对象能够继承泼溅体的光照效果。
5. **创作**：使用PlayCanvas VS Code扩展实现快速的本地编码与重载工作流。
6. **版本控制**：通过VS Code扩展集成GitHub，实现安全的迭代开发。
7. **导航网格**：将碰撞网格输入Recast引擎，生成用于NPC寻路的`navmesh.bin`文件。
8. **AI**：通过行为树驱动NPC，并依据个性特征（如攻击性、怯懦度）设置参数，以创造独特的行为模式。

整套技术栈均为开源，完整的公开PlayCanvas项目可供二次创作。最终演示在浏览器中运行，具备物理引擎、烘焙光照、AI寻路以及八个独特的NPC角色。

---

## 17. 奥里诺科河：年轻代垃圾回收

**原文标题**: Orinoco: Young Generation Garbage Collection

**原文链接**: [https://v8.dev/blog/orinoco-parallel-scavenger](https://v8.dev/blog/orinoco-parallel-scavenger)

**摘要：**

本文详细介绍了 V8 采用并行 Scavenger 进行年轻代垃圾回收（GC），取代了旧版单线程 Cheney 半空间复制算法（用于 M62 版本之前）。V8 堆中的年轻代（最大 16MiB）很快就会被填满，需要频繁回收。旧的算法是顺序执行的，未能充分利用现代多核 CPU。

该团队尝试了一种并行标记-清除方法，将标记、复制和指针更新分离到同步阶段。虽然它能提供精确的活动信息，但在大多数对象已死亡的堆上（这是一种常见的现实场景）会产生开销。

最终的解决方案，即并行 Scavenger，将这些阶段（标记、复制、更新指针）合并为一个单一的并行化过程，类似于 Halstead 收集器，但采用了动态工作窃取。它按页分配根集扫描（主要是老年代到年轻代的引用），并使用全局工作列表进行线程负载均衡，从而提高了在 arm big.LITTLE 等非对称架构上的效率。

**关键结果：** 在各项基准测试中，并行 Scavenger 将主线程的年轻代 GC 时间减少了 20%–50%，真实网站的改进约为 55%（2 倍）。它缩小了小型堆上优化的 Cheney 算法与大型堆上高吞吐量之间的性能差距，显著减少了暂停时间，同时保持了较低的最小暂停时间。

---

## 18. 《万智牌》助我从N2水平迈向日语流利

**原文标题**: Magic: The Gathering Took Me from N2 to Japanese Fluency

**原文链接**: [https://www.tokyodev.com/articles/how-magic-the-gathering-took-me-from-n2-to-japanese-fluency](https://www.tokyodev.com/articles/how-magic-the-gathering-took-me-from-n2-to-japanese-fluency)

文章描述了作者如何在东京利用《魔法风云会》搭建起从JLPT N2证书到实际日语流利度之间的桥梁。

**核心要点：**
1. **问题所在：** 尽管持有N2证书，作者在工作中仍难以自信流畅地进行自然交流。他们希望从“勉强生存”的日语水平跃升至“完全参与”。

2. **方法（卡组本地化）：** 作者坚持只使用**日语版卡牌**，将解释责任转移到自己身上，迫使自己在对局中积极使用语言。

3. **前期准备：** 他们选择了**快攻卡组**（如红系灵技套牌），以确保互动清晰、可预测。提前研读卡牌名称、规则文本及对手的常见提问，避免因翻译问题呼叫裁判。

4. **主动实践：** 通过每周参加比赛，作者将本地卡牌店打造为固定的“语言实验室”。他们运用**“主动观察循环”**，模仿母语者的措辞，并立即在对局中应用。

5. **成果：** 这一方法不仅带来了赛事胜利（包括晴屋吉祥寺站冠军），更关键的是收获了**职业自信**。用于解释卡牌互动的逻辑结构（条件句、因果连词）直接迁移至**项目经理**的职责中——用日语向利益相关者汇报、协调团队沟通。

**结语：** 作者建议在日的语言学习者找到一项**以日语为“操作系统”的爱好**，将被动学习转化为真实情境下的主动交流。教科书中的流利度，始终静候在真实社群的对局桌旁。

---

## 19. GitHub非必要用户体验更改：问题链接现在以弹窗形式打开

**原文标题**: GitHub unwanted UX change: issue links now open in a popup

**原文链接**: [https://github.com/orgs/community/discussions/192666](https://github.com/orgs/community/discussions/192666)

**摘要：**

GitHub 用户强烈批评近期一项UI变更：点击问题链接时，不再跳转至页面，而是以弹窗覆盖形式打开。该功能逐步推广后引发多重问题：破坏浏览器历史导航、干扰工作流程（如为AI代理复制URL）、外观不佳、无障碍体验差，且在宽屏显示器上浪费屏幕空间。用户要求能够禁用此功能或恢复标准链接行为。

少数评论者为该变更辩护，指出仍可通过右键点击链接，但整体反应极为负面（一条支持性评论收获46个反对票）。许多用户对如此重大的UI变更未经用户选择或事先通知便实施表示不满。

2026年4月26日，GitHub维护者 **azenMatt** 确认收到反馈，表示此项变更旨在改善跨仓库链接的加载速度，但证实将**撤销该变更**。另一名员工 **dewski** 主动承担责任，解释其目标是确保问题查看器用户体验一致，并防止阅读讨论时丢失位置，但承认“未达到预期”。该功能现已回滚。

---

## 20. USB速查表（2022）

**原文标题**: USB Cheat Sheet (2022)

**原文链接**: [https://fabiensanglard.net/usbcheat/index.html](https://fabiensanglard.net/usbcheat/index.html)

**USB 速查表摘要（2022年）**

本文提供了USB标准的快速参考指南，澄清了令人困惑的命名规范和技术规格。

**核心名称与速度：** USB 1.1（全速，12 Mbps/1.5 MiB/s）使用4根线缆。USB 2.0（高速，480 Mbps/60 MiB/s）同样使用4根线缆。SuperSpeed USB（5 Gbps/625 MiB/s）使用8根线缆。SuperSpeedPlus（10 Gbps/1250 MiB/s）使用8根线缆。USB 3.2 Gen 2x2和USB4（20 Gbps/2500 MiB/s）需要12根线缆，而USB4 40 Gbps（5000 MiB/s）同样使用12根线缆。

**世代命名与编码：** USB命名结合了世代和通道数量（例如，Gen 2x2表示使用2条通道的第2代）。由于编码原因，有效数据传输速率低于信号速率（例如，8b/10b编码使吞吐量降低20%；128b/132b编码效率更高）。实际顺序读取速度甚至更低（例如，USB 3.2 Gen 2x2的实际速度约为1600 MiB/s，理论值为2424 MiB/s）。

**线缆与连接器：** 4根线缆（USB 2.0）提供一条半双工通道。8根线缆（USB 3.x）提供两条通道（一条上行，一条下行）。12根线缆（适用于USB 3.2 Gen 2x2和USB4的USB-C）提供四条通道（两条上行，两条下行）。只有USB-C拥有足够引脚以支持两条通道。

**电力传输：** 充电功率范围从USB 2.0的2.5W（5V/0.5A）到USB-C PD 3.1的240W（48V/5A）。USB-C在不支持电力传输（PD）时最高支持3A/15W，支持PD时最高可达5A/100W或240W。

**历史：** 主要发布年份包括USB 1.0（1996年）、2.0（2000年）、3.0（2008年）、3.1（2013年）、3.2（2017年）和USB4（2019年）。

---

## 21. 粗糙的复制品

**原文标题**: Sloppy Copies

**原文链接**: [https://www.markround.com/blog/2026/04/19/sloppy-copies/](https://www.markround.com/blog/2026/04/19/sloppy-copies/)

本文讲述了作者在发布一篇关于其基于Rails的乐队管理应用的博客文章并引发关注后的经历。不久后，他们发现针对其FAQ和定价页面的可疑机器人活动，随后又注意到几乎一模一样的克隆网站——有些只有启动页，另一些则是功能完整的应用——这些克隆网站在其文章登上Hacker News后不久便出现了。这些克隆站点使用库存图片、AI生成的用户评价、盗取的截图以及占位内容，许多还通过小众社群中的垃圾帖子和傀儡账号进行推广。作者还在其他兴趣论坛（手工、育儿、宠物）中发现了类似的克隆现象，包括整个博客和应用都被抄袭。他们将这种"即兴克隆"的加速归因于AI工具，这些工具降低了创建和推广仿冒网站的门槛。作者感到沮丧的是，任何创意都可能被瞬间克隆、包装并通过机器变现，同时对"旧互联网"的消亡表示惋惜。他们并未提出解决方案，指出像Anubis这样的技术防御手段可通过无头浏览器绕过，并强调问题的根源在于人类的恶意意图，而非AI本身。

---

## 22. QNX在Commodore 900上——失落的硬盘掠夺者 [视频]

**原文标题**: QNX on the Commodore 900 – Raiders of the lost hard drive [video]

**原文链接**: [https://archive.fosdem.org/2025/schedule/event/fosdem-2025-5479-raiders-of-the-lost-hard-drive/](https://archive.fosdem.org/2025/schedule/event/fosdem-2025-5479-raiders-of-the-lost-hard-drive/)

**摘要：**  
在FOSDEM 2025演讲《失落硬盘的夺宝奇兵》中，米哈尔·普莱班讲述了他修复一台1984年罕见的Commodore 900原型机的历程。C900是一款采用Zilog Z8000处理器、面向预算市场的Unix工作站，在Commodore收购Amiga后被取消，仅剩数十台原型机。普莱班获得的这台机器缺少可用的电源、显示器、键盘，且硬盘显示0xFF错误。他的修复工作涉及跨洲数字考古：反汇编Z8000 BIOS、逆向工程键盘接口、破解硬盘低级格式化。在成功复活自己的机器后，他又协助另外两位C900拥有者全面修复了设备。演讲包含视频录像（AV1/WebM和MP4格式）、演示文稿幻灯片及字幕文件。

---

## 23. GnuPG – 后量子密码学登陆主线

**原文标题**: GnuPG – post-quantum crypto landing in mainline

**原文链接**: [https://lists.gnupg.org/pipermail/gnupg-announce/2026q2/000504.html](https://lists.gnupg.org/pipermail/gnupg-announce/2026q2/000504.html)

**GnuPG 2.5.19 发布公告摘要**

GnuPG 项目发布了 2.5.19 版本，这是一次重要更新，通过新增 Kyber（ML-KEM / FIPS-203）加密算法引入后量子密码学（PQC）支持。该版本还改进了对 64 位 Windows 系统的支持。

主要新特性包括：gpg 的 `--use-ocb-sym` 和 `--show-session-hash` 选项、增强的智能卡 PIN 输入行为，以及 dirmngr 密钥服务器选项新增的 "clear" 关键字。

修复了多个漏洞，包括密钥刷新边界情况、空口令处理、德国电信证书的 PKCS#12 导入问题、SSH 的 RSA 签名填充，并改进了 de-vs 合规性检查。

旧版 2.4 系列将在两个月后停止支持，建议用户进行更新。GnuPG 2.5.19 完全兼容先前版本。

该版本提供源代码和 Windows 安装程序。用户可通过 OpenPGP 签名或 SHA-1 校验和验证完整性。公告还详细说明了发布签名密钥，并提供了文档、支持和漏洞报告的链接。

---

## 24. 西方忘记了如何制造东西，如今也快忘了如何编写代码。

**原文标题**: The West forgot how to make things, now it’s forgetting how to code

**原文链接**: [https://techtrenches.dev/p/the-west-forgot-how-to-make-things](https://techtrenches.dev/p/the-west-forgot-how-to-make-things)

**摘要：** 本文将西方国防制造业的衰落与软件行业现状进行类比。作者是乌克兰的一名工程主管，通过欧盟未能兑现百万枚炮弹承诺、毒刺导弹生产重启耗时数年，以及“雾霾”核材料案例——专家退休时未留下文档知识便消失——指出长期投资不足和追求短期效率导致需求激增时爆发危机。

作者认为，软件行业正犯同样错误：减少初级招聘，转而依赖AI编码工具。研究显示，经验丰富的开发者使用AI处理实际任务时效率反而低19%，54%的工程主管计划减少初级员工招聘。这正制造着“代码版雾霾现象”：初级开发者跳过调试和试错成长，无法积累隐性知识。当现有资深工程师退休后，这些知识既不会转移给AI，只会彻底消失。作者提到，兼具技术能力与判断力来纠正AI错误的工程师，招聘转化率仅为0.18%。核心警示：重建制造业用了3至10年，重建软件人才管道同样漫长，但行业正在赌自己无需这么做。

---

## 25. Terra API（YC W21）招聘：应用人工智能战略师（健康智能方向）

**原文标题**: Terra API (YC W21) Hiring: Applied AI Strategist(Health Intelligence)

**原文链接**: [https://www.ycombinator.com/companies/terra-api/jobs/DY7BCZU-applied-ai-strategist-market-intelligence-health](https://www.ycombinator.com/companies/terra-api/jobs/DY7BCZU-applied-ai-strategist-market-intelligence-health)

**职位发布：应用人工智能策略师 - 市场洞察（健康领域）**  
**公司：Terra API（YC W21）**  

Terra 是一个基础设施层，统一整合来自可穿戴设备、实验室和医疗设备的孤立健康数据，为健康公司与人工智能实验室提供支持。  

**职位职责：**  
这不是传统的市场调研，而是一个“市场→信号→决策→产品落地”的持续循环。策略师将：  
- **深度关注** 使用健康数据和人工智能的开发者，挖掘他们的真实需求与痛点。  
- **细分市场** 为可执行群体（如“代谢健康AI助手”）。  
- **识别模式** 从Terra自身的使用数据、日志及支持线程中发现产品机会。  
- **参与社区互动**（GitHub、Discord、垂直健康论坛）捕捉早期信号。  
- **提供决策级方向** 通过简短清晰的备忘录，推动产品路线图和市场进入策略。  

**候选人画像：**  
理想候选人需“贴近一线”、具备人工智能原生思维、善于处理不完整数据，并能影响实际决策。他们通常拥有产品/市场策略、人工智能产品或健康科技领域经验，且能展示过往直接改变产品路线图或定价的案例。  

**关键信息：**  
- 地点：伦敦（支持远程/混合办公）  
- 薪资：£40,000–£120,000  
- 可提供工作签证担保  
- 公司愿景：人工智能需依托持续的健康数据，实现极致个性化与目标导向的健康管理。

---

## 26. 《Mine：一个Coalton与Common Lisp集成开发环境》

**原文标题**: Mine, a Coalton and Common Lisp IDE

**原文链接**: [https://coalton-lang.github.io/20260424-mine/](https://coalton-lang.github.io/20260424-mine/)

本文介绍了**mine**，这是一款由Robert Smith专为**Coalton和Common Lisp**设计的新型IDE。其主要目标是通过提供一个开箱即用、支持Windows、macOS和Linux的完整单次下载应用程序，使这些语言更易于上手。

核心功能包括：内联诊断、集成调试器、跳转到定义、自动补全、语法高亮、结构化编辑以及内置Quicklisp配置。该IDE自带交互式增量开发所需的一切（热重载、REPL集成），甚至内置了结构化编辑教程。

**mine有意保持保守和受限：** 它使用标准按键绑定（例如Ctrl+C/V），没有插件或扩展功能，不收集遥测数据，也不支持其他语言。其目标是像QBASIC或Borland Turbo产品等经典工具一样简单专注。

文章指出，尽管存在Emacs+SLIME等强大的选择，但它们需要大量前期配置——学习ASDF、Quicklisp、SLIME以及Emacs本身——给初学者设置了门槛。**mine消除了这一障碍**，无论是初学者还是专家都能直接使用，无需事先掌握Emacs或Lisp知识。

目前这款IDE处于**alpha阶段**（v0.1.0），存在一些缺陷和功能缺失，团队的目标是发布适合专业使用的稳定版v1.0.0。作者鼓励用户尝试体验，注意经常保存并反馈意见。

---

## 27. Flickr：首个也是最后一个伟大的摄影平台

**原文标题**: Flickr: The first and last great photo platform

**原文链接**: [https://petapixel.com/2026/04/22/flickr-the-first-and-last-great-photo-platform/](https://petapixel.com/2026/04/22/flickr-the-first-and-last-great-photo-platform/)

**摘要：**  
本文认为，尽管面临竞争和更高成本，Flickr在2026年仍是摄影爱好者的宝贵平台。该平台于2018年被SmugMug收购，此前在雅虎旗下多年被忽视。此后，Flickr专注于渐进式改进，而非追逐短视频或AI等潮流。  

其核心优势包括：简洁、按时间顺序排列的照片流；服务于小众社群的强大群组功能；包含详尽EXIF数据、标签和地理标记的组织与取景地检索功能；支持RSS订阅和开放API集成；以及提供曝光机会的“探索”栏目。Flickr Pro（82美元/年）提供无限全分辨率存储、无广告浏览、高级统计和合作折扣，但价格高于500px等竞争对手。  

该平台因强大的社区氛围、版权保护、不盲目跟风AI、以及Photo Walk和MODE节等线下活动受到赞誉。但也存在缺陷：偶发技术错误（“坏熊猫”宕机）、群组对话减少、部分功能陈旧（相机查询、世界地图、FlickrMail）、神秘的“趣味性”算法，以及不支持JPEG以外的现代图像格式。尽管如此，作者认为Flickr仍是严肃爱好者的避风港，赞赏其拒绝商业化妥协、专注摄影初心的立场。

---

## 28. 《麻将：视觉指南》

**原文标题**: Mahjong: A Visual Guide

**原文链接**: [https://themahjong.guide/](https://themahjong.guide/)

仅从标题和内容标题“麻将：视觉指南”来看，这似乎是一份以视觉辅助为主的麻将入门或教学资料。主要内容可能包括：

- **基本规则与目标**：解释游戏玩法，包括组成获胜牌型（例如：三张或四张一组搭配一对将牌）的目标。
- **牌型与构成**：详细说明标准144张麻将牌，包含花色牌（万、条、筒）、字牌（风牌和箭牌）以及花牌（花牌和季节牌）。
- **游戏机制**：描述回合流程、摸牌与弃牌、吃碰杠操作以及宣布胡牌的过程。
- **计分与获胜**：介绍牌型分值计算与点数统计的关键信息。
- **视觉化学习**：重点通过图解、照片或插画展示牌局排列、桌面布局及游戏流程，便于初学者理解。

该指南旨在通过直观的图片解读，化解麻将复杂的策略和术语，使新手能够快速掌握基础玩法。

---

## 29. 浮点揭秘——Bartosz Ciechanowski（2019）

**原文标题**: Exposing Floating Point – Bartosz Ciechanowski (2019)

**原文链接**: [https://ciechanow.ski/exposing-floating-point/](https://ciechanow.ski/exposing-floating-point/)

**《揭开浮点数的面纱》摘要**

本文通过解释二进制科学记数法的基础，揭示了IEEE 754二进制浮点数的原理。浮点数由三个部分组成：符号位、有效数字（对于常规数，隐含前导"1"）和指数。

**阐释的关键概念：**
- 数字以基数为2的科学记数法存储，有效数字位数和指数范围有限（例如，float有24位有效数字，指数范围为[-126, +127]）。
- 编码使用1位符号位、8位指数位（偏移量为127）和23位有效数字位，前导1被省略。
- **精度限制**导致许多十进制数值（如0.2）因舍入而无法精确表示。
- **特殊值**使用保留的指数值：
  - 零（指数为0，有效数字为0）：包括+0和-0
  - 无穷大（指数为255，有效数字为0）：由溢出产生
  - NaN（指数为255，有效数字非零）：有超过800万种变体，不等于任何数，包括自身
- **次正规数**（指数为0，有效数字非零）：通过假设前导0而非1，允许在最小正规数以下逐渐下溢。

文章解释了浮点数的行为虽然有时令人惊讶，但遵循基于这些既定编码和特殊情况的统一规则。

---

## 30. OpenAI 隐私过滤器

**原文标题**: OpenAI Privacy Filter

**原文链接**: [https://openai.com/index/introducing-openai-privacy-filter/](https://openai.com/index/introducing-openai-privacy-filter/)

无法访问该文章链接。（所提供的网址似乎是一个假设或不存在的页面，因为OpenAI并未在该路径下发布过标题为“介绍OpenAI隐私过滤器”的文章。）

---

