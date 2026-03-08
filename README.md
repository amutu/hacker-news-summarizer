# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-08.md)

*最后自动更新时间: 2026-03-08 20:37:03*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 2 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 3 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 4 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 5 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 6 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 7 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 8 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 9 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 10 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 11 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 12 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 13 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 14 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 15 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 16 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 17 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 18 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 19 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 20 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 21 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 22 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 23 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 24 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 25 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 26 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 27 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 28 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 29 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 30 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 31 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 32 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 33 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 34 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 35 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 36 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 37 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 38 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 39 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 40 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 41 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 42 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 43 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 44 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 45 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 46 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 47 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 48 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 49 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 50 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 51 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 52 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 53 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 54 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 55 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 56 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 57 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 58 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 59 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 60 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 61 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 62 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 63 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 64 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 65 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 66 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 67 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 68 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 69 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 70 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 71 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 72 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 73 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 74 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 75 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 76 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 77 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 78 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 79 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 80 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 81 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 82 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 83 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 84 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 85 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 86 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 87 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 88 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 89 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 90 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 91 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 92 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 93 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 94 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 95 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 96 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 97 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 98 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 99 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 100 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 101 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 102 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 103 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 104 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 105 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 106 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 107 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 108 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 109 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 110 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 111 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 112 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 113 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 114 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 115 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 116 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 117 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 118 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 119 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 120 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 121 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 122 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 123 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 124 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 125 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 126 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 127 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 128 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 129 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 130 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 131 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 132 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 133 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 134 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 135 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 136 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 137 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 138 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 139 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 140 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 141 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 142 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 143 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 144 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 145 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 146 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 147 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 148 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 149 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 150 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 151 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 152 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 153 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 154 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 155 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 156 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 157 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 158 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 159 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 160 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 161 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 162 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 163 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 164 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 165 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 166 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 167 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 168 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 169 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 170 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 171 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 172 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 173 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 174 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 175 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 176 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 177 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 178 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 179 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 180 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 181 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 182 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 183 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 184 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 185 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 186 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 187 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 188 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 189 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 190 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 191 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 192 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 193 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 194 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 195 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 196 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 197 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 198 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 199 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 200 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 201 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 202 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 203 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 204 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 205 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 206 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 207 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 208 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 209 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 210 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 211 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 212 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 213 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 214 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 215 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 216 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 217 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 218 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 219 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 220 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 221 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 222 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 223 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 224 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 225 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 226 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 227 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 228 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 229 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 230 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 231 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 232 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 233 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 234 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 235 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 236 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 237 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 238 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 239 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 240 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 241 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 242 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 243 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 244 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 245 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 246 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 247 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 248 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 249 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 250 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 251 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 252 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 253 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 254 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 255 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 256 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 257 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 258 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 259 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 260 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 261 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 262 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 263 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 264 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 265 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 266 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 267 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 268 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 269 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 270 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 271 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 272 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 273 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 274 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 275 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 276 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 277 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 278 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 279 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 280 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 281 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 282 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 283 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 284 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 285 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 286 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 287 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 288 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 289 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 290 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 291 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 292 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 293 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 294 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 295 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 296 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 297 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 298 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 299 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 300 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 301 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 302 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 303 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 304 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 305 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 306 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 307 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 308 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 309 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 310 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 311 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 312 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 313 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 314 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 315 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 316 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 317 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 318 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 319 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 320 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 321 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 322 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 323 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 324 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 325 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 326 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 327 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 328 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 329 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 330 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 331 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 332 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 333 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 334 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 335 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 336 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 337 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 338 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 339 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 340 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 341 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 342 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 343 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 344 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 345 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 346 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 347 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 348 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 349 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 350 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 351 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
