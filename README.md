# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-08-02.md)

*最后自动更新时间: 2026-08-02 20:44:17*
## 1. 卡尔帕蒂的鹈鹕

**原文标题**: Karpathy’s Pelican

**原文链接**: [https://twitter.com/karpathy/status/2083749667410727319](https://twitter.com/karpathy/status/2083749667410727319)

Karpathy描述了一个实验，将LLM推向超越简单提示词（如“生成一个骑自行车的鹈鹕SVG”）的边界。他给了Opus 5《指环王》的第一段，配以100万token的预算（约10美元），要求它用three.js渲染整个故事。Opus花了大约两个小时编写了5，500行代码，以程序化方式渲染了这段叙事。结果虽然粗糙，但很有趣。

Karpathy感到难以置信的是，模型能够在（x，y，z）坐标中放置和编排多边形资产，并让一切动起来。他指出，这是一个典型案例：以前没有人会费心去做的事情（“头脑正常的人不会愿意花这个时间”）现在变得可行了，因为LLM有着无穷的精力和耐心——“当然，为什么不呢，反正几乎免费。”他看到了按需生成超个性化世界的潜力，比如一个临时的“某某版GTA”，玩家可以以旁观者NPC或角色的身份进入其中。

然而，这个实验也凸显了LLM的一大弱点：它们很难审查自己的工作，因为它们无法原生地感知视频或在这些环境中玩游戏。Opus不得不缓慢地在各个位置截图，多次出错，并产生了各种故障。Karpathy认为，多模态游戏玩法和视频感知是一项仍然非常欠缺的原始能力。

---

## 2. Show HN: Kakehashi – 实验性用户空间，用于在Linux ARM上运行macOS二进制文件

**原文标题**: Show HN: Kakehashi – Experimental userspace to run macOS binaries on Linux ARM

**原文链接**: [https://github.com/wie-project/kakehashi](https://github.com/wie-project/kakehashi)

Kakehashi 是一个实验性的用户态翻译层，无需 JIT 就能在 Linux aarch64 上运行 macOS ARM64 二进制文件。它加载 Darwin Mach-O 文件，映射独立式 libSystem，并翻译 BSD 系统调用。真实的客户程序可以运行：clang 探针、7-Zip (7zz)、curl 以及多线程操作。

**工作原理：** 通过 `cargo install kakehashi` 安装，然后执行 `kh bottle ensure`、`kh install 7zip`、`kh install curl`。客户路径（如 `/usr/local/bin/7zz`）通过 bottle 目录（`~/.local/share/kakehashi/bottle/`）映射，`/Volumes/linux/...` 桥接到宿主机文件系统。还提供了用于测试的 Docker 辅助脚本。

**Crates：** `kakehashi`（`kh` 二进制）、`kh-loader`（Mach-O 解析/映射）、`kh-runtime`（内存、系统调用、bottle；内嵌 libSystem dylib）以及 `kh-libsystem`（该 dylib 的源代码，仅面向 Apple 目标平台）。

**性能：** 客户代码原生运行；开销主要在系统调用边界。实测的多文件 7zz 基准测试比原生 Linux 慢约 ×5.2（118 秒对 22.5 秒），但压缩密集的少量文件场景通常约为 ×1.1–1.2。开发者认为，Linux arm64 上慢 ×5 的 CI 仍可能比 macOS runner 更便宜，因为 macOS 托管分钟的价格约为 Linux arm64 费率的 ×10–×12。

**限制：** 不具备完整的 curl 功能集，没有真正的 Apple Security.framework，没有 git/CLT、GUI 或 codesign。尚不能作为产品宣称。

**

---

## 3. 开发者依恋工具，因为工具编码了信任。

**原文标题**: Developers are attached to tools because tools encode trust

**原文链接**: [https://stackoverflow.blog/2026/07/29/developers-are-attached-to-tools-because-tools-encode-trust/](https://stackoverflow.blog/2026/07/29/developers-are-attached-to-tools-because-tools-encode-trust/)

本文探讨了为何开发者仍对Vim和Emacs等熟悉工具情有独钟：精通会培养出无意识的胜任力与信任感，使工具如同手的延伸。相比之下，AI编程智能体虽然快速，却不透明、不可预测，侵蚀了信任——调查数据显示，使用率从76%升至84%，而信任度却从40%降至29%。由于AI工具不断变化，与稳定可预测的工具相比，它们难以赢得信任。

工具编码了流程，却无法修复有缺陷的流程。智能体编程加快了代码生成，却将瓶颈转移到了验证、代码审查和基础设施成本上。CI/CD和代码检查工具等现有防护措施可能并不契合新的工作流。成功采用AI需要改变组织文化和流程，而不仅仅是添加新工具。

要重建信任，开发者必须保持责任感：由人来掌控代码与审批。协作变得更为困难，因为智能体可能将开发者隔离在各自的孤岛中。建议的做法包括：在PR中共享智能体提示词和运行记录；明确列出所有需求（因为任何未明确说明的内容都可能被交由运气决定）；为智能体提供丰富且经过验证的上下文；以及复用组件而非重新生成（避免AI“把所有东西写两遍”的倾向）。同样重要的是，要知道何时*不*使用AI——bash脚本等确定性解决方案可能优于大语言模型。

归根结底，信任源于可预测性和流程。与AI建立信任需要精心设计的工作流程、人工判断、反馈循环和高质量上下文。成功的团队不会是生成代码最多的团队，而是构建出可信、协调一致系统的团队。

---

## 4. 笔记与个人知识管理

**原文标题**: Note-Taking and Personal Knowledge Management

**原文链接**: [https://unattributed.cc/note-taking-and-personal-knowledge-management](https://unattributed.cc/note-taking-and-personal-knowledge-management)

这篇文章是对布伦南·肯尼斯·布朗一篇论文的批判性回应，该论文质疑笔记法和个人知识管理（PKM）系统是否产生了有意义的公共理解。作者认为，布朗的核心问题本身就有缺陷：像Obsidian这样的软件工具本身并不贡献知识——它们只是帮助人们创造、写作和思考。Obsidian被简单描述为一个灵活的个人维基，而非一个承诺“永不过时”或“认识论价值”的系统。

文章还批评了布朗不断转换问题。最初关于有意义贡献、学术界、真正的作家和吞吐量的问题被反复改写或收窄，使论证难以跟进。作者认为，“重要而有意义的贡献”是主观的，判断成功人士是否使用PKM毫无意义，衡量“吞吐量”也很模糊。

布朗将尼克拉斯·卢曼的Zettelkasten（卡片盒笔记法）视为“神话”的说法遭到否定：该系统是卢曼特有的，并非无效。作者还指出，孵化——一种已知的创造力机制——明确包含在蒂亚戈·福特的“第二大脑”方法中，这削弱了布朗对超链接笔记的否定。引用“学者即收藏者”实际上支持了学者们会富有成效地囤积和整理信息的观点。

最后，文章驳斥了那种“抓把柄”式的说法，即PKM的推销者自己并不使用他们的系统——这并不能证明关于系统本身的任何问题。将纸质笔记与PKM进行类比同样不公平：图书馆里有许多与某项目无关的书籍，却并未因此失去价值。简而言之，作者总结道，布朗曲解了PKM，改变了自己的标准，未能推翻知识管理工具的价值。

---

## 5. Show HN：NixOS-DGX-Spark – 在 DGX Spark 上运行 Nix 和 NixOS

**原文标题**: Show HN: NixOS-DGX-Spark – Nix and NixOS on the DGX Spark

**原文链接**: [https://github.com/graham33/nixos-dgx-spark](https://github.com/graham33/nixos-dgx-spark)

本文介绍 **NixOS-DGX-Spark** 项目，该项目将 Nix 和 NixOS 引入 NVIDIA DGX Spark（以及华硕 Ascent GX10）。它提供了两种主要方式：

- **在 DGX OS（Ubuntu）上使用 Nix：** 通过官方脚本或 Determinate 安装程序安装 Nix，启用 flakes，并使用提供的 devshells/playbooks。Nix 构建的 CUDA 应用需要 `nix-gl-host` 才能访问 GPU；基于容器的 playbooks 会自动避免这一问题。
- **安装 NixOS：** 从 flake 构建 USB 镜像，禁用安全启动（Secure Boot），然后启动。该镜像提供两种内核选择：NVIDIA 专用内核（默认，完整的 GPU/以太网支持）或标准 NixOS 6.17 内核（存在已知的网络问题）。

该仓库包含一个 NixOS 模块（`hardware.dgx-spark.enable`），用于配置硬件、选择内核、启用 DGX Dashboard（端口 11000），并通过 `fwupd` 管理固件更新。一个模板（`nix flake init -t ...#dgx-spark`）可以快速生成完整的 NixOS 配置。

**Playbooks** 涵盖多种工作负载（ComfyUI、多智能体聊天机器人、vLLM、TensorRT-LLM、PyTorch 微调等），并标记为“Full Nix”（完全可复现）或“Container”（通过 Podman 在运行时拉取）。

**缓存** 是减少构建的关键：Flox CUDA 二进制缓存（推荐，由模块自动配置）以及用于仓库特定包的 `graham33` Cachix 缓存。

**固件更新：** 必须首先使用 DGX OS 更新固件，NixOS 才能可靠启动。也可以从 NixOS 通过 `fwupdmgr` 应用更新。

最后，**nixos-anywhere** 被列为实验性的远程安装选项，该项目采用 MIT 许可证。

---

## 6. 我们教授英语学习者的词汇发生了怎样的变化

**原文标题**: How the words we teach English language learners changed

**原文链接**: [https://pudding.cool/2026/07/essential-words/](https://pudding.cool/2026/07/essential-words/)

这篇文章比较了两份英语学习者词汇表：通用服务词汇表（1953年）和新通用服务词汇表（2023年）。70年间，约600个单词被删除，新增了1100多个单词，反映了日常生活的重大变迁。

最显著的变化是从具体、可触摸的词汇转向抽象、制度性的词汇。像apple（苹果）、fork（叉子）、soap（肥皂）、goat（山羊）以及制作面包相关的词汇（flour面粉、wheat小麦、bake烘焙）都消失了，而新增的词汇包括mortgage（抵押贷款）、corporation（公司）、legislation（立法）、analysis（分析）和perspective（视角）。2023年版词汇表使用了更多抽象术语，而描述实物、身体、食物和周边环境的词汇则更少。具体性评分也证实了这一点：高度具体的词汇占比从21%降至14%。新增的抽象词汇侧重于过程和评估（如assessment评估、criteria标准、methodology方法论），而非像mercy（怜悯）或loyalty（忠诚）这样的情感词汇。

作者将此归因于社会变迁：从体力劳动向白领工作的转变，以及日常生活与国家、全球体系的联系日益紧密。新词汇反映的是对系统——健康、金融、政府——的管理，而非对实物的处理。同样值得注意的还有：新增了许多副词（absolutely绝对地、approximately大约、relatively相对地），用于明确程度、频率和确定性，表明语言需要更加精确。

一个很能说明问题的例子是："bread"（面包）仍然保留在列表中，但制作面包的词汇（flour面粉、wheat小麦、harvest收割、bake烘焙）却没有。这份词汇表从描述一个自给自足、亲力亲为的世界，转向了一个更加系统化、规范化和抽象的世界。

---

## 7. TP-Link TL-841N的Rooting、固件分析与持久化凭据

**原文标题**: Rooting, firmware analysis and persistent credentials of TP-Link TL-841N

**原文链接**: [https://blog.juni-mp4.com/posts/42/rooting-the-tplink-tl841n-pt1/](https://blog.juni-mp4.com/posts/42/rooting-the-tplink-tl841n-pt1/)

提供的文本与标题不符。标题暗示这是一篇关于TP-Link TL-841N路由器刷机及固件分析的技术文章，但实际内容却是一篇简短、非正式的个人博客引言。

要点如下：

- 作者是博客挑战的新手，今年决定尝试“Blaugust”。
- 他们对这一承诺表现出犹豫和自嘲式的幽默（“天哪，我把自己卷进什么事了。我已经后悔了。”）。
- 他们提到了罗伯特（Robert）给出的一个提示，似乎来自“AuguStory”，询问作者最初是如何开始写博客的。
- 摘录以一句括号内的说明“一段题外话”突然结束，暗示着一次偏离或未完成的思绪。

简而言之，这段文字是关于加入博客活动的个人反思式博客引言——而非标题所示的技术安全分析。

---

## 8. RISC OS Open 二十年

**原文标题**: Twenty Years of RISC OS Open

**原文链接**: [https://www.riscosopen.org/news/articles/2026/06/20/twenty-years-of-risc-os-open](https://www.riscosopen.org/news/articles/2026/06/20/twenty-years-of-risc-os-open)

RISC OS Open Ltd 于2006年6月20日成立，旨在将专有的RISC OS转变为开放、由社区开发的系统。二十年过去，该项目已基本实现目标，这款操作系统的健康状况远胜于起步之时。

按年份划分的关键里程碑包括：

- **2006–07年：** 与Castle合作的共享源代码计划首次将RISC OS源代码交到公众手中。
- **2009–10年：** 每晚自动构建启动，对BeagleBoard的移植为更廉价的硬件打开了大门。
- **2010–11年：** 赏金计划（Bounty Scheme）让社区能够资助并投票选择所需功能。
- **2012–13年：** RISC OS Pi将操作系统带到了树莓派（Raspberry Pi），吸引了新一代用户。
- **2013–14年：** RISC OS 5.20成为多年来首个稳定ROM版本，覆盖包括经典Risc PC机型。
- **2017–18年：** BBC BASIC参考手册回归，RISC OS 5.24进入稳定版。
- **2018–19年：** RISC OS在Apache 2.0许可下重新授权，完全自由地用于任何用途——这是自2006年以来的最初目标。
- **2019–20年：** 整个代码库及历史记录迁移至公共GitLab；针对树莓派4的支持工作启动。
- **2020–21年：** RISC OS 5.28发布，官方支持树莓派4，并带来约700项改进。
- **2022–23年：** 支持硬件FPU的BASIC编译器将Mandelbrot运行速度提升35倍。
- **2023–24年：** RISC OS 5.30问世，涵盖七个硬件平台，同时带来原生Git、开源SparkFS及NVMe支持。
- **2024–25年：** 超过1,000个合并请求被采纳，并宣布了Moonshots计划，旨在将RISC OS迁移至64位Arm。
- **2025–26年：** Moonshots获得赞助商和志愿者，8GB树莓派内存被解锁，Fortran重返工具集。

文章将这份进展归功于整个社区——编码者、缺陷报告者、赏金捐赠者、论坛用户和测试人员——并期待下一个二十年的到来。

---

## 9. F*：一种面向证明的通用编程语言

**原文标题**: F*: A general-purpose proof-oriented programming language

**原文链接**: [https://fstar-lang.org/](https://fstar-lang.org/)

F* 是一种通用的、面向证明的编程语言，同时支持纯函数式编程和有效应编程。它将依赖类型与使用 SMT 求解器的证明自动化以及基于策略的交互式定理证明相结合。F* 程序默认编译为 OCaml，也可选择通过 KaRaMeL 提取为 F#、C 或 Wasm，以及使用 Vale 工具链提取为汇编语言。该语言本身用 F* 实现，并使用 OCaml 进行引导。它是 GitHub 上的开源项目，由微软研究院、Inria 和社区积极开发。

---

## 10. 挖掘SSH凭据：来自我的蜜罐网络的洞见

**原文标题**: Harvesting SSH Credentials: Insights from My Honeypot Network

**原文链接**: [https://uphillsecurity.com/articles/harvesting-ssh-credentials-insights-from-my-honeypot-network/](https://uphillsecurity.com/articles/harvesting-ssh-credentials-insights-from-my-honeypot-network/)

本文报告了一个分布式SSH蜜罐网络前30天的运行情况。该网络于2026年7月部署在全球15台专用服务器上，拥有15个IPv4地址，主要位于欧洲，托管于5家VPS提供商。

收集的关键数据：
- 6,790个独立攻击IP
- 1,531,053次总登录尝试
- 131,922组独特的用户名/密码凭据对
- 12,238个独特用户名和97,621个独特密码

攻击来源：亚洲占独立IP的60.1%，而欧洲产生了60.2%的全部登录尝试。按IP数量计算，排名前几位的国家是中国、美国和印度；按登录尝试计算，荷兰以44.8%居首。一些ASN产生了极高的流量，其中TechTies Inc.和TECHOFF SRV LIMITED位居前列。

最常见的凭据是可预测的默认值：`root/123456`、`root/root`、`root/password`和`admin/admin`。使用最多的用户名是`root`，使用最多的密码是`123456`。

技术设置使用Ubuntu Server LTS，Ansible用于自动化和日志收集，WireGuard VPN用于管理，以及一个用Python和Paramiko编写的自定义低交互SSH蜜罐。该蜜罐通过Quadlet作为无根Podman容器运行，监听22端口。地理定位和ASN数据通过ipgeolocation.io进行丰富。

未来计划包括添加更多蜜罐类型（数据库、Web、FTP），增加更多服务器和IPv6支持，密码哈希，与密码列表交叉引用，与abuseIPDB共享情报，通知提供商，以及构建实时仪表板。作者还计划改进报告和自动化，并在CC BY 4.0许可下公开更多数据。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 2 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 3 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 4 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 5 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 6 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 7 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 8 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 9 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 10 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 11 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 12 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 13 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 14 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 15 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 16 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 17 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 18 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 19 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 20 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 21 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 22 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 23 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 24 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 25 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 26 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 27 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 28 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 29 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 30 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 31 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 32 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 33 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 34 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 35 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 36 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 37 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 38 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 39 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 40 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 41 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 42 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 43 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 44 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 45 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 46 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 47 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 48 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 49 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 50 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 51 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 52 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 53 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 54 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 55 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 56 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 57 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 58 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 59 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 60 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 61 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 62 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 63 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 64 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 65 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 66 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 67 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 68 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 69 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 70 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 71 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 72 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 73 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 74 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 75 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 76 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 77 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 78 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 79 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 80 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 81 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 82 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 83 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 84 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 85 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 86 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 87 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 88 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 89 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 90 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 91 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 92 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 93 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 94 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 95 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 96 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 97 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 98 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 99 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 100 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 101 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 102 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 103 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 104 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 105 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 106 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 107 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 108 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 109 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 110 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 111 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 112 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 113 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 114 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 115 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 116 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 117 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 118 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 119 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 120 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 121 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 122 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 123 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 124 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 125 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 126 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 127 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 128 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 129 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 130 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 131 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 132 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 133 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 134 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 135 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 136 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 137 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 138 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 139 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 140 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 141 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 142 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 143 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 144 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 145 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 146 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 147 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 148 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 149 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 150 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 151 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 152 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 153 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 154 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 155 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 156 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 157 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 158 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 159 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 160 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 161 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 162 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 163 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 164 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 165 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 166 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 167 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 168 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 169 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 170 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 171 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 172 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 173 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 174 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 175 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 176 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 177 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 178 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 179 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 180 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 181 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 182 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 183 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 184 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 185 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 186 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 187 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 188 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 189 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 190 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 191 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 192 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 193 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 194 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 195 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 196 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 197 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 198 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 199 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 200 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 201 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 202 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 203 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 204 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 205 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 206 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 207 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 208 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 209 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 210 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 211 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 212 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 213 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 214 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 215 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 216 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 217 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 218 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 219 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 220 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 221 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 222 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 223 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 224 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 225 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 226 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 227 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 228 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 229 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 230 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 231 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 232 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 233 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 234 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 235 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 236 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 237 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 238 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 239 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 240 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 241 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 242 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 243 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 244 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 245 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 246 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 247 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 248 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 249 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 250 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 251 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 252 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 253 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 254 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 255 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 256 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 257 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 258 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 259 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 260 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 261 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 262 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 263 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 264 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 265 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 266 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 267 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 268 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 269 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 270 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 271 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 272 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 273 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 274 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 275 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 276 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 277 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 278 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 279 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 280 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 281 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 282 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 283 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 284 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 285 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 286 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 287 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 288 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 289 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 290 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 291 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 292 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 293 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 294 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 295 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 296 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 297 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 298 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 299 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 300 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 301 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 302 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 303 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 304 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 305 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 306 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 307 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 308 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 309 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 310 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 311 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 312 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 313 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 314 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 315 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 316 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 317 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 318 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 319 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 320 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 321 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 322 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 323 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 324 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 325 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 326 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 327 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 328 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 329 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 330 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 331 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 332 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 333 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 334 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 335 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 336 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 337 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 338 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 339 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 340 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 341 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 342 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 343 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 344 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 345 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 346 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 347 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 348 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 349 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 350 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 351 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 352 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 353 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 354 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 355 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 356 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 357 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 358 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 359 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 360 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 361 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 362 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 363 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 364 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 365 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 366 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 367 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 368 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 369 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 370 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 371 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 372 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 373 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 374 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 375 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 376 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 377 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 378 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 379 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 380 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 381 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 382 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 383 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 384 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 385 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 386 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 387 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 388 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 389 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 390 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 391 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 392 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 393 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 394 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 395 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 396 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 397 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 398 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 399 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 400 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 401 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 402 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 403 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 404 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 405 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 406 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 407 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 408 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 409 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 410 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 411 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 412 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 413 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 414 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 415 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 416 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 417 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 418 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 419 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 420 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 421 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 422 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 423 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 424 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 425 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 426 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 427 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 428 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 429 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 430 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 431 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 432 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 433 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 434 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 435 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 436 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 437 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 438 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 439 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 440 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 441 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 442 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 443 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 444 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 445 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 446 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 447 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 448 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 449 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 450 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 451 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 452 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 453 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 454 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 455 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 456 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 457 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 458 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 459 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 460 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 461 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 462 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 463 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 464 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 465 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 466 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 467 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 468 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 469 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 470 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 471 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 472 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 473 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 474 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 475 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 476 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 477 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 478 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 479 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 480 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 481 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 482 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 483 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 484 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 485 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 486 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 487 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 488 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 489 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 490 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 491 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 492 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 493 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 494 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 495 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 496 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
