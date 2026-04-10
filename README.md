# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-04-10.md)

*最后自动更新时间: 2026-04-10 20:35:19*
## 1. 一维国际象棋

**原文标题**: 1D Chess

**原文链接**: [https://rowan441.github.io/1dchess/chess.html](https://rowan441.github.io/1dchess/chess.html)

**《一维象棋》概述**

一维象棋是一种简化的单维度象棋变体，可与人工智能对战。游戏仅包含三种棋子：**王**（可向任意方向移动一格）、**马**（可向前或向后精确移动两格，并可跳过其他棋子）以及**车**（可在直线上移动任意距离）。

游戏目标是将死对方的王。规则中特别指出了和棋的几种情况：逼和、三次重复局面或子力不足（仅剩双方王）。

文中提供了一个白方获胜的示例行棋序列：**1. N4 N5, 2. N6 K7, 3. R4 K6, 4. R2 K7, 5. R5#**。文章提出“在最优策略下白方是否拥有强制胜利”的问题，并通过示例暗示答案为“是”。

此变体最初由马丁·加德纳于1980年7月在其《科学美国人》杂志的“数学游戏”专栏中描述。

---

## 2. 研究人员称，乌干达黑猩猩陷入残酷“内战”

**原文标题**: Chimpanzees in Uganda locked in vicious 'civil war', say researchers

**原文链接**: [https://www.bbc.com/news/articles/cr71lkzv49po](https://www.bbc.com/news/articles/cr71lkzv49po)

研究人员记录了乌干达基巴莱国家公园内世界上已知最大的野生黑猩猩群体中一场旷日持久的暴力分裂。曾经紧密团结、拥有近200名成员的恩戈戈群落已分裂成西部和中部两个敌对阵营，自2018年以来一直处于科学家所称的“内战”状态。

这场冲突已导致至少24起致命袭击，包括17只幼崽被杀。研究人员指出这种激烈程度非同寻常，因为这些黑猩猩此前关系密切。发表于《科学》杂志的研究指出几个促成因素：2014年关键成年黑猩猩不明原因死亡，2015年雄性首领更替，以及2017年一场致命的呼吸道流行病导致25只黑猩猩死亡，其中包括曾维系亚群关系的个体。

首席人类学家亚伦·桑德尔表示，虽然黑猩猩天生具有领地意识，但如此持久的内部暴力实属罕见。这些发现为人类冲突的起源提供了启示，表明即使没有宗教或政治等人为建构，根深蒂固的社会动态和群体认同本身也足以引发激烈持久的战争。这项研究警示了群体分裂的危险性。

---

## 3. WireGuard在微软签署解决方案后发布新版Windows版本

**原文标题**: WireGuard makes new Windows release following Microsoft signing resolution

**原文链接**: [https://lists.zx2c4.com/pipermail/wireguard/2026-April/009561.html](https://lists.zx2c4.com/pipermail/wireguard/2026-April/009561.html)

WireGuard发布了其Windows软件的新版本：WireGuardNT内核驱动程序（v0.11）和WireGuard for Windows管理客户端（v0.6）。这是时隔许久后Windows平台的首次更新，由于提高了最低支持的Windows版本，此次更新包含了新功能、错误修复、性能改进和代码现代化。

此次发布前曾出现一个小插曲：微软暂停了WireGuard的驱动程序签名账户，导致新内核驱动程序无法获得认证。随着该事件在网上引发关注，微软迅速解决问题并解封了账户，使得新版本得以正常签名。开发者Jason Donenfeld澄清此事并无恶意，将其归因于行政流程上的小失误。

用户可通过内置更新程序或从官网手动下载新版本进行更新。该更新兼容的Windows版本可追溯至现已停止支持的Windows 10 Build 10240。

---

## 4. Keychron键盘和鼠标的工业设计文件

**原文标题**: Industrial design files for Keychron keyboards and mice

**原文链接**: [https://github.com/Keychron/Keychron-Keyboards-Hardware-Design](https://github.com/Keychron/Keychron-Keyboards-Hardware-Design)

本仓库提供Keychron键盘与鼠标的生产级工业设计文件，作为硬件社区的开源资源发布。其中包含超过680个CAD文件（STEP、DWG、DXF格式），涵盖88款不同型号，涉及Q系列、K Pro系列、V Max系列和HE系列键盘，以及M系列和G系列鼠标。

其主要目的是便于学习、二次创作及开发兼容配件。用户可查阅真实的CAD设计，修改外壳与定位板，并设计附加组件。该许可允许个人、教育及商业用途开发兼容配件，但禁止直接复制并销售Keychron产品或使用其商标。

仓库按产品系列分类整理，包含外壳、定位板、卫星轴及完整模型等组件。同时提供键帽高度参考、入门指南、文件格式说明及3D打印建议。Keychron鼓励社区贡献，例如修正错误或添加布局变体，以围绕其硬件平台构建不断发展的定制化与学习生态。

---

## 5. Watgo – Go语言的WebAssembly工具包

**原文标题**: Watgo – A WebAssembly Toolkit for Go

**原文链接**: [https://eli.thegreenplace.net/2026/watgo-a-webassembly-toolkit-for-go/](https://eli.thegreenplace.net/2026/watgo-a-webassembly-toolkit-for-go/)

**《Watgo——Go语言的WebAssembly工具包》摘要**

Watgo是一款全新的纯Go语言工具包，用于处理WebAssembly（WASM），其功能类似于现有的wabt（C++）和wasm-tools（Rust）等工具。它同时提供命令行界面（CLI）和Go API，可用于解析WebAssembly文本格式（WAT）、验证其有效性、将其编码为二进制WASM格式，以及解码WASM二进制文件。

其核心是**wasmir**——一种对WASM模块的语义化内存表示，用户可对其进行检查和操作。该工具包执行规范化处理，例如展开折叠指令、将名称解析为数字索引，以符合WASM的二进制格式与执行语义。

CLI设计兼容`wasm-tools`，可通过`go install`安装。Go API则允许开发者以编程方式分析和处理模块，例如通过示例代码统计函数内特定类型的指令数量。

Watgo的可靠性通过大量测试验证：使用官方WebAssembly测试套件（近20万行WAT代码）和WABT测试套件，并通过Node.js测试框架执行。目前它已通过完整的WASM核心规范测试套件。虽然用于WAT解析的内部`textformat`包尚未公开，但未来可能根据用户需求开放使用。

---

## 6. Show HN: FluidCAD – 使用JavaScript的参数化CAD

**原文标题**: Show HN: FluidCAD – Parametric CAD with JavaScript

**原文链接**: [https://fluidcad.io/](https://fluidcad.io/)

**FluidCAD** 是一款使用 JavaScript 创建三维模型的参数化 CAD 工具。它允许用户编写代码并实时查看几何更新，将传统 CAD 工作流程与编程相结合。

主要功能包括：
*   **参数化历史记录：** 非破坏性特征树使用户能够逐步查看、检查并回滚建模操作。
*   **交互式视口：** 用户可通过拖拽拉伸形状进行原型设计，然后用代码锁定尺寸。
*   **特征变换：** 对特征序列应用模式（线性、圆形）、镜像和旋转。
*   **CAD 互操作性：** 使用支持颜色的 STEP 格式导入和导出模型。
*   **智能工作流程：** 该工具通过智能默认值减少样板代码，例如自动选择最后一个草图进行拉伸，并允许直接引用其他形状的面和边。

入门步骤包括通过 npm 安装工具、初始化项目，并使用编辑器扩展（如 VS Code 扩展）来连接并查看三维场景。

---

## 7. JSON格式化Chrome插件现已关闭并注入广告软件

**原文标题**: JSON Formatter Chrome Plugin Now Closed and Injecting Adware

**原文链接**: [https://github.com/callumlocke/json-formatter](https://github.com/callumlocke/json-formatter)

本文宣布，广受欢迎的**JSON Formatter Chrome扩展程序**将不再作为开源项目继续开发，并转向闭源的商业模式。开发者警告称，新版本现在**会注入广告软件**。

主要要点包括：
*   最终的开源版本已发布为**JSON Formatter Classic**，用户可切换至此版本以获得一个简洁、无广告的工具。
*   该扩展的核心功能被强调：快速性能、语法高亮、可折叠树状结构，以及在浏览器控制台中使JSON作为全局`json`变量可用。
*   常见问题解答部分澄清了技术限制，例如JavaScript处理极大数字（会被截断）以及解析后对象键的顺序无法保证。
*   建议希望查看确切服务器响应的用户使用“原始”视图，因为“解析后”视图显示的是`JSON.parse`的结果。

主要结论是提醒用户注意新版本会注入广告软件，并明确提供了存档的开源“经典”版本作为替代选择。

---

## 8. 氦气难以替代。

**原文标题**: Helium Is Hard to Replace

**原文链接**: [https://www.construction-physics.com/p/helium-is-hard-to-replace](https://www.construction-physics.com/p/helium-is-hard-to-replace)

本文阐述了为何氦气是一种特别难以替代的资源，尤其是在伊朗战争导致供应中断之后。氦气是天然气开采的副产品，全球大部分氦气由卡塔尔和美国供应。由于氦气会逸出地球大气层且不易补充，其稀缺性进一步加剧。

氦气的不可替代性源于其极端特性，主要是极低的沸点。这使得它在冷却MRI设备中的超导磁体（占美国用量的17%）和半导体制造（占美国用量的10%）中不可或缺，在极紫外光刻等工艺中尚无实际替代品。它在制造光纤电缆时也至关重要，能防止气泡产生。

其他重要用途包括作为航空航天领域的吹扫气体（7%）、升力气体（18%），以及用于科学研究、焊接和深海潜水。虽然通过回收利用（如现代MRI设备和航空航天应用所示）可以减少消耗，但由于氦气独特的物理和化学特性，在其核心应用中仍无法被完全替代。

---

## 9. 发布HN：Twill.ai（YC S25）——委托云端智能体，收获PR成果

**原文标题**: Launch HN: Twill.ai (YC S25) – Delegate to cloud agents, get back PRs

**原文链接**: [https://twill.ai](https://twill.ai)

Twill.ai是一个部署AI编码代理的平台，能够自主处理软件开发任务，如修复漏洞、实现新功能和更新依赖项。它采用结构化的多步骤工作流程：代理首先研究代码库，制定实施计划供人工批准，然后在隔离的沙盒环境中编写和测试代码，最后提交拉取请求（PR）以供审查。

主要功能包括能够委派不同的AI模型（如Claude Code和GPT）、并行运行代理以进行比较，以及与GitHub、Linear和Slack等现有工具集成。该系统通过强制执行其固定流程，并确保所有更改在生成PR之前在沙盒中进行验证，从而强调可靠性。

该平台的价值主张面向开发者和小型团队，承诺通过自动化常规编码工作来提高生产力，使他们能够专注于更高层次的架构和产品决策。目前该服务可免费开始使用，无需提供信用卡信息。

---

## 10. CPU-Z与HWMonitor遭入侵

**原文标题**: CPU-Z and HWMonitor compromised

**原文链接**: [https://www.theregister.com/2026/04/10/cpuid_site_hijacked/](https://www.theregister.com/2026/04/10/cpuid_site_hijacked/)

**摘要：**

2026年4月9日至10日，官方CPUID网站（CPU-Z和HWMonitor等工具的官方网站）遭受了约六小时的入侵。攻击者劫持了后端API，导致合法下载链接随机将用户重定向至恶意安装程序，而非经过数字签名的安全软件。

该恶意软件伪装成HWMonitor更新（如"HWiNFO_Monitor_Setup.exe"），主要针对64位用户。它利用伪造的Windows DLL连接命令与控制服务器，下载额外载荷，并通过PowerShell主要在内存中运行以规避检测。最终载荷旨在窃取凭证，特别是针对Google Chrome等浏览器。

CPUID确认此次入侵仅限于下载分发机制；官方软件构建及其数字签名未被篡改。问题现已修复。安全研究人员将该攻击基础设施与先前活动（如针对FileZilla用户的攻击）相关联，表明存在更广泛的威胁行为者。此事件凸显了入侵受信任的分发渠道与直接篡改软件本身同样危险。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 2 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 3 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 4 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 5 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 6 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 7 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 8 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 9 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 10 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 11 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 12 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 13 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 14 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 15 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 16 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 17 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 18 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 19 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 20 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 21 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 22 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 23 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 24 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 25 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 26 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 27 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 28 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 29 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 30 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 31 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 32 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 33 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 34 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 35 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 36 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 37 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 38 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 39 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 40 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 41 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 42 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 43 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 44 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 45 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 46 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 47 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 48 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 49 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 50 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 51 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 52 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 53 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 54 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 55 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 56 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 57 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 58 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 59 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 60 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 61 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 62 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 63 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 64 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 65 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 66 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 67 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 68 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 69 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 70 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 71 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 72 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 73 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 74 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 75 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 76 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 77 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 78 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 79 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 80 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 81 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 82 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 83 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 84 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 85 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 86 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 87 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 88 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 89 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 90 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 91 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 92 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 93 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 94 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 95 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 96 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 97 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 98 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 99 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 100 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 101 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 102 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 103 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 104 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 105 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 106 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 107 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 108 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 109 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 110 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 111 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 112 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 113 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 114 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 115 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 116 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 117 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 118 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 119 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 120 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 121 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 122 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 123 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 124 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 125 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 126 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 127 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 128 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 129 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 130 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 131 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 132 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 133 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 134 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 135 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 136 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 137 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 138 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 139 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 140 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 141 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 142 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 143 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 144 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 145 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 146 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 147 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 148 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 149 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 150 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 151 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 152 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 153 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 154 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 155 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 156 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 157 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 158 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 159 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 160 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 161 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 162 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 163 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 164 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 165 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 166 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 167 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 168 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 169 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 170 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 171 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 172 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 173 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 174 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 175 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 176 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 177 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 178 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 179 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 180 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 181 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 182 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 183 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 184 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 185 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 186 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 187 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 188 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 189 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 190 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 191 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 192 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 193 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 194 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 195 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 196 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 197 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 198 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 199 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 200 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 201 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 202 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 203 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 204 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 205 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 206 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 207 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 208 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 209 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 210 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 211 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 212 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 213 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 214 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 215 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 216 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 217 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 218 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 219 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 220 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 221 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 222 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 223 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 224 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 225 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 226 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 227 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 228 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 229 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 230 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 231 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 232 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 233 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 234 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 235 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 236 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 237 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 238 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 239 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 240 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 241 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 242 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 243 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 244 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 245 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 246 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 247 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 248 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 249 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 250 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 251 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 252 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 253 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 254 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 255 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 256 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 257 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 258 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 259 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 260 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 261 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 262 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 263 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 264 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 265 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 266 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 267 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 268 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 269 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 270 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 271 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 272 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 273 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 274 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 275 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 276 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 277 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 278 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 279 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 280 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 281 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 282 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 283 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 284 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 285 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 286 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 287 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 288 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 289 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 290 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 291 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 292 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 293 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 294 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 295 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 296 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 297 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 298 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 299 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 300 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 301 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 302 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 303 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 304 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 305 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 306 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 307 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 308 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 309 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 310 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 311 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 312 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 313 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 314 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 315 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 316 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 317 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 318 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 319 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 320 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 321 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 322 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 323 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 324 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 325 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 326 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 327 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 328 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 329 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 330 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 331 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 332 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 333 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 334 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 335 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 336 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 337 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 338 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 339 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 340 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 341 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 342 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 343 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 344 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 345 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 346 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 347 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 348 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 349 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 350 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 351 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 352 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 353 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 354 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 355 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 356 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 357 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 358 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 359 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 360 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 361 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 362 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 363 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 364 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 365 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 366 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 367 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 368 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 369 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 370 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 371 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 372 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 373 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 374 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 375 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 376 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 377 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 378 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 379 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 380 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 381 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 382 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 383 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 384 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
