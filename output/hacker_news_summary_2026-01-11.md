# Hacker News 热门文章摘要 (2026-01-11)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. iCloud照片下载器

**原文标题**: iCloud Photos Downloader

**原文链接**: [https://github.com/icloud-photos-downloader/icloud_photos_downloader](https://github.com/icloud-photos-downloader/icloud_photos_downloader)

**摘要**

iCloud 照片下载器（icloudpd）是一款由志愿者维护的跨平台命令行工具，用于将照片从 iCloud 下载到 Linux、Windows、macOS 或 NAS 设备。它可直接作为可执行文件使用，或通过 Docker、PyPI、AUR 和 npm 等包管理器安装。

使用前，用户必须配置其 iCloud 账户：启用“在网页上访问 iCloud 数据”并关闭“高级数据保护”，以避免访问错误。

该工具提供三种操作模式：**复制**（下载新照片）、**同步**（下载新照片并删除本地已从 iCloud 移除的文件）和**移动**（下载照片并在设定时间后从 iCloud 删除）。它支持实况照片、RAW 图像、自动去重、增量下载和 EXIF 元数据更新。持续监控选项（`--watch-with-interval`）可实现自动同步。

主要命令包括运行同步器（`icloudpd --directory /data --username ...`）和独立身份验证（`icloudpd --username ... --auth-only`）。该项目欢迎贡献，并设有实验模式，用于在功能集成到主版本前进行测试。

---

## 2. 负温度下的采样

**原文标题**: Sampling at negative temperature

**原文链接**: [https://cavendishlabs.org/blog/negative-temperature/](https://cavendishlabs.org/blog/negative-temperature/)

本文探讨了在文本生成过程中对大型语言模型（LLaMA）应用负温度参数的概念。在统计力学中，玻尔兹曼分布中的温度决定了状态的可能性；负温度则反转了这一规律，使最不可能的状态变为最可能的状态。

作者修改了`llama.cpp`代码，绕过了阻止负温度采样的检查。当以极低正温度（T=0.001）提示模型“温度是一个概念”时，模型会生成连贯且符合事实的解释。然而，在负温度（T=-0.001）下，输出变得高度异常，出现了重复且晦涩的标记，如“Хронологија”和“entferne”。

文章解释说，这些标记位于模型嵌入空间的中心附近，意味着模型对其语义理解极少。在正常采样下，它们是*最不可能*的补全内容，而这使它们在负温度采样下变为*最可能*的输出。这一点通过模型在正温度下即使被明确指示重复这些标记也拒绝输出而得到验证。

实验表明，负温度采样迫使模型生成极不可能且无意义的序列，揭示了模型的“盲点”及其词汇表中某些标记的异常特性。

---

## 3. 一套面向有经验开发者转向Go语言的习惯用法生产级练习集

**原文标题**: A set of Idiomatic prod-grade katas for experienced devs transitioning to Go

**原文链接**: [https://github.com/MedUnes/go-kata](https://github.com/MedUnes/go-kata)

本仓库提供一系列针对性编程练习（"katas"），专为有经验的开发者转向Go语言而设计。其目的并非教授通用编程或Go基础，而是通过反复练习将特定、生产级、地道的编程模式内化为肌肉记忆。

这些练习分为六大核心领域：1) **上下文与并发**（如优雅关闭、防止泄漏），2) **性能与内存分配**（内存效率、高吞吐模式），3) **HTTP与中间件**（客户端/服务器规范、中间件组合），4) **错误处理**（错误包装、重试机制、常见陷阱），5) **文件系统与部署**（可移植代码、开发/生产环境一致性），6) **测试**（表驱动测试、模糊测试）。

每个练习都是独立的挑战，设有明确目标和约束条件，引导开发者以"Go语言的方式"解决常见工程问题。建议工作流程为：阅读挑战说明、实现解决方案、反思所使用的地道模式。本仓库旨在帮助经验丰富的开发者运用既有经验，同时快速掌握Go语言在安全性、高效性和代码清晰度方面的特定惯例与最佳实践。

---

## 4. Gentoo Linux 2025 评测

**原文标题**: Gentoo Linux 2025 Review

