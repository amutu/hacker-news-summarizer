# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-15.md)

*最后自动更新时间: 2026-03-15 20:39:19*
## 1. 让你的编程助手通过Chrome开发者工具MCP调试浏览器会话

**原文标题**: Let your Coding Agent debug the browser session with Chrome DevTools MCP

**原文链接**: [https://developer.chrome.com/blog/chrome-devtools-mcp-debug-your-browser-session](https://developer.chrome.com/blog/chrome-devtools-mcp-debug-your-browser-session)

本文介绍了Chrome DevTools MCP（模型上下文协议）服务器的一项新功能，允许AI编程助手直接连接并调试用户当前活跃的Chrome浏览器会话。

核心增强是`--autoConnect`选项，它使助手能够：
*   **复用现有会话**：访问需要登录的页面而无需单独凭据。
*   **调试实时会话**：调查用户正在DevTools中检查的问题，例如Elements面板中选定的DOM元素或Network面板中失败的网络请求。

要使用此功能，用户首先需要通过`chrome://inspect/#remote-debugging`在Chrome（144+版本）中启用远程调试。然后配置其MCP客户端（例如`gemini-cli`）以使用`--autoConnect`标志运行`chrome-devtools-mcp`服务器。

出于安全考虑，Chrome会为每个连接请求显示权限对话框，并在活跃的远程调试会话期间显示警告横幅。此功能是对现有MCP连接方法的补充，旨在创建一个无缝的工作流程，使开发者可以在手动调试和AI辅助调查之间切换。文章指出，这是向编程助手开放更多DevTools面板数据的第一步。

---

## 2. 英特尔傲腾的独特之处（2023）

**原文标题**: What makes Intel Optane stand out (2023)

**原文链接**: [https://blog.zuthof.nl/2023/06/02/what-makes-intel-optane-stand-out/](https://blog.zuthof.nl/2023/06/02/what-makes-intel-optane-stand-out/)

英特尔傲腾固态硬盘基于与美光共同研发的3D XPoint技术，相比传统NAND固态硬盘具有独特优势，尤其适用于专业工作负载。其核心差异点包括：超低延迟（4K读取约25微秒）、极高耐用性（每日全盘写入次数达30-100次），以及在重负载下仍能保持稳定的写入性能而不衰减。这些特性使其成为高性能数据库、虚拟桌面基础架构、Ceph/ZFS缓存层及vSAN等场景的理想选择。

尽管具备这些优势，傲腾技术仍面临每GB成本较高、存储容量低于NAND固态硬盘等挑战。2022年7月，英特尔作为战略调整的一部分停止了傲腾技术的研发，但P5800X固态硬盘与持久内存模块等产品仍在销售。文章总结指出，虽然傲腾的独特架构在需要低延迟和高耐久性的特定严苛应用场景中表现卓越，但NAND固态硬盘的快速创新与价格下降限制了其更广泛的市场普及。

---

## 3. 分离Wayland合成器与窗口管理器

**原文标题**: Separating the Wayland compositor and window manager

**原文链接**: [https://isaacfreund.com/blog/river-window-management/](https://isaacfreund.com/blog/river-window-management/)

本文介绍了Wayland合成器**river**的新架构，该架构将窗口管理器与合成器本身分离。传统上，Wayland合成器将显示服务器、合成器和窗口管理器的角色结合在一个单一的程序中，需要大量的开发工作。

新的**river-window-management-v1协议**允许独立的窗口管理器控制窗口排列、按键绑定和用户策略，而river则处理底层的渲染和输入路由。这种设计保持了Wayland的关键优势：避免了增加延迟（每个输入事件无需往返通信），并维护了“帧完美”以实现平滑的视觉过渡。

该协议使用状态机来原子性地批量处理窗口管理和渲染更新，使窗口管理器在正常使用时保持空闲，仅在需要更改时激活。这种分离降低了创建Wayland窗口管理器的门槛，允许使用高级编程语言而不会影响性能，并提高了稳定性（窗口管理器崩溃不会结束会话）。

虽然当前协议专注于传统的2D桌面，并排除了VR或复杂视觉效果（如晃动窗口）等功能，但它已经稳定，并支持了十多个兼容的窗口管理器。作者认为这是向Wayland生态系统更大多样性迈出的一步，类似于X11曾经拥有的多样性。

---

## 4. 纪念：我的博士导师约翰·W·艾迪生

**原文标题**: In Memoriam: John W. Addison, my PhD advisor

**原文链接**: [https://billwadge.com/2026/03/15/in-memoriam-john-w-addison-jr-my-phd-advisor/](https://billwadge.com/2026/03/15/in-memoriam-john-w-addison-jr-my-phd-advisor/)

本文是比尔·瓦奇对其博士导师小约翰·W·艾迪生（1930–2025）的致敬。瓦奇回忆了1966年他初到加州大学伯克利分校时，被艾迪生的逻辑课程深深吸引，由此确立了对模型论和语义学的毕生偏好。

他特别提到艾迪生卓越的指导、慷慨的时间投入以及对其博士论文的关键指引。艾迪生建议他阅读哈特利·罗杰斯的一篇论文，这启发瓦奇运用类比推理和无限博弈解决了一个难题。该方法最终成为他博士研究的基础，即现今所称的“瓦奇度”。

瓦奇深情回忆了艾迪生营造的学术氛围，包括引荐他结识塔斯基、克林、丘奇等学者。他指出，艾迪生的教导——例如将连续函数描述为“连续运行的图灵机”——直接影响了他后来在计算机科学领域的工作，尤其是数据流语言Lucid的设计。

文章结尾，瓦奇表达了艾迪生对精确性、尊重与慷慨的坚守如何持续影响着他本人及其指导学生的方式，使艾迪生的学术精神得以传承。

---

## 5. LLM架构图鉴

**原文标题**: LLM Architecture Gallery

**原文链接**: [https://sebastianraschka.com/llm-architecture-gallery/](https://sebastianraschka.com/llm-architecture-gallery/)

本页面是一个架构图库，汇总了2024年至2026年初主流开源大语言模型（LLM）的关键技术设计。它作为可视化参考，收集了标准化的技术说明图表，便于对比分析。

图库清晰展现了模型架构的演进脉络。早期的稠密模型如Llama 3和OLMo奠定了技术基线。随着DeepSeek V3率先推出大型稀疏混合专家（MoE）模型，行业出现重大转折——这类模型通过激活少量参数子集提升效率。该模板被后续旗舰模型广泛采纳，如Llama 4 Maverick和Mistral 3 Large。

进一步的创新催生了混合架构，通过融合不同注意力机制实现专项性能突破。Qwen3 Next和Kimi Linear等模型将标准注意力与高效线性变体（如DeltaNet）结合以处理长上下文；Nemotron等模型则将状态空间模型（Mamba）与Transformer架构集成。

反复出现的关键技术细节包括：采用**分组查询注意力（GQA）**或**多头潜在注意力（MLA）**提升效率，**QK归一化**增强训练稳定性，**滑动窗口注意力（SWA）**处理长上下文，以及**后归一化与前归一化**等架构选择。本图库以简明技术视角，呈现了开源大语言模型领域的发展格局与设计趋势。

---

## 6. //go:fix 内联与源码级内联器

**原文标题**: //go:fix inline and the source-level inliner

**原文链接**: [https://go.dev/blog/inliner](https://go.dev/blog/inliner)

本文介绍了Go 1.26中`go fix`命令的新特性——源码级内联器。它允许包作者通过在已弃用的函数、类型或常量上添加`//go:fix inline`指令，实现API迁移的自动化。

当运行`go fix`时，它会将对这些标记函数的调用替换为其新实现的副本，从而有效更新代码以使用现代API。例如，从`ioutil.ReadFile`迁移到`os.ReadFile`，或修正函数参数顺序。

内联器是一个复杂工具（约7000行代码），必须处理大量边界情况以确保正确性并保留程序行为。其解决的关键挑战包括：
*   **参数消除**：用实参替换形参，通常需要临时变量绑定。
*   **副作用**：保持表达式的精确求值顺序，避免改变程序语义。
*   **常量表达式**：防止原本在运行时进行的越界检查引发编译时错误。
*   **名称遮蔽**：确保内联后调用方和被调用方中的标识符仍指向正确的符号。
*   **未使用变量**：通过不消除局部变量的最后引用，避免编译器报错。

该工具已在谷歌内部广泛使用，能够实现安全、自动化的代码现代化，帮助开发者保持代码库的时效性。

---

## 7. 49兆字节的网页

**原文标题**: The 49MB Web Page

**原文链接**: [https://thatshubham.com/blog/news-audit](https://thatshubham.com/blog/news-audit)

**《49MB网页》摘要**

本文是对现代新闻网站设计的技术审计与批评，以一个实际占用49MB的新闻文章页面作为案例研究。作者剖析了因过度臃肿导致的严重性能和用户体验问题。

主要发现包括：

*   **页面体积过大：** 49MB的负载主要源于自动播放视频、高分辨率图片以及大量追踪脚本和广告。实际文章文本仅占数据总量的极小部分。
*   **性能低下：** 该页面发起了超过900次网络请求，加载时间过长，并在移动设备上消耗大量电量和处理能力。
*   **对用户的负面影响：** 这种臃肿导致体验缓慢且令人沮丧，在移动网络上尤其如此。同时，由于无处不在的追踪以及数据流量有限或使用旧设备的用户面临的可访问性问题，也引发了隐私担忧。
*   **根本原因：** 问题归咎于“广告技术复合体”——即由第三方脚本、广告网络、分析工具和社交媒体插件构成的复杂生态系统。出版商为获取收入和收集数据而嵌入这些内容，却常常缺乏充分优化。

作者总结认为，这种模式不可持续，它通过赶走读者同时损害了用户和出版商的利益。文章呼吁出版商应将核心用户体验、性能以及更高效的盈利策略置于单纯的数据收集和广告数量之上。

---

## 8. C++26：牛津可变参数逗号

**原文标题**: C++26: The Oxford Variadic Comma

**原文链接**: [https://www.sandordargo.com/blog/2026/03/11/cpp26-oxford-variadic-comma](https://www.sandordargo.com/blog/2026/03/11/cpp26-oxford-variadic-comma)

C++26将弃用在声明C风格可变参数函数参数（省略号）时不使用前置逗号的能力。目前，`void f(int, ...);`和`void f(int...);`均有效，但后者是仅存在于C++的历史遗留形式，在C语言中不被允许。

这项被称为"牛津可变参数逗号"的变更旨在提升与C语言的兼容性，减少与C++11模板参数包（使用相似的`...`语法但含义不同）的混淆，并为未来语言特性清理设计空间。例如，`void g(auto args...);`看似可变参数模板，实则是单个参数后接省略号，这是常见的误解来源。

此弃用适用于直接跟在类型后且不带逗号的省略号参数。独立省略号（`void f(...);`）仍保持有效。使用已弃用形式的现有代码不会中断，但应通过简单添加逗号进行更新，此变更可实现自动化处理。这项清理解决了尴尬的不一致性，并为未来更直观的语法铺平了道路。

---

## 9. 玻璃虫卷土重来：隐形Unicode攻击新浪潮席卷代码仓库

**原文标题**: Glassworm Is Back: A New Wave of Invisible Unicode Attacks Hits Repositories

**原文链接**: [https://www.aikido.dev/blog/glassworm-returns-unicode-attack-github-npm-vscode](https://www.aikido.dev/blog/glassworm-returns-unicode-attack-github-npm-vscode)

本文详细介绍了“玻璃虫”威胁行为者的卷土重来，该攻击者利用不可见的Unicode字符入侵开源代码库。攻击手段是将恶意代码隐藏在看似空白的字符串中，这些字符串在标准代码编辑器和审查工具中不可见。一个微小的解码函数会提取并执行这些隐藏的有效载荷，从而窃取凭据和机密信息。

2026年3月的攻击活动规模显著扩大，在3月3日至9日期间，至少入侵了151个GitHub代码库，包括Wasmer和Reworm等知名项目。攻击还蔓延至npm软件包和VS Code市场。提交的代码伪装成真实且项目特定的更改，暗示攻击者可能使用人工智能生成具有说服力的掩护代码。

文章强调，视觉审查对此类威胁无效，并推广作者所在公司Aikido作为解决方案。建议使用专门工具检测此类不可见字符注入攻击，并提及他们免费的“安全链”工具，该工具旨在阻止这类供应链攻击。

---

## 10. 从利马到里约热内卢的巴士旅行

**原文标题**: Bus travel from Lima to Rio de Janeiro

**原文链接**: [https://kenschutte.com/lima-to-rio-by-bus/](https://kenschutte.com/lima-to-rio-by-bus/)

2025年，作者完成了从秘鲁利马到巴西里约热内卢、全程3816英里的巴士之旅，共分12段行程。旅途总耗时117小时46分钟，花费约354.38美元。

路线并非直达，而是特意途经阿雷基帕、普诺、的的喀喀湖、拉巴斯、乌尤尼、波托西、苏克雷、圣克鲁斯和亚松森，最后进入巴西。作者认为这些绕道因目的地而值得。

关键实用细节包括：搭乘如Cruz del Sur、Todo Turismo等多家巴士公司；经历边境检查与偶发延误；并指出在玻利维亚，因汇率差异，使用现金比信用卡支付节省显著开支。山区路段的安全考量促使作者选择价格稍高的运营商。

总体而言，这段旅程被描述为顺畅舒适，即使穿越查科平原至亚松森的长途路段亦如此，这与先前部分负面报道相左。文章作为实用指南，辅以巴士旅途见闻与沿途壮丽风光的照片。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 2 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 3 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 4 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 5 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 6 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 7 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 8 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 9 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 10 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 11 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 12 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 13 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 14 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 15 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 16 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 17 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 18 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 19 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 20 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 21 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 22 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 23 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 24 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 25 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 26 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 27 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 28 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 29 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 30 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 31 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 32 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 33 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 34 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 35 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 36 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 37 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 38 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 39 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 40 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 41 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 42 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 43 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 44 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 45 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 46 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 47 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 48 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 49 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 50 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 51 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 52 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 53 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 54 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 55 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 56 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 57 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 58 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 59 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 60 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 61 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 62 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 63 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 64 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 65 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 66 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 67 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 68 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 69 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 70 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 71 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 72 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 73 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 74 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 75 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 76 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 77 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 78 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 79 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 80 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 81 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 82 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 83 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 84 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 85 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 86 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 87 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 88 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 89 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 90 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 91 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 92 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 93 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 94 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 95 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 96 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 97 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 98 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 99 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 100 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 101 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 102 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 103 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 104 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 105 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 106 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 107 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 108 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 109 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 110 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 111 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 112 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 113 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 114 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 115 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 116 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 117 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 118 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 119 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 120 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 121 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 122 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 123 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 124 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 125 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 126 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 127 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 128 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 129 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 130 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 131 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 132 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 133 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 134 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 135 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 136 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 137 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 138 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 139 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 140 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 141 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 142 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 143 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 144 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 145 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 146 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 147 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 148 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 149 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 150 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 151 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 152 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 153 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 154 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 155 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 156 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 157 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 158 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 159 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 160 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 161 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 162 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 163 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 164 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 165 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 166 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 167 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 168 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 169 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 170 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 171 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 172 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 173 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 174 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 175 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 176 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 177 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 178 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 179 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 180 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 181 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 182 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 183 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 184 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 185 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 186 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 187 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 188 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 189 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 190 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 191 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 192 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 193 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 194 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 195 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 196 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 197 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 198 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 199 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 200 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 201 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 202 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 203 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 204 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 205 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 206 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 207 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 208 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 209 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 210 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 211 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 212 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 213 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 214 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 215 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 216 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 217 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 218 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 219 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 220 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 221 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 222 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 223 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 224 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 225 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 226 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 227 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 228 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 229 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 230 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 231 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 232 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 233 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 234 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 235 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 236 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 237 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 238 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 239 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 240 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 241 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 242 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 243 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 244 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 245 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 246 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 247 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 248 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 249 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 250 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 251 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 252 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 253 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 254 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 255 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 256 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 257 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 258 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 259 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 260 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 261 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 262 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 263 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 264 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 265 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 266 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 267 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 268 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 269 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 270 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 271 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 272 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 273 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 274 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 275 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 276 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 277 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 278 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 279 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 280 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 281 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 282 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 283 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 284 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 285 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 286 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 287 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 288 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 289 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 290 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 291 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 292 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 293 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 294 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 295 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 296 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 297 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 298 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 299 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 300 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 301 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 302 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 303 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 304 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 305 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 306 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 307 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 308 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 309 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 310 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 311 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 312 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 313 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 314 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 315 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 316 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 317 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 318 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 319 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 320 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 321 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 322 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 323 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 324 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 325 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 326 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 327 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 328 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 329 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 330 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 331 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 332 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 333 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 334 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 335 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 336 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 337 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 338 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 339 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 340 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 341 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 342 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 343 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 344 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 345 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 346 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 347 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 348 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 349 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 350 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 351 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 352 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 353 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 354 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 355 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 356 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 357 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 358 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
