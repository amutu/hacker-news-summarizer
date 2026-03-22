# Hacker News 热门文章摘要 (2026-03-22)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. Windows原生应用开发是一团糟

**原文标题**: Windows native app development is a mess

**原文链接**: [https://domenic.me/windows-native-dev/](https://domenic.me/windows-native-dev/)

作者是一位长期从事Windows开发的程序员，讲述了他们作为业余项目开发一款现代原生Windows实用工具（Display Blackout）时的挫败经历。他们认为Windows开发生态系统是一个支离破碎的“烂摊子”，这也解释了为什么像Electron这样的替代方案如此受欢迎。

文章追溯了Windows UI框架的曲折历史——从Win32和MFC，到.NET的WinForms、WPF、WinRT、UWP，再到如今的WinUI 3——指出每一层新框架都不完整，常常需要通过复杂的互操作回退到旧的Win32 API。对于他们这个简单的应用，像全局键盘快捷键和托盘图标这样的关键功能仍然需要低级别的P/Invoke调用，这削弱了现代框架的承诺。

作者批评了一些令人痛苦的基础性选择：C++存在内存不安全问题，依赖框架的.NET部署由于系统版本过时而不切实际，而.NET AOT则生成臃肿的二进制文件。分发也是个问题，代码签名证书价格昂贵，MSIX包的侧载体验也很差。

进一步的批评针对C#在高效Win32互操作和UI数据绑定方面缺乏语言特性，导致开发者在WPF推出数十年后仍要面对大量样板代码。总体印象是，微软已经降低了原生应用开发的优先级，许多第一方应用现在使用Web技术，使得生态系统资金不足且半途而废。

---

## 12. Verilog设计的向量化及其对验证与综合的影响

**原文标题**: Vectorization of Verilog Designs and its Effects on Verification and Synthesis

**原文链接**: [https://arxiv.org/abs/2603.17099](https://arxiv.org/abs/2603.17099)

本文介绍了一种针对Verilog硬件描述语言（HDL）设计的向量化优化方法。尽管向量化在软件编译器中常见，但通常不应用于Verilog，因为综合工具在硬件层面对标量和向量赋值采用相同处理方式。

作者的核心见解在于：向量化对**形式验证工具**具有显著优势，这类工具基于符号表示运行。通过将独立信号组合为单一向量，即使底层硬件保持不变，符号复杂度也能得到降低。

为验证此方法，论文基于CIRCT编译基础设施构建了**Verilog向量化工具**。该工具能自动识别并应用向量化模式，包括含反向值的赋值、复杂表达式及模块间连接等场景。

主要实验结果表明，使用向量化代码配合**Cadence Jasper**形式验证工具可带来显著性能提升。在1,157个设计基准测试中，向量化使Jasper的解析时间降低**28.12%**，内存消耗减少**51.30%**。

总之，这项研究表明：虽然编译器式向量化对综合过程无实质影响，但作为预处理步骤能大幅提升形式验证效率——通过简化工具分析的符号模型实现这一效果。

---

## 13. 创建系统架构图时需避免的常见错误

**原文标题**: More common mistakes to avoid when creating system architecture diagrams

**原文链接**: [https://www.ilograph.com/blog/posts/more-common-diagram-mistakes/](https://www.ilograph.com/blog/posts/more-common-diagram-mistakes/)

本文概述了创建系统架构图时应避免的七个常见错误，以防止混淆和误解。

1.  **未包含资源名称：** 标签应同时包含资源的名称（以标识其具体角色）和类型（通常由图标表示），而不仅仅是类型。
2.  **未连接的资源：** 图中的每个元素都应与其他元素相连；孤立的资源无法展示其在系统中的作用。
3.  **制作“万能”总图：** 试图在一张图中展示整个复杂系统会让人难以理解。最好将其分解为多个聚焦特定视角的图表。
4.  **传送带综合征：** 过度简化的行为图以线性方式展示数据流，歪曲了真实系统交互往复的本质。序列图是展示交互的更好选择。
5.  **无意义的动画：** 装饰性的循环动画不增加技术价值且分散注意力；除非纯粹用于营销，否则应避免使用。
6.  **扇状陷阱：** 当组件间的特定关系因通过共享中介（如消息代理）被折叠而丢失时，就会出现此问题。解决方法是详细说明中介或重新规划连接以保持清晰度。
7.  **假设AI能从源代码创建高质量图表：** 由于缺乏训练数据和策略选择不当，当前的AI工具从代码生成的图表往往模糊且不准确。有效的图表绘制仍需人工监督。

核心信息是：好的图表应优先考虑清晰度、准确性和战略重点，而非完整性或视觉花哨。

---

## 14. 我为何热爱NixOS

**原文标题**: Why I love NixOS

**原文链接**: [https://www.birkey.co/2026-03-22-why-i-love-nixos.html](https://www.birkey.co/2026-03-22-why-i-love-nixos.html)

本文阐述了作者对NixOS的推崇，其核心价值主要源于底层的Nix包管理器而非Linux发行版标签。Nix的确定性、可复现性和函数式模型构成了根本吸引力——通过单一声明式配置文件即可定义并构建整个操作系统。这消除了传统操作系统中常见的“状态堆叠”问题，使系统能够从第一性原理出发实现可理解与可复现。

文章强调的关键优势包括：能以声明式规范所有系统细节（软件包、设置、按键映射），确保配置的一致性与可移植性；赞赏NixOS的稳定性、可预测的发布周期，以及通过隔离环境（`nix shell`）进行安全实验的能力。作者同样看重Nix在macOS和Linux上的跨平台实用性，它能提供统一的工具链。

文中重点探讨了Nix与现代“LLM编程时代”的协同效应：AI编程助手可在纯净的隔离环境中配置特定工具链（如Rust、Python版本），避免污染主机系统，并通过`flake.nix`将临时实验转化为可复现成果。最后，作者更青睐Nix的确定性部署模型而非Docker，借助`dockerTools`等工具构建可靠镜像。归根结底，作者之所以热爱NixOS，是因为它在所有软件工作流中践行了声明式、可复现且稳定的哲学理念。

---

## 15. Palantir扩大英国政府业务范围，获准访问敏感金融监管局数据

**原文标题**: Palantir extends reach into British state as gets access to sensitive FCA data

**原文链接**: [https://www.theguardian.com/technology/2026/mar/22/palantir-extends-reach-into-british-state-as-it-gets-access-to-sensitive-fca-data](https://www.theguardian.com/technology/2026/mar/22/palantir-extends-reach-into-british-state-as-it-gets-access-to-sensitive-fca-data)

英国金融行为监管局（FCA）已授予美国人工智能与数据分析公司Palantir一份为期三个月的试验合同，委托其分析监管机构的敏感情报数据以协助打击金融犯罪。该合同每周价值超过3万英镑，使Palantir能够访问监管机构庞大的“数据湖”，其中包含高度机密的案件卷宗、欺诈报告、消费者投诉以及电话录音和电子邮件等通信记录。

此举引发了重大的隐私与伦理担忧。批评者指出Palantir曾与以色列军方及美国移民执法部门进行争议性合作，且已持有英国国民医疗服务体系（NHS）和国防部等公共部门的大额合同。FCA内部亦存在担忧，唯恐Palantir可能滥用反洗钱方法的相关洞察。

尽管专家承认人工智能在打击金融犯罪方面具有潜在价值，但对保障措施提出质疑。FCA声明Palantir仅在其严格管控下作为“数据处理者”运作，数据将存储于英国境内并在试验结束后销毁，且Palantir不得利用这些数据训练自身产品。然而法律专家警告，通过人工智能系统处理此类敏感个人信息本身存在隐私风险。

---

## 16. 优化的黄金标准：深入探究《过山车大亨》的内部机制

**原文标题**: The gold standard of optimization: A look under the hood of RollerCoaster Tycoon

**原文链接**: [https://larstofus.com/2026/03/22/the-gold-standard-of-optimization-a-look-under-the-hood-of-rollercoaster-tycoon/](https://larstofus.com/2026/03/22/the-gold-standard-of-optimization-a-look-under-the-hood-of-rollercoaster-tycoon/)

本文探讨了《过山车大亨》（1999年）如何通过深入的技术与设计优化实现卓越性能。一个关键因素是其采用汇编语言开发，从而实现了底层控制，不过文章指出这种影响在1999年可能比当今更为显著。

基于粉丝主导的OpenRCT2项目展开的分析揭示了多项微观优化措施。例如针对不同金额使用不同大小的数据类型，并广泛用位运算替代对2的幂次方的乘除运算。

最重要的是，游戏设计本身始终贯穿着性能考量。游客采用半随机游走机制而非复杂寻路算法，仅在进行离园等特定目标时才启动高消耗路径搜索——且这类搜索设有严格限制以防卡顿。此限制被巧妙地融入玩法：购买园区地图可提升搜索深度。同样，游戏避免了高消耗的群体模拟：游客间虽无实体碰撞，但周边密度会影响其满意度，从而以更低计算量实现相同的玩家反馈。

文章总结认为，这种由单一开发者同时担任程序员与设计师的整体性开发模式，实现了现代分工开发中难以达成的优化效果，展现了技术限制如何被创造性地融入游戏设计。

---

## 17. Cloudflare将archive.today标记为“C&C/僵尸网络”；不再通过1.1.1.2解析

**原文标题**: Cloudflare flags archive.today as "C&C/Botnet"; no longer resolves via 1.1.1.2

**原文链接**: [https://radar.cloudflare.com/domains/domain/archive.today](https://radar.cloudflare.com/domains/domain/archive.today)

根据提供的Cloudflare Radar页面，以下是情况总结：

**总结**

Cloudflare的公共DNS解析服务 **1.1.1.2** 已屏蔽域名 **archive.today**，并将其归类为“C&C/僵尸网络”威胁。该解析器属于Cloudflare的“家庭”DNS服务，其配置旨在阻止访问已知的恶意软件和钓鱼网站。

关键点如下：
*   **采取的措施：** 通过Cloudflare的1.1.1.2 DNS服务查询时，域名 `archive.today` 不再解析（返回IP地址）。
*   **原因：** 该域名被标记为“C&C/僵尸网络”威胁类别，这意味着Cloudflare的系统已将其识别为或关联到用于恶意僵尸网络活动的命令与控制服务器。
*   **具体服务影响：** 此屏蔽**仅**对明确使用 `1.1.1.2`（或 `1.0.0.2`）DNS地址的用户生效。Cloudflare的主要公共DNS解析器 `1.1.1.1` 及其他DNS服务不受此特定分类的影响。
*   **背景：** Archive.today是一个流行的公共归档服务，用于保存网页快照。此次屏蔽在用户中引起了困惑和担忧，因为该网站被广泛用于合法的归档目的。这表明分类的原因可能是恶意行为者滥用该归档服务托管钓鱼页面或恶意软件链接，而非核心服务本身具有恶意。

本质上，Cloudflare的安全过滤DNS因感知到的威胁关联而屏蔽了该域名，影响了该特定服务的用户，而更广泛的互联网用户仍可正常访问。

---

## 18. 个人计算（2022）

**原文标题**: Personal Computing (2022)

**原文链接**: [https://josh8.com/blog/personal_computing.html](https://josh8.com/blog/personal_computing.html)

在这篇2022年的博客文章中，作者哀叹“个人计算”的消逝——即一种将计算机用于个体化、创造性、充满奇妙探索的理念，它不同于专业软件工程或被动的消费主义。

核心论点是：现代编程文化已抹去业余与专业之间的界限。如今，个人在家庭环境中也感到被迫使用与工作时相同的工业级工具、基础设施和“最佳实践”，将稳健性和可扩展性置于乐趣与实验之上。这扼杀了软件成为短暂、有趣且个人化的“肥皂泡”的潜力。

作者将此与电影、音乐等其他创意领域对比，指出那些领域传统上在业余与专业工具及体验之间存在明显差距。尽管计算技术普及了强大工具的获取，但它也将企业化的限制和生产力思维强加于个人项目。

结论是矛盾的：虽然廉价而强大的计算能力赋予个人力量，但我们也可能失去定义“鲜活”生命的、充满灵魂的受限创造力。作者主张重拾个人计算，将其作为自由表达自我的渠道，而非仅仅是专业工作的缩小版。

---

## 19. 白城堡附带骰子的评测

**原文标题**: A review of dice that came with the white castle

**原文链接**: [https://boardgamegeek.com/thread/3533812/a-review-of-dice-that-came-with-the-white-castle](https://boardgamegeek.com/thread/3533812/a-review-of-dice-that-came-with-the-white-castle)

**《白城堡》随附骰子评测摘要**

本文是对桌游《白城堡》内含骰子的批评性评测。作者的核心观点是：这批骰子质量极差，严重影响了游戏的高端体验。

主要批评如下：
1.  **视觉缺陷：** 骰子存在严重的“模具溢料”问题——制造过程中产生的多余塑料在骰子边缘和数字周围形成了难看且粗糙的凸起，使其看起来和摸起来都很廉价。
2.  **功能问题：** 溢料过于突出，导致骰子无法正常滚动。它们往往滑动或骤停，而非自然翻滚，影响了投掷的公平性和物理乐趣。
3.  **审美失调：** 作者将粗制滥造的骰子与《白城堡》其他高品质配件（如木质token、厚实卡牌）进行对比，认为在整体制作精良的游戏中，这批骰子是极不合格的瑕疵品。

这篇评测既是对潜在买家关于此具体配件缺陷的警示，也是对发行方（Devir）品控的广泛批评，指出如此明显的缺陷本不应出现在此价位游戏的质检环节中。

---

## 20. 从零开始训练字体识别模型的启示

**原文标题**: Learnings from training a font recognition model from scratch

**原文链接**: [https://www.mixfont.com/blog/learnings-from-training-a-font-recognition-model-from-scratch](https://www.mixfont.com/blog/learnings-from-training-a-font-recognition-model-from-scratch)

本文详述了一位软件工程师从零开始训练名为Lens的字体识别模型的历程。该项目旨在开发一款工具，能够从任意图像中识别最接近的开源Google字体，无需手动选择字形，从而解决现有方案的局限性。

项目核心经验包括：
*   “模型”通常指包含预处理/后处理脚本的完整流程，而非单一训练文件。
*   精确定义输入（如图像中最大文字区域）与输出对模型专注度和准确性至关重要。
*   数据收集与清洗占据大部分工作量，相当于模型的“参考答案库”。
*   分离CPU与GPU任务对高效训练必不可少，CPU瓶颈会严重拖累GPU利用率。
*   从小型数据集（如5种字体）起步可实现快速迭代调试，再逐步扩展规模。
*   实际挑战如云端大数据集上传与长周期迭代管理是重大障碍。
*   即使构建出可用模型，获取用户关注与推广仍是独立且艰巨的挑战。

作者已公开全部源代码和可运行演示，并计划持续优化模型，探索AI在设计领域的其他应用。

---

## 21. 鸡蛋的二十五年

**原文标题**: 25 Years of Eggs

**原文链接**: [https://www.john-rush.com/posts/eggs-25-years-20260219.html](https://www.john-rush.com/posts/eggs-25-years-20260219.html)

本文详述了一项历时25年的个人项目：通过分析11,345张存档收据来统计鸡蛋消费情况。作者在14天内利用AI智能体（Codex和Claude）构建数据处理流程，共消耗16亿个令牌。

关键技术挑战包括分割平板扫描仪产生的“白色渐变”图像（通过Meta的SAM3解决）、校正收据倾斜角度以及提升低质量OCR识别精度。作者用PaddleOCR-VL替代Tesseract实现更清晰的文本提取，随后使用大语言模型进行结构化数据解析与分类，准确率超过99%——甚至修正了作者本人手工标注的基准数据。

对589张鸡蛋收据的最终分析显示：25年间共花费1,972美元购买8,604枚鸡蛋。该项目证明，虽然通用AI智能体擅长工具构建与逻辑推理，但处理现实世界数据仍需专业模型组合（SAM3用于图像分割、PaddleOCR用于文字识别、大语言模型用于信息提取）。

---

## 22. 土耳其咖啡？自16世纪起，它便融于水韵之中。

**原文标题**: Turkish Coffee? Since the 16th Century, It's in the Water

**原文链接**: [https://specialprojects.sprudge.com/?p=868](https://specialprojects.sprudge.com/?p=868)

本文探讨了水在土耳其咖啡历史与仪式中常被忽视的作用，尤其是在奥斯曼宫廷内。文章指出，水的品质与来源对咖啡体验的重要性不亚于咖啡豆本身。

自16世纪起，奥斯曼宫廷专门从埃于普的居米什苏尤泉取用冲泡用水，该泉水因清澈透明与象征纯净而备受珍视。一支专职队伍用特殊处理的皮囊运输泉水以防止污染，这体现了早期对水质管理的严谨态度。

在托普卡帕宫内，首席咖啡师监督着精细的制备仪式，而水在其中扮演着“沉默的主角”。文章将这一历史实践与现代精品咖啡对水化学的专注直接关联，认为奥斯曼人通过经验而非科学达成了对水质的理想追求。

最终，文章提出土耳其咖啡传统的精髓不仅在于冲泡技艺，更在于一种延续数百年的直觉认知——水是风味、仪式与健康的基础要素。

---

## 23. 反对柯里化的案例

**原文标题**: A case against currying

**原文链接**: [https://emi-h.com/articles/a-case-against-currying.html](https://emi-h.com/articles/a-case-against-currying.html)

本文反对在函数式编程中标准使用柯里化函数。虽然柯里化函数（例如 `P1 -> P2 -> R`）形式优雅，且便于对首个参数进行部分应用，但作者认为元组风格（例如 `(P1, P2) -> R`）通常更具逻辑性和实用性。

柯里化的主要优势——部分应用——可以通过简单的语法糖（如占位符 `$`）在元组风格中复现，且这种方式允许固定任意参数，而不仅是首个参数。作者指出，元组风格更能直观体现函数“输入→输出”的结构，并避免了某些尴尬的组合问题，例如将柯里化函数映射到元组列表时的情况。

文章承认柯里化形式显得“酷炫”，且在 Haskell 等语言中根深蒂固。但作者同时指出其实际缺陷，包括创建中间函数可能带来的性能开销，以及在依赖类型或证明助手等特定场景中出现的类型不匹配问题——作者在实践中曾因此不得不手动对函数进行反柯里化处理。

总之，尽管不主张彻底改造现有语言，作者鼓励在新设计中考虑元组风格，因为它提供的清晰度与灵活性，可能超越柯里化形式所追求的表面优雅。

---

## 24. 改写信息规则的IBM科学家刚刚荣获图灵奖

**原文标题**: The IBM scientist who rewrote the rules of information just won a Turing Award

**原文链接**: [https://www.ibm.com/think/news/ibm-scientist-charles-bennett-turing-award](https://www.ibm.com/think/news/ibm-scientist-charles-bennett-turing-award)

1979年10月，IBM物理学家查尔斯·H·贝内特在波多黎各的一个游泳池旁向吉尔斯·布拉萨提出了一个基于量子物理的防伪货币构想。这次偶然的相遇开启了两人长达数十年的合作，并使他们荣获2025年A.M.图灵奖——这是该奖项首次表彰量子研究领域的贡献。

他们的奠基性研究确立了“信息具有物理属性并遵循量子规律”的核心思想。其中关键突破在于：量子信息无法被复制而不产生扰动——他们将这一限制转化为强大的安全工具。这催生了1984年的BB84量子密钥分发协议，该协议允许双方生成加密密钥，并能抵御任何窃听行为，因为拦截操作必定会留下可检测的痕迹。

贝内特于1989年建造了首台实验性量子密码设备。1994年彼得·肖尔证明未来量子计算机可能破解经典加密后，他们的研究更显紧迫。如今，随着量子时代临近，他们在量子密码学与量子隐形传态领域的开创性研究，已成为该领域的智力基石，指引着构建量子安全防护与推进量子计算技术发展的方向。

---

## 25. Zero ZGC4：适用于校园及更广领域的卓越图形计算器

**原文标题**: Zero ZGC4: A Better Graphing Calculator for School and Beyond

**原文链接**: [https://www.zerocalculators.com/features](https://www.zerocalculators.com/features)

Zero ZGC4是一款新型图形计算器，旨在以比传统型号更实惠的价格提供现代性能与功能。它面向学生群体，将熟悉的布局与升级功能相结合，力求成为日常课堂使用和考试场景中的实用工具。

其主要特点包括快速绘图与计算、内置Python编程环境，以及一套涵盖绘图、统计和求解器的数学工具。硬件采用耐摔设计，配备清晰的320x240显示屏、长效电池、USB-C接口和8MB内存/存储空间，兼顾耐用性与实用性。

公司正推出早期预购优惠，用户可支付40美元预订该计算器。同时提供免费的免下载在线模拟器，方便潜在用户在购买前测试设备功能。整体而言，ZGC4以高性价比定位成为高端计算器的替代选择，让用户无需高昂花费即可获得专业级工具。

---

## 26. GrapheneOS拒绝遵守针对操作系统的新年龄验证法律。

**原文标题**: GrapheneOS refuses to comply with new age verification laws for operating system

**原文链接**: [https://www.tomshardware.com/software/operating-systems/grapheneos-refuses-to-comply-with-age-verification-laws](https://www.tomshardware.com/software/operating-systems/grapheneos-refuses-to-comply-with-age-verification-laws)

**文章摘要：GrapheneOS拒绝遵守新时代验证法规**

文章报道称，基于安卓开发的隐私导向型移动操作系统GrapheneOS的开发者已公开声明，他们不会实施任何政府强制要求的年龄验证功能。

拒绝的主要原因是这与该操作系统的核心使命存在根本冲突。GrapheneOS的构建明确旨在最大化用户隐私和安全，其开发者认为任何形式的政府强制年龄验证本质上都会损害这些原则。他们将此类要求视为一种监控和设备层面的审查。

开发者特别批评了像英国的《在线安全法案》和欧盟的《数字服务法案》这样的法律，这些法案正在对访问某些在线内容引入年龄验证要求。他们认为，遵守这些法律将迫使他们创建一个可能被利用的“后门”，从而削弱所有用户的安全性，而不仅仅是法律针对的用户。

此外，该团队强调了年龄验证技术在实践和伦理上的问题，包括不准确性、数据收集带来的隐私风险以及潜在的排斥性。他们的立场是绝对的：他们宁愿停止在强制要求此类合规的司法管辖区分发系统，也不愿损害他们对用户隐私和安全的基本承诺。

本质上，文章描绘了GrapheneOS对日益增长的全球监管趋势采取强硬、有原则的立场，将其不妥协的隐私理念置于市场准入或法律合规之上。

---

## 27. 我对Linux内核的第一个补丁

**原文标题**: My first patch to the Linux kernel

**原文链接**: [https://pooladkhay.com/posts/first-kernel-patch/](https://pooladkhay.com/posts/first-kernel-patch/)

本文详细叙述了作者首次提交Linux内核补丁的经历，该补丁修复了KVM自测工具中一个微妙的符号扩展错误。在开发虚拟机监控程序时，作者遇到CPU核心迁移期间系统崩溃的问题。根本原因被追踪到`get_desc64_base`函数，该函数用于从段描述符中提取任务状态段（TSS）基地址。

错误的发生是因为在位移操作中，小整数字段（`base1`、`base2`）被提升为32位有符号整数。如果位移后的值最高位被置位，后续转换为`uint64_t`时会触发符号扩展，从而破坏最终地址的高32位并覆盖关键的`base3`字段。这导致CPU从TSS读取到无效的内核栈地址，引发致命错误和系统崩溃。

修复方法很简单：在位移前将每个组件显式转换为`uint64_t`，避免意外的符号扩展。该补丁已提交并合并到内核中。作者指出，虽然AI工具帮助分析了日志，但未能诊断出这一底层代码问题，最终将崩溃归因于硬件故障。

---

## 28. Node.js工作线程虽存争议，却为我们带来了卓越成效。

**原文标题**: Node.js worker threads are problematic, but they work great for us

**原文链接**: [https://www.inngest.com/blog/node-worker-threads](https://www.inngest.com/blog/node-worker-threads)

Node.js的单线程事件循环可能被CPU密集型用户代码阻塞，导致心跳等关键任务失败。Inngest Connect曾遇到此问题，当用户函数独占主线程时，会引发“无可用工作线程”错误。

解决方案是使用Node.js的`worker_threads`模块，将Connect的WebSocket和心跳管理移至工作线程。每个工作线程拥有独立的事件循环，防止用户代码阻塞心跳。但工作线程与Go或Rust等语言的并发模型不同：它们需要独立的入口文件，通过序列化消息传递（非共享内存）进行通信，且内存开销显著（每个约10MB）。打包也带来挑战，工作线程文件必须明确包含在构建中。

实践中，Inngest主线程运行用户代码，工作线程处理连接逻辑，通过消息交换调用和日志信息。系统包含指数退避的重启逻辑，以从工作线程崩溃中恢复。尽管前期设计投入较大，工作线程提供了必要的隔离性，确保连接可靠性，彻底解决了Inngest用户面临的资源饥饿问题。

---

## 29. JavaScript足矣

**原文标题**: JavaScript Is Enough

**原文链接**: [https://geajs.com/](https://geajs.com/)

**概述：**

Gea 是一款轻量级、响应式的 JavaScript UI 框架，强调简洁与性能。其核心理念是“JavaScript 足矣”，无需引入信号或钩子等新概念。开发者使用标准的 JavaScript 类和函数来创建状态存储与组件，框架的编译器会在构建时自动使其具备响应性。

主要特性包括：
*   **零运行时依赖：** 整个框架压缩后仅约 13 KB（包含内置路由器）。
*   **编译时响应性：** Vite 插件通过分析代码生成精准、直接的 DOM 更新，无需虚拟 DOM 及其开销。
*   **基于代理的状态存储：** 状态通过普通类管理；修改属性（包括嵌套对象和数组）会自动触发更新。
*   **完整工具集：** 包含客户端路由器、超过 35 个无障碍 UI 组件、移动端基础组件以及 AI 助手技能。

Gea 自称是最快的编译型 UI 框架，在性能测试中领先于 Solid、Svelte、Vue 和 React。它同时支持基于类和函数的组件、细粒度的数组更新以及热模块替换。该框架为开源（MIT 许可），可通过项目脚手架快速搭建。

---

## 30. Show HN：Revise——面向文档的AI编辑器

**原文标题**: Show HN: Revise – An AI Editor for Documents

**原文链接**: [https://revise.io](https://revise.io)

**摘要：**

Revise是一款新型AI驱动的文档编辑工具，用户可利用多个主流AI模型进行文本生成与修订。其核心特点是提供来自各大AI开发商的最新模型选择：OpenAI（GPT 5.4 Mini、GPT 5.4、GPT 5.4 Pro）、Anthropic（Claude Haiku 4.5、Claude Sonnet 4.6、Claude Opus 4.6）以及xAI。这种灵活性使用户能根据具体任务需求——无论是追求速度、成本效益还是高级推理能力——选择最合适的模型。该工具以“Show HN”项目形式发布，表明它是一个新推出的社区共享创作，旨在寻求开发者和早期用户的反馈。

---

