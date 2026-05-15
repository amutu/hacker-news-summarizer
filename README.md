# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-05-15.md)

*最后自动更新时间: 2026-05-15 20:32:26*
## 1. 古腾堡计划——不断进步

**原文标题**: Project Gutenberg – keeps getting better

**原文链接**: [https://www.gutenberg.org/](https://www.gutenberg.org/)

**古腾堡计划简介**

古腾堡计划是一个数字图书馆，提供超过75,000本免费电子书，主要收录美国版权已过期的早期作品。用户无需付费、注册或安装应用程序，即可下载或在线阅读epub和Kindle等格式的图书。该图书馆涵盖历史、文学、科学、宗教等广泛类别，并支持按作者、书名或热门程度进行搜索。热门书目包括《弗兰肯斯坦》《白鲸》《傲慢与偏见》和《爱丽丝梦游仙境》。

自1971年以来，该项目已运营超过50年，依靠志愿者对文本进行数字化和校对。用户可通过加入分布式校对员、报告错误或通过LibriVox录制有声书等方式提供帮助。有声书选项包括人工朗读和计算机生成的作品，近期合作提升了音频质量。

网站还提供阅读清单、self.gutenberg.org上的自助出版作品，以及帮助与常见问题解答资源。古腾堡计划鼓励捐款以支持进一步数字化，并提供关于许可、合作和可访问性的信息。社交媒体和新闻推送让用户及时了解最新发布。

---

## 2. WinCE64 – 适用于N64的Windows CE 2.11

**原文标题**: WinCE64 – Windows CE 2.11 for N64

**原文链接**: [https://github.com/ThroatyMumbo/WinCE64](https://github.com/ThroatyMumbo/WinCE64)

本文介绍了一个兴趣项目，该项目成功地在真实任天堂64游戏机上，通过EverDrive-64 X7烧录卡运行未经修改的Microsoft Windows CE 2.11操作系统。项目构建了自定义硬件抽象层（HAL）及其他底层驱动程序，作为CE内核与N64硬件之间的桥梁，实现了可正常使用的桌面环境。

核心功能包括：可完全启动的Windows CE 2.11桌面系统（含任务栏和文件浏览器）、N64手柄模拟鼠标（A键=左键点击，B键=右键点击）、通过EverDrive挂载SD卡、利用N64的AI硬件播放波表音频、支持从SD卡启动第三方CE 2.11可执行程序。此外还包含经RDP加速的3D图形功能。

该项目刻意未包含任何微软或任天堂的专有代码。用户需自行提供Windows CE 2.11 SDK（来自早已停产的微软嵌入式工具包）以及libdragon自制开发工具链进行编译。编译过程包括构建自定义驱动程序、链接标准CE内核、最终生成可用于EverDrive的启动ROM。源代码以MIT许可证发布，但受微软许可限制，生成的ROM不可再分发。项目主要开发与测试平台为真实N64硬件，未提供模拟器支持。

---

## 3. Pixel 10 零点击漏洞利用链

**原文标题**: A 0-click exploit chain for the Pixel 10

**原文链接**: [https://projectzero.google/2026/05/pixel-10-exploit.html](https://projectzero.google/2026/05/pixel-10-exploit.html)

**摘要：**

本文详细介绍了一个针对Pixel 10开发的0点击漏洞利用链，该链建立在先前对Pixel 9的研究基础之上。该链条包含两个漏洞利用：

1.  **杜比漏洞（CVE-2025-54957）：** 此漏洞利用基于Pixel 9版本进行了更新，其目标是指向杜比音频库中的一个漏洞。由于Pixel 10使用了RET PAC而非`-fstack-protector`，因此需要进行修改，但通过覆写`dap_cpdp_init`函数，该漏洞利用已成功适配。它适用于SPL为2025年12月或更早版本的设备。

2.  **VPU驱动漏洞（本地权限提升）：** Pixel 10上缺少了之前的BigWave驱动。研究人员审计了用于Chips&Media Wave677DV芯片的新`/dev/vpu`驱动，并发现其存在一个严重漏洞。`vpu_mmap`函数允许映射从VPU寄存器区域开始的物理内存，且没有大小限制。由于内核映像位于一个已知的、更高的物理地址，攻击者可以直接读取并覆写内核内存，仅需五行代码即可实现完整的内核代码执行。

该VPU漏洞于2025年11月24日被报告，并在71天后（即二月份的安全公告中）被修复——这与严重程度相同的BigWave漏洞缓慢的分类处理相比，有了显著改进。

**结论：** 作者指出，Android在补丁修复速度和处理流程方面取得了积极进展。然而，他们也批评了Android驱动程序中反复出现的浅层漏洞，并强调需要在驱动开发中进行主动的安全审计并采用稳健的编码实践以防止此类严重缺陷。

---

## 4. Bun 的 Rust 重写："代码库未通过基本 miri 检查，在安全 Rust 中允许未定义行为"

**原文标题**: Bun Rust rewrite: "codebase fails basic miri checks, allows for UB in safe rust"

**原文链接**: [https://github.com/oven-sh/bun/issues/30719](https://github.com/oven-sh/bun/issues/30719)

本文章是发布于Bun仓库（oven-sh/bun）的一个GitHub议题（#30719），批评该项目Rust代码库未能通过基本的Miri检查，并在安全Rust中允许未定义行为（UB）。议题标题和描述指出，该代码库存在严重的内存安全违规。

关键要点包括：
- **未定义行为示例**：议题提供了一个代码片段，其中`PathString::slice`使用了`unsafe`代码（`core::slice::from_raw_parts`），通过原始指针创建切片而未正确处理来源（provenance）。当底层分配（`test`）被丢弃后，调用`init.slice()`会导致悬垂引用，被Miri检测为“构造类型&[u8]的无效值”。
- **对开发实践的批评**：作者“AwesomeQubico”建议不要对Rust进行“氛围编码”（即依赖AI或非专业编码），并建议聘请专业的Rust开发者修复代码。
- **背景**：该议题提交于Bun项目（一个流行的JavaScript运行时/包管理器），该项目部分用Rust编写。投诉指向代码库中Rust部分系统性缺乏内存安全规范。

---

## 5. 美国司法部要求苹果和谷歌披露超过10万名汽车改装应用用户信息

**原文标题**: U.S. DOJ demands Apple and Google unmask over 100k users of car-tinkering app

**原文链接**: [https://macdailynews.com/2026/05/15/u-s-doj-demands-apple-and-google-unmask-over-100000-users-of-popular-car-tinkering-app-in-emissions-crackdown/](https://macdailynews.com/2026/05/15/u-s-doj-demands-apple-and-google-unmask-over-100000-users-of-popular-car-tinkering-app-in-emissions-crackdown/)

美国司法部要求苹果、谷歌、亚马逊和沃尔玛交出EZ Lynk Auto Agent应用可能超过10万名用户的个人数据。司法部指控EZ Lynk违反《清洁空气法》，销售允许柴油车车主绕过排放控制的"作弊装置"。传票要求提供与该应用及其硬件相关的姓名、地址、电话号码及购买记录。

EZ Lynk否认指控，辩称其产品主要用于诊断和合法改装，与排放相关的使用行为属于用户责任。司法部声称需要这些数据来寻找使用该工具禁用排放控制系统的证人，并以论坛帖子作为证据。

隐私倡导者及EZ Lynk的律师批评传票违宪越权，引发对第四修正案的担忧。据报道，苹果和谷歌准备对此要求提出异议。汽车爱好者和维修权倡导者认为本案反映了车辆改装自由与联邦法规之间的冲突。

在法官于2025年驳回EZ Lynk的《美国通信规范法》第230条抗辩后，此案仍在审理中，其结果可能为政府执法中的数字隐私设立先例。MacDailyNews指出，司法部行为越界，因为许多用户下载该应用可能出于读取故障码等正当目的。

---

## 6. 我用Verilog设计了一款面向半字节的CPU，用于构建科学计算器。

**原文标题**: I designed a nibble-oriented CPU in Verilog to build a scientific calculator

**原文链接**: [https://github.com/gdevic/FPGA-Calculator](https://github.com/gdevic/FPGA-Calculator)

本文介绍了一个在FPGA上实现全功能科学计算器的项目，该项目采用SystemVerilog设计的自定义四位面向软CPU。项目包含微码固件及配套工具（如汇编器和脚本编译器）。

主要特性包括：
- **自定义CPU**：基于微码控制单元的四位面向处理器。
- **FPGA实现**：针对Quartus（目标芯片Cyclone II）设计，支持ModelSim和Verilator仿真。
- **基于Qt的模拟器**：支持桌面端和WebAssembly的模拟器，通过Verilator实现无需硬件的测试。
- **验证工具**：命令行测试工具（`calctest`）及用于波形查看的Qt调试器。
- **构建目标**：支持桌面端、Web、FPGA综合及ModelSim仿真。
- **所需工具**：Verilator（桌面端v5.x，WebAssembly v4.228）、Qt 6.9+、Quartus 13.0 SP1及Visual Studio 2022。

项目文件夹结构将Verilog源码、微码、FPGA综合文件、仿真配置及算法研究（如BCD运算、路径规划）分离管理。快速入门指南指导用户从WSL2构建Qt模拟器。

本项目采用知识共享署名-非商业性使用-相同方式共享4.0国际许可协议授权。

---

## 7. Image-blaster：从单张图像创建3D环境、特效与网格

**原文标题**: Image-blaster: Creates 3D environments, SFX, and meshes from a single image

**原文链接**: [https://github.com/neilsonnn/image-blaster](https://github.com/neilsonnn/image-blaster)

**《Image-blaster》简介**

Image-blaster是一款工具，可在五分钟内将单张图片转化为完整的网格化3D环境——包括3D模型、高斯泼溅和氛围音效。它集成了Claude技能、World Labs和FAL来实现流程自动化。

**快速启动：** 克隆仓库，通过终端运行Claude，提供World Labs和FAL的API密钥，将图片放入`input/`目录，然后要求Claude“爆破它”，并进行分步确认。

**默认输出：** 对于每张输入图片，Image-blaster会生成动态物体的3D模型（.glb、.obj）、静态环境的高斯泼溅（.spz）以及环境/物体特定的物理音效（.mp3）。

**扩展：** 输出结果可嵌入游戏引擎（Unity、Unreal、Godot）、数字内容创作软件（Blender、Maya）或网页应用（Three.js、Electron）。

**底层模型：**
- **marble-1.1**（World Labs）用于可探索环境。
- **nano-banana** / **gpt-image-2** 用于图像编辑。
- **hunyuan-3d**（FAL）用于3D物体生成，支持自定义参数（面数、PBR、多边形类型）。
- **elevenlabs-sfx** 用于音效。

**高级设置：** 用户可调整Hunyuan参数，如面数（默认50,000）、PBR材质、生成类型（标准、低多边形、几何）以及多边形类型。

**开发：** 从`.claudeignore`中移除`/app`，以允许Claude修改React查看器。

---

## 8. 像浏览Windows XP桌面一样探索维基百科

**原文标题**: Explore Wikipedia Like a Windows XP Desktop

**原文链接**: [https://explorer.samismith.com/](https://explorer.samismith.com/)

本文介绍了一个名为 **Wikipedia File Explorer** 的网页项目，该项目将维基百科内容呈现为Windows XP桌面界面。其主要特点包括：

- **Wikipedia：** 将维基百科类别浏览为文件夹；文章以文档形式打开。除无类别的页面外，几乎所有页面均可访问。
- **Media：** 探索维基共享资源类别。用户可右键点击任意图片将其设为桌面背景。
- **Geofile Explorer：** 正在开发中的功能，允许用户将地球作为文件夹浏览，拖放图片上传，或右键点击写入文本笔记。

该项目托管于 **explorer.samismith.com**。创作者Sami提供电子邮件（sami at samismith.com）、Twitter和Blue Sky联系方式。灵感来源于多个现有项目（如Neal.fun的Wiki Files、Depths of Wikipedia、XP.css）。所有维基百科及媒体内容均归维基媒体所有；用户可通过编辑维基百科及维基共享资源来优化文件夹结构。

---

## 9. Show HN：观看神经网络学习玩贪吃蛇

**原文标题**: Show HN: Watch a neural net learn to play Snake

**原文链接**: [https://ppo.gradexp.xyz/](https://ppo.gradexp.xyz/)

本文展示了一个经典游戏《贪吃蛇》的交互式神经网络训练演示。其核心功能是通过实时可视化，呈现AI代理从零开始通过强化学习掌握游戏的过程。用户点击"开始训练"即可观察神经网络实时进化，环境示例窗口同步显示游戏棋盘与代理的决策逻辑。该演示凸显了机器学习的关键概念，包括试错学习、基于奖励的优化机制，以及随训练轮次逐步提升的表现。"闲置"状态表明代理尚未开始游戏，正等待训练启动。本作着重强调观察AI学习动态的教育价值，通过可视化游戏过程使复杂概念更易理解。

---

## 10. ABC新闻已将FiveThirtyEight的所有文章下线。

**原文标题**: ABC News has taken all FiveThirtyEight articles offline

**原文链接**: [https://twitter.com/baseballot/status/2055309076209492208](https://twitter.com/baseballot/status/2055309076209492208)

**摘要：**

文章报道称，ABC新闻已从其数据驱动新闻网站FiveThirtyEight上移除所有文章。该公告显示在一个出现错误或访问拦截的页面中，指出用户浏览器禁用了JavaScript。页面指示用户启用JavaScript或切换至受支持的浏览器，以便继续访问**x.com**（可能为重定向或镜像站点）上的内容，并附有帮助中心、隐私政策及其他法律信息的链接。关键信息是，ABC新闻已撤下FiveThirtyEight的全部存档，实质上终止或暂停了该网站的运营，剩余页面仅提供基本条款和支持链接。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 2 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 3 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 4 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 5 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 6 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 7 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 8 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 9 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 10 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 11 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 12 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 13 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 14 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 15 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 16 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 17 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 18 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 19 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 20 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 21 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 22 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 23 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 24 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 25 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 26 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 27 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 28 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 29 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 30 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 31 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 32 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 33 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 34 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 35 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 36 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 37 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 38 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 39 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 40 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 41 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 42 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 43 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 44 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 45 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 46 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 47 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 48 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 49 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 50 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 51 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 52 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 53 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 54 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 55 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 56 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 57 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 58 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 59 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 60 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 61 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 62 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 63 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 64 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 65 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 66 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 67 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 68 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 69 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 70 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 71 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 72 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 73 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 74 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 75 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 76 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 77 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 78 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 79 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 80 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 81 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 82 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 83 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 84 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 85 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 86 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 87 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 88 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 89 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 90 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 91 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 92 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 93 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 94 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 95 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 96 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 97 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 98 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 99 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 100 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 101 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 102 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 103 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 104 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 105 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 106 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 107 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 108 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 109 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 110 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 111 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 112 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 113 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 114 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 115 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 116 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 117 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 118 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 119 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 120 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 121 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 122 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 123 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 124 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 125 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 126 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 127 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 128 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 129 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 130 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 131 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 132 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 133 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 134 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 135 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 136 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 137 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 138 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 139 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 140 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 141 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 142 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 143 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 144 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 145 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 146 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 147 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 148 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 149 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 150 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 151 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 152 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 153 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 154 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 155 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 156 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 157 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 158 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 159 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 160 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 161 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 162 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 163 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 164 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 165 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 166 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 167 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 168 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 169 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 170 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 171 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 172 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 173 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 174 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 175 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 176 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 177 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 178 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 179 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 180 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 181 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 182 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 183 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 184 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 185 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 186 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 187 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 188 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 189 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 190 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 191 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 192 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 193 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 194 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 195 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 196 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 197 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 198 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 199 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 200 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 201 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 202 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 203 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 204 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 205 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 206 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 207 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 208 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 209 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 210 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 211 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 212 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 213 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 214 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 215 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 216 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 217 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 218 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 219 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 220 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 221 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 222 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 223 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 224 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 225 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 226 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 227 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 228 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 229 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 230 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 231 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 232 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 233 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 234 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 235 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 236 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 237 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 238 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 239 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 240 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 241 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 242 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 243 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 244 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 245 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 246 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 247 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 248 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 249 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 250 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 251 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 252 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 253 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 254 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 255 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 256 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 257 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 258 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 259 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 260 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 261 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 262 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 263 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 264 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 265 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 266 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 267 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 268 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 269 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 270 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 271 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 272 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 273 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 274 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 275 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 276 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 277 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 278 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 279 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 280 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 281 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 282 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 283 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 284 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 285 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 286 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 287 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 288 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 289 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 290 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 291 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 292 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 293 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 294 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 295 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 296 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 297 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 298 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 299 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 300 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 301 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 302 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 303 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 304 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 305 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 306 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 307 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 308 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 309 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 310 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 311 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 312 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 313 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 314 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 315 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 316 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 317 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 318 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 319 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 320 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 321 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 322 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 323 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 324 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 325 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 326 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 327 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 328 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 329 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 330 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 331 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 332 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 333 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 334 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 335 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 336 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 337 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 338 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 339 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 340 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 341 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 342 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 343 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 344 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 345 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 346 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 347 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 348 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 349 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 350 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 351 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 352 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 353 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 354 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 355 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 356 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 357 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 358 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 359 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 360 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 361 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 362 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 363 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 364 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 365 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 366 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 367 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 368 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 369 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 370 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 371 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 372 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 373 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 374 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 375 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 376 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 377 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 378 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 379 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 380 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 381 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 382 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 383 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 384 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 385 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 386 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 387 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 388 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 389 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 390 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 391 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 392 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 393 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 394 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 395 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 396 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 397 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 398 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 399 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 400 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 401 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 402 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 403 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 404 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 405 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 406 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 407 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 408 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 409 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 410 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 411 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 412 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 413 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 414 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 415 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 416 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 417 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 418 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 419 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
