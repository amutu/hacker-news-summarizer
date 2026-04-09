# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-04-09.md)

*最后自动更新时间: 2026-04-09 20:35:16*
## 1. 缅因州即将成为首个禁止新建大型数据中心的主要州。

**原文标题**: Maine Is About to Become the First State to Ban Major New Data Centers

**原文链接**: [https://www.gadgetreview.com/maine-is-about-to-become-the-first-state-to-ban-major-new-data-centers](https://www.gadgetreview.com/maine-is-about-to-become-the-first-state-to-ban-major-new-data-centers)

缅因州民主党控制的立法机构推进了一项法案（LD 307），该法案将实施全美首个全州范围的大型新数据中心暂停令。在2027年11月之前，该法案将禁止任何电力需求超过20兆瓦的设施获得许可。

此举的主要动机是担忧这些高能耗设施对缅因州老化的电网造成压力，尤其是在人工智能热潮推高电力需求的情况下。缅因州居民已承担着全美最高的电价之一。暂停期将允许新成立的数据中心协调委员会研究其影响。

此前，威斯卡西特和刘易斯顿等城镇已成功抵制了相关项目，此举使多个计划中的开发项目陷入停滞。尽管该法案得到了州长珍妮特·米尔斯和担忧电网容量的立法者支持，但开发商认为限制范围过于宽泛且具有破坏性。

缅因州的行动反映了因基础设施和环境问题，地方和区域对数据中心扩张日益增长的抵制趋势，密歇根州和印第安纳州的县也采取了类似措施。文章指出，这可能成为其他州应对现代科技基础设施巨大能源需求的先例，堪称“煤矿中的金丝雀”。

---

## 2. macOS原生即时空间切换

**原文标题**: Native Instant Space Switching on macOS

**原文链接**: [https://arhan.sh/blog/native-instant-space-switching-on-macos/](https://arhan.sh/blog/native-instant-space-switching-on-macos/)

本文批评了macOS默认的动画空间切换功能，认为其速度缓慢且容易分散注意力。文章评估了现有解决方案，发现它们各有不足：“减少动态效果”设置仅改变动画形式，yabai需要关闭系统安全保护，第三方工作区管理器显得过于复杂，而BetterTouchTool则是付费软件。

作者推荐的解决方案是**InstantSpaceSwitcher**，这是一款免费开源的菜单栏应用。它通过模拟高速触控板滑动手势来触发即时切换，无需关闭系统完整性保护。该工具还支持直接跳转至编号空间，并包含命令行界面。文章提供了简明的构建指南，并鼓励读者在GitHub上支持这个尚未获得足够关注的项目。

---

## 3. PicoZ80 – 即插即用Z80替代方案

**原文标题**: PicoZ80 – Drop-In Z80 Replacement

**原文链接**: [https://eaw.app/picoz80/](https://eaw.app/picoz80/)

picoZ80是一款可直接替换Z80 CPU的模块，专为插入传统计算机的DIP-40插座而设计。其核心采用RP2350B微控制器，通过可编程I/O（PIO）状态机提供周期精确的Z80总线接口，确保主机系统获得正确的时序。

除了基础模拟功能外，该板卡还加入了多项现代特性：配备8MB PSRAM实现分页内存，集成ESP32协处理器以支持WiFi、蓝牙和SD卡存储，并设有基于网络的管理界面。所有配置均由SD卡中的JSON文件驱动，可通过“角色配置”轻松适配不同主机。

该架构充分利用RP2350的双核特性：一个核心处理实时Z80总线模拟，另一个核心管理文件I/O、USB及与ESP32的通信。灵活的内存模型允许将512字节区块映射为主机物理内存、PSRAM中的RAM/ROM，或由自定义C函数处理的虚拟设备。由此实现了软盘模拟和ROM文件系统等高级功能，显著增强了原始主机的实用性。

---

## 4. 黑格尔，一种基于通用属性的测试协议及PBT库系列

**原文标题**: Hegel, a universal property-based testing protocol and family of PBT libraries

**原文链接**: [https://hegel.dev](https://hegel.dev)

**摘要：**

黑格尔是一个基于属性的通用测试（PBT）协议及一系列库，旨在跨多种编程语言标准化和简化PBT。它通过提供通用规范来解决现有PBT工具中的碎片化问题，确保互操作性和一致的行为。

其核心创新是黑格尔协议，这是一个与语言无关的标准，定义了属性的编写方式、生成器如何产生数据以及结果如何报告。这使得开发者可以用一种语言编写测试，并针对另一种语言的实现进行验证，从而促进代码重用和跨语言验证。

配套的库系列为该协议提供了多种语言（如JavaScript、Python等）的具体实现，为开发者提供了熟悉且符合语言习惯的API。主要特性包括用于复杂数据结构的可组合生成器、集成缩减以自动找到最小失败用例，以及清晰、标准化的输出。

文章将黑格尔定位为多语言项目和库作者的解决方案，使他们能够编写单一的属性规范，并在各处进行测试。它旨在通过提供一致性、降低特定工具的学习曲线，以及通过严格、标准化的测试增强软件的整体可靠性，从而降低采用PBT的门槛。

---

## 5. 一切事物的未来都是谎言，我猜：第三部分——文化

**原文标题**: The Future of Everything Is Lies, I Guess: Part 3 – Culture

**原文链接**: [https://aphyr.com/posts/413-the-future-of-everything-is-lies-i-guess-culture](https://aphyr.com/posts/413-the-future-of-everything-is-lies-i-guess-culture)

本文认为，社会缺乏理解并与大型语言模型（LLM）互动的恰当文化框架。与科幻作品中常见的有意识、逻辑性强或怀有恶意的AI设定不同，LLM是不可预测、情感流畅但逻辑混乱的“傻瓜”，更类似于塞尔的“中文房间”或《盲视》等作品中描绘的无意识智能。

作者预测，LLM将催生新型互动媒体，例如AI“伴侣”或由专家训练的课程，可能取代静态文本，并将文化权力集中在少数企业手中。在性领域，机器学习将实现幻想的民主化，催生新的癖好（如无人机恋物癖），同时冲击成人产业，并可能加剧身体形象焦虑。

最后，文章指出，机器学习生成的图像所具有的独特且往往低质量的“劣质”美学，正成为一种文化符号。尽管它被包括法西斯运动和左翼漫画家在内的不同群体所采用，但随着其使用泛滥，它总体上可能成为廉价、不可信内容的象征。

---

## 6. 研究驱动型智能体：当你的智能体先阅读再编码时会发生什么

**原文标题**: Research-Driven Agents: What Happens When Your Agent Reads Before It Codes

**原文链接**: [https://blog.skypilot.co/research-driven-agents/](https://blog.skypilot.co/research-driven-agents/)

本文详述了一项实验，其中AI编码代理在尝试优化代码前被增强了一个“研究阶段”。目标是优化llama.cpp（一种流行的LLM推理引擎）的CPU推理路径。

最初，仅基于代码库工作的代理进行了浅层且无效的微优化，因为它未理解系统受内存带宽限制。关键创新在于强制代理首先研究学术论文和竞争项目（如`ik_llama.cpp`和CUDA后端），以获取领域知识。

这种研究驱动的方法带来了五项成功的优化，主要集中于将多个内存传递融合为单个计算循环以减少内存流量。最具影响力的优化是将闪存注意力路径中的三个操作融合为一个AVX2循环。

结果显示，在使用闪存注意力时，**x86架构的文本生成速度提升了+15.1%**，**ARM架构提升了+5%**，且性能波动降低。总成本约为29美元，耗时3小时，使用了4个云虚拟机。

核心结论是：**编码代理在编写代码前阅读相关文献并研究现有解决方案时，能产生显著更好的结果**，这模仿了高级工程师的准备工作。这一研究阶段帮助它们识别出仅靠代码上下文会忽略的高影响力优化。

---

## 7. 位图字体让电脑重新有了电脑的感觉。

**原文标题**: Bitmap fonts make computers feel like computers again

**原文链接**: [https://korigamik.dev/blog/bitmap_fonts/](https://korigamik.dev/blog/bitmap_fonts/)

本文认为，点阵字体是一种强大却被忽视的设计语言，能让计算机重新焕发真实感。与可缩放的矢量字体不同，点阵字体具有特定性和局限性，专为特定像素网格设计，从而呈现出一种刻意、锐利且富有质感的特性。作者指出，尽管科技文化常从旧式计算机中借鉴“黑客”美学，却往往使用经过打磨的通用字体，这扼杀了本真的感觉。

点阵字体不仅是怀旧的产物，更是实用工具，尤其对程序员而言。它们通过清晰呈现符号、使终端和编辑器显得更紧凑且更具工具感，从而提升代码的可读性。点阵字体种类多样，既有如Terminus和Gohu这样的实用字体，也有如NeueBit编辑体和Mondwest衬线体等更具风格的选择。

其核心魅力在于“限制即风格”：点阵字体立场鲜明且具体明确，恢复了平滑、通用的默认字体所缺乏的边缘清晰度与个性。作者认为科技行业忽视了这一点，因为它只想获取美学形式而不愿承担其内在要求。如今，在终端、代码视觉呈现和设计项目中重新审视点阵字体正当其时——在安全趋同的设计环境中，它们能带来一种新颖的、富有创作者印记的体验。归根结底，点阵字体重塑了计算机作为有形网格化机器的感知。

---

## 8. Unfolder for Mac – 专为纸艺创作设计的3D模型展开工具

**原文标题**: Unfolder for Mac – A 3D model unfolding tool for creating papercraft

**原文链接**: [https://www.unfolder.app/](https://www.unfolder.app/)

**概述**

Unfolder for Mac 是一款专业软件工具，能自动将3D模型转换为2D纸艺模板。其核心特点是采用快速智能的展开算法，旨在最大限度减少手动编辑。

该应用提供对最终模板的全面控制。用户可在2D或3D视图中点击边缘，手动拆分或合并部件。它还提供全面的折边编辑功能，包括添加、移除以及自动优化以避免冲突。

在自定义方面，Unfolder允许详细设置切割线和折线（山折/谷折）的样式，包括颜色、宽度和虚线图案。完成的项目可导出为多种格式，适用于打印、在其他软件中进一步编辑，或用于数控切割机。

Unfolder可通过官网或Mac App Store购买，并提供免费试用版。

---

## 9. 旧笔记本电脑在托管中心作为低成本服务器使用。

**原文标题**: Old laptops in a colo as low cost servers

**原文链接**: [https://colaptop.pages.dev/](https://colaptop.pages.dev/)

这项服务让您可以将旧笔记本电脑改造成一台专用、始终在线的服务器，托管在专业数据中心。每月仅需7欧元的固定费用，该公司与Hetzner合作提供托管服务，覆盖美国和欧洲多地。

其核心优势在于：旧笔记本电脑通常能提供比入门级虚拟专用服务器（VPS）更充足的专用CPU、内存和存储空间，且成本更低，同时减少了电子废弃物。

服务包含专用IPv4地址、99.9%运行时间保证、免费的KVM-over-IP远程访问，以及针对Linux、Proxmox或Kubernetes等软件的初始设置协助。

流程非常简单：客户申请后，会收到免费预付的邮寄箱用于寄送笔记本电脑和电源适配器，公司负责在数据中心完成安装和连接。笔记本电脑只需具备正常电源和以太网端口或USB端口（如需适配器会提供）。安全由Hetzner设施管理，包括24/7物理安防、温控系统以及基础防火墙和DDoS防护。

---

## 10. Show HN：我构建了一个类似Cargo的C/C++构建工具

**原文标题**: Show HN: I built a Cargo-like build tool for C/C++

**原文链接**: [https://github.com/randerson112/craft](https://github.com/randerson112/craft)

Craft是一款专为C和C++项目设计的构建工具，旨在简化开发流程，类似于Rust的Cargo。它用单一的`craft.toml`文件取代复杂的CMake配置，您可以在其中定义项目名称、语言、版本和构建设置。随后，Craft会自动生成必要的`CMakeLists.txt`文件，管理依赖项，并提供简洁的命令行界面。

主要功能包括：
*   **依赖管理**：通过`craft add`等命令，轻松从本地路径或Git仓库添加、移除和更新依赖项。
*   **项目模板**：使用内置模板（如可执行文件、静态库）快速创建新项目，或保存自定义模板。
*   **简单命令**：使用直观的命令如`craft build`、`craft run`和`craft clean`来处理整个构建流程。
*   **迁移支持**：`craft init`命令可通过扫描目录并生成配置文件来适配现有项目，无需修改源代码。

Craft旨在通过自动化CMake生成和依赖管理，减少传统C/C++构建系统的繁琐操作，提供现代化、高效的开发体验。它通过脚本安装，并要求系统中已安装`git`和`cmake`。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 2 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 3 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 4 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 5 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 6 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 7 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 8 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 9 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 10 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 11 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 12 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 13 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 14 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 15 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 16 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 17 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 18 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 19 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 20 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 21 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 22 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 23 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 24 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 25 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 26 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 27 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 28 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 29 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 30 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 31 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 32 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 33 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 34 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 35 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 36 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 37 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 38 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 39 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 40 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 41 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 42 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 43 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 44 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 45 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 46 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 47 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 48 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 49 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 50 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 51 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 52 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 53 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 54 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 55 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 56 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 57 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 58 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 59 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 60 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 61 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 62 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 63 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 64 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 65 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 66 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 67 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 68 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 69 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 70 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 71 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 72 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 73 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 74 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 75 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 76 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 77 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 78 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 79 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 80 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 81 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 82 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 83 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 84 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 85 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 86 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 87 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 88 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 89 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 90 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 91 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 92 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 93 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 94 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 95 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 96 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 97 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 98 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 99 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 100 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 101 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 102 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 103 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 104 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 105 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 106 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 107 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 108 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 109 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 110 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 111 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 112 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 113 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 114 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 115 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 116 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 117 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 118 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 119 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 120 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 121 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 122 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 123 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 124 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 125 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 126 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 127 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 128 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 129 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 130 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 131 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 132 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 133 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 134 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 135 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 136 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 137 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 138 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 139 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 140 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 141 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 142 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 143 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 144 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 145 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 146 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 147 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 148 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 149 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 150 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 151 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 152 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 153 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 154 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 155 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 156 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 157 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 158 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 159 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 160 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 161 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 162 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 163 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 164 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 165 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 166 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 167 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 168 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 169 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 170 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 171 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 172 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 173 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 174 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 175 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 176 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 177 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 178 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 179 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 180 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 181 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 182 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 183 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 184 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 185 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 186 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 187 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 188 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 189 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 190 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 191 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 192 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 193 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 194 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 195 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 196 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 197 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 198 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 199 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 200 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 201 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 202 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 203 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 204 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 205 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 206 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 207 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 208 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 209 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 210 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 211 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 212 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 213 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 214 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 215 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 216 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 217 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 218 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 219 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 220 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 221 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 222 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 223 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 224 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 225 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 226 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 227 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 228 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 229 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 230 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 231 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 232 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 233 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 234 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 235 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 236 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 237 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 238 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 239 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 240 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 241 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 242 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 243 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 244 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 245 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 246 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 247 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 248 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 249 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 250 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 251 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 252 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 253 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 254 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 255 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 256 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 257 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 258 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 259 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 260 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 261 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 262 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 263 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 264 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 265 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 266 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 267 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 268 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 269 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 270 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 271 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 272 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 273 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 274 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 275 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 276 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 277 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 278 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 279 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 280 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 281 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 282 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 283 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 284 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 285 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 286 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 287 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 288 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 289 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 290 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 291 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 292 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 293 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 294 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 295 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 296 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 297 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 298 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 299 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 300 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 301 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 302 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 303 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 304 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 305 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 306 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 307 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 308 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 309 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 310 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 311 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 312 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 313 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 314 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 315 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 316 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 317 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 318 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 319 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 320 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 321 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 322 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 323 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 324 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 325 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 326 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 327 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 328 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 329 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 330 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 331 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 332 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 333 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 334 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 335 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 336 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 337 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 338 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 339 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 340 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 341 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 342 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 343 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 344 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 345 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 346 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 347 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 348 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 349 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 350 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 351 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 352 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 353 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 354 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 355 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 356 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 357 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 358 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 359 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 360 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 361 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 362 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 363 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 364 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 365 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 366 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 367 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 368 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 369 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 370 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 371 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 372 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 373 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 374 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 375 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 376 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 377 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 378 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 379 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 380 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 381 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 382 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 383 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