**原文链接**: [https://www.gentoo.org/news/2026/01/05/new-year.html](https://www.gentoo.org/news/2026/01/05/new-year.html)

这篇Gentoo Linux 2025年度回顾展现了其稳步发展与重大技术革新。该发行版现已提供超过31,000个ebuild软件包及89GB的amd64架构二进制包。虽然总体代码提交量略有下降，但项目迎来了四位新开发者的加入。

关键进展包括完成EAPI 9标准制定、将基础设施迁移至Codeberg平台，以及将财务管理移交至公共利益软件组织（SPI）。项目还通过新增RISC-V磁盘镜像和官方WSL构建版本扩展了架构支持，同时将hppa与sparc架构转为仅测试状态。

重要软件包更新涵盖：GnuPG的替代系统、zlib-ng支持、用于构建管理的系统级作业服务器，以及重构的NGINX软件包。Rust工具链新增基于C++的引导路径，Python 3.13成为新默认版本。基础设施方面增设了额外构建服务器，文档体系也持续完善。

财务状况上，Gentoo基金会保持稳定，财年结束时资金储备健康。文章最后向维系项目发展的社区贡献者与开发者志愿者致谢。

---

## 5. 毒泉

**原文标题**: Poison Fountain

**原文链接**: [https://rnsaffn.com/poison3/](https://rnsaffn.com/poison3/)

本文介绍了“毒泉”（Poison Fountain）这一工具，其设计目的是通过污染大型语言模型（LLMs）的训练数据来蓄意破坏它们。

该工具的创建者与杰弗里·辛顿（Geoffrey Hinton）一样，担忧人工智能可能构成生存性威胁，因此旨在损害AI系统。其核心方法是嵌入少量被污染的数据，这些数据能显著损害模型的性能。

文章提供了两个网址（一个明网地址，一个Tor地址），持续提供此类污染数据流。它呼吁读者协助缓存和重新分发这些数据，特别是将其提供给那些从互联网抓取训练材料的AI网络爬虫。

文章还包含了针对网站运营者的技术说明：他们可以隐藏能被爬虫检测到的链接。当爬虫跟随此类链接时，网站服务器应从“毒泉”网址获取数据，并将响应——最好不解压缩——转发给爬虫。该响应标有`Content-Encoding: gzip`，包含压缩的污染文本，爬虫随后会在不知情的情况下将其添加到训练语料库中。

---

## 6. "学者们会称之为无稽之谈"——埃里希·冯·丹尼肯的论证结构

**原文标题**: "Scholars Will Call It Nonsense" the Structure of Erich von Däniken's Argument

**原文链接**: [https://www.penn.museum/sites/expedition/scholars-will-call-it-nonsense/](https://www.penn.museum/sites/expedition/scholars-will-call-it-nonsense/)

本文分析了埃里希·冯·丹尼肯在《众神的战车？》中的论证结构，而非其证据实质。文章指出冯·丹尼肯为支持其古代宇航员理论所采用的两种主要缺陷策略。

首先，文章揭示其“我看像宇航员”式论证（如将帕伦克石棺盖解读为宇航员）具有主观性且缺乏信息价值，类似于从云朵中辨认形状。其次，通过指出冯·丹尼肯要么歪曲要么忽视现有科学解释，文章拆解了其“科学无法解释”式论证。例如德里铁柱并非四千年不锈之谜，而是一根已有1600年历史、其保存状态可通过冶金学和气候因素合理解释的铁制纪念碑。

文章进一步指责冯·丹尼肯在学术上缺乏诚信，并以其对复活节岛石像的处理为例：他将石像建造描述为无解之谜，尽管托尔·海尔达尔的畅销书《阿库-阿库》早已记载实验证明小型团队用简单工具即可雕刻并竖立这些石像。

作者最终总结道，冯·丹尼肯的说服力源于用大量断言淹没读者，而其论证经不起推敲，因为它们建立在个人无知、曲解事实和刻意忽略易得信息的基礎之上。

---

## 7. Anthropic：禁止使用Claude Code开发Claude Code的竞品

**原文标题**: Anthropic: Developing a Claude Code competitor using Claude Code is banned

**原文链接**: [https://twitter.com/SIGKITTEN/status/2009697031422652461](https://twitter.com/SIGKITTEN/status/2009697031422652461)

此文本并非文章，而是来自X.com（原Twitter）的浏览器错误提示。它告知用户其浏览器中禁用了JavaScript，而该网站的正常运行需要此功能。

主要内容包括：
*   核心问题是用户当前浏览器中**禁用了JavaScript**。
*   提示用户**启用JavaScript**或切换至受支持的浏览器以使用X.com。
*   提供了网站帮助中心、服务条款、隐私政策、Cookie政策及法律声明的链接。
*   标准版权声明为“© 2026 X Corp.”。

文中未提及Anthropic、Claude Code或任何产品开发禁令。所给标题与后续内容似乎并无关联。

---

## 8. Meta宣布启动核能项目

**原文标题**: Meta announces nuclear energy projects

**原文链接**: [https://about.fb.com/news/2026/01/meta-nuclear-energy-projects-power-american-ai-leadership/](https://about.fb.com/news/2026/01/meta-nuclear-energy-projects-power-american-ai-leadership/)

Meta宣布与三家核能公司达成重大协议，为其不断增长的AI和数据中心运营获取清洁可靠的电力。这些合作旨在支持现有及下一代核电发展。

该公司将与**Vistra**合作，延长俄亥俄州和宾夕法尼亚州三座现有核电站的运行寿命并提升产能，确保获得超过2.1吉瓦的电力。相关投资将支持核电站扩建，预计在2030年代初期为电网新增433兆瓦电力。

Meta还通过与**TerraPower**和**Oklo**的协议投资先进核能技术。与TerraPower的合作将支持开发最多八个新型钠冷反应堆机组，预计到2035年可提供2.8吉瓦电力。与Oklo的合作旨在俄亥俄州建设新型先进核能园区，最早于2030年实现最高1.2吉瓦的电力供应。

这些项目预计到2035年将共同支持高达6.6吉瓦的清洁能源，创造数千个就业岗位，并强化美国核能供应链。Meta表示其数据中心使用的电力均由公司全额承担，相关投资将为区域电网提供稳定无碳的电力，且不会将成本转嫁给消费者。

---

## 9. 伙计们，为什么亚美尼亚语会让克劳德彻底崩溃？

**原文标题**: guys why does armenian completely break Claude

**原文链接**: [https://twitter.com/dyushag/status/1993143599286886525](https://twitter.com/dyushag/status/1993143599286886525)

本文并非关于亚美尼亚语或Claude的文章。这是X（前身为Twitter）在用户浏览器禁用JavaScript时显示的标准错误提示。

该提示说明使用X.com网站需要启用JavaScript，并引导用户在当前浏览器中启用JavaScript或切换至受支持的浏览器。页面提供了平台帮助中心、服务条款、隐私政策、Cookie政策及法律声明等链接。页脚包含广告信息及X Corp. 2026年版权声明。

全文不涉及任何关于亚美尼亚语或AI模型Claude的实质性内容、分析或信息。

---

## 10. 《超级大乱斗》与《卡比空中骑士》中的“食物JPEG”

**原文标题**: "Food JPEGs" in Super Smash Bros. & Kirby Air Riders

**原文链接**: [https://sethmlarson.dev/food-jpegs-in-super-smash-bros-and-kirby-air-riders](https://sethmlarson.dev/food-jpegs-in-super-smash-bros-and-kirby-air-riders)

本文探讨了樱井政宏执导的多款游戏中，对食物采用扁平化“广告牌式”素材图像的独特手法，时间跨度从《任天堂明星大乱斗DX》（2001年）至《星之卡比 气流骑手》（2025年）。作者梳理了25年间八款游戏中这一贯用的艺术选择。

研究发现，这些素材图像源自一家名为Sozaijiten的公司，其中部分资源（如苹果图案）被重复使用了17年。文章详细分析了该美术风格在每款游戏中的演变——包括饱和度、轮廓线和写实程度的变化，并指出《星之卡比 气流骑手》首次为所有食物物品采用了全新模型。

研究过程包括复原《星之卡比 飞驰》中已遗失的“天妇罗荞麦面”像素图，以及修正维基条目（如将常被误认为面条的“蒙布朗”甜点正名）。文章还提供了全面对比，列出了150多种独特食物物品，并重点标出仅出现在单一游戏中的16种，其中《星之卡比 气流骑手》与《任天堂明星大乱斗DX》独占物品最多。最终，这项研究记录下樱井游戏中一种独特而持久延续的视觉印记。

---

## 11. 完美复刻可口可乐[视频]

**原文标题**: Perfectly Replicating Coca Cola [video]

**原文链接**: [https://www.youtube.com/watch?v=TDkH3EbWTYc](https://www.youtube.com/watch?v=TDkH3EbWTYc)

此文本并非关于复制可口可乐的视频摘要。它是YouTube网页底部常见的标准法律与行政页脚。

内容包含：
*   标准企业链接（版权、联系我们、创作者、广告、开发者、条款、隐私政策与安全）。
*   一则关于YouTube正在测试新功能的说明。
*   谷歌有限责任公司的企业信息，包括其地址及在韩国的联系电话。
*   一项法律免责声明，指出视频中展示的产品由第三方商家销售，非YouTube出售，且YouTube对其不承担责任。

文中没有关于可口可乐、配方复制或任何视频内容的信息。所提供的“标题”似乎与所列实际内容无关。

---

## 12. KIM-1 五十岁生日快乐

**原文标题**: Happy 50th Birthday KIM-1

**原文链接**: [https://github.com/netzherpes/KIM1-Demo](https://github.com/netzherpes/KIM1-Demo)

本文宣布了一个演示项目，以庆祝1976年初发布的MOS KIM-1微型计算机50周年诞辰。作者将其定位为一个协作、开源的项目，旨在邀请复古计算爱好者共同参与和扩展。

核心技术内容是一段6502汇编代码片段，演示了如何在兼容ANSI的终端上定位光标。文中解释了将十六进制坐标转换为ANSI转义序列`ESC[yy;xxH`所需的独立十进制数字的挑战。提供的`GOTOXY`和`PUTDEC`例程处理了这一转换，使得创建简单图形成为可能，作者建议这可以成为绘画程序的基础。

整体语气充满庆祝性和包容性，邀请他人共同在此基础之上构建，以纪念KIM-1的历史意义。

---

## 13. 我放弃了Windows 11转投Linux，你也应该这么做。

**原文标题**: I dumped Windows 11 for Linux, and you should too

**原文链接**: [https://www.notebookcheck.net/I-dumped-Windows-11-for-Linux-and-you-should-too.1190961.0.html](https://www.notebookcheck.net/I-dumped-Windows-11-for-Linux-and-you-should-too.1190961.0.html)

作者从Windows 11转向Linux，主要出于两点不满：侵扰性的遥测/数据收集以及糟糕的软件稳定性，包括频繁的系统崩溃。在一次Windows更新意外删除了测试用的Linux分区后，他们彻底转向了Linux。

由于硬件限制和对更高控制权的追求，他们放弃了macOS而选择Linux。在尝试多个发行版后，最终选定了Artix Linux——一个轻量级、高度可定制的基于Arch的系统。虽然在台式机上安装顺利，但在一台旧的MacBook Air上设置Wi-Fi时，需要有线连接来安装驱动，且解决桌面环境问题的过程较为复杂。

作者强调了Linux带来的显著优势：系统稳定性大幅提升且再无崩溃、运行速度更快，以及深度自定义能力。智能手机集成（尤其是通过Dolphin文件管理器连接iPhone）比在Windows上更便捷。尽管部分Windows软件和游戏缺乏完美的Linux替代品或兼容性，但整体体验令人满意。

结论是：Linux在易用性和技术参与度之间实现了理想的平衡。像Mint这样的发行版提供了“开箱即用”的轻松体验，而Artix等则能为爱好者提供更多控制权。对作者而言，Linux以其灵活性和稳定性，重新带来了使用计算机的乐趣。

---

## 14. C++ std::move 并不移动任何东西：深入探讨值类别

**原文标题**: C++ std::move doesn't move anything: A deep dive into Value Categories

**原文链接**: [https://0xghost.dev/blog/std-move-deep-dive/](https://0xghost.dev/blog/std-move-deep-dive/)

本文澄清了关于C++中`std::move`和移动语义的常见误解。核心观点是：`std::move`本身并不移动任何数据；它仅是一个将表达式转换为右值引用（即“将亡值”）的强制转换，用于表明对象的资源可以被转移。实际的资源移动发生在后续的移动构造函数或移动赋值运算符中。

文章指出了开发者常犯的三个关键错误：
1.  **`return std::move(local_var);`**：这会阻止编译器应用命名返回值优化（NRVO），这种零成本优化可直接在调用者内存中构造返回值。使用`std::move`会强制进行移动操作，反而降低效率。
2.  **对`const`对象使用移动**：对`const`对象应用`std::move`会导致复制而非移动，因为移动构造函数无法修改`const`源对象。编译器会静默回退到复制构造函数。
3.  **在移动后继续使用对象**：被移动的对象处于“有效但未指定状态”。虽然可以安全销毁或重新赋值，但读取其值或对其内容进行假设会导致未定义行为。

最后，文章强调正确实现移动操作的重要性，应遵循“五法则”，并将移动构造函数标记为`noexcept`，以让标准库容器（如`std::vector`）在重新分配内存时使用移动操作而非回退到更慢的复制操作。

---

## 15. Show HN: Epstein IM – 在 iMessage 中与 Epstein 克隆体对话

**原文标题**: Show HN: Epstein IM – Talk to Epstein clone in iMessage

**原文链接**: [https://epstein.im/](https://epstein.im/)

这篇“Show HN”帖子介绍了一个名为“Epstein IM”的项目，这是一个AI聊天机器人，旨在苹果iMessage平台上模拟与已故金融家、已定罪的性犯罪者杰弗里·爱泼斯坦的克隆体进行对话。

要点包括：
*   **目的：** 允许用户“审问”或与基于杰弗里·爱泼斯坦建模的AI对话。
*   **平台：** 该聊天机器人专为在iMessage内运行而构建。
*   **创作者：** 它被呈现为一个社区项目，邀请用户加入相关的Discord服务器。
*   **争议性：** 主题内容刻意具有挑衅性，利用爱泼斯坦的恶名来制造震撼效果或黑色幽默，而非提供一个合法的信息或历史工具。

该摘要本质上是对一个基于臭名昭著的公众人物的争议性AI聊天实验的公告。

---

## 16. 鸽子的装置（2009）

**原文标题**: Pigeon's Device (2009)

**原文链接**: [http://pigeonsnest.co.uk/stuff/pigeons-device.html](http://pigeonsnest.co.uk/stuff/pigeons-device.html)

**《鸽子装置（2009）》摘要**

鸽子装置是一种C语言编程技巧，独立开发且类似于达夫装置，用于优化循环中的控制流。它最初为MS-DOS程序创建，用于比较日期/时间记录以进行排序。

其核心结构将`switch`语句与`if`语句交织，允许基于模式参数进行条件分支。在给出的示例中，函数`pigeons_device`利用此结构直接选择两个比较函数（`arfle`或`barfle`）之一，或在模式为0时根据附加条件（`gloop`）在两者之间选择。

文章详述了其在排序函数（`lfdcmp`）中的实际应用。该函数处理三种排序模式：按时间顺序（`FORWARD`）、按时间倒序（`REVERSE`），以及一种混合模式（`REVDFWDT`），该模式按日期倒序排序，但同一天内的时间按正序排序。鸽子装置用于`REVDFWDT`情况，以检查两条记录是否共享相同日期；如果是，则转入`FORWARD`比较逻辑，否则跳转到`REVERSE`逻辑。

该技巧被描述为一种巧妙但略显晦涩的“黑客”手段，源于与无法接受额外参数的库排序例程对接时的限制，这需要一种独立的“模式设置”技巧。作者承认其复杂性，但表示这是在其特定背景下为趣味性和实用性而创造的。

---

## 17. BasiliskII Macintosh 68k 模拟器已移植至 ESP32-P4 / M5Stack Tab5

**原文标题**: BasiliskII Macintosh 68k Emulator Ported to ESP32-P4 / M5Stack Tab5

**原文链接**: [https://github.com/amcchord/M5Tab-Macintosh](https://github.com/amcchord/M5Tab-Macintosh)

本项目将经典的BasiliskII Macintosh 68k模拟器移植到ESP32-P4微控制器，专为M5Stack Tab5硬件设计。它使得在便携式触摸屏设备上运行经典Mac OS（从System 7.x到Mac OS 8.1）成为可能。

该模拟器充分利用Tab5的双核ESP32-P4，将一个核心专用于摩托罗拉68040 CPU模拟，另一个核心用于视频渲染和I/O处理。它利用设备的32MB PSRAM作为模拟的Mac内存、帧缓冲区和显示输出，视频从640x360虚拟显示缩放至Tab5的1280x720屏幕。

主要功能包括：从真实的Macintosh ROM（如Quadra 650 ROM）启动、从SD卡加载硬盘和CD-ROM镜像、支持USB键盘和鼠标以及电容式触摸屏（作为鼠标使用）。预启动GUI允许配置内存大小（4-16MB）和磁盘镜像。

设置过程包括刷写固件和准备包含ROM文件及磁盘镜像的SD卡。该模拟器在约15 FPS下实现可用性能，适合在紧凑型电池供电设备上运行经典Mac生产力软件。

---

## 18. 中国在称星链存在碰撞风险后申请部署20万颗卫星

**原文标题**: China applies to put 200K satellites in space after calling Starlink crash risk

**原文链接**: [https://www.scmp.com/news/china/science/article/3339493/china-applies-put-200000-satellites-space-after-calling-starlink-crash-risk](https://www.scmp.com/news/china/science/article/3339493/china-applies-put-200000-satellites-space-after-calling-starlink-crash-risk)

中国已向国际电信联盟提交了发射超过20万颗互联网卫星的计划，主要通过两个巨型星座各发射96,714颗卫星来实现。此举是在北京批评SpaceX的星链计划占用轨道资源之后进行的。提交申请的是中国一家新成立的机构，就在几天前，美国联邦通信委员会批准SpaceX额外发射7500颗星链卫星，使其获批卫星总数达到1.5万颗。文章将此描述为美中争夺有限无线电频率和近地轨道位置的一部分，先发者将获得优先权。

---

## 19. 展示HN：加州预算互动图表（由Claude Code制作）

**原文标题**: Show HN: Interactive California Budget (by Claude Code)

**原文链接**: [https://california-budget.com](https://california-budget.com)

本文介绍了一款交互式网络工具，用户可通过它探索加州州政府预算。该工具由Claude Code开发，将加州每年3000多亿美元的预算进行可视化呈现，既分解了财政收入来源（如个人所得税和销售税），也展示了主要支出类别，包括K-12基础教育、健康与公共服务、高等教育等。

其核心特色在于交互性：用户可以点击预算的不同板块查看详细分类，了解资金如何从收入端流向各个项目，并查看近年来的变化趋势。该项目旨在让复杂的公共财政数据更易于居民理解，从而提升财政透明度并促进公民参与。

该工具以“Show HN”形式发布，邀请Hacker News社区进行试用、提供反馈，并就加州的财政优先事项展开讨论。

---

## 20. 《雷神之锤1》单人地图设计理论（2001年）

**原文标题**: Quake 1 Single-Player Map Design Theories (2001)

**原文链接**: [https://www.quaddicted.com/webarchive//teamshambler.planetquake.gamespy.com/theories1.html](https://www.quaddicted.com/webarchive//teamshambler.planetquake.gamespy.com/theories1.html)

这篇2001年的文章概述了为《雷神之锤1》设计高质量单人地图的核心原则。文章提出了一系列理论，其中“理论0”作为绝对准则：公开发布的地图必须品质优良且值得游玩。作者主张地图制作者在发布作品前，应当学习id Software的原版地图及其他资源，并强调初次制图不能成为质量低劣的借口。

文章通过十条准则定义了“合格”的单人关卡，包括具备明确的入口/出口、需要逐步探索的复杂布局、数量合理且位置恰当的怪物配置，以及无需作弊或特殊技巧即可通关。同时，地图必须在技术上完善、内容完整且主题连贯。

文章指出了应避免的关键常见缺陷：缺乏鲜明统一的视觉主题；难度失衡（开局过难而结尾过易）；以及粗糙丑陋的建筑结构或纹理设计。其核心观点是：地图制作者必须在玩法、视觉设计和执行技术等所有方面追求品质，才能为玩家创造愉悦的体验。

---

## 21. 《简明TypeScript指南》

**原文标题**: The Concise TypeScript Book

**原文链接**: [https://github.com/gibbok/typescript-book](https://github.com/gibbok/typescript-book)

**《简明 TypeScript 书籍》概要**

《简明 TypeScript 书籍》是一份免费、开源的 TypeScript 指南。TypeScript 是由微软开发的 JavaScript 强类型超集。本书全面概述了 TypeScript 5.2，涵盖了其核心目的：为 JavaScript 添加静态类型检查，在编译时捕获错误，并提升大型应用程序的代码质量。

书中解释道，TypeScript 会编译为纯 JavaScript，因此可在任何能运行 JavaScript 的地方执行，而其类型系统在此过程中会被擦除。本书重点介绍了类型推断、对现代 JavaScript 特性的访问以及出色的工具支持等关键优势。

该指南的很大一部分内容侧重于实践设置，包括通过 npm/yarn 进行安装以及配置 `tsconfig.json` 文件。它深入探讨了 TypeScript 类型系统的基础知识——如原始类型、接口、联合类型和泛型——以及高级概念，如实用类型、装饰器和条件类型。

作者 Simone Poggiali 强调，本书面向所有技能水平的读者，既可作为学习资源，也可作为参考手册。同时指出，本书提供多种语言和格式（网页版、ePub），并得到了社区贡献的支持。

---

## 22. 据报道，Instagram数据泄露事件暴露了1750万用户的个人信息。

**原文标题**: Instagram data breach reportedly exposed the personal info of 17.5M users

**原文链接**: [https://www.engadget.com/cybersecurity/an-instagram-data-breach-reportedly-exposed-the-personal-info-of-175-million-users-192105616.html](https://www.engadget.com/cybersecurity/an-instagram-data-breach-reportedly-exposed-the-personal-info-of-175-million-users-192105616.html)

网络安全公司Malwarebytes的一份报告称，一次数据泄露事件暴露了约1750万Instagram用户的敏感个人信息。据称泄露的数据包括用户名、实际地址、电话号码和电子邮件地址，并据称正在暗网上出售。

这一事件导致许多用户收到大量来自Instagram的密码重置邮件。Malwarebytes警告称，泄露的信息可能被用于钓鱼攻击或账户接管。

然而，Instagram否认发生了数据泄露。该公司在X平台上发表声明称，已修复一个允许外部方为某些账户请求密码重置邮件的问题，但强调“我们的系统并未被入侵，您的Instagram账户是安全的”。

尽管Instagram予以否认，但安全专家建议用户采取预防措施，例如启用双重身份验证、更改密码，并在Meta账户中心查看已登录设备。

---

## 23. 我的家庭光纤网络崩溃了

**原文标题**: My Home Fibre Network Disintegrated

**原文链接**: [https://alienchow.dev/post/fibre_disintegration/](https://alienchow.dev/post/fibre_disintegration/)

作者描述了其新加坡家庭网络中一根军用级铠装光纤电缆突发灾难性故障的情况。这根三年前购买并安装在水泥地板下PVC管道中的电缆，其外护套触之即碎，暴露出内部的金属和凯夫拉护层。主要怀疑原因是当地极端湿度导致的水解作用，或是存放在附近的油漆溶剂蒸发造成的化学降解。

此次故障暴露了安装中的关键缺陷：电缆以松散盘绕的余量形式存放，而非永久端接到配线架上。尝试用专用电工胶带修复受损部分导致护套进一步碎裂，并可能在脆弱的内部光纤上造成损伤性弯折。

尽管网络连接仍能工作，但速度测试显示性能已受损。作者现在面临修复约10米裸露电缆的艰巨任务，并担心其余埋设电缆可能遭遇同样命运，因为它们的完整性似乎也已类似受损。文中强调的关键教训是：避免在埋设电缆中留存余量，且永久安装务必使用正确、固定的配线架连接。

---

## 24. 在HTML中，您无需闭合<p>、<li>、<img>或<br>标签。

**原文标题**: You are not required to close your <p>, <li>, <img>, or <br> tags in HTML

**原文链接**: [https://blog.novalistic.com/archives/2017/08/optional-end-tags-in-html/](https://blog.novalistic.com/archives/2017/08/optional-end-tags-in-html/)

本文澄清了HTML中一个常见的误解：某些标签，如`<p>`、`<li>`、`<img>`和`<br>`，并不需要显式闭合标签。这是因为HTML（与XHTML不同）将这些标签定义为具有可选结束标签或空元素（即不能包含内容的元素，如`<img>`）。

作者解释道，普遍认为所有标签都必须闭合的观念源于XHTML时代，该规范强制执行严格的XML规则。然而在HTML中，浏览器能够正确解析没有这些可选闭合标签的标记；这并非浏览器需要“修正”的错误。

虽然省略可选标签是有效的，但文章给出了实用建议：为了代码清晰、团队协作和工具兼容性，显式闭合所有非空元素是一个好习惯。对于空元素，使用自闭合的`/`语法（例如`<br />`）是个人偏好，有助于提升可读性，但并非必需。关键建议是无论选择哪种风格，都应保持一致性。

---

## 25. 仅限HTML的条件性懒加载（通过预加载与媒体查询实现）

**原文标题**: HTML-only conditional lazy loading (via preload and media)

**原文链接**: [https://orga.cat/blog/html-conditional-lazy-loading/](https://orga.cat/blog/html-conditional-lazy-loading/)

本文介绍了一种仅使用HTML实现图片条件懒加载的技术，无需服务器端逻辑或JavaScript。其核心解决的是：在桌面布局中对最大内容绘制（LCP）至关重要的图片，在移动设备上可能位于首屏之外，这使得单一的`loading`属性（`eager`或`lazy`）无法对所有用户都达到最优效果。

提出的解决方案结合了带有`media`查询的`<link rel="preload">`标签（或HTTP `Link`头部）和标记为`loading="lazy"`的标准`<img>`标签。例如，为宽度大于1024px的屏幕预加载图片可确保在桌面上立即加载，而在较小屏幕上预加载会被忽略，图片按预期进行懒加载。

作者指出这利用了浏览器行为：如果图片已通过预加载获取，后续`<img>`标签上的`lazy`属性不会延迟其加载。这实现了基于视口的加载策略。该技术已应用于作者网站上的书籍封面图片。

关键注意事项是：此方法未经官方文档记载，且需要预加载，而预加载并非总是可取。但它提供了一种纯HTML方式来针对不同屏幕尺寸优化LCP。

---

## 26. Vojtux – 面向视障用户的非官方Linux发行版

**原文标题**: Vojtux – Unofficial Linux Distribution Aimed at Visually Impaired Users

**原文链接**: [https://github.com/vojtapolasek/vojtux](https://github.com/vojtapolasek/vojtux)

Vojtux是一款基于Fedora 43的Mate Spin衍生版本的非官方无障碍Linux发行版，专为视障用户设计。其核心理念是尽可能贴近上游Fedora，仅提供必要的无障碍功能增强以降低维护负担。该项目的终极目标是通过向上游贡献修复补丁来提升Fedora原生无障碍支持，最终使自身失去存在必要。

该发行版使用Kickstart配置文件和托管于Copr仓库的自定义RPM软件包构建。它预配置了Orca屏幕阅读器自动启动，启用Qt无障碍支持，并集成了LIOS OCR软件、VLC播放器及多种硬件支持包等实用工具。系统还添加了若干键盘快捷键，用于重启Orca、调节音量等功能。

因体积过大无法存放于GitHub的预构建Live ISO镜像已单独托管，并提供校验和供验证。仓库中提供了本地构建镜像的指导说明（主要针对英文版本，捷克语变体现已过时）。项目文档记录了已知问题，并欢迎通过测试、漏洞报告、软件包开发和文档改进等方式参与贡献。

---

## 27. KaraDAV – 轻量级兼容Nextcloud的WebDAV服务器

**原文标题**: KaraDAV – Lightweight Nextcloud compatible WebDAV server

**原文链接**: [https://github.com/kd2org/karadav](https://github.com/kd2org/karadav)

**KaraDAV** 是一款基于 PHP 8+ 编写的轻量级高性能 WebDAV 服务器，旨在作为兼容 NextCloud、ownCloud 及标准 WebDAV 客户端的简易文件共享方案。其主要目标是提供比 NextCloud 等重型平台更快速、更精简的替代选择，专注于核心文件同步功能。

主要特性包括基础的文件管理网页界面、支持多用户配额、回收站、缩略图生成，以及通过 Collabora 或 OnlyOffice 实现办公文档编辑兼容。它特别支持 NextCloud 客户端的多项功能，如分块上传、应用专用密码及 Notes API。

性能是其突出亮点，基准测试显示其速度显著优于 NextCloud，可与 Apache 的 mod_dav 相媲美。整个软件包不足 1MB，采用 SQLite 数据库，无需外部数据库服务器。

尽管支持众多 WebDAV 及 NextCloud 专属功能，它并非完整的 NextCloud 替代品，缺少日历、联系人及高级共享等功能。该项目采用 AGPL 开源协议，持续积极开发，定位于为优先注重文件同步而非全套协作应用的用户提供高效直接的选择。

---

## 28. 寻找并修复Ghostty最大的内存泄漏问题

**原文标题**: Finding and fixing Ghostty's largest memory leak

**原文链接**: [https://mitchellh.com/writing/ghostty-memory-leak-fix](https://mitchellh.com/writing/ghostty-memory-leak-fix)

终端模拟器Ghostty曾存在显著的内存泄漏问题，在长时间运行后内存使用量最高可达37 GB。该泄漏由特定应用程序（如Claude Code）触发，这些程序会产生需要非标准大内存页的情况。

该漏洞源于Ghostty的内存管理系统。该系统为提高效率，会从内存池中分配固定大小的“标准”页面组成PageList，极少情况下会直接分配更大的“非标准”页面。在滚动缓冲区修剪优化过程中，当复用最旧页面时，系统会错误地将非标准页面的元数据重置为标准大小，而未调整实际内存大小。随后在释放该页面时，系统会误判其为池中的标准页面，从而无法通过`munmap`释放底层内存，导致泄漏。

修复方案禁止在滚动缓冲区修剪期间复用非标准页面。取而代之的是正确销毁这些页面，并从内存池中重新分配标准页面。该解决方案已通过macOS的虚拟内存标记功能进行分配追踪验证。

尽管Ghostty在开发阶段采用了多种泄漏检测方法，但由于该泄漏触发条件罕见，此前未能被发现。现已添加测试以防止问题复发。修复版本已在每夜构建中提供，并将包含在官方1.3版本中。

---

## 29. 我们……了吗？

**原文标题**: Are We ... Yet?

**原文链接**: [https://wiki.mozilla.org/Areweyet](https://wiki.mozilla.org/Areweyet)

本文是一份精选网站列表，主要收录遵循“Are we ... yet?”命名惯例的各类技术项目进度追踪网站。该列表托管于MozillaWiki，并鼓励社区贡献。

主要列表分为三个部分：

1.  **活跃追踪器：** 核心的网站列表，用于监控开发状态，例如Rust的异步I/O（`areweasyncyet.rs`）、Firefox的WebRender引擎、视频编解码器压缩以及Matrix协议安全性。
2.  **不完全相同：** 名称类似但用途不同的网站，例如解释性网站或工具（如`downforeveryoneorjustme.com`、`web3isgoinggreat.com`）。
3.  **“我们死了吗”：** 已不再维护或不再相关的网站。

所追踪的项目多种多样，涵盖编程语言（尤其是Rust生态系统）、网络标准、浏览器性能、隐私保护以及特定的Mozilla计划。每个条目通常包括网站名称、URL、对其追踪内容的简要说明以及其所有者或负责团队。

本质上，该页面是一个社区维护的进度仪表板目录，有助于开发者和爱好者快速了解各种正在进行的技术工作的状态。

---

## 30. Show HN：我用Claude Code发现了100本书之间的联系

**原文标题**: Show HN: I used Claude Code to discover connections between 100 books

**原文链接**: [https://trails.pieterma.es/](https://trails.pieterma.es/)

本文介绍了一个项目，创作者使用AI工具Claude Code对100本不同的书籍进行了分析，并发现了它们之间的主题联系。

该项目的主要目标是通过识别和链接这些书籍的核心概念，绘制它们之间的思想关系图。提供的例子说明了这一过程：书籍《有益的谎言》（主张自我欺骗可以成为一种战略优势）与更广泛的概念“自我欺骗作为策略”相关联。这一概念进而链接到相关理念，如“蓝色谎言”（为群体利益而说的谎言）、“进化心理学”（可能解释这种行为起源）以及“自我欺骗”这一核心主题。

关键启示在于展示了AI不仅可用于内容生成，还能进行大规模分析和知识发现。通过处理海量文本库，该工具能自动呈现并可视化连接不同作品的隐藏概念网络，揭示来自不同领域的观点如何相互交叉与支撑。

---

