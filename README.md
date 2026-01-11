# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-01-11.md)

*最后自动更新时间: 2026-01-11 20:37:38*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 2 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 3 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 4 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 5 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 6 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 7 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 8 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 9 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 10 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 11 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 12 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 13 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 14 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 15 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 16 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 17 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 18 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 19 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 20 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 21 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 22 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 23 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 24 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 25 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 26 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 27 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 28 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 29 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 30 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 31 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 32 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 33 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 34 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 35 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 36 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 37 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 38 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 39 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 40 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 41 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 42 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 43 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 44 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 45 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 46 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 47 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 48 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 49 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 50 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 51 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 52 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 53 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 54 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 55 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 56 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 57 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 58 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 59 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 60 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 61 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 62 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 63 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 64 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 65 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 66 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 67 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 68 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 69 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 70 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 71 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 72 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 73 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 74 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 75 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 76 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 77 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 78 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 79 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 80 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 81 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 82 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 83 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 84 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 85 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 86 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 87 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 88 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 89 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 90 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 91 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 92 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 93 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 94 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 95 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 96 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 97 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 98 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 99 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 100 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 101 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 102 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 103 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 104 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 105 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 106 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 107 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 108 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 109 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 110 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 111 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 112 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 113 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 114 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 115 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 116 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 117 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 118 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 119 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 120 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 121 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 122 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 123 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 124 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 125 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 126 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 127 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 128 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 129 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 130 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 131 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 132 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 133 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 134 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 135 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 136 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 137 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 138 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 139 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 140 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 141 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 142 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 143 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 144 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 145 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 146 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 147 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 148 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 149 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 150 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 151 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 152 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 153 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 154 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 155 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 156 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 157 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 158 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 159 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 160 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 161 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 162 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 163 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 164 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 165 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 166 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 167 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 168 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 169 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 170 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 171 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 172 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 173 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 174 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 175 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 176 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 177 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 178 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 179 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 180 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 181 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 182 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 183 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 184 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 185 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 186 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 187 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 188 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 189 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 190 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 191 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 192 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 193 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 194 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 195 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 196 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 197 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 198 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 199 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 200 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 201 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 202 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 203 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 204 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 205 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 206 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 207 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 208 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 209 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 210 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 211 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 212 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 213 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 214 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 215 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 216 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 217 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 218 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 219 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 220 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 221 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 222 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 223 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 224 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 225 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 226 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 227 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 228 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 229 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 230 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 231 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 232 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 233 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 234 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 235 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 236 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 237 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 238 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 239 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 240 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 241 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 242 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 243 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 244 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 245 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 246 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 247 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 248 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 249 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 250 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 251 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 252 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 253 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 254 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 255 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 256 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 257 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 258 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 259 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 260 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 261 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 262 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 263 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 264 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 265 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 266 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 267 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 268 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 269 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 270 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 271 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 272 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 273 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 274 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 275 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 276 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 277 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 278 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 279 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 280 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 281 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 282 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 283 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 284 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 285 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 286 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 287 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 288 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 289 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 290 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 291 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 292 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 293 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 294 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 295 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
