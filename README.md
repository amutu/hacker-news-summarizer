# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2025-12-16.md)

*最后自动更新时间: 2025-12-16 20:20:30*
## 1. 车牌识别监控

**原文标题**: alpr.watch

**原文链接**: [https://alpr.watch/](https://alpr.watch/)

**alpr.watch 简介**

alpr.watch 是一个网站和地图工具，旨在帮助公民追踪并反对地方采用大规模监控技术，主要是像 Flock Safety 那样的自动车牌识别系统。

其解决的核心问题是美国各地市政当局快速且常常悄无声息地部署这些系统，这些系统捕获并存储车辆移动数据，从而创建人们日常生活的详细记录。该网站认为，这代表着监控的危险扩张，存在任务蔓延和监督不足的风险。

其主要功能是扫描地方政府会议议程中与监控相关的关键词（如“Flock”、“ALPR”），并将即将进行的讨论标注在交互式地图上。这使用户能够识别这些技术正在被提议的地点，从而可以参加会议并采取行动。

该网站还提供教育资源，解释 ALPR 和 Flock 系统的工作原理及其社会风险，并列出如电子前沿基金会和美国公民自由联盟等正在对抗监控越权的全国性组织。此外，它还提供一项服务，让用户可以注册接收关于其所在地区相关会议的电子邮件提醒。

本质上，alpr.watch 是一个草根透明化和动员工具，旨在为公众提供信息，使其能够参与并挑战地方关于普遍性监控基础设施的决策。

---

## 2. 无图形API

**原文标题**: No Graphics API

**原文链接**: [https://www.sebastianaaltonen.com/blog/no-graphics-api](https://www.sebastianaaltonen.com/blog/no-graphics-api)

本文认为，现代低级图形API（DirectX 12、Vulkan、Metal）已经过时且过于复杂。这些API设计于十年前，针对当时需要将大量状态预打包成持久对象以减少驱动开销的老旧GPU硬件。

作者作为资深图形程序员解释道，当今的GPU已显著进化。它们现在具备一致的缓存层次结构、支持64位GPU指针以及无绑定资源，这使得API中许多保留模式的复杂性变得不再必要。文章强调的最大缺陷是“PSO排列爆炸”——预编译的管线状态对象导致庞大的缓存、缓慢的加载时间以及游戏中的卡顿现象。

文章追溯了API设计的历史原因，从早期的固定功能硬件（如3dfx Voodoo 2）到可编程着色器和计算单元的引入。文中指出，尽管DirectX 11等API增加了灵活性，但也引入了大量复杂且不透明的缓冲区类型和描述符，这些设计因向后兼容性而得以保留。

核心结论是，为当今硬件设计的新API可以大幅简化，消除冗余的持久对象，并充分利用现代GPU的直接内存访问和无绑定资源等能力，最终解决当前“现代”API所困扰的性能与复杂度问题。

---

## 3. 40%的功能磁共振成像信号与实际大脑活动不符

**原文标题**: 40 percent of fMRI signals do not correspond to actual brain activity

**原文链接**: [https://www.tum.de/en/news-and-events/all-news/press-releases/details/40-percent-of-mri-signals-do-not-correspond-to-actual-brain-activity](https://www.tum.de/en/news-and-events/all-news/press-releases/details/40-percent-of-mri-signals-do-not-correspond-to-actual-brain-activity)

《自然·神经科学》发表的一项新研究挑战了功能性磁共振成像（fMRI）的基础假设，指出其高达40%的信号可能无法可靠反映大脑活动。

数十年来，fMRI一直将血流量增加（BOLD信号）解读为神经元活动增强和需氧量上升的标志。然而，慕尼黑工业大学和埃尔朗根-纽伦堡大学的研究人员通过对40多名参与者实际耗氧量的测量，发现这种关联并非普遍存在。他们观察到，在心算等任务期间，活动增强的脑区常出现fMRI信号减弱的现象，而活动减弱时信号反而可能增强。

关键发现在于：活跃脑区可以通过从现有血流中提取更多氧气来满足更高的能量需求，而非必须依赖灌注量增加。这意味着标准fMRI信号可能产生误导，导致对现有数千项研究中大脑激活状态的解读出现反向偏差。

这对神经科学和临床研究具有重大意义。针对抑郁症或阿尔茨海默症等疾病的研究结论常基于血流变化，但这些发现可能反映的是血管差异而非真实的神经元功能缺损，在老年患者中尤为明显。作者主张在传统fMRI基础上结合定量氧代谢测量，以建立更精准、基于能量代谢的大脑功能模型。

---

## 4. Mozilla任命安东尼·恩佐尔-德梅奥为新任首席执行官

**原文标题**: Mozilla appoints new CEO Anthony Enzor-Demeo

**原文链接**: [https://blog.mozilla.org/en/mozilla/leadership/mozillas-next-chapter-anthony-enzor-demeo-new-ceo/](https://blog.mozilla.org/en/mozilla/leadership/mozillas-next-chapter-anthony-enzor-demeo-new-ceo/)

Mozilla任命**安东尼·恩佐尔-德梅奥**为新任首席执行官，自2025年12月16日起生效。他将接替临时首席执行官**劳拉·钱伯斯**。钱伯斯在领导Mozilla度过人工智能整合与Firefox增长等重大变革期后，将重返Mozilla董事会。

恩佐尔-德梅奥为Mozilla的未来描绘了清晰愿景：成为 **“全球最受信赖的软件公司”** 。他认为信任是科技领域的核心议题，尤其在浏览器这一关乎隐私、数据和人工智能透明度的决策平台。

这一愿景建立在三大核心支柱之上：
1.  **用户自主权：** 产品须提供清晰的控制选项、易于理解的数据实践，并允许用户轻松退出人工智能功能。
2.  **信任导向型业务：** 营收增长将来自用户认可的透明盈利模式。
3.  **扩展生态系统：** Firefox将发展为现代人工智能浏览器，并成为更广泛可信软件生态的核心。

该战略包含“双重底线”原则，即同时以推进Mozilla使命和实现市场增长来衡量成功。未来三年的关键目标包括：投资符合Mozilla原则的人工智能技术、拓展搜索以外的多元化收入来源，以及扩大Firefox用户基数。

恩佐尔-德梅奥认为，当前人工智能发展、监管环境变化以及浏览器作为数字控制点的角色演变，正发挥Mozilla的优势，使公司能在未来提升行业影响力并增强发展韧性。

---

## 5. 《世界幸福报告》存在方法论上的问题。

**原文标题**: The World Happiness Report is beset with methodological problems

**原文链接**: [https://yaschamounk.substack.com/p/the-world-happiness-report-is-a-sham](https://yaschamounk.substack.com/p/the-world-happiness-report-is-a-sham)

本文认为，被广泛引用的《世界幸福报告》在方法论上存在缺陷且具有误导性。文章指出，该报告的排名仅基于对“坎特里尔阶梯”问题的回答——该问题测量的是生活满意度而非即时幸福感，并可能引导受访者联想到财富与地位。

作者主张，这一单一指标与其它福祉衡量标准关联性较弱，并指出排名靠前的斯堪的纳维亚国家（如芬兰和瑞典）抗抑郁药物使用率和自杀率居高不下。通过引用经济学家布兰奇弗劳尔与布赖森提出的综合测量每日正负情绪的研究，文章显示全球幸福排名会发生显著变化：例如芬兰跌至第51位，而美国各州数据则呈现更高幸福感，多个州的表现甚至超越所有国家。

文章最终指出该报告实为一种“精英阶层的信息误导”，并批评媒体对其结论不加甄别的传播。作者警告不应以不可靠的幸福排名取代GDP等成熟指标，同时呼吁新闻界对此类研究加强审查力度。

---

## 6. GPT图像1.5

**原文标题**: GPT Image 1.5

**原文链接**: [https://openai.com/index/new-chatgpt-images-is-here/](https://openai.com/index/new-chatgpt-images-is-here/)

我无法访问文章链接。我的浏览功能目前处于禁用状态，因此无法检索和阅读所提供网址（https://openai.com/index/new-chatgpt-images-is-here/）的内容。

要获取摘要，您可以：
1. 直接访问链接并与我分享文本。
2. 使用具有活跃网络访问权限的网页浏览器或工具来阅读文章。

请提供文章文本，我将很乐意为您进行摘要。

---

## 7. FVWM-95

**原文标题**: FVWM-95

**原文链接**: [https://fvwm95.sourceforge.net/](https://fvwm95.sourceforge.net/)

**《FVWM-95》概述**

FVWM-95 是一款高度可配置的 X 窗口系统窗口管理器，旨在在类 Unix 操作系统上模拟 Windows 95 桌面环境的外观和体验。它是流行的 FVWM（F? 虚拟窗口管理器）的一个衍生版本。

该项目的主要目标是为从 Windows 95 过渡的用户或偏爱其经典界面范式的用户提供一个熟悉且高效的工作桌面。其强调的主要特性包括：

*   **Windows 95 美学：** 它复制了核心视觉元素，如开始菜单、任务栏、桌面图标、窗口装饰和控制面板。
*   **高度可定制：** 秉承其 FVWM 的传统，它提供了广泛的配置选项。用户可以通过编辑纯文本配置文件来修改菜单、功能和行为。
*   **轻量高效：** 作为一个窗口管理器（而非完整的桌面环境），它设计为资源高效型，适用于老旧或性能较低的系统。
*   **功能性：** 在 Windows 95 风格的框架内，它支持虚拟桌面、窗口卷起、图标化以及其他标准的窗口管理操作。

该网站作为官方项目页面，托管了文档、配置示例、屏幕截图和可供下载的源代码。FVWM-95 被呈现为一种怀旧且实用的解决方案，用于在 Linux 或其他基于 Unix 的系统上创建类似 Windows 95 的工作空间，并强调用户控制权和较低的系统资源占用。

---

## 8. 使用Qt、QML、Rust以及C++编写一个明目张胆的Telegram克隆版。

**原文标题**: Writing a blatant Telegram clone using Qt, QML and Rust. And C++

**原文链接**: [https://kemble.net/blog/provoke/](https://kemble.net/blog/provoke/)

作者描述了一个短期项目：使用Qt、QML和Rust（辅以少量C++）开发类似Telegram的桌面应用。主要动机是重新探索QML进行界面开发，并尝试将其与Rust集成。在初期因`cxx-qt`编译耗时过长遇到困难后，他们转而采用`qmetaobject-rs`以加速迭代，并为QML文件实现了基础的热重载系统。

文章详细介绍了他们成功复刻的多个Telegram界面组件，包括自定义分割器、带动画的可折叠侧边栏、带方向性尾部的聊天气泡，以及精致的表情反应弹窗。他们还利用Qt实验性的`SystemTrayIcon`和`ShaderEffectSource`功能，实现了窗口最小化到系统托盘并显示动态通知徽标。

该项目是一次技术探索，让作者重新掌握了使用`NumberAnimation`和属性绑定实现同步动画等QML技巧。虽然他们完成了视觉上高度还原的Telegram界面原型，但项目尚未完结，因其他工作优先级而被搁置。此次实践既展现了QML在快速界面原型开发中的优势，也揭示了将其与Rust结合时面临的实际挑战。

---

## 9. GitHub将于2026年3月开始对自托管运行器收费。

**原文标题**: GitHub will begin charging for self-hosted action runners on March 2026

**原文链接**: [https://github.blog/changelog/2025-12-16-coming-soon-simpler-pricing-and-a-better-experience-for-github-actions/](https://github.blog/changelog/2025-12-16-coming-soon-simpler-pricing-and-a-better-experience-for-github-actions/)

**GitHub Actions 定价变更摘要（2026年）**

自 **2026年3月1日** 起，GitHub 将对私有仓库中的 **自托管运行器** 使用按 **每分钟 0.002 美元** 收费。这项新的“云平台费用”将计入用户计划中已有的分钟配额。公共仓库中的使用仍保持免费。

此项变更与 **GitHub 托管运行器** 的单独降价措施同步，后者将于 **2026年1月1日** 生效，根据机器类型不同，降幅最高可达 **39%**。免费使用分钟额度保持不变。

GitHub 表示，新收费将用于 **加大对自托管运行器体验的投入**，包括增强对 Linux 容器以外场景的自动扩缩容、新的扩缩容方法以及扩展的平台支持（如 Windows）。

**主要例外情况：**
*   **GitHub Enterprise Server** 客户不受影响。
*   **公共仓库** 中的运行器使用不收费。

GitHub 已为用户提供了多项资源，包括常见问题解答、更新的定价文档、定价计算器以及从自托管运行器迁移到 GitHub 托管运行器的指南。

---

## 10. 世嘉频道：VGHF成功恢复超过100款世嘉频道ROM（及更多内容）

**原文标题**: Sega Channel: VGHF Recovers over 100 Sega Channel ROMs (and More)

**原文链接**: [https://gamehistory.org/segachannel/](https://gamehistory.org/segachannel/)

电子游戏历史基金会（VGHF）成功复原并保存了超过100款曾被认为失传的世嘉频道ROM文件。世嘉频道是上世纪90年代基于有线电视网络的游戏服务。这项重要的保存工作由前世嘉频道副总裁迈克尔·肖洛克与一位社区成员合作完成，共发掘出144个独特的系统与游戏ROM。

这批资料包含近100个系统软件版本、原型游戏以及《加菲猫：现场捉贼——失落的关卡》《摩登原始人》等独家游戏，这些作品此前被认为已永久失传。其中还收录了零售游戏的特别“限量版”变体，这些版本曾为适应服务文件大小限制而被删减或拆分。

除ROM文件外，VGHF还归档了肖洛克个人收藏的内部文件，揭示了该服务的运营细节以及一个名为“快速游戏”的未公开后续项目。所有复原数据已捐赠给Gaming Alexandria平台向公众开放。

该项目解开了长期存在的谜团，证实宣传中的独占游戏《臭氧小子》因开发问题从未实际发行。此次复原被认为涵盖了几乎所有未被发现的世嘉频道游戏，几乎完整构建了美国地区所有独特世嘉Genesis游戏的数字档案。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 2 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 3 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 4 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 5 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 6 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 7 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 8 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 9 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 10 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 11 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 12 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 13 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 14 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 15 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 16 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 17 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 18 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 19 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 20 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 21 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 22 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 23 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 24 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 25 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 26 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 27 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 28 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 29 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 30 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 31 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 32 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 33 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 34 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 35 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 36 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 37 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 38 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 39 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 40 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 41 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 42 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 43 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 44 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 45 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 46 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 47 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 48 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 49 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 50 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 51 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 52 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 53 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 54 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 55 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 56 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 57 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 58 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 59 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 60 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 61 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 62 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 63 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 64 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 65 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 66 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 67 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 68 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 69 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 70 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 71 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 72 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 73 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 74 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 75 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 76 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 77 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 78 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 79 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 80 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 81 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 82 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 83 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 84 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 85 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 86 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 87 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 88 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 89 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 90 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 91 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 92 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 93 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 94 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 95 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 96 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 97 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 98 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 99 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 100 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 101 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 102 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 103 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 104 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 105 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 106 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 107 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 108 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 109 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 110 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 111 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 112 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 113 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 114 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 115 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 116 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 117 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 118 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 119 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 120 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 121 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 122 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 123 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 124 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 125 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 126 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 127 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 128 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 129 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 130 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 131 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 132 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 133 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 134 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 135 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 136 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 137 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 138 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 139 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 140 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 141 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 142 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 143 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 144 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 145 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 146 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 147 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 148 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 149 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 150 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 151 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 152 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 153 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 154 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 155 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 156 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 157 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 158 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 159 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 160 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 161 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 162 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 163 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 164 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 165 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 166 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 167 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 168 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 169 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 170 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 171 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 172 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 173 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 174 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 175 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 176 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 177 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 178 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 179 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 180 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 181 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 182 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 183 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 184 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 185 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 186 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 187 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 188 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 189 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 190 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 191 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 192 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 193 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 194 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 195 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 196 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 197 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 198 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 199 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 200 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 201 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 202 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 203 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 204 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 205 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 206 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 207 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 208 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 209 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 210 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 211 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 212 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 213 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 214 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 215 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 216 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 217 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 218 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 219 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 220 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 221 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 222 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 223 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 224 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 225 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 226 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 227 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 228 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 229 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 230 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 231 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 232 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 233 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 234 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 235 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 236 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 237 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 238 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 239 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 240 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 241 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 242 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 243 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 244 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 245 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 246 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 247 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 248 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 249 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 250 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 251 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 252 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 253 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 254 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 255 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 256 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 257 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 258 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 259 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 260 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 261 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 262 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 263 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 264 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 265 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 266 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 267 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 268 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 269 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 270 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
