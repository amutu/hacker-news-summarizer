# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2025-12-27.md)

*最后自动更新时间: 2025-12-27 20:19:57*
## 1. 珍妮·杰克逊曾有能力导致笔记本电脑崩溃（2022年）

**原文标题**: Janet Jackson had the power to crash laptop computers (2022)

**原文链接**: [https://devblogs.microsoft.com/oldnewthing/20220816-00/?p=106994](https://devblogs.microsoft.com/oldnewthing/20220816-00/?p=106994)

**摘要：**

2022年，一则关于Windows XP支持的轶事揭示了一个奇特的技术问题：播放珍妮特·杰克逊的《节奏国度》音乐视频可能导致某主流厂商特定型号的笔记本电脑崩溃。经排查，问题源于这首歌含有特定音频频率，恰好与这些笔记本电脑使用的5400转硬盘的固有共振频率一致。这种共振对硬盘造成了物理干扰。

该问题影响显著，甚至引发了两类怪异现象：不仅会导致使用同款硬盘的竞争品牌笔记本电脑崩溃，还会因声波在空气中传播，使得附近处于闲置状态的笔记本电脑在播放该视频时也发生崩溃。

厂商的解决方案是在软件中植入定制音频过滤器，以在播放时检测并移除问题频率。文章推测，即使易受影响的硬件早已淘汰，这一遗留修复程序可能仍长期嵌入在系统中。文章还幽默地引用了塔科马海峡大桥坍塌事件作为共振的经典案例，同时指出该桥梁的倒塌实际上并非由简单的共振引起。

---

## 2. 英伟达200亿美元的反垄断漏洞（并非收购）

**原文标题**: Nvidia's $20B Antitrust Loophole (Not an Acquisition)

**原文链接**: [https://ossa-ma.github.io/blog/groq](https://ossa-ma.github.io/blog/groq)

2025年12月，英伟达以200亿美元的交易获得了Groq的知识产权及其高级管理团队，但明确未收购该公司本身。这种非传统架构——被定义为非排他性许可协议——使英伟达避免了标准收购会引发的漫长反垄断和美国外国投资委员会监管审查。

交易的核心价值在于Groq的LPU（语言处理单元）架构，该架构采用大规模片上静态随机存储器而非外部内存。这为运行高达700亿参数的人工智能推理模型提供了卓越的速度与能效，可能对英伟达的GPU主导地位构成长期挑战。

这笔交易的特殊剥离条款使GroqCloud——该公司的云基础设施业务（包括与沙特阿拉伯签订的15亿美元重大合同）——成为独立且被削弱的实体。此举让英伟达得以规避地缘政治纠葛。200亿美元的收购价较Groq近期估值存在巨额溢价，其支付不仅针对技术，更着眼于战略优势：消除竞争对手、阻止谷歌或微软等对手收购，并通过Groq投资者关联的前特朗普政府官员获得有利的政治通道。

---

## 3. Gpg.fail

**原文标题**: Gpg.fail

**原文链接**: [https://gpg.fail](https://gpg.fail)

本文题为《Gpg.fail》，宣布在GnuPG（GNU隐私卫士）及相关工具中发现一系列关键安全漏洞。作者"crackticker"表示，详细的演示文稿、概念验证利用代码和补丁即将发布。

核心内容列出了至少13个独立漏洞，包括：

*   **签名与加密缺陷**：可实现多重明文恢复、签名伪造及加密消息可塑性的攻击手段。
*   **解析与输入验证问题**：通过文件名实现的路径遍历、ASCII封装解析中的内存损坏，以及数据包解析缺陷导致可向密钥添加任意子密钥。
*   **哈希与输出问题**：错误哈希计算导致明文截断、算法降级至弱SHA1，以及输出模糊未能清晰区分验证成功状态。
*   **框架级问题**：OpenPGP明文签名框架易受格式混淆攻击。
*   **相关工具漏洞**：**minisign**工具中存在可信注释注入攻击。

总之，本文作为高级别披露通告，揭示了影响GnuPG完整性、机密性和解析机制的一系列广泛安全弱点，并表明详细技术信息与修复方案即将公布。

---

## 4. Floor796

**原文标题**: Floor796

**原文链接**: [https://floor796.com/](https://floor796.com/)

**《Floor796》概述**

《Floor796》是俄罗斯开发者尼基塔创作的一个大型实时动画像素艺术项目。它是一幅连续滚动的数字画布，描绘了一个虚构的、不断延伸的办公楼层及其周边环境。

该项目的核心理念是呈现互联网和流行文化的“动态快照”。画布上密集地布满了来自各种来源的数百个角色、场景和彩蛋，包括病毒式传播的网络迷因、著名电影（如《星球大战》《黑客帝国》）、电子游戏（《我的世界》《Among Us》）、动漫以及近期互联网历史上的知名事件。

所有元素都经过动画处理，并实时互动，创造出一个动态、混乱且常常幽默的生动场景。观看者可以通过滚动来探索整个画面，每次观看都能发现新的细节和趣味点。它并非游戏，而是一件旨在供人观察和探索的互动艺术作品。

该项目因其宏大的规模、精细的细节以及识别无数隐藏彩蛋所带来的怀旧乐趣，在网络上获得了广泛的病毒式关注。它作为一个独特的文化载体，以一种沉浸式的视觉形式，捕捉了网络文化兼收并蓄、相互关联的本质。

---

## 5. 时钟同步是一场噩梦

**原文标题**: Clock Synchronization Is a Nightmare

**原文链接**: [https://arpitbhayani.me/blogs/clock-sync-nightmare/](https://arpitbhayani.me/blogs/clock-sync-nightmare/)

本文阐述了分布式系统中时钟同步所面临的深刻挑战。核心问题在于缺乏全局时钟——由于温度变化和制造差异，由非理想石英晶体驱动的单个计算机时钟不可避免地会产生漂移。这种偏差会导致关键故障，例如错误的构建流程、数据库不一致以及金融交易顺序错乱。

为缓解这一问题，业界采用物理同步协议，如精确到毫秒级的NTP协议，以及通过硬件实现纳秒级精度的PTP协议。然而，对于需要因果顺序而非绝对时间的应用场景，逻辑时钟提供了解决方案。Lamport时间戳能提供事件的部分排序，而向量时钟虽会带来显著开销，却能明确判定因果关系。

文章重点介绍了谷歌通过Spanner数据库和TrueTime API实现的创新方案。TrueTime结合GPS与原子钟技术，返回带有已知误差范围（ε）的时间区间。通过让事务等待直到其提交时间戳明确成为过去时点，Spanner在其全球基础设施中保证了外部一致性，为这一分布式计算的根本性“难题”提供了精妙的解决方案。

---

## 6. Windows 2 for the Apricot PC/Xi

**原文标题**: Windows 2 for the Apricot PC/Xi

**原文链接**: [https://www.ninakalinina.com/notes/win2apri/](https://www.ninakalinina.com/notes/win2apri/)

本文详述了作者将Windows 2.0移植到非IBM兼容的Apricot PC/Xi（一款1980年代基于8086处理器的计算机）的多年项目。该项目旨在让这台复古硬件能够运行现代办公软件，如Microsoft Word和Excel。

主要挑战在于创建或适配必要的系统驱动程序。作者最初尝试从头编写视频驱动程序，但由于Apricot独特的非标准图形模式而放弃了这一方案。突破来自于从一份保存完好的Apricot版Windows 1.0移植中提取并修改现有的视频和键盘驱动程序，使用定制工具将其集成到Windows 2.0中。此外，还需编写新的系统驱动程序以实现鼠标光标等功能。

成功的移植使Apricot PC/Xi（至少需512KB内存）能够运行Windows 2.0及其应用程序，包括Word、Excel和各种游戏，充分发挥了该机器800x400高分辨率单色显示器的优势。文章最后展示了运行中的系统，重点介绍了其功能以及为这台历史上小众计算机扩展的软件库。

---

## 7. Show HN: Ez FFmpeg – 用简单英语进行视频编辑

**原文标题**: Show HN: Ez FFmpeg – Video editing in plain English

**原文链接**: [http://npmjs.com/package/ezff](http://npmjs.com/package/ezff)

**《Show HN: Ez FFmpeg – 用简单英语进行视频编辑》摘要**

Ez FFmpeg 是一个开源的 Node.js 包，它通过允许用户用简单英语描述编辑操作，然后将其翻译成 FFmpeg 命令，从而简化视频编辑流程。其目标是让用户无需记忆 FFmpeg 复杂的语法，也能使用这个功能强大但复杂的工具。

该库的核心功能是解析自然语言指令（例如，“剪掉前10秒”、“为网络压缩”、“添加水印”），并自动生成相应的 FFmpeg 命令行参数。这在高层次的编辑意图与低层次的命令执行之间架起了桥梁。

主要特点和要点包括：
*   **自然语言界面：** 用户可以通过编写简单的指令来执行修剪、压缩、转换格式、添加水印和提取音频等任务。
*   **自动化友好：** 作为一个 Node.js 库，它设计为易于集成到自动化工作流、脚本和应用程序中。
*   **开源：** 该包可在 npm（名为 `ezff`）上获取，允许开发者安装、使用并为其开发做出贡献。
*   **目标受众：** 它特别适用于需要在项目中以编程方式处理视频处理但又不想成为 FFmpeg 专家的开发者，以及寻求更直观方式运行 FFmpeg 操作的用户。

本质上，Ez FFmpeg 充当了一个翻译器或包装器，降低了直接使用 FFmpeg 命令行所带来的学习曲线和出错可能性，从而使专业级视频处理变得更加普及。

---

## 8. OrangePi 6 Plus 评测

**原文标题**: OrangePi 6 Plus Review

**原文链接**: [https://boilingsteam.com/orange-pi-6-plus-review/](https://boilingsteam.com/orange-pi-6-plus-review/)

OrangePi 6 Plus是一款基于Arm架构的强大单板计算机，搭载12核CIX CD8180/60 SoC（4核Cortex-A720 @ 2.8 GHz、4核 @ 2.4 GHz、4核Cortex-A520），配备Arm Immortalis-G720 GPU和专用30 TOPS NPU。它提供16GB/32GB/64GB LPDDR5内存、双M.2 NVMe插槽、双5GbE网口，以及包括HDMI 2.1和DisplayPort在内的丰富视频输出接口。

评测指出，在预装的Debian Bookworm系统上，其桌面性能表现卓越，提供流畅迅捷、接近x86的体验，支持丝滑的4K视频播放。但软件支持是明显短板：系统基于较旧的6.6内核与专有驱动，升级会破坏高分辨率显示输出和NPU支持等关键硬件功能。NPU需依赖特定SDK（NeuralONE）运行AI任务。

基准测试显示其CPU性能可媲美旧款桌面芯片。通过Box64可运行部分游戏，但驱动限制影响兼容性。该板卡在高负载下运行凉爽安静，但待机功耗较高（约15W）。起售价199美元，以硬件配置而言性价比突出，但需用户对其不成熟的软件生态具备一定的技术容忍度。

---

## 9. 紫外线为何如此迅速

**原文标题**: How uv got so fast

**原文链接**: [https://nesbitt.io/2025/12/26/how-uv-got-so-fast.html](https://nesbitt.io/2025/12/26/how-uv-got-so-fast.html)

**摘要：**

本文指出，uv相较于pip的速度优势主要源于其设计选择和对现代Python打包标准的运用，而不仅仅是使用Rust语言编写。

关键的推动因素是近期的Python增强提案（PEP）。PEP 518（2016年）和PEP 621（2020年）允许在`pyproject.toml`中静态声明依赖项，从而无需执行`setup.py`中的任意代码来发现依赖。PEP 658（2022年）允许直接从PyPI获取元数据，而无需下载整个软件包。

uv通过放弃对旧版功能的支持并简化工作流程来提升速度：它忽略`.egg`文件等过时格式，不解析`pip.conf`，默认跳过字节码编译，并要求使用虚拟环境。它还在解析依赖时做出决策，例如忽略过于严格的Python版本上限，以减少回溯。

许多优化是架构层面的，并非Rust特有：使用HTTP范围请求仅获取包元数据、并行下载、采用硬链接的全局缓存，以及使用高效的PubGrub解析算法。

尽管Rust带来了零拷贝反序列化、线程级并行和无解释器启动开销等优势，但文章认为，更大的性能提升来自uv现代化、精简的设计，它充分利用了新标准，并避免了pip遗留的兼容性负担。核心启示在于，静态元数据和预先解析是快速包管理的基础。

---

## 10. 一位系统设计面试官的反思与吐槽

**原文标题**: Reflections and rantings from a system design interviewer

**原文链接**: [https://www.calvinbarker.com/blog/reflections-and-rantings-from-a-system-design-interviewer](https://www.calvinbarker.com/blog/reflections-and-rantings-from-a-system-design-interviewer)

本文分享了一位系统设计面试官对候选人常见失误的反思及成功建议。面试官的核心目标是评估候选人的知识深度、独立性、协作能力以及在不确定性下的决策能力。

主要批评包括候选人在面试中过度依赖人工智能、事先未对公司进行研究，以及设计流程未从终端客户角度出发。作者强调，在营利性公司中，系统的最终非功能性要求是创造利润，这一点常被忽视。

作者赞赏流行的**Hello Interview**框架普遍提升了候选人表现，但也指出两个问题：候选人有时在偏离其固定结构时会慌乱，且不认同其跳过粗略估算的建议。作者认为这些估算对于判断是否需要复杂的分布式系统至关重要，有助于避免不必要的复杂性。

推荐资源包括马丁·克莱普曼的《数据密集型应用系统设计》、亚历克斯·徐的《系统设计面试指南》，以及Hello Interview（但建议保持灵活性）。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 2 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 3 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 4 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 5 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 6 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 7 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 8 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 9 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 10 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 11 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 12 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 13 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 14 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 15 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 16 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 17 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 18 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 19 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 20 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 21 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 22 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 23 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 24 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 25 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 26 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 27 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 28 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 29 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 30 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 31 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 32 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 33 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 34 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 35 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 36 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 37 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 38 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 39 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 40 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 41 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 42 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 43 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 44 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 45 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 46 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 47 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 48 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 49 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 50 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 51 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 52 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 53 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 54 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 55 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 56 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 57 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 58 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 59 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 60 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 61 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 62 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 63 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 64 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 65 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 66 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 67 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 68 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 69 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 70 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 71 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 72 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 73 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 74 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 75 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 76 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 77 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 78 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 79 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 80 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 81 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 82 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 83 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 84 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 85 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 86 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 87 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 88 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 89 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 90 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 91 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 92 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 93 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 94 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 95 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 96 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 97 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 98 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 99 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 100 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 101 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 102 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 103 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 104 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 105 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 106 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 107 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 108 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 109 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 110 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 111 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 112 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 113 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 114 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 115 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 116 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 117 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 118 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 119 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 120 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 121 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 122 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 123 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 124 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 125 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 126 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 127 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 128 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 129 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 130 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 131 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 132 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 133 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 134 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 135 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 136 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 137 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 138 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 139 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 140 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 141 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 142 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 143 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 144 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 145 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 146 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 147 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 148 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 149 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 150 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 151 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 152 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 153 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 154 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 155 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 156 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 157 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 158 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 159 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 160 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 161 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 162 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 163 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 164 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 165 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 166 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 167 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 168 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 169 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 170 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 171 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 172 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 173 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 174 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 175 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 176 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 177 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 178 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 179 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 180 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 181 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 182 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 183 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 184 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 185 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 186 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 187 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 188 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 189 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 190 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 191 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 192 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 193 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 194 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 195 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 196 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 197 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 198 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 199 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 200 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 201 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 202 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 203 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 204 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 205 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 206 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 207 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 208 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 209 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 210 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 211 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 212 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 213 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 214 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 215 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 216 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 217 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 218 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 219 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 220 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 221 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 222 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 223 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 224 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 225 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 226 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 227 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 228 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 229 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 230 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 231 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 232 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 233 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 234 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 235 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 236 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 237 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 238 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 239 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 240 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 241 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 242 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 243 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 244 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 245 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 246 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 247 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 248 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 249 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 250 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 251 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 252 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 253 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 254 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 255 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 256 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 257 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 258 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 259 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 260 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 261 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 262 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 263 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 264 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 265 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 266 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 267 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 268 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 269 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 270 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 271 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 272 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 273 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 274 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 275 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 276 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 277 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 278 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 279 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 280 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 281 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
