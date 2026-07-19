# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-07-19.md)

*最后自动更新时间: 2026-07-19 20:33:27*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 2 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 3 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 4 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 5 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 6 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 7 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 8 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 9 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 10 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 11 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 12 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 13 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 14 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 15 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 16 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 17 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 18 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 19 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 20 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 21 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 22 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 23 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 24 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 25 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 26 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 27 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 28 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 29 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 30 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 31 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 32 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 33 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 34 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 35 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 36 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 37 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 38 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 39 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 40 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 41 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 42 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 43 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 44 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 45 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 46 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 47 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 48 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 49 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 50 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 51 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 52 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 53 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 54 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 55 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 56 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 57 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 58 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 59 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 60 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 61 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 62 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 63 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 64 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 65 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 66 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 67 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 68 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 69 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 70 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 71 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 72 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 73 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 74 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 75 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 76 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 77 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 78 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 79 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 80 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 81 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 82 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 83 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 84 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 85 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 86 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 87 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 88 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 89 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 90 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 91 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 92 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 93 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 94 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 95 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 96 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 97 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 98 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 99 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 100 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 101 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 102 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 103 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 104 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 105 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 106 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 107 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 108 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 109 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 110 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 111 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 112 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 113 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 114 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 115 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 116 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 117 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 118 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 119 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 120 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 121 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 122 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 123 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 124 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 125 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 126 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 127 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 128 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 129 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 130 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 131 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 132 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 133 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 134 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 135 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 136 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 137 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 138 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 139 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 140 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 141 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 142 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 143 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 144 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 145 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 146 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 147 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 148 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 149 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 150 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 151 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 152 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 153 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 154 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 155 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 156 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 157 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 158 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 159 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 160 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 161 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 162 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 163 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 164 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 165 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 166 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 167 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 168 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 169 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 170 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 171 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 172 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 173 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 174 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 175 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 176 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 177 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 178 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 179 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 180 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 181 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 182 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 183 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 184 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 185 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 186 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 187 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 188 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 189 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 190 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 191 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 192 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 193 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 194 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 195 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 196 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 197 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 198 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 199 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 200 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 201 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 202 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 203 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 204 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 205 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 206 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 207 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 208 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 209 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 210 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 211 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 212 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 213 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 214 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 215 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 216 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 217 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 218 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 219 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 220 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 221 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 222 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 223 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 224 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 225 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 226 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 227 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 228 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 229 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 230 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 231 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 232 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 233 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 234 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 235 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 236 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 237 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 238 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 239 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 240 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 241 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 242 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 243 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 244 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 245 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 246 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 247 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 248 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 249 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 250 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 251 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 252 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 253 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 254 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 255 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 256 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 257 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 258 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 259 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 260 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 261 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 262 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 263 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 264 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 265 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 266 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 267 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 268 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 269 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 270 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 271 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 272 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 273 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 274 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 275 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 276 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 277 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 278 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 279 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 280 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 281 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 282 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 283 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 284 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 285 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 286 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 287 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 288 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 289 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 290 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 291 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 292 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 293 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 294 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 295 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 296 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 297 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 298 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 299 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 300 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 301 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 302 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 303 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 304 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 305 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 306 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 307 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 308 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 309 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 310 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 311 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 312 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 313 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 314 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 315 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 316 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 317 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 318 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 319 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 320 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 321 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 322 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 323 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 324 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 325 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 326 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 327 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 328 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 329 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 330 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 331 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 332 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 333 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 334 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 335 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 336 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 337 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 338 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 339 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 340 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 341 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 342 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 343 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 344 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 345 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 346 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 347 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 348 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 349 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 350 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 351 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 352 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 353 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 354 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 355 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 356 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 357 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 358 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 359 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 360 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 361 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 362 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 363 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 364 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 365 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 366 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 367 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 368 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 369 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 370 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 371 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 372 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 373 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 374 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 375 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 376 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 377 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 378 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 379 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 380 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 381 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 382 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 383 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 384 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 385 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 386 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 387 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 388 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 389 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 390 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 391 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 392 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 393 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 394 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 395 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 396 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 397 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 398 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 399 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 400 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 401 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 402 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 403 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 404 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 405 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 406 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 407 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 408 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 409 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 410 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 411 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 412 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 413 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 414 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 415 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 416 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 417 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 418 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 419 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 420 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 421 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 422 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 423 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 424 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 425 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 426 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 427 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 428 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 429 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 430 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 431 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 432 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 433 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 434 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 435 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 436 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 437 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 438 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 439 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 440 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 441 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 442 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 443 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 444 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 445 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 446 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 447 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 448 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 449 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 450 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 451 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 452 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 453 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 454 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 455 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 456 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 457 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 458 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 459 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 460 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 461 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 462 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 463 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 464 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 465 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 466 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 467 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 468 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 469 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 470 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 471 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 472 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 473 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 474 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 475 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 476 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 477 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 478 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 479 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 480 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 481 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 482 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
