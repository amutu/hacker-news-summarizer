# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-05-14.md)

*最后自动更新时间: 2026-05-14 20:32:56*
## 1. 从我的2024款RAV4混动版上拆下调制解调器和GPS

**原文标题**: Removing the modem and GPS from my 2024 RAV4 hybrid

**原文链接**: [https://arkadiyt.com/2026/05/13/removing-the-modem-and-gps-from-my-rav4/](https://arkadiyt.com/2026/05/13/removing-the-modem-and-gps-from-my-rav4/)

**概要：**本文详细记录了作者从其2024款RAV4混动版上物理移除调制解调器（DCM）和GPS模块的过程，旨在防止车辆向丰田及数据经纪商发送遥测数据（位置、速度、驾驶行为等）。作者基于隐私与安全考量，指出此类风险包括：存在可远程控制车辆的漏洞、将数据出售给保险公司，以及员工滥用摄像头影像等问题。

该操作难度中等，耗时数小时，需拆卸面板、螺栓和线束以取出DCM。随后安装旁路套件以恢复车内麦克风功能，并断开中控主机上的GPS天线，避免Apple CarPlay出现定位错误。移除后，车辆将丧失云端服务（无OTA升级、SOS功能），但核心功能不受影响。关键警告：切勿使用蓝牙连接，否则车辆会通过手机联网发送数据；仅安全方案为使用有线USB CarPlay或蓝牙转USB适配器。

作者指出此举可能导致相关部件保修失效，但并非整车保修。结语中，作者对此次改装表示满意，同时坦言未来集成度更高的汽车将使此类修复愈发困难，并呼吁建立更严格的联邦隐私法律。

---

## 2. RTX 5090与M4 MacBook Air：能玩游戏吗？

**原文标题**: RTX 5090 and M4 MacBook Air: Can It Game?

**原文链接**: [https://scottjg.com/posts/2026-05-05-egpu-mac-gaming/](https://scottjg.com/posts/2026-05-05-egpu-mac-gaming/)

本文详细介绍了一项将NVIDIA RTX 5090 GPU通过Thunderbolt外接显卡扩展坞连接至M4 MacBook Air的项目，从而实现PC游戏与AI推理。

**要点概述：**

- **硬件配置：** GPU通过Thunderbolt扩展坞连接，该扩展坞利用USB-C通道传输PCIe信号。难点在于macOS缺乏对Apple Silicon架构的NVIDIA驱动程序支持。

- **解决方案：** 作者在macOS上运行64位ARM Linux虚拟机，然后利用PCI直通技术将GPU分配给虚拟机。这使得Linux的NVIDIA驱动程序能够控制GPU。

- **技术挑战：**
    - **PCI BAR映射：** 直接将GPU内存映射至虚拟机导致系统内核崩溃。解决方法是在QEMU中移除设备内存映射的`HV_MEMORY_EXEC`标志，但这会导致严格的内存排序，降低写入速度。
    - **DMA（直接内存访问）：** Apple的IOMMU（DART）存在硬性限制：约1.5GB的映射容量上限和约6.4万个映射条目上限。这对现代游戏和CUDA工作负载造成严重性能瓶颈。

- **性能表现：** 基准测试（《赛博朋克2077》《毁灭战士》、AI推理）显示该配置虽能运行，但受DMA限制严重。游戏通常无法以4K分辨率运行，AI推理速度甚至不及Mac单独使用原生Metal性能。

- **结论：** 该项目在技术上获得成功，但由于DART限制导致的严重性能瓶颈，在实际应用中并不实用。

---

## 3. 新的Nginx漏洞利用

**原文标题**: New Nginx Exploit

**原文链接**: [https://github.com/DepthFirstDisclosures/Nginx-Rift](https://github.com/DepthFirstDisclosures/Nginx-Rift)

**NGINX 新漏洞（CVE-2026-42945）概述**

在NGINX的`ngx_http_rewrite_module`模块中发现了一个严重堆缓冲区溢出漏洞（CVE-2026-42945），该漏洞自2008年起便存在。该漏洞允许未经身份验证的攻击者在使用`rewrite`和`set`指令的服务器上远程执行代码。

**根本原因：** NGINX脚本引擎对包含`?`的重写替换采用两遍处理流程。第一遍计算缓冲区大小，但运行在`is_args`标志为0的归零子引擎上；第二遍复制数据时`is_args`设为1，导致`ngx_escape_uri`将每个可转义字节扩展为3字节，从而用攻击者控制的URI数据溢出本就过小的堆缓冲区。

**利用方式：** 攻击者通过跨请求堆风水（利用POST请求体进行堆喷射）破坏相邻的`ngx_pool_t`清理指针，将其重定向至伪造的清理结构，在池销毁时调用`system()`。

**受影响版本：**
- NGINX开源版：0.6.27 – 1.30.0（已在1.31.0、1.30.1中修复）
- NGINX Plus：R32 – R36（已在R36 P4、R35 P2、R32 P6中修复）

该漏洞（连同另外三个内存损坏问题）由depthfirst的安全分析系统自主发现。目前已提供概念验证漏洞利用代码及技术报告。

---

## 4. 首个针对Apple M5芯片的macOS内核内存破坏公共漏洞

**原文标题**: First public macOS kernel memory corruption exploit on Apple M5

**原文链接**: [https://blog.calif.io/p/first-public-kernel-memory-corruption](https://blog.calif.io/p/first-public-kernel-memory-corruption)

一支安全研究团队与AI系统Mythos Preview合作，开发了首个针对苹果搭载MIE（内存完整性强制）功能的M5芯片的公开macOS内核内存损坏漏洞利用程序。MIE是苹果基于ARM MTE技术构建的硬件辅助内存安全系统，旨在阻止内存损坏漏洞利用。苹果为此耗费五年时间和数十亿美元研发该防护措施。

该漏洞利用程序是一个针对macOS 26.4.1的数据型内核本地权限提升链，从无特权的本地用户开始，最终获取root shell。它于4月25日被意外发现，完整漏洞利用程序于5月1日完成——仅耗时五天开发。该链条涉及两个漏洞和多项技术，针对裸金属M5硬件。

研究人员在库比蒂诺苹果总部亲自展示了他们的发现。他们将在苹果修复这些漏洞后公布完整技术细节（一份55页的报告）。这项研究表明，像Mythos Preview这样的AI系统在与人类专业知识结合时，能够快速突破最先进的防护措施，标志着AI辅助漏洞发现与利用的新时代。

---

## 5. 大学的人工智能僵尸化

**原文标题**: The AI Zombification of Universities

**原文链接**: [https://www.thenewcritic.com/p/the-great-zombification](https://www.thenewcritic.com/p/the-great-zombification)

**总结：**

本文认为，广泛使用人工智能正在“僵尸化”精英大学，摧毁真正的教育及智力发展。作者基于在芝加哥大学的个人观察，将人工智能的融入描述为一种转移性癌症——已从商科/经济学课程扩散至人文学科、学生刊物《栗红报》，甚至教授讲稿撰写。

关键点：人工智能的使用已从简单的作弊演变为对学习的彻底替代——学生利用大语言模型完成作业、考试、邮件及个人任务。作者指出，带回家考试与校内考试的成绩差距高达40个百分点。大学管理层虚伪地宣布耗资数百万美元的人工智能计划（“人工智能进课堂！”），同时作弊案例几乎翻倍（例如普林斯顿大学一年内从63例增至119例）。作者将此比作斯科特·亚历山大笔下的“耳语耳环”寓言——持续生成的机器建议不断侵蚀独立决策能力。

核心批判在于：大学未能对学生提出有意义的要求，而学生面临同龄人及家长对成绩和文凭的巨大压力。人工智能提供了巨大的短期利益（效率、表现），却以取代学习、教学和对话为代价。作者断言，合乎伦理地整合人工智能在现实中的障碍无法逾越，管理层的冷漠反映出其无力坚守严格标准的深层困境。其结果可能造就一代“流口水的白痴”，并摧毁作为人本主义机构的大学。

---

## 6. 一根免费冰棍的力量（2018）

**原文标题**: The Power of a Free Popsicle (2018)

**原文链接**: [https://www.gsb.stanford.edu/insights/power-free-popsicle](https://www.gsb.stanford.edu/insights/power-free-popsicle)

文章探讨了洛杉矶的**魔术城堡酒店**如何凭借一座由20世纪50年代公寓改建的普通建筑，在Tripadvisor上登顶排名。据《行为设计学：打造峰值体验》的作者奇普·希思和丹·希思分析，其成功秘诀在于为客人制造“**决定性时刻**”——例如“**冰棍热线**”服务：戴着白手套的员工会端着银托盘免费送上冰棍。

希思兄弟归纳了四种决定性时刻：**提升感**（超越平凡）、**洞察力**（重塑认知）、**自豪感**（庆祝成就）和**连接感**（强化关系）。他们建议企业关注客户与员工体验中的**转折点、高峰点和低谷点**。转折点（如新员工入职）往往是常被低估的连接机会；高峰点（如退休晚宴）可融入洞察与自豪元素；低谷点（如失败等负面体验）若经正向重构亦能产生强大力量——他们以Spanx创始人莎拉·布莱克利的父亲为例，正是他将失败常态化，最终成就了女儿的创业成功。

核心启示在于：企业无需完美雕琢每个触点，而应倾力打造几个**令人难忘的标志性时刻**。正如奇普·希思所言：“你无需事事卓越，只需在少数能让人铭记的事情上做到极致。”

---

## 7. WinUI 3 性能：一次跨越式提升

**原文标题**: WinUI 3 Performance: A Leap Forward

**原文链接**: [https://github.com/microsoft/microsoft-ui-xaml/discussions/11096](https://github.com/microsoft/microsoft-ui-xaml/discussions/11096)

以下是文章的简要总结：

微软宣布WinUI 3在性能方面取得显著改进，重点优化了启动时间和延迟降低。以文件资源管理器和记事本为基准测试，团队报告称在WinUI启动部分取得了可衡量的提升：内存分配减少41%，临时分配减少63%，函数调用减少45%，WinUI代码执行时间减少25%。这些优化将逐步推送到`winui3/main`分支，并尽可能纳入WinAppSDK 2.x版本。部分改进属于重大变更（例如优化默认控件样式），初期需要应用主动选择启用，未来版本（3.0或4.0+）计划改为默认启用。社区评论褒贬不一。许多开发者欢迎性能改进，但多人指出WinUI 3在实测中仍比WPF和UWP慢，且实际应用（如商店应用）仍存在卡顿和延迟问题。其他人敦促微软优先使用WinUI重构核心Windows体验（如文件资源管理器和OneDrive），以此展示框架能力并推动更广泛采用。

---

## 8. 理解Linux内核：Linux内核启动

**原文标题**: Understanding the Linux Kernel: The Linux Kernel Startup

**原文链接**: [https://internals-for-interns.com/posts/linux-kernel-startup/](https://internals-for-interns.com/posts/linux-kernel-startup/)

**《理解Linux内核：Linux内核启动》摘要**

本文采用“太空殖民地搭建”的比喻，从高层概述了x86_64架构下Linux内核的引导过程，涵盖了从引导加载程序交接至早期控制台输出就绪的完整流程。

关键阶段包括：

1.  **交接阶段：** 引导加载程序提供极简资源：一个运行的CPU（处于保护模式或长模式）、一份内存映射以及引导参数。内核以压缩格式（bzImage）加载，其物理地址与编译时设定的虚拟地址不匹配。

2.  **阶段一：汇编跳板：** 解压缩器解压内核并应用KASLR（随机基址）。早期汇编代码设置栈、最小GDT/IDT、处理内存加密（SME/SEV/TDX）、验证CPU特性（长模式、SSE2），并通过修改页表修复虚拟地址与物理地址的不匹配问题。

3.  **阶段二：早期C语言初始化：** 第一个C函数（`x86_64_start_kernel`）清除BSS段（未初始化的全局变量），使用占位符初始化KASAN（内存安全检查器），安装用于异常处理的早期IDT，复制引导参数，并应用CPU微码补丁。

4.  **阶段三：硬件发现与内存设置：** `setup_arch()` 通过CPUID编录CPU特性，将固件的内存映射（E820）整理后纳入`memblock`早期分配器，并建立`early_ioremap`用于访问固件表。最后，启用早期printk以供内核控制台输出。

文章强调，这是一份学习资料而非全面参考文档，并且是内核内部机制系列文章的首篇。

---

## 9. HDD固件破解

**原文标题**: HDD Firmware Hacking

**原文链接**: [https://icode4.coffee/?p=1465](https://icode4.coffee/?p=1465)

**摘要：硬盘固件破解 第一部分**

Ryan Miceli 探索修改硬盘固件，以利用 Xbox 360 上的竞争条件。起初他试图在读取响应中引入延迟，但后来发现了其他方法。出于该研究的渗透测试价值，他继续深入。

**测试对象：** 三星 HM020GI、日立 HTS545032B9A300、西部数据 WD3200BEVT 以及三星 PM871a 固态硬盘。

**过程：**
- **固件获取：** 使用 HDD Guru 论坛（西部数据）、PC-3000 转储（三星 HM020GI）以及联想固件更新工具（三星 PM871a 固态硬盘）。逆向工程更新工具揭示了去混淆算法和刷写命令。
- **西部数据：** 固件采用扁平格式，包含压缩段（修改版 LZHUF）。逆向工程解压缩器以将固件加载到 IDA 中。
- **三星 PM871a：** 固件通过位操作算法进行混淆；通过逆向工程更新工具实现去混淆。识别出与 ARM Cortex-M3 内存映射相匹配的潜在段头。
- **三星 HM020GI：** 固件出现字序翻转，指令集架构未知，可能是自定义字节码或基于虚拟机的，暂放留待后续分析。

**刷写：** 主要针对西部数据硬盘；发现了用于重新刷写的供应商命令。

本文为第二部分打下基础，第二部分将介绍如何利用人工智能分析未知架构并调试硬盘固件。

---

## 10. 科恩布鲁斯校长关于资金与人才输送渠道的致辞

**原文标题**: A message from President Kornbluth about funding and the talent pipeline

**原文链接**: [https://president.mit.edu/writing-speeches/video-transcript-message-president-kornbluth-about-funding-and-talent-pipeline](https://president.mit.edu/writing-speeches/video-transcript-message-president-kornbluth-about-funding-and-talent-pipeline)

麻省理工学院校长莎莉·科恩布鲁斯阐述了资金与人才渠道面临的持续挑战。由于对捐赠基金收益征收8%的税，麻省理工学院不得不做出痛苦但必要的预算削减。尽管国会恢复部分科研经费，但联邦给予麻省理工学院的拨款已下降超过20%，新增项目拨款同样减少逾20%。整体赞助的研究活动规模缩减了10%。这一萎缩正导致教职员工缩减研究生、博士后人数及研究领域。

在人才方面，政策变化正在阻碍国际学生与学者。加之资金不确定性，麻省理工学院研究生入学人数下降，斯隆管理学院以外的新生入学人数减少近20%，可能导致研究生减少500人。这削弱了科研与教育实力。

科恩布鲁斯强调，麻省理工学院正在积极应对：教职员工已为能源部一项新任务提交了176份提案；学院正推进产业合作（如麻省理工-IBM联合实验室），拓展新教育项目，并增加慈善捐赠。华盛顿办事处正游说反对捐赠税，她本人也在与国会及政府领导人会晤。她表示相信麻省理工学院社区有能力渡过难关，但强调当前形势确实损害了麻省理工学院乃至国家未来科学家与创新人才的培养势头。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 2 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 3 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 4 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 5 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 6 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 7 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 8 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 9 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 10 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 11 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 12 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 13 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 14 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 15 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 16 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 17 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 18 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 19 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 20 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 21 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 22 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 23 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 24 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 25 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 26 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 27 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 28 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 29 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 30 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 31 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 32 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 33 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 34 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 35 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 36 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 37 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 38 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 39 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 40 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 41 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 42 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 43 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 44 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 45 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 46 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 47 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 48 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 49 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 50 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 51 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 52 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 53 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 54 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 55 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 56 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 57 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 58 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 59 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 60 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 61 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 62 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 63 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 64 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 65 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 66 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 67 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 68 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 69 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 70 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 71 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 72 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 73 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 74 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 75 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 76 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 77 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 78 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 79 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 80 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 81 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 82 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 83 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 84 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 85 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 86 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 87 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 88 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 89 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 90 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 91 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 92 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 93 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 94 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 95 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 96 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 97 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 98 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 99 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 100 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 101 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 102 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 103 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 104 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 105 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 106 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 107 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 108 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 109 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 110 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 111 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 112 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 113 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 114 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 115 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 116 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 117 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 118 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 119 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 120 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 121 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 122 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 123 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 124 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 125 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 126 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 127 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 128 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 129 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 130 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 131 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 132 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 133 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 134 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 135 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 136 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 137 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 138 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 139 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 140 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 141 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 142 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 143 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 144 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 145 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 146 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 147 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 148 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 149 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 150 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 151 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 152 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 153 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 154 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 155 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 156 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 157 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 158 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 159 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 160 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 161 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 162 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 163 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 164 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 165 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 166 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 167 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 168 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 169 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 170 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 171 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 172 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 173 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 174 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 175 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 176 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 177 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 178 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 179 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 180 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 181 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 182 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 183 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 184 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 185 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 186 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 187 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 188 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 189 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 190 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 191 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 192 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 193 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 194 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 195 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 196 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 197 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 198 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 199 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 200 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 201 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 202 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 203 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 204 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 205 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 206 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 207 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 208 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 209 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 210 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 211 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 212 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 213 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 214 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 215 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 216 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 217 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 218 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 219 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 220 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 221 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 222 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 223 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 224 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 225 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 226 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 227 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 228 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 229 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 230 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 231 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 232 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 233 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 234 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 235 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 236 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 237 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 238 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 239 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 240 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 241 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 242 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 243 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 244 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 245 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 246 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 247 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 248 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 249 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 250 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 251 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 252 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 253 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 254 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 255 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 256 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 257 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 258 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 259 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 260 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 261 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 262 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 263 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 264 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 265 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 266 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 267 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 268 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 269 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 270 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 271 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 272 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 273 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 274 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 275 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 276 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 277 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 278 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 279 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 280 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 281 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 282 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 283 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 284 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 285 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 286 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 287 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 288 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 289 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 290 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 291 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 292 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 293 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 294 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 295 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 296 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 297 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 298 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 299 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 300 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 301 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 302 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 303 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 304 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 305 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 306 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 307 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 308 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 309 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 310 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 311 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 312 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 313 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 314 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 315 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 316 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 317 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 318 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 319 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 320 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 321 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 322 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 323 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 324 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 325 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 326 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 327 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 328 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 329 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 330 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 331 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 332 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 333 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 334 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 335 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 336 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 337 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 338 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 339 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 340 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 341 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 342 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 343 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 344 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 345 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 346 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 347 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 348 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 349 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 350 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 351 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 352 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 353 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 354 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 355 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 356 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 357 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 358 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 359 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 360 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 361 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 362 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 363 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 364 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 365 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 366 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 367 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 368 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 369 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 370 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 371 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 372 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 373 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 374 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 375 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 376 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 377 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 378 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 379 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 380 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 381 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 382 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 383 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 384 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 385 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 386 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 387 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 388 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 389 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 390 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 391 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 392 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 393 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 394 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 395 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 396 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 397 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 398 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 399 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 400 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 401 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 402 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 403 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 404 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 405 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 406 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 407 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 408 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 409 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 410 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 411 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 412 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 413 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 414 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 415 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 416 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 417 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 418 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
