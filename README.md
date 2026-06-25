# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-06-25.md)

*最后自动更新时间: 2026-06-25 20:33:22*
## 1. 首个赫库兰尼姆卷轴被完整解读

**原文标题**: An entire Herculaneum scroll has been read for the first time

**原文链接**: [https://scrollprize.org/firstscroll](https://scrollprize.org/firstscroll)

**摘要：赫库兰尼姆卷轴的首次完整通读**

研究人员首次在不物理打开赫库兰尼姆卷轴（PHerc. 1667）的情况下，利用高分辨率X射线显微断层扫描和机器学习，对其进行了虚拟展开并完整通读。这卷于公元79年被维苏威火山碳化的卷轴，呈现了约22栏希腊文本——这是一篇关于伦理学的斯多葛派哲学论文，可能创作于公元前2世纪，文中提到了斯多葛学派哲学家克吕西波的侄子阿里斯托克雷翁。

这一突破是通过开放科学实现的：由布伦特·西尔斯、纳特·弗里德曼和丹尼尔·格罗斯共同发起的“维苏威挑战赛”促使全球社群共同开发了相关方法。研究团队的大部分成员曾是该项赛事的获胜者。

与此成就同时，该团队还：
- 在PHerc. Paris 4（卷轴1）的三维X射线数据中直接使墨迹可见，独立证实了2023年大奖赛的阅读成果。
- 还原了PHerc. 139的标题和作者，确定其为菲洛德穆的《论诸神，第八卷》。

所有数据、代码和转录文本均已公开释出，以供进一步研究。目前尚有数百卷密封卷轴有待解读，而此方法已被证明具有可扩展性，有望用于阅读这些失落的古代图书馆藏书。

---

## 2. 氧化物计算机3D机架导览

**原文标题**: Oxide computer 3D rack guided tour

**原文链接**: [https://explorer.oxide.computer/](https://explorer.oxide.computer/)

无法访问文章链接。

---

## 3. IBM 推出亚1纳米芯片技术

**原文标题**: IBM debuts sub-1 nanometer chip technology

**原文链接**: [https://newsroom.ibm.com/2026-06-25-ibm-debuts-worlds-first-sub-1-nanometer-chip-technology](https://newsroom.ibm.com/2026-06-25-ibm-debuts-worlds-first-sub-1-nanometer-chip-technology)

**摘要：**

2026年6月25日，IBM宣布全球首项亚1纳米（nm）芯片技术，达到0.7纳米（7埃）节点。这项突破采用革命性的“纳米堆栈”架构——业界首个基于纳米片的三维设计——通过垂直堆叠并交错晶体管，在指甲盖大小的芯片上集成近1000亿个晶体管。这一密度几乎是IBM 2021年2纳米芯片的两倍。

与IBM的2纳米节点相比，新芯片性能提升高达50%，能效提升高达70%。它旨在加速生成式AI、云基础设施和下一代电子产品的应用。通过实验性CMOS集成验证的纳米堆栈设计，还实现了SRAM 40%的缩放，支持高带宽AI工作负载。

IBM的创新将半导体微缩推进到传统极限之外，预计至少还能延续十年的进步。量产可能在五年内启动。该工作于IBM位于纽约州奥尔巴尼的研究设施内，与ASML、泛林半导体和东京电子等合作伙伴共同完成。IBM近期还宣布计划成立独立量子代工厂Anderon。

---

## 4. Show HN：OpenKnowledge——Obsidian/Notion的开源AI优先替代品

**原文标题**: Show HN: OpenKnowledge – open source AI-first alternative to Obsidian/Notion

**原文链接**: [https://github.com/inkeep/open-knowledge](https://github.com/inkeep/open-knowledge)

**OpenKnowledge** 是一款开源、AI优先的Markdown编辑器和LLM知识库，定位为Obsidian与Notion的替代品。

**核心功能：**
- **本地优先与所见即所得** – 提供类似Google Docs或Notion的完整富文本Markdown编辑体验。
- **AI集成** – 支持与Claude、Codex及Cursor桌面应用协同编辑。
- **内置工具** – 包含MCP（模型上下文协议）、技能与模板，用于构建LLM知识库、智能体第二大脑及规范驱动开发。
- **无代码团队共享** – 底层基于GitHub/git实现。
- **终端支持** – 提供TUI（终端用户界面）与CLI命令行工具。

**安装方式：**
- macOS桌面应用（DMG格式）。
- Linux/Intel Mac通过CLI安装（`npm install -g @inkeep/open-knowledge`）。暂不支持Windows。需Node.js 24+版本。

**贡献与许可：**
- 接受公开PR（同步至内部仓库）。
- 遵循 **GPL-3.0-or-later** 许可证。

**文档与源码：** 详见 [openknowledge.ai/docs](https://openknowledge.ai/docs)。

---

## 5. Zig 新的 bitCast 语义与 LLVM 后端改进

**原文标题**: Zig's new bitCast semantics and LLVM back end improvements

**原文链接**: [https://ziglang.org/devlog/2026/#2026-06-25](https://ziglang.org/devlog/2026/#2026-06-25)

以下是文章的简明摘要：

本文详细介绍了 Zig 编译器近期取得的主要改进，主要由 Matthew Lugg 和 Andrew Kelley 于 2026 年贡献。

首先，Matthew Lugg 重新设计了 `@bitCast` 内置函数的语义。旧版基于内存字节重新解释（存在大小端依赖行为），新版则以大小端无关的方式重新解释类型的“逻辑位布局”。例如，将 `[2]u8` 转换为 `u16` 时，现在所有目标平台上第一个数组元素都成为最低的 8 个有效位，与之前的小端行为一致。这一变化促成了更广泛的优化：LLVM 后端在存储非 ABI 整数类型（如 `u4`）到内存时，会将其零扩展或符号扩展为标准大小（如 `i8`），从而避免了测试不充分的 LLVM 位宽整数路径。此举为 Zig 编译器自身带来了约 5% 的性能提升。

其次，Lugg 改进了新的 ELF 链接器（默认通过 `-fnew-linker` 禁用）。该链接器现已能构建启用 LLVM/LLD 的自托管 Zig 编译器，并支持快速增量编译。在 x86_64 Linux 上，链接外部库或 C 源文件的重新构建耗时从首次完整构建的 36 秒缩短至毫秒级。

最后，Andrew Kelley 重构了构建系统，将其拆分为两个进程：“配置器”（编译 build.zig 逻辑）和“执行器”（以发布模式执行构建图）。这一改动极大加速了 `zig build` 命令，将 `zig build --help` 的墙钟时间从 150 毫秒降至 14 毫秒（提升 90%），同时降低了内存使用和 CPU 消耗。

---

## 6. OS9地图

**原文标题**: OS9Map

**原文链接**: [https://yllan.org/software/OS9Map/](https://yllan.org/software/OS9Map/)

本文介绍了一款名为 **OS9Map** 的软件应用，它允许用户在经典的 **Mac OS 9** 操作系统上浏览 **OpenStreetMap**。该程序由 yllan 开发，专为配备至少 16 MB 内存并通过 Open Transport TCP/IP 联网的 PowerPC Mac 设计。

其核心功能包括：支持平滑拖拽滚动且自动加载瓦片的地图画布、利用 Nominatim 搜索地标与地址的地点查找功能，以及用于保存常去地点的书签系统。

文章提供了版本 **1.0.0**（于 **2026 年 6 月 21 日**发布）的下载链接，并附有“请我喝杯咖啡”的捐赠选项。该网站还提及了同一开发者的其他项目，如“PlatinumSky”和“Palaeomastodon”。

---

## 7. Show HN: 棋风肉鸽

**原文标题**: Show HN: Chess-Inspired Roguelike

**原文链接**: [https://princechazz.com](https://princechazz.com)

无法访问文章链接。

---

## 8. 苹果上调MacBook和iPad价格

**原文标题**: Apple raises prices of MacBooks, iPads

**原文链接**: [https://www.reuters.com/world/asia-pacific/apple-raises-prices-macbooks-ipads-memory-costs-skyrocket-2026-06-25/](https://www.reuters.com/world/asia-pacific/apple-raises-prices-macbooks-ipads-memory-costs-skyrocket-2026-06-25/)

无法访问该文章链接。

---

## 9. 完美面包的焦虑：烹饪精度的幻象

**原文标题**: The anxiety of the perfect loaf: the illusion of culinary precision

**原文链接**: [https://iza.ac/posts/2026/06/intuitive-cooking/](https://iza.ac/posts/2026/06/intuitive-cooking/)

本文认为，现代烹饪文化催生了对精准度的病态执念，这种执念削弱了优秀烹饪所必需的直觉与应变能力。作者以一份省略精确面粉用量的哈拉面包食谱为例——配方仅要求"加至面团发粘"——证明尽管湿度与谷物品种会影响面粉体积，最终成品依然稳定如一。

文章追溯了从模糊的口述食谱到当今过度细化的指导说明这一历史转变，其背后推手包括家庭烹饪爱好者群体的壮大、工业革命，以及范妮·法默等倡导标准化计量的先行者。虽然这种科学方法让烹饪更易上手且可复制，却也使众多厨师陷入僵化——他们惧怕偏离精确的克数限制，却忘了厨房本是充满变数的鲜活空间，而非实验室。

作者将今人与缺乏精密工具、全靠经验与感官的古早厨师形成对比，主张将食谱视为灵活框架而非死命令，鼓励信任自身的感官与直觉。文末以亲身经历作结：他教会了焦虑的母亲不用严格计量烤制哈拉面包，助其克服对烹饪的恐惧。最终，这篇文章呼吁一种平衡——借科学完善认知，凭直觉与应变缔造厨房艺术。

---

## 10. 口味无法通过单元测试来衡量

**原文标题**: You can't unit test for taste

**原文链接**: [https://dev.karltryggvason.com/you-cant-unit-test-for-taste/](https://dev.karltryggvason.com/you-cant-unit-test-for-taste/)

文章描述了作者为跑步应用“In the Long Run”开发兴趣点（POI）功能的经历，该功能可在全球路线上绘制用户的虚拟进度。作者以**GeoNames**为主要数据源，通过Python、Apache Parquet和DuckDB进行处理。其中一大挑战是将1300万个地点筛选至约72.5万个相关POI（公园、历史遗迹、纪念碑等），并借助维基百科链接等信号判断其知名度。

作者最初将人工智能视为核心功能，但在与**大语言模型幻觉**作斗争后，将其降级为辅助角色。例如，模型误将伊利诺伊州迪凯特的中央公园归为曼哈顿同名公园，并篡改了人口规模数据。尽管AI生成文本不可靠，但大语言模型在提供主观“品味”评分方面效果显著，与客观数据（维基百科语言数量、特征代码）相结合，提升了POI的重要性评分。

关键经验包括：在缺乏真实基准的情况下，难以评估“混乱的现实世界数据”——“你无法对‘品味’进行单元测试”。按路线定制至关重要，因为不同地区（如冰岛与人口稠密区）需要独特的过滤参数。该项目还引发了关于AI协作署名的新“代词争议”，作者认为这项工作是与Claude（Anthropic公司的AI）的合作成果。最终，AI成为流程中众多工具之一，需经过迭代、人工干预和逐路线调整，才能打造出可用的V1版本功能。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 2 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 3 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 4 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 5 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 6 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 7 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 8 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 9 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 10 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 11 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 12 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 13 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 14 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 15 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 16 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 17 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 18 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 19 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 20 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 21 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 22 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 23 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 24 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 25 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 26 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 27 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 28 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 29 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 30 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 31 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 32 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 33 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 34 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 35 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 36 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 37 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 38 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 39 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 40 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 41 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 42 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 43 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 44 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 45 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 46 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 47 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 48 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 49 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 50 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 51 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 52 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 53 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 54 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 55 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 56 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 57 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 58 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 59 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 60 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 61 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 62 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 63 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 64 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 65 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 66 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 67 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 68 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 69 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 70 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 71 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 72 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 73 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 74 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 75 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 76 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 77 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 78 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 79 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 80 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 81 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 82 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 83 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 84 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 85 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 86 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 87 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 88 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 89 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 90 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 91 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 92 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 93 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 94 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 95 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 96 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 97 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 98 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 99 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 100 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 101 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 102 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 103 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 104 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 105 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 106 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 107 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 108 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 109 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 110 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 111 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 112 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 113 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 114 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 115 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 116 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 117 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 118 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 119 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 120 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 121 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 122 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 123 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 124 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 125 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 126 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 127 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 128 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 129 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 130 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 131 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 132 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 133 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 134 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 135 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 136 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 137 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 138 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 139 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 140 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 141 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 142 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 143 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 144 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 145 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 146 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 147 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 148 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 149 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 150 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 151 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 152 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 153 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 154 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 155 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 156 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 157 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 158 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 159 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 160 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 161 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 162 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 163 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 164 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 165 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 166 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 167 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 168 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 169 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 170 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 171 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 172 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 173 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 174 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 175 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 176 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 177 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 178 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 179 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 180 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 181 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 182 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 183 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 184 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 185 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 186 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 187 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 188 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 189 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 190 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 191 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 192 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 193 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 194 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 195 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 196 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 197 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 198 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 199 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 200 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 201 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 202 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 203 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 204 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 205 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 206 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 207 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 208 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 209 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 210 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 211 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 212 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 213 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 214 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 215 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 216 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 217 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 218 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 219 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 220 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 221 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 222 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 223 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 224 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 225 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 226 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 227 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 228 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 229 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 230 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 231 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 232 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 233 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 234 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 235 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 236 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 237 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 238 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 239 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 240 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 241 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 242 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 243 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 244 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 245 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 246 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 247 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 248 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 249 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 250 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 251 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 252 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 253 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 254 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 255 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 256 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 257 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 258 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 259 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 260 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 261 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 262 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 263 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 264 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 265 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 266 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 267 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 268 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 269 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 270 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 271 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 272 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 273 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 274 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 275 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 276 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 277 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 278 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 279 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 280 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 281 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 282 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 283 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 284 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 285 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 286 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 287 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 288 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 289 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 290 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 291 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 292 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 293 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 294 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 295 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 296 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 297 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 298 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 299 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 300 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 301 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 302 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 303 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 304 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 305 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 306 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 307 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 308 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 309 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 310 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 311 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 312 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 313 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 314 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 315 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 316 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 317 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 318 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 319 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 320 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 321 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 322 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 323 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 324 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 325 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 326 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 327 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 328 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 329 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 330 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 331 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 332 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 333 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 334 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 335 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 336 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 337 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 338 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 339 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 340 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 341 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 342 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 343 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 344 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 345 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 346 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 347 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 348 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 349 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 350 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 351 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 352 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 353 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 354 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 355 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 356 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 357 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 358 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 359 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 360 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 361 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 362 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 363 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 364 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 365 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 366 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 367 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 368 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 369 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 370 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 371 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 372 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 373 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 374 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 375 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 376 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 377 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 378 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 379 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 380 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 381 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 382 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 383 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 384 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 385 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 386 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 387 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 388 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 389 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 390 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 391 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 392 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 393 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 394 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 395 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 396 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 397 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 398 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 399 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 400 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 401 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 402 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 403 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 404 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 405 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 406 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 407 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 408 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 409 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 410 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 411 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 412 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 413 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 414 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 415 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 416 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 417 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 418 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 419 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 420 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 421 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 422 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 423 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 424 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 425 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 426 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 427 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 428 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 429 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 430 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 431 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 432 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 433 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 434 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 435 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 436 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 437 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 438 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 439 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 440 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 441 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 442 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 443 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 444 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 445 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 446 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 447 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 448 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 449 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 450 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 451 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 452 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 453 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 454 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 455 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 456 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 457 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 458 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 459 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 460 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
