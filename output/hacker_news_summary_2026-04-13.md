# Hacker News 热门文章摘要 (2026-04-13)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 有人购买了30个WordPress插件并在其中全部植入了后门。

**原文标题**: Someone Bought 30 WordPress Plugins and Planted a Backdoor in All of Them

**原文链接**: [https://anchor.host/someone-bought-30-wordpress-plugins-and-planted-a-backdoor-in-all-of-them/](https://anchor.host/someone-bought-30-wordpress-plugins-and-planted-a-backdoor-in-all-of-them/)

一位名为"Kris"的买家于2025年初在Flippa市场上收购了Essential Plugin的全部产品组合（包含超过30款WordPress插件）。数月后，新所有者向这些插件注入了精密的后门程序。该后门于2025年8月添加，潜伏八个月后于2026年4月激活，会暗中向网站的`wp-config.php`文件注入恶意代码，仅对搜索引擎爬虫提供SEO垃圾内容。

2026年4月7日，WordPress.org插件团队发现此次攻击并永久关闭了所有受影响插件。虽然强制更新消除了插件的回连机制，但并未清除已注入网站文件的恶意代码。该事件与以往的供应链攻击如出一辙，暴露出WordPress生态系统的关键漏洞：插件所有权转移缺乏审核机制，使得恶意行为者能够将受信任软件武器化。

作者提供了多个受感染插件的修复版本，并建议所有网站所有者检查是否安装这些插件，及时修补或移除，同时检测`wp-config.php`文件中是否存在未授权的代码注入。

---

## 2. 无事发生：Polymarket机器人，专在非体育市场持续买入“否”选项

**原文标题**: Nothing Ever Happens: Polymarket bot that always buys No on non-sports markets

**原文链接**: [https://github.com/sterlingcrispin/nothing-ever-happens](https://github.com/sterlingcrispin/nothing-ever-happens)

本文介绍了一款名为“无事发生”的自动化Python交易机器人，专为Polymarket预测平台设计。其核心策略是在非体育类的是/否市场中，当“否”选项价格低于设定阈值时持续买入。

该机器人采用严格的安全模式：仅当三个特定环境变量全部设置为启用实盘交易时才会执行真实交易，否则默认进行模拟交易。实盘交易还需私钥和数据库URL等额外密钥。

代码库按运行时模块、交易所客户端、仪表盘和恢复系统进行组织，可部署于Heroku等平台，并以Web服务形式运行（而非后台任务）。代码仓库包含用于数据库检查和日志解析等操作的辅助脚本，并强调该工具仅供娱乐使用，不提供任何担保。

---

## 3. 一切未来的归宿皆是谎言，我猜：安全篇

**原文标题**: The Future of Everything Is Lies, I Guess: Safety

**原文链接**: [https://aphyr.com/posts/417-the-future-of-everything-is-lies-i-guess-safety](https://aphyr.com/posts/417-the-future-of-everything-is-lies-i-guess-safety)

本文认为，大型语言模型（LLM）和人工智能系统存在严重且固有的安全风险，这些风险无法被可靠地缓解。

作者指出，“对齐”（即确保人工智能安全）从根本上存在缺陷。由于模型缺乏内在的道德准则，安全性依赖于昂贵且可选的训练过程。而创建未对齐的“恶意”模型所需的硬件、软件、数据和人力等障碍正在迅速消失，这意味着任何安全的模型很快都将出现危险的对应版本。

即使是对齐的模型也是安全噩梦。它们无法安全地区分可信与不可信的输入，使得“提示注入”攻击不可避免。让大型语言模型访问私人数据或具备破坏性能力（如删除文件）是极其不负责任的，因为它们常常误解指令并造成损害。作者批评了将强大且无监督的人工智能“智能体”集成到关键系统中的趋势。

此外，人工智能降低了复杂攻击的成本。它可以自动发现软件漏洞，并实现欺诈的新规模——从使用生成图像伪造保险索赔到个性化的语音克隆诈骗。这将削弱社会对音视频证据的信任，并增加每个人的成本。

结论是悲观的：人工智能行业在追求能力的竞赛中，使得危险工具的构建和部署变得更加容易，从而创造了一个安全性在设计上就被妥协的未来。

---

## 4. 如何将Firefox构建速度提升17%

**原文标题**: How to make Firefox builds 17% faster

**原文链接**: [https://blog.farre.se/posts/2026/04/10/caching-webidl-codegen/](https://blog.farre.se/posts/2026/04/10/caching-webidl-codegen/)

本文介绍了如何利用Buildcache的Lua插件系统将Firefox构建速度提升17%。关键改进在于缓存了WebIDL代码生成步骤——该步骤将.webidl文件转换为C++代码，此前即使在确定性执行的情况下，每次全量构建都会重复运行这一过程。

解决方案仅需对Makefile进行小幅修改，使Buildcache能够封装WebIDL生成环节的Python命令。通过编写自定义Lua插件，明确告知Buildcache哪些是输入文件（.webidl文件和Python脚本）和输出文件（生成的头文件和.cpp文件），从而实现结果缓存。

基准测试显示：启用该插件后，热缓存重建仅需1分12秒，而无缓存的完整构建需要5分35秒。这对开发者的迭代效率是显著提升。

文章强调这仅是第一步：Buildcache灵活的插件系统可应用于Firefox构建流程中其他确定性代码生成任务以获取更大收益。文中同时提供了启用该功能的配置说明。

---

## 5. 为整个Cloudflare构建命令行界面

**原文标题**: Building a CLI for All of Cloudflare

**原文链接**: [https://blog.cloudflare.com/cf-cli-local-explorer/](https://blog.cloudflare.com/cf-cli-local-explorer/)

Cloudflare正在将其Wrangler CLI重构为覆盖整个平台的综合命令行工具，目前以技术预览版形式提供（`npx cf`）。此举旨在为所有Cloudflare产品提供统一的CLI命令，以解决当前许多产品缺乏CLI支持的问题，这对开发者和AI代理至关重要。

为实现这一目标，Cloudflare创建了基于TypeScript的新型架构系统，其不仅涵盖OpenAPI规范，还能定义API、CLI命令及配置。该系统支持一致且自动化的接口生成（包括CLI、SDK、绑定和文档），并通过强制命名规范和默认设置提升人类用户与AI代理的使用体验。

与此同时，Cloudflare推出了开放测试版Local Explorer工具，用于在开发过程中内省和管理模拟本地资源（如KV、R2、D1）。该工具提供与Cloudflare API镜像的本地API，使得本地与远程操作完全一致。这既增强了本地开发体验，也确保带`--local`标志的CLI命令能无缝操作本地数据。

目前Cloudflare正在征集用户对`cf`预览版的早期反馈，以确定在新版统一CLI中优先实现哪些产品与功能。

---

## 6. Servo现已可在crates.io上获取

**原文标题**: Servo is now available on crates.io

**原文链接**: [https://servo.org/blog/2026/04/13/servo-0.1.0-release/](https://servo.org/blog/2026/04/13/servo-0.1.0-release/)

Servo团队已在crates.io上发布`servo`库的0.1.0版本，这标志着其首次正式作为可嵌入库提供。该版本是自2025年10月以来的第五个GitHub版本，代表着项目成熟度的重要里程碑。

关键信息包括：
*   此次发布允许开发者将Servo作为库使用，但演示浏览器`servoshell`不会发布至crates.io。
*   版本号（0.1.0）表明这并非1.0版本，因为该里程碑的标准仍在讨论中。但这体现了团队对嵌入API稳定性的信心增强。
*   Servo现在将提供长期支持（LTS）版本以及常规月度更新。LTS版本每年更新两次，专为偏好稳定发布周期的嵌入者设计，提供计划性重大升级、安全更新和迁移指南；而月度版本可能包含破坏性变更。

团队因对该版本重要性的兴奋，提前于常规月度博客公告了此消息。

---

## 7. Show HN：Ithihāsas – 一款印度史诗角色探索器，几小时内搭建完成

**原文标题**: Show HN: Ithihāsas – a character explorer for Hindu epics, built in a few hours

**原文链接**: [https://www.ithihasas.in](https://www.ithihasas.in)

这是一则关于“Ithihāsas”的Show HN公告，这是一个用于探索印度史诗《罗摩衍那》和《摩诃婆罗多》中人物与王朝的交互式网络工具。

该工具快速构建（仅数小时完成），提供多种可视化方式，包括用于展示关系的力导向图、用于呈现世系的王朝树，以及用于揭示关联的弦图。用户可点击查看详细的人物档案。

该项目旨在通过现代交互视角呈现古老智慧，使这些神圣文本中复杂的叙事与庞大角色群更易于探索和研究。

---

## 8. 追踪LLVM RISC-V中25%性能回归的根源

**原文标题**: Tracking down a 25% Regression on LLVM RISC-V

**原文链接**: [https://blog.kaving.me/blog/tracking-down-a-25-regression-on-llvm-risc-v/](https://blog.kaving.me/blog/tracking-down-a-25-regression-on-llvm-risc-v/)

本文详细调查了在RISC-V目标平台上使用LLVM对比GCC时出现的25%性能回归问题。该问题可追溯至近期一项优化`isKnownExactCastIntToFP`函数的LLVM提交。这项改动使得`InstCombine`能够将`fpext(sitofp x to float) to double`这类序列直接折叠为`uitofp x to double`。然而，该优化意外破坏了`visitFPTrunc`中依赖`fpext`将`double`除法后续转换回`float`的窄化转换流程。

其后果是LLVM在关键循环中生成延迟33周期的`fdiv.d`指令，而非原本19周期的`fdiv.s`指令，导致显著性能下降。作者的修复方案通过扩展`getMinimumFPType`函数的范围分析能力，使其能识别`fptrunc(uitofp x double) to float`可安全缩减为`uitofp x to float`，从而恢复了关键的窄化优化，消除了该基准测试中的性能差距。

---

## 9. Obsidian入门指南

**原文标题**: An Introduction to Obsidian

**原文链接**: [https://bryanhogan.com/blog/obsidian-introduction](https://bryanhogan.com/blog/obsidian-introduction)

Obsidian是一款功能强大、本地优先的笔记应用，使用纯Markdown文件，让用户完全拥有并掌控自己的数据。其核心优势在于灵活性与可扩展性，用户可通过社区插件按需定制，同时保持简洁的文件夹结构。

文章重点阐述了其关键优势：采用开放格式、避免平台锁定，以及内部链接（`[[ ]]`）等强大功能。建议新用户从简入手，避免被网络教程的复杂性干扰，聚焦实际需求而非过度优化工具。

作者的个人使用场景包括内容创作、知识管理、项目追踪和媒体记录，采用自下而上、受卡片盒笔记法启发的系统，仅使用少量插件。同步方面采用Google Drive并备份至GitHub，同时指出内置的图谱视图和画布等功能虽有趣，但并非日常必需。

最后，文章将Obsidian置于更广阔的笔记工具生态中，与Notion（协作）、Logseq（日志）等工具进行比较，并提及其他优质替代方案。

---

## 10. 可视化CPU流水线技术（2024）

**原文标题**: Visualizing CPU Pipelining (2024)

**原文链接**: [https://timmastny.com/blog/visualizing-cpu-pipelining/](https://timmastny.com/blog/visualizing-cpu-pipelining/)

本文阐述了CPU流水线的核心概念，重点解析五级MIPS流水线模型。文章首先说明流水线相较于单周期设计如何提升效率，同时指出其带来的数据冒险与控制冒险等挑战。

文中详细阐述了解决这些问题的关键机制：**指令译码**产生的元数据通过流水线寄存器传递，为冒险检测提供基础；**冒险检测单元（HDU）**能识别数据依赖关系，可通过暂停流水线（插入“气泡”）确保执行正确性；而**转发单元（FU）**则能将指令在后续阶段（EX或MEM）产生的中间结果直接回传给需要该数据的前级阶段，从而避免多数流水线暂停。

文章进一步将这些原理应用于**分支（控制冒险）**场景：解释了“预测分支不跳转”的简单策略与**分支延迟槽**概念（编译器在此位置安排必执行的指令），最后引入**动态分支预测**机制——通过分支预测单元（BPU）推测分支走向，并由解析单元在预测错误时采用类似转发与暂停的逻辑清空流水线进行修正。

全文贯穿的核心思想在于：元数据传递、流水线暂停与结果转发这些基础技术，如何通过巧妙的复用与组合，优雅地解决CPU设计中日益复杂的性能难题。

---

## 11. 微机电系统阵列芯片可投射沙粒大小的视频画面。

**原文标题**: MEMS Array Chip Can Project Video the Size of a Grain of Sand

**原文链接**: [https://spectrum.ieee.org/mems-photonics](https://spectrum.ieee.org/mems-photonics)

本文报道了一种新型微芯片，它采用微机电系统（MEMS）阵列来投射微观视频图像。其核心技术涉及一组微小的可动反射镜阵列，通过引导激光束来生成沙粒般大小的动态图像。

该技术最初是为量子计算应用中精确控制激光束而开发的，研究人员随后发现了其在超微型投影领域的潜力。该芯片本身无需外部透镜即可生成并投射视频，使得整个系统异常紧凑。

一项关键创新是采用“分裂电极”来控制反射镜。这种设计允许更精确、高效的运动，从而能够创建复杂的高帧率灰度视频，如演示中投射的《蒙娜丽莎》图像所示。

该技术在需要极致微型化的领域展现出应用前景，包括生物医学设备（如内窥镜成像和神经刺激）、先进计算以及未来的消费电子产品（如超紧凑可穿戴显示器）。这项技术代表了将完整投影系统集成到单一微型芯片上的重要进展。

---

## 12. 所有初等函数源自一个二元运算符

**原文标题**: All elementary functions from a single binary operator

**原文链接**: [https://arxiv.org/abs/2603.21852](https://arxiv.org/abs/2603.21852)

本文介绍了一种单一二元运算符 **eml(x, y) = exp(x) − ln(y)**，并证明其与常数 **1** 结合可以生成所有标准初等函数（例如常数 *e*、*π* 和 *i*；算术运算；以及超越函数如 *sin*、*cos*、*sqrt* 和 *log*）。这一发现类似于布尔逻辑中通用门（如 NAND）的作用，但适用于连续数学。

作者通过系统搜索发现了该运算符，并提供了构造性证明，展示了如何利用 *eml* 与常数 1 的组合来表达所有必要函数。由此形成了一种统一语法：**S → 1 | eml(S, S)**。

本文还探讨了在**符号回归**中的应用，表明当潜在规律为初等函数时，基于梯度优化器（如 Adam）训练 *eml* 节点构成的浅层二叉树，可以从数值数据中恢复精确的闭式表达式。研究附带了补充材料和代码，突显了其在自动函数发现领域的理论意义与实际价值。

---

## 13. 让Tmux既美观又实用（2024版）

**原文标题**: Make Tmux Pretty and Usable (2024)

**原文链接**: [https://hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/](https://hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/)

本文提供了一份定制tmux以提升实用性和美观性的指南。文中说明配置需通过编辑`~/.tmux.conf`文件实现，并分享了多项实用调整技巧。

关键功能改进包括：将默认前缀键（`C-b`）重映射为更易触及的`C-a`；采用直观字符（`|`和`-`）分割窗格；启用快速配置重载功能；支持通过Alt+方向键直接切换窗格而无需前缀键。同时建议启用鼠标模式以提升便利性，并禁用自动窗口重命名功能。

在视觉呈现方面，文章提供了配置代码片段，可自定义状态栏、窗格、消息提示等元素的色彩与样式。建议采用终端默认颜色以确保兼容性，或从256色调色板中精确指定颜色以获得更精细的控制。

作者最后指引读者参考GitHub点文件仓库、tmux手册页及tmux维基百科等资源进行深度定制。

---

## 14. 恰到好处的Chimera Linux

**原文标题**: Just Enough Chimera Linux

**原文链接**: [https://www.dwarmstrong.org/chimera-install-zfs/](https://www.dwarmstrong.org/chimera-install-zfs/)

本文是一份逐步指南，介绍如何在单块磁盘上安装Chimera Linux——一个独特的、基于musl的发行版——使用加密的ZFS根文件系统和ZFSBootMenu引导加载程序。

过程从准备USB安装介质并启动到实时环境开始。配置控制台和网络后，清空目标磁盘并将其分区为2GB的EFI系统分区（ESP）和一个更大的ZFS池分区。

指南的核心部分详细介绍了如何使用原生OpenZFS加密创建加密ZFS池，并使用密钥文件作为密码短语。随后在池中为根文件系统、用户主目录和共享数据创建特定数据集，并将基础Chimera系统安装到此池中。

安装后配置包括设置root密码、创建用户、安装必要软件包（如微码和ZFS工具），以及配置控制台、键盘、时区和主机名。启用必要的服务（syslog-ng、dhcpcd、sshd）。

接着，指南在ESP上设置ZFSBootMenu以引导加密ZFS环境。最后，说明如何配置zram以在内存中使用压缩交换空间，替代传统的交换分区。

最终结果是一个极简的加密基础系统，适合构建桌面、笔记本或服务器环境，并提供了进一步探索的资源。

---

## 15. 微软并未从Windows 11中移除Copilot，只是对其进行了重命名。

**原文标题**: Microsoft isn't removing Copilot from Windows 11, it's just renaming it

**原文链接**: [https://www.neowin.net/opinions/microsoft-isnt-removing-copilot-from-windows-11-its-just-renaming-it/](https://www.neowin.net/opinions/microsoft-isnt-removing-copilot-from-windows-11-its-just-renaming-it/)

微软并未从Windows 11中移除AI功能，而是对其进行了品牌重塑，这一举措令部分用户感到失望。此前微软曾承诺会更审慎地整合AI，但近期Windows Insider更新显示，记事本中的“Copilot”按钮已被替换为提供类似AI辅助功能的通用写作图标。相关设置也从“AI功能”更名为“高级功能”。

这一调整引发用户抱怨，认为微软只是在隐藏Copilot品牌标识，却继续整合AI技术，而非如部分用户所期待的那样彻底移除。文章指出，微软最初的声明侧重于减少不必要的Copilot入口点并确保AI实用性，而非完全取消该技术。

核心矛盾在于用户诉求——许多批评者公开反对操作系统中的“AI泛滥”——与微软在AI竞争中保持商业竞争力的必要性之间存在落差。该公司试图通过弱化Copilot品牌但保留功能来寻求折中方案。作者认为这种品牌重塑并不足够，并指出微软在2024年计划进行的系统大改版中，仍将难以完全解决用户对Windows 11中AI功能的不满。

---

## 16. Rockchip RK3588初步主线视频捕获与相机支持

**原文标题**: Initial mainline video capture and camera support for Rockchip RK3588

**原文链接**: [https://www.collabora.com/news-and-blog/news-and-events/mainline-video-capture-and-camera-support-for-rockchip-rk3588.html](https://www.collabora.com/news-and-blog/news-and-events/mainline-video-capture-and-camera-support-for-rockchip-rk3588.html)

本文详述了为Rockchip RK3588 SoC实现主线Linux视频采集与摄像头功能支持的持续努力。尽管RK3588在上游内核中已获得良好支持，但其视频采集模块（VICAP）与图像信号处理器（ISP）一直是关键缺失环节，常迫使用户依赖厂商定制内核。

这一进程始于VICAP的**rkcif驱动开发**，该驱动历经五年多开发与多次迭代，最终于2025年10月被主线内核接纳。随后在2026年1月，**MIPI CSI-2接收器驱动**成功上游化，首次实现了从传感器进行基础摄像头采集（尽管仍依赖软件处理且速度较慢）。

文章进一步阐述了实现完整硬件加速摄像头支持所需的**关键后续步骤**：
1.  支持**VICAP MUX-TOISP**单元，以建立采集模块与ISP间直接高效的硬件连接。
2.  由Collabora、Rockchip与Ideas on Board三方协作，为RK3588 ISP全新开发**rkisp2内核驱动**。
3.  通过实现配备规范图像处理算法（IPA）的**libcamera支持**，充分发挥硬件ISP效能。

此项工作标志着开源社区通过协作取得的重要成果，旨在为RK3588多媒体应用提供完全符合上游标准的完整软件栈。

---

## 17. 迫在眉睫的高校招生死亡螺旋

**原文标题**: The Looming College-Enrollment Death Spiral

**原文链接**: [https://www.theatlantic.com/ideas/2026/04/college-enrollment-demographic-cliff/686750/](https://www.theatlantic.com/ideas/2026/04/college-enrollment-demographic-cliff/686750/)

本文概述了美国高等教育领域迫在眉睫的危机，其驱动因素是始于2023年的“人口悬崖”——高中毕业生数量持续下降。这一趋势可能加速大学关闭，目前全美高校已平均每年关闭约60所。

危机将不成比例地冲击服务于中低收入学生的地区性及本地高校，这些学生通常选择就近入学。随着此类院校难以招满学生，许多将被迫关闭或合并，形成“教育荒漠”。本地实体校园选项的减少会引发恶性循环：附近高校越少，选择上大学的学生总数也随之下降——大学即时入学率已从2016年的70%跌至2022年的62%，便是明证。

与此同时，精英名校构成的全国性招生市场却自成一体，不受影响。随着全国各地顶尖学生争夺数量基本固定的入学名额，这些学校的申请量持续飙升。

地理错位加剧了问题：东北部和中西部高校密度最高，却将面临最急剧的生源下降，而生源增长主要集中在南部。与企业不同，高校难以轻易搬迁。其结果可能导致战后高等教育普及化进程发生逆转，未来大学教育或将成为奢侈品，而非民主化的机会。

---

## 18. B树与数据库索引（2024）

**原文标题**: B-trees and database indexes (2024)

**原文链接**: [https://planetscale.com/blog/btrees-and-database-indexes](https://planetscale.com/blog/btrees-and-database-indexes)

本文阐述了B树和B+树如何成为数据库索引的基础，重点介绍了它们在MySQL的InnoDB等系统中的运用。B树是一种平衡有序的树结构，每个节点存储多个键/值对，通过每层仅访问一个节点实现高效查找。B+树作为数据库常用的变体，仅将数据存储在叶子节点，内部节点仅包含键和指针，这使得每个节点能容纳更多键，并通过链表实现高效顺序遍历。

文章强调了B+树适合数据库的原因：其节点大小可与磁盘块对齐（如InnoDB的16KB页），从而最小化磁盘I/O。文中详细说明了InnoDB如何使用B+树存储主键对应的完整表行，并为二级索引创建独立的B+树。

关键要点在于主键选择对性能的影响。使用顺序整数（如自增BIGINT）能使数据连续存储，从而提升插入和范围查询速度。相反，像UUIDv4这样的随机键会导致分散插入、增加节点访问次数，并降低范围扫描效率。此外，较小的键（如8字节BIGINT对比16字节UUID）允许每个节点存储更多键，形成更浅的树结构，加快查找速度。

最后，文章指出InnoDB利用缓冲池将频繁访问的页面缓存在内存中，减少磁盘读取并提升查询性能。

---

## 19. 美国上诉法院裁定158年历史的家酿禁令违宪

**原文标题**: US appeals court declares 158-year-old home distilling ban unconstitutional

**原文链接**: [https://nypost.com/2026/04/11/us-news/us-appeals-court-declares-158-year-old-home-distilling-ban-unconstitutional/](https://nypost.com/2026/04/11/us-news/us-appeals-court-declares-158-year-old-home-distilling-ban-unconstitutional/)

美国一家上诉法院裁定，自1868年起实施的联邦家庭蒸馏禁令违宪。位于新奥尔良的第五巡回上诉法院支持了业余蒸馏协会的主张，认为该禁令不当限制了个人自由。

法院认定，最初为防止酒类逃税而颁布的禁令不属于国会征税权的合法行使范围。伊迪丝·琼斯法官指出，与允许征税的监管方式不同，该禁令通过彻底禁止活动反而减少了潜在税收。她警告称，若按政府逻辑，为确保征税可对许多其他家庭活动定罪，这将逾越联邦权限。

该判决维持了得克萨斯州联邦法官2024年的裁决，原告律师视其为个人自由的胜利。美国司法部及相关财政部机构未立即置评。目前判决暂缓执行，以待政府可能提出的上诉。

---

## 20. 密歇根州“数字时代”法案因隐私担忧被撤回。

**原文标题**: Michigan 'digital age' bills pulled after privacy concerns raised

**原文链接**: [https://www.thecentersquare.com/michigan/article_7ca4e268-4a68-42fb-9042-f9d8604ebd7f.html](https://www.thecentersquare.com/michigan/article_7ca4e268-4a68-42fb-9042-f9d8604ebd7f.html)

密歇根州两项法案——《数字年龄确认法案》（众议院第4429号法案和参议院第284号法案）在倡导团体提出重大隐私担忧后，由其提案人主动撤回。这项两党支持的立法原本要求设备制造商在激活时估算用户年龄，并向应用程序和网站持续发送“数字年龄信号”。

以密歇根公平选举研究所为首的批评者指出，法案缺乏关键的隐私保护措施，例如数据使用限制、禁止与其他个人信息合并的规定以及数据删除要求。他们警告称，该立法将在密歇根州的每台设备上创建一个持续存在、始终在线的身份识别层，且缺乏充分保护。

相关团体还担心，责任条款可能让科技平台在依赖设备年龄估算的情况下，免于为未成年用户承担责任。这两项法案被认定为可能源自全国性组织“数字童年联盟”的示范立法，已在超过20个州推广。

在倡导团体进行沟通后，两项法案在数日内被撤回。提案人布拉德·帕克特众议员和约翰·切里参议员正与相关团体合作制定可能的替代法案。倡导者建议任何新法案都应纳入全面的消费者数据隐私框架，包括知情权、删除数据权以及选择退出数据销售的权利。

---

## 21. 谁在冒充这位ProPublica记者？

**原文标题**: Who's Been Impersonating This ProPublica Reporter?

**原文链接**: [https://www.propublica.org/article/impersonating-propublica-reporter](https://www.propublica.org/article/impersonating-propublica-reporter)

在这篇文章中，ProPublica记者罗伯特·法图尔奇详细描述了他在Signal和WhatsApp等加密通讯应用上被冒充的经历。冒名者使用他的姓名和职业头像，联系了与外国军方有关联的人士，包括一名加拿大官员和一位参与乌克兰无人机项目的拉脱维亚商人，试图以虚假借口获取信息。

这些事件凸显了针对记者的复杂网络欺骗行为日益增长的趋势，其目的似乎是收集敏感信息而非谋取经济利益。尽管Signal等平台以隐私保护为设计核心，使得打击此类冒充行为变得困难，但专家指出这类服务上的诈骗活动正在增加。

法图尔奇强调，此类冒充行为会侵蚀消息来源提供信息所必需的信任，从而破坏调查性新闻工作。他建议任何被记者联系的人通过官方渠道核实对方身份，例如查看记者认证的个人简介页面或机构邮箱地址。文章最后警告人们要保持警惕，因为类似的冒充活动——其中一些可能有国家背景支持——也曾针对其他主要新闻机构的记者。

---

## 22. 谷歌与约翰迪尔有着相同的人工智能应用曲线。

**原文标题**: Google has the same AI adoption curve as John Deere

**原文链接**: [https://twitter.com/i/status/2043747998740689171](https://twitter.com/i/status/2043747998740689171)

**摘要：**

本文并非一篇文章，而是来自X（原Twitter）的浏览器错误提示信息。所提供文本是用户在浏览器中禁用JavaScript后尝试访问该平台时显示的标准提示。

核心信息告知用户需要启用JavaScript，并提示他们：
1. 在当前浏览器中启用JavaScript。
2. 切换到受支持的浏览器（附有指向帮助中心列表的链接）。

页脚包含标准的法律和企业链接：帮助中心、服务条款、隐私政策、Cookie政策、法律声明、广告信息以及版权声明（© 2026 X Corp.）。

标题“谷歌与约翰迪尔有着相同的人工智能应用曲线”似乎是用户因技术错误而无法访问的帖子或文章的预定标题。所提供文本中不包含该文章的任何内容。

---

## 23. 软件团队的经济学：为何大多数工程组织在盲目飞行

**原文标题**: The economics of software teams: Why most engineering orgs are flying blind

**原文链接**: [https://www.viktorcessan.com/the-economics-of-software-teams/](https://www.viktorcessan.com/the-economics-of-software-teams/)

本文指出，大多数软件工程组织缺乏对其团队真实成本与必要回报的财务可见性。据测算，一个西欧典型的八人工程师团队每月成本约为8.7万欧元。为保持经济可行性，此类团队需创造3至5倍于成本的价值，以应对项目失败率与长期维护负担。

对内部平台团队而言，这意味着需为其他工程师节省大量时间；面向客户的团队则需通过降低用户流失率或提升激活率等指标直接影响收入。然而，多数团队仅追踪活动量或满意度指标（如开发速度或净推荐值），这些指标可能在财务表现恶化时依然呈现增长。

作者将这种管理失调追溯至2011-2022年的资本廉价期：增长掩盖了低效的优先级排序，一代领导者养成了脱离财务约束的工作习惯。该时期还导致企业错误地将庞大代码库与工程师规模单纯视为资产，忽视了其在维护与协作成本中不断累积的负债。

结论指出，能够快速复现复杂软件的大型语言模型的出现，正清晰暴露出这些长期积累的低效问题，迫使行业重新评估工程价值的衡量方式与合理性依据。

---

## 24. 自制软饮料

**原文标题**: DIY Soft Drinks

**原文链接**: [https://blinry.org/diy-soft-drinks/](https://blinry.org/diy-soft-drinks/)

2020年，作者开始自制无咖啡因软饮，最初以开源项目（如Open Cola）为灵感制作可乐配方。制作过程包括用精确计量的精油（如橙子、青柠、肉豆蔻）调配风味乳化液，以阿拉伯胶乳化，再加入焦糖色素和柠檬酸形成浓缩液。为避开糖分，作者尝试使用三氯蔗糖等人造甜味剂，并通过多批次调整用量以优化口感。

该项目后来扩展至橙味汽水及杏仁-血橙-青柠混合风味等配方。每次调整都涉及精油配比与甜度的微调，所有配方均记录于GitHub并设有版本管理。作者认为自制版本（尤其是橙味汽水）风味独特，优于无咖啡因可口可乐等市售产品。

截至2026年，配方已趋于稳定。作者表示将持续探索其他市售汽水的逆向复刻，并欢迎尝试这些DIY配方的人提供反馈。

---

## 25. 以ROCm迎战CUDA：“一步一个脚印”

**原文标题**: Taking on CUDA with ROCm: 'One Step After Another'

**原文链接**: [https://www.eetimes.com/taking-on-cuda-with-rocm-one-step-after-another/](https://www.eetimes.com/taking-on-cuda-with-rocm-one-step-after-another/)

**《迎战CUDA的ROCm策略：“一步一个脚印”》摘要**

本文探讨了AMD如何通过其ROCm（Radeon开放计算）平台，在AI和高性能计算市场与NVIDIA主导的CUDA生态系统竞争。要点包括：

*   **挑战所在：** AMD承认NVIDIA凭借CUDA取得了巨大的先发优势，使其成为行业标准。主要障碍并非硬件性能，而是构建一个可比拟的、成熟的软件栈以及开发者信赖的广泛生态系统。
*   **ROCm的开源策略：** AMD的核心策略是将ROCm定位为专有CUDA的开源替代方案，旨在吸引寻求供应商灵活性、避免被锁定的用户和组织。
*   **“一步一个脚印”策略：** AMD并未试图立即全面接管市场，而是专注于渐进式推进。这包括：
    *   **优先关键工作负载：** 初期瞄准主要AI框架（如PyTorch和TensorFlow）和关键的HPC应用，确保在最关键的领域提供强劲性能。
    *   **扩展硬件支持：** 逐步将ROCm支持范围从AMD最新的Instinct GPU，扩展到旧款专业卡乃至消费级Radeon GPU，以扩大潜在用户群。
    *   **融入社区：** 利用开源模式，与研究机构、实验室和超级计算中心（如Frontier超级计算机）合作，基于实际使用场景完善平台。
*   **长远布局：** AMD高管认识到追赶是一个长达数年的过程。成功的衡量标准是在学术界和企业中稳步增长采用率，通过提供一个可信赖的、开放的加速计算替代方案，逐步削弱CUDA的护城河。

本质上，面对NVIDIA根深蒂固的CUDA生态系统，AMD正通过ROCm展开一场耐心的开源战役，旨在一步步积累势头和信誉。

---

## 26. 回归地道设计（2023）

**原文标题**: Bring Back Idiomatic Design (2023)

**原文链接**: [https://essays.johnloeber.com/p/4-bring-back-idiomatic-design](https://essays.johnloeber.com/p/4-bring-back-idiomatic-design)

在2023年的这篇文章中，约翰·勒伯尔指出，现代软件设计已经失去了定义桌面软件时代的一致性和易用性。他提出了“惯用设计”的概念——即用户凭直觉就能理解的标准模式，例如“保持登录状态”的复选框。

勒伯尔将旧式桌面系统（如Windows）的同质化界面与当今异构的Web应用程序进行了对比。在旧系统中，菜单、键盘快捷键和控件在不同应用程序间保持一致，而如今即使像Figma和Linear这样设计精良的现代应用也缺乏共享的惯用模式，迫使用户不断重新学习界面操作。

他将这种碎片化归因于两个主要因素：一是向移动设计的笨拙过渡，这迫使桌面和触摸界面都做出了妥协；二是前端开发的快速演进。现代框架和强大的浏览器允许巨大的创造力，但往往抛弃了基础的HTML/CSS惯用模式和浏览器约定（如后退按钮）。

尽管存在这种混乱，勒伯尔指出像苹果公司那样具有凝聚力的生态系统取得了成功，这证明了强大而明确的设计系统的价值。他最后为构建者提供了实用建议：优先考虑成熟的Web惯用模式，使用语义化HTML，确保内部一致性，并优先追求清晰性而非视觉新颖性。他最终希望行业能就常见交互的最佳解决方案达成共识，从而恢复直观的可用性。

---

## 27. Show HN: boringBar – 一款适用于 macOS 的任务栏式 Dock 替代工具

**原文标题**: Show HN: boringBar – a taskbar-style dock replacement for macOS

**原文链接**: [https://boringbar.app/](https://boringbar.app/)

**boringBar** 是一款 macOS 任务栏风格的程序坞替代工具，旨在增强窗口和工作空间管理。它运行于 macOS 14（Sonoma）或更高版本，并提供 14 天免费试用。

**主要功能**包括：仅显示当前桌面的窗口以保持专注、带窗口数量的桌面切换器，以及全局快捷键应用启动器。它提供悬停窗口预览、显示 macOS 通知徽章，并通过芯片脉动提示应用通知。用户可滚动切换桌面、调整任务栏大小、按应用分组窗口，并自定义芯片标题。它可隐藏系统程序坞，并在所有显示器上显示任务栏。

**定价**分为个人版和商业版。个人许可证可选择一次性支付 40 美元购买 2 台设备的永久授权，或按年订阅，起价为每年 7.99 美元（1 台设备，最多可扩展至 5 台）。商业许可证为年度订阅，提供批量折扣，6 名以上用户起价为每人每年 3.49 美元。

该应用需要 **辅助功能** 和 **屏幕录制** 权限以实现功能并获取窗口缩略图。个人许可证通过电子邮件密钥激活，而商业团队成员则通过一次性代码激活。

---

## 28. 我们可能正经历网络史上最具影响力的百日。

**原文标题**: We May Be Living Through the Most Consequential Hundred Days in Cyber History

**原文链接**: [https://ringmast4r.substack.com/p/we-may-be-living-through-the-most](https://ringmast4r.substack.com/p/we-may-be-living-through-the-most)

2026年前四个月，全球遭遇了前所未有的重大网络攻击浪潮，这些事件却出人意料地未引起公众广泛关注。这些攻击可分为四条并行线索：伊朗关联势力对大型企业和联邦调查局的破坏性攻击；一个名为“散乱LAPSUS$猎手”的大型犯罪联盟通过精密社会工程学从数百家公司窃取数十亿条记录；朝鲜针对常用软件的供应链渗透；以及俄罗斯对欧洲目标的国家级间谍活动。

文章指出，这些攻击都利用了同一薄弱环节：现代企业对冗长供应商与开发者信任链的依赖，而攻击者已将其常规武器化。文中同时提及另一未被充分讨论的趋势——人工智能威胁激增，钓鱼邮件已基本由AI生成，国家行为体正利用AI自动化间谍活动并制造以假乱真的深度伪造内容。

一个关键进展是，美国政府因担忧Anthropic公司新型AI模型“Mythos”而紧急召集大型银行CEO举行高层闭门会议——该模型展现出能发现数千个新软件漏洞的惊人能力。作者总结道，未来历史学家或将这段针对基础设施工业化升级、AI加持的网络威胁集中爆发期，视为具有决定性意义的转折点。

---

## 29. 大多数人连一个球都玩不转。

**原文标题**: Most people can't juggle one ball

**原文链接**: [https://www.lesswrong.com/posts/jTGbKKGqs5EdyYoRc/most-people-can-t-juggle-one-ball](https://www.lesswrong.com/posts/jTGbKKGqs5EdyYoRc/most-people-can-t-juggle-one-ball)

本指南全面介绍了杂耍技巧，从基础到进阶概念。它首先通过循序渐进的方法讲解三球瀑布式抛接，重点强调正确的投掷技巧、节奏把握以及需要避免的常见错误（例如伸手接球或过早投掷）。

掌握瀑布式抛接后，作者指出了进阶路径：可以学习外抛、米尔斯混乱等花式技巧，或增加球的数量。文中提到，虽然四球（喷泉式抛接）可能在一个月内掌握，但五球（更快的瀑布式抛接）因涉及复杂的节奏控制和避免空中碰撞，花费了作者四年时间才练成。

指南还介绍了位置交换符号——一种用数字描述杂耍模式的数学系统，其中数字的平均值等于球的数量。最后，它简要提及了其他方面，例如与朋友配合传递、以及使用棒和圈等不同道具的杂耍，并总结道：杂耍是一门多样化的技能，几乎没有硬性规则。

---

## 30. 安卓系统现已阻止你在照片中分享位置信息。

**原文标题**: Android now stops you sharing your location in photos

**原文链接**: [https://shkspr.mobi/blog/2026/04/android-now-stops-you-sharing-your-location-in-photos/](https://shkspr.mobi/blog/2026/04/android-now-stops-you-sharing-your-location-in-photos/)

本文详述了近期安卓更新如何系统性地破坏了网站和应用程序从用户上传的照片中获取地理位置数据（EXIF元数据）的能力。运营纪念长椅地理标记照片分享网站的作者指出，谷歌已逐步禁用此功能——先是网页照片选择器，然后是通用文件选择器，甚至波及蓝牙共享和邮件附件等方式。

官方解释是出于用户隐私考虑，防止意外分享可能带来安全风险的精确位置。作者虽理解这一担忧，但批评谷歌在未征询意见且缺乏明确沟通的情况下实施变更，导致开发者和用户陷入困境。

文章总结称，目前仅存两种可上传完整位置数据照片的方式：通过USB数据线连接台式电脑，或开发具有特定权限的原生安卓应用。作者正在寻求替代解决方案，并呼吁支持一项针对网络标准的改革提案。

---

