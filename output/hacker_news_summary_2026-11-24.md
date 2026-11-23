# Hacker News 热门文章摘要 (2026-11-24)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 应 Arm 要求，本网站将于 2026 年 12 月 4 日停止运营

**原文标题**: "Per ARM's Request, This Site Will Be Discontinued on 4 December 2026"

**原文链接**: [https://arm.jonpalmisc.com/](https://arm.jonpalmisc.com/)

摘要：由 Jon 创办的"Jon's Arm Reference"网站是面向 AArch64 指令集及系统寄存器的权威参考资源，涵盖 Armv8-A 与 Armv9-A 架构，内容包括 Base、SIMD、SVE、SME 指令集以及 AArch64 和 AArch32 寄存器定义，并提供全文搜索与分类浏览功能，长期深受开发者欢迎。然而，Arm 公司律师已正式函告 Jon，要求撤除该站点，否则将采取法律行动。迫于压力，Jon 宣布网站将于 2026 年 12 月 4 日停止服务，并表示将尽力保障现有书签和链接的可用性。Jon 在公告中对多年来支持网站的用户（包括 Arm 内部人士）表达了诚挚感谢，坦言能够为大家提供有价值资源深感欣慰。该网站技术上依赖 WebAssembly，若浏览器不支持或未启用（如苹果锁屏模式），则搜索功能将不可用。此次关停凸显了开源技术社区在芯片厂商知识产权保护与公众信息自由获取之间的张力。

---

## 2. 英伟达重新任命黄仁勋为CEO

**原文标题**: Nvidia Reinstates Jensen Huang as CEO

**原文链接**: [https://www.cnbc.com/2026/11/23/nvidia-jensen-huang-ceo.html](https://www.cnbc.com/2026/11/23/nvidia-jensen-huang-ceo.html)

英伟达董事会周一宣布，经与黄仁勋多轮会谈后一致投票，立即恢复其CEO职务。黄仁勋此前因多段婚外情——包括与一名涉嫌为中国国家安全部情报人员的女性交往——于11月13日辞去CEO，公司股价曾因此暴跌近33%。白宫高级官员上周向董事会通报，黄仁勋未违反国家安全法律；特朗普公开力挺，称其为"伟大的爱国者和国家宝藏"，表示政府无任何违法证据。马斯克等科技领袖亦积极游说支持其回归。消息公布后，英伟达股价暴涨33%。黄仁勋在声明中表达重返公司的荣幸与谦卑，CFO克雷斯继续留任。尽管黄仁勋已归位，国会审查仍在推进：他将于12月1日出席众议院多个委员会闭门听证，12月3日在参议院银行委员会就"保护美国AI优势"公开作证。参议员沃伦等人批评此举，要求英伟达就出口管制合规问题向国会作出交代，董事会表示独立调查仍将继续进行。

---

## 3. Ladybird 浏览器正式进入 Alpha 阶段

**原文标题**: Ladybird is now in alpha

**原文链接**: [https://ladybird.org/posts/alpha/](https://ladybird.org/posts/alpha/)

2026年11月23日，Andreas Kling 宣布 Ladybird 浏览器正式进入 Alpha 阶段，已提供 macOS 与 Linux 版本下载。Ladybird 采用完全从零自研的浏览器引擎，并非任何现有引擎的分支，浏览器外壳简洁但功能可用。

作为 Alpha 版本，部分网站可能无法正常运行，且偶有崩溃。浏览器内置了站点问题反馈和崩溃报告功能，用户可自主决定是否上传报告。团队明确表示当前不承诺安全性，并诚邀安全研究人员积极测试、挖掘漏洞，共同助力安全防护。

该版本采用滚动更新通道，将定期自动推送更新，用户无需自行编译源码即可体验持续改进。面向开发者，Ladybird 已支持 WebDriver 自动化测试及 Firefox DevTools 协议，方便进行网站兼容性调试。

文章最后向赞助商、捐赠者以及长期以来参与测试、提交反馈和贡献代码的社区成员致谢，坦言前方仍有大量工作，但很高兴用户终于能亲自体验 Ladybird。

---

## 4. GLM-5.4：以首个循环Transformer迈向通用编程

**原文标题**: GLM-5.4: Toward generalized coding with our first loop transformer

**原文链接**: [https://z.ai/blog/glm-5.4](https://z.ai/blog/glm-5.4)

无法访问该文章链接

---

## 5. NariQ：10 GB 内实现 BF16 级精度的 Qwen3.8-27B 模型

**原文标题**: NariQ: BF16-level Qwen3.8-27B in a 10 GB file

**原文链接**: [https://huggingface.co/nari-labs/Qwen3.8-27B-NariQ-GGUF](https://huggingface.co/nari-labs/Qwen3.8-27B-NariQ-GGUF)

本文提出一种名为 NariQ 的高效模型量化方案，将通义千问 Qwen3.8-27B（270 亿参数）大语言模型在仅 10 GB 存储体积内实现接近 BF16 全精度水平的推理质量。按 BF16 格式，27B 参数模型约需 54 GB 空间，NariQ 将体积压缩至约 1/5.4，在大幅降低存储与显存开销的同时将精度损失控制在可忽略范围。该方案面向端侧与消费级 GPU 部署场景，使原本依赖多卡或大显存的 27B 级模型得以在单张主流显卡乃至边缘设备上运行，显著降低大模型落地门槛。论文编号 2611.26157，发布于 5 天前，为当前大模型轻量化与高效推理方向提供了新的技术参考。

---

## 6. Dario夸大开源AI风险，意在推动禁令以巩固自身控制权

**原文标题**: Dario is hyping the dangers so OSS models are illegal and *he* stays in control

**原文链接**: [https://twitter.com/ylecun/status/2124550037912920090](https://twitter.com/ylecun/status/2124550037912920090)

摘要：X用户Hux于11月22日发文指出，Anthropic CEO Dario Amodei在国会听证会上公开警示开源AI模型的危险性。其核心逻辑是：闭源模型可由厂商实时监控用户行为、随时切断访问、划定安全红线；而一旦模型开源，这些"刹车机制"将彻底失效，模型脱离控制、无法收回。文章标题暗示，Dario此举并非纯粹出于安全关切，而是有意夸大风险，推动监管层将开源模型纳入限制甚至禁令，从而让以Anthropic为代表的闭源厂商维持行业主导地位与市场垄断。该帖以讽刺口吻揭示了闭源阵营与开源阵营之间的深层利益博弈。

---

## 7. Kagi Mail（公开测试版）

**原文标题**: Kagi Mail (public beta)

**原文链接**: [https://blog.kagi.com/kagi-mail-public-beta](https://blog.kagi.com/kagi-mail-public-beta)

Kagi 正式发布私有邮箱与日历服务 Kagi Mail 公开测试版，提供 @kagimail.com 地址或支持绑定自有域名，60天免费试用，之后为99美元/年，已包含在 Kagi Ultimate 计划中。核心理念为快速、私密、安全，无广告、无监控、无数据贩卖；采用开放标准（IMAP、JMAP、CalDAV）与开源架构（Stalwart 服务器），可搭配任意兼容客户端，支持随时一键导出全部数据，离开后保留6个月访问权限，无锁定风险。基本功能含50GB存储、无限别名与域名、内置日历。智能方面支持自然语言分类、收件箱重点提醒、AI 邮件问答及新闻通讯聚合视图，所有 AI 功能可随时关闭。隐私上自动屏蔽追踪像素，提供发件人审批与钓鱼预警。团队与家庭用户可共享域名地址，支持 OIDC 登录。高级用户可使用快捷键、Sieve 规则及 MCP 服务器，并集成 Kagi 翻译与邮件助手。尚未推出的功能包括联系人管理、完整 Kagi 助手整合及原生移动应用，预计2027年陆续上线。Kagi 的愿景是打造"愿意为孩子创建的第一封邮箱"——让用户被当作人而非商品。

---

## 8. 探测器抵达水星，成史上第二个进入水星轨道的航天任务

**原文标题**: Spacecraft reaches Mercury on second-ever mission to enter its orbit

**原文链接**: [https://www.theguardian.com/science/2026/nov/20/spacecraft-mercury-second-ever-mission-orbit-bepicolombo](https://www.theguardian.com/science/2026/nov/20/spacecraft-mercury-second-ever-mission-orbit-bepicolombo)

无法访问该文章链接

---

## 9. 开发9年的开源应用遭苹果从欧洲应用商店下架

**原文标题**: Apple removed my open-source app from EU App Stores after 9 years

**原文链接**: [https://github.com/glushchenko/fsnotes/discussions/2056](https://github.com/glushchenko/fsnotes/discussions/2056)

独立开发者、开源笔记应用FSNotes的作者Glushchenko在GitHub发布公开信，反映其应用被苹果从所有欧洲应用商店移除，且苹果对其支持请求长期沉默。FSNotes是一款macOS和iOS笔记应用，已开发运营9年。事件起因是10月销售款未能到账，开发者于11月5日和17日分别提交两个工单，但截至发帖未获任何回复。他表示已完成欧盟《数字服务法》合规信息，并提交了乌克兰政府商业注册文件，其身份为乌克兰合法注册的个体经营者。然而，应用排名与搜索可见性正持续流失，即使恢复上架也难以挽回损失。开发者指出，当前乌克兰开发者面临的经营环境极为艰难，"感觉像是乌克兰在受制裁，而非俄罗斯"。FSNotes源码仍可在GitHub免费获取，但缺乏收入将难以维持项目生存。他并非要求特殊待遇，只希望有人审阅文件、说明限制原因并给予解决机会。该帖获28个点赞，并已转载至Hacker News和X平台。

---

## 10. 导数翻转

**原文标题**: Derivative Flipping

**原文链接**: [http://blog.sigfpe.com/2026/11/derivative-flipping.html](http://blog.sigfpe.com/2026/11/derivative-flipping.html)

摘要：本文探讨自动微分的一种新视角，核心思想是将微分算子与被微分表达式的角色互换。作者先以Brzozowski正则表达式求导为引子，将其类比到多项式微积分中，定义配对⟨p,q⟩为p作为微分算子作用于q后在零点求值。两个关键定理为：⟨p,xᵢq⟩=⟨∂ᵢp,q⟩（移位性质），以及⟨p,q⟩=⟨q,p⟩（对称性）。后者意味着可将复杂函数与简单算子配对，也可将复杂算子作用于简单函数，而中间结果的复杂度始终有界。以二维拉普拉斯算子为例，仅需求解四个系数的线性组合，无需维护完整Hessian矩阵。作者用Haskell实现了该配对运算，验证了两种配对顺序结果一致。此方法即作者早年提出的"无穷小平方根"计算误差法，后被folx库优化并广泛应用于物理信息神经网络(PINN)和变分蒙特卡洛(VMC)等领域。作者还指出该翻转思想在量子力学（算子与态的角色互换）及影子演算(umbral calculus)中亦有体现，并提及Taylor模式AD的压缩工作，认为这些AD问题早在百年前已有相关代数结构加以解决。

---

## 11. 大语言模型应如何"看见"电脑？

**原文标题**: How should an LLM see a computer?

**原文链接**: [https://www.greptile.com/blog/trex-computer-use](https://www.greptile.com/blog/trex-computer-use)

文章探讨大模型操作计算机时获取屏幕信息的最佳方式，以OSWorld基准对GPT-4o至GPT-6.1 Sol共七个模型进行三种模式对比：纯截图、截图加无障碍树（坐标点击）、截图加元素ID点击。坐标点击存在固有缺陷——模型需将视觉信息转写为精确像素，稍偏即点错，分辨率变化更使问题加剧；无障碍树源于上世纪八九十年代为视障人士设计的辅助技术，能让模型直接获知按钮名称与位置，绕开像素定位。关键发现是"视模型能力而定"：对GPT-6.1 Sol等最强模型，截图已足够（83.8%），加树或ID点击几乎无提升；但对GPT-4.1、GPT-5.2等较弱模型，树加ID点击可将得分提升数倍（GPT-5.2从15.8%升至52.8%）。此外，画布、游戏等无树覆盖场景及文本溢出等视觉Bug仍需截图兜底。基于实验，作者的产品TREX（面向PR的桌面级测试工具）采用混合策略：以截图为主，优先ID点击，树中无对应元素时退回坐标点击，并随新模型发布持续复测更新。

---

## 12. Win4wine：通过 Wine 在 Linux 上运行 Windows 桌面外壳

**原文标题**: Win4wine – Run Windows Shell as the Linux Desktop on Wine

**原文链接**: [https://github.com/mikuta0407/win4wine](https://github.com/mikuta0407/win4wine)

Win4wine 是一个个人实验性项目，通过打了 151 个补丁的 Wine 11.0，在 Linux 桌面上运行 Windows XP 的 explorer.exe 作为桌面外壳，亦支持 ReactOS 及 Windows 7 外壳。项目仅验证于全新 Debian 13，不支持日常使用，建议在虚拟机中测试。主要特性包括：原生 XP 任务栏、开始菜单、桌面与文件夹窗口；Linux 应用自动套用 XP 窗口框架并集成至任务栏和 Alt+Tab；通知区域兼容 Linux 托盘图标及网络、音量、电池状态；支持 fcitx5 日语输入法与多语言键盘切换；XP 欢迎画面可作 LightDM 登录界面；支持 DPI 缩放、快速启动栏等。用户须自备 Windows ISO（无 ISO 可用免费 ReactOS），项目不含任何微软文件。架构由 LightDM、bridge-wm 窗口管理器及 151 项 Wine 补丁构成，另提供实验性 Wayland 会话。项目采用 LGPL-2.1 许可，与微软及 Wine 官方无关，风险自担。

---

## 13. EasyPost（YC S13 期）诚聘英才

**原文标题**: EasyPost (YC S13) Is Hiring

**原文链接**: [https://www.easypost.com/careers/](https://www.easypost.com/careers/)

EasyPost 是 Y Combinator S13 期孵化的物流科技公司，目前正面向全球展开招聘。公司致力于通过 AI 驱动的智能技术重塑物流行业，简化运输流程，改变全球货物运输方式。EasyPost 希望汇聚具有雄心壮志的问题解决者，共同构建面向未来的物流基础设施，助力各类企业更高效地完成商品流通与配送。应聘者可通过官方渠道查看当前开放职位。

---

## 14. 无声之语──让 MacBook 触控板借触觉电机开口说话

**原文标题**: Nospeaker ─ Make your MacBook's trackpad talk using its haptic motor

**原文链接**: [https://github.com/os6/nospeaker](https://github.com/os6/nospeaker)

Nospeaker 是 Cody Collier 开发的 macOS 创意项目，利用 MacBook 触控板内置的触觉电机产生可听声音，实现"无声说话"。原理是将电机驱动频率提升至每秒最高 4000 次，使玻璃面板高速振动发声——电脑静音时触控板依然能"开口"。工作流程：macOS 语音引擎将文本合成为音频，每 10 毫秒提取两个最强共振峰、响度与音高，由电机以两个正弦音播放，模拟人声振动。有效频率约 98 Hz 至 3.9 kHz，1 kHz 附近最清晰。安装仅需一行命令 curl -fsSL a90.com/nospeaker | sh，也可下载或源码构建。要求 2015 年后 MacBook 的 Force Touch 触控板或 Magic Trackpad 2 及以上，Apple Silicon 需 macOS 12+，Intel 需 macOS 13+。项目基于苹果私有 MultitouchSupport 框架，全部代码仅一个 Swift 文件、零依赖。声音偏机械感，但程序会同步显示文字辅助理解，采用 MIT 许可证。

---

## 15. 免费另类电视台：源自互联网档案馆的遗落影像

**原文标题**: Free alternative TV network built from the Internet Archive's forgotten videos

**原文链接**: [https://spelunkr.tv](https://spelunkr.tv)

本文介绍了一个名为 SPELUNKR 的免费替代电视网络项目，其定位为"有线电视，但更怪"。该项目从互联网档案馆（Internet Archive）中挖掘大量被遗忘、被边缘化的视频资源——包括过时的电视节目、公共领域影像、独立制作短片及各类冷门档案资料，将这些"数字遗落物"重新编排、串联，打造成一个风格怪诞、内容杂糅的另类频道。SPELUNKR 以完全免费的方式运作，无需传统有线电视订阅，任何人都可通过网络收看。它既是对早期电视文化的一种怀旧致敬，也是对主流媒体内容的反叛式回应，将那些原本无人问津的影像重新赋予观赏价值，营造出一种介于复古、迷幻与独立艺术之间的独特观感体验。该项目体现了互联网时代"拾荒式"媒体创作的可能：无需原创拍摄，仅靠对海量公共档案的重新组合与策展，即可构建出一套完整的电视化内容体系，为厌倦主流节目的人群提供一条迥异于常规频道之外的收看路径。

---

## 16. Show HN：3D 驾驶环游我的村庄

**原文标题**: Show HN: Drive around my village in 3D

**原文链接**: [https://cherwellvalleymotorclub.app](https://cherwellvalleymotorclub.app)

摘要：这是一则发布于 Hacker News 的"Show HN"项目展示帖，作者分享了一个可 3D 驾驶环游其所在村庄的互动应用。页面内容与"切韦尔谷汽车俱乐部（Cherwell Valley Motor Club）"相关，推测该项目以该俱乐部或所在社区为背景，提供沉浸式三维驾驶体验。目前页面内容仍处于"加载中（Loading…）"状态，尚未呈现完整功能细节或截图。总体而言，这是一项个人开发者打造的创意项目，旨在通过 3D 技术让用户在线体验乡村道路驾驶，兼具趣味性与社区展示意义。

---

## 17. XNU Linux：在 Linux 上运行完整 macOS 图形用户界面

**原文标题**: XNU Linux: Full OS X GUI Userspace on Linux

**原文链接**: [https://github.com/AFK-surf/xnulinux](https://github.com/AFK-surf/xnulinux)

XNU Linux 项目将 Apple 开源的 XNU 内核编译为可加载内核模块（xnu.ko），直接在未修改的 arm64 Linux 内核中运行，无需虚拟机管理程序。XNU 直接驱动 CPU 与 MMU，macOS 进程与 Linux 进程在同一组 CPU 上原生并行执行；Linux 则通过小型接口模块 fki.ko 向 XNU 提供内存、定时器、文件、网络与 GPU 支持。在标准 Ubuntu 内核上执行一条 insmod xnu.ko 即可启动 macOS 27 桌面，包括登录窗口、WindowServer、Dock、Finder、Safari 等。项目已在 Apple Silicon 的 arm64 Linux 虚拟机（macOS 27.2.1 启动至桌面仅需 31–48 秒）和 NVIDIA DGX Spark 裸机（4 核 / 8 GB，CPU 渲染）上通过验证，30 分钟压力测试无崩溃。GPU 方面，Metal 经 metal2vulkan 转译为 Vulkan，再通过 DRM 桥接至宿主机 GPU（Venus 驱动），无硬件桥接时回退至 CPU 渲染。代码按许可证严格分离：Linux 侧为 GPL-2.0，XNU 侧为 APSL-2.0，两侧仅通过 FKI 接口交互。

---

## 18. 整数与指针有何区别？（2018）

**原文标题**: What's the difference between an integer and a pointer? (2018)

**原文链接**: [https://blog.regehr.org/archives/1621](https://blog.regehr.org/archives/1621)

本文探讨C标准中整数与指针互转的语义问题。作者指出，C标准并未强制实现定义intptr_t和uintptr_t，也未要求整数到指针转换具有确定意义，实现完全可将所有此类转换标记为产生陷阱表示，从而回避相关问题。作者据此提出一种折中方案：实现仅在其能将整数转指针的结果视为具有"官方未知来源"的指针时，才定义intptr_t/uintptr_t，并允许该指针在以下任一条件触发前访问关联存储：一、通过非该转换派生的指针以冲突方式访问存储；二、派生出其他指针将导致冲突访问；三、执行到达函数入口或循环迭代起点时上述情形发生。无法支持此语义的实现可选择不定义这些类型。对于确实需要该类型但无需完整语义保障的场景，实现可允许用户预先定义宏__STDC_WAIVE_UINTPTR_GUARANTEES以放弃相关保证，从而兼顾灵活性与安全性。

---

## 19. 来中点碰面吧

**原文标题**: Let's Meet in the Middle

**原文链接**: [https://george.mand.is/2026/11/lets-meet-in-the-middle/](https://george.mand.is/2026/11/lets-meet-in-the-middle/)

作者热衷于打造"小而美"的命令行工具，理念是让每个工具专注做好一件事，再巧妙组合。文章介绍了两款 macOS 工具：whereami 可获取当前位置或对地址进行反向地理编码，输出坐标与地址的 JSON；nearme 基于 MapKit（Apple Maps 底层引擎），依据坐标搜索周边场所。两者通过管道无缝衔接——用 whereami 分别解析两个地址，经 jq 对经纬度取均值算出中点坐标，再由 nearme 搜索中点附近的咖啡馆、酒吧等，全程无需 API 密钥或浏览器。作者将这一流程封装为 shell 函数 middle，用户只需传入两个地址和搜索关键词即可，省略第二个地址则默认以自身位置为起点。文章也说明了局限：仅限 macOS；地理中点为简单的坐标平均，未考虑实际通勤时间；部分地标名称可能无法解析。最后附上 brew 安装命令及 Less Software 主页链接。

---

## 20. 为超级任天堂打造无线网卡

**原文标题**: Building a wireless network adapter for the Super Nintendo

**原文链接**: [https://boland.dev/snet/](https://boland.dev/snet/)

本文介绍作者为超级任天堂（SNES）设计并制作了一款通过手柄接口接入的无线网络适配器，无需外部供电，体积仅如打火机大小。作者以"16位未来主义"为理念，让这台1990年代初的机能实现现代网络连接。技术架构上，适配器基于RP2350A微控制器与ESP32-C3 Wi-Fi协处理器，二者通过UART通信：RP2350A以PIO状态机处理SNES手柄端口的5线同步串行总线（速率约30KB/s），ESP32-C3负责Wi-Fi与TCP/TLS连接；电源经LM66200理想二极管支持5V与USB-C双路供电。核心功能有二：一是存档同步，通过闪卡向ROM注入代码，将SRAM存档分块经手柄总线传至适配器并同步至WebDAV服务器，实现与手机RetroArch的存档互通，以哈希比对防止冲突覆盖；二是AI对话，借助《众神的三角力量》完整反汇编成果，将游戏上下文推送至Claude Opus 5.5，动态替换NPC固定台词，并以投机性生成缓存将模型响应延迟降至无感。外壳由build123d依PCB的STEP文件生成，3D打印成型，内置光导管将状态LED引至蚀刻Wi-Fi图标。项目于2026年11月完成从面包板原型到PCB量产的快速迭代。

---

## 21. 又一轮安全炼狱

**原文标题**: The next circle of security hell

**原文链接**: [https://blogs.gentoo.org/mgorny/2026/10/27/the-next-circle-of-security-hell/](https://blogs.gentoo.org/mgorny/2026/10/27/the-next-circle-of-security-hell/)

作者指出，软件安全形势非但未好转，反而持续恶化。漏洞报告以空前速度涌入，修补本身可能引入新问题，复杂的依赖树使维护者不堪重负。如今人人皆能借助AI提交报告，项目被海量漏洞信息淹没，众多赏金计划因AI生成的垃圾报告而被迫终止。安全判断充满灰色地带——拒绝服务是否构成漏洞取决于具体攻击场景，但工具无法处理这种细微差别，维护者被迫进行无意义的版本更新以消除安全扫描误报。更深层的问题在于，多数项目缺乏安全分支和长期支持，安全修复常与新功能、API变更混为一体，下游被迫仓促应对。当社区逼近崩溃临界点，人们将不再信赖他人，转而各自捆绑依赖，最终陷入"各自为战"的恶性循环，安全困境层层叠加、愈演愈烈。

---

## 22. 构建面向 MP4 容器的定向模糊测试器

**原文标题**: Crafting Targeted MP4 Fuzzers

**原文链接**: [https://atredis.com/blog/2026/11/16/crafting-targeted-mp4-fuzzers/](https://atredis.com/blog/2026/11/16/crafting-targeted-mp4-fuzzers/)

摘要：MP4 文件以原子（box）树状结构组织，传统变异式模糊测试器（如 AFL++、libFuzzer）的随机插入与删除极易破坏祖先节点的尺寸字段，使解析器在早期校验即拒绝输入，难以触达深层代码。作者针对 GStreamer 的 isomp4 插件（qtdemux 解复用器）提出分层递进的模糊测试策略。首先，作者发现 OSS-Fuzz 中 MP4 覆盖率为零，遂本地构建通用 gst-discoverer 测试器，经 16–24 CPU 周运行，发现 5 个漏洞，涵盖堆越界读取（CVE-2025-47183、CVE-2025-47219）及 TMPlayer/SubRip 字幕解析中的空指针解引用与栈缓冲区溢出。其次，为消除格式漂移，作者改用仅含 qtdemux 的 GStreamer 管道（appsrc!qtdemux!fakesink），在运行时将变异收敛至 MP4，额外发现 PlayReady DRM 元数据导致的堆越界读取（CVE-2026-46471），可绕过 ASLR。最后，作者构建结构感知测试器，仅变异深层嵌套的 stsd（样本描述）原子，通过模板文件自动修正所有祖先原子的尺寸字段，保证整体结构合法，从而有效提升 qtdemux_parse_trak 等此前未覆盖区域的触达率。该方法为二进制格式模糊测试提供了可复用的"局部变异＋结构修复"范式。

---

## 23. 请勿在磁盘上存储SSH密钥

**原文标题**: Don't keep your SSH keys on disk

**原文链接**: [https://jola.dev/posts/you-cant-afford-ssh-keys-disk](https://jola.dev/posts/you-cant-afford-ssh-keys-disk)

摘要：作者因近期频发的安全漏洞和企业数据泄露事件，开始全面审视个人系统的暴露面，精简了自托管服务、将大部分服务收归Tailscale内网并持续更新系统。随后将目光转向个人设备上的SSH密钥——尽管私钥已备份至Bitwarden密码管理器，但仍在磁盘上通过ssh-add加载，存在被恶意软件扫描窃取的风险。作者最终采用Bitwarden内置的SSH agent方案，将密钥彻底移出磁盘：先将现有密钥导入Bitwarden，启用SSH agent并设置vault锁定间隔，再在~/.ssh/config和终端配置中指向Bitwarden的agent套接字，最后删除磁盘上的密钥文件。文章还介绍了利用SSH密钥进行Git提交签名的配置方法，使每次推送需分别授权连接密钥与签名密钥。使用两周后，作者表示体验流畅，仅在vault锁定时需手动批准密钥使用，小遗憾是批准操作尚不支持Touch ID或回车确认，希望Bitwarden后续优化。整体而言，该方案兼顾安全与便利性，让作者更安心。

---

## 24. 本地AI入门指南：借助Unsloth部署Inkling与Qwen

**原文标题**: A Beginner's Guide to Local AI with Inkling, Qwen, and Unsloth

**原文链接**: [https://www.gpupartner.com/blog/beginners-guide-local-ai-inkling-qwen-unsloth](https://www.gpupartner.com/blog/beginners-guide-local-ai-inkling-qwen-unsloth)

本文面向初学者，指导读者在Windows PC上免费搭建私有AI助手，替代云端ChatGPT。作者指出，面对云端模型涨价、限制增多及隐私隐忧，家庭自托管是更经济自由的选择。核心工具为Unsloth Desktop，无需终端命令，三步即可完成部署：安装软件、下载适配显存的量化模型、设置上下文窗口。文中解释了量化概念——降低精度以缩减模型体积，使其跑在消费级显卡上。按显存给出选型建议：8-12GB适合Qwen3.5-9B等小模型；16GB可运行MoE架构的Qwen3.6-35B；24GB推荐Qwen3.8-27B；32GB以上可运行128K上下文的UD-Q4_K_XL版本。作者使用RTX 5090（32GB）部署Qwen3.8-27B。新发布的Inkling 2 Mini（26.4B、1M上下文、Apache 2.0许可）同为32GB显卡佳选，而594B的Inkling 2 Small则需Mac Studio等统一内存设备。部署完成后，通过Unsloth内置LAN共享功能，家人即可在浏览器中访问该AI。作者预告后续将涵盖性能调优、公网隧道及本地智能代理等内容。

---

## 25. 奈斯派索胶囊咖啡减重计划（Project Olympus）

**原文标题**: Nespresso's project to reduce grams of coffee per capsule

**原文链接**: [https://alvinbunk.wordpress.com/2026/11/01/nespresso-project-olympus/](https://alvinbunk.wordpress.com/2026/11/01/nespresso-project-olympus/)

2026年11月1日，咖啡博主Alvin Bunk公开揭露奈斯派索内部代号"Project Olympus"的项目——在保持口感不变的前提下减少每颗胶囊的咖啡克数。该信息于2026年8月由一名内部员工透露。项目文件显示，奈斯派索计划于2026年Q1至Q3通过优化研磨与烘焙技术，对Vertuo系列配方进行"优化"，官方声称口感、咖啡量及咖啡因含量均不变，仅胶囊重量略有减少。项目分两波推进：第一波涉及Double Espresso Scuro、Fortado等6款产品，第二波涉及Melezio、Stormio等8款产品，几乎覆盖全线，仅少量大容量胶囊未受影响。2026年9月初，Reddit上已有用户发现胶囊变轻并质疑配方变更，作者随即成为首位公开揭露者。消息曝光后，大量消费者表达不满，不少人表示将转向其他咖啡品牌。作者同时提供在线表格供用户追踪各款胶囊的减配比例，并开放捐赠页面支持其咖啡评测工作。

---

## 26. Elixir HLS：用 Elixir 函数生成 FPGA 电路

**原文标题**: Elixir HLS makes FPGA circuits from functions written in Elixir

**原文链接**: [https://github.com/elixir-hls/elixir-hls](https://github.com/elixir-hls/elixir-hls)

Elixir HLS 是一款高级综合（HLS）工具，将 Elixir 函数自动转换为 FPGA 电路。通过 defhls 定义的函数同时保留为普通 Elixir 函数（CPU 运行）和硬件电路，工具以函数运行结果作为电路规格，经模拟比对验证一致性。当前 0.1.0 版支持带状态、表、内存及固定循环的整数运算，以及 map、filter、transform、zip_with 等流操作；尚不支持除法、浮点数、递归与匿名函数。通过 definstance 可将函数部署为 FPGA 电路或 CPU 进程，支持 GPIO 引脚、事件触发与共享状态。首个目标平台为搭载 AtomVM 的 Sipeed Tang Primer 25K，演示项目为全硬件 FM 收音机调谐器。依赖 Elixir 1.18+、CIRCT 工具链及 Icarus Verilog，采用 Apache-2.0 协议。

---

## 27. Tor协议解剖：逐字节解析

**原文标题**: Anatomia Di Tor – The Tor Protocol, Byte by Byte

**原文链接**: [https://github.com/aleff-github/onion-routing-anatomy](https://github.com/aleff-github/onion-routing-anatomy)

摘要：本书为意大利语撰写的免费开源技术专著，深入解析Tor匿名网络协议，涵盖从字节级数据交换到设计取舍、真实攻击与开放问题的完整知识体系。全书31章、4个附录，含20个可复现实验、176道带解答习题及39幅原创图，分五部分：历史与基础、协议底层（加密、电路构建、分层加密、目录系统、洋葱服务等）、实践应用（torrc、Wireshark、Tor Browser等）、攻击与防御（流量关联、指纹识别、Sybil攻击）、研究前沿（Arti等）。作者Alessandro Greco将此书源起于学士论文，后经多年拓展，在AI工具辅助下完成叙述、图表与代码。所有实验在Docker内搭建的私有Tor网络上运行，绝不涉及公共网络。本书以GPL-3.0-or-later协议发布，已有英、西、俄、中四语AI翻译版本（未经母语审校）。作者声明此为独立作品，与Tor Project无隶属关系，未经独立专家评审，欢迎读者纠错与贡献。

---

## 28. Cyberleek 发布了《GTA 6》Xbox 版可执行文件

**原文标题**: Cyberleek posted the GTA 6 Xbox build executable

**原文链接**: [https://www.reddit.com/r/GamingLeaksAndRumours/comments/1y3jzqe/cyberleek_posted_the_gta_6_xbox_build_executable/](https://www.reddit.com/r/GamingLeaksAndRumours/comments/1y3jzqe/cyberleek_posted_the_gta_6_xbox_build_executable/)

摘要：无法访问该文章链接。

---

## 29. 是的，1700万行Lean代码确实很多

**原文标题**: Yes, 17M lines of Lean is a lot

**原文链接**: [https://micjm.com/blog/yes-17m-lines-of-lean-is-a-lot/](https://micjm.com/blog/yes-17m-lines-of-lean-is-a-lot/)

近期黎曼猜想的证明以1700万行Lean代码呈现，作者为此检索了Mathlib与Reservoir两个Lean证明数据库进行横向比较。Mathlib中259条含Lean代码的著名证明，长度均远不及此。Reservoir索引了938个含Lean代码的包，其中存在更大规模的项目：一个AI构建的未完成证明达8800万行；LeanBridge项目（3600万行）98%为脚本自动生成，手写部分仅约50万行；Anthropic于2025年9月发布的费马大定理AI证明达2700万行，较人类主导的6万行原始项目扩大了约450倍。文章同时指出，所用图表采用对数横轴，使1700万行在视觉上接近百万量级，实际差距远大于直觉。最终结论是：1700万行确实庞大，但在AI辅助证明迅速扩张的背景下，已有数倍于其的项目问世，人类能否独立理解与验证如此规模的证明正面临根本性挑战。

---

## 30. MRAM基础：磁性存储如何取代嵌入式闪存

**原文标题**: MRAM Basics: How Magnetic Memory Is Replacing Embedded Flash

**原文链接**: [https://www.allaboutcircuits.com/technical-articles/mram-basics-how-magnetic-memory-is-replacing-embedded-flash/](https://www.allaboutcircuits.com/technical-articles/mram-basics-how-magnetic-memory-is-replacing-embedded-flash/)

MRAM以磁隧道结（MTJ）中自由层的磁化方向存储数据，替代闪存浮栅电荷存储方式。闪存因28nm以下需10V高压且与FinFET不兼容而停止微缩；MRAM仅需约3个额外掩膜，兼容22nm/16nm FinFET工艺，写入电压接近逻辑电平。

性能上，MRAM写入约30ns、读取6ns，无需扇区擦除，可直接逐字覆写，寿命达百万次甚至无限制，是闪存的十倍以上。瑞萨RA8P1（22nm）集成1MB MRAM，NXP S32K5汽车MCU采用16nm FinFET MRAM。

对固件设计而言，OTA更新与产线编程速度大幅提升，数据日志无需缓冲和磨损均衡，掉电丢数据风险显著降低。但设计时须核算写入频率与地址轮换（如每秒写一次需轮转千个地址）、确认磁场免疫能力（TSMC 22nm规格为1100Oe）、高温数据保持性及回流焊耐受性。28nm以下节点，嵌入式闪存已几乎不可用，MRAM正成为嵌入式非易失存储的主流选择。

---

