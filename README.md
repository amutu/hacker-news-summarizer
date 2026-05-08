# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-05-08.md)

*最后自动更新时间: 2026-05-08 20:33:24*
## 1. 谷歌云欺诈防御仅是WEI的重新包装版本

**原文标题**: Google Cloud Fraud Defence is just WEI repackaged

**原文链接**: [https://privatecaptcha.com/blog/google-cloud-fraud-defence-wei/](https://privatecaptcha.com/blog/google-cloud-fraud-defence-wei/)

**摘要：**

2026年5月，谷歌推出了“谷歌云防欺诈”服务，这是一项对reCAPTCHA的更新，通过手机扫描二维码来验证人类身份。本文认为，这实际上是谷歌2023年“网络环境完整性”（WEI）提案的重新包装，该提案因威胁开放、受控于设备供应商的门控网络，遭到Mozilla和EFF强烈反对后被撤回。

其核心机制依赖于谷歌Play Integrity API认证，要求使用“搭载谷歌移动服务的现代安卓设备”或现代iOS设备。这将GrapheneOS、LineageOS等注重隐私的系统以及Firefox for Android排除在外，将最需要隐私的用户拒之门外。

文章指出了几个关键缺陷：机器人操作员使用廉价摄像头或30美元的安卓设备即可轻易绕过二维码；它训练用户扫描未知二维码，助长了钓鱼攻击；每次成功验证都会向谷歌发送一个持久的、与硬件绑定的标识符，表明哪个经过认证的设备访问了哪个网站，从而实现跨会话、跨浏览器的追踪。

与有界且基于同意的二维码认证（如爱沙尼亚的Smart ID）不同，该服务将设备认证应用于任何开放的网页URL，且用户不知情，也无使用目的限制。作者指出，技术上存在可行的替代方案，例如工作量证明挑战（如Private Captcha），这类方案能避免硬件追踪和治理问题。最终，文章总结认为，“防欺诈”服务重新施加了与WEI相同但已被拒绝的架构，如今作为一款商业产品，它非但无法阻止机器人，反而会积累监控数据。

---

## 2. 上一次代码变得廉价时我们失去了什么

**原文标题**: What we lost the last time code got cheap

**原文链接**: [https://www.poppastring.com/blog/what-we-lost-the-last-time-code-got-cheap](https://www.poppastring.com/blog/what-we-lost-the-last-time-code-got-cheap)

这篇文章探讨了由AI工具驱动的代码生产成本骤降现象，并警示价值已从**代码创作**转向**代码理解**。作者将其比作21世纪初的离岸外包浪潮——彼时廉价海外开发（如名为Heartland Information Services的初创公司）虽产出优质代码，却造成了知识断层。真正昂贵的从来不是写代码本身，而是**充分理解代码以进行修改、调试或解释**。

如今的关键区别在于：面对AI生成的代码，**没有任何人类掌握原始意图**，相关知识可能根本不存在于任何地方。作者主张，生产力决不能以代码行数衡量，而应取决于对理解的刻意投入。正如成功的外包公司着力构建共享语境与文档体系，当今开发者需要的工具与实践应聚焦于**阅读、导航和理解代码**，而非仅仅加速产出。当下稀缺的资源不再是编写代码的能力，而是理解代码的能力。

---

## 3. AI正在打破两种漏洞文化

**原文标题**: AI Is Breaking Two Vulnerability Cultures

**原文链接**: [https://www.jefftk.com/p/ai-is-breaking-two-vulnerability-cultures](https://www.jefftk.com/p/ai-is-breaking-two-vulnerability-cultures)

**摘要：**

本文探讨了人工智能如何颠覆软件漏洞管理的两种传统模式。Linux中的“Copy Fail”漏洞凸显了“协同披露”（私下报告漏洞，给予90天修复窗口期）与“漏洞即漏洞”文化（未经协调，公开静默修复问题）之间的紧张关系。

人工智能正在动摇这两种模式。对于“漏洞即漏洞”模式，AI现在可以低成本高效地分析公开代码提交，使安全修复易于识别——提高了信噪比，打破了隐性的默认保密期。对于协同披露模式，AI辅助的漏洞扫描大幅加快了检测速度：在本案例中，两名研究人员在九小时内独立报告了同一漏洞。漫长的保密期如今在限制修复参与人数的同时，制造了虚假的安全感。

作者建议将极短的保密期作为可能的解决方案，并随时间推移进一步缩短。AI可以帮助防御者实现快速修补，这在过去是难以想象的速度。对三大主流AI模型（Gemini、ChatGPT、Claude）的快速测试表明，它们通常仅凭差异就能识别安全补丁，这揭示了AI同时加速攻击与防御的新现实。

---

## 4. 卡通网络Flash游戏

**原文标题**: Cartoon Network Flash Games

**原文链接**: [https://www.webdesignmuseum.org/flash-game-exhibitions/cartoon-network-flash-games](https://www.webdesignmuseum.org/flash-game-exhibitions/cartoon-network-flash-games)

本文题为《Cartoon Network Flash游戏》，包含一个条目：**《史酷比：史酷比快照》**，于**2001年**发布。

关键信息是，这是一款由Cartoon Network制作的浏览器Flash游戏，属于21世纪初该类宣传游戏浪潮的一部分。游戏名称暗示这是一款以史酷比角色为特色的摄影或快照主题冒险游戏，符合当时该网络网站上流行的简单互动式衍生内容。

**要点：**

- **游戏：**《史酷比：史酷比快照》
- **年份：**2001年
- **平台：**Cartoon Network网站（Flash）
- **背景：**与Cartoon Network品牌相关的宣传性浏览器游戏。

---

## 5. 在运行于RAM中的树莓派Zero上托管网站

**原文标题**: Serving a website on a Raspberry Pi Zero running in RAM

**原文链接**: [https://btxx.org/posts/memory/](https://btxx.org/posts/memory/)

本文详细介绍了如何从树莓派 Zero v1.3 上运行纯内存静态网站，仅使用 512MB MicroSD 卡启动。该系统采用无盘配置——Alpine Linux 加载至内存，启动后即可拔出 SD 卡。

**关键步骤：**
1. **本地硬件：** Pi Zero、512MB MicroSD 卡、可选以太网 HAT 及初始设置所需的临时显示器/键盘。
2. **外部 VPS：** 一台廉价的 TierHive VPS（128MB 内存，约 4 美元/年）通过 HAProxy 处理 TLS 终端，同时使用 `socat` 将流量转发至家庭 Pi。
3. **安装：** 使用 Alpine Linux 准备 MicroSD 卡，配置 `lbu` 实现持久化配置，以无盘模式运行 `setup-alpine`（选择“none”作为磁盘）。
4. **软件：** 使用 `darkhttpd`（轻量级）或 `nginx` 作为 Web 服务器，`rsync` 同步文件，`lbu commit -d` 保存更改。
5. **网络：** 在家庭路由器上开放单一端口（如 48080）指向 Pi，使用 DuckDNS 处理动态 IP。VPS 将 80 端口流量转发至家庭 IP。
6. **TLS：** TierHive 的 HAProxy 自动处理 SSL 证书，将加密负载从 Pi 卸载。
7. **备份：** 通过 SSH 使用 `dd` 命令克隆 SD 卡，实现逐字节恢复。

最终成果是低成本、低功耗、无盘 Web 服务器（仅占用 512MB 内存中的约 40MB），由 VPS 代理提供安全保障，易于备份且无追踪。

---

## 6. Meshtastic 简介

**原文标题**: An Introduction to Meshtastic

**原文链接**: [https://meshtastic.org/docs/introduction/](https://meshtastic.org/docs/introduction/)

Meshtastic 是一个开源、社区驱动的项目，利用低成本 LoRa 无线电设备创建远距离、无网络的通信网状网络，非常适合通信基础设施不可靠或缺失的区域。

**主要特点：**
- 实现创纪录的通信距离（最高达331公里）。
- 无需手机即可进行网状通信，但也可与手机配对使用。
- 完全去中心化，无需专用路由器。
- 提供加密通信、出色的电池续航以及可选的GPS定位服务。
- 支持在网状网络内发送和接收文本消息。

**工作原理：**
- 采用广泛可用且无需特殊许可的LoRa无线电协议。
- 无线电设备会自动转发消息以构建网状网络，确保所有组成员都能通信。
- 每台无线电设备一次仅支持连接一部手机。

**社区与支持：**
- 该项目由志愿者运营，代码托管在GitHub上。
- 欢迎通过GitHub、Discord和Meshtastic Discussions贡献内容。
- 支持服务完全由志愿者提供，并设有资源用于解决问题或改进文档。

**快速入门：**
- 项目致力于简化设置流程，并鼓励用户在遇到问题时贡献文档，或通过论坛及Discord寻求帮助。

---

## 7. Bjarne Stroustrup：我该如何处理内存泄漏？（2022）

**原文标题**: Bjarne Stroustrup: How do I deal with memory leaks? (2022)

**原文链接**: [https://www.stroustrup.com/bs_faq2.html#memory-leaks](https://www.stroustrup.com/bs_faq2.html#memory-leaks)

本文摘自比雅尼·斯特劳斯特鲁普的《C++风格与技巧FAQ》（2022年2月更新），聚焦内存管理及其他常见C++问题。

**核心要点：**
- **内存泄漏：** 斯特劳斯特鲁普强调，现代C++应避免手动内存管理。使用`std::vector`等标准库容器能自动处理分配与释放，防止内存泄漏和缓冲区溢出。示例程序通过向量读取输入，无需显式使用`new`/`delete`。
- **编码规范：** 他推荐采用**C++核心指南**，该方案旨在实现类型安全与资源安全，且不损失性能。他警告避免使用过时或基于C语言的编码标准。
- **编译时间：** 编译缓慢通常源于设计不佳的类层次结构。斯特劳斯特鲁普建议使用**抽象类（纯接口）**，且不含数据成员。通过将接口（置于抽象基类）与实现（置于派生类）分离，可解决“脆弱基类问题”，减少头文件依赖并降低重新编译需求。
- **空类大小：** 空类占用非零空间以确保不同对象拥有独立地址。但**空基类优化**允许空基类在派生类中不占用额外空间，从而实现零开销抽象。
- **声明中的数据：** 数据无需放入接口类，而应置于派生类中，以保持接口清晰并降低耦合。

该FAQ还涵盖类、模板、异常及风格等话题，但其核心主旨在于利用现代C++特性提升安全性、性能与可维护性。

---

## 8. 我的首次生产环境下硬盘损坏问题

**原文标题**: My first in-prod corrupted hard drive problem

**原文链接**: [https://blog.pavementlink.ch/2026/05/07/my-first-corrupted-hard-drive-problem/](https://blog.pavementlink.ch/2026/05/07/my-first-corrupted-hard-drive-problem/)

**总结**

一家瑞士生物制药公司的ICT工程师描述了解决生产环境SQL Server硬盘严重损坏问题的过程。

**问题：** 备份失败，且在SQL“补丁”暴露了濒死磁盘上弱扇区后，数据库出现损坏。

**调查过程：**
- **EDR代理**被错误怀疑；禁用/卸载无济于事。
- **VSS**无法读取快照；删除备份未能解决问题。
- **Windows修复工具**（DISM、SFC）检测到损坏但无法修复。
- **时间线分析**将问题关联至近期一个SQL补丁，该补丁在极少访问的审计页上触发高I/O，暴露了预先存在的磁衰减。

**解决方案：**
- **HDD Regenerator**（一款低成本工具）通过反复读取和重写弱扇区成功恢复了磁盘——并非物理修复盘片，而是恢复磁信号强度或触发固件扇区重映射。
- 用戴尔新硬盘替换了旧盘（仅提供硬件支持，无数据恢复协助）。

**关键经验教训：**
- **验证备份是否真正可恢复**以及数据完整性是否完好。
- **将供应商补丁视为生产变更**——先备份，再监控和验证。
- **RAID无法防止静默页损坏**，此类损坏会镜像复制。
- **坚持尝试并接纳非常规工具**或能挽救数据。

---

## 9. 大卫·爱登堡百岁诞辰

**原文标题**: David Attenborough's 100th Birthday

**原文链接**: [https://www.bbc.com/news/articles/cp3pww9g0p5o](https://www.bbc.com/news/articles/cp3pww9g0p5o)

查尔斯三世国王与卡米拉王后领衔为大卫·爱登堡爵士百岁诞辰献上祝福，分享了1958年他向他们介绍一只凤头鹦鹉时的旧照。这位广播员表示，铺天盖地的祝福信息令他"无比感动"，并向祝福者致谢。威廉王子感谢他在气候议题上的启迪，哈里王子则称其为"世俗圣人"，因他打破了"气候问题只发生在别处"的迷思。其他祝福来自大卫·贝克汉姆、乔安娜·林莉、克里斯·帕克汉姆以及世界自然基金会（WWF）——该组织还发布了《多么美好的世界》朗诵版。

主要庆典是一场在皇家阿尔伯特音乐厅举行的90分钟专场音乐会，由克丝蒂·杨主持。BBC音乐会管弦乐团演奏了爱登堡爵士系列节目的配乐，包括《地球脉动II》和《冰冻星球II》，迈克尔·帕林爵士、巴士底乐队丹·史密斯和席格若斯乐队等嘉宾出席。BBC以特别节目纪念其百岁诞辰，包括《地球上的生命》和《秘密花园》纪录片。1926年出生的大卫爵士于1952年加入BBC，以其自然历史系列节目享誉盛名。自然历史博物馆还将一种寄生蜂以他命名。

---

## 10. 一个无需询问就能展示浏览器所知一切信息的网页。

**原文标题**: A web page that shows you everything the browser told it without asking

**原文链接**: [https://sinceyouarrived.world/taken](https://sinceyouarrived.world/taken)

**摘要：** 本文介绍了一个名为“自您到来·第四卷”的网页，该页面展示了浏览器在后台静默向网站透露了多少个人数据。该页面利用JavaScript揭示了浏览器在未经用户许可或操作的情况下提供的信息，包括：位置（通过IP地址）、设备规格（屏幕尺寸、GPU、CPU核心数、电池状态）、已安装字体、语言、时区及操作系统。页面重点展示了字体和Canvas指纹识别、剪贴板API漏洞以及电池追踪（在Chrome/Edge中仍可获取）等技术。该页面自身运作透明：仅执行一次性的IP查询，发送两次匿名事件（到访与完成），不在用户设备上存储任何内容，且不使用Cookie或追踪工具。其16条条形码是根据收集到的数据在本地计算生成的唯一指纹。作者强调，所有这些数据检索均使用标准的、有文档记载的浏览器API——未利用任何漏洞——并且许多网站会使用类似或更具侵入性的技术而不进行披露。该页面旨在通过展示用户无意中泄露的信息来教育访客关注数字隐私，同时自身在其数据收集方面也做到了完全透明。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 2 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 3 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 4 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 5 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 6 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 7 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 8 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 9 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 10 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 11 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 12 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 13 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 14 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 15 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 16 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 17 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 18 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 19 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 20 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 21 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 22 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 23 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 24 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 25 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 26 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 27 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 28 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 29 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 30 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 31 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 32 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 33 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 34 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 35 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 36 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 37 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 38 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 39 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 40 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 41 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 42 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 43 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 44 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 45 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 46 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 47 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 48 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 49 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 50 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 51 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 52 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 53 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 54 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 55 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 56 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 57 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 58 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 59 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 60 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 61 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 62 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 63 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 64 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 65 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 66 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 67 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 68 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 69 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 70 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 71 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 72 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 73 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 74 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 75 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 76 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 77 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 78 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 79 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 80 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 81 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 82 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 83 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 84 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 85 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 86 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 87 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 88 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 89 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 90 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 91 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 92 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 93 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 94 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 95 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 96 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 97 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 98 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 99 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 100 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 101 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 102 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 103 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 104 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 105 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 106 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 107 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 108 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 109 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 110 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 111 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 112 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 113 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 114 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 115 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 116 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 117 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 118 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 119 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 120 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 121 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 122 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 123 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 124 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 125 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 126 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 127 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 128 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 129 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 130 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 131 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 132 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 133 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 134 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 135 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 136 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 137 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 138 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 139 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 140 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 141 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 142 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 143 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 144 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 145 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 146 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 147 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 148 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 149 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 150 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 151 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 152 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 153 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 154 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 155 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 156 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 157 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 158 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 159 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 160 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 161 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 162 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 163 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 164 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 165 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 166 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 167 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 168 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 169 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 170 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 171 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 172 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 173 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 174 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 175 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 176 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 177 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 178 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 179 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 180 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 181 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 182 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 183 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 184 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 185 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 186 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 187 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 188 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 189 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 190 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 191 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 192 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 193 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 194 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 195 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 196 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 197 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 198 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 199 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 200 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 201 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 202 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 203 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 204 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 205 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 206 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 207 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 208 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 209 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 210 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 211 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 212 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 213 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 214 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 215 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 216 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 217 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 218 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 219 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 220 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 221 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 222 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 223 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 224 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 225 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 226 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 227 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 228 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 229 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 230 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 231 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 232 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 233 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 234 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 235 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 236 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 237 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 238 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 239 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 240 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 241 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 242 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 243 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 244 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 245 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 246 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 247 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 248 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 249 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 250 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 251 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 252 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 253 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 254 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 255 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 256 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 257 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 258 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 259 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 260 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 261 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 262 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 263 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 264 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 265 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 266 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 267 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 268 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 269 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 270 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 271 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 272 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 273 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 274 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 275 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 276 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 277 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 278 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 279 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 280 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 281 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 282 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 283 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 284 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 285 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 286 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 287 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 288 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 289 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 290 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 291 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 292 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 293 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 294 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 295 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 296 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 297 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 298 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 299 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 300 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 301 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 302 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 303 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 304 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 305 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 306 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 307 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 308 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 309 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 310 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 311 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 312 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 313 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 314 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 315 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 316 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 317 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 318 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 319 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 320 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 321 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 322 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 323 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 324 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 325 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 326 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 327 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 328 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 329 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 330 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 331 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 332 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 333 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 334 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 335 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 336 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 337 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 338 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 339 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 340 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 341 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 342 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 343 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 344 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 345 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 346 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 347 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 348 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 349 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 350 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 351 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 352 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 353 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 354 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 355 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 356 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 357 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 358 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 359 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 360 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 361 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 362 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 363 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 364 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 365 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 366 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 367 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 368 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 369 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 370 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 371 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 372 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 373 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 374 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 375 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 376 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 377 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 378 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 379 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 380 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 381 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 382 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 383 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 384 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 385 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 386 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 387 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 388 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 389 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 390 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 391 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 392 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 393 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 394 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 395 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 396 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 397 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 398 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 399 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 400 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 401 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 402 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 403 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 404 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 405 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 406 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 407 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 408 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 409 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 410 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 411 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 412 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
