# Hacker News 热门文章摘要 (2025-12-14)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. Linux沙盒与Fil-C

**原文标题**: Linux Sandboxes and Fil-C

**原文链接**: [https://fil-c.org/seccomp](https://fil-c.org/seccomp)

本文阐述了如何将内存安全（由内存安全的C/C++实现Fil-C提供）与Linux沙箱技术（如seccomp-BPF）相结合，以实现强大的安全防护。文章以将OpenSSH沙箱移植到Fil-C为例进行说明。

核心要点包括：
1.  **正交防御机制**：内存安全与沙箱技术互为补充。内存安全可防止代码执行漏洞，而沙箱则能在程序被攻破时限制进程的操作权限。
2.  **Fil-C运行时集成**：Fil-C运行时使用后台线程进行垃圾回收，这可能与禁止创建新进程/线程的沙箱规则冲突。为解决此问题，Fil-C提供了`zlock_runtime_threads()`接口，强制运行时在沙箱激活前预先创建所有必要线程，避免后续违规。
3.  **Seccomp过滤器调整**：为适配Fil-C内部机制（例如允许其分配器使用`MAP_NORESERVE`、锁机制使用`sched_yield`），需对OpenSSH的seccomp过滤器进行微调，且不会实质性削弱沙箱防护。
4.  **系统级沙箱强制执行**：用于安装seccomp过滤器的`prctl`系统调用具有线程特异性。Fil-C运行时确保这些限制应用于*所有*内部线程（不仅是主线程），从而封堵潜在逃逸途径。

结论表明，Fil-C能够在保持内存安全保证的前提下，兼容强力的Linux沙箱技术，为安全关键型应用构建起坚固的层次化防御体系。

---

## 2. J语言的实现

**原文标题**: An Implementation of J

**原文链接**: [https://www.jsoftware.com/ioj/ioj.htm](https://www.jsoftware.com/ioj/ioj.htm)

本文档概述了J编程语言在C语言中的实现。由Roger K.W. Hui撰写，旨在为熟悉J和C语言的开发者提供技术指导。

核心内容围绕系统架构展开。首先阐述**解释器的工作流程**，详述词汇形成、解析和名称解析过程。接着深入**数据模型**，涵盖数组、类型以及名词的内存管理。重点篇幅用于解析**动词**，说明其结构、基于秩的执行方式及错误处理机制。同时也探讨了**副词与连词**的实现。

强调的关键技术方面包括数据的**内部表示形式**（原子、装箱、树形和线性结构）以及针对不同数据类型的**显示系统**。附录提供了实用资源，如原始"Incunabulum"原型、特殊优化代码、测试脚本和系统概要。

总体而言，本文是对J解释器的全面蓝图，阐释了该语言的核心概念——如数组、通过连缀实现的隐式编程以及秩多态性——如何在C编程语言中具体实现。

---

## 3. 闭包作为Win32窗口过程

**原文标题**: Closures as Win32 Window Procedures

**原文链接**: [https://nullprogram.com/blog/2025/12/12/](https://nullprogram.com/blog/2025/12/12/)

本文介绍了一种在C语言中创建闭包的技术，通过使用JIT编译的蹦床函数为Win32窗口过程添加上下文指针，而该过程通常仅接受四个固定参数。作者解释道，虽然Win32的`WNDPROC`回调函数缺乏传递自定义数据的内置方式（需要依赖全局变量或`GWLP_USERDATA`等变通方案），但自定义蹦床函数可以注入第五个参数。

该解决方案涉及通过加载器分配可执行内存（`.exebuf`），以确保代码与数据的邻近性，从而支持相对寻址。函数`make_wndproc`会生成一小段汇编蹦床代码，用于建立栈帧、推送上下文指针并调用用户的扩展窗口过程（`Wndproc5`）。这使得程序状态可以直接访问，无需额外的样板代码。

尽管此示例比标准Win32实践更为复杂，但该技术被提出作为一种可复用的模式，适用于回调接口缺乏上下文指针的场景，例如功能受限的自定义分配器API。作者提供了可运行的代码，并指出该技术与控制流防护（Control Flow Guard）兼容。

---

## 4. 寻回安东尼·波登（真正）遗失的Li.st清单

**原文标题**: Recovering Anthony Bourdain's (really) lost Li.st's

**原文链接**: [https://sandyuraz.com/blogs/bourdain/](https://sandyuraz.com/blogs/bourdain/)

本文详述了一项旨在恢复安东尼·波登在已关闭平台Li.st上所写清单的努力。作者利用公共网络存档库Common Crawl进行搜索，成功找回了波登大部分清单的HTML内容，这些内容此前曾被记录为已丢失。

恢复的清单涵盖了波登广泛的兴趣领域，包括他渴望品尝的食物、最喜爱的酒店、难以抗拒的消遣、间谍小说以及个人观察随笔。虽然文字内容得以复原，但伴随的图片已丢失，无法从存档中找回。

该项目成功找回了原始参考资料中提及的除一份清单（"与大卫·鲍伊相关"）外的所有内容。作者在呈现这些发现时，尽可能保留了波登原有的措辞和格式，并将代码与恢复的数据公开，以供他人探索并为类似的数字保存工作贡献力量。

---

## 5. 将E-Ink平板用作Linux显示器

**原文标题**: Using E-Ink tablet as monitor for Linux

**原文链接**: [https://alavi.me/blog/e-ink-tablet-as-monitor-linux/](https://alavi.me/blog/e-ink-tablet-as-monitor-linux/)

本文详细介绍了如何将安卓电子墨水屏平板用作Linux电脑的副显示器，以缓解长时间读写带来的视觉疲劳。作者使用Onyx BOOX Air 2平板与Arch Linux系统下的i3wm窗口管理器，发现通过VNC进行屏幕镜像的体验优于Deskreen等基于浏览器的方案——后者存在文字显示质量差和延迟高的问题。

核心解决方案是在Linux电脑上配置TigerVNC服务器。关键步骤包括安装软件、使用`vncpasswd`设置安全密码以及配置服务器。作者建议直接使用`x0vncserver`命令共享主显示器，并通过指定自定义分辨率（如`1400x1050+0+0`）来匹配平板屏幕尺寸，实现无边框适配。

为提升便捷性，作者编写了自动调整桌面分辨率并启动VNC服务器的脚本，实现快速启用。在平板上则使用AVNC等VNC客户端进行连接。最终搭建的是一套适合文本工作的低延迟方案，主要限制仅在于电子墨水屏硬件本身的刷新率特性。作者建议在应用程序中使用浅色高对比度主题，以在电子墨水屏上获得最佳阅读体验。

---

## 6. 我将24年的博客文章输入了一个马尔可夫模型。

**原文标题**: I fed 24 years of my blog posts to a Markov model

**原文链接**: [https://susam.net/fed-24-years-of-posts-to-markov-model.html](https://susam.net/fed-24-years-of-posts-to-markov-model.html)

在这篇文章中，作者描述了他如何将自己24年来的博客文章输入到一个名为Mark V. Shaney Junior的简单马尔可夫文本生成程序中。该程序受1980年代一个经典项目的启发，通过分析单词序列（默认为三元组）来构建模型，从而生成新的、通常无意义的文本。

当使用其博客中超过20万个单词（不包括评论）进行训练后，该模型产生了有趣且不连贯的输出，有时以幽默的方式将不同文章中的无关短语组合在一起。作者解释说，通过增加模型的“阶数”（用于预测下一个单词的单词数量），输出会变得更加连贯，但风险是可能直接复制原文的大段内容。

他将这种基于局部统计的简单马尔可夫模型与现代大型语言模型（LLMs）进行了对比，指出它无法捕捉长距离依赖或全局结构。尽管存在这些限制，他仍将其视为一个优秀且易于理解的“hello, world”式入门，用以介绍语言模型背后的概念，并赞赏其在探索性编程和娱乐方面的简洁性。

---

## 7. 我尝试用Gleam语言完成Advent of Code挑战

**原文标题**: I tried Gleam for Advent of Code

**原文链接**: [https://blog.tymscar.com/posts/gleamaoc2025/](https://blog.tymscar.com/posts/gleamaoc2025/)

作者分享了使用Gleam编程语言完成2024年“代码降临节”（AoC）12日缩短版挑战的经历。他们认为Gleam非常适合AoC的解题风格，称赞其简洁的语法、实用的编译器，以及强调管道数据转换的函数式编程方法。突出优势包括`echo`调试工具、网格操作中`Option`类型的安全性，以及包含`list.transpose`和`list.combination_pairs`等实用函数的强大标准库。其中`fold_until`函数因能实现算法的优雅提前退出而备受青睐。

文中也提到了一些不足之处：文件I/O和正则表达式需依赖外部库，列表模式匹配功能有限，针对JavaScript目标时需要额外使用`bigi`库处理任意精度整数。作者的解决方案从优雅（用按位异或解决灯光谜题）到务实（调用`glpsol`求解器处理线性规划问题）不一而足。

总体而言，作者对Gleam在AoC中的表现非常满意，认为其函数式风格能产生清晰、可读性强的解决方案。这次经历激发了他们将Gleam用于实际项目的热情，比如构建网络服务器。

---

## 8. 精益定理证明器数学库

**原文标题**: Lean Theorem Prover Mathlib

**原文链接**: [https://github.com/leanprover-community/mathlib4](https://github.com/leanprover-community/mathlib4)

**摘要**

Mathlib4 是一个由社区维护的 Lean 4 定理证明器库，包含了基础编程工具和大量形式化数学内容。本文为用户和贡献者提供了一份实用指南。

对于**用户**，本文提供了安装说明（包括通过云端工作空间）、学习资源和文档链接（包括自动生成的 API 文档和理论概述），并指出了活跃的 Zulip 聊天社区以供寻求支持。

对于**贡献者**，本文概述了开发流程：克隆代码库、下载缓存的构建文件（`lake exe cache get`）、构建库（`lake build`）以及运行测试。它强调了遵循项目的风格、命名和文档规范。文章还解释了如何在本地构建 HTML 文档以及如何更新依赖项。

最后，本文包含了一个从 Lean 3 迁移的章节，并列出了项目当前和过去的维护者，突出了他们的专业领域。

---

## 9. VPN位置声明与实际流量出口不符

**原文标题**: VPN location claims don't match real traffic exits

**原文链接**: [https://ipinfo.io/blog/vpn-location-mismatch-report](https://ipinfo.io/blog/vpn-location-mismatch-report)

IPinfo对20款热门VPN服务进行的大规模分析发现，其中17家服务的流量实际路由国家与其宣传不符。许多VPN宣称在100多个国家设有服务器，但流量往往仅从美国或欧洲等地的少数实体数据中心流出。

研究识别出38个"纯虚拟"国家——即供应商宣称存在但从未被观测到实际流量流出的地区。仅有三款VPN（Mullvad、IVPN和Windscribe）完全不存在地理位置偏差。例如某些标注为"巴哈马"的服务器实际位于迈阿密，"索马里"服务器则位于法国或英国。

这种差异源于多数IP地理定位数据库依赖供应商自行申报的注册数据，而VPN服务商可能对此进行虚假标注。IPinfo基于实测的平台ProbeNet通过全球节点进行主动延迟测试，以识别真实的流量出口位置。

虽然虚拟服务器可能是出于成本或可靠性的技术折衷方案，但缺乏透明度会引发信任危机。这不仅误导依赖地理位置保障安全的记者或活动人士，还会影响欺诈检测和内容访问。文章建议用户将高国家数量宣传视为营销话术，并选择明确披露虚拟服务器位置的供应商。

---

## 10. 猫断层

**原文标题**: Cat Gap

**原文链接**: [https://en.wikipedia.org/wiki/Cat_gap](https://en.wikipedia.org/wiki/Cat_gap)

“猫科断层”指的是北美化石记录中大约2500万至1850万年前的一段时期，在此期间几乎找不到猫科或类猫物种的化石。这一断层始于当时占主导地位的剑齿掠食者——并非真正猫科动物的猎猫科（又称“伪剑齿虎”）——的灭绝。

关于断层成因存在多种假说。主流理论认为，几乎完全依赖肉食的猎猫科动物因过度特化而容易灭绝。环境变化，特别是全球降温和森林被开阔草原取代，也可能使这些适应森林的猎捕者陷入劣势。其他推测因素包括大规模火山喷发和晚新生代冰期的开始。

在此断层期间，部分犬形类食肉动物演化出更接近猫科的高度肉食性特征，但未能完全填补空缺的生态位。直到约1850万年前，真正的猫科动物（源自假猫属）通过白令陆桥从欧亚大陆迁徙至北美，断层才告终结，这些猫科后来演化出所有现代猫科物种。

---

## 11. 大麻及大麻素类药物的治疗应用：综述

**原文标题**: Therapeutic Use of Cannabis and Cannabinoids: A Review

**原文链接**: [https://jamanetwork.com/journals/jama/fullarticle/2842072?guestAccessKey=a368e622-e374-4a0c-8d3b-22a976500305](https://jamanetwork.com/journals/jama/fullarticle/2842072?guestAccessKey=a368e622-e374-4a0c-8d3b-22a976500305)

**《大麻及大麻素治疗用途综述》摘要**

这篇发表于《美国医学会杂志》的综述文章综合了有关大麻及大麻素医疗用途的证据。文章指出，尽管公众兴趣和合法获取途径显著增加，但支持其治疗益处的高质量证据仅限于少数特定病症。

最有力的证据（得到多项随机临床试验支持）仅针对某些美国食品药品监督管理局批准的大麻素药物，包括：
*   **纳比西莫**（一种特定的THC:CBD口腔黏膜喷雾剂）用于改善多发性硬化症的痉挛和疼痛。
*   **口服大麻素**用于控制化疗引起的恶心和呕吐。
*   **大麻二酚**用于减少特定罕见儿童癫痫综合征（Lennox-Gastaut综合征和Dravet综合征）的发作。

对于慢性疼痛，尤其是神经性疼痛，综述指出有中等质量证据表明大麻制剂能带来轻微至中度的益处。然而，对于大多数其他病症（如焦虑、创伤后应激障碍、睡眠障碍、青光眼），证据要么不足，要么质量低下，未能证明明确的疗效。

文章强烈强调了与大麻使用相关的已知及潜在**危害**，包括：
*   急性损害（头晕、嗜睡、认知/运动功能缺陷）。
*   发展为**大麻使用障碍**的风险。
*   对青少年大脑发育、心理健康（如精神病）以及心血管和肺部健康的潜在长期不良影响。

作者总结认为，大麻素并非任何病症的一线疗法。他们强调，临床使用应基于证据而非公众舆论，医生必须仔细权衡其有限的潜在益处与已有充分记录的风险，特别是在长期使用的情况下。对患者进行相关风险教育至关重要。

---

## 12. 电脑游戏的崛起，第一部：冒险

**原文标题**: The Rise of Computer Games, Part I: Adventure

**原文链接**: [https://technicshistory.com/2025/12/13/the-rise-of-computer-games-part-i-adventure/](https://technicshistory.com/2025/12/13/the-rise-of-computer-games-part-i-adventure/)

本文追溯了电脑游戏的早期兴起，凸显其在个人电脑文化中的核心地位。最初，游戏在爱好者间自由分享，以杂志刊登的输入型程序形式传播，或由早期创业者售卖。第一波游戏以《星际迷航》和《汉谟拉比》等基于文本的回合制体验为主，这些游戏继承自分时系统。

1977年后，随着苹果II等图形化机器的出现，动作导向的街机仿制品大量涌现。然而，个人电脑很快催生了独特的游戏类型，提供了比游戏主机更深入、更沉浸的体验。

文章重点探讨了冒险游戏的起源——它始于威尔·克劳瑟1975年的文字游戏《冒险》（巨洞奇观）。离婚后，克劳瑟在PDP-10计算机上创作了这款游戏，他将自己在猛犸洞的洞穴探险经历与《龙与地下城》的奇幻元素结合，为女儿们打造了这款游戏。玩家通过文本指令探索、解谜、寻找宝藏，奠定了叙事驱动游戏的模板。这一开创性作品后来启发了《国王密使II》等图形化冒险游戏，展现了个人电脑在复杂探索性玩法上的独特潜力。

---

## 13. 为什么Twilio Segment从微服务回归单体架构

**原文标题**: Why Twilio Segment moved from microservices back to a monolith

**原文链接**: [https://www.twilio.com/en-us/blog/developers/best-practices/goodbye-microservices](https://www.twilio.com/en-us/blog/developers/best-practices/goodbye-microservices)

Twilio Segment最初采用微服务架构来隔离其众多数据目的地，防止单个服务的问题影响其他服务。然而，这导致了复杂性的急剧增加：管理超过140个独立服务和代码仓库带来了巨大的运维负担，拖慢了开发速度，并引发了依赖管理的难题。

为解决这一问题，该公司将其架构整合为单一单体服务和单一代码仓库（monorepo）。这一转变得益于新的队列系统（Centrifuge）和记录HTTP流量的工具（Traffic Recorder），它们使得整合后的测试套件快速而可靠。

成果显著：部署时间从管理数百个服务缩短至几分钟，开发人员生产力大幅提升，运维扩展也变得更加简单。主要的权衡是故障隔离性降低（一个错误可能导致所有目的地崩溃）以及内存缓存效率下降。总体而言，回归单体架构更符合产品需求和团队效率目标。

---

## 14. 火箭实验室——为日本宇宙航空研究开发机构执行“唤醒与升空”发射任务[视频]

**原文标题**: Rocket Lab – 'Raise and Shine' Launch for JAXA [video]

**原文链接**: [https://www.youtube.com/watch?v=cMP328yoUu4](https://www.youtube.com/watch?v=cMP328yoUu4)

**摘要：火箭实验室成功发射日本宇宙航空研究开发机构卫星**

火箭实验室已圆满完成“升起与闪耀”任务，为日本宇宙航空研究开发机构（JAXA）发射了一颗小型地球观测卫星。此次任务使用火箭实验室的“电子”号火箭，从该公司位于新西兰的发射场执行。

主要载荷是JAXA的“创新卫星技术示范-3号”（ISTSat-3），这是一颗旨在验证新技术的紧凑型卫星，其中包括一套用于监测海上船只的系统。此次发射标志着火箭实验室与日本航天机构持续合作，凸显了商业发射服务商在支持政府航天计划方面日益增长的作用。

“升起与闪耀”的任务名称延续了火箭实验室为发射任务起主题名的传统。此次成功部署进一步巩固了火箭实验室在专用小型卫星发射方面的业绩，为一系列国际客户提供了灵活且频繁的入轨服务。

---

## 15. 构建HTML工具的有用模式

**原文标题**: Useful patterns for building HTML tools

**原文链接**: [https://simonwillison.net/2025/Dec/10/html-tools/](https://simonwillison.net/2025/Dec/10/html-tools/)

本文概述了构建“HTML工具”的实用模式——这些单文件网页应用结合了HTML、JavaScript和CSS，提供特定而实用的功能。作者已创建超过150个此类工具，强调简洁性与可移植性。

核心模式包括：
*   **单文件、无构建流程：** 工具自成一体，无需React等框架，便于复制、粘贴和随处托管（如GitHub Pages）。
*   **快速原型设计：** 利用LLM的Artifacts（Claude）或Canvas（ChatGPT/Gemini）等功能快速生成可运行原型。
*   **客户端能力：** 运用浏览器API处理文件、操作剪贴板，使用`localStorage`存储密钥/状态，并通过URL参数实现可分享状态。
*   **外部资源：** 从CDN加载依赖项，并利用支持CORS的公共API（如GitHub、PyPI、Bluesky）获取数据，无需后端支持。
*   **高级浏览器内执行：** 使用Pyodide运行Python和WebAssembly进行复杂处理，并在客户端生成可下载文件（图像、ICS等）。

整体理念是创建小巧专注的工具，最大化利用浏览器原生功能，便于分享与二次创作，并能借助LLM快速构建。

---

## 16. Awesome-Jj：咒术相关

**原文标题**: Awesome-Jj: Jujutsu Things

**原文链接**: [https://github.com/Necior/awesome-jj](https://github.com/Necior/awesome-jj)

本文档是关于**Jujutsu（jj）**——一个兼容Git的版本控制系统——的资源精选列表。其主要目的是作为一个社区维护的中心，供学习和使用该工具之用。

列表分为以下几个关键类别：
*   **教程：** 官方及社区编写的入门指南和工作流程学习链接。
*   **文章：** 分享用户使用Jujutsu的经验和观点的文章与博客帖子。
*   **视频：** 包含会议播放列表（例如JJ Con 2025）以及具体的技术讲座。
*   **工具：** 一系列图形界面（gg）、终端界面（jjui, lazyjj）和IDE集成（适用于VS Code和JetBrains），以增强Jujutsu的使用体验。
*   **社区：** 指向IRC和Discord上的官方讨论频道，供用户获取支持和协作。

最后，文档欢迎社区贡献，鼓励用户提交问题或拉取请求以修正错误、提高可读性或添加新资源。

---

## 17. Dhtml Lemmings (2004)

**原文标题**: Dhtml Lemmings (2004)

**原文链接**: [https://www.elizium.nu/scripts/lemmings/index.php](https://www.elizium.nu/scripts/lemmings/index.php)

这个2004年的简短网页介绍了"Dhtml Lemmings"，即经典解谜游戏的在线版本。其核心信息是邀请用户"玩Lemmings！"，但主要内容却是一则技术通知，告知用户当前网页浏览器不支持运行游戏所需的框架。指示很明确：要访问游戏，用户必须升级浏览器软件。

本质上，文章的重点是：
1.  推广一款使用DHTML（动态HTML）构建的基于浏览器的Lemmings游戏。
2.  对于使用过时浏览器的访客，它充当了一个错误或兼容性页面。
3.  继续游戏的唯一要求是获取一个支持框架（当时常见的网页技术）的更新版浏览器。

总结来说，这只是一个功能性的准入门槛，没有提供关于游戏本身、其功能或玩法说明的更多细节。

---

## 18. 神秘生物

**原文标题**: Cryptids

**原文链接**: [https://wiki.bbchallenge.org/wiki/Cryptids](https://wiki.bbchallenge.org/wiki/Cryptids)

密码兽是一种图灵机，其从空白带启动的停机行为与未解决的数学问题相关联，因此极难分析。它们的重要性在于：如果对于给定的状态数和符号数存在密码兽，那么在不解决相应难题的情况下，就无法确定对应的忙碌海狸值。

文章列举了在BB(6)和BB(2,5)领域中发现的著名“最小”密码兽，例如大脚怪、九头蛇和反九头蛇。许多密码兽表现出类似考拉兹猜想的行为，被描述为“几乎必然”停机或不停机——即其行为被强烈怀疑但未经证明。

文章还详细介绍了通过编码重大数学猜想而构建的大型密码兽。例如，有些机器当且仅当策梅洛-弗兰克尔集合论不一致时（BB(432)）、黎曼猜想为假时（BB(744)）或哥德巴赫猜想为假时（BB(25)）才会停机。这些例子展示了图灵机如何直接体现数论和逻辑学中的开放性问题。

这一概念起源于蜂鸣忙碌海狸问题，凸显了简单计算模型与深奥数学问题之间深刻而往往出人意料的联系。

---

## 19. 自由软件奖获奖名单公布：安迪·温戈、阿尔克斯·萨、政府目录

**原文标题**: Free Software Awards Winners Announced: Andy Wingo, Alx Sa, Govdirectory

**原文链接**: [https://www.fsf.org/news/2024-free-software-awards-winners](https://www.fsf.org/news/2024-free-software-awards-winners)

自由软件基金会（FSF）公布了2024年度自由软件奖的获奖者。

**Andy Wingo** 凭借作为GNU操作系统扩展语言GNU Guile的共同维护者，荣获**自由软件进步奖**。他表示深感荣幸，并感谢了过去和未来的贡献者。

**Alx Sa** 因对GNU图像处理程序（GIMP）的贡献获得**杰出新自由软件贡献者奖**，他表达了回馈该项目的愿望并感谢了导师。

**Govdirectory** 因其基于自由软件和自由许可证运作、经事实核查的全球政府联系信息协作目录，获得**社会公益项目奖**。联合创始人Jan Ainali和Albin Larsson强调了透明度和信任的重要性。

FSF计划在即将举行的活动中庆祝获奖者。公告还介绍了FSF致力于推广软件自由的使命背景。

---

## 20. 从Azure函数到FreeBSD

**原文标题**: From Azure Functions to FreeBSD

**原文链接**: [https://jmmv.dev/2025/12/from-azure-functions-to-freebsd.html](https://jmmv.dev/2025/12/from-azure-functions-to-freebsd.html)

作者在经历了一次意外宕机及收到无服务器平台的弃用警告后，将网络服务从Azure Functions迁移至自托管的FreeBSD服务器。最初，他们使用免费层级的Azure Functions托管基于Rust的服务，但遇到了难以诊断的“503服务不可用”错误。加之其使用方案即将终止支持，促使他们迅速采取了迁移行动。

迁移过程包括将现有的HTTP服务器二进制文件适配为FreeBSD守护进程，使用`daemon(8)`工具进行权限降级、PID文件管理和日志处理。配置通过环境文件注入，并利用`newsyslog`设置了日志轮转。作者还将昂贵的Azure PostgreSQL托管实例迁移至同一服务器上的自托管PostgreSQL数据库。

为替代Azure的TLS终止和公网暴露功能，作者部署了Cloudflare隧道。这使得服务无需开放防火墙端口即可安全访问，Cloudflare充当了公网前端。整个迁移过程迅速完成，充分利用了现有高性能家庭服务器，并展现了FreeBSD在生产工作负载服务中的可靠性。

---

## 21. Go提案：秘密模式

**原文标题**: Go Proposal: Secret Mode

**原文链接**: [https://antonz.org/accepted/runtime-secret/](https://antonz.org/accepted/runtime-secret/)

Go 1.26 引入了一个实验性的 `runtime/secret` 包，用于帮助保护内存中的敏感数据。其主要功能 `secret.Do(func() { ... })` 会自动清除封装函数所使用的内存，以防止密钥泄露，例如加密会话密钥。

该包确保函数运行后，所有使用过的寄存器和栈内存会立即被清零。堆分配的内存一旦被垃圾回收器判定为不可达，也会立即被清除。这一机制通过确保临时密钥不会在内存中持久存在，为 TLS 等协议提供了前向安全性。

目前，`secret.Do` 存在一些限制：仅支持 linux/amd64 和 linux/arm64 平台，若在其内部启动 goroutine 会引发 panic，且无法保护全局变量。它主要面向密码学库开发者，而非通用应用程序代码。

在 Go 1.26 中使用此功能，必须通过 `GOEXPERIMENT=runtimesecret` 进行编译。该特性旨在为安全敏感代码中常需手动清零内存（易出错的操作）提供一种由运行时支持的可靠替代方案。

---

## 22. 1 html 搜索引擎

**原文标题**: 1 html search engine

**原文链接**: [https://k8o5.github.io/search](https://k8o5.github.io/search)

**摘要：**

本文阐述了HTML搜索引擎的基本概念。文中指出，“1 html搜索引擎”很可能是指一种简单、自包含的搜索工具，它仅使用单个HTML文件构建，可能通过嵌入的JavaScript和CSS进行功能增强。

其核心功能是客户端搜索。该引擎并非查询远程服务器或数据库，而是将预定义的数据集（如网站页面或条目列表）直接加载到HTML/JavaScript代码中。当用户输入查询时，JavaScript会即时在本地数据集中进行筛选，以查找并显示匹配结果。

文中强调的主要优势包括**速度快**（无网络延迟）、**隐私性好**（搜索过程完全在用户设备上进行）以及**部署简单**（仅需一个文件）。然而，文章也指出了其主要局限性：数据集是**静态的**，必须手动在HTML文件中更新；并且由于浏览器性能限制，它仅适用于**小型、有限的数据集合**。

本质上，这种引擎是一种轻量级、便携式的解决方案，适用于搜索固定内容（如个人网站索引或文档），但它无法替代能够抓取动态内容、由服务器驱动的大型搜索引擎。

---

## 23. 关于DuckDuckGo的一些令人惊讶之处

**原文标题**: Some surprising things about DuckDuckGo

**原文链接**: [https://gabrielweinberg.com/p/some-surprising-things-about-duckduckgo](https://gabrielweinberg.com/p/some-surprising-things-about-duckduckgo)

根据DuckDuckGo创始人加布里埃尔·温伯格的原文，以下是令人意外的要点简明总结：

文章澄清了关于DuckDuckGo的常见误解，强调它并非仅仅是必应的“前端”。虽然它确实使用必应的网页索引（同时结合自有爬虫和其他来源），但其核心价值在于独立的排名算法、来自数百个来源的即时答案，以及不追踪用户的强大隐私保护功能。

一个关键揭示是**DuckDuckGo已实现盈利**。与普遍假设相反，它已盈利超过十年，主要通过搜索结果页面的关键词广告实现。这些广告具有隐私保护性，仅基于搜索查询而非个人画像或追踪。

文章还详述了公司独特的完全远程架构：没有实体总部，团队规模相对较小（撰写本文时不足百人）。这种精简运营使其保持独立并避免外部融资——温伯格认为这对维持其隐私至上的使命至关重要，无需迫于投资者压力而妥协。

最后，文章强调DuckDuckGo的首要目标是提供更优质、更私密的搜索体验，在质量上与谷歌等巨头竞争，而非仅仅作为小众隐私工具。盈利能力和独立性被视作实现这一长期愿景的基石。

---

## 24. 陌生人曾为你做过最暖心的事是什么？

**原文标题**: What is the nicest thing a stranger has ever done for you?

**原文链接**: [https://louplummer.lol/nice-stranger/](https://louplummer.lol/nice-stranger/)

在这篇文章中，作者讲述了25年前一次严重的自行车事故中，一位陌生人为他做过的最暖心的一件事。当时他骑车时发生碰撞，伤势严重，肩膀脱臼并有多处擦伤。几乎就在同时，一位碰巧开车经过的急诊室医生停下施以援手。

这位医生冷静地提供了专业的急救，拨打了911，并亲自打电话给作者的妻子让她安心。他还提前联系医院，确保作者乘救护车抵达后能立即得到VIP级别的救治。作者因伤势需要接受手术，并对这位陌生人及时、专业且充满关怀的帮助深表感激，特别提到自己当时没有手机，完全处于无助状态。

作者将此事与他在长途徒步等经历中遇到的其他善举作了对比，但强调这位医生的帮助具有不可替代的关键性。他感慨这样的记忆能重燃对人性的信心，并提醒读者：世界上仍有许多善良的人。

---

## 25. 平板包装洗衣机转动更公平的未来

**原文标题**: Flat-pack washing machine spins a fairer future

**原文链接**: [https://www.positive.news/society/flat-pack-washing-machine-spins-a-fairer-future/](https://www.positive.news/society/flat-pack-washing-machine-spins-a-fairer-future/)

由前戴森工程师纳夫乔特·索内创立的“洗衣机计划”，正以其离网、扁平包装的Divya洗衣机，致力于解决全球手洗衣物的负担。这款手摇设备可为用户节省高达75%的时间和50%的用水量，旨在减轻贫困和偏远社区中主要由妇女和女童承担的家务劳动。

经过初期分发后，该项目根据用户直接反馈重新设计了洗衣机，使其更简单、更耐用，且可在当地维修。目前已有近500台机器运往13个国家，惠及约5万人。

展望未来，该组织计划到2030年惠及一百万人。其策略包括2026年在印度启动本地化生产，建立社区“中心”进行组装和培训，并与非政府组织和机构建立合作伙伴关系。该项目还寻求政策参与，将洗衣服务纳入更广泛的水资源、卫生设施和性别平等倡议中。

---

## 26. 一个巨型球体将帮助这名男子在冰山上生存一年。

**原文标题**: A Giant Ball Will Help This Man Survive a Year on an Iceberg

**原文链接**: [https://www.outsideonline.com/outdoor-adventure/exploration-survival/how-giant-ball-will-help-man-survive-year-iceberg/](https://www.outsideonline.com/outdoor-adventure/exploration-survival/how-giant-ball-will-help-man-survive-year-iceberg/)

意大利探险家亚历克斯·贝利尼计划在大西洋的一座融化中的冰山上生活一年。为应对冰山翻转或碎裂等极端危险，他定制了一个专用生存舱。

这个由生存舱公司建造的球形舱体采用航空级铝材制成，设计上几乎无法被压垮，可承受风暴或冰层挤压。舱内将配备食物、水源、风力发电机、太阳能板及通讯设备。贝利尼还定制了工作区、床铺和健身器材，以便在孤独任务中保持身心健康。

此次探险计划于冬季开始，旨在探索人类对不可控环境的适应能力。贝利尼将依靠生存舱保障安全，由于冰面危险且不稳定，他很少会离开舱体。

---

## 27. EasyPost（YC S13）正在招聘

**原文标题**: EasyPost (YC S13) Is Hiring

**原文链接**: [https://www.easypost.com/careers](https://www.easypost.com/careers)

EasyPost是一家获得Y Combinator投资的公司，目前正在招聘。该公司的核心使命是简化和现代化高性能物流运输。公司强调协作与创新的企业文化，各部门员工共同解决问题、质疑假设并探索新方案。团队被描述为富有责任心且注重成果。该招聘信息引导感兴趣的候选人查看所有当前职位空缺。

---

## 28. 使用Python进行脚本编写

**原文标题**: Using Python for Scripting

**原文链接**: [https://hypirion.com/musings/use-python-for-scripting](https://hypirion.com/musings/use-python-for-scripting)

本文认为，对于许多自动化任务，尤其是随着脚本复杂性增加或需要在不同操作系统上运行时，Python是比Shell脚本（如Bash）更优的选择。

作者通过一个使用`readlink`、`find`和`sed`等命令的Shell脚本说明了问题：这些命令在Linux（GNU）和macOS（BSD）上的行为不同，导致可移植性问题。Python通过提供标准化的跨平台环境解决了这一难题。

文章强调了Python用于脚本编写的四大优势：
1.  **普遍性**：Python 3已预装在大多数系统上。
2.  **熟悉度**：许多开发者都具备一定的Python使用经验。
3.  **强大的标准库**：它为文件操作、文本处理、HTTP请求等提供了内置且一致的工具，消除了对外部命令的依赖。
4.  **可读性**：Python代码通常比复杂的Shell语法更易读，方法名更清晰（例如`s.upper()`对比`${s^^}`），且减少了晦涩的“咒语式”写法。

结论是：虽然简单的Bash脚本仍适用，但对于难以维护、理解或需要在多平台上可靠运行的脚本，Python是更好的选择。

---

## 29. 研究人员寻求更好的认知疲劳测量方法

**原文标题**: Researchers seeking better measures of cognitive fatigue

**原文链接**: [https://www.nature.com/articles/d41586-025-03974-w](https://www.nature.com/articles/d41586-025-03974-w)

本文探讨了科学界为更好理解和测量认知疲劳所做的探索。认知疲劳是一种损害专注力与判断力的精神耗竭状态。文章指出，虽然传统上通过主观自我报告或表现下降来评估，但这些方法并不可靠。

研究者们正在探寻疲劳的生物学根源。一种主流理论认为，持续的认知控制会消耗能量，或导致外侧前额叶皮层等脑区代谢物（如谷氨酸）的毒性堆积。这种代谢压力被认为会改变大脑的成本效益计算，使人更倾向于选择低耗能、即时回报的任务。

由于长新冠以疲劳为主要症状，且该研究与慢性疲劳综合征（ME/CFS）和多发性硬化等疾病相关，相关研究的紧迫性日益增加。研究表明，脑力消耗可能增加冲动决策，甚至降低付出体力努力的意愿，这揭示了认知疲劳与身体疲劳之间的相互作用。

科学家希望，通过揭示涉及多巴胺、腺苷和谷氨酸等分子的作用机制，能够找到客观的生物标志物，并为数百万受衰弱性疲劳困扰的人群提供更有效的干预手段。

---

## 30. 摄影师打造了一台中画幅测距相机。

**原文标题**: Photographer built a medium-format rangefinder

**原文链接**: [https://petapixel.com/2025/12/06/this-photographer-built-an-awesome-medium-format-rangefinder-and-so-can-you/](https://petapixel.com/2025/12/06/this-photographer-built-an-awesome-medium-format-rangefinder-and-so-can-you/)

摄影师阿尔伯特·科内利森设计并制造了MRF2——一款开源、可3D打印的中画幅旁轴相机，旨在满足他使用高质量玛米亚新闻系统镜头且价格亲民的愿望。受DIY相机社群的启发，他将所有设计文件和说明免费发布在GitHub上。

MRF2将复古光学与现代技术相结合，具备激光雷达联动对焦、双OLED显示屏、测光表，并支持多种胶片格式（包括6x4.5、6x6、6x7、6x9及35毫米全景模式）。尽管科内利森销售完整组装版本，但他强调该项目的开源性质，鼓励他人自行制作。他承认电子元件可能是主要挑战，但已通过简化组装流程、提供详细制作视频及为制作者提供个人支持来降低难度。

---

## 31. 我们是否永远困于同样的桌面用户体验？[视频]

**原文标题**: Are we stuck with the same Desktop UX forever? [video]

**原文链接**: [https://www.youtube.com/watch?v=1fZTOjd_bOQ](https://www.youtube.com/watch?v=1fZTOjd_bOQ)

这不是关于桌面用户体验的文章或视频摘要。所提供的文本似乎是YouTube网页底部常见的标准法律和信息页脚。

它包含：
*   标准公司链接（条款、隐私、联系我们）。
*   Google LLC的版权信息（2025年）。
*   谷歌位于加州山景城的公司地址。
*   支持联系方式。
*   法律免责声明，指出YouTube不对视频中展示的产品负责。

这里没有文章内容、主要论点或关于桌面用户体验的讨论可供总结。如需摘要，请提供目标视频或文章的实际标题、文字记录或描述。

---

## 32. TigerBeetle 作为文件存储系统

**原文标题**: TigerBeetle as a File Storage

**原文链接**: [https://aivarsk.com/2025/12/07/tigerbeetle-blob-storage/](https://aivarsk.com/2025/12/07/tigerbeetle-blob-storage/)

本文探讨了TigerBeetle数据库一种富有创意却非传统的应用——将其作为容错文件存储系统。TigerBeetle本是专为金融交易设计的高性能复式记账数据库。作者通过将文件编码至其数据结构中实现了功能重构：文件名和元数据存储在`Account`记录中，而文件数据则被分割成28字节的数据块，分散存储在`Transfer`记录的`user_data`字段中。每笔转账代表将字节从系统账户转移至文件账户，借助TigerBeetle固有的可审计特性确保数据完整性。

该实现支持可恢复的上传过程，并保证数据的有序检索。对约100MB视频文件的性能测试显示，写入速度约为642kB/s，读取速度约2,228kB/s，SHA-256哈希验证确认数据无损坏。尽管文章以幽默口吻将其称为过度设计的解决方案，但仍展示了TigerBeetle的灵活性及其为任意二进制数据提供的强大持久性保障——即使这并非该工具的原始设计用途。

---

## 33. 华盛顿大学工作日项目投资额达2.66亿美元

**原文标题**: Workday project at Washington University hits $266M

**原文链接**: [https://www.theregister.com/2025/12/12/washington_university_workday_costs_revealed/](https://www.theregister.com/2025/12/12/washington_university_workday_costs_revealed/)

**摘要：**

圣路易斯华盛顿大学披露，其为期多年的Workday系统实施项目将耗资近2.66亿美元。这一消息是在学生抗议要求大学提高财务透明度后公布的。

成本细目包括：财务和人力资源系统8100万美元，学生应用系统（Sunrise）9890万美元，规划与数据集成5650万美元。每年的许可和支持费用还需额外增加数百万美元。该项目始于2018年，旨在用统一的Workday平台替换约80个过时的遗留学生系统。

在七年的推广期内，这笔费用相当于每名学生约负担1.6万美元。该校首席财务官为这笔支出辩护，称其为必要之举，并指出旧系统脆弱且源自上世纪90年代。

这一情况与华盛顿大学因其自身耗资3.4亿美元的Workday实施项目而受到的批评相似，该项目曾导致研究资助的处理延迟。尽管面临如此高调的挑战，Workday首席执行官声称该公司超过90%的系统推广是成功的。

本文强调了高等教育领域企业软件转型所涉及的重大财务和运营规模，以及由此可能引发的公众审视。

---

## 34. 想左右选举结果？看看网络水军要价几何

**原文标题**: Want to sway an election? Here’s how much fake online accounts cost

**原文链接**: [https://www.science.org/content/article/want-sway-election-here-s-how-much-fake-online-accounts-cost](https://www.science.org/content/article/want-sway-election-here-s-how-much-fake-online-accounts-cost)

**《想左右选举？来看看虚假网络账号的成本》摘要**

《科学进展》期刊发表的一项研究调查了用于政治影响活动的虚假网络账号（即“马甲账号”）市场。研究人员伪装成不同政治背景的潜在买家，向6个在线自由职业平台上的58个卖家询价。

主要发现如下：
*   **成本**：创建并管理单个虚假账号一个月的平均价格约为15至20美元。使用1000个此类账号进行为期一个月的协同活动，成本约为1.5万美元。
*   **服务内容**：卖家提供捆绑服务，包括创建带有真实个人资料和照片的账号、发布定制内容、与其他用户互动（点赞、评论、分享），甚至管理具有长期发帖历史的“深度”账号以规避检测。
*   **可及性与规模**：研究表明，购买网络影响力存在一个现成、全球化的商业生态系统。卖家遍布38个国家，许多提供多语言服务，覆盖X（Twitter）、Facebook和Instagram等主要平台。
*   **影响**：这项研究量化了对于政治行为者而言，复杂的虚假信息活动成本相对低廉且易于获取，这对全球选举公正性提出了重大关切。研究强调，影响力操作不仅限于国家支持的行为者，也作为一种商业服务向几乎任何付费客户提供。

作者总结道，理解这一市场对于社交媒体平台和政策制定者制定更有效的对策以应对协同的虚假行为至关重要。

---

## 35. 《生命游戏中的Lisp解释器实现（2021）》

**原文标题**: A Lisp Interpreter Implemented in Conway's Game of Life (2021)

**原文链接**: [https://woodrush.github.io/blog/posts/2022-01-12-lisp-in-life.html](https://woodrush.github.io/blog/posts/2022-01-12-lisp-in-life.html)

《生命中的Lisp》是一个在康威生命游戏（一种细胞自动机）中实现完整功能Lisp解释器的项目。这是已知首个在此环境中直接解释高级编程语言的实例。

该解释器基于“俄罗斯方块探索”项目计算机架构的修改版本构建。Lisp程序以ASCII文本形式输入，直接编码到生命游戏图案中，结果以二进制格式输出到模拟的指定位置。解释器支持Lisp核心特性，包括词法闭包和宏，使得实现类似面向对象的复杂系统成为可能。

为实现这一目标，Lisp解释器先用C语言编写，编译为自定义汇编语言（QFTASM），再以细胞自动机图案形式实现。最终的生命游戏图案通过名为VarLife的八态中间自动机生成，并借助OTCA元像素进行模拟。

该项目需要在所有层面进行深度优化——从C代码、编译器到CPU架构和模拟算法——以生成能在合理时间内运行的图案。从简单算术到质数生成器的示例程序展示了其功能，但在最终生命游戏图案中的运行时间极长，可能从数小时持续到数天。

---

## 36. 展示HN：我制作了一个电子表格，其中的公式也能反向更新

**原文标题**: Show HN: I made a spreadsheet where formulas also update backwards

**原文链接**: [https://victorpoughon.github.io/bidicalc/](https://victorpoughon.github.io/bidicalc/)

**摘要：**

Bidicalc 是一款实验性的开源电子表格，引入了双向公式更新功能。与传统电子表格中更改输入会自动更新公式输出不同，Bidicalc 还允许用户更改公式的*结果*，系统会自动求解并更新必要的输入变量以实现该新值。

该工具支持标准算术运算符和函数（如 `sqrt`、`log`、`cos`）。用户可以将单元格定义为变量（可由求解器编辑）、常量（以 `#` 为前缀）、文本或公式。其核心创新在于一个自定义的求根求解器，该求解器通过数学方式反向遍历单元格的依赖图来寻找解，但在处理欠定问题（例如 `a*b*c=1`，存在无限解）时可能遇到困难。

创建者 Victor Poughon 承认了当前的局限性，包括求解器可能产生意外解、缺乏变量定义域限制以及单线程计算。未来的改进可能会解决这些问题，并增强用户体验。该项目是一个用 TypeScript 构建的概念验证，以 AGPL 许可证发布，强调其面向数学爱好者的实验性质，而非用于关键应用。

---

## 37. 首款全光XPU处理系统

**原文标题**: First all-optical XPU processing system

**原文链接**: [https://www.akhetonics.com/](https://www.akhetonics.com/)

阿克顿尼克斯正在开发全球首款全光XPU，这是一种面向超低功耗高性能计算与人工智能的跨域通用处理器。该系统突破了传统冯·诺依曼架构的限制，将数据完全保持在光域中——从输入、处理到存储与输出全程无需光电转换。

处理器的核心是全光XPU，它负责协调各组件间的数据流动，包括易失性与非易失性光存储器，以及可动态重构的光学加速器（RFU），这些加速器支持数字、模拟或量子运算。在单一光子平台内集成光数字计算、光模拟计算与光量子计算这三种计算范式，是一项基础性创新。

实现该系统的关键技术突破是光子芯片上产生光学非线性的专利方法，这对通用计算至关重要。公司强调其相较于电子器件的三大优势：通过复用技术实现更高的潜在带宽、低损耗光传输带来更优的能效，以及太赫兹级时钟频率带来的显著速度提升。

基于安全考量，该处理器完全采用欧洲供应链制造，具备可扩展性与低发热特性，不仅适用于数据中心，也适合部署在网络边缘。

---

## 38. Show HN: 用C语言编写的微型虚拟机沙盒，支持Rust、C和Zig应用

**原文标题**: Show HN: Tiny VM sandbox in C with apps in Rust, C and Zig

**原文链接**: [https://github.com/ringtailsoftware/uvm32](https://github.com/ringtailsoftware/uvm32)

**《uvm32：C语言编写的微型虚拟机沙盒》概述**

uvm32是一个极简、无依赖的虚拟机沙盒，仅用单个C99文件编写。它专为资源受限环境（如微控制器）设计，在ARM Cortex-M0+上仅需不到4KB闪存和1KB RAM。

其主要目的是作为嵌入式脚本引擎（如Lua、MicroPython）的轻量级安全替代方案。它允许不受信任或不可靠的代码在隔离环境中运行而不导致主机系统崩溃，支持使用现代语言（Rust、Zig、C）进行开发（即使目标平台没有原生编译器），并实现“一次编写，随处运行”的可移植性。

关键特性包括非阻塞异步设计、安全且类型极简的FFI（外部函数接口），以及优先考虑安全性与鲁棒性而非极致速度。该虚拟机基于RISC-V模拟器，但旨在执行自定义的类脚本逻辑，而非硬件模拟。

代码库包含核心虚拟机（`uvm32.c`）、最小化主机示例，以及用C、Rust、Zig和汇编编写的多种示例应用。这些示例展示了控制台I/O、图形和内存分配等功能。项目提供了快速入门的Docker环境，便于轻松构建和测试系统。

简而言之，uvm32是一个小巧、安全、可移植的虚拟机沙盒，非常适合为嵌入式系统及其他受限环境添加安全隔离的脚本或插件功能。

---

## 39. Show HN：根据您的反馈，Critical CSS 生成器现已更新

**原文标题**: Show HN: Listened to your feedback, Critical CSS Generator

**原文链接**: [https://kigo.studio/tools/critical-css-generator](https://kigo.studio/tools/critical-css-generator)

本文介绍了**关键CSS生成器**，这是一种旨在通过提取页面首屏可见内容所需的最少CSS来提升网站性能的工具。

该工具通过无头浏览器分析网页，识别出初始视口所必需的关键CSS规则。生成的代码**应内联至HTML `<head>`中的`<style>`标签内**，使浏览器无需等待完整样式表加载即可立即渲染内容。

为完成优化，文章提供了两种加载剩余非关键CSS的方法：
1.  **简易方法：** 将原始样式表的`<link>`标签放置在`</body>`结束标签之前。
2.  **进阶方法（可选）：** 使用提供的JavaScript代码片段，在页面主要内容加载后异步加载非关键样式。

文章强调的核心优势包括**更快的页面渲染速度、提升核心Web指标得分**（如首次内容绘制）、**优化SEO排名**以及增强用户体验（尤其在移动设备上）。该工具还支持视口尺寸和渲染时间的自定义设置。

---

## 40. OpenAI正悄然引入新技能，现已可在ChatGPT和Codex CLI中使用。

**原文标题**: OpenAI are quietly adopting skills, now available in ChatGPT and Codex CLI

**原文链接**: [https://simonwillison.net/2025/Dec/12/openai-skills/](https://simonwillison.net/2025/Dec/12/openai-skills/)

OpenAI已在ChatGPT及其Codex CLI工具中采用了类似Anthropic的“技能”机制。每个技能是一个简单的文件夹，包含一个Markdown文件和可选资源，使大型语言模型能够访问并利用特定功能。

在ChatGPT中，技能可通过代码解释器的`/home/oai/skills`文件夹访问。目前包含处理电子表格、DOCX文件和PDF的技能——后者使用视觉模型将页面转换为PNG以保留排版格式。文章通过让ChatGPT创建一份关于芮木树和鸮鹦鹉繁殖的PDF摘要来演示此功能。

对于开源工具Codex CLI，已通过`--enable skills`标志添加了实验性技能支持。用户可将技能安装到`~/.codex/skills`目录中。作者成功使用自定义技能生成了可运行的Datasette插件。

作者认为OpenAI的快速采用证实了技能机制作为一种轻量级标准对增强大语言模型能力的重要性，建议应由Agentic AI基金会推动相关规范文档的正式制定。

---

## 41. 美丽的阿贝尔沙堆

**原文标题**: Beautiful Abelian Sandpiles

**原文链接**: [https://eavan.blog/posts/beautiful-sandpiles.html](https://eavan.blog/posts/beautiful-sandpiles.html)

本文介绍了阿贝尔沙堆模型，这是一种能产生复杂对称图案的数学模型。沙堆定义在网格上，每个单元格容纳沙粒。若某单元格积累四粒或更多沙粒，便会“崩塌”，向四个正交相邻单元格各分发一粒沙粒。此过程持续至所有单元格仅剩三粒或更少沙粒，形成稳定构型。从网格边缘崩塌的沙粒则永久消失。

“阿贝尔”特性指最终稳定构型与单元格崩塌顺序无关。这使得我们可以对沙堆进行运算，例如将两个沙堆逐单元格相加，再对结果进行崩塌操作。

文章阐释在该系统中，只有“循环”沙堆——即能重复出现的构型——构成阿贝尔群。空网格属于“瞬态”而被排除。因此该群具有唯一的单位元：一个非空循环沙堆，与任何其他循环沙堆相加后，仍保持原状。这些单位元沙堆呈现出引人注目的分形三角图案，尤其在大型网格上，展现了简单规则催生出的意外之美。

---

## 42. 新规禁止使用AI生成代码制作的Gnome Shell扩展

**原文标题**: New Rule Forbids Gnome Shell Extensions Made Using AI Generated Code

**原文链接**: [https://www.phoronix.com/news/GNOME-Extensions-Block-AI](https://www.phoronix.com/news/GNOME-Extensions-Block-AI)

GNOME项目宣布了一项新政策，禁止向官方扩展托管平台extensions.gnome.org（EGO）提交由AI生成的GNOME Shell扩展代码。

该规则明确禁止提交显示AI生成迹象的代码，例如包含大量不必要的代码、风格不一致、API使用错误，或含有类似大型语言模型（LLM）提示的注释。虽然开发者仍可使用AI作为学习辅助或代码补全工具，但他们必须能够理解并证明所提交代码的合理性。

这一决定是为了应对日益增多的低质量AI生成扩展提交。该政策旨在维护官方平台的代码质量、安全性和可靠性。开发者仍可使用AI创建供个人使用的扩展，但这些扩展将不被接受在EGO上公开分发。

文章还提到了非AI扩展生态系统的近期动态，包括Adaptive Brightness扩展的更新以及All-In-One Clipboard的新版本发布。

---

## 43. 西海岸爵士乐会得到应有的尊重吗？

**原文标题**: Will West Coast Jazz Get Some Respect?

**原文链接**: [https://www.honest-broker.com/p/will-west-coast-jazz-finally-get](https://www.honest-broker.com/p/will-west-coast-jazz-finally-get)

**《西海岸爵士乐能否赢得尊重？》摘要**

文章指出，西海岸爵士乐——这场20世纪50年代以加利福尼亚为中心的充满活力与创新的运动——在主流爵士乐评论与历史中，长期遭受不公正的边缘化。它常被简单地贴上“冷爵士”或“白人爵士”等肤浅标签，并被东海岸（或“东海岸风格”）硬波普的主导叙事所掩盖。

作者分析了其缺乏尊重的几个关键原因：

1.  **评论偏见：** 以**伦纳德·费瑟**和**艾拉·吉特勒**为代表的东海岸重量级评论家，公开偏爱阿特·布雷基、索尼·罗林斯等人更富攻击性、基于蓝调的硬波普。他们嘲笑西海岸之声缺乏情感、过于理智、“白人化”，尽管有**奇科·汉密尔顿、哈罗德·兰德、汉普顿·霍斯**等黑人音乐家的重要贡献。

2.  **地域与文化优越感：** 媒体和唱片业的纽约中心主义偏见，将西海岸乐坛描绘成一种不那么正宗、充满阳光气息的模仿品。该运动与电影工作室的关联、其较明亮的音色运用，以及对古典形式的实验（如**戴夫·布鲁贝克**和**吉米·朱弗雷**的作品），都成了被攻击的把柄。

3.  **误导性标签：** 由于迈尔斯·戴维斯的《冷爵士的诞生》录音（实际在纽约完成），西海岸爵士常被简单地贴上“冷爵士”标签，这未能体现该乐坛的多样性，其中也包括**格里·穆里根**和早期**切特·贝克**这样炽热的演奏者。

文章总结道，西海岸爵士乐是现代爵士乐一个独特、精致且艺术内涵丰富的分支，它成功地将比波普与新的音色、对位法和作曲抱负相融合。其遗产因数十年的偏见性评论而遭到不公正的贬低，文章呼吁对其在爵士乐史上的地位进行早该到来的重新评估与欣赏。

---

## 44. 交易所如何将订单簿转化为分布式日志

**原文标题**: How exchanges turn order books into distributed logs

**原文链接**: [https://quant.engineering/exchange-order-book-distributed-logs.html](https://quant.engineering/exchange-order-book-distributed-logs.html)

现代交易所通过将订单簿构建为分布式日志，将混乱的高频订单流转化为公平、确定性的市场。核心挑战在于为来自全球不同地点的订单建立一个单一且公认的序列，因为在分布式系统中时间戳并不可靠。

解决方案是引入一个中央**定序器**，这是一个单一逻辑组件，为每个市场事件（新订单、撤单、成交）分配一个单调递增的序列号，从而创建出全序关系。随后，**撮合引擎**确定性地应用这些事件来构建内存中的订单簿，这本质上是对不可变事件日志的实时投影。

这种基于日志的架构提供了关键优势：它强制执行**价格-时间优先**的公平性，确保恢复和测试所需的**确定性**，并为审计和分析提供单一事实来源。然而，它也在定序器处引入了性能瓶颈，需要极致的低延迟工程（内核旁路、缓存优化）来维持纳秒级速度。

为确保容错性，日志通过流水线和硬件组播等技术进行**复制**，避免在关键路径上增加延迟。副本强制执行严格的连续性（无间隔、无重复、无重排），而订单簿状态的定期**快照**使得日志重放变得可行。最终，这一模型将交易所视为一个超低延迟、事件溯源的系统，其中快速订单簿是缓存视图，而不可变日志则是最终事实。

---

## 45. Go语言具有可移植性，直到它不再具备

**原文标题**: Go is portable, until it isn't

**原文链接**: [https://simpleobservability.com/blog/go-portable-until-isnt](https://simpleobservability.com/blog/go-portable-until-isnt)

本文详细阐述了使用Go语言构建跨平台服务器监控代理时遇到的挑战，该项目最初承诺为所有Linux发行版提供单一的可移植二进制文件。

作者解释称，虽然Go的编译机制、垃圾回收和goroutine特性使其成为代理程序的理想选择，但支持systemd日志的需求引入了复杂性。使用现有的journald C语言API封装意味着二进制文件需动态链接`libsystemd`，这打破了完全静态二进制文件的目标。由此引发了两个关键构建问题：无法在非systemd系统（如macOS）上编译，且必须在配备目标架构库的机器上进行构建。

一个更隐蔽的问题出现在`CGO_ENABLED`设置上。当启用该选项（通常为默认状态）时，二进制文件还会动态链接`glibc`。这导致在Alpine Linux等使用`musl`替代glibc的发行版上运行时发生故障，迫使团队为glibc和非glibc系统分别创建构建版本。

结论是Go语言本身并非问题所在，其行为均符合文档描述。团队最初设想的“轻松”可移植性，在引入底层C语言依赖并面向多样化Linux环境后显得不切实际。他们通过实施更复杂的CI/CD流水线解决了这一问题——利用GitHub Actions为每种架构和库类型配置特定运行器，同时仍实现了交付小巧自包含二进制文件的核心目标。

---

## 46. Java FFM 零拷贝传输采用 io_uring 技术

**原文标题**: Java FFM zero-copy transport using io_uring

**原文链接**: [https://www.mvp.express/](https://www.mvp.express/)

MYRA技术栈是一套完全基于Java 24外部函数与内存（FFM）API构建的高性能、零垃圾回收Java库集合。其核心目标是通过消除关键路径上的中间副本与垃圾回收压力，实现原生速度且内存安全的应用程序。

该垂直集成技术栈包含：
*   **Roray-FFM-Utils：** 基础层，提供池化堆外内存与二进制I/O工具
*   **MyraCodec：** 基于模式驱动的零拷贝序列化框架，可通过YAML生成代码，解码速度据称比SBE快23%
*   **MyraTransport：** 采用`io_uring`与预注册缓冲区的网络层，实现真正零拷贝I/O，据报告比Netty快39%
*   **MVP.Express RPC（即将推出）：** 集成编解码器与传输层的旗舰RPC框架
*   **JIA-Cache（开发中）：** 堆外分布式缓存系统

该技术栈采用模块化设计，各组件可独立使用。其定位为高频交易、广告技术和游戏等极低延迟场景，提供可预测的微秒级性能。所有项目目前均处于1.0.0版本前的开发阶段，并基于Apache 2.0协议开源。

---

## 47. 将小米加湿器从云端解放出来

**原文标题**: Freeing a Xiaomi humidifier from the cloud

**原文链接**: [https://0l.de/blog/2025/11/xiaomi-humidifier/](https://0l.de/blog/2025/11/xiaomi-humidifier/)

本文详述了一个项目，旨在通过更换固件，使小米米家智能除菌加湿器（型号deerma.humidifier.jsq）摆脱对专有云服务的依赖。作者为了实现与开源平台Home Assistant的直接集成，选择重新刷写设备的ESP8266微控制器，而非添加外部硬件。

该过程包括拆解加湿器以访问其Wi-Fi模块，将导线焊接到其UART引脚（RX、TX、GPIO0、GND、VCC），并连接一个3.3V串行适配器。在刷写新固件之前，作者建议使用`esptool.py`备份原始小米固件。随后使用同一工具刷写新固件，将其替换为基于ESPHome构建的自定义版本，从而实现本地控制以及与Home Assistant的集成，无需依赖小米的云服务。

---

## 48. 一级方程式赛车交接与从手术到重症监护的交接（2008年）[pdf]

**原文标题**: Formula One Handovers and Handovers From Surgery to Intensive Care (2008) [pdf]

**原文链接**: [https://gwern.net/doc/technology/2008-sower.pdf](https://gwern.net/doc/technology/2008-sower.pdf)

本文介绍了伦敦大奥蒙德街儿童医院如何借鉴一级方程式赛车进站流程，采用结构化沟通协议，优化了从手术室到重症监护室的病人交接流程。

核心问题在于传统非正式交接易出错、遗漏和延误，危及患者安全。医院团队观察到法拉利一级方程式赛车进站团队通过高度标准化、纪律化和反复演练的流程，以惊人速度且零失误地完成复杂高风险交接。

从一级方程式应用到医院环境的关键经验包括：
*   **标准化：** 为所有交接制定统一规范流程。
*   **明确角色与领导：** 指定专人担任“棒棒糖角色”（类似进站指挥），负责协调流程而不参与临床操作。
*   **结构化沟通：** 使用预设清单确保关键信息（如患者姓名、手术内容、生命体征、用药）简洁无中断传递。
*   **专用空间与零干扰：** 设立专用交接区，最大限度减少电话及其他对话干扰。
*   **演练与培训：** 团队共同演练新流程以提升熟练度与效率。

实施后成效显著：交接时间缩短，信息传递更可靠，临床团队满意度提升。该案例证明，其他行业的高可靠性操作原则可成功应用于关键医疗流程，有效提升安全性与效率。

---

## 49. 30年的<Br>标签

**原文标题**: 30 Years of <Br> Tags

**原文链接**: [https://www.artmann.co/articles/30-years-of-br-tags](https://www.artmann.co/articles/30-years-of-br-tags)

本文是对三十年网页开发历程的个人回顾，从1990年代追溯至今。它始于"静态网页"时代，那时人们通过"查看源代码"学习，网站由基础HTML和表格搭建，动态内容的实现是一大难题。

随后叙述转向"LAMP架构与Web 2.0"时期，其标志是PHP/MySQL的普及、WordPress的崛起，以及Gmail和谷歌地图等AJAX应用带来的变革。这个时代实现了出版的民主化，但也饱受浏览器兼容性问题（后由jQuery解决）、安全漏洞和混乱开发流程的困扰。

最后，文章提及"框架之争"，强调Ruby on Rails如何引入结构化新范式，使开发者从零散脚本转向有组织、约定驱动的应用架构。作者始终强调：在持续不断的网络构建与分享精神驱动下，每个阶段都降低了门槛、拓展了可能性，并推动着这个领域走向专业化。

---

## 50. 厌倦智能电视？这些是你的最佳选择

**原文标题**: Sick of smart TVs? Here are your best options

**原文链接**: [https://arstechnica.com/gadgets/2025/12/the-ars-technica-guide-to-dumb-tvs/](https://arstechnica.com/gadgets/2025/12/the-ars-technica-guide-to-dumb-tvs/)

本文针对智能电视的隐私和操作复杂性，提出了替代观看方案。其核心建议是使用普通电视离线播放，并连接苹果电视盒子，以获得更简洁、私密且无侵扰广告的可靠界面。

鉴于真正的“非智能”电视稀少且画质欠佳，指南推荐了以下显示替代方案：
*   **非智能电视：** 如爱默生、西屋和Sceptre等品牌提供，但需在画质和尺寸上做出较大妥协。
*   **投影仪：** 优秀的非智能选择，但对房间环境有特定要求。
*   **电脑显示器：** 规格更透明、尺寸更小，但缺少电视调谐器且通常需外接音箱。
*   **数字标牌显示器：** 耐用但昂贵、噪音大，且未针对家庭使用优化。

对于内容输入设备，文章推荐：
*   **苹果电视盒子（最佳综合选择）：** 因其易用性、性能表现和更强的隐私控制成为首选。
*   **笔记本电脑：** 功能全面且操作熟悉，但4K/HDR流媒体对浏览器或应用有特定要求。
*   **手机：** 可通过转接器实现，但日常使用不便，且分辨率常受限。

关键的技术考量包括：确保所有设备支持HDCP 2.2协议以播放4K/HDR内容，并使用HDMI 2.0或更高版本接口实现4K 60Hz传输。

---

## 51. 动态乒乓大战

**原文标题**: Dynamic Pong Wars

**原文链接**: [https://markodenic.tech/dynamic-pong-wars/](https://markodenic.tech/dynamic-pong-wars/)

**《动态乒乓大战》概述**

《动态乒乓大战》是由开发者马尔科·德尼奇创作的一款基于浏览器的互动游戏。它是对经典街机游戏《乒乓》的现代多人化改编。

核心玩法是两名玩家分别控制球拍来回击球。其关键特色在于每次击球时**背景颜色会随之改变**，球的颜色也会同步变化，从而营造出充满活力、不断变幻的视觉体验。

游戏支持**单设备本地双人对战**，左方球拍使用“W”/“S”键控制，右方球拍使用方向键上下控制。它强调简洁性和即开即玩，无需安装即可在网页浏览器中直接运行。

一个突出特点是**“战争模式”**：当一方玩家获得7分后触发。该模式下球速大幅提升，为比赛尾声增添了突如其来的挑战性。

总体而言，《动态乒乓大战》是一个富有创意的网页项目，既致敬了经典游戏，又通过简单而引人入胜的视觉机制（色彩动态变化）和基于速度的竞技性终局模式提升了玩家体验。它既是一款娱乐游戏，也展现了现代网页开发技术的应用。

---

## 52. 用后见之明自动评分十年前的Hacker News讨论

**原文标题**: Auto-grading decade-old Hacker News discussions with hindsight

**原文链接**: [https://karpathy.bearblog.dev/auto-grade-hn/](https://karpathy.bearblog.dev/auto-grade-hn/)

在这篇文章中，安德烈·卡帕西描述了一个项目：他利用大型语言模型（GPT 5.1 Thinking）以事后视角自动分析并评价十年前的黑客新闻讨论。该项目灵感来源于一个关于预测未来的讨论串，涉及抓取2015年12月的黑客新闻首页内容。

针对每篇文章及其评论串，该模型被要求从六个方面进行回顾性分析，包括总结讨论内容、报告实际发生的情况，以及根据评论者的预见性为其评分。分析结果——包括最具洞察力用户的“名人堂”——已发布在一个网站上。

卡帕西强调了两点更广泛的启示：一是训练个人预测能力的价值，二是未来无处不在的人工智能将使所有过去的讨论都易于分析，从而促进更优质的在线行为。该项目运行了930次模型查询，耗时约一小时，花费约58美元，展示了廉价而强大的人工智能如何实现新颖的历史分析。

---

## 53. 确保国家人工智能政策框架

**原文标题**: Ensuring a National Policy Framework for Artificial Intelligence

**原文链接**: [https://www.whitehouse.gov/presidential-actions/2025/12/eliminating-state-law-obstruction-of-national-artificial-intelligence-policy/](https://www.whitehouse.gov/presidential-actions/2025/12/eliminating-state-law-obstruction-of-national-artificial-intelligence-policy/)

2025年12月11日，唐纳德·J·特朗普总统签署一项行政命令，确立了一项旨在确保美国在人工智能（AI）领域主导地位的国家政策。该命令指出，各州零散的人工智能法规会抑制创新，并以科罗拉多州“算法歧视”禁令等法律为例，称此类法规可能迫使人工智能生成虚假输出或造成合规负担。

为此，该命令指示司法部长组建人工智能诉讼特别工作组，对被视为与联邦政策相抵触的州级法律提出挑战。同时，命令要求商务部长识别“繁重”的州级人工智能法律，并允许对存在此类法律的州限制部分联邦宽带资金。此外，联邦通信委员会和联邦贸易委员会受命探索制定联邦标准，以优先于相冲突的州级法规。

最后，该命令呼吁推动联邦立法，建立一个统一且“负担最小化”的全国人工智能框架，该框架将优先于州级法律，但为儿童安全和州政府采购等领域保留了例外。其总体目标是消除监管障碍，将权力集中在联邦层面，以帮助美国企业在全球竞争中“赢得人工智能竞赛”。

---

## 54. macOS 26.2通过雷雳接口实现支持RDMA的高速AI集群

**原文标题**: macOS 26.2 enables fast AI clusters with RDMA over Thunderbolt

**原文链接**: [https://developer.apple.com/documentation/macos-release-notes/macos-26_2-release-notes#RDMA-over-Thunderbolt](https://developer.apple.com/documentation/macos-release-notes/macos-26_2-release-notes#RDMA-over-Thunderbolt)

**macOS 26.2 版本更新摘要**

macOS 26.2 版本（代号 Tahoe）为 AI 开发和高性能计算引入了一项重要的新功能：**通过 Thunderbolt 实现 RDMA（远程直接内存访问）的原生支持**。

此功能允许 Mac 电脑直接通过 Thunderbolt 线缆组建**低延迟、高带宽集群**，绕过操作系统的网络协议栈，从而显著加快机器间的数据传输速度。其主要应用和优势包括：

*   **AI/ML 工作负载：** 能够创建快速的本地集群，用于分布式模型训练和推理，使强大的多 Mac 设置对开发者和研究人员更具可行性。
*   **高性能计算：** 通过允许 Mac 直接共享内存资源，促进了大规模模拟、渲染农场和科学计算等任务。
*   **简化设置：** 使用普及的 Thunderbolt 端口和线缆，无需通常 RDMA 所需的专用、昂贵的以太网硬件（如 InfiniBand）。

文档表明，这是通过系统管理的一个新 **"Thunderbolt Fabric"** 实现的，该架构将物理集群视为一个单一的逻辑实体进行资源管理。此次更新为开发者构建和优化能够利用这种直接内存到内存通信的应用程序奠定了基础。

本质上，macOS 26.2 将 Thunderbolt 从一个外围设备连接标准转变为**高速集群互连技术**，使 Mac 平台能够更好地应对更严肃的分布式和并行计算任务。

---

## 55. 在12GB内存的PostgreSQL上，20分钟内为1亿向量建立索引

**原文标题**: Indexing 100M vectors in 20 minutes on PostgreSQL with 12GB RAM

**原文链接**: [https://blog.vectorchord.ai/how-we-made-100m-vector-indexing-in-20-minutes-possible-on-postgresql](https://blog.vectorchord.ai/how-we-made-100m-vector-indexing-in-20-minutes-possible-on-postgresql)

本文详细介绍了VectorChord如何为构建一个包含一亿向量的PostgreSQL索引实现100倍速度提升和7倍内存压缩。此前，pgvector需要约200GB内存和40小时；如今VectorChord在16 vCPU机器上仅用12GB内存、20分钟即可完成。

优化主要针对三个索引构建阶段：
1.  **初始化（聚类）：** 用分层K-means算法替代GPU加速的K-means，并应用Johnson-Lindenstrauss变换进行降维。这使得聚类时间从30分钟缩短至8分钟，内存占用从135GB锐减至23GB。
2.  **插入阶段：** 通过将单一竞争链表改为多链表，并关键性优化PostgreSQL的页面扩展机制，解决了性能瓶颈。插入时间从420分钟大幅缩减至9分钟。
3.  **压缩阶段：** 将最终数据转换为搜索优化布局的过程并行化，使该阶段耗时从8分钟降至1分钟。

这些改进使得大规模向量索引能够在更廉价、低内存的云实例上实现，无需专用硬件，显著降低了部署门槛。

---

## 56. “带镜头的烤面包机”：首款手持数码相机的背后故事

**原文标题**: A 'toaster with a lens': The story behind the first handheld digital camera

**原文链接**: [https://www.bbc.com/future/article/20251205-how-the-handheld-digital-camera-was-born](https://www.bbc.com/future/article/20251205-how-the-handheld-digital-camera-was-born)

1975年，柯达公司23岁的电气工程师史蒂夫·萨松发明了第一台手持数码相机。他使用仙童公司的CCD传感器、电影摄像机镜头和数字盒式磁带作为存储介质，制造出了一个重达8磅（3.6公斤）的笨重原型机。

第一张图像是一张同事的黑白肖像照，记录耗时23秒，并在电视屏幕上显示。尽管画质粗糙，但它证明了这一概念的可行性。

当萨松向柯达管理层展示该设备时，他遭遇了质疑。当时公司正沉浸于利润丰厚的胶片业务，高管们质疑谁会需要一台无需胶片的相机，他们更关注这项技术对其核心产品的威胁，而非其潜在价值。

萨松的发明标志着一个关键转折点，它展示了将彻底改变摄影技术的基础性突破，尽管柯达最初并未积极接纳这一创新。

---

## 57. 证明辅助工具的50年历程

**原文标题**: 50 years of proof assistants

**原文链接**: [https://lawrencecpaulson.github.io//2025/12/05/History_of_Proof_Assistants.html](https://lawrencecpaulson.github.io//2025/12/05/History_of_Proof_Assistants.html)

本文追溯了证明助手五十年的发展历程，始于1975年爱丁堡LCF系统奠定的基础。LCF确立了安全证明内核与目标导向证明策略等核心原则。1980年代，剑桥LCF与HOL系统相继问世，实现了早期硬件验证，但其数学基础仍较为有限。

关键转折出现在1990年代中期——约翰·哈里森在HOL中完成了实数分析的形式化，证明了这类工具能够处理严肃数学问题。1995至2005年标志着该领域的成熟期，其间Coq完成了四色定理的形式化证明，ARM6处理器验证也获成功。Isabelle与Coq等系统日趋完善，自动化能力与用户界面显著提升。

2005至2015这十年间，该领域取得了具有里程碑意义的工业级成果：完全验证的seL4微内核、经过验证的CompCert C编译器，以及自举实现的CakeML编译器。与此同时，形式化数学也取得突破，奇数阶定理证明与飞斑计划等项目相继攻克深奥难题。文章总结指出，五十年来，证明助手已从边缘学术工具发展为能够验证关键软件、形式化深奥数学的强大系统。

---

## 58. llamafile：用单一文件分发和运行大语言模型

**原文标题**: llamafile: Distribute and Run LLMs with a Single File

**原文链接**: [https://github.com/mozilla-ai/llamafile](https://github.com/mozilla-ai/llamafile)

**摘要**

llamafile 是 Mozilla Builders 的一个项目，旨在通过将大型语言模型（LLM）打包成单一、自包含的可执行文件，简化其分发和本地运行过程。它结合了 llama.cpp 推理引擎与 Cosmopolitan Libc，使得生成的 "llamafile" 能够在大多数计算机（macOS、Linux、Windows）上无需安装或复杂配置即可运行。

该项目的主要目标是让开源 LLM 对开发者和终端用户都更加易用。用户可以快速下载预制的 llamafile（如提供的 LLaVA 1.5 7B 示例），将其设为可执行文件并在本地运行，通常还会自动启动基于浏览器的交互界面。

该项目是开源的，llamafile 框架采用 Apache 2.0 许可证，对 llama.cpp 的修改则遵循 MIT 许可证。Mozilla.ai 近期已接手该项目，并正在为未来发展征求社区反馈。

---

