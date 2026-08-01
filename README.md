# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-08-01.md)

*最后自动更新时间: 2026-08-01 20:47:41*
## 1. 谷歌新闻现在不过是阿甘的捕虾船了

**原文标题**: Google News is just Forrest Gump's shrimp boat now

**原文链接**: [https://elgan.com/google-news-is-just-forrest-gumps-shrimp-boat-now](https://elgan.com/google-news-is-just-forrest-gumps-shrimp-boat-now)

谷歌新闻已变得不可靠，被比作阿甘的虾船撞上码头。作者是一位长期依赖谷歌新闻在特定时间范围内查找美国报道的记者，他指出允许按日期、语言和地点筛选的“工具”菜单已逐渐失效。如今，搜索结果大多来自Instagram和其他社交媒体，包含无法识别的外语文章，并且尽管选择了美国来源，结果仍来自外国。最显著的是，日期范围设置被忽略，返回的是数周、数月或数年前的故事。作者总结道，谷歌已经放弃了谷歌新闻，任由其彻底崩溃。

---

## 2. 内核健全性缺陷 #14576 事后分析

**原文标题**: Postmortem for Kernel Soundness Bug #14576

**原文链接**: [https://leodemoura.github.io/blog/2026-8-1-postmortem-for-kernel-soundness-bug-14576/](https://leodemoura.github.io/blog/2026-8-1-postmortem-for-kernel-soundness-bug-14576/)

Lean 内核中的一个可靠性漏洞（#14576）于 2026 年 7 月下旬被报告并修复。Ramana Kumar 曾发布了一个 AI 辅助、无 sorry 的考拉兹猜想“反证”，但该反证无效，因为它利用了内核漏洞。Kiran Gopinathan 将其归结为 `False` 的证明并提交了 issue；修复在数小时内被合并。

**原因：** 当内核消除带有幻影参数的归纳类型下的嵌套出现时，这些参数可能从生成的辅助类型中消失，从而使类型错误的参数逃脱检查。该漏洞只能通过元编程触发；前端通常会捕获此类类型错误的项。这是一个实现漏洞，而非 Lean 元理论的缺陷。

**为什么 nanoda 漏掉了它：** nanoda 是一个用 Rust 编写的独立 Lean 检查器，它检查了该位置，但自身有一个涉及投影节点中类型名称的漏洞。该 nanoda 漏洞在一周前已被修复。该证明利用了旧版 nanoda 会接受的表达式。因此，使用独立内核进行检查仍然有效，但两个内核都必须保持最新。Mario Carneiro 的形式化项目 lean4lean 也受到了影响，因为它的归纳处理是对参考实现的移植。

**关于元编程：** 作者反对限制元编程：细化器在设计上就是不受信任的，攻击者可以直接构造 `.olean` 文件或修改内存。内核必须自行拒绝类型错误的声明。

**已采取的行动：** 添加了回归测试；后续的 PR 加固了参数检查。OpenAI 的网络安全 AI 帮助发现了其他内核漏洞，这些漏洞均被 nanoda 捕获并修复。内核不变量得到了加固，comparator.live 现在默认运行 nanoda，并对 nanoda 进行每日跟踪。FRO 正在支持进一步的内核审计和已验证内核相关工作。

---

## 3. 谷歌如何助推了RSS订阅的消亡（2023）

**原文标题**: How Google helped destroy adoption of RSS feeds (2023)

**原文链接**: [https://openrss.org/blog/how-google-helped-destroy-adoption-of-rss-feeds](https://openrss.org/blog/how-google-helped-destroy-adoption-of-rss-feeds)

谷歌尽管依赖开放协议实现自身增长，却在很大程度上导致了RSS采用率的下降。文章认为，这遵循了“拥抱、扩展和消灭”的模式：谷歌将RSS集成到热门产品中，建立用户依赖，然后在不作充分解释的情况下移除支持。

关键事件包括：

- **Chrome浏览器**：早期Chromium内置RSS按钮，后被悄然移除。
- **FeedBurner**：谷歌于2007年收购了这项RSS订阅服务，随后于2012年关闭其API，并于2022年移除了包括邮件订阅在内的大部分服务，导致许多用户的订阅源中断。
- **Google Reader**：这款于2005年推出、广受欢迎的RSS阅读器于2013年被关闭，尽管拥有忠实用户群。谷歌称其使用率下降，但员工反映内部一直在推动停用该服务。这导致许多用户彻底放弃了RSS。
- **Google Alerts**：RSS支持于2008年加入，2013年移除，在遭到强烈反对后恢复——但那时用户早已失去信心。
- **RSS扩展**：谷歌移除了Chrome的RSS扩展，在收到投诉后又将其恢复，并声称那是个错误。
- **Google News**：RSS集成于2017年12月被弃用，导致用户的订阅源无法使用，迫使他们寻找替代方案。

最近，谷歌于2021年宣布Chrome将重新支持RSS，但至今尚未推出。文章警告称，谷歌这种先构建RSS功能再将其移除的模式，损害了用户的信任以及整个开放网络。文章敦促谷歌维护并优先考虑任何未来的RSS集成。

---

## 4. 64位汇编的艺术

**原文标题**: The Art of 64-bit Assembly

**原文链接**: [https://nostarch.com/art-64-bit-assembly-v2](https://nostarch.com/art-64-bit-assembly-v2)

本文概述了《64位汇编艺术》一书，这是一本使用MASM进行x86-64汇编编程的综合指南。本书涵盖了超越基本指令集的高级编程技术，包括：

- **高级宏**：用于代码生成和抽象。
- **Unicode字符串**：用于处理国际文本。
- **超越函数**：使用浮点和数学运算。
- **高级过程**：包括栈帧和调用约定。
- **并发编程**：涉及线程、同步和原子操作。
- **面向对象编程（OOP）**：在汇编中通过MASM实现。
- **异常处理**：用于结构化错误检测与恢复。
- **Thunk和闭包**：实现后期绑定和函数式技术。
- **高级参数实现**：涵盖复杂参数传递。
- **迭代器**：用于可复用的遍历逻辑。
- **协程、生成器和纤程**：用于协作式多任务处理和有状态执行。

本书还包含附录，提供ASCII字符集、术语表，以及安装和使用Visual Studio进行汇编开发的说明，此外还有详细的目录和索引。总体而言，本书侧重于在64位汇编中实现的实用高级编程概念，适合希望更深入地控制系统资源和性能的经验丰富的程序员。

---

## 5. NetBSD 11.0

**原文标题**: NetBSD 11.0

**原文链接**: [https://blog.netbsd.org/tnf/entry/netbsd_11_0_released](https://blog.netbsd.org/tnf/entry/netbsd_11_0_released)

NetBSD 11.0 在经历了重大延期后，于 2026 年 8 月 1 日发布。公告中的关键细节如下：

**下载指南：**
- 每个架构的安装说明和镜像均可从 CDN 获取。
- ARM 用户应获取预配置了 U-Boot 的 netbsd-11 镜像。
- ISO 镜像分为小于 700MB 的 CD-ROM 镜像和完整大小的 DVD 镜像（如有可能请选择 "-dvd.iso" 版本）。
- 闪存介质（例如 USB）需要 .img 文件，使用 gunzip 或 7-Zip 解压。

**未决安全问题：**
此次发布并未为了修复所有悬而未决的问题而推迟；项目选择了透明公开。列出了三个具体的未决 pullup 请求：
1. **hdaudio(4)** —— ioctl 命令缺少访问检查（PR 60492）；临时解决办法是移除 /dev/hdaudio*。
2. **ipfilter** —— 可远程触发的空指针解引用（PR 60484）；IPF 默认不在已发布的内核中。
3. **pf** —— 分片重组中的释放后使用（PR 60485）；PF 已被弃用，且默认不在已发布的内核中。

这些修复将很快提交到稳定分支，并成为 NetBSD 11.1 的一部分，目标是在未来两个月内发布。

**支持：** 遇到安装或系统问题的用户可前往邮件列表或提交问题报告。公告还指出，发布流程已精简，但仍受限于网络传输和签名等缓慢步骤。

文章包含来自社区成员的五条祝贺评论。

---

## 6. 但你的计算器能运行Linux吗？

**原文标题**: But can your calculator run Linux?

**原文链接**: [https://raymii.org/s/articles/But_can_your_calculator_run_Linux.html](https://raymii.org/s/articles/But_can_your_calculator_run_Linux.html)

这篇文章描述了如何在HP Prime G2图形计算器上运行Linux，作者更新了一个现有的移植版本。

要点如下：

- HP Prime G2对于计算器来说性能过剩：搭载i.MX6 UltraLite ARM Cortex-A7 CPU、256 MB DDR3内存和512 MB存储。
- 原有的Linux移植版本过时且有问题，因此作者进行了重建并加以改进：
  - 修复了键盘输入（数字、短横线、下划线、竖线）。
  - 添加了USB串口控制台访问。
  - 允许更大的RAM镜像（从15 MB提升到130 MB）。
  - 为较新的Ilitek ILI211X触摸屏控制器添加了内核驱动程序。
  - 包含X11应用（xcalc、xeyes、xclock）、Doom（prboom）和Tiny C Compiler（tcc）用于在设备上进行开发。
- 启动Linux需要打开计算器，短接主板上的两个焊盘，并使用`uuu`工具将镜像加载到RAM中启动。无需刷写NAND。
- 作者提供了预编译下载和GitHub上的源代码。
- 还有一个针对旧款HP Prime G1的独立移植，提供了使用6.x内核、buildroot和加载程序的构建说明。作者未能测试。
- 此外，有人将UEFI/Windows 10移植到了该计算器，但没有可下载的镜像。

文章强调该设备并未被锁定，这面向的是爱好者，同时提醒打开计算器可能造成损坏的风险。

---

## 7. Kaisel – 路由即值。为Flutter打造的Dart 3原生路由器

**原文标题**: Kaisel – Routes as Values. Dart 3 Native Router for Flutter

**原文链接**: [https://kaisel.dev/](https://kaisel.dev/)

Kaisel 是一个围绕 Dart 3 现代语言特性构建的 Flutter 路由包。其核心思想是“路由即值”：开发者不是将路由作为字符串或命令式导航调用来管理，而是将路由定义为类型化的值。这使得导航更安全、更有条理且更易于推理。

文章强调了开发者可以多么快速地入门。安装只需一条终端命令：

`flutter pub add kaisel`

从那里，入门指南引导用户在短短几分钟内从安装到实际导航。关键工作流程包括为路由定义一个密封类，然后使用穷尽的 `switch` 语句处理所有可能的路由情况。由于 switch 是穷尽的，编译器确保每个路由都被处理，从而消除了一整类运行时导航错误。

简而言之，Kaisel 利用 Dart 3 的密封类和模式匹配，为 Flutter 开发者提供了简单、类型安全且声明式的路由体验。最后一句中的“完成”强调了设置是多么简洁：一旦密封类和 switch 就位，类型化导航就完成了。

---

## 8. RipGrep musl 二进制文件在非常大的搜索过程中偶尔会出现段错误

**原文标题**: RipGrep musl binaries occasionally segfault during very-large searches

**原文链接**: [https://github.com/BurntSushi/ripgrep/issues/3494](https://github.com/BurntSushi/ripgrep/issues/3494)

Ripgrep 15.2.0 的 `x86_64-unknown-linux-musl` 二进制文件在进行非常大、高并发的搜索时会偶尔发生段错误。该问题由 dfoxfranke 在 GitHub (#3494) 上报告。

崩溃发生在 musl 的 `mallocng` 分配器内部：在从 `opendir()` 发起的 `calloc` 调用期间，`get_meta()` 中的完整性断言失败。回溯显示，该分配是在 `ignore` crate 的并行目录遍历器在工作线程中打开目录时触发的。

复现步骤：
- 生成一棵约 20 GiB、包含约 180 万个随机文件的目录树（提供了脚本）。
- 循环运行 `rg`，搜索树中不存在的字面字符串。
- 在具有足够 RAM 使目录树可放入内核页缓存的 24 核系统上，通常大约一分钟内会出现 SIGSEGV。

该 bug 最初是在 OpenAI Codex 捆绑的 `rg` 中发现的，但报告确认发布二进制文件（`ripgrep-15.2.0-x86_64-unknown-linux-musl.tar.gz`）可以独立复现该问题。报告者还使用调试符号进行了构建以进行分析。

预期行为：不发生段错误。在撰写本文时，该问题没有标签、被指派人或关联的 PR。

---

## 9. 探索性建模：在K个猜测中择优训练

**原文标题**: Explorative modeling: Train on the best of K guesses

**原文链接**: [https://alexiglad.github.io/blog/2026/explorative_modeling/](https://alexiglad.github.io/blog/2026/explorative_modeling/)

该文章介绍了 **探索性建模（XM）**，一种新的生成建模范式，它在数据和参数之外增加了第三条预训练轴。它解决了训练模型直接预测具有多个有效答案的数据会导致平均化——从而产生模糊图像这一根本问题。现有模型通过将生成过程分解为小步骤（自回归、扩散）来避免这一问题，但这会引入曝光偏差并阻碍端到端训练。

XM 转而将 **训练循环** 进行分解：在每一步中，模型生成 K 个猜测（例如从不同的噪声中），只有最匹配的那个接收梯度。这个简单的改变将损失最小化器从数据的平均值转移到数据本身，使模型能够致力于不同的答案。增加 K 能显著改善输出——将模糊图像变为真实图像，将单个点变为簇，“the the the” 变为连贯的文本。

关键成果：
- 为现有模型（RAE、SiT、视频、语言）添加探索性机制能持续提升性能。
- 效率提升：6.2× 的样本效率、4.1× 的计算效率、47% 的参数效率。
- 收益随规模增长而增加：数据增长时从 7% 提升至 36%，模型规模增长时从 13% 提升至 23%——这表明生成表达能力是一种新发现的、可扩展的能力。
- 探索性机制还能提升泛化能力，并可作为一种独立的端到端生成模型，在控制任务中以远更低的推理计算量媲美扩散模型。

核心洞见：现代生成建模的核心在于设计其损失最小化器位于真实数据上的目标函数。XM 提供了一种可扩展的替代方案来取代生成分解，为扩展生成模型开辟了新的维度。

---

## 10. Pgtestdb的模板克隆测试方法速度快

**原文标题**: Pgtestdb's template cloning approach to testing is fast

**原文链接**: [https://brandur.org/fragments/pgtestdb](https://brandur.org/fragments/pgtestdb)

文章讨论了pgtestdb，这是一个Go/Postgres测试包，利用Postgres模板数据库快速创建测试数据库。作者将该方法与River现有的基于schema的测试方法进行了比较，后者通过schema隔离测试用例，并在每次运行时执行迁移。

结果显示设置时间相近：pgtestdb克隆平均每个数据库98.4毫秒，而创建+迁移schema平均99.4毫秒。尽管预期数据库创建会很慢，但pgtestdb证明了其竞争力。

然而，整个测试套件使用River的基于schema的方法运行速度快了约3.5倍（14.54秒对比51.07秒），这得益于一项优化：schema被池化并在测试用例之间复用，而不是每次都从头创建。虽然pgtestdb无法克隆schema，但其完整数据库（100毫秒设置时间）也可以受益于复用，可能将设置时间降至10-20毫秒——更接近测试事务。作者指出，实施复用需要处理schema版本兼容性，这并非易事。

River将保留其当前方法，因为它已经很快，而且schema隔离有助于验证配置。但作者推荐需要端到端测试的用户使用pgtestdb（例如，客户端插入的作业→由worker完成）。总体而言，文章强调pgtestdb的模板克隆出人意料地快速且可行，并留有通过数据库复用进一步优化的空间。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 2 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 3 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 4 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 5 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 6 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 7 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 8 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 9 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 10 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 11 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 12 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 13 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 14 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 15 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 16 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 17 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 18 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 19 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 20 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 21 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 22 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 23 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 24 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 25 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 26 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 27 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 28 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 29 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 30 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 31 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 32 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 33 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 34 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 35 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 36 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 37 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 38 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 39 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 40 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 41 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 42 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 43 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 44 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 45 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 46 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 47 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 48 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 49 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 50 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 51 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 52 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 53 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 54 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 55 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 56 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 57 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 58 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 59 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 60 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 61 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 62 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 63 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 64 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 65 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 66 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 67 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 68 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 69 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 70 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 71 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 72 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 73 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 74 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 75 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 76 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 77 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 78 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 79 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 80 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 81 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 82 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 83 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 84 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 85 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 86 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 87 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 88 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 89 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 90 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 91 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 92 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 93 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 94 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 95 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 96 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 97 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 98 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 99 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 100 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 101 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 102 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 103 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 104 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 105 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 106 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 107 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 108 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 109 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 110 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 111 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 112 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 113 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 114 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 115 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 116 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 117 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 118 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 119 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 120 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 121 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 122 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 123 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 124 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 125 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 126 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 127 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 128 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 129 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 130 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 131 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 132 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 133 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 134 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 135 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 136 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 137 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 138 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 139 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 140 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 141 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 142 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 143 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 144 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 145 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 146 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 147 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 148 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 149 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 150 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 151 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 152 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 153 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 154 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 155 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 156 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 157 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 158 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 159 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 160 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 161 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 162 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 163 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 164 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 165 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 166 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 167 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 168 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 169 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 170 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 171 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 172 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 173 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 174 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 175 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 176 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 177 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 178 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 179 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 180 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 181 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 182 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 183 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 184 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 185 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 186 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 187 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 188 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 189 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 190 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 191 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 192 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 193 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 194 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 195 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 196 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 197 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 198 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 199 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 200 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 201 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 202 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 203 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 204 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 205 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 206 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 207 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 208 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 209 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 210 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 211 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 212 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 213 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 214 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 215 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 216 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 217 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 218 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 219 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 220 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 221 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 222 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 223 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 224 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 225 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 226 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 227 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 228 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 229 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 230 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 231 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 232 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 233 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 234 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 235 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 236 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 237 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 238 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 239 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 240 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 241 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 242 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 243 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 244 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 245 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 246 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 247 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 248 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 249 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 250 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 251 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 252 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 253 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 254 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 255 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 256 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 257 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 258 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 259 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 260 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 261 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 262 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 263 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 264 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 265 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 266 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 267 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 268 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 269 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 270 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 271 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 272 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 273 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 274 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 275 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 276 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 277 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 278 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 279 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 280 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 281 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 282 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 283 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 284 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 285 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 286 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 287 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 288 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 289 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 290 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 291 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 292 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 293 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 294 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 295 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 296 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 297 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 298 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 299 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 300 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 301 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 302 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 303 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 304 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 305 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 306 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 307 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 308 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 309 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 310 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 311 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 312 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 313 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 314 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 315 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 316 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 317 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 318 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 319 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 320 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 321 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 322 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 323 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 324 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 325 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 326 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 327 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 328 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 329 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 330 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 331 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 332 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 333 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 334 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 335 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 336 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 337 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 338 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 339 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 340 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 341 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 342 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 343 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 344 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 345 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 346 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 347 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 348 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 349 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 350 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 351 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 352 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 353 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 354 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 355 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 356 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 357 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 358 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 359 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 360 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 361 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 362 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 363 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 364 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 365 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 366 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 367 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 368 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 369 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 370 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 371 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 372 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 373 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 374 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 375 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 376 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 377 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 378 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 379 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 380 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 381 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 382 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 383 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 384 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 385 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 386 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 387 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 388 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 389 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 390 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 391 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 392 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 393 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 394 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 395 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 396 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 397 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 398 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 399 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 400 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 401 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 402 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 403 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 404 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 405 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 406 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 407 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 408 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 409 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 410 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 411 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 412 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 413 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 414 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 415 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 416 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 417 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 418 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 419 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 420 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 421 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 422 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 423 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 424 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 425 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 426 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 427 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 428 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 429 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 430 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 431 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 432 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 433 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 434 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 435 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 436 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 437 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 438 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 439 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 440 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 441 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 442 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 443 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 444 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 445 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 446 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 447 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 448 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 449 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 450 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 451 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 452 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 453 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 454 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 455 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 456 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 457 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 458 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 459 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 460 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 461 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 462 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 463 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 464 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 465 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 466 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 467 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 468 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 469 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 470 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 471 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 472 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 473 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 474 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 475 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 476 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 477 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 478 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 479 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 480 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 481 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 482 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 483 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 484 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 485 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 486 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 487 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 488 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 489 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 490 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 491 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 492 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 493 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 494 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 495 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
