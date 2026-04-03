# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-04-03.md)

*最后自动更新时间: 2026-04-03 20:35:50*
## 1. iNaturalist

**原文标题**: iNaturalist

**原文链接**: [https://www.inaturalist.org/](https://www.inaturalist.org/)

iNaturalist是一个面向自然爱好者的在线社区和公民科学平台。其核心功能是让用户记录、分享和识别自然界中的生物观察记录。用户可以通过网站或移动应用上传观察到的物种照片或声音，社区内的专家和其他爱好者会协助鉴定。这些经过验证的数据会被共享给全球生物多样性信息设施（GBIF）等科学数据库，为科学研究提供支持。

平台的主要特点包括：帮助用户创建个人生物观察清单；通过众包方式鉴定物种；支持用户参与或创建特定的研究项目；以及促进爱好者之间的交流学习。此外，它还支持举办“生物闪电战”等活动。

iNaturalist服务于广泛的用户群体，包括自然爱好者、科学家、教育工作者和自然资源管理者。其目标是连接人与自然，鼓励公众观察自然，并将这些观察转化为有价值的生物多样性数据。该平台由开源软件驱动，是iNaturalist网络的一部分，并提供多语言支持。

---

## 2. Show HN：我搭建了一个个人博客首页

**原文标题**: Show HN: I built a frontpage for personal blogs

**原文链接**: [https://text.blogosphere.app/](https://text.blogosphere.app/)

这是一则关于名为“博客圈”网站的Show HN公告，创建者将其描述为“个人博客的首页”或“独立网络的门户”。

其核心理念是聚合并展示来自各类独立个人博客的最新文章。网站以简洁的倒序列表形式呈现内容（类似于Hacker News等新闻聚合器），每条条目显示文章标题、博客名称以及发布时间。

内容按主题分类（如科技、日常生活、摄影、科学人文），体现了对多元化话题的组织努力。公告中列出的示例展示了收录博客的广泛性，从知名的独立作者到小型个人网站，涵盖文化、科技、书评、个人随想及小众爱好等主题。

本质上，**博客圈是一个精选发现引擎，旨在突出并引导流量至去中心化的个人博客生态系统，充当“独立网络”的集中枢纽。**

---

## 3. 我们为AI文档助手用虚拟文件系统替代了RAG。

**原文标题**: We replaced RAG with a virtual filesystem for our AI documentation assistant

**原文链接**: [https://www.mintlify.com/blog/how-we-built-a-virtual-filesystem-for-our-assistant](https://www.mintlify.com/blog/how-we-built-a-virtual-filesystem-for-our-assistant)

本文介绍了Mintlify如何为其AI文档助手，用名为ChromaFs的虚拟文件系统取代了传统的RAG（检索增强生成）系统。传统RAG方法仅限于检索孤立的文本片段，当答案涉及多个页面或需要精确语法时效果不佳。

ChromaFs为AI智能体营造了一个真实文件系统的假象（支持`grep`、`cat`、`ls`等命令），但实际上它是一个虚拟层，将这些命令转换为对其现有Chroma向量数据库的查询。这解决了使用真实沙盒容器的两大难题：缓慢的启动时间（从约46秒降至约100毫秒）和高昂的计算成本（潜在年费用超7万美元，降至接近零的边际成本）。

关键技术特点包括：
*   **即时目录树**：预构建的缓存文件树支持快速执行`ls`和`find`命令。
*   **内置访问控制**：直接在虚拟文件系统中根据用户权限过滤文件可见性。
*   **高效操作**：页面从数据库片段重组，`grep`通过先用Chroma进行粗筛再内存细筛的方式优化。
*   **只读且无状态**：系统安全且无需会话清理。

最终实现了一个可扩展、高性价比的助手，能够结构化探索文档，每日处理超3万次对话。

---

## 4. 如何制作滑动式、自锁且防捕食者的鸡舍门（2020版）

**原文标题**: How to Make a Sliding, Self-Locking, and Predator-Proof Chicken Coop Door (2020)

**原文链接**: [https://www.backyardchickens.com/articles/how-to-make-a-sliding-self-locking-and-predator-proof-chicken-coop-door.75906/](https://www.backyardchickens.com/articles/how-to-make-a-sliding-self-locking-and-predator-proof-chicken-coop-door.75906/)

本文介绍了如何为鸡舍建造一扇自动上锁、防捕食者的滑动门。其核心特点是安全与便捷：门体垂直滑动，通过外部拉绳操作，并在关闭时从内部自动锁死，防止捕食者破坏门闩。该设计还能防止门从外部被抬起。

所需主要材料包括层压搁板（用作门板）、两条搁板轨道、一个小铰链（作为内部门闩）、螺丝眼、框架木材、配重块和拉绳。必备工具有曲线锯、电钻和锯子。

建造步骤包括：在鸡舍墙壁上搭建门框开口（距离地面3英寸以阻挡捕食者和垫料）；安装垂直轨道和滑动搁板门；将铰链门闩固定在门上使其能水平摆动；并在其上方安装木块。当配重门下降时，铰链会卡住木块实现牢固锁定。最后一步是将拉绳从门闩穿过导向眼引至外部挂钩，无需进入鸡舍即可轻松开合门体。

---

## 5. Systemd与Flatpak的年龄验证

**原文标题**: Age Verification on Systemd and Flatpak

**原文链接**: [https://cybrkyd.com/post/age-verification-on-systemd-and-flatpak/](https://cybrkyd.com/post/age-verification-on-systemd-and-flatpak/)

本文讨论了苹果公司对英国iPhone/iPad用户推出年龄验证的举措，并对其动机提出质疑，因为英国法律针对的是服务提供商，而非设备或操作系统制造商。作者推测这是为2027年加州即将实施的法律进行测试，并指出一个令人担忧的趋势，援引了针对Linux组件如Systemd和Flatpak的类似讨论。

核心担忧在于年龄验证从在线服务层面转移到了操作系统层面。作者为Linux用户提出了实际问题：如果验证由根用户（系统管理员）管理，用户是否只需自行声明年龄即可？如果根用户不能被信任提供真实数据，那么又需要何种侵入隐私的外部验证方法？

文章将此举描述为苹果单方面、先发制人的行动，开创了一个先例，将控制和验证更深地植入设备核心软件中，这对用户自主权和隐私的影响尚不明确。

---

## 6. 深入嵌入式系统与WebAssembly

**原文标题**: Go on Embedded Systems and WebAssembly

**原文链接**: [https://tinygo.org/](https://tinygo.org/)

**概述**

TinyGo 是一款专为 Go 语言设计的编译器，它使得 Go 能够在资源受限的嵌入式系统上运行，并能通过 WebAssembly（WASM）在网页浏览器中执行。基于 LLVM 构建，它允许开发者使用 Go 为广泛的硬件编写代码，从 Arduino Uno、BBC micro:bit 等流行的创客开发板到工业级微控制器。

其核心特性之一是能够生成极其紧凑的 WebAssembly 代码，这不仅使其适用于网页应用，也适用于支持 WASI 的服务器和边缘计算环境。该项目提供了丰富的入门资源，包括示例程序（如“Hello World”和硬件控制演示）、用于实验的在线游乐场，以及针对超过 100 种受支持开发板的详细文档。

此概述强调了 TinyGo 的双重目标：将 Go 的简洁性引入嵌入式开发，并为现代网页和云原生应用创建高效、小巧的 WebAssembly 模块。

---

## 7. 三星魔术师磁盘工具卸载需18个步骤并重启两次。

**原文标题**: Samsung Magician disk utility takes 18 steps and two reboots to uninstall

**原文链接**: [https://chalmovsky.com/2026/03/29/samsung-magician.html](https://chalmovsky.com/2026/03/29/samsung-magician.html)

这篇文章详述了作者卸载三星Magician（一款Mac磁盘工具）时的极度挫败感，将其描述为一个臃肿且设计拙劣的应用程序。核心问题在于该软件完全没有标准的卸载程序，迫使用户尝试运行清理脚本，却因macOS权限问题而失败，导致数百个文件残留。

在手动删除多个系统目录中的大量文件后，作者仍发现27个残留文件。其中最棘手的是四个受macOS系统完整性保护（SIP）保护的内核扩展。为了删除这些文件，作者不得不执行一个复杂的18步流程，需要两次重启进入恢复模式以禁用并重新启用SIP——这一切仅仅是为了删除一个无法正常使用的工具。

文章还批评了该应用程序荒谬的内部臃肿问题，指出它包含数百个用于次要动画的独立PNG文件、一个嵌入式Chromium浏览器、自动更新框架，甚至还有横幅广告。作者总结道，三星Magician是不必要软件复杂性的典型代表，让用户为设置硬盘密码这样的简单任务承受了巨大的麻烦。

---

## 8. 阿尔忒弥斯二号宇航员拍摄地球“壮丽”景象

**原文标题**: Artemis II crew take 'spectacular' image of Earth

**原文链接**: [https://www.bbc.com/news/articles/ce8jzr423p9o](https://www.bbc.com/news/articles/ce8jzr423p9o)

美国宇航局发布了“阿尔忒弥斯二号”任务机组在前往月球途中拍摄的首批地球高清图像。指挥官里德·怀斯曼捕捉到这些“壮观”的照片，其中一张名为《你好，世界》的作品展现了大西洋、地球大气辉光、两极的极光以及金星。

这些照片拍摄于机组成功完成“地月转移轨道点火”之后，该操作将“猎户座”飞船推离地球轨道。这一关键机动使任务进入绕月飞行轨道——飞船将航行超过20万英里，绕至月球背面后返回地球，这标志着自1972年以来人类首次超越地球轨道的深空航行。

据报道，当时机组人员“紧贴舷窗”拍摄，还捕捉到了地球昼夜分界线（即晨昏线）的景象。怀斯曼提到，由于距离遥远，相机参数设置初期遇到困难，但最终成功克服。“阿尔忒弥斯二号”任务预计将于4月6日飞越月球背面，并于4月10日返回地球。

---

## 9. 异步Python实际上是确定性的

**原文标题**: Async Python Is Secretly Deterministic

**原文链接**: [https://www.dbos.dev/blog/async-python-is-secretly-deterministic](https://www.dbos.dev/blog/async-python-is-secretly-deterministic)

本文阐述了如何在Python的异步工作流中实现确定性执行，这是依赖基于重放的恢复机制的持久化执行库的核心需求。

核心挑战在于：虽然`asyncio.gather`能通过并发执行提升性能，但其产生的非确定性任务完成顺序使得可靠的重放机制无法实现。解决方案利用了异步事件循环调度器的确定性特性。

关键洞察：
*   单线程事件循环会严格按照FIFO（先进先出）顺序调度新创建的任务。
*   当`asyncio.gather`将一组协程调度为任务时，它们会按照传入顺序被加入队列。
*   因此，并发任务的**初始执行顺序**是可预测的——即便它们后续的交错执行与完成顺序不可预测。

这种可预测性使得库能在每个任务**首次执行`await`之前**为其分配确定性步骤ID。通过用装饰器（例如`@Step()`）包装步骤执行逻辑——该装饰器在任务创建时立即从递增计数器中分配ID——每个并发步骤都能根据其在原始`gather`调用中的位置，获得唯一且可重放的标识符。

总之，通过理解Python异步的并发是协作式的且其任务队列遵循FIFO原则，开发者可以编写兼具高性能（并发性）与确定性的代码，从而实现可靠的持久化执行。

---

## 10. 伊朗上空F-15E战机被击落

**原文标题**: F-15E jet shot down over Iran

**原文链接**: [https://www.theguardian.com/world/2026/apr/03/us-fighter-jet-confirmed-shot-down-over-iran](https://www.theguardian.com/world/2026/apr/03/us-fighter-jet-confirmed-shot-down-over-iran)

一架美国F-15E“攻击鹰”战斗机在伊朗中部被击落，标志着美军在此次冲突中首次损失战斗机。一名机组人员获救，另一名仍下落不明，这引发了一场高风险的战斗搜索与救援行动。伊朗官方媒体最初声称击落了一架F-35，随后公布了与F-15E相符的残骸和弹射座椅图像。

此次事件发生在美国总统唐纳德·特朗普发表挑衅性讲话后紧张局势升级之际。与此同时，一架美国A-10“疣猪”攻击机在波斯湾地区坠毁，飞行员已安全获救。以色列也对德黑兰和贝鲁特发动了新袭击。

美国已遭受重大飞机损失，估计价值超过30亿美元。百余名国际法专家警告称，美国威胁攻击伊朗民用基础设施（如桥梁和发电厂）的行为可能构成战争罪。伊朗拒绝了美国的停火提议，显示出对结束战斗缺乏兴趣。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 2 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 3 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 4 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 5 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 6 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 7 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 8 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 9 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 10 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 11 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 12 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 13 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 14 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 15 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 16 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 17 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 18 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 19 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 20 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 21 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 22 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 23 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 24 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 25 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 26 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 27 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 28 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 29 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 30 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 31 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 32 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 33 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 34 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 35 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 36 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 37 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 38 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 39 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 40 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 41 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 42 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 43 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 44 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 45 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 46 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 47 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 48 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 49 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 50 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 51 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 52 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 53 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 54 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 55 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 56 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 57 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 58 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 59 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 60 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 61 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 62 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 63 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 64 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 65 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 66 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 67 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 68 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 69 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 70 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 71 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 72 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 73 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 74 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 75 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 76 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 77 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 78 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 79 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 80 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 81 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 82 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 83 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 84 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 85 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 86 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 87 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 88 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 89 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 90 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 91 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 92 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 93 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 94 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 95 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 96 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 97 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 98 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 99 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 100 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 101 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 102 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 103 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 104 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 105 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 106 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 107 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 108 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 109 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 110 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 111 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 112 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 113 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 114 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 115 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 116 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 117 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 118 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 119 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 120 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 121 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 122 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 123 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 124 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 125 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 126 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 127 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 128 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 129 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 130 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 131 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 132 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 133 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 134 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 135 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 136 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 137 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 138 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 139 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 140 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 141 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 142 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 143 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 144 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 145 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 146 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 147 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 148 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 149 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 150 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 151 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 152 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 153 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 154 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 155 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 156 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 157 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 158 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 159 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 160 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 161 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 162 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 163 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 164 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 165 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 166 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 167 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 168 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 169 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 170 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 171 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 172 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 173 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 174 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 175 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 176 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 177 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 178 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 179 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 180 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 181 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 182 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 183 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 184 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 185 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 186 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 187 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 188 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 189 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 190 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 191 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 192 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 193 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 194 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 195 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 196 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 197 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 198 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 199 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 200 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 201 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 202 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 203 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 204 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 205 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 206 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 207 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 208 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 209 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 210 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 211 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 212 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 213 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 214 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 215 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 216 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 217 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 218 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 219 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 220 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 221 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 222 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 223 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 224 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 225 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 226 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 227 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 228 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 229 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 230 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 231 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 232 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 233 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 234 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 235 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 236 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 237 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 238 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 239 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 240 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 241 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 242 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 243 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 244 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 245 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 246 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 247 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 248 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 249 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 250 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 251 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 252 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 253 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 254 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 255 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 256 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 257 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 258 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 259 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 260 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 261 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 262 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 263 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 264 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 265 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 266 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 267 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 268 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 269 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 270 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 271 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 272 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 273 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 274 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 275 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 276 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 277 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 278 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 279 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 280 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 281 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 282 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 283 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 284 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 285 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 286 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 287 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 288 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 289 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 290 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 291 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 292 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 293 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 294 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 295 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 296 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 297 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 298 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 299 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 300 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 301 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 302 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 303 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 304 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 305 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 306 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 307 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 308 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 309 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 310 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 311 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 312 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 313 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 314 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 315 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 316 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 317 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 318 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 319 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 320 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 321 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 322 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 323 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 324 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 325 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 326 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 327 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 328 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 329 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 330 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 331 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 332 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 333 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 334 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 335 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 336 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 337 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 338 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 339 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 340 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 341 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 342 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 343 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 344 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 345 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 346 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 347 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 348 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 349 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 350 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 351 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 352 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 353 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 354 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 355 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 356 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 357 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 358 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 359 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 360 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 361 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 362 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 363 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 364 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 365 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 366 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 367 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 368 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 369 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 370 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 371 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 372 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 373 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 374 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 375 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 376 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 377 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
