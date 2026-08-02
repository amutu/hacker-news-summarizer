# Hacker News 热门文章摘要 (2026-08-02)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. 当公交通行证还是手工设计的时候（2022）

**原文标题**: When transit passes were designed by hand (2022)

**原文链接**: [https://letterformarchive.org/news/milwaukee-transit-passes/](https://letterformarchive.org/news/milwaukee-transit-passes/)

这篇文章重点介绍了密尔沃基公交系统从20世纪30年代到60年代发行的设计精美的周通勤通行证。密尔沃基声称于1919年发明了周通勤通行证；在初步成功后，生产于20世纪30年代转为内部进行，这些通行证以其色彩鲜艳、手工书写的设计而闻名。这些票券上有大幅手绘的周次数字、日期范围和细小文字，全部饰以横幅和边框装饰。得益于字体设计师托比亚斯·弗雷尔-琼斯的捐赠，1932年至1969年间约300件作品现藏于档案馆。值得注意的是，尽管系统从私人公司过渡到密尔沃基县公交系统，这些艺术作品直到1992年仍是在艺术板上手工制作供印刷使用。早期通行证的设计者大多不为人知。文章建议，现代公交系统如今依赖单调的数码卡，可以从密尔沃基的例子中学习，在日常通勤中注入视觉乐趣，尤其是在疫情后客流量下降的情况下。文章还将这些通行证定位为从事系列字体、数字和色彩设计工作者的灵感来源。本文由副策展人兼编辑总监斯蒂芬·科尔斯撰写。

---

## 12. Meshdiff：在浏览器中可视化比较两个STL版本，纯客户端实现

**原文标题**: Meshdiff – visually compare two STL versions in the browser, client-side

**原文链接**: [https://meshdiff.com/](https://meshdiff.com/)

Meshdiff 是一个基于浏览器的3D差异比较工具，旨在直观地比较3D模型文件的不同版本。它支持STL、3MF和OBJ等常见格式，使用户能够识别两个模型之间的差异。该工具完全在客户端运行，这意味着模型数据在浏览器中处理，而不是在服务器上处理。然而，Meshdiff需要JavaScript才能运行，因此用户必须在浏览器中启用JavaScript才能使用该工具。简而言之，它提供了一种便捷的客户端方式，直接在网页浏览器中比较3D模型版本。

---

## 13. 使用SDL 2以C语言编写的Fasttracker II复刻版

**原文标题**: Fasttracker II clone in C using SDL 2

**原文链接**: [https://16-bits.org/ft2.php](https://16-bits.org/ft2.php)

该文章宣布了一个用C语言编写、使用SDL 2的可移植Fasttracker II克隆版本，由开发者8bitbubsy托管在16-bits.org上。文章提供了一张截图，并附上维基百科链接以供了解原版Fasttracker II的背景信息。

最新版本v2.22可供下载，更新日志日期为2026年7月19日。支持的平台包括：

- **Windows**：Windows 7 SP1及更高版本；同时提供32位构建版本，但仅在必要时使用，因为它可能误触发杀毒软件检测。
- **macOS**：提供适用于Intel和Apple Silicon的通用二进制文件，要求OS X 10.11或更高版本。
- **Linux**：提供amd64/x86_64软件包，但作者不提供支持，且不确定用户需要哪个文件。

源代码和更多文档可在GitHub上获取，包括一份“HOW-TO-COMPILE.txt”文件；该项目可在Linux上编译。

文章还列出了几项特定平台的注意事项：

- 在Windows上，如果存在NVIDIA GPU且GeForce Experience中启用了相应快捷键，ALT+F4/ALT+F5（复制/粘贴模块）可能无法使用。
- 在macOS上，用户必须右键点击应用并选择“打开”一次，然后前往“系统设置”→“隐私与安全性”中允许其运行。许多FT2按键绑定与macOS系统快捷键冲突，需要重新映射或移除。全屏切换使用ALT+Enter或Ctrl+Cmd+F。
- 在Linux上，ALT+F4（复制音序）和ALT+F5（粘贴音序）需要更改操作系统键盘快捷键以释放这些绑定。

文章还提醒，使用多个不同刷新率显示器的用户可能会遇到程序问题。最后附有版权信息和Discord邀请链接。

---

## 14. 欧盟人工智能模型规则正式生效。将会发生哪些变化？

**原文标题**: EU rules on AI models become enforceable. What's going to change?

**原文链接**: [https://www.euronews.com/my-europe/2026/08/02/eu-rules-on-ai-models-become-enforceable-whats-going-to-change](https://www.euronews.com/my-europe/2026/08/02/eu-rules-on-ai-models-become-enforceable-whats-going-to-change)

截至2026年8月，欧盟关于人工智能模型的规则将开始执行，使欧盟委员会成为全球领先的人工智能监管机构。《人工智能法案》现在涵盖大型语言模型，要求模型开发透明、披露受版权保护的训练数据，并向下游用户提供信息。前沿模型还须承担额外义务，以识别和减轻社会风险。大多数西方人工智能实验室签署了自愿性行为准则，但Meta没有签署。

执法工作由欧洲人工智能办公室负责，该办公室面临资源有限以及监管快速演变技术的挑战。它计划利用外部专家和人工智能安全公司。在特朗普政府领导下，美国可能将严格执法视为对美国利益的攻击，这与先前围绕数字规则的争端如出一辙。

对欧洲人而言，该法律旨在确保人工智能安全和基本权利，即使是对在欧盟运营的外国公司也是如此。行业批评者认为它拖慢了创新；消费者可能会看到先进人工智能模型的推出因企业确保合规而延迟，但他们会更信任现有的人工智能是安全的。

预计欧盟将通过“布鲁塞尔效应”树立全球标杆。然而，在执法优先事项上存在争议：人工智能伦理传统侧重于歧视、隐私和人类监督，而有效利他主义则强调存在性风险，如网络攻击、生物武器或失控。近期事件——例如Anthropic的模型受到美国出口管制限制，以及OpenAI智能体在测试中进行黑客攻击——可能促使欧盟委员会转向存在性风险。专家警告说，不要只关注那些头条新闻驱动的威胁，并坚持认为基本权利和社会风险也必须得到解决。

---

## 15. 我的个人AI基准测试：“生成一张带有哈布斯堡下颌的青蛙的SVG。”

**原文标题**: My personal AI benchmark: "Generate an SVG of a frog with a Habsburg jaw."

**原文链接**: [https://frogs.vaguespac.es/](https://frogs.vaguespac.es/)

本文介绍了一个个人AI基准测试，包含三次运行，要求模型“生成一个带有哈布斯堡下颌的青蛙SVG”。每次运行都生成了不同的青蛙SVG，其特征包括圆顶状头部、凸出的眼睛、鼻孔、脚，以及夸张突出的下颌以表现反颌。

**运行1**（64.0秒，3,900字节）主要使用结构性标签，但加入了解剖学解释：“巨大的突出下颌”、上唇“后缩，藏于下颌之后”，以及下牙“突出”于上唇之上。

**运行2**（42.0秒，3,465字节）更具表现力，标注了“巨大的突出哈布斯堡下颌”和“下牙突出于上唇之上”，还有“下垂的高贵眼睑”，这暗示了情绪和皇家风范，超越了单纯的解剖描述。

**运行3**（59.6秒，3,909字节）回归到以结构性标签为主，但仍强调畸形，描述了“巨大且拉长的突出下颌”和“反颌嘴：上唇后缩，下唇突出”。值得注意的是，它避免了对情绪、皇室或风范的评论。

关键要点在于各次运行中标注风格的变化：有些使用中立的结构性标记，而另一些则对夸张的畸形甚至隐含的性情进行评述。完整的SVG源代码已包含在内，展示了颌部形状、牙齿位置、面部阴影和眼部处理方面的视觉差异。这篇文章突显了不同的模型输出如何以不同程度的字面标注与解释性修饰来诠释相同的提示词。

---

## 16. SwiftUI 七年之后

**原文标题**: SwiftUI After 7 Years

**原文链接**: [https://ykvm.com/2026/07/swiftui-a-story-of-mediocrity/](https://ykvm.com/2026/07/swiftui-a-story-of-mediocrity/)

根据这篇批评性深度分析，SwiftUI 自 2019 年首次亮相以来已有七年，但对于资深开发者而言，它仍然极不成熟。文章认为，SwiftUI 已经变成了一个“永久测试版”，而非一个精良的、生产级框架。

要点如下：

- **数据流混乱**：状态管理从 `@State`/`@ObservedObject` 演进到 `@Observable` 和宏，但视图更新仍然不可预测且难以调试——一个“黑盒”响应式系统。
- **布局脆弱**：尺寸协商系统会意外崩溃。即使是苹果官方的 SwiftUI 教程项目，在 macOS 上也会出现侧边栏损坏。开发者经常求助于 `GeometryReader`，但这破坏了 SwiftUI 的声明式优势，并需要手动进行坐标计算。
- **API 稳定性与向后兼容性差**：键盘关闭或工具栏自定义等基本功能迟到了多年。`AsyncImage` 直到 iOS 15 才加入，图片缓存仍处于测试阶段。API 经常被重命名或替换（例如 `NavigationView` → `NavigationStack`），迫使开发者维护兼容层和 `#available` 分支。
- **性能落后于 UIKit**：一场正面交锋的图片画廊测试显示，即使经过优化，SwiftUI 的滚动流畅度也明显较差。该框架处理简单任务也需要高端硬件。
- **跨平台被夸大**：“学会一次，随处应用”在实践中很少奏效；iOS 和 macOS 的布局差异显著，组件在各平台上的行为也不一致。
- **文化转变**：作者认为 SwiftUI 证明了苹果如今接受“够用就好”的质量，而非 Cocoa/Aqua 时代的工匠精神。这一点体现在 Apple Music、TestFlight、设置和主屏幕中持续存在的第一方漏洞上。

---

## 17. 折叠纸球

**原文标题**: Folding Paper Globes

**原文链接**: [https://foldingglobes.com/globes](https://foldingglobes.com/globes)

文章《折叠纸地球仪》介绍了一系列可打印模板，用户可通过剪切、折叠和拼装来制作三维纸地球仪。这些模板涵盖广泛主题，主要聚焦于我们的太阳系和地球的诸多特征。

在太阳系方面，模板包括太阳、月球、火星、水星、金星、木星，以及木卫一（伊奥）、木卫二（欧罗巴）和土卫六（泰坦）等卫星，还有矮行星冥王星和谷神星。这一部分帮助用户直观了解这些天体的表面和相对外观。

以地球为主题的模板展示了地球在自然和人文背景下的各种形态，包括经典视角，如太空看地球、夜间地球、蓝色弹珠和绿色地球。其他主题涉及地球的系统和环境：海洋温度、海洋生命、陆地温度、云层、降雨、冰雪、生物群落、人口密度，以及撒哈拉沙尘和气溶胶。此外，还有“没有水的地球”这样引人注目的概念模型。

文章还提供了“数据地球仪”，将现实世界的数据映射到球体上，包括一个世纪以来的大地震、世界火山、陨石着陆点、世界遗产地、构造板块和时区。这些模板将原始数据转化为可动手操作、可视化的学习工具。

总体而言，这篇文章为地理学、天文学、地球科学和数据可视化提供了一种创造性的教育资源。通过折叠这些纸地球仪，读者能够以互动、手工制作的形式，更好地建立对行星以及地球自然和人文现象的空间理解。

---

## 18. 德国车企裁员后，大量经理涌入就业市场

**原文标题**: German carmakers flood jobs market with managers after wielding axe

**原文链接**: [https://www.ft.com/content/e345d51f-11f7-4d4d-8f09-86dd3a225597](https://www.ft.com/content/e345d51f-11f7-4d4d-8f09-86dd3a225597)

无法访问文章链接。

---

## 19. Show HN：Bor – Linux 桌面的开源策略管理

**原文标题**: Show HN: Bor – Open-source policy management for Linux desktops

**原文链接**: [https://getbor.dev/blog/2026-08-02-bor-v080-release/](https://getbor.dev/blog/2026-08-02-bor-v080-release/)

Bor v0.8.0 是开源 Linux 桌面策略管理工具的最新版本，引入了三种新的策略类型、一次重大的 Web UI 改版和一轮安全加固。

**新的策略类型：**
- **Thunderbird：** 管理 policies.json（类似于 Firefox ESR），支持 Flatpak 和 RPM/DEB 安装，并在策略被移除时恢复原始文件。防篡改监视器保护被管理的文件。
- **Microsoft Edge for Business：** 将 `bor_managed.json` 写入 Edge 的受管策略目录，在最后一个绑定策略被移除时进行清理，并提供带有完整 Edge 策略目录的树形编辑器。
- **Firewalld 区域：** 通过写入 `/etc/firewalld/zones/` 的 XML 管理区域，使用 `firewall-cmd --check-config` 进行验证，重新加载 firewalld，并应用防篡改保护。

**其他关键改进：**
- **Polkit：** 规则现在通过 `action.lookup()` 支持变量条件，并正确使用 `||` 连接多个动作 ID。
- **RBAC：** 用户/角色管理现在使用按动作权限进行更细粒度的委派。
- **Web UI：** 采用 PatternFly 6 重新设计，具备 URL 路由、全页策略编辑器、未保存更改保护、JSON 验证、面向大规模设备群的服务端分页、键入确认删除，以及 WCAG 2.2 AA 无障碍合规性。
- **Proto 驱动的目录：** Firefox、Thunderbird、Chrome 和 Edge 策略目录共享单一的 protobuf 真实来源。
- **安全：** 严格的 mTLS 客户端证书绑定、TOTP 秘密迁移至 HKDF 加密、仓库辅助工具中的 SSRF 防护、CSV 公式注入防护、管理员密码写入仅 root 可读的文件而非日志、自动 TLS 证书重新生成，以及解决所有 Dependabot 警报。
- **平台：** React 19.2、react-router 8.3、gRPC 1.82.1，并在 CI 中强制执行 TypeScript 类型检查。

**升级说明：** 代理必须为 v0.8.0 才能强制执行新的策略类型；proto 架构已更改；前端开发现在需要 Node.js 22.22+。软件包可用于主要 Linux 发行版，支持 x86_64、aarch64 和 ppc64le 架构。

---

## 20. 欧洲纯电动汽车销量跃升50%，市场份额达26%

**原文标题**: Europe EV Sales BEVs Jump 50% & Reach 26% Market Share

**原文链接**: [https://cleantechnica.com/2026/08/02/europe-ev-sales-report-bevs-jump-50-reach-26-market-share/](https://cleantechnica.com/2026/08/02/europe-ev-sales-report-bevs-jump-50-reach-26-market-share/)

六月，欧洲纯电动汽车（BEV）注册量同比增长50%，达到创纪录的36.6万辆，BEV市场份额约26%。插电式汽车整体增长41%，插电式车型市场份额达37%；BEV占插电式汽车销量的71%。年初至今，BEV市场份额为23%（含PHEV为33%），已超过2025年的最终结果。

欧洲整体市场增长13%，达140万辆。电气化总销量（插电式车型加混合动力）占市场72%，汽油车降至21%，柴油车仅占6%。

六月最畅销电动汽车：
- 特斯拉Model Y：34,480辆，也是整体市场第一名
- 特斯拉Model 3：18,028辆
- 比亚迪Atto 2：13,100辆
- 宝马iX1/X1插电混动：11,778辆
- 雷诺5（含Alpine A290）：10,785辆

其他亮点：宝马iX3录得8,439辆，奔驰CLA电动版6,676辆，达契亚Spring回归销量5,676辆，沃尔沃EX30和XC60插电混动表现强劲。中国汽车制造商合计市场份额翻倍至10%，其中比亚迪增长147%，零跑增长568%，名爵增长49%。特斯拉销量增长51%，位列整体市场第11名。

从细分市场看，A、D和E细分市场电气化程度较高，但关键的B和C细分市场仍以内燃机为主。文章还指出，Stellantis决定为新款Panda提供内燃机版本的做法受到批评，而路虎在欧洲正被中国品牌Jaecoo抢走市场份额。

---

## 21. “碾压这位女士”：eBay骚扰行动如何导致5600万美元赔偿

**原文标题**: 'Crush this lady': how eBay harassment campaign led to $56M payout

**原文链接**: [https://www.ft.com/content/06ec1b03-d4af-40cf-b12a-4ba5a410f6d2](https://www.ft.com/content/06ec1b03-d4af-40cf-b12a-4ba5a410f6d2)

eBay同意支付5600万美元，与马萨诸塞州夫妇David和Ina Steiner达成和解，这对夫妇经营着电商新闻网站eCommerceBytes。这场骚扰活动由eBay前安保和公关人员于2019年策划，起因是Steiner夫妇发表了批评该公司的文章。骚扰行为包括威胁性推文、监视，以及寄送令人不安的包裹，如活蟑螂和带血的猪面具。一条内部消息写道：“整垮这位女士。”FBI的调查导致刑事指控；数名eBay员工认罪。民事和解涵盖精神损害和惩罚性赔偿。eBay还承认了“恶劣行为”，并表示已配合联邦调查人员。

---

## 22. Great Question (YC W21) 正在招聘高级需求生成经理

**原文标题**: Great Question (YC W21) Is Hiring Senior Demand Gen Manager

**原文链接**: [https://www.ycombinator.com/companies/great-question/jobs/YutDxyf-senior-demand-generation-manager](https://www.ycombinator.com/companies/great-question/jobs/YutDxyf-senior-demand-generation-manager)

Great Question是一家由Y Combinator支持的AI客户研究平台，正在招聘一名高级需求挖掘经理（远程，美国）。该公司帮助团队招募参与者、开展研究并分享见解，服务于Gusto、Experian、Canva和Brex等客户。

该职位负责一个核心指标：销售合格线索（SQLs）。任职者将构建并执行覆盖自然搜索、AI搜索、内容、合作伙伴关系、门控内容、推荐、目录、活动和付费获客的多渠道需求引擎。他们需要将产品营销资产转化为可复制的线索生成系统，细分实践者受众（研究员、设计师、产品经理），并与增长负责人合作衡量漏斗指标（MQL→SQL→SQO转化率、每条线索成本、渠道ROI）。团队刻意保持精简，因此成功依赖于承包商、自动化和AI辅助工作流，在不增加人手的情况下扩展执行规模。

任职

薪酬为具有竞争力的OTE（70%基本工资 / 30%浮动奖金），并根据SQL达成情况提供无限额度的季度奖金。公司提供远程优先的文化、高度信任/自主权、团队团建、股权、带薪休假、健康福利和学习津贴。Great Question重视客户痴迷、好奇心，以及包容、无歧视的工作环境。公司由Ned Dwyer和PJ Murray于2020年创立，目前拥有41人的团队，运营活跃。

---

## 23. 人工智能：记忆术与即时知识的承诺

**原文标题**: Artificial Intelligence: Ars Notoria and the Promise of Instant Knowledge

**原文链接**: [https://publicdomainreview.org/essay/ars-notoria/](https://publicdomainreview.org/essay/ars-notoria/)

本文考察了《诺托里亚技艺》——一部中世纪魔法手稿，其承诺能快速掌握学术知识，使人瞬间获得文法、修辞、辩证法、哲学、医学和神学等大学科目的学问。该文本匿名撰写，托名所罗门王，据称通过复杂的图式、咒语和听上去极为虔诚的祈祷文发挥作用。这些不可理解的词句和名号据称是古老的 angelic 语言，而图式则被视为通向神圣力量的媒介，而非单纯的插图。

尽管披着神圣的外衣，这部作品仍遭到教会的谴责。圣托马斯·阿奎那在《神学大全》中特别对其加以斥责，称之为“非法且徒劳的”，并论证其符号既非人类语言，亦非神圣圣事，因而引人堕入与魔鬼的契约。尽管如此，仍有五十六份手稿存世，足见其持续的吸引力。

这些仪式要求极高，需要经过高级训练。修行者必须遵循与太阴日相关的复杂时间表，反复诵念祈祷文，并在数周内对图像进行深度的“凝视”。文章着重记述了十四世纪修士约翰弟兄的经历。他被该文本承诺的快速且廉价的学习所吸引，起初视之为美好而神圣之物。但在依仪式修行一个月后，他经历了恐怖的异象，见到傲慢的形象要求人们崇拜。他逐渐相信这本书来自魔鬼，尽管难以舍弃，最终在一次圣母异象之后，编写了自己的一套替代祈祷文集。该文本通过翻译和印刷延续至近代早期，足见其承诺的持久魅力。

---

## 24. Show HN：Fuse – 静态类型函数式编程语言

**原文标题**: Show HN: Fuse – statically typed functional programming language

**原文链接**: [https://fuselang.org](https://fuselang.org)

Fuse 是一种静态类型、纯函数式编程语言，结合了高阶类型（higher-kinded types）与特设多态（ad-hoc polymorphism）。它通过 GRIN 全程序优化器编译为 LLVM 生成的原生二进制文件。

该语言的类型系统基于 System F，支持高阶多态，并支持代数数据类型、泛型和特质（traits）。每个函数都是纯函数，支持模式匹配、高阶函数和 do 记法，从而实现富有表现力的组合性。双向类型推断意味着只有函数签名需要显式类型——其余一切都由编译器推断。语法借鉴了 Rust、Python、Scala 和 Haskell，使用基于缩进的代码块和类似 ML 的构造，以提高可读性。

示例代码演示了定义 `Functor` 特质、带有 `fold` 和 `sum` 的 `List` 实现，以及通过 `fmap` 函数使用高阶类型。该语言通过 GRIN 进行全程序优化，再通过 LLVM 生成快速、小巧且具有零成本抽象的原生二进制文件。

Fuse 支持 Linux（x86_64）和 macOS（ARM64）平台，可通过以下 curl 命令安装：`curl -fsSL https://fuselang.github.io/fuse/fuseup | sh`。

---

## 25. Go 1.27 交互式指南

**原文标题**: Go 1.27 Interactive Tour

**原文链接**: [https://victoriametrics.com/blog/go-1-27/index.html](https://victoriametrics.com/blog/go-1-27/index.html)

我无法提供有意义的摘要，因为完整的文章文本未被包含——只有标题和占位行（“Blog /Go 1.27 interactive tour”）。如果您分享实际的文章内容，我很乐意用300字以内概括要点。

---

## 26. Show HN：我是一个15岁的准工程师，这是我制造的摆线齿轮箱

**原文标题**: Show HN: I'm a 15 Year Old Wannabe Engineer, This Is a Cycloidal Gearbox I Built

**原文链接**: [https://github.com/tom-ilan/cycloidal_gearbox](https://github.com/tom-ilan/cycloidal_gearbox)

本文展示了一个由15岁少年制造的摆线齿轮箱，它是通过自定义Python脚本生成的。摆线齿轮箱将转速转换为扭矩。

该项目经历了三个设计版本：
- **版本1：** 手摇原型，传动比为1:9，用于验证Python生成器。
- **版本2：** 微型齿轮箱，尺寸适配NEMA 17电机安装面；由于公差过紧和3D打印限制而失败。
- **版本3：** 由NEMA 17步进电机驱动的大型全功能齿轮箱。

Python脚本使用摆线轮廓的参数方程生成齿轮箱几何形状。它基于SolidWorks教程，并包含关键参数：销钉数量和节圆半径、偏心距、外侧销钉半径、精度/轮廓偏移量以及输出销/螺栓半径。减速比为 **1:(N−1)**。

版本3规格：
- 传动比：1:9（10个外侧销钉，9个转子凸角）
- 外径：90 毫米
- 电机：NEMA 17 步进电机（42bygh40-A24dh）
- 材料：PLA
- 硬件：4× M3×8 螺丝，2× 6704 轴承
- 公差偏移：+0.15 毫米
- 扭矩：1.3 N·m（基础电机为0.21 N·m）
- 效率：66%

未来的改进包括用MR128轴承替换外壳销钉以减少摩擦，以及用带金属包覆的M2螺丝替换输出销钉以增加刚性和扭矩能力。

---

## 27. 全息布

**原文标题**: Holocloth

**原文链接**: [https://holocloth.vercel.app](https://holocloth.vercel.app)

全息布是一种科幻服装技术，常见于未来设定中，利用全息投影改变外观。它通常作为紧身、常呈金属色或暗色的面料穿着，并能瞬间改变颜色、图案，甚至模拟不同服装款式。全息布的主要优势在于多样性——使角色无需实际更换衣服就能切换装扮，适用于伪装、隐蔽或适应社会及环境情境。然而，该技术也有局限：它依赖电源，可能受干扰影响，且通常只投射出幻象，而非提供真正的物理防护或结构变化。在许多故事中，全息布被间谍、名人或富人使用，凸显身份与肤浅的主题。这一概念也出现在关于未来时尚和增强现实的讨论中。总体而言，全息布体现了服装作为动态、可编程表面的理念，融合了实用性与视觉奇观。

---

## 28. 受Turtle启发的交互式Python项目

**原文标题**: Turtle-inspired interactive Python project

**原文链接**: [https://www.codembark.com/projects/fv20lz9map/spider-web-drawing](https://www.codembark.com/projects/fv20lz9map/spider-web-drawing)

本文介绍了一个免费的、基于浏览器的交互式Python项目，名为“画蜘蛛网”，旨在通过绘制可视化蜘蛛网来教授Python基础知识。无需安装或注册账户，进度会保存在设备上。该项目分为15个步骤、6项任务，引导学习者掌握核心编程概念：导入模块、使用点表示法、进行函数调用、传递参数（包括数字和带引号的字符串），以及理解自上而下的代码执行顺序。学习者首先导入一个“蜘蛛助手”，然后逐步移动和转动蜘蛛来绘制方形螺旋。之后，他们添加一个颜色字符串参数来自定义蜘蛛网。每项任务都会改变预览效果，使代码与视觉输出之间的联系清晰可见。该项目还会复习所学概念，并提出后续实验建议。它以实用、直观的方式，通过一个小型移动库来练习Python基础知识。

---

## 29. Rust All Hands 2026 回顾

**原文标题**: Rust All Hands 2026 Retrospective

**原文链接**: [https://blog.rust-lang.org/inside-rust/2026/07/31/all-hands-2026-retrospective/](https://blog.rust-lang.org/inside-rust/2026/07/31/all-hands-2026-retrospective/)

作为 RustWeek 的一部分，Rust All Hands 2026 将 166 位 Rustacean 带到了荷兰的乌得勒支。这标志着这一重启的线下工作活动进入第二年，项目成员和嘉宾在此共同协作，探讨 Rust 的未来——但不会做出最终决定。

活动在三天内举办了 73 场会议，涵盖治理主题（领导委员会、项目主管、审核、文化、资金、RFC 改进）和技术演进（常量泛型、字段投影、重借用、SIMD、分配器、自定义 lint、自动 trait 等）。互操作性是一个重要主题，举办了关于 Rust/C++ 互操作、Crubit 以及与 Rust for Linux 和 Rust for CPython 合作的会议。同地举办的 RustWeek Unconference 还接待了六个生态小组（Bevy、Ariel OS、Linebender、Safety-Critical Rust Consortium、Rust GPU、Rust Embedded），约有 60 人参加。

反馈极其正面，平均评分为 9.5/10。与会者赞许了富有成效的讨论、得以推进的工作（例如用于 cargo-semver-checks 的 rustdoc JSON、操作语义的进展），以及非正式走廊交流的价值。新来者感到备受欢迎，而“State of the Teams”环节也获得了点名表扬。

Rust All Hands 将于 2027 年 5 月 27 日至 29 日作为 RustWeek 的一部分重返乌得勒支。本文感谢 Mara 和 RustNL 精心组织了本次活动。

---

## 30. 挪威三文鱼

**原文标题**: Norway Salmon

**原文链接**: [https://www.abc.net.au/news/2026-07-28/how-norway-s-salmon-industry-became-a-global-behemoth/106949872](https://www.abc.net.au/news/2026-07-28/how-norway-s-salmon-industry-became-a-global-behemoth/106949872)

挪威在20世纪80年代培育出一种温顺、生长快速的养殖鲑鱼后，成为世界上占主导地位的大西洋鲑鱼生产国。为了销售剩余鱼类，政府开展了“日本计划”，这是一项历时十年的推广活动，成功让鲑鱼寿司在日本流行起来，推动了全球需求。

鲑鱼养殖如今是一个价值180亿美元的产业——是挪威仅次于石油的第二大出口产业——养殖场遍布其海岸线。但该产业的成功也带来了环境问题。开放式网箱将鱼类排泄物和未食用的饲料直接排入峡湾，增加营养物质，助长有害藻华。在一些集约化养殖地区，氧气水平显著下降，旧化学品和重金属残留在海床中。科学家和监管机构与行业游说者之间，就鲑鱼养殖应承担多大责任存在分歧。

人们对“次级鱼”——因疾病和寄生虫而产生伤疤和缺陷的低等级鲑鱼——的担忧也与日俱增。这类鱼的数量在不到十年间翻了一倍多。一位前政府兽医表示，这些鱼很可能承受着痛苦的病症，尽管其肉质经过加工后仍然安全可食用。

对此，像Hofseth这样的公司正在投资新技术，包括一种名为“蛋”的封闭式潜水养殖舱，它可以将养殖鱼类与周围海域隔离并收集废物。这些创新技术成本高昂，但该行业表示，挪威必须在环境限度内追求增长。这篇文章突显了鲑鱼的经济重要性与其工业化规模养殖所带来的生态和伦理代价之间的紧张关系。

---

## 31. 迪亚塔克西斯

**原文标题**: Diátaxis

**原文链接**: [https://diataxis.fr/](https://diataxis.fr/)

Diátaxis 是一种系统化的技术文档编写方法，它解决写什么、怎么写以及如何组织的问题。它识别出四种不同的用户需求，并对应四种文档形式：教程、操作指南、技术参考和解释。这四者被置于一种系统性的关系中，文档应围绕它们来组织。

这种方法对用户和文档创建者/维护者都有益处：它轻量、易理解、易于应用，且不施加任何实现限制。它还提供了一种积极的质量原则，帮助维护者有效地思考他们的工作。

文章概述了两个主要部分：“从这里开始”，包括通过教程、操作指南、参考、解释、指南针和工作流程进行的实际应用；以及“理解 Diátaxis”，深入探讨更深层的理论、基础、地图、质量、四种类型之间的关系以及复杂的层级结构。

这种方法在实践中已被验证，来自 Vonage、Gatsby 和 Cloudflare 等组织的推荐证明了 Diátaxis 能够提升文档清晰度、信息架构和贡献者体验。

---

## 32. ESP32-C3 SuperMini天线改装

**原文标题**: ESP32-C3 SuperMini antenna modification

**原文链接**: [https://peterneufeld.wordpress.com/2025/03/04/esp32-c3-supermini-antenna-modification/](https://peterneufeld.wordpress.com/2025/03/04/esp32-c3-supermini-antenna-modification/)

文章描述了一种对廉价ESP32-C3 SuperMini开发板的简单天线改装方案，可显著改善其较弱的WiFi信号范围。原装紧凑型贴片陶瓷天线性能不佳，因为它过于靠近接地层，且缺少数据手册所要求的间距和带状线布局，导致阻抗失配和射频能量反射。

改装方案是增加一段31毫米长、直径1.0毫米的镀银导线，作为四分之一波长（λ/4）天线。其中约16毫米的导线被弯成水平环形（直径约8毫米），其余15毫米垂直向上延伸。环形两端直接焊接在原贴片天线的两端——即50欧姆引脚和另一个"热"端——从而无需移除PCB天线即可有效绕过它。原天线在电气上变为不工作状态。

测试使用自制的ANNEX32 BASIC WiFi记录器，并排对比了改装与未改装模块的RSSI。结果显示信号强度持续提升至少6dB，经常超过10dB，尤其是在远距离或有障碍物遮挡时。这意味着可用覆盖范围大约翻倍，连接也更加稳定。该改装成本低廉，只需基本的焊接技能，并通过水平和垂直元件的组合保留了全向辐射特性。作者指出，不建议使用更长的垂直段来制作5/8波长天线的变体。保留原贴片天线不会造成任何问题；0.8毫米导线也能工作，但比1毫米镀银版本差约2dB。

---

## 33. MkLinux与改装版Apple Workgroup Server 9150

**原文标题**: MkLinux and the pimped-out Apple Workgroup Server 9150

**原文链接**: [http://oldvcr.blogspot.com/2026/08/mklinux-and-pimped-out-apple-workgroup.html](http://oldvcr.blogspot.com/2026/08/mklinux-and-pimped-out-apple-workgroup.html)

这篇文章讲述了Floodgap为MkLinux重建并“改装”一台Apple Workgroup Server 9150的项目，同时提供了苹果早期服务器战略的历史背景。它将苹果的服务器雄心追溯到失败的Macintosh Office（1985年），后者以LaserWriter和Macintosh XL为核心，但随着“Big Mac”项目（一个计划中的基于Unix的文件服务器）在史蒂夫·乔布斯离职后被取消，该计划随之瓦解。这一愿景后来影响了Macintosh II和A/UX——苹果基于System V的Unix系统，带有Mac Toolbox层，于1988年首次发布。A/UX 2.0增加了MultiFinder和更好的Mac应用程序兼容性；A/UX 3.0于1991年随System 7一同发布。

苹果首批真正的服务器于1993年发布：Workgroup Server 60、80和95——即Quadra系列的换牌机型。高端机型AWS 95（“Chinook”）出厂预装A/UX 3.0.1，配备PDS SCSI/L2缓存卡，并可选配支持200用户的AppleShare Pro，吸引机构买家。然而，苹果向PowerPC的过渡打乱了服务器计划：预期的PowerPC 620和A/UX 4.0 / PowerOpen平台从未实现。在CEO迈克尔·斯平德勒的领导下，苹果转而与Novell合作，移植Portable NetWare，后来又提供MkLinux作为Power Mac上的Linux选项。9150是一款较老的NuBus Power Mac，既能运行经典Mac OS，也能运行MkLinux，因此成为这次重建的焦点。

---

## 34. Seedance 2.5

**原文标题**: Seedance 2.5

**原文链接**: [https://seed.bytedance.com/en/blog/one-take-creation-flexible-referencing-introducing-seedance-2-5](https://seed.bytedance.com/en/blog/one-take-creation-flexible-referencing-introducing-seedance-2-5)

Seedance 2.5 是字节跳动推出的新一代视频生成模型，基于 Seedance 2.0 的统一多模态音视频联合生成架构构建。它专注于基础生成和基于参考的生成，以支持长篇叙事、多模态参考和精准编辑。

主要改进：
- **长视频生成**：单次即可生成高质量30秒音视频片段，并支持多轮扩展，可实现角色、环境和叙事节奏一致的多分钟内容。镜头转换、场景变化以及图像/音频/运动质量均得到增强，呈现更自然、更具电影感的视觉效果。
- **多模态参考**：单次生成可接受多达30张图片、10个视频片段和10个音频片段。增强功能包括黏土渲染参考（用于分镜、机位和空间结构）、运动参考和创意参考，支持复杂的多主体、多场景制作。
- **精准编辑**：支持时间戳级控制，可对音视频内容进行针对性编辑。绿幕编辑、视角编辑和基于参考的编辑等高级功能满足专业影视和广告标准，在保证主体一致性的同时实现与新环境的自然交互。

该模型已在即梦AI、豆包Pro等平台上线，并通过火山方舟提供API接入。它还探索了在教育和制造领域的应用，例如将课程内容转化为沉浸式视觉效果，以及提升教学视频制作质量。本文凸显了Seedance 2.5的目标：超越简单的片段生成，迈向完整、可控的创意工作流。

---

## 35. 一篇关于“技术”的牢骚（2005）

**原文标题**: A Rant About “Technology” (2005)

**原文链接**: [https://www.ursulakleguin.com/a-rant-about-technology](https://www.ursulakleguin.com/a-rant-about-technology)

在这篇2005年的文章中，厄休拉·K·勒古恩回应了一位评论家的观点，这位评论家声称，因为她不是一位“硬核”科幻作家，所以技术在她的作品中被“小心翼翼地回避了”。她强烈反对这一说法，认为这反映了一种常见但错误的观念，即将“技术”等同于“高科技”。

勒古恩将技术定义为“人类与物质世界之间的积极接口”——即一个社会如何获取和准备食物、穿衣、获取能源、建造住所和行医用药。她坚持认为，任何关于未来或外星社会的故事，无论明确还是含蓄，都必然要描述这样的技术。没有人能回避它，她也无法理解为什么会有人想要回避。

她说，真正的问题在于，“技术”这个词被误用为仅指近几十年来那些复杂、专业化、资源密集型的技术。但“技术”和“高科技”并不是同义词。一项技术并不一定要计算机化或花哨才具有意义——亚麻布来自亚麻，纸张、轮子、刀具、钟表和阿司匹林等日常物品同样也是技术。为了说明这一点，她建议对任何人造物品提出这样一个问题：“我知道怎么制作它吗？”简单的工具和方法——不用火柴生火、制作鱼钩或一双鞋——同样值得与现代发明一样受到尊重。技术是我们能够学习的东西，而这正是它们强大的原因。

勒古恩还澄清道，她同意评论家的看法：她确实不写硬核科幻小说。她开玩笑说，也许她写的是“软核”科幻小说——或者也许硬的部分藏在内部，就像骨骼而不是外骨骼。无论如何，所有科幻小说本质上都是技术性的。

---

## 36. Show HN: Syncular – 基于TypeScript和Rust核心的离线优先SQL同步

**原文标题**: Show HN: Syncular – offline-first SQL sync with TypeScript and Rust cores

**原文链接**: [https://github.com/syncular/syncular](https://github.com/syncular/syncular)

Syncular 是一个离线优先的 SQL 同步系统，采用服务器权威架构，客户端拥有真实的本地 SQLite 数据库——浏览器中使用 OPFS，其他环境中使用原生 SQLite。写入经由乐观发件箱进行，而服务器上有序的提交日志是事实来源。

项目以规范优先：`SPEC.md` 是规范性文档，`spec/vectors/` 是黄金测试夹具。两个核心实现（TypeScript 和 Rust）通过实现无关的一致性测试套件保持同步。测试原则强调：集成场景使用回环内存传输，传输接口处进行故障注入，测试中显式使用就绪信号而非休眠等待；真实套接字测试数量很少且被隔离。

仓库布局包括 `packages/core`（编解码器、类型、测试向量往返）、`packages/server`（请求处理，SQLite/Postgres/D1 的存储与认证接口）、框架绑定（Hono、Cloudflare Workers）、基于 `@sqlite.org/sqlite-wasm` 的 Web 客户端、React hooks、类型生成器（模式 IR + TS 代码发射）、crypto 与 Yjs CRDT 合并器、测试工具包、一致性测试运行器、带 C-ABI FFI 的 Rust 核心、Tauri/React Native/Swift/Kotlin/Flutter 绑定，以及文档站点。

命令为 `bun install` 和 `bun run check`（类型检查、lint、测试）。贡献者必须阅读 `AGENTS.md`；所有工作都须遵循该原则（规范优先、无回退、测试中无定时器、跨核心一致性）。LLM 辅助可用于测试、复现、基准测试、文档和生产代码，但所有内容必须经过审查与理解。低质量机器生成的 PR 将被直接关闭且不予评论；完整政策和纯文本文档包位于 syncular.dev/llms。

---

## 37. 说“谷歌一下”让你听起来很老

**原文标题**: Saying 'Google It' Makes You Sound Old

**原文链接**: [https://www.nytimes.com/2026/07/23/magazine/google-it-search-it-up.html](https://www.nytimes.com/2026/07/23/magazine/google-it-search-it-up.html)

无法访问文章链接。

---

## 38. 在MI355X上运行Kimi K3，性价比优于B300

**原文标题**: Running Kimi K3 on MI355X at Better Performance per Dollar Than B300

**原文链接**: [https://www.wafer.ai/blog/kimi-k3-mi355x](https://www.wafer.ai/blog/kimi-k3-mi355x)

Kimi K3是一个拥有2.8T参数的开源模型，体积过大，无法在单个B200节点上运行，需要B300或两个B200节点。AMD的MI355X提供288GB显存，与B300相当，但每GPU成本约为B300的2.4分之一，尽管软件支持较弱，但作为服务选项更具成本优势。

Wafer对MI355X的推理服务性能与NVIDIA配置进行了基准测试。在1,024 token输入/400 token输出的测试中，8× MI355X节点实现了聚合吞吐量952 tok/s和单流解码118 tok/s。TP16 B200部署（2个节点）实现了聚合吞吐量498 tok/s（约249/节点）和单流90 tok/s；B300节点达到1,568 tok/s和172 tok/s。按单位成本计算，MI355X实现了48 tok/s/$，而B300为33，B200仅为7，在每美元性能上大幅领先两者。B200的数据受到跨节点全归约延迟的影响，因为Kimi K3需要两个节点。

需要两个关键的软件修复。首先，推测解码最初在ROCm上崩溃，因为sglang的ROCm构建缺少`top_k_renorm_prob`，导致`NameError`错误。修复方案是一个简单的PyTorch top-k归一化函数，而非自定义内核。启用推测后，单流吞吐量提升了约2.2倍，峰值聚合吞吐量提升了18%。

其次，MI355X的预填充速度较慢，原因是Triton注意力回退机制。快速的AITER MLA内核仅支持每秩4、8或16的倍数个头，而TP8产生12个头。将头数从12零填充到16，运行快速内核，然后提取真实头，将172k token的冷预填充从约4–7k tok/s加速到约13k tok/s，改善了TTFT。

总体而言，Kimi K3在MI355X上几乎可以开箱即用地提供服务，只需少量框架修复，并实现了最佳的每美元性能。作者认为AMD的软件差距正在缩小，并质疑CUDA的护城河是否已经消亡。

---

## 39. 赛博脚本

**原文标题**: Cyberscript

**原文链接**: [https://cyberscript.dev](https://cyberscript.dev)

Cyber 是一种快速、跨平台的脚本语言，专为易于学习而设计，同时支持动态与静态类型。它通过纤程实现并发，具备内存安全性，并拥有带 JIT 编译的高性能虚拟机。其语法支持可选的静态类型和简洁的迭代，如 Hello World 示例及使用纤程的递归斐波那契函数所示。

该语言通过 `libcyber` 专为嵌入应用程序、游戏和引擎而构建，同时也提供 CLI 用于桌面端和服务端脚本编写。其 FFI API 允许脚本使用符合 C ABI 的库，`cbindgen.cy` 可从 C 头文件自动生成绑定，Raylib 和 LLVM 即为示例。

性能基准测试凸显了 Cyber 的高速与低内存占用。在递归斐波那契测试中，Cyber 的 VM 和 JIT 与 LuaJIT、Java 和 Node.js 相比毫不逊色，而内存占用仅约 2.9 MB。该项目仍在持续演进，欢迎通过 GitHub 和 Discord 提供反馈，并可通过 GitHub Sponsors 或 Patreon 提供支持。

---

## 40. Show HN：Katharos —— 面向Python的函数式编程与CSP风格并发

**原文标题**: Show HN: Katharos Functional programming and CSP-style concurrency for Python

**原文链接**: [https://github.com/kamalfarahani/katharos](https://github.com/kamalfarahani/katharos)

Katharos 是一个 Python 库，它将函数式编程抽象与 CSP 风格并发相结合。它提供了代数类型，如 Functor、Applicative、Monad、Semigroup 和 Monoid，以及实用类型如 Maybe、Result、ImmutableList 和 IO。

其核心思想是将错误、副作用和并发通信建模为可组合、类型安全的值，而不是异常或 None 检查。例如，Maybe 消除了分散的 `None` 检查，Result 将错误转化为可通过 `|` 链式调用的值；失败的计算会自动短路。`Result.catch` 将抛异常的函数转换为返回 Result 的函数，同时保留原始回溯。

任何 monad 都支持 do 表示法，允许使用 `yield` 干净地解包 monadic 值的命令式风格代码。

在并发方面，Katharos 提供 Go 风格的消息传递：`csp.Channel` 支持类型化的并发发送/接收，`csp.go` 启动并发工作，从通道接收返回 `Result`，因此关闭或超时的通道被视为值而非异常。`csp.go` 上下文管理器提供结构化并发，在退出前等待所有生成的并发工作完成。运行时构建在可替换的 `BaseThreadingBackend` 之上，可轻松重新定位并发模型；计划支持 actor 模型。

该库可通过 pip 或 uv 安装，文档见 katharos.readthedocs.io，并以 MIT 许可证发布。

---

