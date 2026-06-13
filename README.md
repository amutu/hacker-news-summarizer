# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-06-13.md)

*最后自动更新时间: 2026-06-13 20:33:34*
## 1. 美国在人口普查数据中禁用差分隐私

**原文标题**: US bans differential privacy in Census data

**原文链接**: [https://desfontain.es/blog/banning-noise.html](https://desfontain.es/blog/banning-noise.html)

**摘要：**美国商务部禁止人口普查局和经济分析局的统计产品使用“噪声注入”（包括差分隐私）。差分隐私作为一种黄金标准技术，通过添加经过精心校准的随机噪声来保护个人数据，在旧方法（如数据交换）被证明易受记录重建攻击后，被2020年人口普查采用。尽管它比其他缓解措施保留了更多效用，但使数据不准确性透明化，激怒了人口统计学家并阻碍了选区划分操作。该禁令拒绝在避免披露中使用随机性，转而倾向于粗糙化和抑制。这存在问题，因为噪声对隐私至关重要：准确的统计使重新识别攻击变得轻而易举。该禁令可能恶化隐私/效用权衡——未来的数据发布要么因粗糙方法而毫无用处，要么存在安全漏洞。该指令可能旨在为选区划分实现重新识别、停止发布差异数据，或干脆忽视固有的隐私问题。

---

## 2. GameBoy 工作伙伴

**原文标题**: GameBoy Workboy

**原文链接**: [https://tcrf.net/Workboy](https://tcrf.net/Workboy)

本文介绍了 **Workboy**，一款未正式发行的 Game Boy 配件，旨在通过配备键盘将掌机变为微型工作站，用于管理日程、地址、笔记及货币/文字转换。尽管曾在杂志上刊登广告，但从未商业发售。

该卡带的 ROM 于 2020 年 9 月的任天堂泄露事件中被发现。尽管标题画面显示版本号为 **8.87**，但内部代码显示实际版本为 **5.74**。较高的版本号是在屏幕加载前从特定 ROM 偏移量中替换而来。键盘一度被认为已遗失，直到 2020 年 12 月 DidYouKnowGaming? 的一则视频显示，Liam Robertson 使用了一款原型键盘配合泄露的 ROM。

标题画面显示授权方为 **Montague-Weston** 至 **Fabtek, Inc.**，并包含英语、西班牙语、意大利语、德语和法语的本地化字符串。该游戏被归类为未发布、未完成的 Game Boy 作品，带有未使用的文本，来源于 2020 年 9 月的任天堂泄露事件，并列入 BIOS/固件 ROM 类别。

---

## 3. 在Behringer DDX3216上运行从零自制的x86 BIOS版DOS系统

**原文标题**: Running DOS on Behringers DDX3216 with a DIY x86-Bios from Scratch

**原文链接**: [https://chrisdevblog.com/2026/06/08/running-dos-on-behringers-ddx3216-using-a-diy-x86-bios/](https://chrisdevblog.com/2026/06/08/running-dos-on-behringers-ddx3216-using-a-diy-x86-bios/)

本文详细介绍了作者为Behringer DDX3216音频调音台（搭载AMD Elan SC300 386 SoC）从零编写自定义x86 BIOS的全过程。在找不到现成BIOS后，作者通过研究CPU复位向量（内存地址0xFFF0）学习x86启动流程，并编写了一段最小汇编程序：禁用中断后跳转到启动代码。链接脚本将该程序正确放置在64KB ROM中。

作者阐释了x86分段内存模型（实模式仅访问1MB空间），并绘制了兼容DOS所需的内存布局。为加速开发，采用树莓派Pico作为ROM模拟器。首个硬件任务是配置SoC的GPIO与片选逻辑，启用外接东芝TLC16C552 UART串口调试，成功以9600波特率输出字符。

项目随后进入LCD显示屏初始化阶段——该屏幕连接至SC300集成的CGA兼容接口，文本模式使用内存段0xB800存储字符数据。本文完整记录了为嵌入式386平台成功创建功能型自定义BIOS的过程，既实现了软件开发支持，也为后续启动MS-DOS或FreeDOS等操作系统铺平道路。

---

## 4. 治疗胰腺肿瘤或已揭示癌症的“主控开关”

**原文标题**: Treating pancreatic tumours may have revealed cancer's master switch

**原文链接**: [https://economist.com/science-and-technology/2026/06/12/treating-pancreatic-tumours-may-have-revealed-cancers-master-switch](https://economist.com/science-and-technology/2026/06/12/treating-pancreatic-tumours-may-have-revealed-cancers-master-switch)

无法访问该文章链接。该URL似乎指向未来日期（2026年6月12日），可能并非当前可访问的网页。请提供文章原文或有效链接以便进行总结。

---

## 5. 每一帧都是绝佳之作

**原文标题**: Every Frame Perfect

**原文链接**: [https://tonsky.me/blog/every-frame-perfect/](https://tonsky.me/blog/every-frame-perfect/)

**《每一帧皆完美》摘要**  
本文主张UI设计应追求每一帧的完美，而不仅是起始与结束状态。受Wayland技术目标的启发，作者将其应用于用户界面：应用在任何瞬间的截图都需具备意义。这能建立用户信任，因为精致的UI传递出严谨的代码品质。  

关键实践要点包括：避免屏幕间的白色闪烁、部分加载的内容、布局偏移、内部不一致（如冲突的状态提示）以及卡顿动画。案例展示了失败场景：列表动画中干扰性的背景移动、Safari占位符与光标动画不匹配、Photos裁剪边框与图片捕捉不同步、YouTube不合逻辑的矩形过渡。这些会导致困惑、不信任或虚假感受。  

作者强调动画应助力理解而非造成障碍。当技术超越程序员能力（如DOM限制）时，不完美帧便会出现。行动号召：关注每一帧，而非仅聚焦始末。精准、一致的动画能增强用户对应用品质的信心。

---

## 6. 德克萨斯州是美国企业的新重心

**原文标题**: Texas is America Inc's new centre of gravity

**原文链接**: [https://www.economist.com/business/2026/05/31/texas-is-america-incs-new-centre-of-gravity](https://www.economist.com/business/2026/05/31/texas-is-america-incs-new-centre-of-gravity)

无法访问该文章链接。该URL可能需要订阅或位于付费墙后，我无法直接获取或查看其内容。请提供原文或关键摘录供我总结。

---

## 7. 亚马逊CEO与美国官员的会谈引发对Anthropic模型的打压

**原文标题**: Amazon CEO's talks with U.S. officials triggered crackdown on Anthropic models

**原文链接**: [https://www.wsj.com/tech/ai/amazon-ceos-talks-with-u-s-officials-triggered-crackdown-on-anthropic-models-dcc90578?st=Yct6gx&reflink=desktopwebshare_permalink](https://www.wsj.com/tech/ai/amazon-ceos-talks-with-u-s-officials-triggered-crackdown-on-anthropic-models-dcc90578?st=Yct6gx&reflink=desktopwebshare_permalink)

无法访问该文章链接。

---

## 8. 欣赏Exif信息

**原文标题**: Appreciating Exif

**原文链接**: [https://brentfitzgerald.com/posts/appreciating-exif/](https://brentfitzgerald.com/posts/appreciating-exif/)

**《欣赏Exif》摘要**

本文提供了数字图像中Exif元数据的实用指南。Exif（可交换图像文件格式）是1995年推出的元数据标准，相机和手机通过它将时间戳、相机设置、GPS位置和方向等信息直接存储在图像文件中。

**Exif存储位置：** 在JPEG文件中，Exif位于文件开头附近的APP1标记段中，包含基于TIFF结构的标签条目。其他格式（如WebP、HEIC）存储方式不同，但使用相同的数据载荷。

**方向：** 最常遇到的标签。相机不会旋转原始像素，而是存储一个方向值（1-8），告知查看器如何显示图像。处理像素的开发者应首先标准化方向，以避免重复旋转。

**关键工具：** 作者推荐使用`exiftool`来检查/操作元数据。例如，`exiftool -a -G1 -s`显示分组标签，`exiftool -all=`则剥离元数据。

**重要注意事项：**
- 元数据并非权威——它可能被伪造或剥离。
- "剥离Exif"不会移除所有元数据（XMP、IPTC、ICC配置文件、C2PA、制造商注释可能仍然存在）。
- 上传平台不会自动剥离元数据；开发者必须显式处理。

**最佳实践：** 对于图像处理，在像素操作前先标准化方向，然后将方向设置为1或移除该标签，以防止后续查看器重新旋转。

---

## 9. Intel 8087浮点芯片核心的加法器

**原文标题**: The adder at the heart of Intel's 8087 floating-point chip

**原文链接**: [https://www.righto.com/2026/06/intel-8087-adder-reverse-engineered.html](https://www.righto.com/2026/06/intel-8087-adder-reverse-engineered.html)

文章详细介绍了英特尔8087浮点协处理器（1980年）核心中69位加法器的关键作用与设计。该加法器对所有芯片运算至关重要，包括算术运算、平方根及超越函数计算。为提升速度，加法器未采用对69位运算而言过慢的简单行波进位设计，而是将加法分解为4位块，并运用两种优化技术：曼彻斯特进位链与跳跃进位电路。曼彻斯特进位链通过由生成、传播、删除信号（所有位并行计算）控制的开关，使进位快速通过导线传输；跳跃进位电路则检测到某块所有位均处于传播模式时，允许进位直接绕过该块的内部链。该加法器采用NMOS晶体管，为提升性能将进位线预充电至5V，以0V状态表示进位。尽管有这些优化，8087每次加法仍需两个时钟周期。该加法器宽度为69位（支持64位有效数、三个舍入位及取反或加倍选项），输出70位结果，是连接跳跃移位器和求和移位器等寄存器的大型数据通路的一部分，可实现高效乘法（基4布斯算法）、除法及平方根计算。总之，文章深度解析了8087加法器如何通过曼彻斯特进位链在复杂度与性能间取得平衡，成为芯片数学运算能力的关键。

---

## 10. 不破产的家庭AI编程

**原文标题**: AI coding at home without going broke

**原文链接**: [https://stephen.bochinski.dev/blog/2026/06/13/ai-coding-at-home-without-going-broke/](https://stephen.bochinski.dev/blog/2026/06/13/ai-coding-at-home-without-going-broke/)

文章概述了三种在家中实现高性价比AI编程的方法，并在前期投入与长期灵活性之间进行了权衡。

1.  **自建主机**：购买一台机器在本地运行开源模型可免除按token计费的成本，但需要较高的前期投入。可用的模型弱于前沿模型，且只有让机器持续运行长时间、高强度任务时才能体现价值。硬件可能迅速过时。

2.  **租用开源API**：推荐大多数用户跳过硬件，通过OpenRouter等服务提供商按token付费使用开源模型。这种方式避免了高昂的GPU成本，支持轻松切换不同模型，也无需进行优化工作。

3.  **前沿订阅**：OpenAI和Anthropic的订阅方案（约400美元/月）以标价计算可提供价值约2800美元的API使用量，对于手工操作而言相当划算。但此类方案用量受限，且会因自动化代理的频繁调用而快速耗尽。

最佳方案是**结合后两种方式**：将前沿订阅用于规划、规范编写等复杂任务，同时按API费率使用开源模型处理常规、机械化的编码工作。通过将“规范驱动开发”与这种成本策略相结合，单个开发者每月花费约1000美元，即可达到相当于二十人工程团队的产出水平。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 2 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 3 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 4 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 5 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 6 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 7 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 8 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 9 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 10 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 11 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 12 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 13 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 14 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 15 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 16 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 17 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 18 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 19 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 20 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 21 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 22 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 23 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 24 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 25 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 26 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 27 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 28 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 29 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 30 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 31 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 32 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 33 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 34 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 35 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 36 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 37 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 38 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 39 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 40 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 41 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 42 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 43 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 44 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 45 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 46 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 47 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 48 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 49 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 50 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 51 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 52 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 53 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 54 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 55 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 56 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 57 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 58 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 59 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 60 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 61 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 62 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 63 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 64 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 65 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 66 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 67 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 68 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 69 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 70 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 71 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 72 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 73 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 74 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 75 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 76 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 77 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 78 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 79 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 80 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 81 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 82 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 83 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 84 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 85 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 86 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 87 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 88 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 89 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 90 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 91 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 92 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 93 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 94 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 95 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 96 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 97 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 98 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 99 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 100 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 101 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 102 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 103 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 104 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 105 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 106 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 107 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 108 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 109 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 110 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 111 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 112 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 113 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 114 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 115 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 116 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 117 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 118 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 119 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 120 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 121 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 122 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 123 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 124 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 125 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 126 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 127 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 128 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 129 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 130 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 131 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 132 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 133 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 134 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 135 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 136 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 137 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 138 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 139 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 140 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 141 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 142 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 143 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 144 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 145 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 146 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 147 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 148 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 149 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 150 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 151 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 152 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 153 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 154 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 155 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 156 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 157 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 158 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 159 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 160 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 161 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 162 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 163 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 164 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 165 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 166 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 167 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 168 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 169 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 170 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 171 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 172 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 173 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 174 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 175 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 176 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 177 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 178 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 179 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 180 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 181 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 182 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 183 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 184 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 185 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 186 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 187 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 188 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 189 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 190 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 191 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 192 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 193 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 194 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 195 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 196 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 197 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 198 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 199 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 200 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 201 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 202 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 203 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 204 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 205 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 206 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 207 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 208 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 209 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 210 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 211 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 212 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 213 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 214 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 215 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 216 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 217 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 218 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 219 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 220 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 221 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 222 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 223 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 224 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 225 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 226 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 227 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 228 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 229 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 230 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 231 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 232 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 233 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 234 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 235 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 236 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 237 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 238 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 239 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 240 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 241 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 242 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 243 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 244 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 245 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 246 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 247 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 248 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 249 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 250 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 251 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 252 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 253 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 254 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 255 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 256 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 257 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 258 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 259 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 260 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 261 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 262 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 263 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 264 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 265 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 266 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 267 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 268 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 269 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 270 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 271 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 272 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 273 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 274 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 275 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 276 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 277 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 278 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 279 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 280 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 281 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 282 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 283 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 284 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 285 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 286 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 287 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 288 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 289 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 290 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 291 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 292 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 293 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 294 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 295 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 296 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 297 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 298 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 299 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 300 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 301 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 302 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 303 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 304 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 305 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 306 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 307 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 308 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 309 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 310 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 311 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 312 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 313 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 314 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 315 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 316 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 317 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 318 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 319 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 320 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 321 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 322 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 323 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 324 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 325 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 326 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 327 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 328 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 329 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 330 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 331 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 332 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 333 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 334 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 335 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 336 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 337 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 338 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 339 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 340 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 341 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 342 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 343 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 344 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 345 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 346 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 347 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 348 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 349 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 350 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 351 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 352 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 353 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 354 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 355 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 356 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 357 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 358 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 359 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 360 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 361 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 362 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 363 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 364 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 365 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 366 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 367 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 368 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 369 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 370 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 371 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 372 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 373 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 374 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 375 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 376 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 377 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 378 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 379 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 380 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 381 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 382 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 383 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 384 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 385 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 386 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 387 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 388 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 389 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 390 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 391 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 392 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 393 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 394 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 395 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 396 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 397 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 398 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 399 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 400 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 401 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 402 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 403 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 404 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 405 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 406 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 407 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 408 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 409 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 410 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 411 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 412 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 413 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 414 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 415 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 416 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 417 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 418 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 419 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 420 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 421 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 422 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 423 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 424 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 425 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 426 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 427 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 428 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 429 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 430 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 431 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 432 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 433 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 434 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 435 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 436 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 437 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 438 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 439 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 440 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 441 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 442 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 443 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 444 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 445 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 446 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 447 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 448 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
