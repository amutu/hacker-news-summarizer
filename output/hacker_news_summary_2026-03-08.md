# Hacker News 热门文章摘要 (2026-03-08)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 框架书

**原文标题**: FrameBook

**原文链接**: [https://fb.edoo.gg](https://fb.edoo.gg)

本文详述了一个个人改造项目：将一台2006年的黑色聚碳酸酯MacBook（A1181）改装为搭载现代组件的“框架之书”。创作者用Framework Laptop 13主板（Intel i7-1280P处理器）、64GB内存、新显示屏及其他现代外设，替换了原机已失效的内部元件。

关键改造包括：通过焊接USB线缆使原装苹果键盘/触控板恢复功能；设计并3D打印定制支架与I/O挡板，将新USB集线器嵌入旧接口位置；安装定制LED灯以重现标志性的发光苹果标志。整个构建过程需要彻底拆解机身、精密规划元件布局，并通过创造性解决方案将新硬件融入经典外壳。

这项历时约三个月的项目，让创作者在实践中掌握了焊接与3D建模技能。尽管改造成功，作者也指出了未来可改进之处，例如为I/O接口设计定制电路板而非使用改装集线器。最终成品是一台功能完备的现代笔记本电脑，完美封装在初代MacBook备受喜爱的经典设计之中。

---

## 2. 你为什么不会调吉他？（2019）

**原文标题**: Why can't you tune your guitar? (2019)

**原文链接**: [https://www.ethanhein.com/wp/2019/why-cant-you-tune-your-guitar/](https://www.ethanhein.com/wp/2019/why-cant-you-tune-your-guitar/)

这篇文章解释了吉他为何无法完美调音，其根源在于谐波的数学原理。当琴弦振动时，会产生一个基音以及一系列频率为基频整数倍的谐波（泛音）。西方音乐中最和谐的音程——如八度（2:1）、纯五度（3:2）和大三度（5:4）——正是源自这些简单的整数比。

问题在于，若试图从单一基准音出发，反复运用这些比例构建完整的调音体系，由于质数3和5无法互相整除，通过乘以3（生成五度音）和乘以5（生成三度音）产生的音符最终会发生冲突，导致同一音符出现细微差异的版本（例如两个不同的E音）。这使得从数学上无法将吉他调至所有音程与和弦同时完全和谐：调整一根琴弦以修复与另一根的关系时，必然会使其他弦对的音准出现偏差。

为此，西方音乐采用了十二平均律（12-TET）。该体系将八度音程均分为12个半音，每个半音的频率乘以2的12次方根。虽然这使所有八度音程保持完美，却轻微牺牲了纯五度和大三度的精确性，使它们均匀地略微偏离纯律。这种折衷的益处在于所有调性都能平等演奏，从而实现了现代音乐中复杂的和声与转调——尽管没有任何音程是绝对“纯粹”的。

---

## 3. WSL管理器

**原文标题**: WSL Manager

**原文链接**: [https://github.com/bostrot/wsl2-distro-manager](https://github.com/bostrot/wsl2-distro-manager)

**WSL管理器**是一款免费开源的图形化应用程序，用于管理Windows Subsystem for Linux（WSL）发行版。它通过用户友好的界面简化了安装、卸载、更新、备份和恢复WSL实例等任务。

主要功能包括：无需Docker即可下载并运行Docker镜像作为WSL实例、执行预定义的快速配置脚本，以及实验性使用LXC容器（如Turnkey WordPress）。它还支持自定义系统镜像仓库，并能在多台机器间共享发行版。

该应用程序可通过**Microsoft Store**安装，或从其GitHub发布页面直接下载，亦可通过社区维护的包管理器（如Chocolatey）获取（注意：Winget软件包已过时）。其工作流还提供每日构建版本。

该应用基于Flutter构建，开发者启用Windows桌面支持后，运行标准Flutter构建命令即可编译。项目由Eric Trenkel主导，欢迎社区贡献，并采用**GPL-3.0**许可证。

---

## 4. 活人脑细胞在CL1上运行《毁灭战士》[视频]

**原文标题**: Living human brain cells play DOOM on a CL1 [video]

**原文链接**: [https://www.youtube.com/watch?v=yRV8fSw6HaE](https://www.youtube.com/watch?v=yRV8fSw6HaE)

**摘要：**

一段视频展示了一项新颖的实验，其中使用实验室培养并与微电极阵列相连的活体人类脑细胞来玩经典电子游戏《毁灭战士》。该系统被称为"DishBrain"，涉及一个与计算机接口的脑细胞团（脑类器官）。

其关键机制在于：细胞接收代表游戏环境（如敌人位置）的电输入信号。神经元随后产生反应并放电，它们的电活动被计算机解读为移动指令（如向左或右移动）。本质上，这个活体神经网络充当了游戏控制器，通过反馈学习来执行在游戏世界中导航的基本任务。

这项由Cortical Labs的科学家开发的实验，是合成生物学和生物计算领域的一个重要概念验证。其主要目的并非娱乐，而是研究。它提供了一个研究神经网络如何学习、处理信息和适应的平台，可能为理解大脑功能和探索计算新途径提供见解。该视频突显了生物学与技术引人注目的交叉点，即人类神经元被用于实时与数字环境互动。

---

## 5. LibreOffice Writer现已支持Markdown格式

**原文标题**: LibreOffice Writer now supports Markdown

**原文链接**: [https://blog.documentfoundation.org/blog/2026/02/04/libreoffice-26-2-is-here/](https://blog.documentfoundation.org/blog/2026/02/04/libreoffice-26-2-is-here/)

LibreOffice发布了其免费开源办公套件的26.2版本。本次更新重点提升日常工作效率，通过更优的性能表现、更流畅的复杂文档处理能力，以及增强与其他办公软件文件的兼容性来实现这一目标。

新版的核心功能之一是为Writer文字处理软件新增了Markdown格式的导入与导出支持。此次发布还包含精心优化的用户界面、对开放文档标准的扩展支持，以及由社区贡献的数百项错误修复，显著提升了软件稳定性。

文档基金会强调，这个由全球社区构建的版本始终将用户控制权与自由放在首位——提供无需订阅、无需许可费、不收集数据的现代化办公套件。该版本支持Windows、macOS和Linux系统，提供超过120种语言版本。

用户可从官方网站下载LibreOffice 26.2，并可通过反馈建议或捐赠支持该项目的独立发展。

---

## 6. 关于编写基于Rust的Wasm的笔记

**原文标题**: Notes on writing Rust-based Wasm

**原文链接**: [https://notes.brooklynzelenka.com/Blog/Notes-on-Writing-Wasm](https://notes.brooklynzelenka.com/Blog/Notes-on-Writing-Wasm)

本文分享了使用`wasm-bindgen`编写基于Rust的WebAssembly（Wasm）的实用模式，以减少摩擦并规避常见陷阱。核心建议是围绕工具的限制来组织代码结构。

关键建议包括：
*   **按引用传递：** 在Wasm边界传递导出类型时，默认使用`&reference`，以避免意外消耗并使JS端句柄失效。
*   **采用内部可变性：** 优先使用`Rc<RefCell<T>>`或`Arc<Mutex<T>>`而非`&mut`，以安全处理JavaScript的可重入和异步特性。
*   **采用清晰的命名约定：** 为Rust导出的类型添加`Wasm*`前缀，为JS导入的接口添加`Js*`前缀，以便在思维上跟踪所有权和来源。
*   **避免句柄的`Copy`：** 不要在导出的包装类型上派生`Copy`，以防止意外复制不透明句柄。
*   **对集合使用`wasm_refgen`：** 使用`wasm_refgen`宏或手动模式来绕过传递非基本类型切片/向量的限制，通过`.into()`实现符合人体工学的转换。
*   **自动转换Rust错误：** 使用`js_sys::Error`实现`From<YourError> for JsValue`，确保Rust错误在JS端能正确暴露。

总体目标是更清晰地区分Rust和JavaScript的内存模型，使边界更安全、更可预测，同时充分利用编译时检查。

---

## 7. 如果苹果二代机采用了场序制会怎样？

**原文标题**: What if the Apple ][ had run on Field-Sequential?

**原文链接**: [https://nicole.express/2026/the-apple-that-wasnt.html](https://nicole.express/2026/the-apple-that-wasnt.html)

本文探讨了一个假设性的历史替代场景：苹果][电脑原本是为场序彩色电视标准设计的，而非历史上的NTSC复合系统。关键的历史分歧点在于朝鲜战争的避免——这场战争在现实中导致CBS场序系统（一种采用144Hz、405行扫描线及旋转色轮的技术）在1950年代初未能普及。

在这个时间线中，作者构想了一台“哥伦比亚][”电脑。由于不同视频标准的分辨率较低（405隔行扫描线），以及6502 CPU和当时DRAM的技术限制，其逐行显示模式下的画面将呈现为粗糙的147x176像素。文本模式则被压缩为每行21字符、共22行的狭窄界面。

与苹果][最大的技术差异在于：这台电脑计划增加一个与144Hz场频同步的硬件中断（IRQ）。该设计能让软件识别当前正在绘制的色彩场（红、绿或蓝）。通过在这三个色彩场期间快速切换电脑的两个图形页面，程序员可以创造出有限制的色彩效果，模拟特定调色板（如红/青色）的平面图形。而更复杂的全彩图形则需要在短暂的垂直消隐间隔内进行精确的实时内存更新，这对编程提出了巨大挑战。

文章最终得出结论：在这个平行世界里，大众市场电脑将背负着比历史上苹果][逊色许多的彩色图形系统，其代价是以牺牲空间分辨率来换取时序色彩操控能力。

---

## 8. Z80 Sans – 一款字体中的反汇编器（2024）

**原文标题**: Z80 Sans – a disassembler in a font (2024)

**原文链接**: [https://github.com/nevesnunes/z80-sans](https://github.com/nevesnunes/z80-sans)

**Z80 Sans** 是一款独特的字体，其功能相当于 Z80 处理器反汇编器。通过利用 OpenType 的字形替换（GSUB）和字形定位（GPOS）表，当在文本编辑器或文字处理软件中显示时，它能自动将小写十六进制字符序列转换为对应的 Z80 汇编指令。

该项目的主要技术挑战包括处理大量可能的指令组合（超过 45 万种）、管理乱序和小端序操作数，以及正确渲染有符号偏移量。这些挑战通过编程方式解决，使用了递归下降解析器来生成所有必要的字形，并在字体数据中设置了大量的上下文链式替换规则。

开发过程中修补了 FontForge 和 fontcustom 等工具，并直接编辑了基于 XML 的 `.ttx` 格式字体文件来实现复杂的查找规则，因为更高级的特性文件格式难以集成。最终字体包含专门用于数字半字节和有符号位移的专用字形，以确保字形总数不超过 65,536 个的限制。

尽管该字体能成功反汇编完整的 Z80 指令集，但少数指令仍存在轻微的渲染问题。文章建议未来的工作可以利用 FontForge 的脚本功能或字体整形器来处理更复杂的任务。

Z80 Sans 基于 Droid Sans Mono 和 Noto Sans Mono 构建，其指令数据改编自现有的 Z80 参考资料。该字体以 Apache、OFL、LGPL 和 MIT 混合许可证发布。

---

## 9. 一篮子新品种水果即将抵达

**原文标题**: A basket of new fruit varieties is coming your way

**原文链接**: [https://www.economist.com/science-and-technology/2026/03/04/a-basket-of-new-fruit-varieties-is-coming-your-way](https://www.economist.com/science-and-technology/2026/03/04/a-basket-of-new-fruit-varieties-is-coming-your-way)

无法访问文章链接。

---

## 10. 日志信息主要是为操作你软件的人员准备的。

**原文标题**: Log messages are mostly for the people operating your software

**原文链接**: [https://utcc.utoronto.ca/~cks/space/blog/programming/LogMessagesAreForOperation](https://utcc.utoronto.ca/~cks/space/blog/programming/LogMessagesAreForOperation)

本文解释了为何访问作者博客和维基的访客可能会遇到屏蔽提示。主要原因是作者实施了反爬虫措施，以应对2025年大规模爬虫（通常用于LLM训练）的侵扰，这些爬虫使用可疑的陈旧浏览器用户代理，尤其是过时的Chrome版本。

作者澄清，使用当前浏览器但被误屏蔽的合法用户可联系作者解决，需提供浏览器详情和用户代理字符串。文中特别说明了两类情况：
1.  **Vivaldi浏览器用户**可能需要调整设置，使其浏览器标识为Vivaldi而非Chrome，以避免被屏蔽。
2.  **使用archive.today/ph/is的用户**被告知，这些服务的爬虫行为与恶意爬虫难以区分，建议改用行为更规范的archive.org。

核心信息是：此屏蔽是针对有害爬虫的防御措施，并非有意限制真实读者访问。

---

## 11. 展示 HN：Skir – 类似 Protocol Buffer，但更胜一筹

**原文标题**: Show HN: Skir – like Protocol Buffer but better

**原文链接**: [https://skir.build/](https://skir.build/)

**Skir** 是一种用于定义数据类型、常量和 API 的声明式语言，作为架构的唯一事实来源。类似于 Protocol Buffers，它允许开发者在 `.skir` 文件中编写一次架构，并为多种语言生成符合语言习惯的类型安全代码，包括 TypeScript、Python、Java、C++、Kotlin 和 Dart。

主要特性包括：
- **安全的架构演进**：内置检查机制，防止在分布式系统中修改架构时引入破坏性变更。
- **RPC 支持**：实现端到端的类型安全，允许在 Skir 中定义 API 方法并像本地函数一样调用，确保客户端与服务器之间的同步。
- **灵活的序列化选项**：包括用于紧凑数据交换的密集 JSON、用于调试的可读 JSON 以及用于高性能的二进制格式。
- **内置包管理器**：支持直接从 GitHub 仓库导入类型，便于跨项目共享代码。
- **开发者体验优化**：通过 VS Code 扩展提供实时验证、代码补全和自动格式化功能。

工作流程简洁高效：在 Skir 中定义架构，通过单一命令生成具有原生感的代码，并使用监视模式实现自动重新编译。这使得 Skir 非常适合构建前后端数据交换一致的全栈应用程序。

---

## 12. Beagle，一种存储抽象语法树（AST）的源代码管理系统。

**原文标题**: Beagle, a source code management system that stores AST trees

**原文链接**: [https://github.com/gritzko/librdx/tree/master/be](https://github.com/gritzko/librdx/tree/master/be)

Beagle是一个实验性的源代码管理系统，它将代码存储为抽象语法树（AST）而非二进制文件块。该系统作为所有代码相关数据（包括源文件、工单和CI结果）的中心数据库，使用类似RocksDB的键值存储作为后端。

其数据格式BASON是一种可合并的二进制JSON，采用CRDT（无冲突复制数据类型）原理设计，以实现更便捷的合并。该系统为自托管模式，目前处于早期开发阶段，使用需自行承担风险。

示例展示了基本命令行操作：将项目提交到存储库（`be post`）、检查数据库与本地状态（`be`）、将项目检出到工作目录（`be get`）。这些命令演示了Beagle如何通过AST结构追踪文件，在处理时列出如`.h`和`.c`等扩展名的文件。

---

## 13. 推与拉：三种响应式算法

**原文标题**: Pushing and Pulling: Three reactivity algorithms

**原文链接**: [https://jonathan-frere.com/posts/reactivity-algorithms/](https://jonathan-frere.com/posts/reactivity-algorithms/)

本文探讨了实现响应式系统的三种基本算法，通过电子表格的类比来说明核心挑战：当输入发生变化时，如何高效更新依赖单元格。

**基于推送的响应式：** 更新从变化的输入向外传播至依赖项。它是细粒度的（仅受影响节点更新），但若顺序管理不当，可能导致节点多次更新，效率低下。此外，它容易出现“毛刺”，即可能观察到中间不一致状态。

**基于拉取的响应式：** 节点从其依赖项中拉取值，类似于函数调用栈。这种方法天然无毛刺，且易于处理动态依赖。然而，默认情况下效率较低，因为它倾向于重新计算所有内容，除非配合复杂的缓存机制，并且缺乏仅更新必要节点的信息。

**推拉混合响应式：** 这种混合方法结合了两者的优势。首先，**推送阶段**标记受变化影响的“脏”节点，高效识别需要更新的子图。然后，**拉取阶段**仅重新计算这些标记节点，确保每个节点只更新一次。这种方法实现了细粒度、高效且无毛刺的更新，成为现代Web框架中的热门选择。

---

## 14. 我用M&M豆做了一门编程语言。

**原文标题**: I made a programming language with M&Ms

**原文链接**: [https://mufeedvh.com/posts/i-made-a-programming-language-with-mnms/](https://mufeedvh.com/posts/i-made-a-programming-language-with-mnms/)

这篇文章详细介绍了MNM Lang的创建过程，这是一种异想天开但功能齐全的编程语言，其源代码使用代表M&M糖果颜色的六个字母（B、G、R、Y、O、N）编写。这些字母被编译成排列好的糖果精灵PNG图像，然后可以反编译回完全相同的源代码。

关键设计选择包括按颜色家族编码指令（例如蓝色用于控制流，红色用于整数）以及通过颜色连续段的长度编码操作数。为了避免在图像中存储文本的不切实际性，字符串等运行时数据存储在单独的JSON文件中。该项目拥有完整的工具链，包括命令行界面、基于浏览器的游乐场、示例程序（如阶乘和fizzbuzz），以及一个可以从物理排列糖果的控制图像中恢复代码的照片解码器。

作者强调了愚蠢前提与严肃实现之间的平衡，包括使用AI生成糖果精灵、对它们进行标准化以确保一致性，以及编写全面的测试。最终成果是一个新颖的系统，将编程转变为一种视觉、触觉的练习，同时仍是一个技术可靠的解释器。

---

## 15. 我对Rust的“宏伟愿景”

**原文标题**: My “grand vision” for Rust

**原文链接**: [https://blog.yoshuawuyts.com/a-grand-vision-for-rust/](https://blog.yoshuawuyts.com/a-grand-vision-for-rust/)

作者对Rust的“宏伟愿景”聚焦于三大语言增强方向，旨在使其成为最安全的生产级语言。

首先，他们主张建立更强大的**效应系统**来管理“函数色彩”（如`async`、`const`、`try`）。其目标是优雅地支持更多保障，例如永不恐慌、始终终止、具有确定性或不调用宿主API的函数。

其次，他们提议将Rust的**子结构类型系统**扩展到当前仿射类型（“至多使用一次”）之外。引入线性类型（“恰好使用一次”）可防止内存泄漏，而有序类型（“按顺序恰好使用一次”）结合`!Forget`和`!Move`等特质，能保障内存地址稳定性。

第三，他们倡导**细化类型**，特别是“模式类型”，以静态验证空间内存安全性（如边界检查）。这将允许使用模式语法定义`NonZeroUsize`等类型（如`usize is 1..`），以编译时分析换取运行时安全。相关的“视图类型”还能通过推理互斥数据字段，实现更灵活的借用机制。

总体而言，作者希望通过这些先进的类型系统特性，将Rust的安全保障推向新高度，力求达到甚至超越Ada/SPARK等语言的严谨性。

---

## 16. LLM写作套路.md

**原文标题**: LLM Writing Tropes.md

**原文链接**: [https://tropes.fyi/tropes-md](https://tropes.fyi/tropes-md)

本文梳理了AI写作中常见的套路，以帮助用户识别并避免使用。这些模式被归纳为以下几类：

**用词选择：** AI过度使用特定词汇，如“悄然”“深入”“画卷”，以及“起到...作用”等浮夸表述，而非使用简单的动词。

**句子结构：** 常见模式包括否定式平行结构（“这不是X，而是Y”）、修辞性自问（“X是什么？是Y。”），以及生硬附加在句尾的浅层“-ing”短语。

**段落结构：** AI依赖简短有力的碎片化表达，并用“首先……其次……”等标签将清单式内容伪装成散文体。

**语气风格：** 这类写作常带有虚假悬念（“关键来了”）、居高临下的类比（“不妨将其视为……”）、夸大其词的重要性，以及模糊引用未具名“专家”的观点。

**格式排版：** 典型特征包括过度使用破折号、每条要点均以加粗短语开头，以及滥用特殊Unicode字符。

**篇章组织：** AI倾向于在每个层级过度总结，并让单一隐喻在全文反复出现直至乏味。

总体目标是：通过识别并避开这些陈词滥调，使AI生成的文本减少可预测性，更贴近真人写作风格。

---

## 17. LibreOffice：呼吁欧盟委员会遵循自身指导方针

**原文标题**: LibreOffice: Request to the European Commission to adhere to its own guidances

**原文链接**: [https://blog.documentfoundation.org/blog/2026/03/05/cra-guidances/](https://blog.documentfoundation.org/blog/2026/03/05/cra-guidances/)

2026年3月，LibreOffice背后的组织The Document Foundation呼吁欧盟委员会将其做法与自身的数字政策保持一致。此前，欧盟委员会在征求《网络弹性法案》（CRA）指导意见反馈时，仅提供了微软专有的.xlsx格式模板。

基金会指出，这种对封闭格式的排他性使用违背了欧盟的核心原则，包括《欧洲互操作性框架》和《开源软件战略》。这些原则倡导开放标准和供应商中立，以避免技术锁定并确保数字主权。这种做法造成了结构性偏见，实质上要求参与者必须拥有微软许可才能完整参与，从而对LibreOffice等开源软件用户造成了不利影响。

基金会要求欧盟委员会以身作则，至少在提供文件时同时采用专有格式和开放的ISO标准化开放文档格式（ODF/.ods）。这将确保所有公民和组织都能在没有技术障碍的情况下参与。

文章指出，欧盟委员会的DG CONNECT部门在24小时内做出了积极回应，增加了电子表格的ODS版本，使得原先的呼吁行动不再必要。相关存档信息被保留，以突显程序与既定政策目标保持一致的重要性。

---

## 18. 受Taskwarrior启发的命令行RSS/Atom订阅阅读器，通过Git同步

**原文标题**: CLI RSS/Atom feed reader inspired by Taskwarrior, synced using Git

**原文链接**: [https://github.com/kantord/blogtato](https://github.com/kantord/blogtato)

**Blogtato**是一款受Taskwarrior启发的命令行RSS/Atom订阅阅读器，旨在追求简洁与最小化干扰。它允许用户订阅源、使用简易查询语言（按订阅源、阅读状态或日期）筛选内容，并将文章标记为已读。

其核心特性是可选的基于Git的同步功能，无需账户、服务器或持续网络连接即可在多台设备间实现无冲突数据同步。用户可通过克隆私有Git仓库设置同步，随后使用`blog sync`命令即可同时获取新文章并推送/拉取更新。

该工具完全支持离线使用。用户可手动添加订阅源，或通过OPML文件导入来自Feedly、Inoreader等流行阅读器的订阅列表。它包含列出、分组、导出文章以及在浏览器中打开文章等命令。

Blogtato将数据存储在JSONL文件中，并秉持“完成即止”的理念——通过保持功能极简化来降低维护复杂度。其名称融合了“博客”与“土豆”，体现了务实而略带俏皮的设计风格。

---

## 19. Show HN：我构建了一个实时OSINT仪表盘，整合了15个全球实时信息源

**原文标题**: Show HN: I built a real-time OSINT dashboard pulling 15 live global feeds

**原文链接**: [https://github.com/BigBodyCobain/Shadowbroker](https://github.com/BigBodyCobain/Shadowbroker)

**ShadowBroker** 是一款基于网页的实时开源情报（OSINT）仪表板，可在交互式地图上聚合并可视化全球动态数据。该平台采用 Next.js 与 FastAPI 构建，整合超过 15 个公共数据源，实时追踪飞机、船舶、卫星、地震、冲突区域、监控网络、GPS 干扰及地缘政治事件。

核心功能包括：实时追踪商业航班、私人飞机与军用飞行器；基于 AIS 的船舶定位与航母编队监控；卫星轨道数据；以及整合 GDELT 与乌克兰前线等来源的冲突事件聚合。平台还提供监控图层，支持实时交通摄像头查看与 GPS 干扰检测系统。

平台注重性能优化，采用视窗剔除、数据压缩与聚类等技术以处理大规模数据集。用户可通过 Docker 自行部署或从源码运行，需配置 aisstream.io 与 N2YO 等服务的 API 密钥。该工具定位为面向分析师与爱好者的教育资源，仅使用公开数据，并声明禁止用于实际作战行动。

---

## 20. 荷兰国立博物馆研究人员发现伦勃朗·梵·莱因新画作

**原文标题**: Rijksmuseum researchers discover new painting by Rembrandt van Rijn

**原文链接**: [https://www.rijksmuseum.nl/en/press/press-releases/rijksmuseum-researchers-discover-new-painting-by-rembrandt-van-rijn](https://www.rijksmuseum.nl/en/press/press-releases/rijksmuseum-researchers-discover-new-painting-by-rembrandt-van-rijn)

荷兰国立博物馆的研究人员已确认画作《圣殿中的撒迦利亚异象》（1633年）为伦勃朗·凡·莱因的真迹。这一结论源于为期两年的研究，研究采用了包括材料分析和宏观X射线荧光扫描在内的先进技术，将画作的颜料、绘画技法和颜料层与伦勃朗早期阿姆斯特丹时期的特征相匹配。

这幅由私人收藏家长期出借的作品描绘了圣经中天使长加百列告知年迈祭司撒迦利亚他将得子——即施洗者约翰——的场景。在主题上，它与伦勃朗1630年至1633年间的其他宗教作品一脉相承。关键证据包括画作上的原始签名、艺术家所作的构图修改，以及树木年轮学确认了木板基底上的1633年日期。

该画作曾于1960年被排除在伦勃朗作品目录之外，并在1961年私人出售后淡出公众视野，直至现任所有者联系博物馆才重新面世。它将于2026年3月4日起在荷兰国立博物馆公开展出。

---

## 21. 黑斯廷斯战役有多重要？

**原文标题**: How important was the Battle of Hastings?

**原文链接**: [https://www.historytoday.com/archive/head-head/how-important-was-battle-hastings](https://www.historytoday.com/archive/head-head/how-important-was-battle-hastings)

《历史今日》的这篇文章对黑斯廷斯战役（1066年）在英国历史中的关键地位提出探讨。文章呈现了一场学术争论，指出虽然19世纪盛行“单场战役改变历史”的观点，但诺曼征服的深远影响确有同期史料支撑。

文中引用的关键证据来自11世纪末执事长赫尔曼的记载：“法兰西习俗自此植根英格兰”，这表明诺曼胜利带来的变革在当时已获得直接认知。

核心论点是这场战役确实具有根本重要性，因为这是“英格兰最后一次被外国势力征服”。此次征服引发了英国社会、政治与文化的全面重塑——诺曼统治阶层取代盎格鲁-撒克逊精英，并使英格兰与欧洲大陆的联系更为紧密。

因此文章总结道：传统赋予1066年的重大意义确有依据，它标志着一个决定性的、影响深远的政治文化分水岭。

---

## 22. 体外神经元在游戏世界中具身化时学习并表现出感知能力（2022）

**原文标题**: In vitro neurons learn and exhibit sentience when embodied in a game-world(2022)

**原文链接**: [https://www.cell.com/neuron/fulltext/S0896-6273(22)00806-6?_returnURL=https%3A%2F%2Flinkinghub.elsevier.com%2Fretrieve%2Fpii%2FS0896627322008066%3Fshowall%3Dtrue](https://www.cell.com/neuron/fulltext/S0896-6273(22)00806-6?_returnURL=https%3A%2F%2Flinkinghub.elsevier.com%2Fretrieve%2Fpii%2FS0896627322008066%3Fshowall%3Dtrue)

**《体外神经元在游戏世界中具身化时学习并展现感知能力》摘要（2022年）**

本研究证明，当提供模拟具身体验时，实验室培养的高密度人鼠神经元集群（"碟中脑"系统）能够学习并执行目标导向任务。研究人员将神经元培养物与高密度多电极阵列结合，构建了一个闭环系统，使神经元活动能够控制简化版"乒乓球"电子游戏中的球拍。

主要发现包括：
*   **学习能力：** 神经元集群仅用五分钟就学会了在乒乓球游戏中回球。它能根据感觉反馈调整行为：当未击中球时，系统会接收到可预测的均匀电刺激；而成功回球则会产生结构化的、富含反馈的活动。
*   **感知能力证据：** 作者认为，该系统展现出一种基于*自由能原理*定义的基本"感知"能力——即通过调整行为来组织感觉输入，并最小化环境中的不可预测性。神经元主动改变其活动模式以更好地响应游戏世界。
*   **机制：** 学习通过一种固有的可塑性形式发生。系统在没有外部奖励调控的情况下实现了自组织，这表明即使是非结构化的神经元网络也具有内在驱动力，以最小化其感觉输入的不可预测性。

总之，这项研究提供了概念验证，表明*体外*神经元培养物在获得模拟身体和环境时，能够表现出适应性的、类感知行为。它为研究智能、学习及感知机制建立了新模型，对神经科学、计算科学及疾病研究具有潜在意义。

---

## 23. 克劳德难以应对ChatGPT用户流失潮

**原文标题**: Claude struggles to cope with ChatGPT exodus

**原文链接**: [https://www.forbes.com/sites/barrycollins/2026/03/06/claude-struggles-to-cope-with-chatgpt-exodus/](https://www.forbes.com/sites/barrycollins/2026/03/06/claude-struggles-to-cope-with-chatgpt-exodus/)

无法访问文章链接。

---

## 24. 人类.json协议

**原文标题**: The human.json Protocol

**原文链接**: [https://codeberg.org/robida/human.json](https://codeberg.org/robida/human.json)

**《human.json协议》概述**

human.json协议是一项提案标准，旨在创建一个简洁、机器可读的`human.json`文件，并将其置于网站根目录下（例如`https://example.com/human.json`）。其主要目的是明确标识负责网站内容与运营的**具体个人**，以区别于企业或自动化实体。

协议的核心要点包括：

*   **核心目的：** 通过提供透明的个人归属信息，回答“谁在运营这个网站？”的问题，作为对现有`robots.txt`和`humans.txt`等文件的补充。
*   **文件结构：** 数据采用JSON格式，应包含`name`（姓名）、`role`（角色）和`contact`（联系方式，如邮箱、社交媒体）等基本字段。可选字段可包括`location`（所在地）、`languages`（使用语言）和`donations`（捐赠信息）。
*   **以人为本：** 该协议专为表彰**个人**而设计，而非公司、品牌或人工智能。`"name"`字段必须是个人姓名。
*   **实用价值：** 标准化格式便于工具和浏览器解析，未来可能实现诸如自动显示创建者信息、验证联系链接或在搜索结果中标注归属的浏览器扩展等功能。
*   **理念目标：** 该协议旨在通过明确且易于发现的人类作者身份，促进一个更具个性化和责任感的网络，以应对当前网络内容日益匿名化或自动化的趋势。

简而言之，human.json是一项轻量级提案，旨在标准化个人如何公开声明对其网络数字空间的所有权和责任。

---

## 25. SWE-CI：通过持续集成评估智能体维护代码库的能力

**原文标题**: SWE-CI: Evaluating Agent Capabilities in Maintaining Codebases via CI

**原文链接**: [https://arxiv.org/abs/2603.03823](https://arxiv.org/abs/2603.03823)

**《SWE-CI：通过持续集成评估智能体在代码库维护中的能力》摘要**

本文介绍了**SWE-CI**——一个旨在评估智能体长期动态代码维护能力的新基准，其超越了静态、单次的缺陷修复任务。作者指出，尽管SWE-bench等基准测试能针对独立问题检验功能正确性，但现实软件开发往往涉及长期、复杂的演进需求。

为弥补这一不足，SWE-CI基于**持续集成（CI）循环**构建，模拟了功能迭代与代码库演进的持续过程。该基准包含**100项任务**，每项均源自平均跨越**233天**、涵盖**71次连续提交**的真实仓库历史。这种结构要求智能体通过数十轮迭代分析与编码来完成任务，从而检验其长期维持代码质量及适应变更的能力。

SWE-CI的核心贡献在于评估范式的转变——从衡量短期**功能正确性**转向评估长期**可维护性**。它为研究基于大语言模型的智能体如何应对持续软件开发和仓库维护的复杂性，提供了更贴近现实且更具挑战性的环境。

---

## 26. 如何本地运行Qwen 3.5

**原文标题**: How to run Qwen 3.5 locally

**原文链接**: [https://unsloth.ai/docs/models/qwen3.5](https://unsloth.ai/docs/models/qwen3.5)

本文是一份在本地运行阿里巴巴通义千问3.5系列大语言模型的完整指南。该系列模型规模涵盖从小型（0.8B）到超大型（397B），支持256K上下文长度、多语言任务以及混合“思维链”推理模式。

推荐的主要方法是使用**llama.cpp**配合**GGUF**量化模型文件，这些文件提供多种量化规格（如4位、8位）以适应不同硬件配置。指南详细列出了各规模模型的内存需求，最小约需3GB，最大则超过500GB。

核心操作步骤包括：
1. 下载并编译最新版llama.cpp。
2. 从Hugging Face下载所需的GGUF模型文件。
3. 根据使用场景（通用对话、精确编程、推理任务）运行带有特定命令行参数的模型。

关键特性是可通过`--chat-template-kwargs`参数启用或关闭的**“思维链”模式**。文章针对思维模式与非思维模式分别提供了温度值、top_p等参数的最优设置方案。

指南还介绍了其他替代方案，包括使用**LM Studio**获得图形界面体验，以及通过**llama-server**搭建兼容OpenAI格式的API接口。文中特别说明，由于需要独立的视觉模型文件，当前暂不支持通过Ollama部署。

---

## 27. 我将Linux移植到PS5上，并将其变成了一台Steam游戏机。

**原文标题**: I ported Linux to the PS5 and turned it into a Steam Machine

**原文链接**: [https://xcancel.com/theflow0/status/2030011206040256841](https://xcancel.com/theflow0/status/2030011206040256841)

安全研究员Andy Nguyen成功将Linux移植到PlayStation 5上，将这款游戏机转变为能运行PC游戏的“Steam Machine”。他通过在PS5硬件上运行支持光线追踪的PC版《侠盗猎车手V增强版》展示了这一成果。

这一成就在社交媒体上分享后，在改装社区引发了巨大反响，为在PS5上运行非原生软件（如其他PC游戏和RPCS3等模拟器）开辟了可能性。不过，目前该破解仅限于运行旧版可破解固件的游戏机。

该消息引发了用户们的广泛反应和疑问，包括对性能（帧率）、所用Linux具体发行版、运行其他软件（如AI工具或挖矿程序）的潜力，以及是否能在Xbox上实现类似移植的询问。Nguyen还幽默地提到，他的帖子就是在PS5上撰写的，并解释由于缺少支架，他的游戏机是倒置放置的。

---

## 28. 《奥德修斯》背后的集体雄心：一场改变游戏规则的科幻实境角色扮演

**原文标题**: The Collective Ambition Behind Odysseus, a Game-Changing Sci-Fi Larp

**原文链接**: [https://mssv.net/2025/03/19/the-collective-ambition-behind-odysseus/](https://mssv.net/2025/03/19/the-collective-ambition-behind-odysseus/)

本文详细介绍了《奥德赛》的创作与愿景，这是一款受《太空堡垒卡拉狄加》启发、极具野心的大型科幻真人角色扮演游戏。该项目由芬兰非营利组织Illusia Ry制作，将一所学校改造为一艘完整的太空飞船，提供长达50小时的沉浸式体验。

其设计核心在于“精密机械”机制：玩家需完成相互依赖且时间敏感的任务（例如引擎跃迁）来推动剧情，同时交织着预先设定的深刻角色情感关系与戏剧性事件。这创造了一种融合悲伤、喜悦与高风险挑战的成人向高强度体验。

该项目是一项庞大的志愿者工程，逾200人贡献了约3万小时无偿工时，预算达19万欧元。门票（550欧元）仅勉强覆盖成本。组织架构依赖核心团队与专业分组，通过Discord和Google Drive进行协作。

尽管最初计划不再复刻，团队仍在2019年和2024年成功举办了多轮游戏。其成功促使创作者探索将《奥德赛》转型为永久性、财务可持续的运营模式，让贡献者获得报酬，这或许将为大型真人角色扮演游戏开创全新范式。

---

## 29. 云虚拟机基准测试 2026

**原文标题**: Cloud VM benchmarks 2026

**原文链接**: [https://devblog.ecuadors.net/cloud-vm-benchmarks-2026-performance-price-1i1m.html](https://devblog.ecuadors.net/cloud-vm-benchmarks-2026-performance-price-1i1m.html)

这份2026年云虚拟机基准测试对比了7家主流服务商（AWS、GCP、Azure、OCI、Akamai、DigitalOcean、Hetzner）的CPU性能与性价比，共测试44种实例类型。

**核心发现：**
*   **AMD EPYC Turin**在高性能领域表现突出，尤其在AWS C8a实例中禁用SMT时，每个vCPU可提供完整物理核心。
*   即使主流服务商也存在显著的**跨区域性能差异**，这促使我们开展更广泛的多区域测试。
*   **ARM架构应用持续扩展**，谷歌Axion、Azure Cobalt 100和Ampere AmpereOne M等新产品涌现，其中OCI的Ampere实例在性价比方面常居领先地位。
*   **Intel Emerald Rapids**在实际应用中表现不稳定，推测与睿频机制及“邻居干扰”争用有关。

**性价比洞察：**
*   **OCI**凭借丰厚的免费额度及具有竞争力的AMD Turin/Ampere定价，展现出突出价值。
*   **中小型服务商**（Akamai/Linode、Hetzner）通常为按需实例提供更优的原始性价比。
*   **预留实例/竞价实例折扣**显著改变价值格局，使主流云服务商在对稳定性要求较高的长期负载中更具竞争力。

**建议：** 虚拟机的最佳选择高度取决于具体负载需求（单线程/并行）、预算模式（按需、预留、竞价）以及对性能一致性的要求，没有任何服务商能在所有类别中全面胜出。

---

## 30. 苹果512GB Mac Studio悄然下架，低调承认内存短缺问题

**原文标题**: Apple's 512GB Mac Studio vanishes, a quiet acknowledgment of the RAM shortage

**原文链接**: [https://arstechnica.com/gadgets/2026/03/apples-512gb-mac-studio-vanishes-a-quiet-acknowledgement-of-the-ram-shortage/](https://arstechnica.com/gadgets/2026/03/apples-512gb-mac-studio-vanishes-a-quiet-acknowledgement-of-the-ram-shortage/)

苹果已悄然从其高端M3 Ultra Mac Studio桌面电脑的配置选项中移除了512GB统一内存版本，这一举动被解读为应对当前全球内存短缺的举措。尽管苹果近期的产品更新大多避免了大幅涨价，但该公司现已将256GB版Mac Studio的价格上调400美元，并从商店中撤下了顶配的512GB型号。

该配置曾是一款售价近9500美元的小众高端产品，专为需要大容量显存的AI和大语言模型开发等专业工作负载设计。其下架意味着需要如此大内存的用户现在必须购买并连接两台独立的Mac Studio才能实现同等配置。

此次短缺源于内存制造商优先为利润丰厚的人工智能数据中心芯片生产高带宽内存（HBM），从而减少了标准DRAM的供应。尽管苹果强大的采购能力提供了一定缓冲，但CEO蒂姆·库克已承认内存价格压力可能影响利润率。对于通常通过延长预计发货时间来应对供应限制而非直接取消配置选项的苹果而言，此次悄然下架产品实属罕见。

---

