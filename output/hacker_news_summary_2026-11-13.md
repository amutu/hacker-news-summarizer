# Hacker News 热门文章摘要 (2026-11-13)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 黄仁勋辞职

**原文标题**: Jensen Huang resigns

**原文链接**: [https://apnews.com/article/nvidia-megaspeed-china-singapore-huang-5403f152a601cf82ce939f1d24fffa0f](https://apnews.com/article/nvidia-megaspeed-china-singapore-huang-5403f152a601cf82ce939f1d24fffa0f)

无法访问该文章链接

---

## 2. Gemini 4 Hydrogen 与 Orchestrator 编排器发布

**原文标题**: Gemini 4 Hydrogen and Orchestrator

**原文链接**: [https://antigravity.google/blog/gemini-4-hydrogen-in-google-antigravity/](https://antigravity.google/blog/gemini-4-hydrogen-in-google-antigravity/)

Google Antigravity 平台今日推出 Gemini 4 Hydrogen 模型及 Orchestrator 编排功能。Orchestrator 将前沿推理模型 Carbon 与高性价比模型 Hydrogen 动态组合：Carbon 负责依赖探索、方案规划与歧义消解，Hydrogen 执行代码编写、包更新与测试；遇阻时 Carbon 接管修复并恢复执行，实现单任务轨迹内的动态双向切换，克服了静态模型路由难以适应任务演变的缺陷。在 Terminal-Bench 4.1 上，Orchestrator 接近 Carbon 的任务成功率，同时配额消耗降低 24%、速度提升 19%。开发者还可通过 Antigravity SDK 构建显式多模型管道，例如以 Hydrogen 处理 issue 分流与快速迭代，Carbon 负责大型重构与安全审查。作为独立模型，Hydrogen 在 Artificial Analysis 智能指数获 51 分（最高 54 分），Terminal-Bench 4.1 达 57%，并提供低、中、高、xhigh 四级推理深度可选。Hydrogen 面向 AI Pro 及 Ultra 付费用户开放，Orchestrator 仅限 Ultra 用户，企业可通过 Gemini 商业版获取。

---

## 3. 新矮行星候选体2026 ED138现身，绕日公转周期约281年

**原文标题**: Dwarf planet candidate appears which takes roughly 280 years to orbit our sun

**原文链接**: [https://www.smithsonianmag.com/smart-news/astronomers-found-a-mysterious-object-orbiting-far-beyond-pluto-it-could-be-a-new-dwarf-planet-hidden-in-our-solar-system-180989857/](https://www.smithsonianmag.com/smart-news/astronomers-found-a-mysterious-object-orbiting-far-beyond-pluto-it-could-be-a-new-dwarf-planet-hidden-in-our-solar-system-180989857/)

美国史密森尼天体物理研究所高级天体物理学家马修·霍尔曼在分析智利维拉·C·鲁宾天文台数据时，发现一颗编号为2026 ED138的新矮行星候选体。该天体距太阳约46个天文单位，公转周期约281.1年，轨道倾角近25度，可能曾受海王星引力扰动。团队通过比对过去十年影像，甚至在1937年的哈佛天文底片中找到其踪迹，确认了它的真实存在。目前估计其直径在595至1496公里之间，可能足够大以在自身引力下呈球形，从而满足矮行星标准。但确认尺寸仍需借助红外热辐射观测或凌星观测，相关工作正在推进。当前太阳系仅确认五颗矮行星（冥王星、阋神星、鸟神星、妊神星和谷神星），此发现意味着可能还有更多类似天体尚未被探测。ED138所在区域正对银河系核心方向，背景恒星密集，属长期观测盲区，且位于南天，此前被忽视；鲁宾天文台凭借全球最大数码相机正弥补这一空白。该天体的研究或有助于揭示太阳系的形成与早期演化历史，霍尔曼表示，太阳系外围可能仍存在火星乃至地球大小的未知天体，尚未被排除。

---

## 4. Rust 1.100 发布

**原文标题**: Rust 1.100

**原文链接**: [https://blog.rust-lang.org/2026/11/12/Rust-1.100.0/](https://blog.rust-lang.org/2026/11/12/Rust-1.100.0/)

Rust 1.100.0 正式发布，核心更新包括：Never 类型（!）历经十年、五次尝试后终于稳定，可在任意位置命名，Infallible 成为其别名；edition 2024 之前版本的 never 类型回退从 () 改为 !（破坏性变更）。分配器 API 稳定，通过 Allocator trait 支持自定义分配器，目前适用于 Vec 和 Box。新增 DropGuard，在 return、?、panic 等所有退出路径运行闭包，便于实现事务式回滚。新增 std::mem::conjure_zst 作为创建零大小类型的专用方式。Cargo 方面：新增未使用依赖警告；引入 min-publish-age（依赖冷却期），可配置等待窗口以延缓采纳新发布版本，降低供应链攻击风险；改进构建目录布局以减少缓存碰撞。此外稳定化大量 API，涵盖 Allocator 相关实现、Box/Vec/Rc/Arc 的 map 方法、str 与 slice 的 trim_prefix/trim_suffix 等。用户可通过 rustup update stable 更新至本版本。

---

## 5. 数据中心耗电巨大，低收入与农村居民承受代价

**原文标题**: Data centers need power – lower income, rural residents pay the price

**原文链接**: [https://news.cornell.edu/stories/2026/11/data-centers-need-power-lower-income-rural-residents-pay-price](https://news.cornell.edu/stories/2026/11/data-centers-need-power-lower-income-rural-residents-pay-price)

摘要：康奈尔大学团队在《自然·能源》发表研究，分析2020至2025年美国四大电网数据，发现数据中心推动输电投资从200亿美元激增至340亿美元，却仅承担相关基建成本的38%（约31.2亿美元），剩余62%（51.3亿美元）由居民分摊，低收入家庭额外能源支出最高达收入的28%。研究显示，数据中心在主要用电区域推高批发电价近10%以上，弗吉尼亚涨幅15%、加州湾区达20%；农村地区家庭能源负担（支出超收入6%）增幅比城市高76%，且农村居民使用AI工具的比例更低，利益与代价严重错配。由于成本分摊仍依赖历史用电模式，新建数据中心在投产前不消耗电力，基建费用转嫁至普通家庭，且电网跨区域连接使新泽西、宾州、俄亥俄居民也需为弗吉尼亚的数据中心买单。研究同时指出每吉瓦数据中心可带动1.5万个就业岗位，强调需平衡利弊。团队建议：数据中心在每年22个高峰时段错峰减载、按新增需求直接收费、将税收激励与就业及工资增长挂钩，并设立专项补贴救助低收入家庭。目前六州已为大型用电者制定专项条款，七家科技巨头签署了白宫"费率纳税人保护承诺书"。

---

## 6. Show HN：300美元绣花机竟要订阅收费，于是我自建了软件

**原文标题**: Show HN: My $300 embroidery machine needed a subscription, so I built my own app

**原文链接**: [https://github.com/simpsoka/zigzag](https://github.com/simpsoka/zigzag)

摘要：ZigZag 是一款用 Rust 构建的开源刺绣设计编辑器，源于开发者对绣花机订阅收费的不满。该工具支持 SVG 导入，经编辑后导出 PES、DST、EXP、JEF、VP3 等主流格式，并可通过蓝牙直连 Brother Skitch 等机型发送设计。编辑器界面仿 Adobe Illustrator，提供钢笔、形状、路径等全套矢量工具及智能参考线、圆角、路径简化等功能；内置缎面、填充、跑针、十字绣、百叶、贴布等多种针迹，具备宽缎面自动拆分、重叠去除、走线规划、修剪控制等数字化能力。项目集成 MCP 协议，用户可在 Agent 面板调用 Claude Code 或 Codex 辅助设计，代理仅限操作设计工具，无系统权限。此外支持位图描摹转矢量，提供 Brother、Janome 等品牌线盘调色板匹配。已发布 macOS 与 Windows 预编译安装包，Linux 需自行构建，完全开源。

---

## 7. Outlook 服务中断，微软状态页面亦同步宕机

**原文标题**: Outlook is down, and so is Microsoft's status page

**原文链接**: [https://gvwire.com/2026/11/12/microsoft-outlook-down-for-thousands-of-users-downdetector-shows/](https://gvwire.com/2026/11/12/microsoft-outlook-down-for-thousands-of-users-downdetector-shows/)

无法访问该文章链接

---

## 8. 模组制作者完成被遗弃的《雷神之锤4》扩展，现已可游玩

**原文标题**: Abandoned Quake 4 expansion finished by modders and now playable

**原文链接**: [https://www.moddb.com/mods/openq4/downloads/openq4-0141-windows-x64](https://www.moddb.com/mods/openq4/downloads/openq4-0141-windows-x64)

无法访问该文章链接

---

## 9. Gemini 4 Hydrogen 正式发布

**原文标题**: Gemini 4 Hydrogen

**原文链接**: [https://blog.google/innovation-and-ai/models-and-research/gemini-models/introducing-gemini-4-hydrogen/](https://blog.google/innovation-and-ai/models-and-research/gemini-models/introducing-gemini-4-hydrogen/)

谷歌DeepMind发布Gemini 4 Hydrogen，定位为面向大众的快速高效模型，主打日常编码与智能体工作流。该模型在Artificial Analysis智能指数上以默认高思考模式（51分）超越旗舰Argon（50分），xhigh模式达54分，定价为每百万输入token 1.50美元、输出7.50美元，支持100万token上下文。相比前代Gemini 3.8 Flash，速度提升2.5倍，Terminal-Bench 4.1得分从18.2%跃至57%，虚构声明减少超5倍，在代码调试、多步智能体执行、多模态知识处理及前端开发等场景均领先同级模型。新推出的Orchestrator功能可在同一会话中动态切换Carbon与Hydrogen，任务成功率接近Carbon同时节省24%配额、提速19%。模型设低、中、高、xhigh四档思考层级，按需平衡质量、速度与成本。消费端，Hydrogen全面升级Gemini应用与Google搜索，提升多轮对话一致性、工具调用精准度及搜索意图理解能力。安全方面，智能体越权行为减少81%，抗提示注入能力提升2.3倍，健康类问题误拒率低于0.4%。Hydrogen已面向开发者、企业及全球用户上线，覆盖Gemini API、AI Studio、Google Antigravity、Gemini应用及搜索等全平台。

---

## 10. 22年PostgreSQL旧漏洞竟成远程代码执行：一次类型混淆的发现之旅

**原文标题**: 22-Year-Old PostgreSQL Bug Turned into Remote Code Execution

**原文链接**: [https://mehmetince.net/part-3-6-how-i-ended-up-turning-a-22-year-old-postgresql-type-confusion-primitive-into-rce-cve-2026-6460/](https://mehmetince.net/part-3-6-how-i-ended-up-turning-a-22-year-old-postgresql-type-confusion-primitive-into-rce-cve-2026-6460/)

摘要：安全研究员Mehmet讲述了他在2026年6至8月间，从利用pg_clickhouse扩展内存破坏漏洞出发，逐步深入PostgreSQL核心，最终发现一个存在22年之久的类型混淆零日漏洞的完整过程。研究起点是pg_clickhouse将ClickHouse值转换为PostgreSQL Datum时存在的缺陷。为理解该机制，他借助AI代理系统学习了PostgreSQL类型体系：Datum本身不携带类型标签，类型信息完全依赖pg_type目录中的OID标识及typinput/typoutput函数选择。他首先发现LANGUAGE internal特性可强制将int4 Datum交由textout处理，造成类型混淆崩溃。关键突破来自与伴侣讨论预编译语句时获得的灵感——数据库可先完成解析再等待执行，期间可修改类型定义。他利用复合类型（composite type）的ALTER ATTRIBUTE功能，在预编译语句构建后、执行前将字段类型从UUID改为bytea，使PostgreSQL以错误类型解释原始数据，触发可靠的内存损坏原语。该漏洞影响PostgreSQL核心，与任何扩展无关。本文是其"托管PostgreSQL行业系统性风险"系列第三篇，完整呈现了从扩展漏洞到核心零日的发现路径。

---

## 11. 让大模型跑在小型老旧设备上

**原文标题**: I'm making LLMs work on small and old devices

**原文链接**: [https://github.com/hyperionaidev/smolmaxxing/](https://github.com/hyperionaidev/smolmaxxing/)

摘要：作者smolmaxxing致力于在电视盒子、旧手机、路由器等低算力设备上运行大语言模型。文中记录了两个设备的优化成果：设备1为小米电视盒子S（4核Cortex-A55，约1GB可用内存），成功运行260K至16B参数模型，0.8B达16.8 tok/s，8B混合专家模型达7.2 tok/s，16B混合专家模型达5.1 tok/s；设备2为2013年iPad Air（A7双核，1GB内存），1.7B模型达24-26 tok/s，16B混合专家模型达2.6-4.5 tok/s。核心技术按瓶颈分四类：计算层面，为无dotprod指令的A7移植了免乘法1位查表内核；内存层面，通过剪枝LM头、无头模式等释放约300MB；闪存层面，设计专家分页器与预取机制，将缓存未命中率从13%降至约2%；质量层面引入重复惩罚抑制长文本退化。全部改进基于设备实测，累计160项实验。文章指出，在此类设备上模型越大未必越好，16B每字节表现反不如8B，真正瓶颈在于闪存带宽而非CPU。

---

## 12. 与AMD Mike Clark深入探讨Zen 6架构

**原文标题**: Talking Zen 6 with Mike Clark at AMD In-Depth

**原文链接**: [https://chipsandcheese.com/p/talking-zen-6-with-mike-clark-at](https://chipsandcheese.com/p/talking-zen-6-with-mike-clark-at)

本文记录了Chips and Cheese在AMD In-Depth活动上与Zen原始架构师Mike Clark的对话，全面解析Zen 6/Zen 6c架构演进。Mike Clark（人称"Zen之父"，深耕AMD核心设计33年）阐明两大变体定位：Zen 6c为旗舰核心，满配4MB L3/核、32核128MB L3、最高IPC；Zen 6侧重高频。二者保持相同"手感"确保软件优化通用，但Zen 6c因频率较低，在浮点调度器等队列上扩大容量以榨取更多IPC。前端双解码在效率与功耗上进一步优化；整数乘法器由三精简为两路以适配分布式调度器；向量侧新增两枚VNNI单元强化AI推理（设计后期加入），向量加载由双路升至四路；L2读带宽修复至64字节/周期。分支预测器在精度不降前提下缩短误预测恢复延迟，AI参与了TAGE表优化。Zen 6c在SPECint 2026中匹敌最快Zen 5服务器CPU。L3拓扑差异通过增大核心队列缓解；Verano引入LPDDR5X，但核心带宽余量充足，影响甚微。

---

## 13. Relax：面向 Rust 的即时编译器，告别漫长构建

**原文标题**: Relax: JIT compiler for Rust to reduce build times

**原文链接**: [https://makepad.github.io/relax/](https://makepad.github.io/relax/)

Relax 是一款用 Rust 编写的即时（JIT）编译器与运行时，旨在重塑 Rust 开发体验。传统流程中，rustc 须先完成完整编译再运行程序；Relax 则让程序在编译过程中同步启动，全程无需 rustc、LLVM 或链接器，可直接从 Cargo 源码运行。其核心机制包括：首次调用时按需编译各函数，运行时自动识别并优化热点代码，并支持将代码编辑实时热补丁到运行中的进程，实现"边改边跑"。文章展示了 Relax 与 rustc 在真实负载下的性能对比，同时也坦诚说明了 JIT 方案的取舍——特定场景下 LLVM 仍占优势。此外，Relax 已与 UI 框架 Makepad 深度集成，可在其运行环境中直接启用；项目还专为 AI 智能体的迭代工作流设计，保持编译循环始终处于热态，大幅减少 AI 辅助开发中的等待时间。整体而言，Relax 以"Rust 无需等待"为愿景，为快速迭代开发提供了一条全新路径。

---

## 14. Show HN：AgentRun——开源自进化托管智能体平台

**原文标题**: Show HN: AgentRun – open-source, Self-improving Managed Agents

**原文链接**: [https://github.com/Parcha-ai/agentrun/blob/main/README.md](https://github.com/Parcha-ai/agentrun/blob/main/README.md)

摘要：AgentRun 是一个 Apache-2.0 协议的开源平台，为智能体运行环境叠加自学习、持久执行与统一管控层，兼容 Claude Code、Codex、OpenCode 及 pi 等主流框架。核心能力包括：①自学习——每次运行后 Agent 将笔记、技能或工作流提交至自身 Git 仓库，下次直接复用，避免重复探索；②持久执行——运行状态存入统一存储，服务中断后可恢复，多 Runner 支持故障转移；③细粒度管控——工具审批、花费上限、运行暂停与人工接管；④类型化工作流引擎——以 JSON 描述工具调用、模型推理与条件分支，支持逐步调试与可视化回放；⑤多类型执行环境——沙箱、Linux 桌面、安卓手机、浏览器按需切换。平台提供代码审查、KYB 尽调、市场监控等五个即用模板，实际案例显示代码审查成本可从每次 1 美元降至 0.18 美元。支持 Node.js 一键启动、Docker 沙箱及 Render 云端部署，兼具 CLI 与 API，便于集成到现有应用。

---

## 15. 将CPython适配yk：过程与性能

**原文标题**: Adapting CPython for Yk

**原文链接**: [https://tratt.net/laurie/blog/2026/adapting_cpython_for_yk.html](https://tratt.net/laurie/blog/2026/adapting_cpython_for_yk.html)

摘要：yk是一种能为C解释器自动添加元追踪JIT编译器的工具，目标是保留100%兼容性的同时提升性能。作者Laurence Tratt在前期对小型解释器PUC Lua的成功基础上，将yk适配到CPython，仅用约450行代码改动即取得显著效果。适配过程先尝试CPython的tier 1解释器，但因CPython的"quickening"（操作码特殊化）机制导致JIT追踪频繁丢弃、收益不足，遂转向更适合的tier 2解释器，该部分仅需约80行代码。性能方面，在AWFY基准测试套件中，ykcpython在13项测试中12项快于普通CPython 3.15.1，其中8项快于CPython自带实验性JIT；例如Mandelbrot耗时降至CPython的约0.36倍。作者强调该实现远未达生产可用状态，且基准测试表现不能代表真实场景，本文目的在于展示适配大型解释器的路径与关键挑战——包括构建系统理解、YkLocation放置、栈管理兼容及特殊化与追踪的冲突处理——而非宣传最终性能。

---

## 16. ExcalidrawZ：macOS/iOS 原生 Excalidraw 应用

**原文标题**: ExcalidrawZ: Local Native Excalidraw on macOS/iOS

**原文链接**: [https://github.com/chocoford/ExcalidrawZ](https://github.com/chocoford/ExcalidrawZ)

ExcalidrawZ 是一款基于 SwiftUI 打造的 macOS、iPadOS 及 iOS 原生 Excalidraw 客户端，在保留经典画布体验的同时深度整合苹果平台特性。核心功能涵盖：原生文件管理（直接打开编辑 .excalidraw 等格式、分组排序、iCloud 跨设备同步）、文件历史版本记录与恢复、Apple Pencil 及触控板手势支持、PDF 导入与 Mermaid 图表转换。协作方面兼容 Excalidraw 在线协作；内置 AI 助手可读写及修改画作，支持图片附件与提案预览，并控制各文件的 AI 可见性；MCP 服务可将应用作为服务器供兼容的 AI 客户端调用，提供基础与增强两种模式。此外还集成 LaTeX 公式与函数图形渲染、文件加密锁定、多格式导出（图片/PDF/可编辑文件）、系统分享及归档备份。应用以非应用商店 .dmg 形式分发；开发核心开源，开发者需配置开发团队签名及 Secrets.plist 运行时参数即可进行本地构建。

---

## 17. 编写正确软件为何如此困难

**原文标题**: Why Writing Correct Software Is Hard

**原文链接**: [https://pron.github.io/posts/correctness-and-complexity](https://pron.github.io/posts/correctness-and-complexity)

摘要：本文从可计算性与复杂性理论出发，论证编写正确软件的根本困难。文章回顾Hilbert纲领——追求数学形式系统的一致性、完备性与可判定性——如何被Gödel不完备性定理与图灵停机问题逐一推翻。停机定理证明不存在通用算法判定任意程序是否终止；Rice定理指出部分函数的任何非平凡性质均不可算法判定；Busy Beaver函数则从量化角度表明，程序规模与其终止证明难度之间的关系超越一切可计算函数。依据Gödel第二不完备性定理，存在仅约百行的程序，其行为在ZFC体系下既不可证终止亦不可证不终止，数学本身无力判定。作者据此提出核心观点：程序与完整理解根本对立，正确性代价如同降低熵所需能量，是计算的"自然定律"，不可规避。数学关注可证有限世界，计算机科学面对超越此界的无限行为，二者本质不同。此外，即便问题可判定，复杂性理论也揭示其求解代价可能呈指数增长，使验证在工程上不可行。正确性并非靠工具即可廉价获得，而是受计算基本规律制约的固有难题。

---

## 18. 中世纪人骨放射性碳测年的水库效应警示

**原文标题**: Words of warning about radiocarbon dating medieval human bones

**原文链接**: [https://www.nature.com/articles/s40494-026-02958-x](https://www.nature.com/articles/s40494-026-02958-x)

摘要：放射性碳测年中世纪人骨时，水库效应可能导致年龄显著偏大。中世纪修道院居民在斋期大量食用淡水鱼，而淡水水体中¹⁴C含量远低于大气，使骨胶原蛋白中的¹⁴C偏低，测年结果出现"偏老"偏差。本文以丹麦27具修道院人骨为案例，经加速器质谱测定¹⁴C并结合稳定同位素分析，发现δ¹³C值（−18.4至−20.6‰）表明海洋食物链影响较小，但全部样本δ¹⁵N值均显著高于8‰，证实存在大量淡水鱼蛋白摄入。其中22%的样本测年结果异常：部分¹⁴C校准年龄早于修道院建立时间，最大偏差超过200年。该问题并非丹麦独有，英国理查三世、荷兰Dorestad、巴尔干铁门峡谷及俄罗斯青铜时代骨骼均存在类似水库效应。作者警示，对疑似含淡水鱼饮食的人骨，须先测定δ¹⁵N值，若高于约8‰则需应用模型进行水库效应校正，否则校准所得日历年龄将不可靠，且模型校正仍存不确定性。

---

## 19. 任天堂大规模DMCA下架Switch模拟器与Mod芯片固件

**原文标题**: Nintendo Takes Down Emulators and Firmware in Massive GitHub DMCA Sweep

**原文链接**: [https://www.ign.com/articles/nintendo-takes-down-switch-emulators-and-mod-chip-firmware-in-massive-github-dmca-sweep](https://www.ign.com/articles/nintendo-takes-down-switch-emulators-and-mod-chip-firmware-in-massive-github-dmca-sweep)

任天堂近日向GitHub发出四份DMCA版权下架通知，目标涵盖Yuzu和Citron Neo两款Switch模拟器及大量Mod芯片固件。此次重点针对Picofly等Mod芯片的固件程序，共144个相关仓库被删除并替换为DMCA声明。Mod芯片可焊接至Switch主板，刷入固件后即可绕过任天堂的版权保护。这并非任天堂首次发起此类行动，2024年其曾通过12个镜像链接一次性下架8500份Yuzu。据TorrentFreak报道，部分固件仍可能托管于GitHub其他位置，任天堂的清理或尚未结束。此次下架发生于《塞尔达传说：时之笛》重制版在PC模拟器上成功运行仅数日之后，引发外界对其新一轮模拟器打击的猜测。与此同时，2026年游戏生态已因AI普及而剧变：AI混合Mod曾席卷社交媒体，Anthropic为Claude加入防复制锁；Rockstar和Bethesda也先后下架了AI生成的GTA5浏览器版与《辐射：纽约》。AI时代给版权保护带来了全新挑战。

---

## 20. AWS Lambda Web Functions 在最后一次请求后仍持续按内存计费约7分钟

**原文标题**: AWS Lambda Web Functions keep billing memory ~7 minutes after the last request

**原文链接**: [https://www.easel.sh/blog/lambda-web-functions-idle-memory](https://www.easel.sh/blog/lambda-web-functions-idle-memory)

Easel.sh 团队测试 AWS Lambda Web Functions 时发现，执行环境在最后一次请求结束后仍持续运行并计费内存 5–7 分钟（实测 313–411 秒），且无空闲超时配置项。对仅偶发少量请求的应用而言，内存计费时间可达实际请求时长的约 1700 倍，内存成本占算力总成本约 88%。Easel 需支撑数千个流量不可预测的独立应用，该计费模式经济性不佳，遂决定自建计算基础设施：应用运行于自有服务器，Lambda 仅处理溢出流量。基准测试（同一 Next.js 16 应用，弗吉尼亚州单区域，2026 年 11 月）显示，Easel 自建服务器在四项任务中 warm 请求中位延迟快 1.5–3 倍，12 分钟空闲后冷启动快 3.5 倍。文章强调结果基于单区域小样本，尚属初步；并指出 Web Functions 对流量稳定的应用仍适用，但大规模低流量场景下，自建在成本与性能上均具优势。

---

## 21. 我们的软件工程面试正在微调

**原文标题**: Our software engineering interviews are changing a little

**原文链接**: [https://blog.janestreet.com/software-engineering-interviews-are-changing-a-little/](https://blog.janestreet.com/software-engineering-interviews-are-changing-a-little/)

Jane Street发布博文，宣布其软件工程面试将作小幅调整。随着大语言模型深度融入日常开发，代码生成成本大幅降低，工程师核心能力正从"写代码"转向对构建目标的品味、持久抽象的选择及代码正确性的验证。为此，公司今夏起在校园招聘现场面试中试点新形式：减少实际编码，侧重软件设计、代码质量与结构审查、借助LLM生成代码等更高层次的考察。大部分轮次仍为无需AI辅助的传统编程面试。公司坦言新形式仍在探索中，暂不公布具体细节，到场时会提前告知安排。同时强调：并非所有现场面试都含新环节；不要求候选人具备成熟的LLM工作流，核心仍是考察良好的软件构建直觉，关注能否清晰思考各工具的优劣与适用场景。资深候选人面试将继续保持多样化风格。作者Matthew Saffer自2013年加入Jane Street，从事分布式系统基础设施与效率工具开发。

---

## 22. 消息人士称前英伟达CEO黄仁勋曾与第二位员工有染

**原文标题**: Former Nvidia CEO Huang had a relationship with a second employee, sources say

**原文链接**: [https://www.reuters.com/technology/former-nvidia-ceo-huang-had-relationship-with-second-employee-sources-say-2026-11-12/](https://www.reuters.com/technology/former-nvidia-ceo-huang-had-relationship-with-second-employee-sources-say-2026-11-12/)

无法访问该文章链接。

---

## 23. 苏格拉底式导师

**原文标题**: Socratic Tutor

**原文链接**: [https://github.com/janestreet/agent_skills/blob/master/socratic-tutor/SKILL.md](https://github.com/janestreet/agent_skills/blob/master/socratic-tutor/SKILL.md)

本技能定义了一套结构化苏格拉底式辅导流程，适用于用户明确要求"教我""考我""帮我掌握"的场景，而非一次性问答。核心方法是"产婆术"——以提问引导用户推理、预测与解释，而非直接讲授。流程分四阶段：（1）将主题拆分为4至10个子技能，构建0至5级技能地图（0为完全陌生，5为可教授他人）；（2）通过3至5道诊断题确定用户起点；（3）进入教学循环——每次仅提一个问题并等待回答，用户答错时不给答案而追问以暴露矛盾，连续2至3次失败才简短讲解并换角度复测；（4）所有子技能达标后执行综合终考。评估严格：升级需两次以上独立验证且含一次无提示回忆，模糊回答不算通过，答错则降级并复习；循环中穿插间隔复习以防遗忘。用户可随时调用命令：显示进度、调整难度、"直接告诉我"（仅当前题跳过苏格拉底模式）、保存状态、从存档恢复。整体设计强调不讨好、不夸大，以"不太对——若Y成立，X为何发生？"替代"很好，再试试"，确保用户达到真实掌握而非表面认同。

---

## 24. 新加坡称美国在疑似间谍公司调查中未提供协助

**原文标题**: Singapore Says U.S. Not Helpful on Investigation into Suspected Spy's Company

**原文链接**: [https://www.nytimes.com/2026/11/12/business/nvidia-megaspeed-alice-huang.html](https://www.nytimes.com/2026/11/12/business/nvidia-megaspeed-alice-huang.html)

新加坡政府周四发表声明称，美国在调查疑似间谍黄莉斯（Alice Huang）及其新加坡注册公司Megaspeed一事上协助极为有限。新加坡当局以公司存在"虚假申报"为由，自2025年6月起扣留黄莉斯护照至次年二月，最终因证据不足将其释放，给予"严厉警告"并禁止其再次入境。该案牵涉英伟达首席执行官黄仁勋，据报台湾自2024年起在美国政府指导下开始监控黄莉斯。声明指出，新加坡曾向英伟达合作伙伴、美国服务器制造商超微公司（Supermicro）索取信息，但对方"配合有限"；新加坡于2025年7月向美国司法部及联邦调查局请求协助，至今仍未获实质帮助。超微公司否认曾向Megaspeed销售任何产品，称其严格遵守出口管制法规。黄莉斯在审讯中淡化自身角色。此声明引发外界对特朗普政府的质疑——美方去年秋天已知悉黄莉斯可能为中国情报人员，却未积极介入。新加坡警方表示对Megaspeed的调查仍在继续。

---

## 25. Anthropic首次公开募股

**原文标题**: Anthropic IPO

**原文链接**: [https://ipo.anthropic.com/us/](https://ipo.anthropic.com/us/)

Anthropic是一家致力于AI安全与前沿研究的公共效益公司，现启动首次公开募股，股票将在纳斯达克上市，代码为"ANT"。公司认为AI是人类历史上最具变革性的技术之一，有望加速科学创新、推动经济增长并攻克重大难题。财务方面，截至2026年第三季度，Anthropic营收达170亿美元，同比增长超12倍；年消费超10万美元的客户逾11,900家，同比增超12倍；计算效率较2025年Q1提升逾4倍；调整后营业利润率达15%。净亏损23.3亿美元，主要因219亿美元非现金估值调整所致。公司客户覆盖多行业：法律科技公司Legora服务超1,500家律所；礼来公司超5万名员工使用其AI工具；乐天集团超70个业务单元接入AI；Salesforce开发者效率同比提升151%；沃尔玛AI助手推动客单价提升约35%。IPO路演于11月10日开始，预计11月18日确定发行价，11月19日正式上市交易。投资者可通过经纪平台提交认购意向，最终配售情况以首日交易确认为准。

---

## 26. LibreAGI – 守护开源模型

**原文标题**: Libreagi – Save OSS Models

**原文链接**: [https://libreagi.com/](https://libreagi.com/)

LibreAGI是一个仅限成员的私有BitTorrent追踪器，旨在为开源AI模型提供持久保存，确保开放权重的模型不因托管平台关闭而失传。成员通过申请加入，使用mktorrent工具上传模型。平台采用稀缺性激励机制：副本越稀少，信用增速越高，仅存一份的模型可获四倍基础速率奖励，稀有模型得到更多帮助。上传要求模型来自已知来源，支持safetensors、GGUF、ONNX等格式，许可证须为Apache-2.0、MIT或Qwen社区许可证；每个文件均与源提交记录校验，经人工审核后方可入库。项目同时维护一份签名的公开目录，记录所有模型的哈希值与来源，确保即使站点消失，公众仍可据此重建共享网络。此外，LibreAGI开放公共IRC频道（irc.libreagi.com，端口6697，TLS加密，频道#libreagi-public），无需账号即可交流提问，方便潜在成员在申请前了解详情。

---

## 27. 启动控制台上 systemd 任务的实时树状视图

**原文标题**: A live tree of systemd jobs on the boot console

**原文链接**: [https://codeberg.org/wvhulle/bootvine](https://codeberg.org/wvhulle/bootvine)

无法访问该文章链接。

---

## 28. Linux 下 PCIe 交换机后为四张 GPU 配置 32 GB 可重设 BAR

**原文标题**: Fitting Four 32 GB Resizable Bars Behind a PCIe Switch on Linux

**原文链接**: [https://doug.sh/posts/gpu-bars-behind-a-pcie-switch/](https://doug.sh/posts/gpu-bars-behind-a-pcie-switch/)

作者在 Broadcom PEX88096 PCIe 交换机后挂载四张 AMD R9700 与两张 RTX 3090，目标是使 ROCm P2P 通信生效，需每张 R9700 获得完整 32 GB 可重设 BAR。BIOS 无法为六卡同时分配 32 GB BAR，遂转由 Linux 内核完成。然而 Linux 7.0 存在桥窗口计算回归缺陷：pbus_size_mem() 未计入大 BAR 与 doorbell BAR 之间因对齐产生的间隙，交换机窗口被低估，四张 R9700 仅两张成功映射。作者编写外核模块 gpu-rebar-layout（已开源至 GitHub），在 initramfs 阶段、GPU 驱动加载前完成 BAR 设值，将小 BAR 对齐提升至同段最大 64 位 BAR 尺寸，再移除根端口并重扫，使每张 R9700 窗口精确为 64 GB。内核维护者 Ilpo Järvinen 已提交 14 补丁系列修复该对齐缺陷（v5），尚未合入主线，合入后此板仍需该模块完成 BAR 设定与重扫。最终四张 R9700 均获 32 GB BAR，amdgpu 完整识别显存，P2P 带宽达 14 GB/s（单对）与 54.7 GB/s（四卡环形），达到 Gen4×8 链路实际上限。

---

## 29. 碎片化的路径

**原文标题**: Paths in Pieces

**原文链接**: [https://stoppels.ch/2026/11/12/paths-in-pieces.html](https://stoppels.ch/2026/11/12/paths-in-pieces.html)

Linux 各发行版和包管理器常在构建后审计二进制文件，检查是否残留不可重定位的绝对路径，但作者发现用 GCC 编译时此检测并不可靠。GCC 优化器会将字符串常量按 16 字节（SSE2）、32 字节（AVX2）或 64 字节（AVX-512）切分为重叠片段，存入常量区并通过向量寄存器指令拷入目标缓冲区，导致原始路径不再以完整形式出现在二进制中，grep 和 strings 均无法检出。若路径含重复子串（如 Conda 的 _placehold 填充），GCC 还会对重复片段去重，仅保留一份。相比之下，Clang 将完整字符串存入只读数据段，仅用重叠的向量指令拷贝，路径始终完整可见。作者分析认为，GCC 此优化性能收益微乎其微，却可能因对齐和重叠而增大二进制体积，更损害了 strings 等工具的可读性和路径审计的可靠性。目前无法完全禁用该行为（-mstore-max=128 仅恢复旧默认），作者已向 GCC 社区提交补丁，建议增加关闭选项。文章强调，保持路径完整存储对二进制补丁（如 Conda、Spack 安装期路径替换）及调试工具体验仍有不可替代的价值。

---

## 30. 船用电动电池有望实现紧凑高效、低温运行

**原文标题**: Electric ship batteries promise compact, cooler power

**原文链接**: [https://spectrum.ieee.org/electric-ship-batteries](https://spectrum.ieee.org/electric-ship-batteries)

摘要：Xing Mobility公司正向造船商推介其名为Immersio CTP的船用电池系统。该技术采用全浸没式液冷设计，将电池单体完全浸入冷却液中，从而大幅提升能量密度，并有望从根本上消除热失控风险。相比传统风冷或常规液冷的船用电池，该系统在体积与散热性能上具有显著优势，可为船舶提供更紧凑、更安全的动力解决方案。目前，该技术主要在陆地场景中完成验证，Xing Mobility正将其向海洋运输领域拓展。文章发表于IEEE Spectrum旗下交通新闻栏目，作者为Willie D. Jones，发布于2026年11月。随着全球航运业加速脱碳，高能量密度、高安全性的船用动力电池成为关键需求，浸没式冷却技术被视为突破现有瓶颈的重要路径之一。

---

