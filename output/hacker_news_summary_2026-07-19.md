# Hacker News 热门文章摘要 (2026-07-19)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. Qwen 3.8

**原文标题**: Qwen 3.8

**原文链接**: [https://twitter.com/Alibaba_Qwen/status/2078759124914098291](https://twitter.com/Alibaba_Qwen/status/2078759124914098291)

**概要：**

阿里巴巴Qwen团队宣布即将推出**Qwen 3.8**模型，该模型将采用开放权重。该模型拥有庞大的**2.4万亿参数**，并被描述为持续进化。据公告称，Qwen 3.8是目前最强大的模型之一，可与前沿AI模型相媲美，仅次于“Fable 5”。

用户无需等待即可测试该模型；**Qwen3.8-Max-Preview**版本已率先登陆阿里巴巴的Token Plan、Qoder和QoderWork平台。团队邀请用户抢先体验。公告分别提供了国际用户（通过qwencloud.com）和中国用户（通过platform.qianwenai.com）的定价链接。帖子最后表达了团队对用户将利用该模型构建出何种成果的兴奋之情。

---

## 2. Claude Code现采用Rust编写的Bun

**原文标题**: Claude Code uses Bun written in Rust now

**原文链接**: [https://simonwillison.net/2026/Jul/19/claude-code-in-bun-in-rust/](https://simonwillison.net/2026/Jul/19/claude-code-in-bun-in-rust/)

**摘要：**

文章报道称，Anthropic 的 Claude Code v2.1.181（2026年6月17日发布）使用了 Bun 的 Rust 移植版本，而非基于 JavaScript 的原始 Bun 运行时。这一变化由 Jarred Sumner 在其文章《用 Rust 重写 Bun》中宣布，声称在 Linux 上启动性能提升了10%，但除此之外几乎未被注意。

作者通过检查自己的 Claude Code 安装验证了这一说法。使用命令 `strings ~/.local/bin/claude | grep -m1 'Bun v1'` 后，发现输出为 "Bun v1.4.0 (macOS arm64)"——版本号高于公开发布版（v1.3.14）。这表明 Claude 正在搭载一个未发布 Bun 版本的预览版（后来被确认为 Rust 重写版，现在可通过 `bun upgrade --canary` 作为 "Bun canary" 获取）。

进一步证据来自搜索 `.rs` 文件扩展名，结果输出了563个 Rust 源文件（例如 `src/runtime/bake/dev_server/mod.rs`），证实二进制文件中包含 Rust 代码。Ajan Raj 提供的一个巧妙技巧是运行 `BUN_OPTIONS="--preload=/tmp/bun-version.ts" claude --version`，以输出内置的 Bun 版本号（1.4.0）。

文章总结道，用 Rust 编写的 Bun 现在正在数百万台设备上投入生产使用，呼应了 Sumner 的观点：“无聊是好事。”一份来自5月17日的引用提交显示，package.json 中的版本已更新至1.4.0，但尚未出现在金丝雀版本之外的标记版本中。

---

## 3. Minecraft：Java版现已采用SDL3

**原文标题**: Minecraft: Java Edition now uses SDL3

**原文链接**: [https://www.minecraft.net/en-us/article/minecraft-26-3-snapshot-4](https://www.minecraft.net/en-us/article/minecraft-26-3-snapshot-4)

**《我的世界：Java版 26.3 快照 4》** 标志着窗口管理、输入及平台集成从 GLFW 切换至 **SDL3**。主要变化包括：

- **窗口化与输入变化：** 无边框全屏现为默认模式；切换模式无需重启。macOS 上移除了独占全屏。Linux 原生优先使用 Wayland。按键绑定现使用物理按键（扫描码）而非布局特定的键码。

- **新数据组件：** `cooking_fuel` 和 `brewing_fuel` 物品（含燃烧时间/速度）、`sign_text_front/back`、`waxed`、`villager_food` 以及 `mob_visibility`（影响侦测范围）。

- **技术更新：** 数据包版本 111.0；资源包版本 92.0。除非 `allow_op_features` 为 true，告示牌不再自动执行点击事件。

- **进度与触发器：** 许多字段现支持内联值、命名空间 ID、列表或标签 ID 用于谓词、战利品表和方块类型。`spreadplayers` 现使用 `#entities_can_teleport_to` 方块标签。

- **环境属性：** 新增 `natural_mob_spawns`（生成类别与消耗）和 `creature_world_gen_spawn_probability`。

- **已知问题：** 在 Windows 多显示器设置及 Wayland 上，独占全屏可能崩溃。

- **其他：** 创造模式物品栏重新排序；旁观模式玩家可使用传送门。调试覆盖层现拥有独立的 GUI 缩放并显示玩家速度与刷新率。

---

## 4. 售出2500台MIDI录音机所学到的：硬件并非如此艰难

**原文标题**: What I learned selling 2,500 MIDI recorders: Hardware is not so hard

**原文链接**: [https://chipweinberger.com/articles/20260719-hardware-is-not-so-hard](https://chipweinberger.com/articles/20260719-hardware-is-not-so-hard)

文章描述了作者设计并销售2500台MIDI录音设备Jamcorder的经历。最令人意外的是，硬件开发竟比预期顺利——这与"硬件难做"的普遍认知截然相反。作为软件背景出身的人，作者发现从PCB设计、注塑成型到整机组装等硬件环节都进展顺畅，既无生产批次报废事件，也未曾遭遇元器件短缺问题。真正的挑战在于软件开发：涵盖固件、应用程序和制造工具在内的近20万行代码，耗时超过三年。作者将硬件成功归因于刻意简化设计——仅使用25种独有组件，单颗螺丝完成组装，甚至舍弃了USB-C接口和低电量检测等功能。针对硬件量产的实际建议包括：精简物料清单(BOM)、避免采用独家供应商元器件、与中方供应商合作、保持至少70%的毛利率、维持轻资产运营、制定防伪策略、执行内部最终质检、量产前索要样品验证、编写详尽的组装指南、控制包装体积。核心启示在于：硬件难度与复杂度成正比，采用简约设计并保证利润空间，完全可以让制造流程变得可控。

---

## 5. 英国雷利花园15年后香蕉树发芽

**原文标题**: Bananas sprout in Rayleigh Garden UK after 15 years

**原文链接**: [https://www.bbc.com/news/articles/cvg8edqq5g5o](https://www.bbc.com/news/articles/cvg8edqq5g5o)

埃塞克斯郡雷利镇的一对夫妇种植的200棵香蕉树历经15年终于结果，令他们惊喜不已。彼得和艾玛·斯塔夫将这一成功归因于英国夏季变暖、冬季温和，形成了有利的微气候。他们种植的香蕉树（通常需要防寒保护）已长至近3米高，且未经过冬包裹便结出果实。皇家园艺学会园艺专家盖伊·巴特指出，橄榄、无花果、杏等喜热植物正蓬勃生长，而鹅莓、大黄等英国传统作物却生存艰难。萨福克郡一位76岁老人的香蕉树也首次结果。植物学家詹姆斯·王证实，英国气温升高使香蕉种植"非常容易"，但此类香蕉并不适合食用——他形容其口感"像嚼了一口混着半茶匙香蕉味的滚珠轴承"。尽管香蕉种植仍属小众，王表示这对植物爱好者而言并不意外。文章指出，气候变化可能导致英国花园中出现新果类，而部分传统作物则会逐渐减少。

---

## 6. 并发编程之道

**原文标题**: The Zen of Parallel Programming

**原文链接**: [https://smolnero.com/posts/the-zen-of-parallel-programming](https://smolnero.com/posts/the-zen-of-parallel-programming)

**摘要**

本文将计算机领域的并行编程与人类的内在协调性进行了类比。文中指出，增加处理器数量并不能自动提升效率；问题必须被分解，处理器之间需要有效沟通、同步并共享工作负载，以避免过载或资源争抢。同理，一个人或许拥有智力、情感、记忆和创造力，但当这些内在的“部件”无法协同运作时——当思想、身体和情感相互隐瞒信息，导致内在冲突、焦虑和倦怠——这个人同样会陷入困境。

作者运用了禅宗哲学的理念，具体来说是指“薪尽火灭、无有遗烬”的意象，借此说明未被处理的经历会持续消耗精神能量。诚实的内部沟通就如同同步机制：当思想、情感与行动真实一致时，它们便能和谐地协同前进。核心洞见在于：我们最大的局限并非力量不足，而是力量与自身对抗——无论是在计算机系统中，还是在人类自身。

---

## 7. Blender 5.2 LTS

**原文标题**: Blender 5.2 LTS

**原文链接**: [https://www.blender.org/download/releases/5-2/](https://www.blender.org/download/releases/5-2/)

本文宣布**Blender 5.2 LTS**将于2026年7月14日发布，重点介绍了几何节点、物理系统、Cycles、EEVEE、合成器和资源方面的重大更新。

**几何节点**新增了通过*采样声音频率*节点实现的音频驱动动画、用于程序化边缘控制的*网格倒角*节点，以及一套基于XPBD求解器的新型**节点式物理系统**，用于模拟布料与毛发动力学。该系统包含效果器（碰撞体、力场、自定义效果器）及标签过滤机制。新增数据类型包括**列表**和**字符串字段**，并增加了属性、集合、NURBS控制等节点，同时改进了节点工具。

**Cycles**引入了*纹理缓存*以减少内存占用和启动时间，并在原理化BSDF中新增*薄壁*模式，实现精确的薄材料渲染。**色彩管理**增加了多种相机品牌的输入色彩空间。

**EEVEE**性能大幅提升（在实例密集型场景中速度提升2倍），减少了条带伪影，改进了屏幕空间光线追踪，并修复了全局光照、阴影和运动模糊等问题。

**资源**方面，现可通过*精华*素材库获取在线参数化材质、HDR贴图和节点预设，并支持用户自建仓库。

**合成器**新增35个节点和六种新型插槽类型（矩阵、旋转、字符串等），同时引入了新的合成资源、自动关键帧工具及性能优化。

---

## 8. C64基础地牢探险：哥布林袭击（C64基础第8部分）

**原文标题**: C64 Basic Dungeon Crawler: Goblin Attack (C64 Basic Part 8)

**原文链接**: [https://retrogamecoders.com/c64-basic-dungeon-part8/](https://retrogamecoders.com/c64-basic-dungeon-part8/)

无法访问该文章链接。

---

## 9. OpenAI将Codex模型上下文大小从372k降至272k

**原文标题**: OpenAI reduces Codex Model Context Size from 372k to 272k

**原文链接**: [https://github.com/openai/codex/pull/33972/files](https://github.com/openai/codex/pull/33972/files)

**概要：**

该文章报道称，OpenAI 已将 Codex 模型的上下文规模从 372k token 减少至 272k token，降幅达 10 万 token。此项变更是“反向移植刷新后的捆绑模型元数据”更新的一部分，通过 GitHub 拉取请求 #33972 于 2026 年 7 月 18 日合并至 `release/0.144` 分支。此次提交由 sayan-oai 完成，包含 64 处新增和 54 处删除。

该页面显示了一个带有加载错误警告的 GitHub 界面，表明查看完整差异或评论时可能存在潜在问题。拉取请求标题表明该更新专门用于刷新捆绑模型元数据，暗示这可能是一个小版本热修复，而非重大版本发布。

**关键点：**
- 上下文规模从 372k token 减少至 272k token。
- 针对 Codex 模型的更新已通过 GitHub PR #33972 应用。
- 已合并至 `release/0.144` 分支。
- 描述为“反向移植刷新后的捆绑模型元数据”。
- 页面显示加载错误，可能影响查看完整细节。

---

## 10. HMD Touch 4G

**原文标题**: HMD Touch 4G

**原文链接**: [https://www.hmd.com/en_int/hmd-touch-4g](https://www.hmd.com/en_int/hmd-touch-4g)

**HMD Touch 4G**是一款配备**鲜艳触控屏**、支持**流畅滚动**的手机。文章内容主要突出了该设备的核心用户界面特性：一块响应灵敏、显示清晰、专为流畅导航设计的屏幕。

---

## 11. 家庭实验室 #1：使用MikroTik作为家庭路由器

**原文标题**: HomeLab #1: MikroTik as a Home Router

**原文链接**: [https://justsomebody.dev/blog/mikrotik-home-router](https://justsomebody.dev/blog/mikrotik-home-router)

本文介绍如何将MikroTik L009UiGS-RM设置为家用路由器，以实现更佳的网络控制、性能与安全性。

**关键步骤与信息：**

1.  **运营商需求：** 作者指出，设置取决于两个因素：认证方式（通过DHCP或PPPoE的IPoE，有时需通过VLAN）以及WAN IPv4类型（公网IP、私有IP/CGNAT或DS-Lite）。对于入站连接，必须使用公网IPv4。作者所用的运营商通过VLAN 35提供PPPoE服务，并分配私有IPv4地址。

2.  **初始路由器设置：** 上电并通过WinBox登录后，作者更改了默认密码。

3.  **WAN配置：** 作者将光猫（ONT）连接至端口1，将原运营商路由器的MAC地址克隆到ether1端口，在ether1上创建VLAN接口（ID 35），并使用运营商提供的凭据设置PPPoE客户端。

4.  **WiFi设置：** 通过端口8的PoE为独立的wAP接入点供电。在MikroTik上集中配置CAPsMAN以管理该AP，并分别设置2.4 GHz和5 GHz的配置。

5.  **缓冲区膨胀修复：** 作者在流量高峰时（游戏、iOS更新、备份）遇到延迟问题。解决方案是采用FQ-CoDel（公平队列控制延迟）。他们创建了一个采用FQ-CoDel的队列类型，并将简单队列应用于PPPoE输出接口。最大限制设置为**实际线路速度的90–95%**，以保持瓶颈在本地且可控。通过在各数据流之间公平分配带宽，有效降低了拥塞时的延迟。

**成果：** 构建了一个稳定、低延迟的家庭网络，实现了集中式WiFi管理与高效的流量整形。

---

## 12. Cagire：Forth语言中的实时编码

**原文标题**: Cagire: Live Coding in Forth

**原文链接**: [https://cagire.raphaelforment.fr](https://cagire.raphaelforment.fr)

Cagire 是一款由独立开发者创作的免费开源、基于Forth语言的实时编码步进音序器。与传统音序器不同，它的每个步骤包含的是Forth脚本而非音符数据，用户可自行定义脚本功能——生成声音、触发采样、应用效果或保持静默。该软件内置名为Doux的音频引擎，配备振荡器、采样播放器、滤波器、混响、延迟、失真等功能，无需外部软件支持。

软件内置交互式文档，包含可运行示例，并提供涵盖界面、两种类Forth语言（Forth与用于自定义DSP的Arf）及声音引擎的可打印手册。核心功能包括：合成、采样、滤波器、效果器、调制、概率控制、音序编排、现场表演工具、MIDI、OSC、Ableton Link、录音、可视化特效，并支持跨平台运行（macOS/Linux/Windows）。

Cagire专为实时编码设计——这是一种通过即时编写代码创造音乐或视觉的表演性自驱实践。项目通过Ko-fi捐赠获得支持，确保在免费许可协议（AGPL-3.0）下持续开发。

---

## 13. UnifiedIR 的 Julia 实现

**原文标题**: UnifiedIR for Julia

**原文链接**: [https://github.com/JuliaLang/julia/pull/62334](https://github.com/JuliaLang/julia/pull/62334)

本文介绍了一项针对Julia编译器的重大架构变更提案**UnifiedIR**，由Keno在GitHub拉取请求中提出。

**核心要点：**

- **问题：** 当前已有十年历史的Julia IR（中间表示）数据结构难以使用、缺乏扩展性，且从未设计用于外部场景，导致用户不得不采用权宜之计或自行构建IR。

- **解决方案：** UnifiedIR是一个全新的顶级包，提供**自包含、可扩展、支持方言感知与区域化**的IR（类似MLIR，同时保留了Julia原始设计的优点）。

- **适用范围：** 旨在替代SyntaxTree、SyntaxGraph、CodeInfo、IRCode及各类生态IR。

- **核心特性：**
  - 每条语句支持**可扩展列**，并提供面向不同场景的**分层视图**。
  - 为结构化控制流（if/loop/try）提供**一等公民的区域支持**，并简化与MLIR的集成。
  - 内置增量编译视图、类LLVM的CFG变换、面向数组编译器的图嵌入，以及用于降级的树编码。

- **实现进展：** 该PR已将推理、优化器和JuliaLowering迁移至UnifiedIR。目前尚未完成自举，但已通过约半数测试套件。

- **示例输出：** 展示了结构化区域化IR，包含`result`终结符和单元操作，以`if/else`控制流替代原始的goto语句。

该PR包含测试、溯源演示，以**供讨论的预览版本**形式呈现，仍有诸多待完成工作。

---

## 14. Transcribe.cpp

**原文标题**: Transcribe.cpp

**原文链接**: [https://workshop.cjpais.com/projects/transcribe-cpp](https://workshop.cjpais.com/projects/transcribe-cpp)

以下是文章的简洁摘要：

作者宣布推出 **transcribe.cpp**，这是一个用于本地、跨平台语音转文本的新库。它的诞生源于在使用 whisper.cpp 或 ONNX 等现有工具分发 ASR 应用时遇到的挫折，这些工具往往缺乏性能、对模型支持不广泛，或维护不可靠。

Transcribe.cpp 使用 **ggml** 实现加速，支持 Vulkan、Metal、CUDA 和 TinyBLAS。它支持 **16个 ASR 模型系列**（60 多个模型），每个模型都经过 **数值验证** 并与参考实现进行了 WER 测试。主要功能包括流式处理、批量转录，以及作为 whisper.cpp 的 **即插即用替代品**。

为确保广泛分发，该库附带了 **官方绑定**，支持 Python、JavaScript/TypeScript、Rust 和 ObjC/Swift。该项目直接源于作者维护 **Handy** 语音转文本应用的经验，确保了长期承诺。

作者感谢 Mozilla AI、ggml、Modal、Blacksmith 和 Hugging Face 的支持。他承认在代码中使用了 AI 辅助，但本文由本人撰写。核心使命是让本地、私密且高效的 ASR 更易于全球开发者和用户使用。

---

## 15. Kagi出品的Orion浏览器

**原文标题**: Orion Browser by Kagi

**原文链接**: [https://orionbrowser.com/](https://orionbrowser.com/)

Kagi公司开发的Orion浏览器是一款基于纯WebKit引擎、专注隐私保护的网页浏览器。它通过消除遥测技术实现"零妥协"浏览体验，即不会向开发者回传任何用户数据。该浏览器内置广告拦截与反追踪功能以防止监控。值得注意的是，它不收集任何用于AI训练或其他用途的数据，确保用户活动不存在任何隐蔽监控。其核心卖点是在不牺牲性能与功能的前提下提供完整的隐私保护。

---

## 16. 最后一项MPEG-4视觉专利已过期

**原文标题**: The Last MPEG-4 Visual Patent Has Expired

**原文链接**: [https://www.phoronix.com/news/Last-MPEG-4-Patent-Expired](https://www.phoronix.com/news/Last-MPEG-4-Patent-Expired)

文章宣布，最后一项MPEG-4视频专利已于2026年7月19日到期。尽管美国和欧盟的专利此前已失效，但最后一项有效专利在巴西：BRPI0109962B1，名为“随时间推移对连续图像信息进行存储和处理的方法”。VIA Licensing Alliance确认这是最后一项MPEG-4第二部分专利。由于MPEG-4技术的广泛应用，该项专利的到期标志着重要里程碑。

---

## 17. 月之暗面AI因Kimi K3需求暂停新订阅服务

**原文标题**: Moonshot AI suspends new subscriptions due to Kimi K3 demand

**原文链接**: [https://twitter.com/kimi_moonshot/status/2078855608565207130](https://twitter.com/kimi_moonshot/status/2078855608565207130)

**摘要：**  
Moonshot AI 因其 Kimi K3 服务在过去 48 小时内需求激增，GPU 容量已达极限，暂时暂停新订阅。现有用户不受影响，公司优先为其保障算力资源，同时快速扩充容量。新订阅名额将分批重新开放。为提升稳定性与资源分配，Moonshot AI 将把会员服务拆分为两种聚焦方案：**Kimi 会员**（适用于网页、应用及办公）和 **Kimi 代码会员**（适用于编程工作流）。公司感谢用户的耐心与理解。

---

## 18. 土地图集——土地挂牌信息中的土壤、可耕种性及作物分析

**原文标题**: Land Atlas – soil, farmability, and crop analysis for land listings

**原文链接**: [https://land-atlas-production.up.railway.app/welcome](https://land-atlas-production.up.railway.app/welcome)

**《土地图集》简介**

Land Atlas 是一款浏览器扩展，可为购房者提供自动化土地情报，利用 USDA 土壤调查、FEMA 洪泛区和 OpenStreetMap 等公共数据源分析房源信息。

**主要功能：**
- **土壤分析：** 基于整个地块的面积加权土壤质量，而非单点数据。
- **适耕性评分：** 综合土壤、气候和风险因素的 0–100 分评分，并附有 16 种适种作物的排名列表。
- **风险评估：** 洪泛区分类与湿地重叠分析，以揭示潜在隐患。
- **电网接入：** 到变电站、输电线路和高速公路的距离信息。
- **可比房源：** 与用户管道中类似房源的每英亩价格百分位排名对比。
- **项目工具：** 分组地块、导出 CSV 文件及打印分析报告。

**工作原理：**
1. 安装浏览器扩展。
2. 正常浏览土地房源；点击"捕获"即可自动保存标题、价格、面积和照片。
3. 在桌面端或移动端查看完整分析——土壤、气候、风险、电网接入和可比房源数据将在后台计算完成。

**透明度：** 所有评分均显示其数据来源，估值会标注说明，缺失图层也会明确标注。数据仅用于筛选参考，不可替代尽职调查。

在线提供已分析地块的实况演示。

---

## 19. 不到500KB的语音识别与文本转语音技术

**原文标题**: Speech Recognition and TTS in less than 500kb

**原文链接**: [https://github.com/moonshine-ai/moonshine/tree/main/micro](https://github.com/moonshine-ai/moonshine/tree/main/micro)

**Moonshine Micro 概览**

Moonshine Micro 是 Moonshine Voice 推出的开源 AI 工具包，旨在为微控制器等资源受限的嵌入式系统提供实时语音接口。该工具包以售价 0.80 美元的树莓派 RP2350 作为参考平台，整个语音处理流程——包括语音活动检测（VAD）、语音转文字（STT）和神经文本转语音（TTS）——仅需 **470 KB 的 RAM** 即可运行。

关键技术规格如下：VAD 占用约 89 KiB 闪存和约 36 KiB RAM；STT 需要约 1.3 MiB 闪存和约 346 KiB SRAM；TTS 需约 1.8 MiB 语音包和约 340 KiB SRAM。但由于各组件顺序运行，共享一个约 384 KiB 的 TensorFlow Lite Micro 运算区，总预配 RAM 仅约 468 KiB。该演示流程可在 0.7 至 1.0 秒内完成“分类并朗读”处理。

该工具包支持自定义词汇识别、通过语音设置 WiFi，并采用宽松的 MIT 许可证，可用于商业用途。每个组件（VAD、STT、TTS）均可独立使用，且均依赖集成的 TensorFlow Lite Micro 库。

---

## 20. 无限、不可能，与那位身着白色亚麻西装的男人

**原文标题**: Infinities, impossibilities, and the man in the white linen suit

**原文链接**: [https://iain.so/infinities-impossibilities-and-the-man-in-the-white-linen-suit](https://iain.so/infinities-impossibilities-and-the-man-in-the-white-linen-suit)

本文探讨了库尔特·哥德尔不完备定理对现代人工智能的持久影响。哥德尔证明，任何足够强大到能表达基本算术的数学系统，都包含无法在系统内证明的真命题——这揭示了基于规则系统的根本局限性。后来艾伦·图灵在此基础上证明，不存在通用方法能判定每个程序是否停机，从而奠定了现代计算机的理论基础。

文章追溯了人工智能发展如何逐渐偏离形式化保障。尤尔根·施密德胡伯提出的理论性"哥德尔机"要求每次自我改进都必须附有数学证明保证其益处，但这在实践中并不可行。2025年，Sakana AI公司推出的"达尔文哥德尔机"用基于经验的基准测试取代了数学证明，实现了自我改进，却丧失了"先天安全"特性。

此外，沙伊·本-大卫证明了"可学习性"概念本身也可能不可判定——机器能否学习某个问题，或许取决于关于无穷的不可解疑问（如连续统假设）。核心要旨是：哥德尔率先揭示的数学根本性限制，始终约束着人工智能所能提供的保障。该行业已从形式化确定性转向经验验证，这一转变对人工智能的安全性与可靠性具有深远影响。

---

## 21. 我加入了独立网络，以下是我的收获

**原文标题**: I joined the IndieWeb, here's what I learned

**原文链接**: [https://en.andros.dev/blog/0b8e451e/i-joined-the-indieweb-heres-what-i-learned/](https://en.andros.dev/blog/0b8e451e/i-joined-the-indieweb-heres-what-i-learned/)

**《我加入独立网络后的心得》摘要**

本文介绍了独立网络（IndieWeb）——一场以人为本的运动，倡导个人网站和用户自有内容，作为集中式企业平台（"数据孤岛"）的替代方案。该运动始于2010年首届独立网络营（IndieWebCamp）。其核心原则是：拥有你的数据，将其存放在你控制的域名上，并为长期可持续性而构建。

关键技术标准包括：
- **你的域名**作为主要身份标识。
- **microformats2**——在HTML中添加机器可读数据（例如，`h-card`用于身份标识，`h-entry`用于帖子），使你的网站成为你的API。
- **rel="me"**——在你的网站与社交档案之间建立经过验证的身份链接。
- **Webmention**——W3C标准，无需中心平台即可实现跨网站对话（评论、点赞）。
- **IndieAuth**——使用你自己的域名URL登录。
- **Micropub**——通过第三方客户端向你的网站发布内容。
- **WebSub**——实时订阅源通知。
- **Microsub**——一种解耦的社交阅读器架构。

发布策略是**POSSE**（在自己的网站上发布，在其他地方同步），确保你内容的权威副本始终存在于你的域名上。

作者总结道，采用这些标准改善了其网站的用户体验，过程令人愉快，并有助于维护一个健康、能够抵御平台关闭风险的互联网。

---

## 22. 家庭服务器的消亡与重生

**原文标题**: The death and rebirth of my home server

**原文链接**: [https://sgt.hootr.club/blog/home-server-rebirth/](https://sgt.hootr.club/blog/home-server-rebirth/)

作者描述了其家庭服务器（一台运行 NixOS 的树莓派 4B）的“死而复生”过程。经过数年近乎全天候运行，加之一次停电事件，其 microSD 卡最终损坏。由于重要文件存储在外部硬盘上，且 NixOS 配置已备份，因此没有关键数据丢失。

为重建系统，作者采取了强有力的预防措施：

-   **最大限度减少 microSD 写入：** 启用 zram 作为压缩内存交换分区；使用内存盘（`tmpfs`）作为 `/tmp`；将 journald 设置为易失性存储；并禁用根文件系统的 atime。
-   **创建冗余存储池：** 将两块旧的 2.5 英寸硬盘（500GB 和 320GB）重新利用，组建一个名为“ポンコツ”的 btrfs RAID1 池，以实现数据和元数据的冗余。
-   **使用 btrfs 子卷：** 通过自制的 NixOS 模块（`autosubvol`）为每个服务（例如 Immich、cache）创建一个子卷，实现清晰、声明式的管理。
-   **设置备份：** 集成 restic 与 sops-nix，将重要数据（例如 Immich）加密备份到 S3 存储桶。
-   **管理权限：** 创建一个带有 setgid 权限的 `media` 组，使 Transmission、Jellyfin 和 Navidrome 等服务能够共享访问 Linux ISO 文件。
-   **更换新 microSD：** 使用一张 64GB 的“高耐久”存储卡，以降低写入压力。
-   **未来计划：** 通过 btrfs 定期清理来实现监控，未来可能扩展至 Prometheus/Grafana。

该系统基于自制的 NixOS SD 卡镜像重建，连接了新的 UPS，并得以快速重新部署。

---

## 23. 模组玩家在《侠盗猎车手：圣安地列斯》的游戏中电视上运行《侠盗猎车手III》

**原文标题**: Modder Runs GTA III Inside GTA: San Andreas on an In-Game TV

**原文链接**: [https://videocardz.com/newz/modder-runs-gta-iii-inside-gta-san-andreas-on-an-in-game-tv](https://videocardz.com/newz/modder-runs-gta-iii-inside-gta-san-andreas-on-an-in-game-tv)

**摘要：**

一位名为“xPro_95”的模组作者实现了一项卓越的技术创举：将原版《侠盗猎车手III》完整地“嵌入”《侠盗猎车手：圣安地列斯》中，并通过游戏内的电视机进行显示。该项目名为“GTA：圣安地列斯——在电视上可玩的GTA III”，它利用自定义模组，将前作渲染为可在2004年这款游戏中完全游玩的视频流。

为实现这一目标，该模组作者采用了虚拟化技术。《GTA III》实际上作为同一台电脑上的一个进程运行，其输出被模组捕获，并渲染到《圣安地列斯》中的一台电视机模型上。玩家随后可以使用键盘控制，既移动自己在《圣安地列斯》中的角色，又同时操控屏幕上显示的《GTA III》画面。尽管由于同时运行两款游戏的开销导致帧率较低，但该模组成功实现了包含任务和音频在内的完整游戏流程直播。

制作者已在GitHub上免费发布该模组，但用户需要拥有正版《GTA：圣安地列斯》并持有《GTA III》。该项目突显了模组社区通过嵌套虚拟环境，挑战老旧游戏引擎极限的创造力。

---

## 24. 为Holo Core构建Arch Linux Aarch64移植版

**原文标题**: Building an Arch Linux Aarch64 Port for Holo Core

**原文链接**: [https://www.collabora.com/news-and-blog/news-and-events/building-an-arch-linux-aarch64-port-for-holo-core.html](https://www.collabora.com/news-and-blog/news-and-events/building-an-arch-linux-aarch64-port-for-holo-core.html)

**摘要：** Collabora 与 Valve 合作，为 Arch Linux 开发了一个早期的 aarch64 移植版本，名为 Holo Core，旨在用于 Steam Frame 的 aarch64 CPU。由于 Arch Linux 缺乏官方 aarch64 支持，Collabora 构建了自定义工具和 CI 基础设施以创建可用的软件包树。该预览版包含已发布的二进制文件、源码以及用于实验的 Docker 容器。

构建此移植版本涉及解决两个核心问题：为 aarch64 交叉编译最新的 Arch 软件包，以及创建能够跟踪滚动发布发行版的 CI 系统。挑战包括根据依赖树计算正确的构建顺序、管理 SONAME 转换（例如针对 pacman）、处理对时间敏感的上游变更（源地址变动、校验和更改），以及处理与 aarch64 不兼容的软件包。团队开发了一种“构建重放模型”，能够从初始引导重建完整的构建链直至特定快照，从而确保 CI 中的可重现性——不过该工具尚未公开。

该快照用作概念验证，证明该基础设施能够支持产品发布。下一步计划包括构建一个持续跟踪 Arch Linux 更新的系统，并与上游 Arch 项目合作推进官方 aarch64 支持以及自动化可重复构建。用户可以在 aarch64 硬件上或通过 x86_64 上的 QEMU 模拟来测试此移植版本。

---

## 25. 《法典重启》

**原文标题**: Codex Resets

**原文链接**: [https://codex-resets.com/](https://codex-resets.com/)

**摘要：**

本文记录了OpenAI代表（@thsottiaux）通过X（原推特）公布的一系列《Codex》使用限额重置情况，突显了因用户快速增长、服务宕机和系统问题导致的重置频繁发生。

**关键要点包括：**

- **里程碑式重置：** 为庆祝周活跃用户达到里程碑（300万、700万、800万、900万用户）及产品周年纪念，使用限额被重置。
- **事件补偿：** 因服务宕机、高延迟、性能缓慢及导致使用量超预期消耗的漏洞（如缓存命中率优化回滚），重置作为致歉措施发布。
- **系统更新：** 重大版本发布（插件、100美元计划、GPT-5.5/5.6 Sol）及底层系统重写时伴随重置。
- **存储重置：** 用户偶尔能获得可自行安排时间的“存储”重置，可通过桌面应用、网页和移动端使用。
- **高频操作：** 代表在约6个月内发布了数十次重置，通常每周多次，将其视为常规操作（“你懂的”）并有时趣味化（“氛围不错”）。
- **基础设施压力：** 重置反映了巨大的扩展挑战，团队以“光速迭代”来确保系统在前所未有的流量下保持可靠。

---

## 26. GCC和Clang都未完全符合标准C++规范。

**原文标题**: Neither GCC nor Clang are compliant with standard C++

**原文链接**: [https://sebsite.pw/w/20260708-badstdcxx.html](https://sebsite.pw/w/20260708-badstdcxx.html)

无法访问文章链接。

---

## 27. 数学家仍未找到乘法运算的最快方法

**原文标题**: Mathematicians still don't know the fastest way to multiply numbers

**原文链接**: [https://www.scientificamerican.com/article/mathematicians-still-dont-know-the-fastest-way-to-multiply-numbers/](https://www.scientificamerican.com/article/mathematicians-still-dont-know-the-fastest-way-to-multiply-numbers/)

**摘要：**

本文探讨了乘法最快运算方式这一未解的数学谜题。虽然小学算法需要O(n²)步（位数翻倍时耗时变为四倍），苏联数学家安德雷·柯尔莫哥洛夫曾认为这就是速度极限。1960年，学生阿纳托利·卡拉楚巴通过发明一种用更快的加法运算替代乘法运算的算法推翻了这一观点，实现了O(n^1.585)步。他的方法递归分割数字，将四次乘法减少为三次，显著加速了计算机中用于大数计算的进程。

这引发了一场持续数十年的效率竞赛。2019年，大卫·哈维和约里斯·范德赫文开发了一种运行时间为O(n × log n)的算法——几乎与加法一样快。然而，这是一种“星系算法”：仅对天文数字般巨大的数才具有实用性。数学家们一直在追寻的“圣杯”是证明O(n × log n)为理论上的最快速度，但历史表明，此类猜想也可能被推翻。本文凸显了基础数学如何持续影响计算、加密和人工智能，并呼吁支持科学新闻报道。

---

## 28. 自然实验证明浮游植物碳移除有效

**原文标题**: Natural experiments prove phytoplankton carbon removal works

**原文链接**: [https://www.onepercentbrighter.com/p/natural-experiments-prove-feeding](https://www.onepercentbrighter.com/p/natural-experiments-prove-feeding)

**摘要：**

本文基于大量自然证据，论证了海洋铁施肥用于碳移除的安全性与有效性。文中指出，沙尘暴、火山喷发、野火、冰山及鲸类活动等众多自然事件，持续向营养匮乏的海洋输送铁元素，从而引发大规模、肉眼可见的浮游植物勃发，这些植物从大气中吸收碳。

关键实例包括：撒哈拉沙尘滋养大西洋、卡萨托奇火山与基拉韦厄火山的火山灰催生巨型藻华、澳大利亚野火烟雾支撑持续九个月的藻华，以及汤加附近海底热液喷口释放的铁元素维持海洋生产力。数十年来，卫星数据、机器人浮标与船基研究已记录下这一因果关系，遍布各大洋盆地。

文章强调其可逆性：当营养供给停止时，浮游植物的生长随即终止，且数十项研究均未发现生态危害（例如有毒藻华）的证据。结论认为，有意图、受监测的海洋施肥将远比火山或火灾等随机自然事件更为安全。作者声称，对该理念的抵制源于意识形态上的反人类偏见，而非科学依据。

---

## 29. 比IPTV更好更便宜

**原文标题**: Better and Cheaper Than IPTV

**原文链接**: [https://github.com/stupside/castor](https://github.com/stupside/castor)

**Castor：优于IPTV且更经济的选择 概述**

Castor是一款命令行工具，能以全画质将网络视频投屏至智能电视，绕过屏幕镜像的限制。它通过无头Chrome从网页或直接URL提取真实视频流，并利用FFmpeg进行转码以实现实时投屏。

**主要功能：**
- 通过终端使用 `castor cast player <url>` 投屏
- 交互式浏览器（`castor cast`）利用用户配置的源搜索TMDB影片资源
- 支持通过Whisper自动生成字幕（默认关闭）
- 无捆绑内容或DRM破解功能

**安装方式：**
- macOS：通过Homebrew cask安装
- 源码安装：需Go 1.26+、cmake、Chrome/Chromium、FFmpeg/FFprobe
- 提供Linux Docker镜像（需使用`--network host`参数访问局域网）

**配置说明：**
- 需创建含设备名称的`config.yaml`文件（通过`castor scan`查找设备）
- 支持DLNA/UPnP设备（多数智能电视）及实验性Chromecast支持
- 交互式浏览需TMDB API密钥
- 可通过模板配置自定义流媒体源

**支持设备：** 三星、LG、索尼、松下、飞利浦、海信、TCL、VIZIO、夏普电视；以及Kodi、VLC、Plex。

**法律声明：** 用户需自行确保合法使用。Castor不解密DRM内容，不托管任何视频——仅播放用户指定的流媒体。

---

## 30. 山寨（仿冒产品）占领了世界

**原文标题**: Dupes (product clones) took over the world

**原文链接**: [https://www.vox.com/podcasts/493930/dupe-culture-fender-ugg-quince-tiktok-amazon-online-shopping](https://www.vox.com/podcasts/493930/dupe-culture-fender-ugg-quince-tiktok-amazon-online-shopping)

文章探讨了“平替文化”的兴起——消费者从服装到度假纷纷寻求名牌产品的平价替代品。文中提及一起法律案件：Quince仿UGG的羊皮靴被陪审团裁定UGG设计专利因过于笼统而无效，为更多平替产品打开了大门。与带污名的假货不同，平替如今被视为精明的生活妙招，在电商平台及亚马逊、TikTok上公开销售，这些平台还内置了反向图片搜索功能以便寻找相似款。

文章采访了《The Verge》的米娅·佐藤，她指出平替文化得益于互联网无限提供廉价替代品的能力，已成为现代购物中常态化、普遍化的一部分。法律层面，平替产品刻意规避商标和版权侵权，常利用知识产权保护的漏洞（尤其在时尚领域）。公众意见分歧：有人认为平替让美好事物更易得，也有人认为其贬低了消费价值。佐藤指出，平替可能适得其反——它反而会维持原版产品的吸引力；她警告，超低价平替可能制造虚假价值感，重塑消费者对品质与道德的低期待。归根结底，平替文化反映了数字时代鼓励复制与混搭的趋势如何渗透至实物消费，让“复制品”成为生活常态。

---

