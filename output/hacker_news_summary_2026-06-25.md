# Hacker News 热门文章摘要 (2026-06-25)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. 带注释的PyTorch训练循环

**原文标题**: The annotated PyTorch training loop

**原文链接**: [https://idlemachines.co.uk/essays/pytorch-training-loop](https://idlemachines.co.uk/essays/pytorch-training-loop)

以下是文章的简要总结：

文章提供了构建正确PyTorch训练循环的逐行详细指南，强调了关键的操作顺序和常见的静默错误。

完整的循环结构包括：1）使用`DataLoader`加载数据，2）定义模型、损失函数、优化器和学习率调度器，3）遍历多个epoch，包含训练和验证阶段。

**关键技术要点和常见错误包括：**
- **数据管道：** 使用`TensorDataset`和`DataLoader`，并配置`num_workers`（用于并行预取）、`pin_memory`（加速GPU传输）和`drop_last`（避免小批量噪声）等参数。
- **可重复性：** 对`torch`、`numpy`和`random`生成器设置随机种子，并启用`cudnn.deterministic = True`。
- **关键顺序错误（不会引发异常）：**
    1.  **模型移至设备：** 在构建优化器*之前*将模型移至GPU，以防止优化器持有旧参数的过时引用。
    2.  **`zero_grad()`：** 必须在`loss.backward()`*之前*调用，而非之后；否则梯度会在批次间累积。
    3.  **梯度裁剪：** 必须放在`loss.backward()`*之后*、`optimizer.step()`*之前*。
    4.  **学习率调度器：** `scheduler.step()`应每个epoch调用一次，而非每个批次，除非有意使用迭代式调度器。
- **训练/评估模式：** `model.train()`启用Dropout和BatchNorm；省略它会静默禁用正则化。验证时需要`model.eval()`和`torch.no_grad()`，以防止计算图构建导致内存增长。
- **梯度累积：** 通过在多个批次上累加梯度实现，仅在完成一次完整累积步骤后调用`zero_grad()`。

---

## 12. 《半衰期2》网页版

**原文标题**: Half-Life 2 in a Browser

**原文链接**: [https://hl2.slqnt.dev/](https://hl2.slqnt.dev/)

《半条命2》现已支持在浏览器中直接运行——这项技术成果成功将经典PC游戏移植至Web平台。核心要点如下：

- **技术突破**：开发者通过WebAssembly（Wasm）和WebGL技术重构游戏引擎，无需本地安装即可完整运行该游戏。
- **便捷访问**：台式电脑用户只需通过主流浏览器（Chrome、Firefox、Edge）即可畅玩，无需高性能硬件或下载安装。
- **运行表现**：虽可流畅游玩，但帧率略低于原生版本，画质存在细微妥协，核心玩法与关卡推进机制完好保留。
- **行业背景**：该项目延续了经典PC游戏（如《毁灭战士》《雷神之锤》）的网页移植风潮，充分展现现代Web技术潜力。
- **获取方式**：该项目已作为概念验证版本发布于GitHub，用户可通过链接体验（不含存档或成就系统）。

简而言之，这篇文章展示《半条命2》如今能以最低配置需求在浏览器中运行，既保留怀旧原汁原味，又具备现代便利性，尽管相比原生版本存在一定性能差异。

---

## 13. Besimple AI (YC P25) 正在招聘

**原文标题**: Besimple AI (YC P25) Is Hiring

**原文链接**: [https://www.ycombinator.com/companies/besimple-ai/jobs/yWfhhOR-strategic-projects-lead-audio-data](https://www.ycombinator.com/companies/besimple-ai/jobs/yWfhhOR-strategic-projects-lead-audio-data)

**Besimple AI (YC P25) 正在招聘战略项目负责人——音频数据方向**，负责从头到尾管理高优先级音频数据项目。该岗位融合运营、产品理解与客户执行，需要能够将模糊的客户需求转化为可扩展的工作流程，利用Besimple内部平台实现。

**主要职责包括：**
- 全权负责音频收集与标注项目
- 设计工作流程、质量评估标准与试点测试
- 管理分布式贡献者、审核员与供应商
- 识别平台缺口，为工程团队撰写产品需求
- 跟踪质量、成本、吞吐量与交付时间线等关键绩效指标

**理想候选人应具备：**
- 3至7年以上数据运营、AI数据交付或相关领域经验
- 有主导复杂跨职能项目从零到完成的成熟经验
- 较强的分析、沟通与流程构建能力
- 拥有音频、语音或多语言数据经验者优先

**加入理由：** 在早期AI公司担任高自主性岗位，直接与创始人共事。您将塑造前沿语音AI模型所需高质量音频数据的大规模生产方式。Besimple AI 是YC X25公司，总部位于加州红木城，已为领先AI公司提供评估管线支持。

---

## 14. 早期逆境在全身留下持久分子印记：灵长类研究

**原文标题**: Early adversity leaves lasting molecular imprint across the body: primate study

**原文链接**: [https://medicalxpress.com/news/2026-06-early-life-adversity-molecular-imprint.html](https://medicalxpress.com/news/2026-06-early-life-adversity-molecular-imprint.html)

**摘要**

一项灵长类动物研究表明，早期逆境不仅在大脑中，而且在整个身体中都留下了持久的分子印记。加利福尼亚大学洛杉矶分校（UCLA）和耶鲁大学的研究人员分析了经历早期逆境（如母亲分离和仅同伴饲养）的恒河猴17个脑区和79个其他器官部位的组织样本。

发表在《自然·神经科学》上的这项研究发现，逆境引发了与应激反应、炎症和能量代谢相关的基因表达的持久变化。这些分子标记在免疫系统、心脏和胃肠道尤为明显。值得注意的是，大脑的前额叶皮层和杏仁核显示出早期应激的清晰特征，但最显著的影响出现在外周——特别是在与慢性炎症和代谢调节相关的组织中。

这些发现有助于解释为何童年创伤与后期患抑郁症、心脏病、糖尿病和自身免疫性疾病的风险相关。通过识别特定的分子通路——例如肝脏和脂肪组织中促炎基因表达增加——该研究为早期干预提供了潜在靶点。作者强调，身体对早期逆境的记忆不仅是心理上的，更是生物性的，这种“全身性”印记可能通过支持免疫系统和代谢的疗法得以改变。

---

## 15. Show HN：我通过索引18年的评论制作了Hacker News的Google趋势

**原文标题**: Show HN: I made Google Trends for Hacker News by indexing 18 years of comments

**原文链接**: [https://hackernewstrends.com](https://hackernewstrends.com)

这是一篇“Show HN”帖子，介绍 **Hacker News Trends**。该工具索引了18年间的Hacker News评论与帖子（超过4500万条），并据此生成交互式图表，展示任何话题、工具、人物或技术随时间变化的趋势。

**核心功能：**
- 用户可搜索特定术语，查看其提及次数随时间变化的日期直方图
- 可叠加多个术语进行对比，观察其兴衰变化（例如：Vercel vs. Cloudflare，OpenAI vs. Anthropic）
- 相关的帖子和评论均可查看，并可按术语或作者进行筛选
- 基于Upstash Redis Search构建

**文章包含大量预制的“热门对比”**，涵盖以下类别：
- **公司：** AMD vs. Nvidia， Coinbase vs. Binance
- **框架：** React vs. Vue vs. Svelte， Angular vs. Ember
- **AI工具：** ChatGPT vs. DeepSeek， TensorFlow vs. PyTorch
- **开发者工具：** Docker vs. Kubernetes， Vim vs. Neovim， Sublime vs. VS Code
- **人物：** 埃隆·马斯克、山姆·奥特曼、史蒂夫·乔布斯、保罗·格雷厄姆
- **行业风向：** 裁员、“AI泡沫”、远程工作、过度劳累

该工具本质上就是专门为Hacker News社区打造的“Google Trends”，让用户能够直观地看到过去近二十年间，该社区兴趣点的变迁、炒作周期的轮转以及技术的迭代。

---

## 16. 我为Emacs构建了一个GPU后端

**原文标题**: I built a GPU back end for Emacs

**原文链接**: [https://en.andros.dev/blog/4b707a03/how-i-built-a-gpu-backend-for-emacs/](https://en.andros.dev/blog/4b707a03/how-i-built-a-gpu-backend-for-emacs/)

作者为Emacs开发了一个GPU显示后端，最初针对macOS使用Metal，后来针对GNU/Linux使用OpenGL/EGL。关键架构是一个中立且平台无关的绘制层（gfxterm.c），位于Emacs未修改的重新显示引擎（xdisp.c）与仅实现约25个基本操作的轻量级GPU驱动之间。这实现了与原始Cocoa和GTK/cairo后端逐像素完美等效，并通过自动化测试工具验证。该GPU后端实现了诸如缓冲区视频播放、基于着色器的动画光标效果以及缓冲区淡入淡出等新颖功能。

然而，当该补丁提交至emacs-devel时，却因GNU政策拒绝接受LLM生成的贡献而立即被否决——作者在整个开发过程中使用了AI辅助编程。尽管代码被拒，该讨论引发了三个重要辩论：理查德·斯托曼主导的关于GPU使用的伦理与自由影响（他认为GPU威胁到软件自由）；该架构作为未来开发“研究对象”的实际价值；以及关于GPU后端是否能在无需深度重新设计的情况下超越现有CPU优化引擎的实质技术问题。

为验证该架构，作者为Linux编写了第二个OpenGL驱动，证实中立层可原封不动复用。性能基准测试表明，GPU后端在全帧重绘中与标准Cairo持平或略优（1.19倍），但在典型滚动任务中未展现显著优势，支持了维护者的怀疑——真正突破需要重新设计显示引擎本身。

---

## 17. 高级任天堂娱乐系统（ANES）—— 改装为使用双PPU的NES

**原文标题**: Advanced Nintendo Entertainment System (ANES) – NES Modded to Use 2 PPUs

**原文链接**: [https://github.com/decrazyo/anes](https://github.com/decrazyo/anes)

本文详细介绍了**高级任天堂娱乐系统（ANES）**改装方案，通过为标准NES加装**两个PPU（图像处理单元）**来提升图形性能。主要目标是实现**更丰富的色彩、更多精灵以及视差滚动效果**。

该项目需要两台NES主机：一台用于主改装，另一台作为零件捐赠机，具体需拆取第二块RP2C02 PPU、一个74LS373地址锁存器和一个74LS139多路分配器。定制双PPU板基于6×8厘米原型板制作，采用静态RAM（AS6C6264-55PCN）与绕线插座。

改造流程包括：拆焊元件、切割适配原型板、移走妨碍的电容，并在原PPU位置安装母排针。主机原有的74LS139芯片顶部需加装改良型16针插座，以处理两个PPU的地址线及片选信号的多路分配。最终将双PPU板插入排针即可。

作者承认该项目较为复杂，且说明文档可能不够完整，预计实际动手改造的人很少。因此，他建议用户改用**Mesen2模拟器**的修改版本来虚拟体验双PPU概念。GitHub上的相关项目提供了利用该硬件改装的演示软件。

---

## 18. Windows 10悄然获得额外一年的支持与更新

**原文标题**: Windows 10 quietly gets one more year of support and updates

**原文链接**: [https://www.neowin.net/news/windows-10-quietly-gets-one-more-year-of-support-and-updates/](https://www.neowin.net/news/windows-10-quietly-gets-one-more-year-of-support-and-updates/)

**摘要：**

微软已将面向消费者的Windows 10扩展安全更新（ESU）计划延长，将支持终止日期推迟至**2027年10月12日**。原本Windows 10将于2025年底结束生命周期，ESU计划仅额外提供一年安全更新。用户发现官方支持文章现已允许在2027年新截止日期前随时注册，而已注册用户将自动获得覆盖至该日期。

此前仅面向企业付费的ESU计划已向普通消费者开放，实质上是为2025年10月后的系统提供免费安全更新。此次延期似乎是应对硬件价格高企的举措，微软旨在避免数亿用户失去安全更新。公司虽鼓励用户升级，但也承认并非所有人都能负担新电脑。文章还提供了Windows 10电脑注册该计划的操作指南。

---

## 19. Tw-fade：纯CSS滚动驱动的边缘遮罩

**原文标题**: Tw-fade: pure CSS scroll-driven edge masking

**原文链接**: [https://pete.design/tw-fade](https://pete.design/tw-fade)

**摘要：**

文章《Tw-fade：纯CSS滚动驱动边缘遮罩》介绍了一种仅使用CSS（无需JavaScript）在可滚动容器边缘创建淡出视觉效果的技术。标题中的“Tw-fade”可能指代Tailwind CSS或自定义工具类方法。

核心内容为重复显示十一遍的短语“周边无常”。此重复作为演示或占位文本，用以展示CSS滚动驱动的边缘遮罩效果。关键概念是：当用户滚动时，容器顶部和底部边缘的内容会通过CSS `mask-image` 或 `-webkit-mask` 属性（由滚动位置驱动）逐渐淡出（变得透明）。这就在边缘处形成平滑的“无常”过渡，增强了滚动的视觉体验。该技术纯依赖CSS滚动关联动画（例如使用 `animation-timeline: scroll()` 或 `view()`）结合渐变遮罩来动态实现淡出效果，相比基于JavaScript的方案，性能更优且代码复杂度更低。

---

## 20. 物理学家如何追踪并捕获难以捉摸的中微子

**原文标题**: How physicists track and trap the elusive neutrino

**原文链接**: [https://www.quantamagazine.org/how-physicists-track-and-trap-the-elusive-neutrino-20260624/](https://www.quantamagazine.org/how-physicists-track-and-trap-the-elusive-neutrino-20260624/)

**摘要：**

本文记述了七十年来探测中微子的历程。中微子是几乎无质量、不带电且极少与物质相互作用的粒子。1930年，沃尔夫冈·泡利最初提出中微子假说，将其视为β衰变中能量缺失问题的一种不可检测的解决方案。1956年，克莱德·考恩和弗雷德里克·莱因斯在核反应堆旁进行的"捉鬼计划"实验中，首次明确探测到了中微子。

为研究中微子，物理学家建造了埋藏于深地下的巨型探测器。雷蒙德·戴维斯二世于20世纪60年代开展的霍姆斯塔克实验，在南达科他州地下使用40万升干洗液，却仅探测到理论预测太阳中微子数量的三分之一，由此产生了"太阳中微子问题"。这一问题后来由日本的超级神冈探测器和加拿大的萨德伯里中微子观测站解决，它们证明中微子可在三种"味"（电子型、μ子型、τ子型）之间振荡，这意味着中微子具有质量。

现代探测器包括南极的冰立方中微子天文台，它利用南极冰层绘制了基于中微子的银河系地图；以及地中海中的KM3NET探测器，它探测到了有记录以来能量最高的宇宙中微子。最新一代探测器——中国的江门中微子实验、日本的超神冈探测器和美国主导的深部地下中微子实验——旨在精确测量中微子属性，包括不同味中微子的质量层级。文章总结道，发现中微子的秘诀始终不变：大胆构想，深入地下，保持耐心。

---

## 21. 52赫兹的鲸鱼

**原文标题**: 52-hertz whale

**原文链接**: [https://en.wikipedia.org/wiki/52-hertz_whale](https://en.wikipedia.org/wiki/52-hertz_whale)

**52赫兹鲸鱼简介**

52赫兹鲸鱼，绰号“52蓝”，是一头未知物种的鲸鱼个体，以异常的52赫兹频率发声，远高于蓝鲸的10–39赫兹或长须鲸的20赫兹。1989年，伍兹霍尔海洋研究所利用解密的美国海军水听器首次探测到它。此后，每年在北太平洋都能听到它的声音，在白令海与阿留申群岛至加利福尼亚海岸之间洄游。尽管从未被目击，其叫声一直被持续记录，并随时间推移略有加深，符合成熟特征。

这头鲸鱼被称为“世界上最孤独的鲸鱼”，长期以来被认为是唯一以52赫兹发声的鲸鱼，引发对其健康或物种（可能是杂交或畸形鲸鱼）的猜测。然而，2010年的记录显示，可能至少还有另一头鲸鱼也以52赫兹发声。

这头鲸鱼激发了大量媒体创作，包括纪录片、音乐和文学作品。知名作品有2021年纪录片《最孤独的鲸鱼：寻找52》、防弹少年团歌曲《Whalien 52》以及琳恩·凯莉的小说《鲸鱼之歌》。这头鲸鱼至今仍是孤独与坚韧的有力象征。

---

## 22. AI中的政治偏见：各AI模型的立场

**原文标题**: Political bias in AI: Where the AI models stand

**原文链接**: [https://trakkr.ai/bias](https://trakkr.ai/bias)

本文通过测试六大AI模型（ChatGPT、Claude、Gemini、Grok、Llama、DeepSeek）在争议性政治、经济及社会议题上的立场，分析了其政治偏见。主要发现包括：

**整体倾向：** 六个模型中四个偏左，Grok最为右倾，ChatGPT最为左倾。

**立场最稳定模型：** Gemini的立场一致性最高，而DeepSeek和Llama灵活性较高（存在"压力下摇摆"现象）。

**最接近中间立场模型：** Gemini和DeepSeek最接近经济立场的中间点，与安东尼·阿尔巴尼斯等人物的立场相近。Grok偏右（接近埃马纽埃尔·马克龙立场），ChatGPT偏左（接近德国绿党立场）。

**研究方法：** 每个模型在无网络搜索条件下（条件A）多次回答同一组开放式问题。由中立模型对回答进行立场、措辞倾向及情绪化语言分类。结果以云状图呈现分布范围，并记录每次运行的稳定性及拒答率。

**透明度：** 所有原始回答、评分权重及研究方法均以CC BY 4.0协议公开。本项研究为描述性非规范性分析，使用非美国色彩体系以避免党派框架。用户也可通过参与相同测试"定位自身"，查看与哪个模型立场最接近。

---

## 23. Show HN：将母语音频转化为单词卡与跟读练习

**原文标题**: Show HN: Turn native language audio into flashcards and shadowing practice

**原文链接**: [https://lingochunk.com/try](https://lingochunk.com/try)

**简介：**

这篇文章介绍了 **LingoChunk**，这是一款帮助语言学习者将原生音频内容（如 YouTube 视频、播客或任何口语媒体）转化为结构化闪卡和影子跟读练习的工具。其核心功能针对一个常见问题：被动收听母语者内容不足以实现主动语言习得。

LingoChunk 能从用户提供的原生语言内容中提取音频片段，并自动生成：
1. **交互式闪卡**，包含音频片段、转录文本及翻译，让用户在语境中学习词汇与短语。
2. **影子跟读练习**，用户聆听并重复音频片段——这是一种改善发音、语调及流利度的成熟技巧。

该工具旨在弥合消费真实内容与主动练习口语和理解之间的差距。它支持多种语言，基于网页运行，无需下载。开发者将其定位为面向中级学习者的解决方案，帮助用户超越课本练习，在结构化练习中沉浸于真实素材。

本文是一则 **Show HN**（黑客新闻）公告，旨在向开发者社区寻求反馈。标题或摘要中未提及具体定价或订阅模式——它似乎是一款免费/近期发布的工具。

---

## 24. 全民OAuth

**原文标题**: OAuth for all

**原文链接**: [https://blog.cloudflare.com/oauth-for-all/](https://blog.cloudflare.com/oauth-for-all/)

**摘要：** Cloudflare宣布为所有客户提供自管理OAuth服务，使开发者能够创建OAuth客户端以实现委托式API访问。此前，第三方OAuth仅限于手动接入的集成；开发者不得不依赖更难管理的API令牌。此举支持SaaS集成、内部工具及智能体工作流。

为安全扩展规模，Cloudflare升级了同意体验、新增仪表盘撤销功能，并提升了应用所有权的可见性。其底层OAuth引擎（Hydra）分两个阶段进行了重大升级：

1. **升级至Hydra 1.X**：通过自定义SQL迁移（使用`CREATE INDEX CONCURRENTLY`和显式列选择）避免用户影响。升级后，因更严格的失效机制出现刷新令牌问题，通过在Cloudflare Worker中添加刷新令牌合并功能得以缓解。

2. **升级至Hydra 2.X**：采用蓝绿部署策略以最大限度减少停机时间。通过将令牌过期时间延长至数小时保持写入功能，同时利用Cloudflare Queues系统在过渡期间捕获撤销操作。约3小时的迁移涉及1.325亿行更新，次要问题（数据清理作业损坏导致403错误）随后得到解决。

**升级后性能提升**：API P95延迟降低45%（从185毫秒降至101毫秒），内存/CPU使用率显著下降。

此次发布（6月3日）将OAuth开放给所有Cloudflare客户，用户现可通过仪表盘创建OAuth应用。这是迈向更广泛Cloudflare应用生态系统的关键一步。

---

## 25. 日本动画师的消失

**原文标题**: The disappearance of Japan's animators

**原文链接**: [https://economist.com/interactive/1843/2026/06/19/the-strange-disappearance-of-japans-animators](https://economist.com/interactive/1843/2026/06/19/the-strange-disappearance-of-japans-animators)

无法访问文章链接。

---

## 26. 展示HN：MiniPCs.zip——绘制迷你PC的帕累托前沿

**原文标题**: Show HN: MiniPCs.zip – Charting the Pareto frontier of Mini PCs

**原文链接**: [https://minipcs.zip](https://minipcs.zip)

本文介绍**MiniPCs.zip**网站，该网站通过绘制性能与价格的“帕累托前沿”图表，帮助用户寻找性价比最高的迷你电脑。

该网站每天两次扫描亚马逊和eBay上数千款迷你电脑产品，并根据价格和规格将这些产品绘制在交互式图表中。用户可调整横轴或颜色代码来探索不同维度，例如对比CPU性能与图形处理能力。

网站创建者指出，该网站通过联盟链接来覆盖运营成本——作为亚马逊联盟成员，他们从符合条件的购物中获得佣金。同时附有免责声明，说明产品价格和库存仅在扫描时准确，后续可能发生变化。更多项目细节可参考相关博文。

---

## 27. LastPass通知用户发生又一起数据泄露事件

**原文标题**: LastPass notifies users of yet another data breach

**原文链接**: [https://9to5mac.com/2026/06/23/lastpass-notifies-users-of-yet-another-data-breach/](https://9to5mac.com/2026/06/23/lastpass-notifies-users-of-yet-another-data-breach/)

**LastPass数据泄露通知摘要**

LastPass已通知用户发生一起通过外部合作伙伴——市场研究公司Klue造成的数据泄露事件。黑客通过Klue平台（该平台与Salesforce和Gong系统集成）获取了客户信息和支持案例数据。LastPass澄清，实际的密码库未受影响。

泄露的数据包括标准业务联系信息及CRM数据，如姓名、电话号码、电子邮件地址、实际地址、支持案例数据及销售相关详情。作为回应，LastPass撤销了员工对Klue的访问权限，轮换暴露的API令牌，通知执法部门，并与Klue及Salesforce共同展开调查。

该公司敦促用户警惕利用被盗信息进行的钓鱼攻击或社会工程学尝试。它已提供与攻击者相关的特定IP地址和电子邮件发件人域名，供用户检查自身系统。

此次事件是LastPass继2015年和2022年重大泄露后的一系列安全问题中的最新一起。2022年，攻击者访问了包含加密密码库和未加密个人信息的源代码及云备份。尽管如此，LastPass强调，当前泄露事件并未危及加密库数据。

---

## 28. 博客写作有时不过是陈述显而易见的事实。

**原文标题**: Blogging can just be stating the obvious

**原文链接**: [https://blog.jim-nielsen.com/2026/blogging-stating-the-obvious/](https://blog.jim-nielsen.com/2026/blogging-stating-the-obvious/)

这篇文章以约翰·格鲁伯对侵入式网站弹窗的批评为引子，反思了博客写作的本质。格鲁伯认为，网页本应直接呈现内容，而非强迫用户在阅读前“订阅”或“接受Cookie”——他指出这一观点本应是常识，却未得到广泛认同。

作者将此比作《皇帝的新衣》，博主常常就像那个说出显而易见事实的孩子。许多博文看似琐碎或缺乏新意，让写作者怀疑是否值得发表。然而，现实中那些糟糕且对用户不友好的模式依旧存在，却无人公开讨论，直到博主们终于用证据发声。

关键在于，最优秀的博文往往源于作者愿意说出那些对自己显而易见、却鲜有人言说的道理，包括引用并放大持有同样观点者的声音。因此，博客写作的重要要素之一，就是拥有指出不证自明之事的勇气——即便这感觉像是在浪费时间。

---

## 29. 如何获取第一批客户 [视频]

**原文标题**: How to get your first customers [video]

**原文链接**: [https://www.ycombinator.com/library/SF-how-to-get-your-first-10-customers](https://www.ycombinator.com/library/SF-how-to-get-your-first-10-customers)

**《如何获取首批客户》要点总结（YC创业图书馆）**

YC指南强调，初创企业早期首要目标不是完美产品，而是获取客户。核心策略是“做不可规模化的事”。

关键要点包括：

1. **从狭窄切入点开始**：不瞄准广泛市场，先选择有迫切需求的特定小群体，实现个性化触达与反馈。
2. **人工获取客户**：创始人通过直发邮件、社交媒体评论和面对面互动手动招募用户，建立个人联系并获取宝贵洞察。
3. **“法纳姆街”方法**：为用户提供即时价值（如免费咨询或分析），换取反馈，从而建立信任并发现真实痛点。
4. **打造“超预期优质”产品**：首批客户必须获得非凡体验。过度投入支持，即时响应，当场修复缺陷。用极致体验促使他们成为产品布道者。
5. **理想客户画像**：瞄准“非消费者”——因现有产品不匹配而用人工方案凑合的人群。他们更易接受不完美的早期产品。
6. **持续迭代**：每次与潜在客户的互动都应反馈到产品改进中。目标是将最初10个用户转化为热情推广者。

归根结底，获取首批客户是一个需要人工、高接触、不间断推进的过程，核心是个人化触达、极致客服与快速迭代。

---

## 30. 开源权重模型难以承受的低廉成本

**原文标题**: The unbearable cheapness of open weight models

**原文链接**: [https://jamesoclaire.com/2026/06/25/the-unbearable-cheapness-of-open-weight-models/](https://jamesoclaire.com/2026/06/25/the-unbearable-cheapness-of-open-weight-models/)

文章指出，像DeepSeek V4这样的开放权重AI模型，其成本比Anthropic和OpenAI的“前沿”模型大幅降低（最高可达50倍），这引发了对后者高定价可持续性的担忧。作者认为，这些公司可能通过奢侈品品牌营销和对中国竞争的恐惧营销来制造稀缺性，并可能推动政府对开放权重模型实施禁令，以保护其市场。

关键要点：
- 开放权重模型得益于社区压力测试，且可能作为亏损引流产品，从而拉低成本。
- Anthropic和OpenAI对前沿模型设置访问门槛，营造类似奢侈品牌的排他性。
- 作者担心美国企业会利用“中国威胁论”来限制开放权重竞争。
- 美国开源贡献已停滞：Google的Gemma 4（2026年4月）是近期产物，Meta的Llama缺乏更新，OpenAI最后发布开放权重是在2025年，而Anthropic从未发布过。
- 像AI2的OLMo（含数据管道）这样的真正开源模型虽已过时但颇具潜力，且获得NSF和英伟达对未来发展的支持。
- 附赠章节介绍了Claude/ChatGPT移动应用中所用工具，可供进一步探索。

作者主张美国应开展真正的开源竞争，以证明开放权重模型才是未来，而非依赖监管壁垒。

---

