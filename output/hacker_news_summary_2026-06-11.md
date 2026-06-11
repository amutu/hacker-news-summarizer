# Hacker News 热门文章摘要 (2026-06-11)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. Show HN：Homebrew 6.0.0

**原文标题**: Show HN: Homebrew 6.0.0

**原文链接**: [https://brew.sh/2026/06/11/homebrew-6.0.0/](https://brew.sh/2026/06/11/homebrew-6.0.0/)

**Homebrew 6.0.0** 于 2026 年 6 月 11 日发布，引入了重要的安全性、性能和功能改进。

**主要亮点：**
- **Tap 信任机制**：新的安全机制要求第三方 tap 在运行其代码前获得明确信任，降低恶意 tap 带来的风险。
- **默认内部 JSON API**：更新更快且网络流量更少；将所有元数据合并为单次下载。
- **Linux 沙箱**：Bubblewrap 沙箱现在使 Linux 与 macOS 保持一致，确保构建/测试/安装后阶段的安全。
- **更优默认设置**：Ask 模式现为开发者默认模式，显示依赖摘要和确认提示。
- **brew bundle**：默认并行安装 formula，并支持 npm、krew、cargo、go 及 winget。
- **性能**：`brew leaves` 速度提升约 30%，并行化 bottle tab 获取，减少 Ruby 库加载。
- **macOS 27（金门）支持**：添加初步支持，计划淘汰 Intel（2026 年 9 月降至三级支持，2027 年 9 月停止支持）。

**安全**：修复了三个安全问题（POST 重定向绕过、Git 钩子 root 漏洞、安装器 plist 漏洞）。新增 `brew vulns` 子命令，检查已安装包是否存在已知漏洞。

**其他值得注意的变更**：新增 `brew exec` 命令、cask 固定、AppImage 支持、systemd 定时器服务、简化 DSL 操作的安装步骤框架，以及文档改进。

Homebrew 仍是一个由志愿者运营的非营利项目，为 CI 和基础设施成本寻求捐赠。

---

## 2. MiMo代码现已发布并开源

**原文标题**: MiMo Code is now released and open-source

**原文链接**: [https://mimo.xiaomi.com/mimocode](https://mimo.xiaomi.com/mimocode)

无法访问文章链接。

---

## 3. 要求撤回加拿大《C-22号法案》的请愿书

**原文标题**: Petition to Withdraw Canada's Bill C-22

**原文链接**: [https://www.ourcommons.ca/petitions/en/Petition/Sign/e-7416](https://www.ourcommons.ca/petitions/en/Petition/Sign/e-7416)

**关于撤回C-22法案的请愿书摘要（e-7416）**

提交给众议院的这份请愿书要求立即撤回C-22法案，该法案旨在修订《刑法典》和《罪犯身份认定法》。请愿者认为，该法案将侵犯基本自由和权利。

主要关切如下：

1.  **强制采集指纹和照片范围的扩大：** 该法案提议，不仅在被指控犯罪时，而且在因任何*可公诉*罪行被捕时，警方均有权强制要求个人提供指纹和照片。请愿者认为，这等同于在审判前将人视为有罪，侵犯了无罪推定原则。
2.  **侵犯隐私及违反《宪章》：** 请愿者主张，这种扩权行为是过度干涉，将从广泛人群（甚至包括非暴力或轻微可公诉罪行嫌疑人）中收集敏感的生物识别数据，从而侵犯《加拿大权利与自由宪章》所保护的隐私权。
3.  **潜在的滥用风险：** 人们担忧，这种被扩大的权力可能被不成比例地用于边缘化社区，并在缺乏明确理由的情况下增加警方的监控力度。

请愿书总结指出，C-22法案是向大规模监控迈出的危险一步。它敦促加拿大政府撤回该法案，以保护所有加拿大人的宪法权利。

---

## 4. AMD不愿修复的RCE漏洞

**原文标题**: The RCE that AMD wouldn't fix

**原文链接**: [https://mrbruh.com/amd2/](https://mrbruh.com/amd2/)

**摘要：**

本文描述了一位研究人员发现的AMD AutoUpdate软件中的远程代码执行漏洞。该更新程序使用HTTPS获取其配置XML文件，但其中的可执行文件下载URL使用HTTP——这使得中间人攻击者能够将其替换为任意恶意文件。AMD的代码未执行任何签名或证书验证，会立即运行下载的文件。

研究人员将该漏洞报告给AMD的漏洞赏金计划，但被以"超出范围"（中间人攻击除外）为由关闭。此事在Hacker News上引发关注后，AMD内部安全团队重新介入，要求研究人员在调查期间撤下博客文章。研究人员同意了，但AMD随后表示该漏洞不符合赏金条件，并要求将标准90天的披露期延长。研究人员最终在124天后公开了漏洞。

讽刺的是，研究人员指出该自动更新程序还存在一个无关的重定向错误（XML URL会跳转但更新程序无法跟随），导致"第22条军规"：更新程序无法通过自我更新来修复漏洞。最终补丁（在Ryzen Master中）使用了HTTPS并声称进行了签名验证，但研究人员发现仅添加了CRC-32校验，而非加密验证。

AMD发布了CVE并致谢研究人员，但未支付赏金。作者批评了AMD的响应迟缓及其对披露流程的处理方式。

---

## 5. 软件存在于提交之间

**原文标题**: Software Is Made Between Commits

**原文链接**: [https://zed.dev/blog/introducing-deltadb](https://zed.dev/blog/introducing-deltadb)

**摘要：**

Zed联合创始人认为，传统版本控制（Git）和拉取请求已不适应现代软件开发，尤其是在AI智能体介入的背景下。他们认为代码真正的“源头”是人与智能体之间的实时对话，而非离散的提交记录。Git仅在工作完成后捕获快照，却丢失了生成代码的关键对话过程。

为解决这一问题，Zed正在构建**DeltaDB**——一种新型版本控制系统。与Git的快照机制不同，DeltaDB将每一次精细操作记录为具有稳定身份的“增量”。它嵌入了无冲突复制工作树，允许多人及智能体同时编辑同一文件。关键在于，DeltaDB将每条消息与其产生的编辑操作配对，防止上下文漂移。引用锚定于增量（而非行号），因此链接在代码变更后依然有效。

这彻底消除了对拉取请求和审查线程的需求，协作在动态演进的工作树中实时完成。智能体也能访问完整对话历史以理解上下文。Git和CI仍用于检查与外部集成，但不再作为主要协作工具。

DeltaDB的测试版将在几周内发布，现已开放早期用户候补名单。

---

## 6. 流行文化中的Emacs形象

**原文标题**: Emacs appearances in pop culture

**原文链接**: [https://ianyepan.github.io/posts/emacs-in-pop-culture/](https://ianyepan.github.io/posts/emacs-in-pop-culture/)

本文梳理了Emacs在流行文化中的登场记录，展现这款小众文本编辑器如何出现在影视、漫画、动画及纪录片中。典型案例包括：

- **《社交网络》（2010）**：马克·扎克伯格使用Emacs编写Perl脚本抓取照片。
- **《创：战纪》（2010）**：角色通过Emacs的eshell阻止黑客程序。
- **《北极寒流》（2010）**：科学家借助Emacs Lisp（具体为`xml-parse.el`）恢复数据。
- **《硅谷》（HBO，2014-2019）**：角色提及编辑器之战，将制表符与空格的对比类比为Vim与Emacs之争。
- **DC漫画《黑客档案》（1992-1993）**：主角执行命令`emacs cure.c`。
- **漫画《王者们的维京》**：黑客场景中出现包含`pcase`和`seq-map`的Emacs Lisp代码。
- **动画《键的金属偶像》（1994-1996）**：终端显示`save-excursion`等Emacs Lisp关键词。
- **《实习大叔》（2013）**：角色建议将Ubuntu默认编辑器由Vi改为Emacs。
- **动画《Aldnoah.Zero》（2014-2015）**：驾驶员在机体战斗中调试`.emacs`文件及Emacs Lisp片段。
- **纪录片《AlphaGo》（2017）**：DeepMind工程师使用极简配置在Emacs中编写Lua代码。
- **Netflix剧集《如何在网上卖迷幻药》**：角色在餐桌上争论Vim与Emacs的优劣。

文章还列举了知名Emacs用户（高德纳、吉多·范罗苏姆、林纳斯·托瓦兹）及特别提及内容（如xkcd的`M-x butterfly`漫画和尼尔·斯蒂芬森的文章）。作者欢迎读者通过邮件提供更多发现。

---

## 7. Waymo 尊享版

**原文标题**: Waymo Premier

**原文链接**: [https://waymo.com/blog/2026/06/waymo-premier/](https://waymo.com/blog/2026/06/waymo-premier/)

Waymo推出了**Waymo Premier**，这是一项仅限受邀会员的专属计划，面向其高频乘客。每月支付**29.99美元**，会员即可享受专为提升全自动驾驶打车服务体验而设计的独家权益。

主要权益包括：
- **优先接单：** 更快的匹配速度和更短的等待时间。
- **乘车优惠：** 每趟行程享10%现金返还，高峰时段奖励更高。
- **抢先体验：** 当Waymo扩展至新城市时，会员可率先使用。
- **灵活取消：** 每月最多**五次免费取消**。

该计划最初面向**旧金山、洛杉矶和凤凰城**的特定用户开放，并计划扩展至更多城市。Waymo表示，该计划非常适合日常通勤者和频繁使用者，能提供更高的可靠性和跨城市通用的价值。用户可留意Waymo应用中的专属邀请通知。

---

## 8. 听力训练练习

**原文标题**: Ear Training Practice Exercises

**原文链接**: [https://tonedear.com/](https://tonedear.com/)

本文介绍了 **Toned Ear: Ear Training**（音感训练），这是一个通过日常练习提供结构化训练以培养音乐聆听技巧的网站。其主要目标是通过建立对声音的直觉理解来提高音乐能力。

主要练习包括：
- **音程**：识别两个连续音符之间的距离。
- **和弦**：辨认所演奏和弦的类型（例如大调、小调）。
- **音阶**：说出所演奏音阶的名称（例如大调、小调）。
- **和弦进行**：识别序列中的每个和弦。
- **绝对音感**：说出单独演奏的一个音符的名称。
- **音级（功能性）**：在和弦进行后，识别最后一个音符相对于调性的音级。
- **调内音程（功能性）**：结合调性内的音级与音程。
- **旋律听写**：在和弦进行后，识别一段短旋律中每个音符的音级。

此外，该网站还提供**教师版**用于课堂教学，支持在线创建作业、设置具体练习、跟踪学生成绩，并包含额外的乐理练习，如和弦构建与调号识别。

---

## 9. 代码行迎来了更好的公关

**原文标题**: Lines of code got a better publicist

**原文链接**: [https://curlewis.co.nz/posts/lines-of-code-got-a-better-publicist/](https://curlewis.co.nz/posts/lines-of-code-got-a-better-publicist/)

**摘要：**

本文批判了AI生产力指标从基于结果的宣称向基于数量的虚荣指标的转变。文章指出，谷歌、Anthropic、OpenAI、Cursor等主要AI供应商如今大肆宣扬“由AI编写的代码百分比”，这本质上就是“经过更好公关的代码行数”。早期的宣称（例如GitHub声称任务完成速度提升55%）是可验证的结果衡量指标；而当前的数量指标，只要使用率上升就永远不会失效。

作者认为，结果证据已变得复杂：尽管一些研究显示任务完成效率提升了26%，但其他研究也揭示了代码更替率上升、重构减少，以及经验丰富的开发者使用AI后效率反而下降（尽管最新研究已部分推翻这些结论）。美国国家经济研究局一项调查发现，69%的企业使用了AI，但约90%的企业报告称未观察到可衡量的生产力影响。

真正令人担忧的是现实世界的影响：Block公司（裁员40%）和Atlassian公司（裁员10%）等企业以AI提升生产力为理由进行裁员，尽管其业务表现强劲。作者认为，这不过是“为其他原因所做的决策进行的公关宣传”，并指出真正的效率提升按理应推动增长，而非减少员工数量。

行动呼吁：日常使用AI，但应使用经过实战检验的指标（如DORA指标、可靠性、收入、客户价值）来衡量工程成果，而不是令牌数或“由AI编写的代码百分比”。

---

## 10. macOS 27 Beta 导致无法启动 Asahi Linux

**原文标题**: macOS 27 Beta breaks the ability to boot Asahi Linux

**原文链接**: [https://www.phoronix.com/news/macOS-27-Beta-Breaks-Asahi](https://www.phoronix.com/news/macOS-27-Beta-Breaks-Asahi)

**摘要：** 该文章报道称，苹果于2026年6月发布的macOS 27“金门”测试版导致Apple Silicon Mac无法启动Asahi Linux。该更新修改了启动选择器和启动磁盘处理方式，使Asahi Linux分区对系统不可见，但数据仍然完整。Asahi Linux警告用户避免使用macOS 27测试版，并建议保留macOS 26或更旧版本的辅助安装以恢复启动权限。已向苹果提交错误报告，但尚未收到回应。此外，Linux 7.2将支持Apple M3设备的启动功能，但尚未准备好供用户使用，尤其是受macOS 27测试版影响的用户。

---

## 11. 开发者让《半条命》在诺基亚N95上以30帧每秒流畅运行

**原文标题**: Developer gets Half-Life running at 30 FPS on a Nokia N95

**原文链接**: [https://www.tomshardware.com/video-games/handheld-gaming/developer-gets-half-life-running-at-30-fps-on-a-2007-nokia-n95](https://www.tomshardware.com/video-games/handheld-gaming/developer-gets-half-life-running-at-30-fps-on-a-2007-nokia-n95)

一位开发者成功将原版《半条命》移植到2007年的诺基亚N95智能手机上运行，实现了可玩的30帧每秒（FPS）效果。该移植版本使用了Xash3D（一款开源的《半条命》引擎重制版），并基于驱动N95的塞班S60v3操作系统构建。开发者分享了一段展示游戏在设备上运行的视频，并指出帧率并不稳定——在战斗或开阔区域会降至20 FPS——但鉴于设备年代，整体仍具备可玩性。N95搭载332 MHz的ARM11 CPU和128 MB内存，远逊于现代硬件。这一成就凸显了开发者为极度受限的硬件优化游戏的技巧，也唤起了人们对当年这类移植作为爱好者挑战的怀旧情怀。作为对比，文章提到任天堂3DS上的类似移植版本运行速度为20 FPS，这让N95的性能显得颇为惊艳。该项目并非官方发布，而是一次技术演示，体现了人们对复古游戏移植的持久兴趣。

---

## 12. DeepSeek-R1的开源复现

**原文标题**: Open Reproduction of DeepSeek-R1

**原文链接**: [https://github.com/huggingface/open-r1](https://github.com/huggingface/open-r1)

以下是基于文章的简明摘要：

**Open R1** 是一个旨在完整复现 DeepSeek-R1 推理流程的开源项目。该项目包含三个主要步骤：(1) 通过蒸馏推理数据集复现 R1-Distill 模型，(2) 复现用于 R1-Zero 的纯强化学习流程，(3) 展示从基础模型到强化学习调优模型的完整多阶段训练过程。

**主要成果包括：**
- **混合思维数据集**（35万条经过验证的推理轨迹）成功复现 DeepSeek-R1-Distill-Qwen-7B 模型
- **OpenR1-Math-220k** 和 **CodeForces-CoTs** 数据集，分别针对数学和竞技编程场景
- 一个性能媲美 DeepSeek 蒸馏模型的 7B 规模模型（AIME 2024: 52.7，MATH-500: 89.0）

**技术实现方案：**
- 支持基于 DDP 或 DeepSpeed（ZeRO-2/ZeRO-3）的 SFT 和 GRPO 训练
- 使用 TRL 的 vLLM 后端实现多节点 GRPO 训练
- 通过 E2B、Morph 和 Piston 沙箱提供代码执行奖励函数
- 包含面向分布式训练的 Slurm 集群支持

**硬件需求：** 需配置 8×H100（80GB）计算节点，要求 PyTorch v2.6.0 及 CUDA 12.4 环境。

项目以 `src/open_r1/` 为目录结构核心，提供训练脚本（`sft.py`、`grpo.py`）、常用命令的 Makefile 文件以及特定模型复现的配置文件。

---

## 13. 《精灵宝可梦GO》扫描数据曾用于训练军用无人机导航技术

**原文标题**: Pokémon Go Scans Trained the Navigation Tech for Military Drones

**原文链接**: [https://dronexl.co/2026/06/09/pokemon-go-scans-niantic-vantor-military-drone-navigation/](https://dronexl.co/2026/06/09/pokemon-go-scans-niantic-vantor-military-drone-navigation/)

**摘要：**

数亿《宝可梦GO》玩家在不知情的情况下为训练军用无人机导航系统做出了贡献。2016年至2025年间，玩家为获取游戏内奖励而扫描现实世界地点，生成了约300亿份归Niantic Spatial所有的环境扫描数据。这些扫描数据帮助训练了一套视觉定位系统，该系统通过将摄像头画面与3D地图进行匹配，使机器无需GPS即可导航。

2025年12月，Niantic Spatial与美国主要国防承包商Vantor（前身为Maxar Intelligence）合作，将这套地面系统与Vantor的空中导航软件整合。这套组合系统专为无GPS环境设计，旨在应对干扰和欺骗威胁，计划于2026年初进行现场测试。

尽管Vantor否认目前将《宝可梦GO》数据用于军事系统，但拒绝澄清其模型此前是否曾使用这些扫描数据进行训练。Niantic确认这些扫描数据曾被用于其导航模型的"早期版本"。专家指出，一旦数据被纳入人工智能模型，追溯其来源几乎不可能。

Niantic的前身可追溯至Keyhole，这是一家受中情局支持、曾在伊拉克战争期间使用的测绘公司，凸显了该公司与国防领域的长期联系。其游戏业务近期已出售给沙特主权财富基金，而测绘技术仍保留在Niantic Spatial。

核心争议集中在同意问题上：玩家同意扫描是为了游戏，而非武器项目。文章总结道，尽管无GPS导航解决了一项关键的军事难题，但利用毫不知情的游戏玩家的数据，构成了一次令人不安的伦理越界。

---

## 14. 美国太阳能发电量首次超过煤炭

**原文标题**: Solar generates more energy in US than coal for first time

**原文链接**: [https://www.theguardian.com/us-news/2026/jun/11/solar-energy-us-coal](https://www.theguardian.com/us-news/2026/jun/11/solar-energy-us-coal)

**摘要：**

5月份，美国太阳能发电量首次超过煤炭，供应全国12.8%的电力，而煤炭仅为12.2%。能源智库Ember与太阳能行业协会报告这一里程碑，凸显太阳能持续增长与煤炭衰落，尽管特朗普政府推行利好煤炭的联邦政策。

太阳能亦于5月成为第三大电力来源，仅次于天然气与核电；而煤炭在4月创下月度历史新低。Ember预计太阳能将在更多月份超越煤炭，进而实现年度反超。太阳能增长正值美国因人工智能、制造业及电气化带来的电力需求上升之际。

全球范围内，可再生能源迅速扩张，预计到2030年将供应近45%的电力。与此同时，特朗普宣布计划投入近7亿美元支持陷入困境的煤炭行业。然而，太阳能仍是增长最快的能源，并连续五年成为新增发电主力；第一季度太阳能与电池储能占新增发电容量的91%。行业领袖指出，投资者更看重回报，无论政治言论如何，太阳能始终优于煤炭。

---

## 15. Claude Fable 5：编码任务中的中等水平结果

**原文标题**: Claude Fable 5: mid-tier results on coding tasks

**原文链接**: [https://www.endorlabs.com/learn/claude-fable-5-mythos-grade-hype](https://www.endorlabs.com/learn/claude-fable-5-mythos-grade-hype)

无法访问文章链接。

---

## 16. 德国机库发现冷战时期罕见的东方集团计算机

**原文标题**: Discovery of Cold War-era rare Eastern Bloc computers in a German hangar

**原文链接**: [https://computerhistory.org/stories/explorers-of-the-lost-computers/](https://computerhistory.org/stories/explorers-of-the-lost-computers/)

2006年7月，计算机历史博物馆馆长达格·斯派塞接到线索，得知德国一座仓库中遗弃着稀有计算机。他与同事亚历克斯·博查内克前往德国卡斯特罗普-劳克塞尔，在一个机库大小的仓库内发现大量历史计算文物。这批宝藏涵盖从20世纪30年代穿孔卡片时代到冷战时期东欧系统及现代欧洲计算机，很可能是由亚琛工业大学的瓦尔特·阿梅林教授收集而成。

在十天内，两位馆长采用2米×2米的网格系统，对超过1000件物品进行了编目。他们发现了大型机、小型机、模拟计算机、磁带驱动器、打印机，以及TRICE和东德ROBOTRON等稀有系统。文档和介质包括穿孔卡片、纸带及存有源代码和手册的磁带。尽管面临水渍、霉菌等挑战，甚至在附近发现了一枚二战时期的未爆炸弹，团队仍对文物进行了评估和标签标注以便保存。

在CHM理事伊克·纳西（SAP公司）承担运输费用后，七辆牵引式挂车将2056件文物运往加利福尼亚州。此次收购促使CHM扩建其存储设施。这批藏品现被称为SAP收藏，是全球最伟大的业余计算机珍品库之一，保留了一段生动的计算历史。

---

## 17. 谁是勒索软件组织“绅士”的操控者？

**原文标题**: Who Runs the Ransomware Group 'The Gentlemen?'

**原文链接**: [https://krebsonsecurity.com/2026/06/who-runs-the-ransomware-group-the-gentlemen/](https://krebsonsecurity.com/2026/06/who-runs-the-ransomware-group-the-gentlemen/)

一名化名“Hastalamuerte”和“Zeta88”的俄罗斯网络犯罪分子被确认为勒索软件团伙“绅士”的管理员。该团伙是2026年第二活跃的勒索软件组织，受害目标超过240个。该团伙以“勒索软件即服务”（RaaS）模式运营，向加盟者提供90%的赎金分成——高于行业标准的80%——从而推动其快速扩张。该团伙主要针对VPN和防火墙等联网设备，能在数小时内加密网络。

包括Check Point和Intel 471在内的多家安全公司追踪发现，“Hastalamuerte”对应一名俄罗斯用户，该用户曾从俄罗斯伊热夫斯克市注册多个网络犯罪论坛。其邮箱和Telegram ID关联到一个俄罗斯电话号码（79127650004），该号码的主人是**亚历山大·安德烈耶维奇·亚帕耶夫**，现年36岁，来自伊热夫斯克。亚帕耶夫的领英资料显示，他是俄罗斯电力供应商“乌德穆尔特乌拉尔能源公司”的B2B营销主管。他在黑客论坛上使用过“SantaMuerte”和“Alexandr 4apaev”等化名。

文章指出，只要俄罗斯网络犯罪分子避免针对本国实体，他们往往能逍遥法外。早期的操作安全失误——例如使用个人手机号和邮箱——帮助暴露了“Hastalamuerte”的身份。PRODAFT公司近期的一份报告证实，该管理员向加盟者提供被盗的Fortinet SSL-VPN凭证，并利用人工智能进行勒索软件开发及后期渗透活动。亚帕耶夫未回应置评请求。

---

## 18. 无需约束工程的智能体构建

**原文标题**: Building agents without harness engineering

**原文链接**: [https://rajitkhanna.com/agents/](https://rajitkhanna.com/agents/)

**摘要：**

本文主张不应从头构建定制的智能体框架。作者回顾了其初创公司 Prismvideos.com 最初使用 Vercel AI Agents SDK 构建媒体生成智能体，却最终被竞争对手 Higgsfield 基于开源个人智能体框架 Hermes 打造的“超级计算机”智能体所超越的经历。Hermes 免费提供了原本需要数周才能构建的功能：会话管理、记忆、工具（网络搜索、浏览器、文件系统）、技能、自主学习及自动化。作者意识到，通过为每位客户以编程方式创建 Hermes 实例（通过 Docker 容器和 WebSocket），他们可以仅专注于媒体用例的增值工程。核心洞察在于：智能体框架基础设施（记忆、自动化、容器、MCP 服务器、技能）不应由每家初创公司重复构建。开发者只需带来自己的系统提示、工具、技能和连接器，通过单一 API 调用即可获得完整的智能体。文章比较了三种托管智能体产品——Managed Hermes Agents、LangChain Managed Deep Agents 和 Claude Managed Agents，指出只有 Hermes 提供自动化、自主学习、持久目标（Ralph Wiggum 循环）、引导以及视频/图像输入功能。结论是：AI 智能体初创公司的成功之道不在于构建更优的框架，而在于与客户数据整合并学习其偏好。

---

## 19. 本地漫游，咫尺之间

**原文标题**: Travel Locally, Where You Are

**原文链接**: [https://www.ssp.sh/brain/travel-where-you-are/](https://www.ssp.sh/brain/travel-where-you-are/)

**摘要：**

西蒙·斯佩蒂的文章《原地旅行，就地探索》鼓励人们在周边环境中拥抱即兴探索，而非执着于远方目的地。文章指出，尽管远途旅行能带来文化学习，但人们往往忽视了近在咫尺的冒险机会。

作者建议拿张地图，随机选择一个附近地点，无需过多规划直接驱车前往。即便只在几公里范围内，也很可能发现尚未探索的角落。斯佩蒂描述了家庭旅行中灵活调整目的地的经历——根据天气、心情和直觉随时改变行程。在瑞士，这种随性的驾车出行带来了意外发现，比如在雪景中偶遇一次由木偶和彩墙相伴的导览之旅。

关键在于自带食物以延长户外时光，不必担心没有找到"特别"的东西，因为体验本身就有价值。这种被称为"原地旅行"的做法令人放松，能增进家庭情感，并提升你发现真正热爱之事的能力。文章最后指出，无需乘飞机远行，也能找到属于你的梦想之地。文中引用了德里克·西弗斯的观点。

---

## 20. 全自主无人机首次击杀人类士兵

**原文标题**: Fully autonomous drones have killed human soldiers for the first time

**原文链接**: [https://www.newscientist.com/article/2529849-fully-autonomous-drones-have-killed-human-soldiers-for-the-first-time/](https://www.newscientist.com/article/2529849-fully-autonomous-drones-have-killed-human-soldiers-for-the-first-time/)

**摘要：**  
据乌克兰国防工业一位人士透露，全自主AI控制无人机首次在战场上击杀人类士兵。这一一次性测试发生在两年前乌克兰战争前线，涉及10架AI操作的"终结者"四旋翼无人机。这些无人机飞行3-5公里后启动"终结者模式"，在无人类监督或实时视频传输的情况下攻击目标。测试后，有人驾驶无人机确认了伤亡情况，包括士兵和一辆卡车。

尽管乌克兰目前禁止AI做出最终打击决策，但无人机制造商亚历山大·科汉诺夫斯基主张放宽规则。该测试凸显了伦理和法律问题：专家认为自主武器消除了人类责任，可能违反国际法。联合国秘书长已呼吁禁止此类武器。虽然全自主在技术上可行，但许多军队仍将人类保留在决策回路中以确保有效性和合法性。乌克兰现行规则要求最终拦截须经人类确认，即便像Aero Center公司设计的用于拦截俄军无人机的ALITA等新系统已接近部署。

---

## 21. 波佐：快速幸运数字检测器

**原文标题**: Pozzo: A Fast Lucky Number Checker

**原文链接**: [https://github.com/Robert-Cunningham/pozzo](https://github.com/Robert-Cunningham/pozzo)

**摘要：**

本文介绍了“Pozzo”，一种高效的幸运数字检测工具，它将多个OEIS序列的搜索空间大幅扩展了1000倍至1亿倍。幸运数字通过筛法生成：从奇数开始，然后反复剔除每第n个幸存者（从3开始，接着是7，依此类推）。

Pozzo采用芬威克树处理大型筛表（可达2^40个整数），实现快速查找与删除。对于超出筛表范围的候选数字，它通过跟踪排名并将排名除以每个删除因子来计算幸运性。该工具在多个序列中发现了大量新幸运数字，包括：幸运重复数字（直至777777777777777）、幸运梅森数（直至2^49-1）、质数指数的幸运梅森数（直至2^59-1）、幸运斐波那契数（直至72723460248141）、幸运卢卡斯数（直至100501350283429）、幸运泰特拉纳奇数（直至194314552299285）以及幸运连续数字（直至123456789012345）。

本次运行在一台拥有128GB内存的机器上进行，耗时约12小时，筛取了约2^40个整数。该项目始于2019年，并在2026时代的编程辅助工具协助下完成。

---

## 22. 陶哲轩如何成为人工智能在数学领域的布道者

**原文标题**: How Terry Tao became an evangelist for AI in math

**原文链接**: [https://www.quantamagazine.org/how-terry-tao-became-an-evangelist-for-ai-in-math-20260608/](https://www.quantamagazine.org/how-terry-tao-became-an-evangelist-for-ai-in-math-20260608/)

菲尔兹奖得主、数学家陶哲轩已成为数学研究中倡导使用人工智能及Lean等自动化证明验证工具的先锋。本文追溯了陶哲轩从早期展露惊人天赋——以最年轻选手身份摘得国际数学奥林匹克金牌，后来证明格林-陶定理——到拥抱协作化与计算化方法的心路历程。

最初，陶哲轩参与发起"多项式项目"，这是一个通过大规模在线协作攻克数学难题的项目。尽管该项目卓有成效，但在验证贡献成果时面临挑战，这使陶哲轩意识到计算机验证对扩展此类协作至关重要。在多年探索后，陶哲轩于2023年开始学习Lean证明验证系统，并以形式化一则短证明作为实验。他发现，人类证明中看似简单的步骤在Lean中需要巨细靡遗的刻画，但这一过程能提供绝对可靠的准确性。

陶哲轩的转变折射出更宏大的愿景：未来的数学家或许不再独立或小团队作战，而是通过大型项目开展协作，其成果由计算机自动校验。陶哲轩相信，通过整合人工智能与形式化验证，数学将变得更高效、更可靠、更具协作性，从而开启该领域的新纪元。

---

## 23. FPS.cob：用COBOL编写的第一人称射击游戏

**原文标题**: FPS.cob: A first person shooter in COBOL

**原文链接**: [https://github.com/icitry/FPS.cob](https://github.com/icitry/FPS.cob)

本文介绍了**FPS.cob**，一个用COBOL编写的第一人称射击游戏，这是一个幽默且刻意荒诞的项目，将这门语言传统的商业/应用领域与现代游戏开发形成鲜明对比。

**关键要点：**
- 游戏支持两种地图风格：
  1. 基于网格的路径（类似《德军总部3D》），使用`map/level1.map`。
  2. 包含门和不同高度区域的区块/线段地图（类似《毁灭战士》），使用`map/doom_sectors.map`。
- **运行环境：** 需要`cobc`（COBOL编译器）、`ffplay`和`bash`。
- **启动方式：** 在项目根目录执行`bash build.sh`；可选参数为地图文件路径。
- **操作方式：** W/S（前进/后退），A/D（左转/右转），空格（开火），Q（退出）。
- **资源文件：** 纹理和精灵图存储在`res/`目录，地图文件存储在`map/`目录。

文章将该项目定位为一次故意为之的困难且不合时宜的实践——“COBOL式的胡闹”——在挑战现代开发所谓的便捷性的同时，仍然呈现出一款功能完整的经典风格FPS体验。

---

## 24. Show HN：Claw Patrol —— 面向智能体的安全防火墙

**原文标题**: Show HN: Claw Patrol, a security firewall for agents

**原文链接**: [https://github.com/denoland/clawpatrol](https://github.com/denoland/clawpatrol)

**Claw Patrol** 是一款专为AI智能体与自动化工作流设计的开源安全防火墙。它作为位于智能体与生产环境之间的中间件代理，在线缆层级检测流量，并强制执行基于HCL（HashiCorp配置语言）定义的策略。

**核心特性：**
- **流量管控：** 根据自定义规则，阻止或暂停操作（例如破坏性SQL语句、`kubectl delete pod`命令）。
- **线缆级解析：** 使用CEL表达式提取协议特定信息（SQL动词、Kubernetes资源、HTTP方法/路径）。
- **多种部署模式：**
  - `clawpatrol gateway`：运行带HCL配置的代理二进制文件。
  - `clawpatrol join`：通过WireGuard隧道路由所有主机流量。
  - `clawpatrol run`：封装单个智能体的进程树（使用Linux网络命名空间或macOS NetworkExtension）。

**示例规则：** 通过拒绝判定与说明，阻止对Kubernetes机密信息的访问。

**安装方式：** 通过Shell脚本一键安装，或从源码（Go + Node.js）构建。
**许可证：** MIT协议。访问[clawpatrol.dev](https://clawpatrol.dev)可获取完整文档与配置参考。

---

## 25. 在iPhone上编写GBA游戏

**原文标题**: Programming a GBA Game on an iPhone

**原文链接**: [https://blog.adamledoux.net/posts/2026-06-08-programming-a-gba-game-on-an-iphone.html](https://blog.adamledoux.net/posts/2026-06-08-programming-a-gba-game-on-an-iphone.html)

本文描述了作者完全使用iPhone制作Game Boy Advance（GBA）游戏的成功实验。主要内容如下：

- **概念**：作者意识到仅凭iOS设备即可开发并编译GBA游戏，并付诸实践。
- **成果**：他们制作了一款名为**《TO THE TOWER》**的短篇“bitsylike”风格游戏，可在itch.io平台下载。
- **使用工具**：
    - **工具链**：GBA引导程序结合`gcc-arm-none-eabi`（用于GBA开发的ARM编译器）。
    - **终端**：iSH（iOS版Alpine Linux终端），用于编译游戏。必要的ARM GCC工具链直接通过该应用的包管理器安装。
    - **文本编辑器**：Textastic（iOS代码编辑器）。
    - **模拟器**：Delta，用于在手机上测试游戏。
- **结论**：本文证明，借助现代iOS应用，无需传统PC即可完成自制GBA游戏的编码、编译与测试。

---

## 26. Nextcloud Hub 26 春季版：共同构建，面向未来设计

**原文标题**: Nextcloud Hub 26 Spring: Built together, designed for the future

**原文链接**: [https://nextcloud.com/blog/nextcloud-hub26-spring/](https://nextcloud.com/blog/nextcloud-hub26-spring/)

以下是文章的简洁摘要：

**Nextcloud Hub 26 Spring：周年纪念版**

Nextcloud 迎来十周年，发布了 Hub 26 Spring，强调隐私、主权和开源协作。主要更新包括：

**优化用户界面：** 新增“华夫饼”菜单，集中访问应用；减少侧边栏干扰；改进标签页高亮。

**办公套件扩展：**
- **Collabora Online：** 新增 AI 聊天侧边栏，支持 Nextcloud 助手；可自定义状态栏；提供演示文稿幻灯片分区；以及电子表格的“随机排序”功能。
- **新选项——Euro-Office：** 一款在欧洲构建的主权开源办公套件，支持无缝协作、卓越的浏览器性能、深度兼容微软 Office 文件格式，并可通过 iOS/Android 应用进行移动端编辑。

**平台与社区：** 本次发布汇集了数千名开发者、翻译人员和合作伙伴的贡献，进一步强化了 Nextcloud 社区驱动的治理模式，并致力于提供可替代大型科技公司的未来证明方案。

---

## 27. SVG-Line：为Emacs打造更优质的状态栏 – Charlie Holland的博客

**原文标题**: SVG-Line: Better Status Bars for Emacs – Charlie Holland's Blog

**原文链接**: [https://www.chiply.dev/post-svg-line](https://www.chiply.dev/post-svg-line)

以下是对查理·霍兰德（2026年6月8日）文章 **《svg-line：为Emacs打造更优质的状态栏》** 的精炼总结：

本文介绍了**svg-line**，一个全新的Emacs包，旨在利用SVG（可缩放矢量图形）替代传统文本方法，创建更具视觉吸引力且功能更强大的状态栏。其主要目标是用现代化、轻量级且高度可定制的图形栏取代默认的、常常显得杂乱的模式行。

关键要点包括：
- **图形增强：** svg-line将状态元素（如缓冲区名称、主模式、行/列位置）渲染为动态SVG图像，支持渐变、圆角、自定义颜色和比例间距——这些是纯文本难以或无法实现的特性。
- **轻量高效：** 作者强调，该包针对性能进行了优化，仅在必要时更新SVG，以避免拖慢Emacs速度，与某些笨重的GUI替代方案不同。
- **高度可定制：** 用户可以配置各个分段（如左、中、右），为数据源定义自定义函数，并应用类似CSS的样式。它能轻松集成到现有的Emacs配置中，并与`powerline`或`doom-modeline`等流行包兼容。
- **应用场景：** 它解决了默认Emacs模式行在美学灵活性上的局限，使界面更简洁、更现代，且不牺牲功能性或引入冗余。
- **技术实现：** 完全用Emacs Lisp构建，并利用了Emacs内置的SVG支持，确保无外部依赖。

总体而言，**svg-line**将自己定位为Emacs状态栏的现代化图形升级方案，在美观、性能和深度个性化之间取得了平衡。

---

## 28. Show HN：我在48小时内为东湾搭建了一个红旗警告区域检查工具

**原文标题**: Show HN: I built a Red Flag Warning zone-check tool for the East Bay in 48h

**原文链接**: [https://redflag-check.info](https://redflag-check.info)

本文介绍了一款专为东湾地区在48小时内搭建的红旗预警区域查询工具。用户可通过输入地址或选择学校，实时查询美国国家气象局针对该具体位置发布的红旗警告状态。

文章强调了一项关键安全警示：NWS多边形区域仅为预警边界，并非实际防火屏障。文中援引1991年奥克兰山火灾、2023年拉海纳火灾及2025年帕利塞兹火灾等历史事件为证——这些风助火势均突破名义预警区域，直至燃料耗尽或海洋阻隔才停止蔓延。作者建议：无论多边形状态如何，应将整个火灾季的夜晚视为潜在火灾天气之夜，并始终备好应急包。

此外，该工具包含“伙伴核查”功能：用户可输入朋友姓名与地址查询其所在区域，便于在火灾条件下相互确认安全状况。核心要义在于实用备灾原则：切勿仅凭官方多边形边界作为安全决策依据。

---

## 29. 软件测试的新纪元

**原文标题**: A new era for software testing

**原文链接**: [https://antirez.com/news/168](https://antirez.com/news/168)

**摘要：软件测试的新时代**

文章认为，软件测试正经历根本性变革，超越传统的手动和基于脚本的自动化方法。其关键驱动力是人工智能（AI）与机器学习（ML）的崛起，使测试从*被动*验证转向*主动*缺陷预防。

**要点：**
1.  **AI驱动测试：** AI工具如今能自动生成测试用例、分析代码变更以预测故障点，并在应用程序用户界面（UI）变更时自动修复测试脚本。这大幅降低了维护成本。
2.  **左移与右移：** 测试不再是最终阶段。它正被早期集成到开发中（左移）以提供即时反馈，并延伸至生产环境（右移）以监控真实用户行为和系统性能。
3.  **聚焦质量工程：** 测试人员的角色正从“缺陷发现者”演进为“质量工程师”，负责协作构建架构、设计测试策略以及解读AI数据。
4.  **关键挑战：** 文章指出，虽然AI加速了测试，但它需要新技能、高质量的训练数据以及审慎的监督，以避免算法偏差。

**结论：** 这个新时代以更智能、更快速、更持续化的测试为特征，人类专业知识通过智能自动化得到增强，从而以更快的速度交付更高质量的软件。

---

## 30. 工作中的无所事事

**原文标题**: Doing nothing at work

**原文链接**: [https://www.seangoedecke.com/doing-nothing-at-work/](https://www.seangoedecke.com/doing-nothing-at-work/)

**摘要：**

本文认为，许多工程师应当减少工作量——既缩短工时，也放慢节奏——将利用率控制在80%，每天留出20%的时间远离电脑。科技领域的高影响力工作往往由时机敏感的非同寻常事件主导（例如，疏通重大交易、化解事故、推出关键功能）。成功源于在正确的时间解决正确的问题，而非埋头处理低优先级的任务。

保持“松弛”能让工程师察觉机遇，并被管理者指派承担高影响力工作。“无所事事”——留出缓冲时间、避免惊慌、让大脑休息——能减轻压力、防止倦怠，并使工程师能全神贯注于紧急任务。

工程师应刻意回避某些工作：胶水工作（无偿的组织协调，为公司掩盖错误）、掠夺性私下请求（他人委派但无正式功劳的工作），以及可能被取消的项目。学会拒绝或延迟回应，可以保护时间与职业生涯。

以80%的精力仍可实现高效能；而100%的全心投入应每年仅预留给两三次高回报的情况。关键在于刻意留出余裕，以抓住非比寻常的机遇。

---

