# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2025-12-30.md)

*最后自动更新时间: 2025-12-30 20:37:23*
## 1. FediMeteo：一台4欧元的FreeBSD虚拟服务器如何成为全球气象服务

**原文标题**: FediMeteo: A €4 FreeBSD VPS Became a Global Weather Service

**原文链接**: [https://it-notes.dragas.net/2025/02/26/fedimeteo-how-a-tiny-freebsd-vps-became-a-global-weather-service-for-thousands/](https://it-notes.dragas.net/2025/02/26/fedimeteo-how-a-tiny-freebsd-vps-became-a-global-weather-service-for-thousands/)

FediMeteo是一项基于每月4欧元FreeBSD VPS构建的全球自动化气象服务。它通过ActivityPub协议直接向联邦宇宙发布全球数千个城市的本地化天气预报。

该项目最初只是为获取意大利某城市天气信息而打造的个人工具。它采用FreeBSD监狱技术按国家隔离实例，以提升安全性和管理效率。核心软件是极简ActivityPub服务器**snac**，用于发布由定制Python脚本生成的天气预报。该脚本从Open-Meteo获取数据，使用本地语言和表情符号以Markdown格式排版以提升可读性，并通过命令行发布信息。

服务从意大利起步，经FediFollows推广后迅速扩展。现已覆盖**38个国家和2900多座城市**，拥有近7700名直接关注者。主要技术挑战包括为美国等大国进行规模适配、处理不同单位和时区，以及通过坐标缓存机制提升系统可靠性。

尽管规模庞大，该系统仍保持高效运行，仅占用约500MB内存。采用定期ZFS快照和加密异地备份提供数据保障。该项目证明了在低成本VPS上运用符合Unix哲学的精简工具，同样能创建出稳健且广泛使用的服务。

---

## 2. 一切皆代码：我们如何在一个单一代码库中管理公司

**原文标题**: Everything as Code: How We Manage Our Company in One Monorepo

**原文链接**: [https://www.kasava.dev/blog/everything-as-code-monorepo](https://www.kasava.dev/blog/everything-as-code-monorepo)

在Kasava，整个公司都运行在一个单一的单体代码库中，它不仅包含应用程序代码，还包括营销网站、文档、投资者演示文稿、电子邮件模板和外部服务代码。这种“一切皆代码”的方法实现了跨所有边界的原子性变更——例如，只需更新一个JSON文件中的定价信息，就能立即在后端、前端和营销网站上同步生效，从而消除了同步问题。

这种结构是他们AI原生开发理念的关键。通过将所有上下文整合到一个代码库中，AI工具可以理解和验证整个系统的变更，从而加速文档编写、事实核查和功能开发。它还创建了一种统一的发布文化，从博客文章到新功能，所有内容都通过相同的`git push`工作流进行部署。

尽管该代码库包含超过5,000个跨独立项目（如Next.js前端和Cloudflare Workers后端）的TypeScript文件，但他们避免了复杂的单体代码库工具。每个目录都是一个独立的npm项目，CI/CD流水线根据路径变更选择性触发。他们通过将资产保持外部化并维持一个小型、透明的团队来管理潜在的挑战，如代码库大小和权限边界。每个目录中都配有`CLAUDE.md`文件来记录设置，以指导开发人员和AI助手。

---

## 3. Toro：以单内核形式部署应用程序

**原文标题**: Toro: Deploy Applications as Unikernels

**原文链接**: [https://github.com/torokernel/torokernel](https://github.com/torokernel/torokernel)

Toro是一种专为将应用程序部署为轻量级微虚拟机而设计的单内核系统。它采用极简架构，利用virtio-fs实现文件系统访问，通过virtio-vsocket处理网络通信。其主要特性包括支持x86-64架构、最高512GB内存、兼容QEMU-KVM和Firecracker、协作式调度器、快速启动时间以及极小的镜像体积。

用户可通过预构建的Docker容器快速体验Toro，该容器包含运行"HelloWorld"示例所需的所有工具。若进行本地开发，可按照提供的Dockerfile说明安装必要工具。其他示例如"StaticWebServer"和"Intercore Communication"演示，则展示了网络功能与多核通信能力。

欢迎通过项目Google组参与贡献，Toro采用GPLv3许可证。该项目已通过多场技术会议演讲详细介绍了从启动时间优化到运行MPI应用的发展历程与功能特性。

---

## 4. 电解可以解决我们最大的污染问题之一。

**原文标题**: Electrolysis can solve one of our biggest contamination problems

**原文链接**: [https://ethz.ch/en/news-and-events/eth-news/news/2025/11/electrolysis-can-solve-one-of-our-biggest-contamination-problems.html](https://ethz.ch/en/news-and-events/eth-news/news/2025/11/electrolysis-can-solve-one-of-our-biggest-contamination-problems.html)

苏黎世联邦理工学院的研究人员开发出一种电化学工艺，用于解决DDT和林丹等禁用杀虫剂造成的持久性污染。这些被称为持久性有机污染物（POPs）的有害物质可在环境中存留数十年。

该技术的核心创新在于利用交流电解破坏毒素中稳定的碳-卤键。这种方法能完全去除有害的卤素原子，将其转化为食盐等无害盐类，同时将碳骨架转化为苯等有价值的工业化学品。这些产物可用于塑料、药品和涂料的生产。

该工艺高效且经济，交流电可防止电极损耗并抑制氯气生成等危险副反应。它仅需简易设备，无需复杂预处理即可直接在现场处理受污染的土壤或污泥，避免了危险物质的运输需求。

这项技术不仅为历史遗留污染提供了治理方案，还能将环境毒素转化为有用原材料，促进循环经济发展。研究团队已成功完成原型测试，该项目已入围苏黎世联邦理工学院2025年度火花奖最终评选。

---

## 5. Libsodium 中的一个漏洞

**原文标题**: A Vulnerability in Libsodium

**原文链接**: [https://00f.net/2025/12/30/libsodium-vulnerability/](https://00f.net/2025/12/30/libsodium-vulnerability/)

**Libsodium 漏洞摘要**

在广泛使用的加密库 libsodium 中，其底层函数 `crypto_core_ed25519_is_valid_point()` 被发现存在一个漏洞。该漏洞存在于 1.0.20 及更早版本中，会导致某些无效的椭圆曲线点被错误地验证为属于所需的密码学子群。

**技术问题：** 该函数通过将点乘以 L 并验证结果是否为恒等点，来检查点是否在素数阶“主子群”（阶为 L）中。有缺陷的实现仅检查了 X 坐标是否为零，而遗漏了 Y 和 Z 坐标必须相等的附加要求。这使得来自混合阶子群（例如，一个有效点加上一个小阶点）的点能够通过验证。

**影响：** 该漏洞仅影响那些直接调用此特定底层函数来验证自定义密码学协议中不可信点的用户。**Ed25519 签名的高级标准 API（`crypto_sign_*`）不受影响**，因为它们不使用此函数。标准的密钥生成也会产生安全的密钥。

**修复与建议：** 修复补丁添加了缺失的坐标检查。维护者强烈建议在新的自定义协议中使用 **Ristretto255** API（自 2019 年起可用），因为它能自动处理辅因子问题且速度更快。对于无法立即更新的用户，提供了一个临时解决方案函数。

修复后的软件包自 2025 年 12 月 30 日起已可用。维护者指出，这是该库 13 年来的首次安全问题，并强调了维护该项目所需的持续努力。

---

## 6. 展示 HN：22 GB 的 Hacker News 数据存入 SQLite

**原文标题**: Show HN: 22 GB of Hacker News in SQLite

**原文链接**: [https://hackerbook.dosaygo.com](https://hackerbook.dosaygo.com)

这是关于“Hacker Book”项目的公告，该项目提供了一个22 GB的SQLite数据库，包含自2006年起完整的Hacker News数据存档。该数据库涵盖帖子、评论及相关元数据，支持离线查询与分析。

项目网站复刻了经典的Hacker News界面，设有导航链接（最新、首页、问答、展示、招聘）及搜索/查询功能。它定位为永久性、以社区为核心的存档（“所有HN数据皆属于你！2006 - 2025 永久留存”）。

此公告以“Show HN”帖子形式发布，表明是创作者为社区分享的可使用项目。页脚标注“DOSAYGO”开发，并附有“[获取此资源]”链接，推测用于下载数据库。

---

## 7. 为F-Droid加速心跳。我们的新服务器现已上线。

**原文标题**: A faster heart for F-Droid. Our new server is here

**原文链接**: [https://f-droid.org/2025/12/30/a-faster-heart-for-f-droid.html](https://f-droid.org/2025/12/30/a-faster-heart-for-f-droid.html)

F-Droid已升级其核心服务器硬件，这得益于社区捐款，替换了已使用12年、日渐成为日常负担的旧系统。新服务器已带来显著的性能提升，实现了更快的应用构建和更频繁的仓库更新——从今年初期的每3-4天更新一次，提升至可能每日更新两次。

由于全球供应链问题，采购可靠部件曾导致延迟，但团队优先选择了耐用、长效的硬件。值得注意的是，服务器通过与一位长期可信贡献者的特殊安排进行托管，确保了物理安全性和透明度，这与F-Droid的价值观相符。

此次升级直接惠及整个生态系统：开发者能获得更及时的应用构建，维护风险得以降低，用户也能更快获取应用更新。该项目强调，社区捐款对于维护其独立性、可靠性以及对自由软件的承诺至关重要。

---

## 8. 软件开发者不凭感觉，他们掌控：2025年AI代理编码应用

**原文标题**: Prof. Software Developers Don't Vibe, They Control: AI Agent Coding Use in 2025

**原文链接**: [https://arxiv.org/abs/2512.14012](https://arxiv.org/abs/2512.14012)

本文研究了专业软件开发者在2025年如何使用AI编程助手。通过实地观察（13名开发者）和问卷调查（99名开发者），研究发现经验丰富的开发者并非被动地与AI助手"随性协作"，而是主动掌控其行为。

主要发现包括：
*   **动机与价值：** 开发者主要将AI助手视为提升编码效率的生产力工具，而非能够自主创建完整软件系统的创造者。
*   **控制与策略：** 开发者坚持保留对软件设计和实现的主导权，以确保基础质量属性（如正确性、可维护性）。他们采用特定策略控制助手行为，运用自身专业知识引导和修正AI的输出。
*   **任务适用性：** 研究表明存在某些特定类型的任务更适合使用AI助手，这意味着开发者对其使用具有选择性。
*   **整体态度：** 经验丰富的开发者对将AI助手融入工作流程持积极态度，这主要源于他们对自己能够弥补助手局限性的信心。

论文总结指出，有效使用AI助手仍需遵循软件开发的最佳实践。研究为设计更好的助手界面和制定使用指南指出了未来方向，强调应建立人为主导的协作模式，而非追求完全自动化。

---

## 9. Loss32：让我们构建一个Win32/Linux系统

**原文标题**: Loss32: Let's Build a Win32/Linux

**原文链接**: [https://loss32.org/](https://loss32.org/)

这篇文章介绍了**loss32**，这是一个Linux发行版的概念，其桌面环境完全由通过WINE运行的Win32软件构成。目标是创建一个自由、开源的操作系统，为运行Windows（.exe）应用程序提供无缝体验，主要面向那些偏爱经典Windows桌面或需要广泛软件兼容性的用户。

loss32与ReactOS的区别在于，它基于稳定的Linux内核和WINE构建，而非重新实现Windows NT内核。这种方法旨在获得更好的硬件支持，并在需要时能够运行Linux软件。

作者认为，通过WINE，Win32充当了一个“稳定的Linux ABI”，提供了对数十年来积累的软件的访问权限，尤其是在创意领域和游戏领域，这些领域的Linux替代方案往往有限。一张概念验证截图展示了该环境在Debian上的运行情况。

该项目目前处于早期开发阶段，计划在2026年1月发布概念验证版本。项目正在寻求拥有Wayland合成器、WINE、ReactOS用户空间组件以及Linux桌面堆栈专业知识的贡献者，以帮助完善用户体验。

---

## 10. 逆向工程我在酒店中遇到的神秘UDP数据流（2016）

**原文标题**: Reverse Engineering a Mysterious UDP Stream in My Hotel (2016)

**原文链接**: [https://www.gkbrk.com/hotel-music](https://www.gkbrk.com/hotel-music)

2016年，一位现代酒店的客人使用Wireshark时，在2046端口发现了一个神秘的高流量UDP多播流。数据包大小始终为634字节，对于视频来说太小，这促使他进一步调查。

通过编写Python脚本捕获数据，作者在数据包中注意到字符串“LAME3.91”（一种MP3编码器）。然而，将原始数据直接保存为MP3文件失败了。为了找到正确的数据偏移量，作者编写了另一个脚本，保存数据包的多个副本，每个副本从起始位置跳过递增的字节数。使用`file`命令检查发现，跳过前8字节后得到了有效的“MPEG ADTS, layer III”文件。

最终，作者创建了一个脚本持续捕获数据包，剥离8字节头部，并将剩余数据拼接成MP3文件。播放时，音频内容不过是酒店通过多播流向走廊扬声器播放的电梯音乐。尽管技术调查取得了成功，结果却是一个令人莞尔的平凡发现。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 2 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 3 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 4 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 5 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 6 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 7 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 8 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 9 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 10 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 11 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 12 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 13 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 14 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 15 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 16 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 17 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 18 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 19 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 20 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 21 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 22 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 23 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 24 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 25 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 26 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 27 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 28 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 29 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 30 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 31 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 32 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 33 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 34 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 35 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 36 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 37 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 38 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 39 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 40 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 41 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 42 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 43 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 44 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 45 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 46 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 47 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 48 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 49 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 50 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 51 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 52 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 53 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 54 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 55 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 56 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 57 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 58 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 59 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 60 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 61 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 62 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 63 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 64 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 65 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 66 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 67 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 68 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 69 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 70 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 71 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 72 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 73 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 74 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 75 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 76 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 77 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 78 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 79 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 80 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 81 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 82 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 83 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 84 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 85 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 86 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 87 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 88 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 89 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 90 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 91 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 92 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 93 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 94 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 95 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 96 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 97 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 98 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 99 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 100 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 101 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 102 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 103 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 104 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 105 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 106 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 107 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 108 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 109 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 110 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 111 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 112 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 113 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 114 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 115 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 116 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 117 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 118 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 119 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 120 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 121 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 122 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 123 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 124 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 125 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 126 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 127 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 128 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 129 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 130 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 131 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 132 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 133 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 134 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 135 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 136 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 137 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 138 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 139 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 140 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 141 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 142 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 143 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 144 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 145 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 146 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 147 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 148 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 149 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 150 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 151 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 152 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 153 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 154 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 155 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 156 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 157 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 158 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 159 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 160 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 161 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 162 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 163 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 164 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 165 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 166 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 167 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 168 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 169 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 170 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 171 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 172 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 173 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 174 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 175 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 176 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 177 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 178 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 179 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 180 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 181 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 182 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 183 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 184 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 185 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 186 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 187 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 188 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 189 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 190 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 191 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 192 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 193 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 194 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 195 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 196 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 197 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 198 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 199 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 200 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 201 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 202 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 203 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 204 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 205 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 206 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 207 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 208 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 209 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 210 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 211 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 212 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 213 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 214 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 215 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 216 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 217 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 218 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 219 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 220 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 221 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 222 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 223 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 224 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 225 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 226 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 227 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 228 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 229 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 230 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 231 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 232 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 233 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 234 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 235 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 236 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 237 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 238 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 239 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 240 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 241 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 242 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 243 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 244 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 245 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 246 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 247 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 248 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 249 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 250 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 251 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 252 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 253 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 254 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 255 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 256 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 257 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 258 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 259 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 260 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 261 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 262 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 263 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 264 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 265 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 266 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 267 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 268 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 269 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 270 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 271 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 272 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 273 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 274 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 275 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 276 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 277 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 278 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 279 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 280 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 281 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 282 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 283 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
