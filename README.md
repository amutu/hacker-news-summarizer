# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2025-12-24.md)

*最后自动更新时间: 2025-12-24 20:21:00*
## 1. 法布里斯·贝拉：传记 [pdf]

**原文标题**: Fabrice Bellard: Biography [pdf]

**原文链接**: [https://www.ipaidia.gr/wp-content/uploads/2020/12/117-2020-fabrice-bellard.pdf](https://www.ipaidia.gr/wp-content/uploads/2020/12/117-2020-fabrice-bellard.pdf)

这份PDF似乎是法国著名计算机程序员法布里斯·贝拉的传记。文档已损坏且包含大量二进制数据，导致全文无法阅读。不过，从可辨识的文本片段中，可以总结出以下关于贝拉的关键信息：

法布里斯·贝拉因创建多个高效且极具影响力的软件项目而广受赞誉。他最著名的成就可能是FFmpeg——一个处理多媒体数据的关键库与软件套件，该技术构成了当今许多音视频流媒体的基础。

他还以开发Tiny C编译器（TCC）而闻名，这是一个极其小巧且快速的C语言编译器。除此之外，贝拉长期致力于编写精简而令人惊叹的程序，这些作品常突破软件优化与极简主义的边界，展现出卓越的技术实力。

传记中可能详述了他的教育背景、职业生涯里程碑，以及其工作对开源社区和整个软件行业的影响。文中将其定位为一位才华横溢且多产的程序员，其创作成果在商业和开源领域均被广泛使用。

**注：** 由于PDF文件严重损坏，本摘要系根据零星可读文本及对法布里斯·贝拉公开成就的普遍认知重构而成。基于现有数据无法对原文内容作出完整准确的概括。

---

## 2. Show HN: Vibium – 面向AI与人类的浏览器自动化工具，由Selenium创始人打造

**原文标题**: Show HN: Vibium – Browser automation for AI and humans, by Selenium's creator

**原文链接**: [https://github.com/VibiumDev/vibium](https://github.com/VibiumDev/vibium)

Vibium是一款专为AI智能体设计的浏览器自动化工具，由Selenium的开发者打造。它通过将所有功能集成至名为“Clicker”的单一小型Go二进制文件，简化了浏览器控制流程——该文件负责管理浏览器生命周期、实现WebDriver双向协议，并对外提供MCP服务器接口。这使得Claude Code等AI智能体无需额外配置即可直接操控浏览器。

面向开发者，Vibium提供了JavaScript/TypeScript客户端库。安装npm包时会自动下载并配置所需的Chrome二进制文件。该库同时提供同步与异步API，支持导航、元素查找、点击操作、页面截图等任务。

其核心特性在于通过模型上下文协议（MCP）与AI智能体深度集成。用户仅需一行命令，即可为Claude Code赋予完整的浏览器自动化能力，使AI能够直接执行访问网页、交互界面元素等操作。

该工具支持主流操作系统（Linux、macOS、Windows），采用Apache 2.0开源协议。未来规划包括开发多语言客户端及增加AI增强功能等升级方向。

---

## 3. Show HN：极简编辑器，驻留浏览器，一切内容存于URL

**原文标题**: Show HN: Minimalist editor that lives in browser, stores everything in the URL

**原文链接**: [https://github.com/antonmedv/textarea](https://github.com/antonmedv/textarea)

**摘要**

这是一款名为“textarea.my”的极简浏览器文本编辑器，其特点是将所有文档数据直接存储在URL的哈希片段中。其核心设计理念略带幽默色彩：用户的所有文本内容——无论是简短笔记还是长篇小说——都会被压缩（使用deflate算法）并编码到网页地址本身。

强调的主要功能包括：自动防抖保存、深色模式支持、移动端适配，以及完全无需后端服务器的独立运行。该应用还会将数据备份至浏览器的本地存储。

文章指出了实际影响与趣味性缺陷：分享此类URL可能生成极长且不便处理的链接。文中提供了一些使用技巧，例如以“#标题”开头来定制浏览器标签页的标题。该工具被呈现为一个功能完整但刻意设计得有些荒诞的客户端数据存储实验。

---

## 4. 当编译器让你意想不到时

**原文标题**: When Compilers Surprise You

**原文链接**: [https://xania.org/202512/24-cunning-clang](https://xania.org/202512/24-cunning-clang)

本文描述了一个令人惊讶的编译器优化，这是在分析一个对1到*n*的整数求和的简单函数时发现的。作者Matt Godbolt观察到，GCC编译器在`-O2`优化级别下，巧妙地将循环展开为每次相加两个数字，通过将*x*和*x+1*的和转换为*2x + 1*来实现。

然而，最引人注目的优化来自Clang在`-O3`级别下的表现。Clang没有生成任何循环，而是产生了一个常数时间（O(1)）的算术指令序列。通过逆向工程汇编代码，作者发现它计算了等差数列求和的闭式数学公式：*n(n-1)/2*。编译器识别了循环的模式，并完全用其直接的数学解替换了它。

作者对这种转换表示惊叹，并指出尽管拥有数十年的经验，现代编译器仍能提供出乎意料且巧妙的优化。这个例子突显了编译器在多年发展中构建的高度复杂性，能够将简单的O(*n*)算法提升为最优的O(1)实现。

---

## 5. Bazel中容器镜像的快速构建路径

**原文标题**: A faster path to container images in Bazel

**原文链接**: [https://www.tweag.io/blog/2025-12-18-rules_img/](https://www.tweag.io/blog/2025-12-18-rules_img/)

本文介绍了**rules_img**，这是一套新的Bazel规则集，旨在比当前标准**rules_oci**更高效地构建容器镜像。其核心解决的是构建过程中大型镜像数据（层数据块）的不必要传输问题。

传统方法如rules_oci会在本地下载完整的基础镜像（数百MB），并通过远程缓存和执行器传输所有层数据块，即使仅执行写入镜像元数据（JSON）等简单任务。这会拖慢构建、CI流程和推送操作。

**rules_img**采用“元数据优先”理念。它在构建阶段仅下载基础镜像的小型清单和配置文件（约10KB），将大型层数据块保留在镜像仓库中。构建图随后主要基于这些轻量级元数据——摘要和大小——来组装最终镜像清单。实际的层字节仅在需要时（例如在执行`bazel run`推送操作期间）才从内容寻址存储直接流式传输到镜像仓库或本地守护进程，从而避免冗余传输。

主要优势包括：
*   **更快的CI和本地构建：** 无需在每次构建时下载千兆字节级的基础镜像。
*   **高效的远程执行：** 操作轻量化，仅传输元数据而非数据块。
*   **优化的推送：** 推送器会检查镜像仓库已有内容，仅流式传输缺失的层。
*   **增量加载：** 与containerd集成，避免将完整镜像重新加载到Docker。

总之，rules_img通过最小化数据传输，重新思考了Bazel中的容器镜像构建方式，从而实现了显著更快、更可扩展的工作流程。

---

## 6. 我的2026年开放社交网络预测

**原文标题**: My 2026 Open Social Web Predictions

**原文链接**: [https://www.timothychambers.net/2025/12/23/my-open-social-web-predictions.html](https://www.timothychambers.net/2025/12/23/my-open-social-web-predictions.html)

蒂姆·钱伯斯在2026年开放社交网络预测中展望了去中心化平台的稳步增长：Bluesky用户将突破6000万，非Threads联邦宇宙用户达1500万。他预计Threads用户将超过5亿，但仅实现部分联邦化。

关键进展包括底层协议的成熟——ATProto有望成为官方IETF标准，并出现独立实施方案。他预测通过Fediscovery等工具和Loops的"ActivityRank"算法，联邦宇宙的发现难题将取得重大突破。

钱伯斯的"辛辣"预测涉及大型机构采用：一家全球前50的新闻机构将离开X/Twitter转向Bluesky或联邦宇宙；欧洲主要政府将在两大平台开设官方账号；大型数字出版商将通过ActivityPub成功实现联邦化。他还预见《犹他州数字选择法案》等法律将推动互操作性成为美国主流，AltStore的联邦化应用商店将挑战苹果的垄断地位。

总体而言，这些预测指向去中心化社交网络的整合之年、技术突破之年，以及首轮机构采用浪潮的兴起。

---

## 7. 部分爱泼斯坦档案的涂黑内容正在被撤销。

**原文标题**: Some Epstein file redactions are being undone

**原文链接**: [https://www.theguardian.com/us-news/2025/dec/23/epstein-unredacted-files-social-media](https://www.theguardian.com/us-news/2025/dec/23/epstein-unredacted-files-social-media)

本文报道称，近期公布的杰弗里·爱泼斯坦案件文件中被编辑的内容可通过基础数字技术破解，从而揭露了先前隐藏的细节。这些未经编辑的文本源自针对爱泼斯坦遗产两名执行人的民事诉讼，已在社交媒体上流传。

被曝光的段落指控这两名执行人协助向年轻女模特和女演员支付了总计超过40万美元的款项。文本还描述了爱泼斯坦的企业如何试图通过向参与者证人付款、威胁受害者和销毁证据来掩盖罪行。其他被还原的编辑内容详细说明了财务异常，显示与爱泼斯坦有关联的公司支付了房产税，但这些款项并未出现在其资产负债表上。

这些文件属于维尔京群岛一项已和解的民事案件的一部分，该案件最终以爱泼斯坦遗产支付1.05亿美元达成和解。尽管新颁布的《爱泼斯坦文件透明法案》允许司法部编辑某些信息，但尚不清楚为何部分被还原的细节——如房产税支付记录——曾被隐瞒。司法部尚未就此次编辑内容的安全漏洞发表评论。

---

## 8. 研究人员在无负极锂金属电池中实现了1270 Wh/L的能量密度。

**原文标题**: Researchers achieved 1,270 Wh/L in an anode-free lithium metal battery

**原文链接**: [https://postech.ac.kr/eng/research/research_results.do?mode=view&articleNo=43617&title=Anode-Free+Battery+Doubles+Electric+Vehicle+Driving+Range](https://postech.ac.kr/eng/research/research_results.do?mode=view&articleNo=43617&title=Anode-Free+Battery+Doubles+Electric+Vehicle+Driving+Range)

**文章摘要：研究人员在无负极锂金属电池中实现1,270 Wh/L能量密度**

浦项科技大学（POSTECH）的研究团队开发出一种高性能无负极锂金属电池，这是电动汽车领域的一项重大进展。其核心成就是实现了创纪录的**体积能量密度——1,270瓦时每升（Wh/L）**，这大约是当前商用石墨负极锂离子电池能量密度的两倍。

该电池的核心创新在于其结构和新型材料。电池不使用传统负极（如石墨），而是在放电状态下制造，负极侧仅有一个裸露的铜集流体。在首次充电过程中，来自正极的锂沉积到铜上形成负极。为实现这一过程，团队为铜集流体开发了一种**基于二维氮化硼纳米片的保护层**，并配制了一种**高导电性的双盐基液态电解质**。这些组件协同工作，实现了均匀的锂沉积和剥离，防止了枝晶生长（一个主要安全隐患），并显著提高了电池的循环稳定性。

原型软包电池表现出令人印象深刻的性能，在**200次充放电循环后仍能保持80%的容量**。这种稳定性水平是迈向实际应用的关键一步。

这项研究的主要影响在于**电动汽车**领域。在相同电池空间内将能量密度提高一倍，有可能使电动汽车的单次充电续航里程翻倍。无负极设计通过省去负极材料简化了制造工艺，从而可能降低成本。该研究标志着在制造更安全、更长续航且更具商业可行性的下一代电池方面取得了重要进展。

---

## 9. X-ray：一款用于检测PDF文档中不良涂改的Python库

**原文标题**: X-ray: a Python library for finding bad redactions in PDF documents

**原文链接**: [https://github.com/freelawproject/x-ray](https://github.com/freelawproject/x-ray)

**X-ray 摘要：一款用于检测 PDF 中错误涂改的 Python 库**

X-ray 是由 Free Law Project 开发的 Python 库，用于检测 PDF 文档中不当涂改的文本。它解决了一个常见问题：用户常试图通过在文本上覆盖黑色形状（如矩形或高亮）来涂改信息，但底下的文本仍可被选择和读取——这是一个重大的安全漏洞。

该工具通过识别图形矩形、检查同一位置是否存在文本，然后判断矩形是否为纯色来分析 PDF。如果是纯色，则被标记为“错误”或无效涂改，并提取隐藏文本。该库以 JSON 或 Python 字典形式输出结果，详细列出每个有缺陷涂改的页码、边界框坐标和暴露的文本。

X-ray 支持多种输入方式：本地文件路径、PDF 的 URL 或内存中的字节对象。它基于 PyMuPDF 库构建，以实现高性能的 PDF 解析。尽管在许多情况下有效，开发者承认 PDF 的复杂性意味着该工具并非完美，并欢迎贡献以处理更多边缘情况。

通过 `pip` 或 `uv` 即可轻松安装。该项目采用 BSD 许可证开源，鼓励社区通过问题报告和拉取请求参与。发布通过 GitHub Actions 自动完成。

---

## 10. 避免使用迷你框架

**原文标题**: Avoid Mini-Frameworks

**原文链接**: [https://laike9m.com/blog/avoid-mini-frameworks,171/](https://laike9m.com/blog/avoid-mini-frameworks,171/)

本文反对创建“迷你框架”——即构建在公司共享技术栈之上、为特定团队定制的小型封装层。作者借鉴在谷歌的经验指出，这类框架为解决局部问题（如模板代码）而引入的新概念往往难以被透彻理解。

作者详细阐述了迷你框架的几个核心问题：
1.  **不完整性**：它们很少能处理所有边缘情况，缺乏原始框架的灵活性。
2.  **僵化性**：它们违背了“易于修改”原则，因其紧密耦合于当前需求及底层框架的实现细节，导致未来演进困难。
3.  **认知负担**：它们强制推行创建者特定的思维模式，对其他使用者而言可能令人困惑且不自然。
4.  **碎片化**：它们导致代码库割裂，不同部分使用不同的抽象层。
5.  **维护困难**：它们通常缺乏专门维护者，并在原始开发者离开后逐渐过时。

作者主张，与其创建框架，不如构建不引入新概念的简单库。若框架确有必要，建议将其概念直接关联业务需求、从零构建而非基于封装、并以应有的审慎态度对待该决策——因为长期维护与推广成本不容忽视。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 2 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 3 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 4 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 5 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 6 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 7 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 8 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 9 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 10 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 11 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 12 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 13 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 14 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 15 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 16 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 17 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 18 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 19 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 20 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 21 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 22 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 23 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 24 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 25 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 26 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 27 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 28 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 29 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 30 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 31 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 32 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 33 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 34 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 35 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 36 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 37 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 38 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 39 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 40 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 41 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 42 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 43 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 44 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 45 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 46 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 47 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 48 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 49 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 50 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 51 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 52 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 53 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 54 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 55 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 56 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 57 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 58 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 59 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 60 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 61 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 62 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 63 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 64 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 65 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 66 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 67 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 68 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 69 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 70 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 71 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 72 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 73 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 74 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 75 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 76 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 77 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 78 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 79 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 80 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 81 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 82 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 83 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 84 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 85 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 86 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 87 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 88 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 89 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 90 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 91 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 92 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 93 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 94 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 95 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 96 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 97 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 98 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 99 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 100 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 101 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 102 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 103 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 104 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 105 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 106 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 107 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 108 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 109 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 110 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 111 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 112 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 113 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 114 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 115 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 116 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 117 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 118 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 119 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 120 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 121 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 122 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 123 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 124 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 125 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 126 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 127 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 128 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 129 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 130 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 131 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 132 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 133 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 134 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 135 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 136 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 137 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 138 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 139 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 140 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 141 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 142 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 143 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 144 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 145 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 146 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 147 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 148 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 149 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 150 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 151 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 152 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 153 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 154 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 155 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 156 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 157 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 158 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 159 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 160 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 161 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 162 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 163 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 164 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 165 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 166 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 167 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 168 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 169 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 170 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 171 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 172 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 173 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 174 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 175 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 176 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 177 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 178 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 179 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 180 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 181 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 182 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 183 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 184 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 185 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 186 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 187 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 188 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 189 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 190 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 191 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 192 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 193 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 194 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 195 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 196 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 197 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 198 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 199 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 200 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 201 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 202 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 203 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 204 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 205 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 206 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 207 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 208 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 209 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 210 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 211 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 212 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 213 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 214 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 215 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 216 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 217 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 218 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 219 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 220 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 221 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 222 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 223 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 224 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 225 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 226 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 227 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 228 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 229 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 230 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 231 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 232 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 233 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 234 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 235 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 236 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 237 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 238 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 239 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 240 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 241 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 242 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 243 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 244 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 245 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 246 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 247 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 248 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 249 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 250 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 251 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 252 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 253 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 254 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 255 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 256 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 257 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 258 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 259 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 260 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 261 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 262 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 263 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 264 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 265 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 266 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 267 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 268 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 269 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 270 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 271 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 272 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 273 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 274 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 275 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 276 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 277 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 278 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
