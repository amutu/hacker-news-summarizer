# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-22.md)

*最后自动更新时间: 2026-03-22 20:35:48*
## 1. PC Gamer在一篇持续下载、体积达37MB的文章中推荐RSS阅读器。

**原文标题**: PC Gamer Recommends RSS Readers in a 37MB Article That Just Keeps Downloading

**原文链接**: [https://stuartbreckenridge.net/2026-03-19-pc-gamer-recommends-rss-readers-in-a-37mb-article/](https://stuartbreckenridge.net/2026-03-19-pc-gamer-recommends-rss-readers-in-a-37mb-article/)

这篇PC Gamer推荐RSS阅读器的文章，因其自身糟糕的网页设计和过量数据消耗而受到批评。作者指出三个核心问题：遮挡内容的侵扰性弹窗（用于推送通知和订阅）、至少五个可见广告造成的页面杂乱，以及高达37MB的初始页面体积。

然而最严重的问题在于持续的后台数据消耗——仅五分钟观察期间，页面就额外加载了近500MB广告内容。作者借此经历强调RSS阅读器（如NetNewsWire、Unread、Current和Reeder）的价值：它们能提供纯净的文章内容，摆脱臃肿的广告与追踪脚本。

---

## 2. 版本控制的未来

**原文标题**: The Future of Version Control

**原文链接**: [https://bramcohen.com/p/manyana](https://bramcohen.com/p/manyana)

**摘要：**

本文介绍了Manyana项目，该项目展示了基于CRDT（无冲突复制数据类型）的版本控制系统未来愿景。其核心创新在于CRDT能保证合并永不失败，无论合并顺序如何都能产生一致结果。这一根本性变革带来了几项关键改进：

1.  **更优的冲突呈现：** 冲突不再以难以理解的代码"块"呈现，而是通过结构化、信息丰富的标注清晰展示每位贡献者的修改（例如"左侧删除"、"右侧新增"），使冲突更易于理解和解决。

2.  **简化的操作流程：** 系统在文件结构内部维护完整的历史变更"编织记录"。这消除了合并时对DAG中寻找共同祖先的复杂依赖，并支持一种"变基"操作——可在不破坏原始历史的前提下重放提交记录。

3.  **连贯的系统设计：** 该项目解决了以往阻碍CRDT在版本控制中应用的细微用户体验问题，证明了基于CRDT的系统能够处理实际场景，并在冲突处理和历史管理方面提供了比Git等现有工具更优的解决方案。

Manyana目前作为概念验证演示（文件操作部分仅用470行Python实现），虽非完整系统，但为构建功能完备的CRDT版本控制系统勾勒出了引人注目且切实可行的设计蓝图。

---

## 3. OpenClaw是披着白日梦外衣的安全噩梦。

**原文标题**: OpenClaw Is a Security Nightmare Dressed Up as a Daydream

**原文链接**: [https://composio.dev/content/openclaw-security-and-vulnerabilities](https://composio.dev/content/openclaw-security-and-vulnerabilities)

本文认为，虽然OpenClaw（一款基于人工智能的自主代理）代表了自动化领域的重大飞跃，但它带来了严重的安全风险，对大多数用户而言具有危险性。

其“美好愿景”体现在能够管理电子邮件、日历、智能家居设备等，并学习和创建复杂的工作流程。然而，这在安全和隐私方面付出了“浮士德式”的代价。

其核心“噩梦”源于三个关键漏洞：
1.  **技能中心风险：** 其开放的“技能”（插件）市场缺乏安全审查，成为恶意软件和供应链攻击的主要载体，可能窃取凭证和数据。
2.  **永久性提示注入：** 由于OpenClaw会读取电子邮件和消息，发送给它的任何恶意指令都可能劫持该代理，而该代理拥有对用户系统和数据的广泛访问权限。
3.  **受威胁的集成与令牌：** 通过连接Gmail和Slack等服务，它创造了巨大的攻击面。一旦被攻破，攻击者可以窃取存储的OAuth令牌，并在所有连接的平台上直接冒充用户。

作者总结道，其底层技术本质上不安全，生态系统不成熟，且对普通消费者而言，当前的风险远大于收益。

---

## 4. 代码已死的报道被大大夸大了。

**原文标题**: Reports of code's death are greatly exaggerated

**原文链接**: [https://stevekrouse.com/precision](https://stevekrouse.com/precision)

本文认为，关于人工智能将使编程过时的预测为时过早且存在误导。作者承认，AI工具确实催生了“氛围编程”——开发者可以用自然语言描述意图来生成代码。然而，这制造了一种精确性的假象；复杂系统（如协同文本编辑器）终将证明，模糊的需求描述必然导致大规模的错误与故障。

核心论点是：代码的首要价值不仅在于产出软件，更在于创建能够管理复杂性的精确抽象。人脑一次只能处理有限的概念，因此抽象对于构建和理解复杂系统至关重要。作者主张，即使未来出现通用人工智能（AGI），其目标也不会是消灭代码，而是运用更高级的智能来创造更优秀、更优雅的抽象与框架。

文章最终指出，AI非但不会终结代码，反而会成为其最大的助力。它将把编程从机械性劳动提升为一门更高层次的学科，专注于架构的清晰性，并通过形式化方法驾驭复杂性——正如印刷术未曾终结故事讲述，而是将其推向更广阔的天地。

---

## 5. 项目游牧者——永不离线的知识

**原文标题**: Project Nomad – Knowledge That Never Goes Offline

**原文链接**: [https://www.projectnomad.us](https://www.projectnomad.us)

项目NOMAD是一款免费开源的离线服务器软件，集成了无需网络连接即可运行的核心知识与工具。它专为应急准备、离网生活、技术爱好者和教育场景设计。

其核心系统整合了多个主要组件：一个通过Kiwix构建的信息库（包含维基百科、医学参考资料和指南）；一个能运行GPU加速大语言模型的本地AI助手（基于Ollama）；采用OpenStreetMap数据的完整离线地图；以及通过Kolibri搭载可汗学院课程的教育平台。

项目强调的关键优势在于成本与灵活性。与售价数百美元且锁定树莓派等特定硬件的商业竞品不同，项目NOMAD完全免费（采用Apache 2.0许可证），可安装在任何性能足够的电脑上，从而支持更强大、可升级的系统。其安装流程被宣传为简单易行，在Ubuntu或Debian Linux系统上仅需两条命令即可完成。

该项目由社区资助，致力于实现真正的数字独立，确保无论网络是否可用，关键信息和AI工具都能持续访问。

---

## 6. Flash-MoE：在笔记本电脑上运行3970亿参数模型

**原文标题**: Flash-MoE: Running a 397B Parameter Model on a Laptop

**原文链接**: [https://github.com/danveloper/flash-moe](https://github.com/danveloper/flash-moe)

Flash-MoE是一款纯C/Metal推理引擎，可在配备48GB内存的MacBook Pro上运行3970亿参数的专家混合模型。它通过按需从SSD流式加载209GB模型，实现每秒超过4.4个token的生产级输出质量，包括工具调用功能。

其核心创新在于简化的流水线设计：仅通过并行读取从SSD加载每层的四个活跃专家（每个约6.75MB），并依赖操作系统页缓存进行管理而非自定义方案。关键优化包括：采用FMA优化的反量化内核使GPU计算提速12%，针对关键操作手工调优Metal着色器。该架构将GPU工作延迟至与CPU准备阶段重叠，最大化硬件利用率。

项目测试了58种方案，最终摒弃了增加开销的复杂缓存、预取和压缩机制。最终系统采用简单的串行流水线（GPU→SSD→GPU），这在苹果芯片统一内存架构中被证明是最优方案——并发SSD与GPU访问会产生资源争用。

最终成果是一个稳定、内存安全的引擎，仅占用约6GB内存，其余空间留给系统缓存。这证明通过极简且硬件感知的设计，在消费级硬件上运行超大规模模型是可行的。

---

## 7. 在微软运营系统阅读小组的五年历程

**原文标题**: Five Years of Running a Systems Reading Group at Microsoft

**原文链接**: [https://armaansood.com/posts/systems-reading-group/](https://armaansood.com/posts/systems-reading-group/)

本文详细介绍了作者自2021年起在微软主持系统阅读小组五年的经历。该小组最初专注于数据库内部原理，后自然扩展至内存管理、共识协议、数据中心基础设施等更广泛的系统主题，最终更名为“微软系统阅读小组”。

主要经验包括：从小规模起步并保持稳定的会议节奏，允许讨论范围自然延伸，以及从单篇论文阅读转向专题导读以实现深度学习。作者强调组织者无需是领域专家，拥有共同组织者对小组持续运作至关重要，且会议应确保未提前阅读材料的成员也能参与。

除持续学习的显性收益外，作者特别指出小组促进了与公司内众多充满好奇心的工程师和研究人员的深度联结，极大丰富了职业与个人网络。文章最后鼓励读者以简单、低门槛的方式创办类似小组。

---

## 8. MAUI即将登陆Linux

**原文标题**: MAUI Is Coming to Linux

**原文链接**: [https://avaloniaui.net/blog/maui-avalonia-preview-1](https://avaloniaui.net/blog/maui-avalonia-preview-1)

阿瓦洛尼亚团队宣布推出.NET MAUI的预览版后端，使开发者能够利用阿瓦洛尼亚的绘制式UI框架，将MAUI应用程序部署到Linux和WebAssembly平台。这一集成提供了一致的跨平台外观与体验，与MAUI原生控件形成互补。

入门步骤包含四个环节：创建MAUI应用、添加`Avalonia.Controls.Maui.Desktop` NuGet包、将目标框架设置为`net11.0`，以及配置`MauiBuilder`。该项目还推动了阿瓦洛尼亚自身的改进，例如在阿瓦洛尼亚12中引入了新的导航API。

团队通过移植多个现有MAUI应用验证了后端功能，包括控件库和复杂应用如AlohaAI与MyConference，证明了功能对等性。该方案支持`GraphicsView`和`SkiaSharp.Views.Maui`等关键MAUI特性，使得许多现有库无需修改即可运行。

未来计划包括构建基于阿瓦洛尼亚的`Maui.Essentials`实现，并启用WinUI互操作性。此次发布为MAUI开发者提供了新选择，帮助他们在更广泛的平台上实现视觉一致性。

---

## 9. 教克劳德如何进行移动应用的质量保证

**原文标题**: Teaching Claude to QA a mobile app

**原文链接**: [https://christophermeiklejohn.com/ai/zabriskie/development/android/ios/2026/03/22/teaching-claude-to-qa-a-mobile-app.html](https://christophermeiklejohn.com/ai/zabriskie/development/android/ios/2026/03/22/teaching-claude-to-qa-a-mobile-app.html)

本文详细介绍了作者使用Capacitor为跨平台移动应用（Zabriskie）构建自动化质量保证的实践经验。核心挑战在于Capacitor基于WebView的方案造成的“测试无人区”——它介于网页和原生测试工具之间。

作者成功教会AI（Claude）同时测试Android和iOS版本，但这一过程凸显了平台可访问性的巨大差异。Android端非常直接（耗时90分钟），因其WebView暴露了Chrome开发者工具协议（CDP），允许通过编程直接控制导航和认证流程。

然而iOS端却如同“噩梦”（耗时超六小时），主要受限于平台约束。关键障碍包括：无法在登录字段输入“@”符号、无法移动的原生权限弹窗，以及模拟器WebView缺乏等效CDP协议。解决方案涉及后端代码修改、直接操作隐私数据库，以及通过无障碍API精确定位界面元素而非依赖坐标猜测。

文章总结了经验教训：优先选择CDP而非基于坐标的点击操作；始终通过编程方式测量界面；在开发环境中保持严格隔离；推送代码前务必运行测试。文末呼吁苹果公司改进模拟器WebView的自动化测试工具支持。

---

## 10. 使用现代RTL工具构建FPGA版3dfx Voodoo显卡

**原文标题**: Building an FPGA 3dfx Voodoo with Modern RTL Tools

**原文链接**: [https://noquiche.fyi/voodoo](https://noquiche.fyi/voodoo)

本文详细介绍了作者使用SpinalHDL和conetrace等现代RTL工具，对3dfx Voodoo 1图形芯片进行FPGA重实现的经历。关键挑战并非简单的三角形渲染，而是精确复现该芯片复杂的固定功能流水线，包括纹理过滤与混合等操作。

作者重点阐述了实现这一目标的两个核心抽象工具。首先，SpinalHDL的`RegIf`系统能够将Voodoo芯片中需要与流水线精确同步以避免数据损坏的精细寄存器语义，直接编码到硬件描述中。其次，具备网表感知能力的查询工具conetrace，可通过追踪流水线各阶段的像素数据实现高效调试，这对解决由多个微小精度偏差而非单一重大缺陷导致的隐蔽错误至关重要。

文章最终指出，现代RTL工具并未降低Voodoo这类设计固有的复杂性，而是通过直接体现架构意图、在更高抽象层级检查执行过程，使复杂性变得可管理，从而让单个开发者也能驾驭这类原本令人望而生畏的项目。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 2 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 3 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 4 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 5 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 6 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 7 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 8 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 9 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 10 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 11 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 12 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 13 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 14 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 15 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 16 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 17 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 18 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 19 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 20 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 21 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 22 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 23 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 24 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 25 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 26 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 27 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 28 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 29 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 30 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 31 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 32 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 33 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 34 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 35 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 36 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 37 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 38 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 39 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 40 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 41 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 42 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 43 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 44 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 45 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 46 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 47 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 48 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 49 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 50 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 51 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 52 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 53 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 54 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 55 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 56 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 57 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 58 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 59 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 60 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 61 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 62 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 63 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 64 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 65 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 66 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 67 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 68 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 69 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 70 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 71 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 72 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 73 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 74 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 75 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 76 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 77 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 78 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 79 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 80 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 81 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 82 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 83 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 84 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 85 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 86 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 87 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 88 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 89 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 90 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 91 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 92 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 93 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 94 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 95 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 96 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 97 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 98 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 99 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 100 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 101 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 102 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 103 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 104 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 105 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 106 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 107 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 108 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 109 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 110 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 111 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 112 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 113 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 114 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 115 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 116 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 117 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 118 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 119 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 120 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 121 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 122 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 123 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 124 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 125 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 126 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 127 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 128 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 129 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 130 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 131 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 132 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 133 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 134 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 135 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 136 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 137 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 138 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 139 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 140 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 141 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 142 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 143 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 144 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 145 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 146 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 147 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 148 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 149 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 150 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 151 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 152 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 153 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 154 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 155 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 156 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 157 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 158 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 159 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 160 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 161 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 162 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 163 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 164 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 165 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 166 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 167 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 168 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 169 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 170 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 171 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 172 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 173 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 174 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 175 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 176 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 177 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 178 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 179 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 180 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 181 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 182 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 183 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 184 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 185 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 186 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 187 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 188 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 189 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 190 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 191 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 192 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 193 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 194 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 195 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 196 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 197 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 198 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 199 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 200 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 201 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 202 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 203 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 204 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 205 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 206 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 207 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 208 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 209 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 210 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 211 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 212 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 213 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 214 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 215 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 216 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 217 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 218 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 219 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 220 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 221 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 222 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 223 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 224 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 225 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 226 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 227 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 228 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 229 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 230 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 231 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 232 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 233 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 234 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 235 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 236 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 237 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 238 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 239 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 240 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 241 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 242 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 243 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 244 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 245 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 246 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 247 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 248 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 249 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 250 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 251 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 252 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 253 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 254 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 255 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 256 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 257 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 258 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 259 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 260 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 261 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 262 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 263 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 264 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 265 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 266 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 267 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 268 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 269 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 270 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 271 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 272 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 273 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 274 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 275 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 276 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 277 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 278 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 279 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 280 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 281 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 282 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 283 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 284 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 285 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 286 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 287 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 288 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 289 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 290 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 291 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 292 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 293 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 294 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 295 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 296 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 297 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 298 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 299 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 300 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 301 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 302 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 303 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 304 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 305 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 306 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 307 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 308 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 309 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 310 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 311 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 312 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 313 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 314 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 315 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 316 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 317 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 318 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 319 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 320 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 321 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 322 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 323 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 324 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 325 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 326 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 327 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 328 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 329 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 330 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 331 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 332 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 333 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 334 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 335 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 336 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 337 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 338 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 339 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 340 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 341 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 342 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 343 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 344 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 345 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 346 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 347 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 348 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 349 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 350 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 351 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 352 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 353 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 354 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 355 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 356 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 357 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 358 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 359 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 360 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 361 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 362 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 363 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 364 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 365 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
