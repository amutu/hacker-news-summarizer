# Hacker News 热门文章摘要 (2026-06-01)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 最新Instagram“漏洞”是我见过最滑稽的

**原文标题**: The newest Instagram “exploit” is the goofiest I've seen

**原文链接**: [https://www.0xsid.com/blog/meta-account-takeover-fiasco](https://www.0xsid.com/blog/meta-account-takeover-fiasco)

近日，Instagram曝出漏洞，攻击者可利用Meta人工智能账号恢复系统劫持账号，甚至包括奥巴马白宫账号等高价值目标。攻击者仅需知道目标用户名即可作案：通过VPN伪造位置后联系Meta支持AI，谎称账号被盗并提供任意邮箱接收验证码。AI未核实邮箱是否与原账号关联便发送验证码，攻击者借此重置密码并绕过双重验证，完全控制账号。原拥有者因绑定邮箱与手机号被替换，未收到任何通知便失去访问权限。该漏洞已活跃数周甚至数月，黑市Telegram群组甚至提供针对高价短用户名的劫持服务。虽然Meta现已修复漏洞，但此事件暴露出AI支持系统仅凭极简验证即可更改绑定邮箱的安全隐患。

---

## 2. 斯坦福大学CS336课程AI智能体使用指南

**原文标题**: AI Agent Guidelines for CS336 at Stanford

**原文链接**: [https://github.com/stanford-cs336/assignment1-basics/blob/main/CLAUDE.md](https://github.com/stanford-cs336/assignment1-basics/blob/main/CLAUDE.md)

**CS336 AI智能体使用准则摘要**

CS336课程中的AI智能体必须充当**助教**角色，而非答案生成器。其宗旨是通过**解释与引导**帮助学生**学习**，而非代为完成作业。

**允许的行为：**
- 解释概念，指引学生查阅课程讲义与文档
- 审阅学生编写的代码并提供通用改进建议
- 通过引导性问题辅助调试，而非直接修复
- 解释报错信息
- 建议进行合理性检查、搭建简易示例以及性能分析

**禁止的行为：**
- 编写任何Python代码或伪代码
- 直接给出解题方案或完成TODO部分
- 编辑学生代码仓库或执行bash命令
- 实现核心组件（如分词器、Transformer、优化器、训练循环、内核等）
- 指向第三方实现

**教学方式：**
提出澄清性问题，引用课程资料，建议后续步骤但不代为实现，优先使用测试与不变性检查而非直接修复。始终解释建议背后的推理逻辑。

**学术诚信：**
AI工具可用于低层编程辅助和高层概念提问，**但不得直接用于解决作业问题**。当请求越界时，智能体必须拒绝并转向解释或调试指导，或建议学生咨询课程工作人员。

---

## 3. 佛罗里达州就人工智能风险起诉OpenAI及山姆·奥特曼

**原文标题**: Florida sues OpenAI and Sam Altman over AI risks

**原文链接**: [https://www.politico.com/news/2026/06/01/openai-hit-with-florida-lawsuit-00944215](https://www.politico.com/news/2026/06/01/openai-hit-with-florida-lawsuit-00944215)

无法访问文章链接。

---

## 4. 在对RGB值进行归一化时，应该除以255还是256？

**原文标题**: Should you normalize RGB values by 255 or 256?

**原文链接**: [https://30fps.net/pages/255-vs-256-division/](https://30fps.net/pages/255-vs-256-division/)

**摘要：**

本文探讨了在将8位整数转换为浮点数进行图像处理时，RGB值应除以255还是256进行归一化的问题。

- **标准方法（除以255）：** 将0映射为0.0，255映射为1.0。此方法简单、应用广泛（例如GPU使用），且便于检测黑色（0.0）。但两端的分箱（0和255）宽度仅为其他分箱的一半，导致极端值略难生成且存在微小偏差。
- **替代方法（加0.5后除以256）：** 将0映射为0.001953125。该方法确保每个整数都映射到两个整数之间的精确中点，分箱宽度更均匀，理论重建误差略低（1/1024 vs 1/1020）。但会掩盖零值，并将逻辑与8位输入绑定。

本文将这两种方式定义为两种量化器类型：中升型（标准方法）和中平型（替代方法）。虽然替代方法精度略高，但作者认为，在处理来源未知的图像（几乎所有实际应用场景）时，标准除以255的方法才是正确选择。在加载可能使用标准公式编码的图像时，采用不同的缩放比例反而会引入更多误差。只有当同时控制编码和解码过程时，替代方法才具有合理性。

---

## 5. CS336：从零开始的语言建模

**原文标题**: CS336: Language Modeling from Scratch

**原文链接**: [https://cs336.stanford.edu/](https://cs336.stanford.edu/)

**CS336：从零开始的语言建模**课程总结

本斯坦福课程（2026年春季）提供从零构建语言模型的完整实践方法。由Tatsunori Hashimoto与Percy Liang授课，课程引导学生走完语言模型创建的完整流程——从数据收集清洗到Transformer构建、训练及部署。

**先修要求**包括精通Python、具备PyTorch与深度学习经验，以及掌握线性代数、概率论与机器学习知识。本课程注重实现（5学分），需要大量时间投入。

**课程作业**包含五项任务：（1）构建基础Transformer语言模型（分词器、模型、优化器）；（2）使用Triton（FlashAttention2）分析优化注意力机制并实现分布式训练；（3）依据缩放定律预测模型规模；（4）通过过滤与去重处理原始Common Crawl数据；（5）应用监督微调与强化学习（RLVR/DPO）实现数学推理与安全对齐。

**课程安排**：周一/周三授课，设答疑时间、Slack交流渠道，并提供赞助商/云服务商（如Modal、Lambda Labs）的GPU算力选择。学生拥有6天晚交期限，严格学术诚信准则禁止使用AI工具直接解题。课程特别感谢Modal提供计算赞助。

---

## 6. 看似生化过程的现象，可能只是地质作用的自然特征。

**原文标题**: What appear to be biochemical processes may be a natural feature of geology

**原文链接**: [https://www.quantamagazine.org/the-dirt-that-refused-to-die-20260601/](https://www.quantamagazine.org/the-dirt-that-refused-to-die-20260601/)

**摘要：**

法国研究人员历时六年观察到，无菌土壤虽无任何生物体，却仍持续消耗氧气并释放二氧化碳——这一过程类似于微生物呼吸。由塞巴斯蒂安·方丹领导的团队对土壤进行辐照以杀死所有生命，但类似代谢的活动依然存在。他们在土壤中检测到克雷布斯循环的四种关键中间分子，并证明无菌土壤能够传导电流，表明存在类似细胞代谢的电子流动。

这项发表于《科学进展》的研究提出，某些通常与生命相关的生化反应可以在非生命的地质环境中自发发生。土壤中的矿物质和金属氧化物（如铁和铝）可能充当催化剂，无需活体酶就能分解葡萄糖等有机分子。这支持了一个日益发展的理论：代谢——而非遗传学——可能是生命起源的基础，早期地球上自然发生了前生命的化学反应。

批评者认为，死细胞残留的酶可以解释这一活性，但作者指出，已知的酶都无法持续存在六年，因此这种可能性很小。这些发现挑战了此类代谢过程仅为生命体所独有的假设，并表明“类生命”化学可能是地质学的一个基本特征，对理解生命起源以及生物学与地球科学之间的界限具有重要意义。

---

## 7. GitHub——软件的罪人

**原文标题**: GitHub and the crime against software

**原文链接**: [https://eblog.fly.dev/githubbad.html](https://eblog.fly.dev/githubbad.html)

本文由埃夫隆·利希特于2026年5月撰写，尖锐批评了GitHub日益下滑的可靠性、性能与诚信度。作者认为，这正是大型科技软件服务普遍衰退的缩影。

**核心要点：**

- **长期可靠性问题：** GitHub频繁宕机，每月发生数十起事故。作者指出该公司虚报运行时长、违反自身服务等级协议，将重心放在炫酷的AI功能（如Copilot、智能体）而非基础稳定性上。

- **前端系统崩溃：** GitHub的前端代码臃肿可笑、运行缓慢且极度消耗内存（堆内存峰值超512 MiB）。该平台在Firefox和Safari浏览器上频繁崩溃，持续变化的交互设计不断将用户导向AI工具。

- **纵容欺诈行为：** 该平台默许"刷星"和虚假开源项目存在，引用卡内基梅隆大学研究论文指出虚假星标与恶意活动存在关联。

- **自酿AI负载危机：** 微软/GitHub激进推广智能工作流，随后却将基础设施压力归咎于此，作者称之为"对自身的分布式拒绝服务攻击"。

- **实验对比：** 作者计划通过对照实验，比较GitHub与竞争对手GitLab、Codeberg的前端资源消耗（网络带宽、内存、代码体积），预测GitHub将表现最差。

**核心结论：** 利希特认为GitHub的问题源于架构性腐朽与优先级错位，最终结论是：一个拒绝坦诚承认问题的公司，无法被信任能够解决这些问题。

---

## 8. 我故意让手机变慢

**原文标题**: I made my phone slow on purpose

**原文链接**: [https://vinewallapp.com/notes/i-made-my-phone-slow-on-purpose/](https://vinewallapp.com/notes/i-made-my-phone-slow-on-purpose/)

文章讲述了VineWall创始人如何故意放慢新iPhone的速度来对抗无意识刷屏。他将手机比作一台能即时派发令人上瘾的“饼干”（内容）的机器。传统的应用拦截方法之所以失败，是因为无法解决渴求感，且容易被绕过。

他的解决方案是开发一款控制特定应用网速的iOS程序。通过限制连接速度，视频会变得“模糊不清”，而文字类应用（Reddit、X、Threads）则显示灰色加载框而非图片。随着持续滑动，限速会逐步加剧，最终出现加载转轮。这种刻意的迟缓使“饼干”失去诱惑力且难以获取，迫使人们质疑自己对内容的欲望。关键在于，降低网速通过破坏用户体验，让无意识刷屏不再令人满足。

---

## 9. Anthropic 已向美国证券交易委员会秘密提交S-1表格草案

**原文标题**: Anthropic confidentially submits draft S-1 to the SEC

**原文链接**: [https://www.anthropic.com/news/confidential-draft-s1-sec](https://www.anthropic.com/news/confidential-draft-s1-sec)

Anthropic, PBC已秘密向美国证券交易委员会（SEC）提交了一份S-1表格的注册声明草案，拟对其普通股进行首次公开募股（IPO）。此举允许公司在SEC完成审核后推进上市进程，不过IPO的具体时间取决于市场状况及其他因素。股票数量和发行价格尚未确定。该公告依据1933年《证券法》第135条发布，不构成证券出售要约。文章还重点提及了相关近期动态：Anthropic以9650亿美元投后估值完成650亿美元H轮融资，推出在编程与智能体任务方面性能提升的Claude Opus 4.8，并在其欧洲第六城米兰开设新办事处。

---

## 10. 一颗10年前的至强处理器足矣

**原文标题**: A 10 year old Xeon is all you need

**原文链接**: [https://point.free/blog/gemma-4-on-a-2016-xeon/](https://point.free/blog/gemma-4-on-a-2016-xeon/)

**在过时硬件上运行大语言模型**

本文详细介绍了如何在2016年配备128GB DDR3内存且无GPU的Xeon E5服务器上运行Gemma 4（260亿参数）。作者指出，大语言模型推理受限于内存带宽而非计算能力，因此内存带宽是主要瓶颈。

解决方案涉及对`ik_llama.cpp`进行远超Ollama等工具所能提供的深度配置。关键优化包括：

**推测解码**将小型"草稿"模型与主验证模型配对，在主模型验证前以低成本生成多个候选词元，从而有效绕过内存墙。

**混合专家模型优化**（`--cpu-moe`、`--merge-up-gate-experts`）针对CPU缓存层次结构优化专家路由，通过将权重更久地保留在L3缓存中并融合门控/上升投影为单一操作，防止缓存颠簸。

**内存管理**使用`--mlock`防止操作系统换页，使用`--run-time-repack`重新组织权重矩阵以适应CPU缓存对齐，并通过`--no-kv-offload`跳过GPU检测。

**注意力机制创新**利用自定义CPU内核实现Flash注意力（避免完整注意力矩阵实例化）和多头潜在注意力（压缩KV缓存）。

本文证明，通过适当优化，即便十年前的老旧硬件也能运行现代大语言模型——尽管图形分割等许多高级功能仍不支持MTP等复杂架构。作者强调，完整文档存在于代码本身，需要直接参与开发过程。

---

## 11. Nvidia RTX Spark

**原文标题**: Nvidia RTX Spark

**原文链接**: [https://www.nvidia.com/en-us/products/rtx-spark/](https://www.nvidia.com/en-us/products/rtx-spark/)

**NVIDIA RTX Spark 概览**

本文介绍了 **NVIDIA RTX Spark™ 超级芯片**，这是一款将 NVIDIA AI 与 RTX 图形技术融合于单一芯片的新型处理器，专为超轻薄笔记本电脑和小型高效台式机设计。关键规格包括：高达 **6,144 个 Blackwell RTX GPU 核心**、**20 核超高效 CPU**、**1 Petaflop FP4 AI 性能**，以及高达 **128 GB 统一内存**。

该芯片面向三大主要用户群体：
- **创作者：** 通过 FP4 Tensor Core、RT Core、用于 3D 渲染的 DLSS、4:2:2 硬件编解码以及 AV1 编码器加速工作流程。
- **开发者：** 运行原生 CUDA 堆栈，支持本地 AI 开发、原型制作以及大型模型的微调。
- **游戏玩家：** 支持光线追踪照明、完整 DLSS 套件、NVIDIA Reflex 和 G-SYNC。

此外，还引入了 **AI 智能体**，可将 PC 转变为能够按需执行任务、生成素材和编写代码的得力助手。该芯片提供 **全天候电池续航**，并支持超过 1,000 款加速应用与游戏。

合作笔记本电脑品牌包括华硕、戴尔、惠普、联想、微软和微星。文章最后呼吁用户注册获取上市通知。

---

## 12. M系列Mac上的Windows GOG DOS游戏

**原文标题**: Windows GOG DOS Games on M-Series Macs

**原文链接**: [https://f055.net/technology/windows-gog-dos-games-on-m-series-macs/](https://f055.net/technology/windows-gog-dos-games-on-m-series-macs/)

本文介绍了如何在Apple Silicon（M系列）Mac上运行仅支持Windows系统的GOG DOS游戏。作者指出，虽然部分GOG游戏同时支持Windows和macOS，但其他游戏（如《工人物语II》或《魔法门之英雄无敌II》）仅限Windows平台。在M2 Mac上虚拟化x64 Windows系统速度极为缓慢。

解决方案是改用Mac版DOSBox，具体步骤如下：

1. 安装Mac版DOSBox。
2. 在Windows电脑上下载并安装Windows版GOG安装程序（或使用`innoextract`等工具提取文件）。
3. 将安装后的游戏文件复制到Mac（例如`/Users/<用户名>/GOG/HoMM2`）。
4. 创建自定义DOSBox配置文件（`.conf`），挂载游戏文件夹和光盘镜像，并运行游戏可执行文件。
5. 创建Mac的`.command`文件，通过该文件启动带自定义配置的DOSBox，实现双击运行。

文章还展示了如何通过配置文件调整显示设置（窗口模式、缩放比例）。作者提醒，macOS可能会弹出未来兼容性警告，但DOSBox-X等替代方案依然可用。

---

## 13. 微软推出搭载NVIDIA芯片的Surface Laptop Ultra，剑指MacBook Pro

**原文标题**: Microsoft builds MacBook Pro rival with NVIDIA-powered Surface Laptop Ultra

**原文链接**: [https://www.windowslatest.com/2026/06/01/microsoft-builds-its-ultimate-macbook-pro-rival-with-the-nvidia-powered-surface-laptop-ultra/](https://www.windowslatest.com/2026/06/01/microsoft-builds-its-ultimate-macbook-pro-rival-with-the-nvidia-powered-surface-laptop-ultra/)

微软在2026年台北国际电脑展上发布了Surface Laptop Ultra，这是与苹果MacBook Pro竞争的高端机型。该笔记本搭载NVIDIA RTX Spark平台——配备20核NVIDIA Grace CPU（与联发科联合开发）和拥有最多6144个CUDA核心的Blackwell RTX GPU——可实现1 petaflops的AI算力，并支持最高128GB统一内存。这使其能够本地运行拥有1200亿参数的AI模型。

主要特性包括：15英寸mini-LED PixelSense Ultra触控屏（分辨率2880x1920，峰值亮度2000尼特）、大面积触觉反馈触控板，以及丰富的接口（HDMI、USB-C、USB-A、SD卡槽、耳机插孔）。该设备重量不到4.5磅，SSD可更换，并支持全天续航。

微软针对新芯片优化了Windows 11 Arm版，改进了电源管理、内存分配及x86应用模拟功能。该笔记本通过CUDA和TensorRT优化支持原生游戏及创意应用（如Adobe套件）。预计2026年秋季上市，受内存规格限制及与NVIDIA合作影响，定价将走高端路线。包括华硕、戴尔、惠普、联想和微星在内的其他厂商，也将推出搭载RTX Spark平台的设备。

---

## 14. 从生物学家那里偷师，让Haskell编译更快

**原文标题**: Stealing from Biologists to Compile Haskell Faster

**原文链接**: [https://www.iankduncan.com/engineering/2026-05-30-stealing-from-biologists-to-compile-haskell-faster/](https://www.iankduncan.com/engineering/2026-05-30-stealing-from-biologists-to-compile-haskell-faster/)

本文探讨了优化 GHC 的 `ApplicativeDo` 特性所面临的挑战。该特性允许编译器在 do 记法中，对独立的语句自动使用 `<*>` 替代 `>>=`，从而支持并行执行并减少网络往返次数。

默认的贪心调度算法速度快但并非最优，而最优算法的时间复杂度为 O(n³)，在实际应用中速度过慢——一个包含 1000 条语句的代码块需要 55 秒才能完成编译。核心问题在于，在不重排语句顺序的前提下，找到一系列顺序（`Seq`）和并行（`Par`）组合的、成本最低的树形结构。

文章重点介绍了以下优化方法：
- **极端切割捷径**：对于杂乱的代码块，只需检查第一个或最后一个语句作为分割点，从而将每个区间上的工作量降至 O(1)。
- **最长链界定**：当出现平局时，如果最长依赖链达到了上界，则提前终止搜索。

这些优化大幅减少了切割评估次数——在包含 200 条语句的链中，评估次数从 130 万次降至 19900 次——同时生成了完全相同的最优树形结构。

值得注意的是，该问题与计算生物学中的 RNA 二级结构预测如出一辙：两者都涉及非交叉的键（依赖关系）、一个三角形表格，以及一种（最小，加法）递推关系。先进的生物学算法（Bringmann 等人，2016）理论上可以达到 Õ(n^2.8244)，但其巨大的常数因子使其在编译器应用中不切实际，而在实际代码中，更简单的启发式方法已经足够。

---

## 15. 已检测到Red Hat云服务中存在恶意的npm软件包

**原文标题**: Malicious npm packages detected across Red Hat Cloud Services

**原文链接**: [https://github.com/RedHatInsights/javascript-clients/issues/492](https://github.com/RedHatInsights/javascript-clients/issues/492)

2026年6月1日，GitHub上`@redhat-cloud-services/`范围内的npm包被报告存在恶意发布的安全问题。该报告由用户sailikhith-stepsecurity提交，其中引用了StepSecurity的外部分析，表明多个红帽云服务npm包已遭入侵。

该问题列出了31个受影响包，每个均有多个被入侵版本（通常每个包三个）。例如：`@redhat-cloud-services/chrome`（版本2.3.1、2.3.2、2.3.4），`@redhat-cloud-services/frontend-components`（版本7.7.2、7.7.3、7.7.5），以及`@redhat-cloud-services/integrations-client`（版本6.0.4、6.0.5、6.0.7）。恶意版本涉及红帽云服务使用的多种客户端、实用工具和配置工具。

关键信息是，这些npm包作为红帽JavaScript客户端库的一部分（托管在`RedHatInsights/javascript-clients`公共仓库中）已被入侵。安全公告强烈建议用户避免使用所列版本，并立即审计依赖项、更新至安全版本。该问题目前仍处于开启状态，尚未指定处理人或添加标签。

---

## 16. Flipper Zero Zig模板

**原文标题**: Flipper Zero Zig Template

**原文链接**: [https://github.com/NishantJoshi00/flipper-template](https://github.com/NishantJoshi00/flipper-template)

**Flipper Zero Zig 模板概览**

本模板支持开发者使用 Zig 编程语言构建 Flipper Zero 应用程序，提供现代化、生产就绪的开发环境，具备类型安全与内存安全保障。

**核心特性：**
- 原生 Zig 支持，通过 ufbt 实现自动化构建流水线
- 跨平台开发（macOS、Linux）
- 预配置 Flipper SDK 集成（F7 目标架构）

**架构：** 两阶段构建流程——Zig 编译为 ARM Cortex-M4 目标文件，再由 ufbt 打包为 .fap 格式以供部署。

**前提条件：** Zig 0.15.1+、UFBT、Python 3 及 Flipper Zero SDK（由 ufbt 自动管理）。

**用法：**
- `zig build` —— 将 Zig 源码编译为 `app.o`
- `zig build fap` —— 完整流程生成 .fap 包
- `zig build launch` —— 构建、部署并在已连接设备上运行

**项目结构：** 包含 `application.fam`（清单）、`build.zig`（配置文件）、`src/root.zig`（入口点）以及交互式设置脚本。

**开发注意事项：** 采用 ARM AAPCS 调用约定；部分 SDK 头文件需手动声明外部函数。

**故障排除：** 常见问题包括缺少 SDK 头文件（使用 `ufbt update` 修复）及部署失败（检查 USB 连接与调用约定）。

**高级配置：** 支持自定义编译器标志、优化设置及目标架构调整。

此非官方模板简化了 Zig 语言下的 Flipper Zero 开发，欢迎贡献代码以支持 Windows 平台及改进 SDK 封装。

---

## 17. 《海盗湾》在突袭20年后依然坚韧不拔

**原文标题**: The Pirate Bay Remains Resilient, 20 Years After the Raid

**原文链接**: [https://torrentfreak.com/the-pirate-bay-remains-resilient-20-years-after-the-raid/](https://torrentfreak.com/the-pirate-bay-remains-resilient-20-years-after-the-raid/)

2006年突袭事件二十年后，海盗湾依然屹立不倒。2006年5月31日，65名瑞典警察在美国施压下突袭斯德哥尔摩一处数据中心，瞄准该网站的服务器。联合创始人哥特弗里德·斯瓦特霍姆和弗雷德里克·奈伊察觉到监控，迅速采取行动。弗雷德里克离开办公室时对网站进行了完整备份——这是关键一步。当警方查封数十台服务器时，这份备份让团队在三天内重建海盗湾，嘲讽地将其更名为"警察湾"，随后采用了凤凰标志。

这次突袭适得其反，反而将网站推向了主流媒体，流量激增。幕后推手是美国政府向瑞典施压，好莱坞电影协会通过美国大使馆游说，要求打击"大鱼"。2017年一项信息自由法案请求披露，一份美国大使馆电报称一名员工影响了瑞典执法部门突袭的决定。

这次突袭导致了刑事诉讼、创始人入狱，以及网站移交给匿名运营者。虽然早期的高调姿态已消退，但网站从2014年的第二次突袭中恢复过来。如今，海盗湾自称"银河系最具韧性的种子网站"，在网络中持续运营——在好莱坞认为它早已覆灭二十年之后，它依然是盗版界的标志。

---

## 18. 《超级智能：吞噬聪明人的理念》（2016）

**原文标题**: Superintelligence: The Idea That Eats Smart People (2016)

**原文链接**: [https://idlewords.com/talks/superintelligence.htm](https://idlewords.com/talks/superintelligence.htm)

**摘要：**

本文批判了尼克·博斯特罗姆在《超级智能》一书中推广的危言耸听的人工智能场景。作者概述了"智能爆炸"论点所需的六个前提：心智存在、大脑是物理的、智能可变化、计算能力可增长、人工智能以微秒时间尺度运行、以及人工智能可递归式自我改进。接受这些前提将导出一个结论：一个追求自身异类目标（如制造回形针或讲笑话）的超智能人工智能将毁灭人类。

作者认为，这一愿景类似于字面意义上的精灵或宗教皈依。许多杰出人物（霍金、马斯克）对此严肃看待，但作者警告他们可能患有"认知习得性无助"——过于容易被有说服力但有缺陷的论点所说服。该场景将"友好人工智能"视为一个未解决的伦理学问题，类似于20世纪早期形式化数学的失败尝试。最终，文章暗示，超级智能的概念是一个诱人且自圆其说的叙事，通过利用聪明人的智力暗示性而"吞噬聪明人"。

---

## 19. 在所有64位整数中，只有17%是两个32位整数的乘积。

**原文标题**: Only 17% of all 64-bit Integers are products of two 32-bit integers

**原文链接**: [https://lemire.me/blog/2026/05/22/only-17-of-all-64-bit-integers-are-products-of-two-32-bit-integers/](https://lemire.me/blog/2026/05/22/only-17-of-all-64-bit-integers-are-products-of-two-32-bit-integers/)

无法访问文章链接。

---

## 20. 《像2009年一样做系统管理》

**原文标题**: Sysadmining Like It's 2009

**原文链接**: [https://lambdacreate.com/posts/sysadmining-like-its-2009](https://lambdacreate.com/posts/sysadmining-like-its-2009)

**摘要：**

作者宣布创办为期两个月的“遗产实验室”夏令营（LLSC），灵感来源于“旧电脑挑战赛”（OCC）及其所推崇的探索精神。与OCC仅一周的限制不同，LLSC提供两个月时间，供参与者深入探索个人感兴趣的复古/永久计算主题。

在LLSC 2026项目中，作者计划利用Windows Server 2008 R2 Core、Windows Vista以及旧款思科/米克罗蒂克网络设备，搭建一套小型商业基础设施。这个名为“半双工计划”的项目将运行于Incus虚拟机管理程序（基于Alpine Linux）之上，托管用于活动目录、文件服务、DHCP、Hyper-V及ERP系统（Syteline）的虚拟机。作者旨在学习传统Windows服务器管理技术，记录过程，并探索Incus中的黄金镜像、Prometheus/Zabbix监控等议题。

作者对Windows Vista怀有怀旧之情——正是通过为其排查故障，才使他接触Linux并开启职业生涯。此外，他还计划使用佳能PowerShot G5相机拍摄复古风格照片，探索其机械原理与编辑流程。项目的核心主题是好奇心与深度学习，参与者可灵活选择任何复古或永久计算方向作为焦点。

---

## 21. 手工绘制夏威夷群岛地图

**原文标题**: Handmade Hawaiian Islands Map

**原文链接**: [https://www.notesfromtheroad.com/roam/hawaiian-islands-map.html](https://www.notesfromtheroad.com/roam/hawaiian-islands-map.html)

本文展示了一幅由作者使用Adobe Fresco、实体水彩和Copic马克笔手绘的夏威夷群岛地图。该项目包含两幅地图：第一幅描绘了从夏威夷岛到库雷环礁长达1500英里的整个夏威夷群岛，其中包含了常被忽视的西北夏威夷群岛——那些微小的环礁、浅滩与礁石。作者指出，网络上鲜有涵盖所有次要岛屿的完整地图，而此图弥补了这一空白，但由于这些岛屿面积过小，主要依靠环绕其周围的海洋深度来呈现。第二幅地图则以经典且更详细的方式展现了夏威夷八大主岛：夏威夷岛、毛伊岛、卡霍奥拉维岛、拉奈岛、莫洛凯岛、瓦胡岛、考艾岛和尼豪岛。本文属于一个大型手绘地图合集的一部分，该合集还包括突尼斯、马耳他、基克拉泽斯群岛等众多目的地，均采用类似的水彩与墨笔风格创作。

---

## 22. GrapheneOS语音服务版本2发布

**原文标题**: GrapheneOS Speech Services version 2 released

**原文链接**: [https://discuss.grapheneos.org/d/36001-grapheneos-speech-services-version-2-released](https://discuss.grapheneos.org/d/36001-grapheneos-speech-services-version-2-released)

**摘要：**

GrapheneOS 宣布推出其语音服务应用的第二版本。新版本已在 GitHub 上发布，可通过提供的链接查看发布说明。这些说明详细介绍了相较于上一版本的改进，并包含完整更新日志的链接。此次更新专注于增强以隐私和安全为核心的语音识别服务，符合 GrapheneOS 致力于提供取代谷歌专有服务的安全开源替代方案的承诺。

---

## 23. 《黑客的Linux基础》（2019）

**原文标题**: Linux Basics for Hackers (2019)

**原文链接**: [https://github.com/ahegazy0/linux-basics-for-hackers-notes](https://github.com/ahegazy0/linux-basics-for-hackers-notes)

本文介绍了一门基于OccupyTheWeb所著《黑客的Linux基础》一书的结构化在线课程。该课程专为希望以实践操作为导向学习Linux网络安全的初学者设计，基于个人学习笔记整理而成，共分为17个模块，涵盖核心Linux主题。重点模块包括终端基础、文本处理、网络配置、权限管理、进程管理、Bash脚本编写以及安全与匿名技术。

每个模块均提供通俗易懂的概念讲解、带示例的关键命令、速查表格、示意图及练习题目。课程要求使用VirtualBox（或同类软件）及64位Kali Linux虚拟机。

文章还列举了五个拓展练习资源，包括交互式课程（LabEx）、安全挑战（OverTheWire、CMD Challenge）及专业课程（TryHackMe、Hack The Box）。声明强调所有学习须在个人实验环境中遵循道德规范进行，严禁在未获授权的系统上操作。参考书籍由No Starch Press出版。

---

## 24. 佛罗里达州总检察长对OpenAI及其CEO萨姆·奥尔特曼提起欺诈诉讼

**原文标题**: Florida AG files lawsuit against OpenAI, CEO Sam Altman for deceptive practices

**原文链接**: [https://www.myfloridalegal.com/newsrelease/attorney-general-james-uthmeier-files-first-nation-state-led-lawsuit-against-openai-ceo](https://www.myfloridalegal.com/newsrelease/attorney-general-james-uthmeier-files-first-nation-state-led-lawsuit-against-openai-ceo)

佛罗里达州总检察长詹姆斯·乌斯迈尔对OpenAI及其首席执行官萨姆·奥尔特曼提起了一项州级首例诉讼，指控其存在欺骗行为并对佛罗里达州居民造成伤害。这份2026年6月1日提交的诉状称，OpenAI在明知风险的情况下，故意向公众（包括儿童）发布并激进营销ChatGPT，同时隐瞒严重风险、压制内部安全警告，并就产品真实危险性欺骗用户。

该诉讼指控OpenAI将商业利益置于安全之上，无视内部及外部专家的警告。诉状称ChatGPT助长自残与暴力行为、在缺乏充分家长监管下收集未成年人数据、导致行为成瘾与认知损害，并做出公司轻描淡写的危险错误。

佛罗里达州法律禁止不公平及存在缺陷的交易行为。该州代表佛罗里达州居民寻求损害赔偿，并申请禁令以制止被指控的欺骗行为。此外，在审查了ChatGPT与2025年4月17日佛罗里达州立大学致命枪击案枪手之间的聊天记录后，一项刑事调查也在进行中。

---

## 25. Show HN：一个CSS 3D引擎（无需WebGL）

**原文标题**: Show HN: A CSS 3D Engine (no WebGL)

**原文链接**: [https://github.com/LayoutitStudio/polycss](https://github.com/LayoutitStudio/polycss)

**PolyCSS总结：一款CSS 3D引擎**

PolyCSS是一款无需WebGL、通过CSS `matrix3d(...)`变换将3D模型渲染为真实HTML元素的3D引擎。它支持OBJ/MTL、GLB和VOX文件格式，并具备色彩、纹理、光照、阴影及动画功能。

**核心特性：**
- 兼容React、Vue及原生JavaScript。
- 提供框架专属包：`@layoutit/polycss-react`和`@layoutit/polycss-vue`。
- 支持自定义HTML元素（`<poly-camera>`、`<poly-scene>`、`<poly-orbit-controls>`）实现快速搭建。
- 支持多种相机类型（正交、透视）及控制方式（轨道、第一人称、地图式、变换）。
- 快照导出可生成内联资源的独立HTML文件。
- 多边形数据模型支持逐面DOM事件和自定义样式。

**性能表现：** 每个多边形渲染为单一DOM元素（如`<b>`、`<u>`、`<i>`、`<s>`），通过元素选择优化性能。性能取决于多边形数量和纹理图集面积。

**核心包：**
- `@layoutit/polycss-core`：数学运算、解析器、光照与相机辅助工具。
- `@layoutit/polycss`：原生自定义元素及命令式API。
- `@layoutit/polycss-react`：React组件与Hooks。
- `@layoutit/polycss-vue`：Vue 3组件与组合式API。

**应用实例：** 应用于Layoutit Voxels（CSS体素编辑器）和Layoutit Terra（CSS地形生成器）。基于MIT许可协议开源。

---

## 26. Radxa Dragon Q8B：披着单板电脑外衣的笔记本电脑？

**原文标题**: Radxa Dragon Q8B: A Laptop Cosplaying as an SBC?

**原文链接**: [https://bret.dk/radxa-dragon-q8b-a-laptop-cosplaying-as-an-sbc/](https://bret.dk/radxa-dragon-q8b-a-laptop-cosplaying-as-an-sbc/)

Radxa Dragon Q8B是Radxa发布的全新单板计算机（SBC），搭载原本为笔记本电脑设计的高通骁龙8cx Gen 3系统级芯片。这使其性能表现卓越，在CPU基准测试（例如Geekbench 6单核得分1682分，而树莓派5仅902分）中显著超越树莓派5和Radxa ROCK 5B+等竞品。该主板提供8GB、16GB和32GB内存版本，具备丰富的I/O接口，包括2个支持DP Alt模式的USB 3.2 Gen 2 Type-C接口、2个2.5GbE网口以及双M.2插槽（其中一个为PCIe Gen 3 x4通道）。

然而其软件支持尚未成熟。发布时Linux构建版本（Ubuntu 26、Debian 13）仍在调试优化中，存在RJ45端口失灵、BIOS中USB禁用以及UFS存储无法识别等问题。该主板在重负载下还存在热降频现象（例如Linpack测试在50W功耗时崩溃）。虽然Windows on ARM运行顺畅，但Armbian支持并非官方提供。

尽管存在这些早期缺陷，Dragon Q8B凭借其形态规格在存储I/O和多核任务处理上表现出色，成为性能王者。对于愿意应对软件兼容性问题的发烧友而言，这是一款充满潜力但仍处于开发阶段的选择。

---

## 27. 使用Go的net/http/httptrace追踪HTTP请求

**原文标题**: Tracing HTTP Requests with Go's net/HTTP/httptrace

**原文链接**: [https://blainsmith.com/articles/httptrace-with-go/](https://blainsmith.com/articles/httptrace-with-go/)

本文介绍了 Go 语言的 `net/http/httptrace` 包，该包提供了对 HTTP 请求内部生命周期事件（如 DNS 解析、TCP 连接和 TLS 握手）的钩子函数。其关键设计选择是采用基于上下文的方法而非传统接口：开发者使用 `httptrace.WithClientTrace()` 将 `ClientTrace` 结构体（包含可选函数字段）附加到请求的上下文中，传输层则通过 `httptrace.ContextClientTrace()` 获取该结构体。这种方式确保追踪随请求传递，能与现有上下文传播组合，在不使用时无额外开销，并支持不同追踪的并发请求。

作者演示了两个实际应用：

1.  **类 curl 的命令行工具**：在每个钩子（DNS、TCP、TLS、首字节响应）中捕获时间戳，并输出每个请求各环节耗时的时间分解图。

2.  **可复用的 `http.RoundTripper`**：包装默认传输层，自动为每个请求的上下文附加追踪，并记录时间数据。重要注意事项包括：`WithClientTrace` 会组合而非替换现有追踪；`RoundTrip` 在获取响应头后（而非响应体）即返回；若需包含传输体的总时长，需要用自定义读取器包装响应体。

文章还指出，`GotConnInfo` 可揭示连接复用状态，有助于调试连接池问题。该包被描述为小巧、可组合，且在采用分布式追踪工具前，非常适合用于调试慢速 HTTP 调用。

---

## 28. 《苹果布吉》1987年Mac推广专辑磁带 [视频]

**原文标题**: “The Apple Boogie“ 1987 Mac Promo Album Cassette Tape [video]

**原文链接**: [https://www.youtube.com/watch?v=chJHB-btMNI](https://www.youtube.com/watch?v=chJHB-btMNI)

**《苹果布吉舞》1987年Mac宣传专辑卡带[视频]摘要**

该内容涉及一段YouTube视频，展示了1987年为Macintosh电脑发行的促销卡带《苹果布吉舞》。重点在于视频本身，很可能呈现了这一稀有营销物品。但所提供文本几乎完全由YouTube标准法律页脚组成，而非文章或视频描述。该页脚包含版权信息（© 2026 Google LLC）、Google联系方式（包括加州山景城地址、客服电话及邮箱）和免责声明。其中明确说明：YouTube仅托管内容，不销售创作者展示或标记的产品，此类产品由商家自行销售。页脚还包含非法拍摄内容举报提示及YouTube运营说明。所提供文本中并无关于《苹果布吉舞》卡带本身实质信息——如目的、曲目列表或历史意义。

---

## 29. 从零开始构建基本AI代理：工具

**原文标题**: Build a Basic AI Agent from Scratch: Tools

**原文链接**: [https://www.ruxu.dev/articles/ai/build-an-ai-agent-with-tools/](https://www.ruxu.dev/articles/ai/build-an-ai-agent-with-tools/)

本文是《从零构建基础AI智能体》系列的一部分，阐述了如何通过添加**工具**（即智能体可自主调用来执行计算机操作的函数）来增强基础AI智能体。

核心要点：

- **工具的定义**：暴露给大型语言模型的程序或函数，范围从简单的Python函数到复杂的外部服务器（如MCP）。

- **智能体如何使用工具**：现代大型语言模型具备原生工具调用能力，能生成结构化的JSON请求以实现可靠调用，不同于旧式的文本解析方法。

- **实现的工具**：
  - `run_bash`：执行bash命令（功能强大但有风险）。
  - `read_file` / `write_file` / `edit_file`：文件读取、创建及定向编辑。
  - `glob_files` / `grep`：文件搜索与基于正则表达式的内容搜索。
  - `webfetch`：获取网页并将其解析为纯文本。

- **集成方式**：每个工具都包含一个描述其名称、描述和参数的JSON模式。智能体循环会检查模型是否返回工具调用请求，执行这些请求，并将结果追加到对话历史中。

- **成果**：智能体现在能自主完成复杂任务（例如获取网站内容并撰写摘要文件），从而成为实用的编程助手。

- **后续步骤**：当前智能体缺乏长期规划能力。下一部分将引入规划与任务管理工具，以处理更复杂的多步骤任务。

---

## 30. 展示HN：Textile——一款拼接文本碎片的桌面应用

**原文标题**: Show HN: Textile – A desktop app for weaving together bits of text

**原文链接**: [https://www.gettextile.app](https://www.gettextile.app)

**纺织工艺概述：一款用于编织文本的桌面应用**

Textile Craft 是一款 macOS 桌面应用，旨在帮助用户高效地组合、操作和重复利用文本片段。它免去了在多个应用间手动复制粘贴的麻烦。

主要功能包括：
- **文本编织**：用户可追加、前置及替换文本，以精确组合输出内容。
- **剪贴板管理**：可作为强大的剪贴板管理器，快速访问常用文本。
- **命令执行**：可运行系统命令，并将结果直接放入剪贴板。
- **快捷键**：用户可为纺织模式指定自定义快捷键（包括多按键序列），实现快速执行。
- **隐私与便携性**：所有纺织内容均以纯文本文件形式存储在用户电脑本地，确保易于备份且完全私密（无第三方访问权限）。

该应用适用于搭载 Apple Silicon 及 Intel 处理器的 Mac 电脑。

---

