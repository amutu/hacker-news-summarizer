# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-01-02.md)

*最后自动更新时间: 2026-01-02 20:38:06*
## 1. 第四版Unix浏览器版

**原文标题**: 4th Edition Unix in the Browser

**原文链接**: [https://unixv4.dev/](https://unixv4.dev/)

本网页提供了一个基于浏览器的交互式模拟器，重现了1973年的Unix第四版。它允许用户操作一个实时终端会话，模拟在PDP-11/45小型计算机上使用这一历史性操作系统的体验。

网站强调了Unix v4作为首个用C语言编写的版本所具有的历史意义，正是这一点使其具备了可移植性。文中指出，该副本基于2025年从一盘磁带上恢复的数据。

面向用户的主要功能包括：
*   一个支持选择复古显示主题的终端。
*   一份包含基本、符合时代特征的命令列表（例如`chdir`、`#`表示退格键）。
*   预装的目录可供探索，内含演示C程序、游戏和内核源代码。
*   关于系统特性和限制的重要说明，例如会话是临时且非持久化的。

页面还提供了服务器统计信息、供访客反馈的留言簿，以及有关该操作系统恢复过程的原始资料链接。

---

## 2. 自主发布，多端同步。

**原文标题**: Publish (On Your) Own Site, Syndicate Elsewhere

**原文链接**: [https://indieweb.org/POSSE#](https://indieweb.org/POSSE#)

**摘要：**

POSSE（在自己的网站上发布，在其他地方同步）是一种优先考虑所有权和控制权的内容发布模式。其核心实践是首先在个人网站上发布内容，然后在第三方平台（社交媒体“孤岛”）上分享该内容的副本或链接。

采用POSSE的主要原因包括：
*   **所有权与独立性：** 确保您拥有内容的规范URL，不依赖第三方平台的可用性或服务条款。
*   **更好的发现与SEO：** 从同步副本链接回原始文章，能为您的网站带来流量，并可能提升其搜索排名。
*   **实用的连接性：** 它允许您在受众偏好的平台上触达他们，同时维护一个中心化的、自主拥有的内容存档。

文章详细介绍了如何实施POSSE，涵盖了一般原则、用户界面考量，以及针对Twitter、Facebook和Medium等平台的具体方法。文章概述了两种常见的技术发布流程（客户端到网站再到平台，以及客户端同时到网站和平台），并列出了可以自动化同步过程的各种软件工具和服务。

最后，文章提供了来自IndieWeb社区成员的真实案例，这些成员已成功在其个人网站上实施了POSSE，展示了其实际应用。

---

## 3. Clicks 通讯器

**原文标题**: Clicks Communicator

**原文链接**: [https://www.clicksphone.com/en/communicator](https://www.clicksphone.com/en/communicator)

Clicks Communicator是一款全新的安卓智能手机，旨在优先专注于高效沟通，而非持续屏幕互动。其突出特点是配备了一个物理触敏QWERTY键盘，键盘采用符合人体工学的按键设计，空格键上集成指纹传感器，并设有侧边按钮用于语音转文字功能。该手机搭载安卓16系统，配备4.03英寸AMOLED显示屏，并采用联发科4纳米芯片组。

主要规格包括5000万像素主摄像头、支持Qi2无线充电的4000毫安时电池、256GB可扩展存储空间，以及同时支持nano-SIM和eSIM。手机将以解锁版形式销售，支持全球5G/4G LTE频段。

该产品既可作主力手机也可作为辅助设备使用，内置“信息中心”功能，可整合来自各类应用的信息。设计上采用可更换背盖、保留3.5毫米耳机接口，并配备铝制侧边按键。

现开放产品预订，提供两种方案：支付199美元定金锁定早鸟价399美元（另加30美元运费），或直接全额支付399美元。预订支持全额退款，设备预计于2025年下半年发货。

---

## 4. FracturedJson

**原文标题**: FracturedJson

**原文链接**: [https://github.com/j-brooke/FracturedJson/wiki](https://github.com/j-brooke/FracturedJson/wiki)

**FracturedJson** 是一个实用工具系列，旨在以人类可读的紧凑风格格式化 JSON 数据。与典型的压缩或深度缩进 JSON 不同，它能根据内容的复杂性和长度，智能地从四种格式化风格中选择：

1.  **内联式：** 将简单、简短的数组/对象保持在一行内。
2.  **紧凑多行数组：** 将长数组写成每行包含多个项目。
3.  **表格式：** 将相似的连续对象或数组对齐为表格格式，便于浏览。
4.  **扩展式：** 对复杂、嵌套的结构使用传统的多行缩进。

该工具自动选择最佳格式，力求在可读性和空间效率之间取得平衡。它还通过设置（如 `MaxInlineComplexity` 和 `MaxTableRowComplexity`）提供广泛的定制选项，并支持保留非标准的 JSON 注释。FracturedJson 可作为 .NET 库、JavaScript/TypeScript 包、VS Code 扩展以及通过网页格式化工具使用，为查看和编辑 JSON 数据提供了一个实用的折中方案。

---

## 5. TinyTinyTPU：部署在FPGA上的2×2脉动阵列TPU风格矩阵乘法单元

**原文标题**: TinyTinyTPU: 2×2 systolic-array TPU-style matrix-multiply unit deployed on FPGA

**原文链接**: [https://github.com/Alanma23/tinytinyTPU-co](https://github.com/Alanma23/tinytinyTPU-co)

TinyTinyTPU是一个极简、教育性质的谷歌TPU架构实现，它被缩放到2x2脉动阵列规模并部署在Basys3 FPGA上。该项目展示了TPU的核心原理，包括用于矩阵乘法的脉动数据流、完整的后处理流水线（累加、激活、归一化、量化），以及通过UART主机接口实现的多层MLP推理能力。

该项目采用SystemVerilog实现，并包含使用cocotb和Verilator构建的完整仿真测试环境。在硬件部署方面，它既支持标准的Xilinx Vivado工具链，也兼容Yosys和nextpnr等开源替代方案。在Basys3（Xilinx Artix-7）平台上，它约占5%的LUT资源并使用了8个DSP单元。

其关键特性包括模块化设计（便于理解脉动阵列权重加载与激活流）和基于Python的主机驱动用于执行推理。一个实用的手势识别演示展示了系统从模型训练到FPGA执行的端到端功能。

总体而言，TinyTinyTPU作为一个实践性教育平台，可用于学习TPU架构、脉动阵列及基于FPGA的机器学习加速技术，同时为扩展至更大规模、更高性能的设计奠定了基础。

---

## 6. IPv6已满30岁，却仍未征服世界。

**原文标题**: IPv6 just turned 30 and still hasn't taken over the world

**原文链接**: [https://www.theregister.com/2025/12/31/ipv6_at_30/](https://www.theregister.com/2025/12/31/ipv6_at_30/)

本文探讨了为何IPv6在2025年已满30岁之际，尽管拥有大得多的地址空间，却仍未完全取代IPv4。虽然IPv6的创建旨在解决迫在眉睫的IPv4地址短缺问题，但其采用速度缓慢，至今使用IPv6的互联网用户仍不足一半。

采用缓慢的主要原因包括：IPv6缺乏与IPv4的向后兼容性，且未能提供足够吸引人的新功能——许多原本计划的改进后来被添加到了IPv4中。网络地址转换（NAT）的广泛采用也延长了IPv4的寿命，它允许多台设备共享一个公共地址，从而缓解了立即切换的压力。

专家们对IPv6的评价存在分歧。一些人认为它通过吸纳移动和云网络的增长、防止IPv4崩溃以及支持物联网等未来技术而取得了成功。另一些人，如APNIC的Geoff Huston则认为，新架构（如QUIC）和基于域名（DNS）的安全模型已降低了IP地址的根本重要性。

结论是，IPv6并非失败，而是取得了部分成功。如今其采用往往由成本驱动（当IPv4地址变得过于昂贵时），而非技术优势。建议各组织在IPv4地址空间耗尽时规划向IPv6迁移，但互联网的发展已使得协议本身的重要性低于最初的设想。

---

## 7. 十年个人财务记录以纯文本文件保存

**原文标题**: 10 years of personal finances in plain text files

**原文链接**: [https://sgoel.dev/posts/10-years-of-personal-finances-in-plain-text-files/](https://sgoel.dev/posts/10-years-of-personal-finances-in-plain-text-files/)

十年来，作者一直使用纯文本记账系统Beancount管理个人财务。其账本目前包含16个文件中的超过45,000行记录，对应约10,000笔交易和1,086个用于收支分类的虚拟账户。

核心工作流程是每月30-45分钟的固定操作：将银行对账单下载为CSV文件，通过为德国银行定制的Python导入程序进行处理，并手动核对账本中的交易记录。所有数据及相关文档均存储在本地版本控制的目录中。

该系统的核心价值在于其持久性、透明度和独立性。作者能以开放、人类可读的格式完全掌控自己的完整财务历史，这种形式将比任何专有应用或服务更持久。从使用者到贡献者的转变——编写导入程序并著书帮助新手——彰显了纯文本记账理念赋予用户的自主力量。

---

## 8. 接触视频文件前你需要了解什么

**原文标题**: What you need to know before touching a video file

**原文链接**: [https://gist.github.com/arch1t3cht/b5b9552633567fa7658deee5aec60453/](https://gist.github.com/arch1t3cht/b5b9552633567fa7658deee5aec60453/)

本文澄清了关于视频文件和编码的常见误解。它指出，像.mp4或.mkv这样的文件扩展名仅仅是**容器格式**，用于封装视频和音频流。实际的压缩由**编码格式**（如H.264或H.265）处理。

关键区别在于**重新封装**（更换容器而不改变视频数据，速度快且无损）与**重新编码**（解码并重新压缩视频，速度慢且会导致质量损失）。初学者常常在只需重新封装时误进行重新编码。

文章将视频**质量**定义为编码文件与原始源的接近程度。它强调，质量并非仅由分辨率、帧率或文件大小决定，而主要由**编码工具**（例如，x264/x265在质量上优于NVENC等硬件编码器）及其**设置**（尤其是CRF值）控制。

最终，理解这些基础知识有助于在处理视频文件时避免不必要的质量损失、低效的文件转换和浪费的处理时间。

---

## 9. Punkt. 发布 MC03 智能手机

**原文标题**: Punkt. Unveils MC03 Smartphone

**原文链接**: [https://www.punkt.ch/blogs/news/punkt-unveils-mc03](https://www.punkt.ch/blogs/news/punkt-unveils-mc03)

Punkt. 发布了其最新款注重隐私的智能手机MC03。这款在德国制造的设备运行AphyOS操作系统，采用订阅模式，强调用户对数据和应用程序的控制。

其核心功能是双环境系统：**保险库**用于运行经过预先批准的可信应用程序，默认提供最高隐私保护；**开放网络**允许安装任何应用程序，但设有严格的、由用户控制的防护措施以防止数据追踪。该手机集成了来自Proton和Threema等注重隐私的合作伙伴的服务。

主要规格包括120Hz OLED显示屏、可拆卸的5200mAh电池、IP68防护等级以及6400万像素摄像头。它还配备了内置VPN和**Ledger**等工具，后者允许对应用程序进行精细的隐私控制并监控能耗。

定价为699瑞士法郎/美元/欧元，包含12个月的AphyOS订阅，之后需要付费订阅（起价为每月9.99瑞士法郎/美元/欧元）。MC03现已开放预购，欧洲地区预计于2026年1月下旬开始发货，北美地区则于2026年春季发货。

---

## 10. 以火攻火：可扩展的口语考试

**原文标题**: Fighting Fire with Fire: Scalable Oral Exams

**原文链接**: [https://www.behind-the-enemy-lines.com/2025/12/fighting-fire-with-fire-scalable-oral.html](https://www.behind-the-enemy-lines.com/2025/12/fighting-fire-with-fire-scalable-oral.html)

本文详细介绍了一项大学实验，该实验使用ElevenLabs语音AI代理为人工智能/机器学习产品管理课程进行可扩展的口试，以解决在大型语言模型时代家庭作业不可靠的问题。

该AI代理进行了两部分考试：讨论学生的具体项目和分析课堂案例研究。在九天内，它考核了36名学生，平均每人成本0.42美元，远低于人工口试的成本。

主要挑战及解决方案包括：修改令人紧张的克隆教师语音，防止AI一次性提出多个问题，确保其逐字重复问题，给予学生更多思考时间，以及在代码中而非提示词中实现适当的案例随机化。

评分由三个大型语言模型（Claude、Gemini、ChatGPT）组成的“评审团”完成，它们审议转录文本，提高了共识度并生成了详细的、基于证据的反馈。结果揭示了实验方法教学上的显著差距，所有学生在这方面都普遍存在困难。

尽管70%的学生认同该形式能检验真实理解，但83%的学生认为它比笔试更有压力，表明需要更从容的执行方式。作者总结该概念具有可行性，并计划改进，例如整合基于学生提交内容的检索增强生成技术，以及优化代理的节奏和语调。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 2 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 3 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 4 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 5 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 6 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 7 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 8 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 9 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 10 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 11 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 12 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 13 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 14 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 15 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 16 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 17 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 18 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 19 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 20 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 21 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 22 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 23 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 24 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 25 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 26 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 27 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 28 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 29 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 30 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 31 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 32 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 33 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 34 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 35 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 36 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 37 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 38 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 39 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 40 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 41 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 42 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 43 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 44 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 45 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 46 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 47 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 48 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 49 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 50 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 51 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 52 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 53 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 54 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 55 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 56 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 57 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 58 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 59 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 60 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 61 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 62 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 63 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 64 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 65 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 66 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 67 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 68 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 69 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 70 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 71 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 72 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 73 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 74 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 75 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 76 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 77 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 78 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 79 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 80 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 81 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 82 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 83 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 84 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 85 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 86 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 87 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 88 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 89 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 90 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 91 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 92 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 93 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 94 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 95 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 96 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 97 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 98 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 99 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 100 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 101 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 102 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 103 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 104 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 105 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 106 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 107 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 108 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 109 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 110 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 111 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 112 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 113 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 114 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 115 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 116 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 117 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 118 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 119 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 120 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 121 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 122 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 123 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 124 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 125 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 126 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 127 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 128 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 129 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 130 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 131 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 132 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 133 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 134 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 135 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 136 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 137 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 138 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 139 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 140 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 141 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 142 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 143 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 144 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 145 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 146 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 147 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 148 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 149 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 150 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 151 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 152 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 153 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 154 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 155 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 156 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 157 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 158 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 159 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 160 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 161 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 162 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 163 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 164 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 165 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 166 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 167 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 168 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 169 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 170 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 171 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 172 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 173 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 174 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 175 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 176 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 177 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 178 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 179 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 180 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 181 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 182 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 183 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 184 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 185 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 186 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 187 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 188 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 189 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 190 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 191 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 192 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 193 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 194 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 195 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 196 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 197 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 198 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 199 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 200 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 201 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 202 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 203 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 204 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 205 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 206 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 207 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 208 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 209 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 210 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 211 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 212 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 213 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 214 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 215 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 216 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 217 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 218 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 219 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 220 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 221 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 222 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 223 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 224 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 225 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 226 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 227 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 228 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 229 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 230 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 231 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 232 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 233 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 234 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 235 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 236 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 237 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 238 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 239 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 240 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 241 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 242 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 243 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 244 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 245 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 246 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 247 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 248 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 249 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 250 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 251 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 252 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 253 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 254 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 255 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 256 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 257 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 258 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 259 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 260 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 261 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 262 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 263 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 264 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 265 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 266 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 267 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 268 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 269 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 270 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 271 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 272 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 273 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 274 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 275 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 276 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 277 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 278 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 279 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 280 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 281 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 282 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 283 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 284 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 285 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 286 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
