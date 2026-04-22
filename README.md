# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-04-22.md)

*最后自动更新时间: 2026-04-22 20:38:20*
## 1. 阿尔伯塔初创企业以半价销售无科技拖拉机。

**原文标题**: Alberta startup sells no-tech tractors for half price

**原文链接**: [https://wheelfront.com/this-alberta-startup-sells-no-tech-tractors-for-half-price/](https://wheelfront.com/this-alberta-startup-sells-no-tech-tractors-for-half-price/)

**《阿尔伯塔初创企业以半价销售“无科技”拖拉机》摘要**

阿尔伯塔省的初创企业Versatile Tractors正通过销售简化版“无科技”拖拉机，解决农民对现代复杂且昂贵农业机械的挫败感。其售价约为主流品牌的一半。

公司的核心产品是Model D型拖拉机，功率100马力，价格约5万加元。相比之下，约翰迪尔等巨头生产的类似型号售价可能超过10万加元。关键区别在于，Versatile有意摒弃了现代“智能”拖拉机标志性的复杂电子设备、传感器和专有软件，转而采用坚固的机械部件和标准易得的零件。

这一策略带来几大优势：
*   **经济实惠**：显著降低的价格使小型农场和新农人能够负担得起拖拉机。
*   **易于维修**：农民或当地机械师可使用基本工具自行完成多数维修，避免了昂贵的经销商服务费和软件锁定。
*   **耐用与简洁**：设计优先考虑可靠性和易用性，而非可能容易故障的高科技功能。

文章指出，Versatile的模式是对行业“维修权”争议的直接回应——制造商常限制诊断软件和零件的获取。通过专注于简洁性、用户自主维护和透明定价，这家阿尔伯塔初创企业正在为那些重视功能性、独立性和成本控制而非先进数字技术的农民开辟细分市场。

---

## 2. 过度编辑指的是模型对代码进行了超出必要范围的修改。

**原文标题**: Over-editing refers to a model modifying code beyond what is necessary

**原文链接**: [https://nrehiew.github.io/blog/minimal_editing/](https://nrehiew.github.io/blog/minimal_editing/)

本文探讨了AI编程助手存在的“过度编辑”问题，即模型在修复错误时，不必要地重写大量代码，导致代码审查困难。为量化此问题，作者通过程序化方式在代码中植入微小错误（如翻转运算符）构建了数据集，并基于正确率（Pass@1）以及利用词符级编辑距离和新增认知复杂度评估的编辑最小化程度对模型进行了测试。

关键发现表明，即使是GPT-5.4等顶尖模型也存在显著的过度编辑倾向，常产生庞大而复杂的改动。Claude Opus 4.6表现最佳，能以最少的编辑实现高正确率。明确提示模型“保留原始代码”能持续减少过度编辑，尤其对于倾向于“过度思考”而重写更多代码的推理模型效果更明显。

作者还尝试训练Qwen3 4B模型成为更忠实的编辑器。尽管监督微调在领域内数据上表现完美，却无法泛化至新的错误类型，暗示模型仅进行了记忆学习。其他方法如拒绝采样微调、直接偏好优化和强化学习虽提升幅度有限，但能在保持正确性的同时更稳健地改善编辑最小化程度。

核心结论是：过度编辑是普遍存在但可解决的问题。前沿模型在明确指令下能最大限度减少不必要修改，针对性训练也能培养此行为，但泛化能力仍是待突破的挑战。

---

## 3. 13岁学生阅读与数学成绩再次下滑。

**原文标题**: Scores decline again for 13-year-old students in reading and mathematics

**原文链接**: [https://www.nationsreportcard.gov/highlights/ltt/2023/](https://www.nationsreportcard.gov/highlights/ltt/2023/)

最新NAEP长期趋势评估显示，美国13岁学生的阅读和数学成绩出现显著下滑。与2020年相比，阅读平均分下降4分，数学平均分下降9分。若与十年前对比，跌幅更为明显：阅读下降7分，数学下降14分。

成绩下滑波及所有能力层级的学生，但数学成绩较差的学生受影响最严重，分数下降达12-14分。几乎所有学生群体的数学成绩以及多数群体的阅读成绩均出现下降，其中数学科目的白人与黑人学生成绩差距、男生与女生成绩差距持续扩大。

报告将这些趋势与学生行为及教育经历的变化联系起来。每月缺勤5天以上的学生比例从2020年的5%翻倍至2023年的10%，缺勤越多的学生成绩越低。目前仅有14%的学生表示几乎每天为兴趣阅读，较往年大幅减少，且成绩较好的学生坚持阅读的比例远高于其他群体。数学方面，虽然2020年以来整体情况未变，但现在修读代数的学生比例（24%）远低于十年前（34%），成绩优异的学生参加高阶课程的可能性显著更高。

---

## 4. Qwen3.6-27B：27B密集模型中的旗舰级编码能力

**原文标题**: Qwen3.6-27B: Flagship-Level Coding in a 27B Dense Model

**原文链接**: [https://qwen.ai/blog?id=qwen3.6-27b](https://qwen.ai/blog?id=qwen3.6-27b)

**Qwen3.6-27B**是阿里云通义千问团队推出的全新270亿参数稠密语言模型，定位为“旗舰级”编程模型。其设计目标是在保持更小、更高效体积的同时，提供媲美更大型模型的性能。

该模型的核心优势在于其卓越的编程基准测试表现。据报道，其编程能力可匹敌甚至超越700亿参数模型（如CodeLlama 70B），并能与专用代码模型（如DeepSeek-Coder-33B）竞争。这使其在代码生成、调试和解释等任务上表现极为出色。

除编程外，Qwen3.6-27B也是一款强大的通用模型。在推理、数学和知识等标准基准测试中均展现出竞争力，体现了其全面的能力。本次发布包含基础版和指令调优版。

其主要优势在于高效性。作为270亿参数模型，其所需的计算资源和内存远少于大型“旗舰”模型（通常为700亿+参数），使得部署和研究更为便捷。这种高性能编程能力、通用性及较小体积的结合，为开发者和企业寻求强大而实用的编程辅助及其他任务的AI模型提供了极具吸引力的选择。

---

## 5. 我们发现一个稳定的Firefox标识符，能将您所有的Tor匿名身份关联起来。

**原文标题**: We found a stable Firefox identifier linking all your private Tor identities

**原文链接**: [https://fingerprint.com/blog/firefox-tor-indexeddb-privacy-vulnerability/](https://fingerprint.com/blog/firefox-tor-indexeddb-privacy-vulnerability/)

基于Firefox的浏览器（包括Tor浏览器）存在一项隐私漏洞，允许网站生成一个独特且稳定的标识符，该标识符在浏览器进程的生命周期内持续存在。这一漏洞利用了`indexedDB.databases()` API返回数据库名称时的确定性顺序——该顺序源自进程范围内的内部数据结构，而非与特定网站来源相关。

此漏洞破坏了关键的隐私保护机制。它使得跨来源追踪成为可能，允许不相关的网站关联用户的活动。同时，它也削弱了隐私浏览模式的效果：在Firefox中，即使所有隐私窗口都已关闭，该标识符仍可保留；而在Tor浏览器中，即便使用了旨在重置会话的“新身份”功能，该标识符依然存在。

该问题为浏览器指纹识别提供了高熵值，可能产生数十比特的识别数据。Mozilla已在Firefox 150和ESR 140.10.0版本中通过修复Gecko代码的根本原因解决了此漏洞。解决方案是将数据库列表以规范（例如排序）顺序返回，在保留API功能供开发者使用的同时，消除了可被利用的信号。

---

## 6. 专为微型屏幕设计的5x5像素字体

**原文标题**: 5x5 Pixel font for tiny screens

**原文链接**: [https://maurycyz.com/projects/mcufont/](https://maurycyz.com/projects/mcufont/)

本文介绍了一款专为资源受限的微控制器和小型屏幕设计的5x5像素字体。作者认为，5x5是保持所有字符可读性的最小实用尺寸，包括区分大小写字母和带点的零。恒定的5像素宽度通过确保可预测的字符串长度和实现紧凑安全的布局，简化了编程。

整个字体仅占用350字节内存，非常适合AVR128DA28等RAM有限的设备。虽然最初为单色OLED（如128x64）设计，但该字体在彩色屏幕上因亚像素产生的伪投影效果而更具优势。

文章还探讨了更小字体作为思维实验：
*   **3x5：** 仍具较高可读性，但牺牲了“M”和“W”等字符。
*   **3x4与3x3：** 可读性显著下降，数字和字母难以区分。
*   **2x3与2x2：** 基本无法识别，大量字形重复，不适用于常规场景。

核心字体作为一种高效的手工解决方案，在此尺度上优于矢量字体，文中附有字体数据及相关资源链接。

---

## 7. 你不需要编辑对退稿提供建议。

**原文标题**: You don't need advice from editors on rejected manuscripts

**原文链接**: [https://twitter.com/orsonscottcard/status/2046702294406680751](https://twitter.com/orsonscottcard/status/2046702294406680751)

本文是一则浏览器错误提示，并非具有标题或内容可供总结的已发表文章。

该文本是X（原Twitter）在用户浏览器禁用JavaScript时显示的标准通知。其主要内容如下：

1.  **问题识别：** 检测到用户浏览器中JavaScript被禁用。
2.  **必要操作：** 指示用户启用JavaScript或切换至受支持的浏览器以使用X.com平台。
3.  **额外资源：** 提供帮助中心（可能包含受支持浏览器列表）、服务条款、隐私政策、Cookie政策及法律声明的链接。
4.  **页脚信息：** 包含标准企业页脚文本，注明平台所有者（X Corp.）及版权年份。

文中并无关于编辑或稿件拒稿建议的文章、论点或意见。用户提供的标题“您不需要编辑对拒稿的建议”与所提供实际内容无关。

---

## 8. Windows 9x 的 Linux 子系统

**原文标题**: Windows 9x Subsystem for Linux

**原文链接**: [https://social.hails.org/@hailey/116446826733136456](https://social.hails.org/@hailey/116446826733136456)

**《Windows 9x Linux子系统》摘要**

本文引用 hails.org 的一篇帖子，介绍了一个名为 **Windows 9x Linux 子系统（W9xSL）** 的项目。其核心前提是让用户能够在传统的 Windows 9x 操作系统（如 Windows 95、98 或 ME）中直接运行 Linux 环境。

关键意义在于，该工具提供了一种**现代化并扩展这些过时系统功能**的方法。通过集成 Linux 子系统，用户可能可以运行更现代的软件、开发工具或实用程序，而这些在 Windows 9x 上已不再获得原生支持。这为爱好者、复古计算爱好者或维护旧硬件的人们弥合了显著的技术鸿沟。

这段简短的摘要表明，该项目很可能是一个社区驱动的技术尝试，旨在进行系统保存和实验。它突显了通过结合 Linux 生态系统的强大功能和灵活性，来复兴和改造旧操作系统的持续兴趣。

*注：所提供文本主要是一段社交媒体帖子的片段。由于无法获取原文完整内容，此摘要基于项目名称及其所述目的。*

---

## 9. 新研究对比玉米能源种植与太阳能生产，结果毫无悬念。

**原文标题**: New study compares growing corn for energy to solar production. It's no contest

**原文链接**: [https://www.anthropocenemagazine.org/2025/04/new-study-compares-growing-corn-for-energy-to-solar-production-its-no-contest/](https://www.anthropocenemagazine.org/2025/04/new-study-compares-growing-corn-for-energy-to-solar-production-its-no-contest/)

**摘要：**

一项新研究直接比较了种植玉米生产生物能源（乙醇）与在同一片土地上建设太阳能发电站的土地利用效率。结果明确显示太阳能更具优势。

研究发现，太阳能光伏系统在将阳光转化为可用能源方面的效率远高于玉米乙醇。具体而言，太阳能电池板**每英亩产生的能源至少是玉米转化为车用乙醇的50倍**。即使考虑到制造太阳能板所消耗的能源，太阳能的净能源增益仍远胜一筹。

这一鲜明对比凸显了将优质农田用于生物燃料作物生产的低效性。研究得出结论：在替代化石燃料和减少温室气体排放方面，将土地用于太阳能发电远比种植生物燃料作物更为有效。这一发现为能源和气候政策优先发展太阳能农场而非玉米乙醇生产提供了明确的数据支持。

---

## 10. 网站直接从模特处直播。

**原文标题**: Website streamed live directly from a model

**原文链接**: [https://flipbook.page/](https://flipbook.page/)

本文介绍的Flipbook是一个网站，它能直接从3D模型实时传输动态视频。其核心创新在于：该平台并非播放预渲染的视频，而是传输底层模型数据，这些数据会在观看者的网页浏览器中即时渲染。

这种方式具有显著优势。它实现了高度互动体验，用户可以在直播场景中暂停、回放并自由切换视角，如同探索游戏世界。由于绕过了传统的视频编解码流程，这项技术有望实现极低延迟。

其应用前景广阔，涵盖沉浸式直播活动、体育赛事、音乐会（观众可自选观看视角），以及远程教育、虚拟旅游和实时数据可视化等领域。

本质上，Flipbook代表了从传输像素到传输数字源的转变，将直播视频的即时性与3D虚拟世界的交互性、灵活性融为一体。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 2 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 3 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 4 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 5 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 6 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 7 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 8 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 9 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 10 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 11 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 12 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 13 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 14 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 15 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 16 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 17 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 18 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 19 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 20 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 21 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 22 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 23 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 24 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 25 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 26 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 27 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 28 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 29 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 30 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 31 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 32 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 33 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 34 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 35 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 36 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 37 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 38 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 39 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 40 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 41 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 42 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 43 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 44 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 45 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 46 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 47 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 48 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 49 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 50 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 51 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 52 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 53 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 54 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 55 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 56 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 57 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 58 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 59 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 60 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 61 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 62 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 63 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 64 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 65 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 66 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 67 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 68 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 69 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 70 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 71 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 72 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 73 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 74 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 75 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 76 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 77 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 78 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 79 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 80 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 81 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 82 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 83 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 84 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 85 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 86 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 87 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 88 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 89 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 90 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 91 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 92 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 93 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 94 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 95 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 96 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 97 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 98 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 99 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 100 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 101 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 102 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 103 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 104 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 105 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 106 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 107 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 108 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 109 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 110 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 111 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 112 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 113 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 114 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 115 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 116 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 117 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 118 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 119 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 120 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 121 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 122 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 123 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 124 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 125 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 126 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 127 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 128 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 129 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 130 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 131 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 132 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 133 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 134 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 135 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 136 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 137 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 138 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 139 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 140 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 141 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 142 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 143 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 144 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 145 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 146 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 147 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 148 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 149 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 150 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 151 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 152 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 153 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 154 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 155 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 156 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 157 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 158 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 159 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 160 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 161 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 162 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 163 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 164 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 165 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 166 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 167 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 168 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 169 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 170 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 171 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 172 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 173 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 174 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 175 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 176 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 177 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 178 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 179 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 180 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 181 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 182 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 183 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 184 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 185 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 186 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 187 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 188 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 189 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 190 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 191 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 192 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 193 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 194 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 195 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 196 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 197 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 198 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 199 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 200 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 201 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 202 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 203 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 204 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 205 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 206 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 207 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 208 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 209 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 210 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 211 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 212 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 213 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 214 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 215 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 216 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 217 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 218 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 219 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 220 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 221 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 222 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 223 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 224 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 225 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 226 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 227 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 228 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 229 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 230 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 231 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 232 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 233 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 234 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 235 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 236 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 237 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 238 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 239 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 240 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 241 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 242 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 243 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 244 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 245 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 246 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 247 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 248 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 249 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 250 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 251 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 252 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 253 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 254 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 255 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 256 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 257 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 258 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 259 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 260 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 261 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 262 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 263 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 264 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 265 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 266 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 267 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 268 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 269 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 270 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 271 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 272 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 273 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 274 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 275 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 276 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 277 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 278 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 279 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 280 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 281 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 282 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 283 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 284 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 285 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 286 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 287 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 288 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 289 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 290 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 291 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 292 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 293 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 294 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 295 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 296 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 297 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 298 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 299 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 300 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 301 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 302 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 303 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 304 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 305 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 306 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 307 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 308 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 309 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 310 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 311 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 312 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 313 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 314 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 315 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 316 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 317 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 318 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 319 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 320 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 321 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 322 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 323 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 324 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 325 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 326 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 327 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 328 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 329 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 330 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 331 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 332 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 333 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 334 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 335 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 336 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 337 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 338 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 339 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 340 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 341 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 342 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 343 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 344 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 345 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 346 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 347 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 348 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 349 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 350 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 351 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 352 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 353 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 354 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 355 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 356 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 357 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 358 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 359 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 360 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 361 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 362 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 363 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 364 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 365 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 366 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 367 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 368 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 369 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 370 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 371 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 372 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 373 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 374 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 375 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 376 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 377 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 378 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 379 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 380 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 381 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 382 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 383 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 384 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 385 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 386 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 387 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 388 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 389 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 390 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 391 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 392 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 393 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 394 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 395 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 396 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
