# Hacker News 热门文章摘要 (2026-04-09)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. 适用于FreeBSD的顶级笔记本电脑

**原文标题**: Top laptops to use with FreeBSD

**原文链接**: [https://freebsdfoundation.github.io/freebsd-laptop-testing/](https://freebsdfoundation.github.io/freebsd-laptop-testing/)

本文提供了一份经过评估兼容FreeBSD的笔记本电脑清单，根据其硬件组件开箱即用的表现进行评分。评分系统为每个完全自动检测的组件（显卡、网络、音频、USB）加分，并为功能降级扣分，其中Wi-Fi和显卡问题权重更高。

关键要点是，许多现代笔记本电脑，特别是联想（ThinkPad X270、T490）和惠普（EliteBook 845 G7）的商务机型，以及模块化的Framework Laptop系列（包括英特尔和AMD版本），都获得了8/8的满分，表明其兼容性极佳且无需额外配置。

文章还重点指出了某些型号的特定组件（尤其是无线网络）可能需要额外设置或功能受限，导致评分较低。例如，联想ThinkPad T14 Gen 2（AMD）和T14s Gen 4（AMD）因Wi-Fi问题被扣分。

总之，寻求在FreeBSD上使用笔记本电脑的用户应优先选择高分型号以获得无缝体验，同时对于其他型号（尤其是涉及Wi-Fi适配器时）需做好驱动程序或配置方面的潜在工作准备。

---

## 12. 电子前沿基金会将退出X平台。

**原文标题**: EFF is leaving X

**原文链接**: [https://www.eff.org/deeplinks/2026/04/eff-leaving-x](https://www.eff.org/deeplinks/2026/04/eff-leaving-x)

电子前沿基金会（EFF）在近二十年后决定退出X平台（原推特），理由是平台触及率急剧下降且核心价值观发生根本性转变。

数据显示，X平台帖文目前的浏览量已不足2018年的3%，持续投入收效甚微，这成为EFF作出决定的关键依据。基金会指出，自埃隆·马斯克收购以来，其关于提升透明度、安全性和用户控制权的呼吁始终未被采纳，并对平台解散人权团队的做法提出批评。

针对可能出现的质疑，EFF澄清其继续留在Facebook、Instagram和TikTok等主流平台是战略选择。这些账号的运营并非认可这些平台，而是为了触达依赖这些"封闭花园"进行必要社交、组织和商业活动的弱势边缘群体。基金会将持续积极批判并通过法律途径挑战这些平台的政策。

EFF最终认定X平台已不再适合作为其倡导数字权利的阵地，未来将把重心转向Bluesky、Mastodon、领英等平台及自有官网，在能产生最大影响力的领域继续推进捍卫数字权利的使命。

---

## 13. Little Snitch登陆Linux，但其核心逻辑仍为闭源。

**原文标题**: Little Snitch comes to Linux, but the core logic is closed source

**原文链接**: [https://the.unknown-universe.co.uk/privacy-security/little-snitch-linux/](https://the.unknown-universe.co.uk/privacy-security/little-snitch-linux/)

这篇文章批评了Linux版Little Snitch的新版本，认为其核心决策逻辑保持闭源的做法与Linux的开源（FOSS）精神背道而驰。作者虽然承认该工具的技术优势（如eBPF、Rust、网页界面），但因其作为无法被审计的安全工具需要“盲目信任”，而将其视为“不可接受的选择”。

相反，作者主张使用现有的开源解决方案。他们的主要防御措施是部署网络范围内的自托管DNS拦截器（AdGuard Home），该工具能在无应用弹窗的情况下，静默过滤所有设备的遥测数据和跟踪器。对于应用级安全，他们使用如Wordfence等工具保护博客。

作者承认DNS过滤存在局限性（例如无法拦截直接IP连接），但认为在精心管理的FOSS环境中已足够使用。对于更深入的检测需求，他们推荐完全开源的OpenSnitch而非Little Snitch。

核心结论是：Linux用户无需依赖专有工具来实现安全与隐私。作者倡导尊重用户控制权和FOSS哲学的透明自托管方案，并坚持认为他们现有的分层防护方法既有效又值得信赖。

---

## 14. 每月100美元的Claude代码支出重新分配给Zed和OpenRouter

**原文标题**: Reallocating $100/Month Claude Code Spend to Zed and OpenRouter

**原文链接**: [https://braw.dev/blog/2026-04-06-reallocating-100-month-claude-spend/](https://braw.dev/blog/2026-04-06-reallocating-100-month-claude-spend/)

本文详细阐述了作者如何将每月100美元的Claude Code订阅费用重新分配，转而采用Zed编辑器与OpenRouter平台构建更灵活、更具成本效益的方案。

主要动机源于对Claude使用限制的不满，这些限制在“爆发式”编程场景中尤为棘手。作者不再采用固定订阅制，而是每月支付10美元使用高性能的Zed编辑器，并将90美元预存至AI模型聚合平台OpenRouter作为信用额度。这些信用额度有效期为365天，避免了闲置期的资金浪费。

新工作流的核心工具包括：
*   **Zed**：内置AI代理并支持Agent Client协议的高性能代码编辑器
*   **OpenRouter**：通过API提供多种模型（包括Claude Opus）的访问，支持根据任务需求和成本灵活切换模型

文章还说明了如何配置Claude Code本身以接入OpenRouter的API，从而在保留原有操作界面的同时调用不同模型。文中简要提及了Cursor作为备选编辑器，并列举了多款兼容OpenRouter的命令行代理工具。

最终方案（10美元Zed + 90美元OpenRouter信用额度）在保持需要时仍能使用Claude Opus等顶级模型的前提下，提供了更强的灵活性、更丰富的模型选择，并彻底消除了僵化使用上限带来的困扰。

---

## 15. OpenAI搁置英国星门项目，归咎于能源成本与繁文缛节。

**原文标题**: OpenAI puts Stargate UK on ice, blames energy costs and red tape

**原文链接**: [https://www.theregister.com/2026/04/09/openai_puts_stargate_uk_on/](https://www.theregister.com/2026/04/09/openai_puts_stargate_uk_on/)

OpenAI已暂停其“星际之门英国”数据中心项目的建设计划，主要原因是高昂的能源成本和不确定的监管环境。该项目于2025年9月宣布，旨在大力推动英国的人工智能发展，计划在多个站点部署数千台英伟达GPU，为公共服务和受监管行业提供主权AI计算能力。

尽管英国政府已将项目区域指定为“AI增长区”，并提供了简化规划等优惠政策，但OpenAI表示需要合适的条件才能进行长期投资。该公司强调，仍将通过其伦敦研究中心以及与政府签署的在公共服务中应用AI的谅解备忘录，继续致力于在英国的发展。

文章推测，能源成本上升（可能与地缘政治事件有关）是影响因素之一。该项目涉及英国GPU供应商Nscale，该公司原本计划大幅扩展产能。值得注意的是，该计划与英国多位政界要人有关联：前财政大臣乔治·奥斯本曾为OpenAI的“星际之门”全球扩张工作，前副首相尼克·克莱格则担任Nscale董事会成员。

---

## 16. 任天堂DS编程入门

**原文标题**: Introduction to Nintendo DS Programming

**原文链接**: [https://www.patater.com/files/projects/manual/manual.html](https://www.patater.com/files/projects/manual/manual.html)

本文是一篇面向初学者的任天堂DS自制程序编程指南，重点介绍开始创作个人游戏的实际步骤。文章首先阐述了自制程序社区的法律与政治背景，主张这是一种正当的爱好，既能丰富游戏生态，又不会助长盗版行为。

指南的核心部分详细说明了运行自制软件所需的硬件设备。文中解释了历史上“直通”设备（如PassMe）的作用——这类设备通过欺骗DS主机从Game Boy Advance卡槽运行代码。但指南指出，如今更推荐使用直接插入DS游戏卡槽的现代“Slot-1”烧录卡（如R4DS），这种方法更为简便，无需额外的GBA烧录卡。

接着，文章概述了软件环境的搭建，介绍了免费的**devkitARM**工具链和**libnds**库作为核心开发环境。指南承诺将通过构建一款名为“橙色太空船”的简单太空射击游戏，带领读者掌握基础编程概念。涵盖的关键技术主题包括：显示背景与精灵、处理用户输入（按键与触摸屏）、实现基础游戏机制以及添加音效。

本质上，本手册为有志于任天堂DS自制程序开发的初学者提供了全面的入门指引，涵盖了法律背景、必备硬件、软件安装及基础编程技巧。

---

## 17. Augmented Vertex Block Descent的WebGPU实现

**原文标题**: A WebGPU implementation of Augmented Vertex Block Descent

**原文链接**: [https://github.com/jure/webphysics](https://github.com/jure/webphysics)

本项目是一个基于WebGPU的实验性物理引擎，实现了Giles等人（2025年）提出的增强顶点块下降（AVBD）求解器。它作为在浏览器中直接进行刚体和软体模拟的概念验证，但目前需要Chrome浏览器支持，且尚未成为即插即用模块。

核心实现遵循AVBD论文中算法1的结构。流程从碰撞检测开始，采用GPU加速的线性包围体层次结构（LBVH）进行宽相位候选生成，随后进行窄相位接触流形生成，包含用于稳定性的预热持久化处理。

关键步骤是对物体进行贪心着色，使得在原始更新阶段可以并行求解所有同色物体。求解器先初始化惯性目标和原始状态，然后进入主迭代循环。每次迭代执行着色原始物体求解（累积约束力并应用AVBD更新），随后以增广拉格朗日方式并行更新对偶变量和刚度值。最后根据求解位置重建速度。

作者指出，当前实现与论文描述高度吻合，但采用原地求解而非所述的双缓冲位置更新。未来工作将重点提升稳定性、性能和易用性。

---

## 18. 机智、叔叔、Git：英语亲密关系中失落的中世纪代词

**原文标题**: Wit, unker, Git: The lost medieval pronouns of English intimacy

**原文链接**: [https://www.bbc.com/future/article/20260408-the-extinct-english-words-for-just-the-two-of-us](https://www.bbc.com/future/article/20260408-the-extinct-english-words-for-just-the-two-of-us)

本文探讨了古英语中已失传的“双数”代词，这些代词特指两个人，例如*wit*（“我们俩”）、*git*（“你们俩”）和*unker*（“我们俩的”）。这些表达亲密与伙伴关系的代词，在《贝奥武夫》和诗歌《沃尔夫与埃德瓦瑟》等早期英语文本中很常见，但在13世纪左右逐渐消失。

文章指出，语言往往趋向简化，且广义的复数“我们”已可涵盖两人，使得双数形式不再必要。同时，文章也强调了其他代词演变背后的社会与语言动因：为表意清晰，“他们”从古诺尔斯语引入；受法语影响，单数“你”取代了“汝”，因为法语中复数形式常被用作尊称。

尽管存在这些消逝，文章提到核心代词如“我”、“他”、“我们”在一千多年来保持了惊人的稳定。虽然某些方言（如爱尔兰英语）仍使用“ye”表示复数的“你们”，但专用的双数代词已然消亡，且不太可能回归——尽管文章戏谑地提议复兴它们。

---

## 19. Meta移除社交媒体成瘾诉讼相关广告

**原文标题**: Meta removes ads for social media addiction litigation

**原文链接**: [https://www.axios.com/2026/04/09/meta-social-media-addiction-ads](https://www.axios.com/2026/04/09/meta-social-media-addiction-ads)

无法访问文章链接。

---

## 20. 印象派初探：莫奈早期讽刺画（约1850年代末）

**原文标题**: Doing Impressions: Monet's Early Caricatures (ca. late 1850s)

**原文链接**: [https://publicdomainreview.org/collection/claude-monet-caricatures/](https://publicdomainreview.org/collection/claude-monet-caricatures/)

**概述：**

19世纪50年代末，在成为印象派之父之前，少年克劳德·莫奈在勒阿弗尔通过绘制当地资产阶级和名流的诙谐漫画而小有名气并以此谋生。这些早期作品每幅售价10至20法郎，展现了他敏锐的观察力和自信、讽刺的线条。他的才华被风景画家欧仁·布丹注意到，布丹看到了他超越漫画的潜力。布丹 famously 鼓励年轻的莫奈进行户外写生，专注于捕捉自然界的光线与氛围效果。这段始于布丹对其漫画赞赏的关键 mentorship，引导莫奈从工作室肖像画转向了革命性的风景画创作，这后来定义了他的艺术生涯。因此，这些早期漫画不仅是青春期的消遣，更是关键的第一步，既展示了他的素描功底，又直接引向了将他推上印象派之路的艺术指导。

---

## 21. 《侵略性是根基（2022）》

**原文标题**: Aggro Is the Foundation (2022)

**原文链接**: [https://radimentary.wordpress.com/2022/11/07/aggro-is-the-foundation/](https://radimentary.wordpress.com/2022/11/07/aggro-is-the-foundation/)

本文认为，在许多竞争性领域中，一种简单直接的“进攻型”策略构成了所有其他更复杂策略必须建立的基础层。作者以《万智牌》等集换式卡牌游戏为例，指出快速进攻的“快攻”卡组决定了游戏节奏，其他所有卡组类型都必须首先构建出抵御这种初期猛攻的能力。

这一原则延伸至其他领域：在即时战略游戏中，早期的“快攻”决定了防守的时间线；在地缘政治中，战争威胁是所有外交谈判的基石。

作者的核心论点是数学研究同样遵循此理。其基础的“进攻型”策略是能够针对难题开展富有成效的独立技术工作。虽然合作、人际网络和参与研讨会是更高层次的“元游戏”技能，但它们都建立在这一基础之上。若缺乏独立研究的核心能力，数学家便无法有效判断该向他人学习什么，或如何支持合作项目。

总之，正如并非每位卡牌玩家都使用快攻卡组，也并非每位数学家都必须以独立工作为主。然而，理解并掌握这种核心的直接方法，对于驾驭其领域内整个复杂的生态系统至关重要。

---

## 22. 展示 HN：CSS 工作室。手绘设计，智能编码

**原文标题**: Show HN: CSS Studio. Design by hand, code by agent

**原文链接**: [https://cssstudio.ai](https://cssstudio.ai)

**CSS Studio**是一款将手动网页设计与AI驱动的代码生成相结合的工具。其核心理念采用两步工作流程：首先，用户直接在浏览器中通过手绘或草图进行页面布局和组件的可视化设计；随后，AI智能体分析这些视觉设计，自动生成对应且简洁的HTML与CSS代码。

该工具的主要目标是弥合创意视觉构思与技术实现之间的鸿沟，旨在让前端开发过程更快速、更直观，尤其适合希望快速原型化创意而无需立即编写代码的设计师、开发者和团队。通过从自由形式的视觉画布开始，它鼓励先专注布局与结构，再处理语法细节。

其强调的关键功能包括绘制响应式布局、创建可复用组件，以及通过简单草图生成可用于生产环境的代码。该工具被定位为快速原型设计、探索设计系统、以及以最小阻力将视觉概念转化为功能代码的解决方案。

---

## 23. Astral的开源安全

**原文标题**: Open source security at Astral

**原文链接**: [https://astral.sh/blog/open-source-security-at-astral](https://astral.sh/blog/open-source-security-at-astral)

Astral，作为Ruff和uv等工具背后的公司，详细阐述了其多层次安全策略，以保护其开源项目免受供应链攻击。核心重点是通过实施严格控制在GitHub Actions上保护CI/CD流水线：禁止使用`pull_request_target`等危险触发器，要求所有操作必须固定到不可变的提交SHA，并最小化工作流权限。

除了CI/CD，该组织还强制执行强账户安全（强制使用强双因素认证）、分支和标签保护规则，并限制管理访问权限。对于GitHub Actions无法安全处理的任务，例如在第三方PR上评论，Astral使用一个隔离的GitHub应用（`astral-sh-bot`）。

在发布方面，Astral采用可信发布来消除长期存在的凭据，为工件验证生成Sigstore证明，使用不可变的GitHub发布，并在受保护的部署环境中通过两人审批系统控制发布流程。最后，依赖风险通过使用Dependabot等自动化工具进行管理，并设置冷却期以避免使用新发布的、可能被篡改的软件包。

---

## 24. Lichess与Take Take Take签署合作协议

**原文标题**: Lichess and Take Take Take Sign Cooperation Agreement

**原文链接**: [https://lichess.org/@/Lichess/blog/lichess-and-take-take-take-sign-cooperation-agreement/DZS0S0Dy](https://lichess.org/@/Lichess/blog/lichess-and-take-take-take-sign-cooperation-agreement/DZS0S0Dy)

Lichess宣布与平台Take Take Take（TTT）达成合作协议。根据协议，TTT将使用Lichess的开源基础设施作为其新在线象棋游戏区的后端，而非构建自有专有系统。

协议要点包括：
*   Lichess将保持免费、开源和非营利的性质不变。
*   使用TTT应用的玩家将创建Lichess账户并在Lichess服务器上进行游戏，享受其隐私保护、数据完整性和内容审核标准。
*   TTT将通过资金和开发支持为Lichess项目做出贡献。
*   Lichess保持完全自主权；该协议不会损害其价值观或决策独立性。

Lichess将此视为开源软件的胜利，有助于促进在线象棋生态系统的健康竞争，防止进一步垄断。这一定位使Lichess不仅是游戏平台，更成为免费在线象棋的基础“基础设施层”。

公告还回应了社区关切，向用户保证Lichess玩家数据不会被出售，平台捐款不会用于支持TTT，且平台的独立性不容妥协。尽管承认存在风险，但Lichess团队认为此次合作将为平台吸引更多玩家，并巩固其在象棋社区中的角色。

---

## 25. 构建一个与框架无关的Ruby gem（并确保它不会出错）

**原文标题**: Building a framework-agnostic Ruby gem (and making sure it doesn't break)

**原文链接**: [https://newsletter.masilotti.com/p/on-building-a-framework-agnostic](https://newsletter.masilotti.com/p/on-building-a-framework-agnostic)

本文详细介绍了作者构建Ruby Native的经验，这是一个与框架无关的Ruby gem，能够从网页代码生成原生移动UI组件。其核心策略是使用带有`data-native-*`属性的隐藏HTML元素作为通用的“信号”层。原生应用从DOM中读取这些信号，使得系统完全独立于用于生成HTML的后端框架。

为确保良好的开发者体验，该gem为不同框架提供了惯用的API：ERB使用Ruby块和构建器，React使用组件和属性，Vue采用类似的组件方法。每种API都生成相同的基础HTML，确保了一致性。

一个主要挑战是防止三个受支持框架（ERB/Hotwire、React/Inertia、Vue/Inertia）之间的回归问题。作者通过为每个框架的演示应用编写自动化iOS（XCUITest）测试来解决这一问题。这些测试与真实原生UI交互，验证面向用户的行为而非实现细节，从而捕获无论由哪个框架引起的错误。

作者总结道，基于简单的HTML数据属性（而非特定框架的钩子）进行构建的决策已被证明是成功的。这不仅使其能够扩展到最初支持的三个框架，还使得该gem理论上兼容其他环境（如Sinatra），因为任何能够输出正确HTML的系统都可以使用它。

---

## 26. 发布HN：Relvy（YC F24）——自动化待命操作手册

**原文标题**: Launch HN: Relvy (YC F24) – On-call runbooks, automated

**原文链接**: [https://www.relvy.ai](https://www.relvy.ai)

Relvy是一款随叫随到的操作手册自动化平台，旨在帮助工程团队更快解决事故并减少警报疲劳。该平台与现有监控和警报工具（如Datadog、PagerDuty和Opsgenie）集成，可在警报触发时自动生成并执行分步修复操作手册。

其核心理念是通过创建动态可执行的操作手册，超越静态且常过时的文档模式。当警报触发时，Relvy会分析事故背景，并在平台内自动运行相应的诊断检查和修复步骤——例如重启服务、调整资源规模或回滚部署。这使得工程师只需点击一次即可解决常见问题，通常无需手动介入。

平台强调的关键优势包括：显著降低重复性事故的平均解决时间（MTTR）、减轻随叫工程师的认知负荷和压力，以及实现更统一的事故响应。该平台还提供事故期间所有自动化操作的集中审计日志。

Relvy作为Y Combinator支持的初创企业（2024年冬季）推出，致力于解决高压随叫场景中传统文本操作手册导致的手动操作负担和人为失误问题。

---

## 27. 帮助维持雷鸟的生存

**原文标题**: Help Keep Thunderbird Alive

**原文链接**: [https://updates.thunderbird.net/en-US/thunderbird/140.0/apr26-1e/donate/](https://updates.thunderbird.net/en-US/thunderbird/140.0/apr26-1e/donate/)

本文是Thunderbird邮件客户端团队发起的筹款呼吁，主要内容包括：

*   **资金危机：** Thunderbird仅依赖不到3%用户的捐款维持运营，缺乏企业赞助或广告收入。
*   **使命与价值观：** 强调其致力于提供免费、尊重隐私且高度可定制的邮件服务。
*   **支持需求：** 说明用户捐款对支付服务器成本、软件开发、漏洞修复及工程师招聘至关重要。
*   **直接呼吁：** 核心信息是直接向重视该软件的用户请求经济支持，并表明其生存完全依赖社区资助。

总之，文章指出为维持其独立且以用户为中心的服务，Thunderbird亟需更多用户成为资金贡献者。

---

## 28. Linux版LittleSnitch

**原文标题**: LittleSnitch for Linux

**原文链接**: [https://obdev.at/products/littlesnitch-linux/index.html](https://obdev.at/products/littlesnitch-linux/index.html)

**Linux版LittleSnitch**是一款网络监控工具，可让应用程序发起的互联网连接变得可见，并允许用户控制这些连接。它能显示哪些应用正在连接哪些服务器，拦截不需要的连接，并追踪长期数据使用情况。

该工具通过`http://localhost:3031/`的网页界面运行，利用eBPF技术挂钩到Linux内核。它提供两种主要的流量拦截方式：**拦截列表**（可拦截整类域名）和可定制的**规则**（可针对特定进程、端口或协议）。

核心功能包括实时连接视图、流量历史图表以及拦截列表的自动更新。高级配置可通过修改覆盖目录中的文本文件来实现。

需要特别说明的是，文章明确指出**Linux版LittleSnitch旨在进行隐私监控，而非系统安全加固**。由于eBPF的技术限制，在高负载情况下无法像功能更复杂的macOS版本那样保证网络流量的精准归属判定。

其eBPF程序与网页界面为开源项目（采用GPLv2协议），而核心守护程序虽为专有软件，但可免费使用。

---

## 29. 幽灵纸玩具

**原文标题**: Haunted Paper Toys

**原文链接**: [http://ravensblight.com/papertoys.html](http://ravensblight.com/papertoys.html)

本文介绍了《幽灵纸艺玩具》系列，这是一套免费可打印的纸模作品集，以暗黑、哥特及超自然为主题。主要内容为各类玩具目录，所有作品均提供可下载模板，需用厚卡纸打印，并配合剪刀、胶水等基础工具组装。

这些玩具主要为细节丰富的微缩场景与交通工具模型，包括多款阴森建筑（如荒凉庄园与达克府邸）、墓地、幽灵船、灵车，以及其他幻影交通工具（汽车、卡车、火车、飞机）。该系列还涵盖配件物品，如棺材礼盒、等比例人体骨骼模型、缩缩小头、小型怪兽雕像。此外，也提供可穿戴物品，例如面具（吸血鬼、狼人、骷髅）、海盗帽和诡异首饰。

整体风格兼具趣味与诡谲，每件物品都配有简短的幽默背景故事，以增强其恐怖魅力。核心在于，这是为热衷于恐怖主题、易于组装纸艺项目的爱好者提供的完整资源库。

---

## 30. 《披萨大亨》如何在25兆赫兹CPU上模拟交通

**原文标题**: How Pizza Tycoon simulated traffic on a 25 MHz CPU

**原文链接**: [https://pizzalegacy.nl/blog/traffic-system.html](https://pizzalegacy.nl/blog/traffic-system.html)

在1994年的游戏《披萨大亨》中，一套令人信服的交通模拟系统仅凭25 MHz的CPU，通过简单的基于网格的机制运行。其核心洞见在于：车辆不需要复杂的路径规划；每种道路网格类型规定了允许的行驶方向（例如仅限从左到右）。在拐角处，车辆随机选择转弯或直行，并遵循一条规则防止连续两次左转。

车辆每游戏刻移动一像素。每16像素（即一个网格的宽度），会运行更重的逻辑来更新车辆的方向和精灵图，并通过随机偏移错开处理以分散CPU负载。碰撞检测采用廉价的O(n²)成对检查，但会提前退出：在单行道上反向行驶的车辆会被立即跳过，而大多数其他车辆则通不过简单的车道检查。被阻挡的车辆等待10刻，从而形成自然的交通堵塞。

车辆生成基于进入或滚动特写视图时区域的交通密度，驶离屏幕的车辆会立即在对应网格上以相反方向作为新车重新生成。

作者最初尝试的路径规划和复杂碰撞系统因过度设计而失败，因为它们试图解决原版系统所回避的问题。这套模拟之所以成功，是因为它利用了受限制的网格化地图设计进行路线规划，并采用极其高效、提前退出的碰撞逻辑，使其在视觉上有效的同时，计算负担极轻。

---

