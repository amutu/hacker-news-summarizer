# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-30.md)

*最后自动更新时间: 2026-03-30 20:36:09*
## 1. 联邦软件：比它们封禁的应用更擅于窥探的政府应用

**原文标题**: Fedware: Government apps that spy harder than the apps they ban

**原文链接**: [https://www.sambent.com/the-white-house-app-has-huawei-spyware-and-an-ice-tip-line/](https://www.sambent.com/the-white-house-app-has-huawei-spyware-and-an-ice-tip-line/)

本文引入“联邦软件”一词，指代美国政府官方移动应用程序中那些进行大规模数据收集与监控的软件。文章指出，这类提供新闻、警报等公开信息的应用程序，往往索取过度侵入性的权限并嵌入大量第三方追踪器，其程度远超其宣称功能所需。

主要案例包括白宫应用程序（要求获取GPS和生物识别数据）、联邦调查局应用程序（内含广告服务追踪器）以及联邦应急管理局应用程序（要求28项权限）。文中还特别指出更令人担忧的系统，例如海关与边境保护局的移动护照控制程序可保留面部识别数据长达75年；移民与海关执法局的SmartLINK监控程序在22亿美元合同支持下收集海量个人数据。

文章进一步揭露，政府机构通过向商业数据中介购买大量定位数据，从而规避搜查令要求。作者批评监管缺失，指出自2010年以来政府问责办公室提出的大多数隐私建议仍被忽视，国会也未能通过全面的隐私保护法律。核心结论是：这些应用程序已成为庞大监控管道的数据收集工具，公民通过标准网页浏览器反而能更安全地获取相同的政府信息。

---

## 2. 自己动手写。

**原文标题**: Do your own writing

**原文链接**: [https://alexhwoods.com/dont-let-ai-write-for-you/](https://alexhwoods.com/dont-let-ai-write-for-you/)

本文反对使用大语言模型生成完整文档，将写作视为促进思考与建立信任的关键过程。

作者指出，写作的首要目标是通过梳理复杂问题来厘清自身认知。这是一个需要付出努力、培养技能的实践过程，将其外包给大语言模型如同雇人替你健身——你会错失成长的机会。

此外，大语言模型生成的文本会侵蚀信任。它暗示你并未真正投入思考，既损害你作为领导者的公信力，也让你表达的观点显得缺乏真诚。

文章确实支持将大语言模型用于特定场景：资料研究、灵感激发（在此过程中欠佳的建议无伤大雅）、文字转录以及成果校验。但最终强调，要真正发挥大语言模型的价值，我们必须将其与更深度的个人思考相结合，而非取代人类写作这一不可替代的核心工作。

---

## 3. 如何将任何设备变成路由器

**原文标题**: How to turn anything into a router

**原文链接**: [https://nbailey.ca/post/router/](https://nbailey.ca/post/router/)

本文阐述了如何利用Linux将几乎任何计算机改造为功能齐全的路由器，主要是为了应对限制性进口政策。作者指出路由器本质上就是专用计算机，并通过从迷你PC到旧笔记本电脑等多种硬件演示了改造过程。

核心要求是一台能运行Linux且至少有两个网络接口的设备（必要时可使用USB以太网适配器）。本指南以Debian系统为例，仅需安装几个关键软件包：用于Wi-Fi的`hostapd`、用于DHCP/DNS的`dnsmasq`，以及用于合并局域网端口的`bridge-utils`。

关键配置步骤包括：
1. 命名网络接口（如`eth0`用于广域网，`eth1`用于局域网）。
2. 使用`hostapd`建立无线接入点。
3. 桥接有线与无线局域网接口。
4. 启用IP转发并使用`nftables`配置防火墙/NAT。
5. 配置`dnsmasq`为本地网络处理DHCP和DNS服务。

文章强调该设置方案简单可靠，即使在普通硬件上也能处理大量流量。最后列举了潜在的高级功能（如VPN、VLAN或入侵检测），但提醒避免让路由器本身超负荷运行，建议将复杂服务交由专用设备处理。全文主旨在于帮助用户利用现有硬件构建功能强大、可定制化的路由器。

---

## 4. 用1美元硬件将MacBook变成触控屏（2018年）

**原文标题**: Turning a MacBook into a touchscreen with $1 of hardware (2018)

**原文链接**: [https://anishathalye.com/macbook-touchscreen/](https://anishathalye.com/macbook-touchscreen/)

2018年，一个团队创建了“西斯廷项目”作为概念验证，仅用价值1美元的硬件和计算机视觉技术，就将一台MacBook变成了触摸屏。其核心原理是利用了屏幕的光滑表面在特定角度下会映出触碰手指的倒影这一现象。

硬件配置极其简单：仅用一面小镜子、一个纸盘、一个门铰链和热熔胶组装成支架，将笔记本电脑内置的摄像头倾斜对准屏幕。这样摄像头就能捕捉到悬停或触碰屏幕的手指。

软件采用计算机视觉流程，从视频流中检测手指及其倒影轮廓。通过分析这两组轮廓，系统能精确定位触摸或悬停的位置并区分二者。随后通过单应性矩阵将摄像头视角中的坐标映射到精确的屏幕坐标——该矩阵通过让用户触摸特定校准点来建立。

该原型系统将检测结果转化为标准鼠标事件，使得现有应用程序能立即支持触控操作。团队总结指出：虽然功能已经实现，但若采用更高清摄像头和能覆盖全屏的曲面镜等改进措施，这将成为一个实用的低成本触屏解决方案。该项目源代码已作为开源软件发布。

---

## 5. 鸟脑（2023）

**原文标题**: Bird brains (2023)

**原文链接**: [https://www.dhanishsemar.com/writing/bird-brains](https://www.dhanishsemar.com/writing/bird-brains)

本文探讨了鸟类令人惊讶的智慧，这一话题源于新西兰啄羊鹦鹉故意移动交通锥以拦截车辆、向游客索取食物的事件。

文章指出，鸟类智力通过多种测试衡量，例如喜鹊通过的镜子测试、乌鸦和松鸦解决的伊索寓言式问题解决任务，以及渡鸦展示的延迟满足能力。文章特别强调了非洲灰鹦鹉（如亚历克斯）的卓越认知能力，它们能理解抽象概念。

一个关键科学观点是：鹦鹉和鸦科鸟类的小型大脑中神经元密度远高于哺乳动物，使它们的认知能力足以媲美灵长类。因此，“鸟脑子”的侮辱性说法实则颠倒了事实。

关于“最聪明”的鸟类，作者将鸦科（乌鸦、渡鸦）列为工具使用和规划能力之首，而鹦鹉（啄羊鹦鹉、非洲灰鹦鹉）则在沟通和社会推理方面领先。相比之下，不会飞行、缺乏天敌意识的鸮鹦鹉被视为智力较低的鸟类之一。

结论是：智力并非取决于大脑尺寸，而是由神经元密度和结构决定，这使得许多鸟类展现出非凡的智慧。

---

## 6. Cherri——一种编译为苹果快捷指令的编程语言

**原文标题**: Cherri – programming language that compiles to an Apple Shortuct

**原文链接**: [https://github.com/electrikmilk/cherri](https://github.com/electrikmilk/cherri)

**Cherri** 是一种可直接编译为可运行的 Apple 快捷指令的编程语言。其主要目标是让开发、维护和扩展大型快捷指令项目变得切实可行。

主要特性包括：
*   **桌面开发环境：** 专为在 macOS/桌面端通过 CLI、VSCode 扩展或专用 macOS 应用程序使用而设计。
*   **实用语法：** 语言易于学习，并提供类型系统、函数、枚举和导入等现代编程概念。
*   **透明编译：** 旨在实现与快捷指令操作的一对一转换，以简化调试过程。
*   **项目管理：** 支持文件包含、基于 Git 的包管理器，并能嵌入文件或生成 VCards。
*   **优化功能：** 输出经过优化，可创建体积小、内存效率高的快捷指令。
*   **工具链：** 可导入现有快捷指令、对输出进行签名，并包含一个网页版演练场。

Cherri 可通过 Homebrew 或 Nix 安装。该项目强调稳定性和长期维护性，通过其原生 macOS 特性区别于其他快捷指令语言。它是开源的，并为各种代码编辑器提供了社区扩展。

---

## 7. 威廉·布莱克，海边遥居

**原文标题**: William Blake, Remote by the Sea

**原文链接**: [https://www.laphamsquarterly.org/roundtable/william-blake-remote-sea](https://www.laphamsquarterly.org/roundtable/william-blake-remote-sea)

1800年秋，43岁的威廉·布莱克应诗人威廉·海利之邀，携妻子凯瑟琳从伦敦迁居至苏塞克斯沿海村庄费尔法姆。入住玫瑰小屋后，布莱克初次接触大海，中年时期的想象力由此被深刻激发。他将小屋比作天堂居所，将海岸视为精神交融之地，并在此幻见弥尔顿、但丁等文学巨匠的身影。

这片海洋从令人畏惧之处逐渐转化为疗愈性休闲场所，成为他创作的核心。在此地，他开启充满海洋意象的史诗《弥尔顿》的创作，并记述了幻视体验——沙粒在他眼中化作“人形生灵”。布莱克将当地风车视为工业奴役的象征，这映射出他对以艾萨克·牛顿为代表的科学理性主义的广泛批判。在他看来，这种理性主义如同其他浪漫主义者所坚信的那样，剥夺了世间的诗意与奇迹。

本文认为，布莱克在费尔法姆的岁月是其创作力蓬勃迸发的关键时期。无垠的大海映照着他辽阔的 visionary 精神，与周边博格诺等新兴度假区所代表的工业侵蚀和社会变迁形成鲜明对比。

---

## 8. 像电子表格一样思考

**原文标题**: Seeing Like a Spreadsheet

**原文链接**: [https://davidoks.blog/p/how-the-spreadsheet-reshaped-america](https://davidoks.blog/p/how-the-spreadsheet-reshaped-america)

本文认为，电子表格，特别是微软Excel，是一项重塑美国经济和企业思维方式的变革性技术。在其发明之前，企业管理受限于缓慢、劳动密集型的手工计算和数据汇总过程，制约了企业的复杂性和规模。

1979年首个电子表格软件VisiCalc的问世，大幅降低了计算成本和时间。这种量化的改进带来了质变：管理者如今可以通过调整变量轻松建模、预测和模拟商业场景。该工具催生了一种“表格化认知方式”，商业现实被行、列和公式所定义。

这种新能力推动了金融工程和华尔街交易的兴起，复杂的估值和预测成为常规操作。它还将企业从专注于实体生产的组织转变为专注于优化财务数字的实体。电子表格通过使复杂分析变得廉价且可迭代，从根本上改变了企业理解自身以及投资者评估企业的方式，将数字优化置于其他指标之上。文章最后将电子表格视为人工智能等未来技术进一步重塑经济生活的先声。

---

## 9. CodingFont：一款助你挑选编程字体的游戏

**原文标题**: CodingFont: A game to help you pick a coding font

**原文链接**: [https://www.codingfont.com/](https://www.codingfont.com/)

**《CodingFont：帮你挑选编程字体的游戏》摘要**

CodingFont.com 是一款基于网页的互动工具，旨在帮助程序员和开发者为其代码编辑器或集成开发环境选择等宽字体。它并非提供静态列表，而是将选择过程转化为一个简单的盲比游戏。

其核心功能是一个“字体品鉴”游戏：用户会看到并排显示的两段匿名代码示例，每段以不同字体呈现。用户只需点击他们认为可读性更高、视觉上更舒适的示例。根据这些偏好，该工具会从其精选的超过25种流行编程字体库（例如Fira Code、JetBrains Mono和Cascadia Code）中逐步筛选，最终推荐一份匹配的候选短名单。

主要特点和要点包括：
*   **盲测：** 初始隐藏字体名称，消除了品牌认知或流行度带来的偏见，让用户纯粹关注可读性和视觉吸引力。
*   **针对性评估：** 代码示例包含对编程至关重要的常见字符（如括号、等号和零），以测试字体是否能清晰区分它们。
*   **高效便捷：** 提供了一种快速、有趣的方式来比较多种字体，无需在编辑器中手动安装和配置每一种。
*   **最终揭晓：** 在选择轮次结束后，网站会揭示所选字体的名称，提供下载链接，并通常包含如何启用字体连字（风格化字符组合，如果支持的话）的说明。

本质上，CodingFont 通过提供一种实用、用户驱动且游戏化的决策方法，解决了开发者常见的困境——如何选择一款舒适的编程字体。

---

## 10. 建筑文档的OCR识别无效，我们已修复此问题。

**原文标题**: OCR for construction documents does not work, we fixed it

**原文链接**: [https://www.getanchorgrid.com/developer/docs/endpoints/drawings-doors](https://www.getanchorgrid.com/developer/docs/endpoints/drawings-doors)

本文详细介绍了用于检测建筑平面图PDF中门体的API端点。文中说明用户需先上传PDF以获取`document_id`，随后调用`POST /v1/drawings/detection/doors`端点提交异步检测任务。免费版处理时间为2-4分钟，付费计划可提供更快的处理速度。

请求需提供有效的API密钥及包含文档标识与可选页码的JSON数据。计费按提交的页面数量计算，而非按检测到的门体数量。初始响应将提供用于轮询的任务ID；任务完成后，返回结果将包含经过筛选的检测门体列表，附带边界框坐标与元数据。

文中重点说明了关键操作细节：免费版设有终身额度上限；系统通过状态码区分错误类型（如402表示额度用尽，429表示频率限制）；返回的门体列表经过后处理，已过滤低质量检测结果。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 2 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 3 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 4 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 5 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 6 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 7 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 8 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 9 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 10 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 11 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 12 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 13 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 14 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 15 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 16 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 17 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 18 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 19 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 20 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 21 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 22 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 23 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 24 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 25 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 26 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 27 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 28 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 29 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 30 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 31 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 32 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 33 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 34 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 35 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 36 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 37 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 38 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 39 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 40 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 41 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 42 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 43 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 44 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 45 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 46 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 47 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 48 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 49 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 50 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 51 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 52 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 53 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 54 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 55 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 56 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 57 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 58 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 59 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 60 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 61 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 62 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 63 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 64 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 65 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 66 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 67 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 68 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 69 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 70 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 71 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 72 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 73 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 74 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 75 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 76 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 77 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 78 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 79 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 80 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 81 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 82 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 83 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 84 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 85 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 86 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 87 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 88 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 89 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 90 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 91 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 92 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 93 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 94 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 95 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 96 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 97 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 98 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 99 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 100 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 101 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 102 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 103 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 104 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 105 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 106 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 107 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 108 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 109 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 110 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 111 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 112 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 113 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 114 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 115 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 116 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 117 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 118 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 119 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 120 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 121 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 122 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 123 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 124 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 125 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 126 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 127 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 128 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 129 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 130 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 131 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 132 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 133 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 134 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 135 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 136 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 137 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 138 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 139 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 140 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 141 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 142 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 143 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 144 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 145 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 146 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 147 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 148 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 149 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 150 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 151 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 152 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 153 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 154 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 155 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 156 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 157 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 158 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 159 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 160 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 161 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 162 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 163 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 164 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 165 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 166 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 167 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 168 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 169 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 170 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 171 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 172 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 173 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 174 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 175 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 176 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 177 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 178 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 179 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 180 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 181 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 182 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 183 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 184 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 185 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 186 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 187 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 188 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 189 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 190 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 191 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 192 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 193 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 194 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 195 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 196 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 197 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 198 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 199 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 200 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 201 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 202 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 203 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 204 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 205 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 206 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 207 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 208 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 209 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 210 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 211 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 212 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 213 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 214 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 215 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 216 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 217 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 218 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 219 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 220 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 221 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 222 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 223 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 224 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 225 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 226 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 227 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 228 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 229 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 230 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 231 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 232 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 233 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 234 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 235 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 236 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 237 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 238 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 239 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 240 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 241 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 242 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 243 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 244 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 245 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 246 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 247 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 248 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 249 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 250 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 251 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 252 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 253 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 254 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 255 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 256 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 257 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 258 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 259 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 260 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 261 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 262 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 263 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 264 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 265 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 266 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 267 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 268 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 269 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 270 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 271 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 272 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 273 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 274 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 275 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 276 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 277 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 278 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 279 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 280 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 281 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 282 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 283 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 284 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 285 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 286 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 287 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 288 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 289 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 290 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 291 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 292 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 293 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 294 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 295 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 296 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 297 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 298 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 299 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 300 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 301 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 302 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 303 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 304 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 305 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 306 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 307 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 308 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 309 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 310 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 311 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 312 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 313 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 314 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 315 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 316 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 317 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 318 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 319 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 320 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 321 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 322 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 323 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 324 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 325 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 326 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 327 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 328 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 329 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 330 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 331 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 332 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 333 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 334 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 335 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 336 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 337 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 338 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 339 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 340 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 341 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 342 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 343 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 344 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 345 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 346 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 347 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 348 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 349 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 350 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 351 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 352 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 353 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 354 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 355 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 356 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 357 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 358 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 359 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 360 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 361 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 362 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 363 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 364 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 365 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 366 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 367 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 368 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 369 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 370 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 371 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 372 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 373 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
