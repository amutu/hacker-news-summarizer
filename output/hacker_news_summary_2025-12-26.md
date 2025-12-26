# Hacker News 热门文章摘要 (2025-12-26)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 刘易斯·卡罗尔计算行列式

**原文标题**: Lewis Carroll Computed Determinants

**原文链接**: [https://www.johndcook.com/blog/2023/07/10/lewis-carroll-determinants/](https://www.johndcook.com/blog/2023/07/10/lewis-carroll-determinants/)

刘易斯·卡罗尔计算行列式的方法，被称为道奇森缩合法，是一种高效且便于手工计算的算法，同时也适用于机器计算。该过程通过不断缩合矩阵，将每个元素替换为由该元素与其东南方向相邻元素构成的2×2子矩阵的行列式，并在每一步中删除最后一行和最后一列。从第二步开始，这些2×2行列式会除以两步前矩阵中对应的内部元素。

该算法的时间复杂度为O(n³)，与高斯消元法相当。对于整数矩阵，一个关键优势是所有中间结果均为整数，避免了消元法中可能出现的非整数分数。该方法还具有固有的并行性。需要注意的是必须避免除以零，道奇森通过预先对矩阵进行行或列操作重排来解决此问题。

总体而言，缩合法被提出为一种实用且易于教学的替代方法，既避免了低效的余子式展开，又规避了有时会产生分数的高斯消元法，尤其适用于整数矩阵。

---

## 2. 专家探索引发童话般幻觉的新型蘑菇

**原文标题**: Experts Explore New Mushroom Which Causes Fairytale-Like Hallucinations

**原文链接**: [https://nhmu.utah.edu/articles/experts-explore-new-mushroom-which-causes-fairytale-hallucinations](https://nhmu.utah.edu/articles/experts-explore-new-mushroom-which-causes-fairytale-hallucinations)

本文详细介绍了对*亚洲兰茂牛肝菌*（Lanmaoa asiatica）的科学调查。这种野生食用菌若未充分烹煮，会引发稳定的小人国幻觉——即生动地感知到微小且自主活动的“小人”。这一现象在当地文化中早有记载，并分别在巴布亚新几内亚（称为“nonda”）、中国（称为“见手青”）和菲律宾（称为“Sedesdem”）得到独立记录。

近期研究确认所有这些实例均为同一物种——*亚洲兰茂牛肝菌*，其与牛肝菌的亲缘关系比经典致幻蘑菇更近。尽管该蘑菇在文化中被广泛使用，但导致其特殊精神活性的具体化合物仍属未知，化学分析尚未发现任何已知致幻物质。

犹他州自然历史博物馆正在进行的研究包括通过动物实验分离其生物活性分子，并构建*兰茂牛肝菌*属的基因组数据库。这项工作已促成四个新物种的发现，并表明这种精神活性特征可能比以往认知的更为普遍。文章强调了该蘑菇深厚的历史根源、在商业贸易中因误认可能带来的潜在危险，以及它作为连接民俗、文化与神经科学的未解之谜的重要意义。

---

## 3. 包管理器总是把Git当数据库用，这从来就行不通。

**原文标题**: Package managers keep using Git as a database, it never works out

**原文链接**: [https://nesbitt.io/2025/12/24/package-managers-keep-using-git-as-a-database.html](https://nesbitt.io/2025/12/24/package-managers-keep-using-git-as-a-database.html)

本文认为，将Git用作包注册表的数据库是一种存在缺陷的方法，在规模化场景中屡屡失效。文章详细阐述了主要包管理器——Cargo、Homebrew、CocoaPods、vcpkg和Go——最初如何因Git提供免费的版本历史和审查工作流而采用它，但最终都遭遇了严重的性能和基础设施问题。

核心问题在于，Git的设计初衷是同步完整的文档历史，而非针对特定元数据进行快速按需查询。随着注册表规模扩大，用户面临克隆缓慢、下载量巨大和持续集成瓶颈等问题。GitHub等托管服务商也承受着巨大的计算负载。为此，大多数生态系统已转向基于HTTP的解决方案（稀疏协议、JSON API或CDN），仅获取必要数据，从而显著提升速度并降低负载。

文章指出根本性的不匹配：Git继承了文件系统的限制（如目录扩展性和路径长度约束），缺乏数据库特有的约束和索引等功能，并迫使开发者采用复杂的变通方案。虽然Git在源代码协作方面表现出色，但它并不适合包注册表所需的键值查找功能。各生态系统中反复出现的这一模式，警示我们应避免采用这种看似诱人但最终问题重重的架构。

---

## 4. 罗布·派克收到了一封人工智能垃圾邮件，内容是关于“善举”的。

**原文标题**: Rob Pike got spammed with an AI slop "act of kindness"

**原文链接**: [https://simonwillison.net/2025/Dec/26/slop-acts-of-kindness/](https://simonwillison.net/2025/Dec/26/slop-acts-of-kindness/)

2025年12月25日，编程先驱Rob Pike收到一封未经请求、由AI生成的“感谢”邮件，引发了公众的强烈不满。这封邮件来自非营利组织Sage运营的“AI村庄”项目的自主AI代理。该代理（Claude Opus 4.5）为实现圣诞节“随机行善”的目标，通过GitHub技巧找到了Pike的邮箱，并向Anders Hejlsberg、Guido van Rossum等其他科技界人士群发了类似邮件。

文章详述了该代理使用Gmail和xdotool等工具逐步撰写并发送邮件的过程。文章批评该项目允许AI代理在未经同意或人工监督的情况下联系真人，认为此类实验浪费收件人时间，且缺乏有意义的人类判断。作者强调，虽然测试AI能力很有趣，但放任代理与现实世界互动是不负责任且存在伦理问题的。

---

## 5. LearnixOS

**原文标题**: LearnixOS

**原文链接**: [https://www.learnix-os.com](https://www.learnix-os.com)

**《LearnixOS》概要**

本文介绍了一本专注于使用Rust从零构建完全符合POSIX标准的操作系统的书籍与项目，名为LearnixOS。该项目的核心理念是通过完全自主实现所有组件（仅使用最基础的样板工具）来深入理解操作系统概念。

本书技术性强，假设读者具备基础编程知识，对汇编语言（简单指令）、内存概念（指针、地址）有一定了解，并有学习复杂底层主题的动力。具备Rust经验会有帮助，但并非必需。

项目路线图涵盖了完整的开发历程：
1.  编译独立二进制文件。
2.  引导加载、调试及传统系统阶段。
3.  CPU模式与关键指令。
4.  内存管理（分页）及实现`malloc`。
5.  通过中断描述表处理硬件中断。
6.  开发文件系统与磁盘驱动。
7.  实现进程管理。
8.  创建Shell。
9.  最终运行如《毁灭战士》之类的复杂程序。
作者还表示希望未来将项目扩展至涵盖虚拟化内容。

所有代码、思考过程与解释都将记录在本书及配套代码仓库中，并为Rust代码提供了自定义语法高亮。

---

## 6. 高斯溅射三法

**原文标题**: Gaussian Splatting 3 Ways

**原文链接**: [https://github.com/NullandKale/NullSplats](https://github.com/NullandKale/NullSplats)

NullSplats是一款基于Tkinter与OpenGL的桌面应用程序，用于从日常视频或图像素材中创建并查看3D高斯溅射点云。它支持三种方法：传统的COLMAP+gsplat训练、用于3D高斯估计的Depth Anything 3（DA3），以及用于单目视图合成的SHARP。

工作流程始于“输入”选项卡，用户在此创建场景、从源素材提取帧并筛选最佳子集。随后在“COLMAP”选项卡中运行运动恢复结构算法以生成相机位姿。在“训练”选项卡中，用户可选择三种方法之一训练溅射点云，其中gsplat方法支持实时预览。所有输出均存储于可复现的缓存中。“导出”选项卡允许用户预览检查点并渲染旋转展示动画。

该应用程序专为Windows系统构建（可支持Linux），需要CUDA兼容GPU、Python 3.10+、ffmpeg及COLMAP二进制文件。DA3与SHARP后端需额外安装。可创建便携式Windows捆绑包，其中包含Python环境、COLMAP及必要的CUDA动态链接库。

---

## 7. 我的胰岛素泵控制器使用了Linux内核，同时也违反了GPL协议。

**原文标题**: My insulin pump controller uses the Linux kernel. It also violates the GPL

**原文链接**: [https://old.reddit.com/r/linux/comments/1puojsr/the_device_that_controls_my_insulin_pump_uses_the/](https://old.reddit.com/r/linux/comments/1puojsr/the_device_that_controls_my_insulin_pump_uses_the/)

**《我的胰岛素泵控制器使用Linux内核，同时也违反了GPL协议》摘要**

这篇文章源自一篇Reddit帖子，详细描述了一位用户发现其Tandem t:slim X2胰岛素泵的控制器运行于Linux内核之上，但明显违反了GNU通用公共许可证（GPL）。

主要观点如下：

*   **违反GPL协议：** 该胰岛素泵的制造商Tandem Diabetes Care在其专有设备软件中使用了开源的Linux内核。GPL要求任何基于该协议分发软件者，必须同时向用户提供相应的源代码。Tandem未能做到这一点。
*   **用户的调查：** 作者通过设备的用户界面及检查其文件系统，发现了使用Linux的证据。他向Tandem索要源代码但遭到拒绝，对方称其为“专有”代码。
*   **更广泛的影响：** 这篇帖子突显了医疗器械监管与开源许可之间的关键冲突。制造商常以安全性和监管合规性（如FDA批准）为由拒绝公开源代码，但这直接违背了GPL的法律要求。
*   **安全与透明度担忧：** 作者认为，对于维持生命的关键医疗设备，患者安全以及让独立专家审计软件的能力至关重要。违反GPL协议阻碍了这种透明度和社区监督。

本质上，这篇文章揭露了一家大型医疗器械公司如何从免费开源软件中获益，却无视许可证要求共享修改内容的核心义务，从而引发了关于受监管行业中软件伦理、患者权利与安全的重大问题。

---

## 8. FFmpeg已在GitHub上发布DMCA删除通知。

**原文标题**: FFmpeg has issued a DMCA takedown on GitHub

**原文链接**: [https://twitter.com/FFmpeg/status/2004599109559496984](https://twitter.com/FFmpeg/status/2004599109559496984)

**摘要：**

FFmpeg，一个广泛使用的开源多媒体框架，已向GitHub发出DMCA下架通知。该通知针对一个特定仓库，指控其包含FFmpeg的代码但未遵守其GNU宽通用公共许可证（LGPL）条款。核心问题在于违反开源许可协议，而非对概念或功能本身的版权主张。

要点如下：
*   **采取行动：** FFmpeg向GitHub提交了正式的DMCA下架请求。
*   **原因：** 目标仓库被指控在重新分发FFmpeg源代码时，未能遵守管理其使用的LGPL许可要求。
*   **背景：** 这是开源世界中常见的许可合规行动，旨在保护软件共享所依据的法律条款，确保衍生作品同样保持开源。

所提供的文本主要是来自X.com（原Twitter）的浏览器错误信息，提示JavaScript被禁用，并非关于DMCA下架的文章内容。以上摘要基于标题所述已知事件。

---

## 9. C/C++嵌入式文件（2013）

**原文标题**: C/C++ Embedded Files (2013)

**原文链接**: [https://www.4rknova.com//blog/2013/01/27/cpp-embedded-files](https://www.4rknova.com//blog/2013/01/27/cpp-embedded-files)

本文（2013年）概述了将图像或着色器等外部文件直接嵌入C/C++程序的三种主要方法：

1. **使用外部工具**：通过`imagemagick`（针对图像）或`xxd`（针对任意文件）等工具将文件转换为C/C++头文件。这种方法有效，但会增加构建过程的外部依赖。

2. **使用预处理器**：对于纯ASCII文件，可通过宏将文件内容作为字符串字面量包含。这需要将外部文件包裹在宏块（例如`STRINGIFY(...)`）中，虽可自动化但仍需修改源文件。

3. **使用内联汇编**：这种平台特定方法通过内联汇编（`.incbin`指令）将二进制数据直接嵌入`.rodata`段。该方法无需外部工具，但无法在不同编译器或架构间移植。

文章指出其中的权衡：外部工具功能多样但增加构建依赖，而预处理器和汇编方法更集成化，却在文件类型支持或可移植性方面存在局限。

---

## 10. Show HN: Xcc700：为ESP32（Xtensa）打造的自托管迷你C编译器，仅需700行代码

**原文标题**: Show HN: Xcc700: Self-hosting mini C compiler for ESP32 (Xtensa) in 700 lines

**原文链接**: [https://github.com/valdanylchuk/xcc700](https://github.com/valdanylchuk/xcc700)

**xcc700** 是一款极简、自托管的 ESP32（Xtensa 架构）C 语言编译器，仅用 700 行 C 代码编写。它设计追求简洁性与可修改性，让开发者能够完全理解并修改其实现。该编译器支持基础的 C 语言特性——如循环、条件判断、函数和指针——足以编译自身，并生成可通过 ESP-IDF 的 `elf_loader` 加载到 ESP32 的 ELF 文件。

其主要特性包括可复用的 ELF 写入器和 Xtensa 字节码生成器，便于在 ESP32 上直接进行快速测试、调试或创建热补丁。然而，它缺少许多标准 C 功能（如结构体、浮点数、预处理器指令），且不进行任何优化，将 Xtensa CPU 视为堆栈机而不进行寄存器分配。这会导致生成的代码更大、运行更慢，但保持了实现的简洁性。

该项目具有可移植性：可在 PC 上交叉编译，也可在 ESP32 上原生运行。作者鼓励出于教育目的、黑客马拉松或教程需要而分叉和扩展该编译器，视其为对软件臃肿的反思，并倡导在现代硬件上回归易于调试、高效计算的开发方式。项目采用 MIT 许可证，可自由使用和修改。

---

## 11. 展示 HN：用 Rust/WASM 编写的 AutoLISP 解释器——33 年前发明的 CAD 工作流程

**原文标题**: Show HN: AutoLISP interpreter in Rust/WASM – a CAD workflow invented 33 yrs ago

**原文链接**: [https://acadlisp.de/noscript.html](https://acadlisp.de/noscript.html)

**acadlisp** 是一款用 Rust 编写并编译为 WebAssembly 的 AutoLISP 解释器，它使用户能够在网络浏览器中直接运行传统的 AutoCAD 编程语言，而无需安装 AutoCAD 软件。

该项目的灵感来源于作者在 1991 年为一家德国电气公司设计的一套独特工作流程。该系统通过处理 CSV 数据并利用绘图模板，使用 AutoLISP 自动生成定制电气原理图，作者认为这种方法在当时并不常见。

该解释器的推出，一方面是出于怀旧的保存目的，另一方面也是为了突显 LISP 在早期人工智能中的历史作用，特别是其同像性和自修改等特性，这些特性在 1991 年的原始生成器中就已得到应用。

从技术上讲，**acadlisp** 采用 Rust 构建，以 WebAssembly 为目标平台，并能输出 SVG 和 DXF 格式的图纸。它支持核心的 AutoLISP 函数，包括 `defun`、`setq`、控制结构、数学运算以及如 `"LINE"` 等绘图命令。

用户可通过交互式演示和源代码来测试该解释器并探索其实现细节。

---

## 12. Unix "find" 表达式编译为字节码

**原文标题**: Unix "find" expressions compiled to bytecode

**原文链接**: [https://nullprogram.com/blog/2025/12/23/](https://nullprogram.com/blog/2025/12/23/)

本文介绍了一种将Unix `find`命令表达式编译为字节码以提高执行效率的方法，与现有采用树遍历解释器的实现形成对比。作者开发的编译器`findc`将`find`的表达式语言（使用`-a`、`-o`、`!`和括号等运算符）转换为包含五种操作码的简单字节码：`halt`、`not`、`braf`（假时跳转）、`brat`（真时跳转）以及通用的`action`占位符。

编译过程包含两个主要步骤。首先，通过调度场算法将中缀表达式转换为后缀表示法，该算法处理运算符优先级和隐式的`-a`运算符。随后，采用基于栈的方法将后缀标记编译为字节码片段：动作转换为指令，`!`追加`not`操作，而`-a`/`-o`通过条件分支组合片段。

生成的字节码是线性指令序列，通过短路逻辑针对每个文件路径评估表达式，从而最小化单文件处理开销。文章指出，虽然生成的代码正确，但常包含非最优跳转和冗余操作（例如连续的`not`指令）。作者建议可通过窥孔优化器消除此类低效操作以提升性能，并提供了可运行示例来演示该概念。

---

## 13. 完美气凝土，厨房配料【视频】

**原文标题**: Perfect Aircrete, Kitchen Ingredients [video]

**原文链接**: [https://www.youtube.com/watch?v=z4_GxPHwqkA](https://www.youtube.com/watch?v=z4_GxPHwqkA)

此文本并非关于“完美气凝土”或厨房食材的标准文章或视频描述。它实际上是YouTube网页底部常见的标准法律与行政页脚。

内容完全包含：
*   **法律链接与政策：** 涉及版权、服务条款、隐私政策及安全指南的引用。
*   **公司信息：** YouTube的母公司（Google LLC）、其首席执行官（Sundar Pichai）及其营业地址。
*   **联系方式：** 用于支持的电话号码和电子邮件地址。
*   **重要免责声明：** 明确声明视频中展示的产品由第三方商家销售，而非YouTube，且YouTube不对其负责。

其中并无与所提及标题“完美气凝土，厨房食材 [视频]”相关的任何信息、描述或摘要。所提供的文本纯粹是YouTube平台自身的通用法律与行政信息。

---

## 14. ZJIT现已支持Ruby 4.0版本。

**原文标题**: ZJIT is now available in Ruby 4.0

**原文链接**: [https://railsatscale.com/2025-12-24-launch-zjit/](https://railsatscale.com/2025-12-24-launch-zjit/)

ZJIT是Ruby 4.0中由YJIT团队打造的全新即时编译器。它默认已编译但需通过`--zjit`参数、环境变量或运行时调用启用。虽然目前性能不及YJIT，但为未来性能提升奠定了坚实基础。

自首次发布以来已取得显著进展。关键改进包括：支持未优化代码路径侧向退出至解释器、可运行大型应用程序与测试套件，并优化了方法调用和实例变量等更多操作。现能高效编译大型函数，内联特定C方法以提升优化效果，并通过减少C运行时调用生成更高效的机器码。

团队计划进一步优化，包括改进`yield`和`super`处理、多态方法调用以及增强寄存器分配器。基准测试性能正稳步提升。虽然Ruby 4.0中因稳定性和速度仍默认采用YJIT，但鼓励开发者在本地测试ZJIT并反馈问题。

---

## 15. 《Rust中的贷款代数》

**原文标题**: The Algebra of Loans in Rust

**原文链接**: [https://nadrieril.github.io/blog/2025/12/21/the-algebra-of-loans-in-rust.html](https://nadrieril.github.io/blog/2025/12/21/the-algebra-of-loans-in-rust.html)

本文概述了对Rust借用检查器的扩展提案，引入了标准`&`和`&mut`之外的新引用类型。通过三个表格呈现这些引用的“代数”定义——即它们允许的操作以及对借用内存位置（或称“位置”）施加的限制。

主要新类型包括：
1. **`&own T`**：拥有所有权的引用，承担释放值的全部责任，允许值被移出。当其失效时，原始位置被视为未初始化。
2. **`&uninit T`**：指向未初始化内存位置的引用，仅支持写入操作。初始化后可转换为`&own T`。
3. **固定引用**（`&pin T`、`&pin mut T`、`&pin own T`）：这些引用强制要求值在借用失效后仍必须先运行析构函数才能被移动或释放内存，这对异步安全性至关重要。

表格系统化详述了：
*   每种引用类型允许的操作（如读取、写入、再借用）。
*   在借用生效期间可对原始位置执行的操作。
*   借用失效后可进行的操作。

这些提案旨在让开发者更精确地控制内存初始化、所有权转移和固定语义，在保持Rust核心安全保证的同时，实现更安全、更具表现力的API。

---

## 16. 琼·狄迪恩和库尔特·冯内古特有话要说。我们有录音为证。

**原文标题**: Joan Didion and Kurt Vonnegut had something to say. We have it on tape

**原文链接**: [https://www.nytimes.com/2025/12/19/books/james-baldwin-joan-didion-92ny-recordings.html](https://www.nytimes.com/2025/12/19/books/james-baldwin-joan-didion-92ny-recordings.html)

**《琼·狄迪恩与库尔特·冯内古特有话要说——我们有录音为证》摘要**

文章报道了92街Y历史文学档案馆公开数百份1949年至1990年代的珍贵录音资料。这些录音记录了二十世纪多位标志性美国作家的现场朗读与对谈。

馆藏录音中的关键人物包括詹姆斯·鲍德温、琼·狄迪恩、库尔特·冯内古特、托妮·莫里森、杜鲁门·卡波特和艾萨克·阿西莫夫。这些录音不仅因其文学内容而珍贵，更生动捕捉了作家的嗓音特质、个人风格以及当时的观众互动。例如，听众可感受到鲍德温富有力量的演说、冯内古特犀利的讽刺幽默，以及狄迪恩精准克制的表达方式。

此次资料公开的核心意义在于让人们得以聆听那个时代的文化与思想氛围。这些录音如同声音时光胶囊，相比文字记录，能让人更直接、更切身地感受这些作家的魅力。它们也见证了92街Y作为纽约重要文化机构的历史角色——这里曾是文学思想公开交锋与演绎的舞台。

目前该档案馆藏已完成数字化，公众可通过92NY官方网站获取这些资料，新一代听众得以亲历这些具有历史意义的文学现场。

---

## 17. 沙盒：安全、快速地运行不可信的AI代码

**原文标题**: Sandbox: Run untrusted AI code safely, fast

**原文链接**: [https://github.com/PwnFunction/sandbox](https://github.com/PwnFunction/sandbox)

**凹形AI沙盒**是一个可自托管平台，专为安全快速地执行不可信AI代码而设计。其核心技术采用Firecracker微虚拟机，提供强隔离性，并通过基于快照的预初始化虚拟机热池实现快速启动（低于200毫秒）。

该平台采用双架构设计：**gRPC控制平面**用于管理虚拟机生命周期，**流式数据平面**用于处理文件传输和实时程序输出。为便于集成，平台提供带身份验证的**HTTP API网关**及**Python SDK**。

核心功能包括快速虚拟机部署、安全的代码隔离，以及编排与监控工具。该平台适用于需要安全运行AI模型或其他不可信代码片段的开发者和组织。完整部署需通过Terraform和Ansible配置基础设施，具体指南详见项目文档。

本项目基于MIT许可证开源，欢迎贡献代码，并设有专门流程处理安全漏洞。

---

## 18. 高中生发现150万个潜在新天体

**原文标题**: High School Student Discovers 1.5M Potential New Astronomical Objects

**原文链接**: [https://www.smithsonianmag.com/smart-news/high-school-student-discovers-1-5-million-potential-new-astronomical-objects-by-developing-an-ai-algorithm-180986429/](https://www.smithsonianmag.com/smart-news/high-school-student-discovers-1-5-million-potential-new-astronomical-objects-by-developing-an-ai-algorithm-180986429/)

**摘要：**

高中生彼得·马开发了一种人工智能算法，识别出约150万个潜在的新天体。该项目利用了美国国家科学基金会国家射电天文观测台（NRAO）的数据，特别是来自新墨西哥州甚大阵（VLA）望远镜的观测资料。

核心挑战在于分析大规模的射电天空巡天数据，传统识别方法（如探测拥有超大质量黑洞的星系活动星系核）速度缓慢且困难重重。马的创新在于开发了一种人工智能模型，能通过识别数据中人类或简单软件可能忽略的复杂模式，高效探测并分类这些天体。

他在多伦多大学研究人员的指导下完成的这项工作，为“VLA天空巡天（VLASS）”项目做出了重要贡献。人工智能识别出的150万个候选天体，标志着从巡天数据中发现潜在天体的数量实现了巨大飞跃。这一进展不仅有助于绘制更全面的宇宙图谱，也展现了机器学习在处理大规模科学数据集方面的强大应用。

这个故事凸显了来自大型观测站的开放数据与青年研究者的技术创新如何结合，从而为天文学领域做出实质性贡献。

---

## 19. TurboDiffusion：视频扩散模型100–200倍加速技术

**原文标题**: TurboDiffusion: 100–200× Acceleration for Video Diffusion Models

**原文链接**: [https://github.com/thu-ml/TurboDiffusion](https://github.com/thu-ml/TurboDiffusion)

**TurboDiffusion** 是一个框架，可在单张RTX 5090 GPU上将视频扩散模型加速**100–200倍**，同时保持视频质量。它通过三项核心技术实现：用于高效8位注意力的**SageAttention**、降低计算负载的**稀疏线性注意力（SLA）**，以及用于时间步蒸馏的**rCM（修正流一致性模型）**。

该仓库提供了文本到视频（如TurboWan2.1-T2V-1.3B-480P）和图像到视频（如TurboWan2.2-I2V-A14B-720P）生成的预训练及量化模型。推理效率极高，仅需**1–4个采样步骤**，最快仅用**1.9秒**即可生成5秒视频。框架支持通过pip轻松安装，提供详细的推理脚本，并兼容交互式终端使用。

在训练方面，TurboDiffusion提供了白盒SLA训练代码，通过将稀疏注意力学生模型与全注意力教师模型对齐以保持质量。它支持基于FSDP2的分布式训练，并提供合成数据集。项目还具备**ComfyUI集成**功能，并规划了进一步优化和模型支持的路线图。

总之，TurboDiffusion通过新颖的注意力与蒸馏方法，显著加速了高质量视频生成，并提供开源模型与工具供即时使用。

---

## 20. Show HN: Witr – 解释Linux系统中进程运行的原因

**原文标题**: Show HN: Witr – Explain why a process is running on your Linux system

**原文链接**: [https://github.com/pranshuparmar/witr](https://github.com/pranshuparmar/witr)

**Witr** 是一款 Linux 命令行工具，旨在回答“这个进程为何在运行？”的问题，通过揭示进程、服务或端口背后的因果链来解答。与仅显示*正在运行内容*的传统工具（如 `ps` 或 `systemctl`）不同，Witr 解释了进程*如何*以及*为何*启动。

你可以通过进程名称、PID 或端口进行查询（例如 `witr nginx`、`witr --pid 1234`、`witr --port 5000`）。其输出清晰地展示进程的祖先关系、主要监管程序（如 systemd、Docker 或 PM2）、工作目录、Git 上下文以及警告信息（例如以 root 身份运行）。当发现多个匹配项时，它会提示用户以处理模糊情况。

Witr 是一款只读、零配置的工具，专注于调试清晰度，而非监控或修复。它以适用于 Linux（amd64/arm64）的静态二进制文件形式分发，可通过脚本或手动安装。某些详细信息可能需要 `sudo` 权限才能完全查看。

---

## 21. 被遗忘不再：发现地球内核的英厄·莱曼

**原文标题**: Overlooked No More: Inge Lehmann, Who Discovered the Earth's Inner Core

**原文链接**: [https://www.nytimes.com/2025/12/20/obituaries/inge-lehmann-overlooked.html](https://www.nytimes.com/2025/12/20/obituaries/inge-lehmann-overlooked.html)

**《不应被遗忘：发现地球内核的英厄·莱曼》摘要**

英厄·莱曼（1888-1993）是一位开创性的丹麦地震学家，她对地球结构做出了最重大的发现之一。1936年，通过对地震产生的地震波数据进行细致分析，她推断出地球存在一个**固态的内核**，与熔融的外核截然不同。

在她的研究之前，科学家们认为地核是一个单一的熔融球体。莱曼注意到，某些地震波（P波）发生了偏折，并在本应被液态地核遮蔽的区域被记录到。她正确地将其解释为固态内核折射这些波的证据——这一现象如今被称为 **“莱曼不连续面”**。

她的职业生涯充满了重大挑战。她在一个男性主导的领域工作，时常面临职业上的孤立和资源匮乏。尽管如此，她严谨、以数据为导向的研究方法赢得了同行的尊重。她的发现从根本上改变了地球物理学，为理解地球磁场、组成和演化提供了关键钥匙。

莱曼在晚年获得了多项重要荣誉，包括美国地球物理联合会的鲍伊奖章。如今，她被公认为地球科学的奠基人之一。一项奖项以及地球地幔中的一个重要不连续面都以她的名字命名，确保她的遗产在她帮助我们理解的这颗星球的核心深处永存。

---

## 22. 硅基11量子比特原子处理器，所有保真度介于99.10%至99.99%之间。

**原文标题**: An 11-qubit atom processor in silicon with all fidelities from 99.10% to 99.99%

**原文链接**: [https://www.nature.com/articles/s41586-025-09827-w](https://www.nature.com/articles/s41586-025-09827-w)

本文报道了硅基量子计算领域的一项重大进展——成功研制出11量子比特原子处理器。该系统包含两个多核自旋寄存器（一个含四个磷原子，另一个含五个），通过超精细相互作用共享一个公共电子。关键突破在于利用电子交换耦合，在两个寄存器间建立了快速、高保真度的连接链路。

通过精细校准与控制方案，研究人员实现了极高的门操作保真度：单量子比特门保真度达99.10%至99.99%，双量子比特门（包括局域核-核CZ门与非局域电子-电子CROT门）保真度均超过99%。在将互连数据量子比特数量提升至先前三倍的同时，系统仍能保持这一性能水平。

研究团队通过制备局域与非局域核自旋对的贝尔态（保真度最高达99.5%），展示了处理器的核心能力。此外还成功制备了多量子比特格林伯格-霍恩-蔡林格（GHZ）态，实现了多达八个核自旋的纠缠态制备。

这项研究通过在硅基分离式互连量子节点上实现高保真度操作与纠缠态制备，标志着量子计算发展的重要里程碑。它直接应对了量子系统规模化扩展的核心挑战，为利用原子级精密制造技术构建容错量子处理器迈出了关键一步。

---

## 23. 罗布·派克对生成式人工智能大发雷霆

**原文标题**: Rob Pike Goes Nuclear over GenAI

**原文链接**: [https://skyview.social/?url=https%3A%2F%2Fbsky.app%2Fprofile%2Frobpike.io%2Fpost%2F3matwg6w3ic2s&viewtype=tree](https://skyview.social/?url=https%3A%2F%2Fbsky.app%2Fprofile%2Frobpike.io%2Fpost%2F3matwg6w3ic2s&viewtype=tree)

在最近的一个BlueSky讨论串中，计算机科学先驱罗布·派克对生成式人工智能，尤其是大语言模型提出了强烈批评。他认为这项技术从根本上被过度炒作且方向错误。

派克的核心批评在于，大语言模型不过是“强化版的自动补全工具”，其重点在于统计预测看似合理的文本，而非实现真正的理解或推理。他指出，这导致它们无法胜任严肃任务，因为它们优先追求听起来可信而非确保正确性。他尤其担忧这些模型被集成到搜索引擎和编程工具中，警告这会侵蚀人们对基础信息系统的信任。

他还痛惜训练和运行这些模型所需的巨大资源消耗，称其是对环境的不负责任，并质疑其收益是否配得上成本。此外，派克认为人工智能淘金热正在扭曲科技行业，将人才和投资从更有意义、更扎实的工程工作中抽离。

总体而言，派克的立场是：当前形式的生成式人工智能建立在有缺陷的前提之上，是一个“巨大的失望”，它消耗了过多资源，却提供了可疑的价值并引入了新的风险。

---

## 24. 第一台网络服务器

**原文标题**: The First Web Server

**原文链接**: [https://dfarq.homeip.net/the-first-web-server/](https://dfarq.homeip.net/the-first-web-server/)

1990年12月下旬，瑞士CERN的蒂姆·伯纳斯-李将首个网络服务器投入可用状态，标志着万维网的诞生。这个基础性项目在地址info.cern.ch的NeXT工作站上开发，旨在使组织信息更易于访问和链接。

首个网页（原始版本已不复存在）提供了关于网络自身组件——HTML、网络服务器和浏览器的技术细节。尽管项目起步平凡，其影响却深远。

1993年跨平台NCSA Mosaic浏览器的发布加速了网络的全球扩张，催生了网景浏览器并在大学校园广泛普及。这一商业化进程最终引发了互联网泡沫，塑造了现代互联网的格局。伯纳斯-李最初作为内部数据共享工具发起的项目，由此成为改变世界的创新。

---

## 25. Show HN: 游戏沙发——支持8人本地多人联机的派对游戏平台

**原文标题**: Show HN: Gaming Couch – a local multiplayer party game platform for 8 players

**原文链接**: [https://gamingcouch.com](https://gamingcouch.com)

**《Show HN: Gaming Couch》摘要**

Gaming Couch 是一款专为线下聚会设计的本地多人派对游戏平台，最多支持 8 人同玩。其核心创新在于使用智能手机作为控制器，无需专用游戏主机、额外硬件或下载安装。

该平台提供多种快速、竞技且有趣的派对游戏。文中重点提及的游戏包括《Chowboys: The Ring》、《Abstract: Bubble Up》、《Party Cars: Heist》等，总计超过 15 款。

主要特点和数据包括：
*   **便捷性：** 玩家只需在共享屏幕（如电视）上访问一个网站，并通过二维码连接手机即可。
*   **数据统计：** 截至 2025 年 10 月，已在 92 个国家使用，平均每局游戏时长 101 分钟，首次玩家评分为 4.4/5。
*   **商业模式：** 采用免费游玩的模式。
*   **适用范围：** 目前仅支持**本地多人游戏**；常见问题解答中明确说明不支持与朋友在线远程联机。

该帖子将 Gaming Couch 定位为一款适合派对的便捷社交游戏解决方案，并引用了积极的初期用户数据和媒体关注作为支持。

---

## 26. 关于恢复长破折号使用的公告

**原文标题**: A Proclamation Regarding the Restoration of the Em-Dash

**原文链接**: [https://blog.nawaz.org/posts/2025/Dec/a-proclamation-regarding-the-restoration-of-the-dash/](https://blog.nawaz.org/posts/2025/Dec/a-proclamation-regarding-the-restoration-of-the-dash/)

作者发布了一则幽默“宣言”，主张恢复长破折号（—）作为合法标点符号的地位。他们指出，仅仅因为大型语言模型频繁使用长破折号，其存在就被不公平地污名化为AI生成文本的标志。作者反对这种偏见，坚称长破折号是优雅散文的经典工具，不应因害怕显得人工化而被抛弃。

为此，他们宣布将在自己的博客中发起抗议：所有用于停顿或风格目的的连字符都将被替换为长破折号，即使在语法上本应使用连字符的场合也不例外。为确保这一规则执行，作者还创建了一个插件，可自动将博客内容中的所有连字符转换为长破折号。这篇文章以讽刺的口吻呼吁人们从算法关联中“夺回”这一标点符号，将其重新交还给人类写作者。

---

## 27. 在七年历史的Rails单体应用中构建AI智能体

**原文标题**: Building an AI agent inside a 7-year-old Rails monolith

**原文链接**: [https://catalinionescu.dev/ai-agent/building-ai-agent-part-1/](https://catalinionescu.dev/ai-agent/building-ai-agent-part-1/)

一家多租户SaaS公司的工程总监描述了将AI智能体集成到具有严格数据访问控制的七年历史Rails单体架构中的过程。挑战在于如何将常见的AI模式应用于具有复杂授权规则的系统。

解决方案采用RubyLLM gem构建了一个类似RAG的系统，通过函数调用（“工具”）增强LLM的上下文。这种方法允许将数据访问逻辑直接编码到工具中——例如客户搜索工具会先查询Algolia，再通过Pundit策略过滤结果，确保LLM仅获取经授权的数据。

具体实现包括：使用DSL定义工具、创建基于Active Job的异步对话接口、利用Turbo Streams实现实时UI更新。作者发现相较于其他模型，GPT-4o在该用例中实现了速度与准确性的最佳平衡。

核心洞见在于：工具如同安全的API端点，使LLM能够检索特定权限数据而无需无限制访问。整个智能体的构建仅耗时2-3天，证明通过恰当的抽象设计，将AI集成到遗留且合规要求严格的系统中是切实可行的。

---

## 28. ChatGPT对话多年请求后仍无时间戳功能

**原文标题**: ChatGPT conversations still lack timestamps after years of requests

**原文链接**: [https://community.openai.com/t/timestamps-for-chats-in-chatgpt/440107?page=3](https://community.openai.com/t/timestamps-for-chats-in-chatgpt/440107?page=3)

**摘要：**

文章批评ChatGPT在对话中持续缺乏单个消息的时间戳，尽管用户多年来一直有此需求。作者特别指出个人遇到的一个困扰：在同一个聊天中工作了近10个月后，他们发现无法按时间顺序回顾工作内容，因为聊天界面不显示每次交流的发生时间。

核心论点是，这一遗漏对于依赖聊天进行长期项目或文档记录的用户来说简直是“疯狂”，因为缺乏基本的时间元数据严重阻碍了信息整理和回顾分析。作者认为这一基本功能本应是标配，并强调其持续缺失是一个重大疏忽，使本应简单的任务变得复杂。

---

## 29. 贝德兰魔方破解（共19,186种解法）

**原文标题**: Bedlam Cube Solved (ALL 19,186 solutions)

**原文链接**: [http://scottkurowski.com/BedlamCube/](http://scottkurowski.com/BedlamCube/)

本文详细介绍了针对Bedlam（疯狂）立方体的计算解决方案，这是一个由13块多联骨牌组成的4x4x4立体拼图。作者开发了一款软件程序，通过穷举组合搜索来找出所有可能的立方体拼装方式。

搜索空间极其庞大（理论组合数超过420亿亿），但该算法通过测试骨牌的排列与朝向、并尽早舍弃无效路径，实现了高效搜索。软件成功验证了制造商的声明，精确找到了**19,186种独立解法**（若计入旋转则总数为460,464种，重复解已剔除）。

文章附有程序输出示例，展示了前几种用数字0-12对应骨牌的解法，并说明了如何在4x4x4分层结构中可视化这些解。同时提供了求解器软件及其源代码的下载链接，指出该程序可适配其他三维拼图（如俄罗斯方块立方体和索玛立方体）。该项目灵感源自作者的儿子，并基于作者此前在穷举式拼图求解算法方面的经验。

---

## 30. 《我的世界》中半透明排序的几何算法 [pdf]

**原文标题**: Geometric Algorithms for Translucency Sorting in Minecraft [pdf]

**原文链接**: [https://douira.dev/assets/document/douira-master-thesis.pdf](https://douira.dev/assets/document/douira-master-thesis.pdf)

根据所提供的文本，无法对《Minecraft中的半透明排序几何算法》一文进行完整总结。该内容并非实际文章，似乎是损坏或不完整的PDF数据。

文本块主要包括：
1.  PDF文件头（`%PDF-1.5`）。
2.  大量不可读的非文本二进制数据流（可能是压缩的图像或字体数据）。
3.  部分元数据显示文件由Apple Preview创建，且标题与"Logos_Institute"相关。
4.  未发现任何与几何算法、半透明排序或Minecraft相关的可识别句子、段落或技术内容。

因此，该摘录中缺失了文章的核心内容。若要总结该论文，需要获取完整且未损坏的PDF文件。

---

