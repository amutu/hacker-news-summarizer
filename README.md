# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2025-12-14.md)

<<<<<<< HEAD
*最后自动更新时间: 2025-12-14 03:36:49*
## 1. Linux Sandboxes and Fil-C
||||||| parent of 60bc0a6 (2025-12-14)
*最后自动更新时间: 2025-12-13 14:42:24*
## 1. How exchanges turn order books into distributed logs
=======
*最后自动更新时间: 2025-12-14 04:47:47*
## 1. Linux沙盒与Fil-C
>>>>>>> 60bc0a6 (2025-12-14)

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

<<<<<<< HEAD
## 2. An Implementation of J
||||||| parent of 60bc0a6 (2025-12-14)
## 2. Java FFM zero-copy transport using io_uring
=======
## 2. J语言的实现
>>>>>>> 60bc0a6 (2025-12-14)

**原文标题**: An Implementation of J

**原文链接**: [https://www.jsoftware.com/ioj/ioj.htm](https://www.jsoftware.com/ioj/ioj.htm)

本文档概述了J编程语言在C语言中的实现。由Roger K.W. Hui撰写，旨在为熟悉J和C语言的开发者提供技术指导。

核心内容围绕系统架构展开。首先阐述**解释器的工作流程**，详述词汇形成、解析和名称解析过程。接着深入**数据模型**，涵盖数组、类型以及名词的内存管理。重点篇幅用于解析**动词**，说明其结构、基于秩的执行方式及错误处理机制。同时也探讨了**副词与连词**的实现。

强调的关键技术方面包括数据的**内部表示形式**（原子、装箱、树形和线性结构）以及针对不同数据类型的**显示系统**。附录提供了实用资源，如原始"Incunabulum"原型、特殊优化代码、测试脚本和系统概要。

总体而言，本文是对J解释器的全面蓝图，阐释了该语言的核心概念——如数组、通过连缀实现的隐式编程以及秩多态性——如何在C编程语言中具体实现。

---

<<<<<<< HEAD
## 3. Closures as Win32 Window Procedures
||||||| parent of 60bc0a6 (2025-12-14)
## 3. macOS 26.2 enables fast AI clusters with RDMA over Thunderbolt
=======
## 3. 闭包作为Win32窗口过程
>>>>>>> 60bc0a6 (2025-12-14)

**原文标题**: Closures as Win32 Window Procedures

**原文链接**: [https://nullprogram.com/blog/2025/12/12/](https://nullprogram.com/blog/2025/12/12/)

本文介绍了一种在C语言中创建闭包的技术，通过使用JIT编译的蹦床函数为Win32窗口过程添加上下文指针，而该过程通常仅接受四个固定参数。作者解释道，虽然Win32的`WNDPROC`回调函数缺乏传递自定义数据的内置方式（需要依赖全局变量或`GWLP_USERDATA`等变通方案），但自定义蹦床函数可以注入第五个参数。

该解决方案涉及通过加载器分配可执行内存（`.exebuf`），以确保代码与数据的邻近性，从而支持相对寻址。函数`make_wndproc`会生成一小段汇编蹦床代码，用于建立栈帧、推送上下文指针并调用用户的扩展窗口过程（`Wndproc5`）。这使得程序状态可以直接访问，无需额外的样板代码。

尽管此示例比标准Win32实践更为复杂，但该技术被提出作为一种可复用的模式，适用于回调接口缺乏上下文指针的场景，例如功能受限的自定义分配器API。作者提供了可运行的代码，并指出该技术与控制流防护（Control Flow Guard）兼容。

---

<<<<<<< HEAD
## 4. Recovering Anthony Bourdain's (really) lost Li.st's
||||||| parent of 60bc0a6 (2025-12-14)
## 4. We built another object storage
=======
## 4. 寻回安东尼·波登（真正）遗失的Li.st清单
>>>>>>> 60bc0a6 (2025-12-14)

**原文标题**: Recovering Anthony Bourdain's (really) lost Li.st's

**原文链接**: [https://sandyuraz.com/blogs/bourdain/](https://sandyuraz.com/blogs/bourdain/)

本文详述了一项旨在恢复安东尼·波登在已关闭平台Li.st上所写清单的努力。作者利用公共网络存档库Common Crawl进行搜索，成功找回了波登大部分清单的HTML内容，这些内容此前曾被记录为已丢失。

恢复的清单涵盖了波登广泛的兴趣领域，包括他渴望品尝的食物、最喜爱的酒店、难以抗拒的消遣、间谍小说以及个人观察随笔。虽然文字内容得以复原，但伴随的图片已丢失，无法从存档中找回。

该项目成功找回了原始参考资料中提及的除一份清单（"与大卫·鲍伊相关"）外的所有内容。作者在呈现这些发现时，尽可能保留了波登原有的措辞和格式，并将代码与恢复的数据公开，以供他人探索并为类似的数字保存工作贡献力量。

---

<<<<<<< HEAD
## 5. I tried Gleam for Advent of Code
||||||| parent of 60bc0a6 (2025-12-14)
## 5. Photographer built a medium-format rangefinder, and so can you
=======
## 5. 将E-Ink平板用作Linux显示器
>>>>>>> 60bc0a6 (2025-12-14)

<<<<<<< HEAD
**原文标题**: I tried Gleam for Advent of Code
||||||| parent of 60bc0a6 (2025-12-14)
**原文标题**: Photographer built a medium-format rangefinder, and so can you
=======
**原文标题**: Using E-Ink tablet as monitor for Linux
>>>>>>> 60bc0a6 (2025-12-14)

<<<<<<< HEAD
**原文链接**: [https://blog.tymscar.com/posts/gleamaoc2025/](https://blog.tymscar.com/posts/gleamaoc2025/)
||||||| parent of 60bc0a6 (2025-12-14)
**原文链接**: [https://petapixel.com/2025/12/06/this-photographer-built-an-awesome-medium-format-rangefinder-and-so-can-you/](https://petapixel.com/2025/12/06/this-photographer-built-an-awesome-medium-format-rangefinder-and-so-can-you/)
=======
**原文链接**: [https://alavi.me/blog/e-ink-tablet-as-monitor-linux/](https://alavi.me/blog/e-ink-tablet-as-monitor-linux/)
>>>>>>> 60bc0a6 (2025-12-14)

本文详细介绍了如何将安卓电子墨水屏平板用作Linux电脑的副显示器，以缓解长时间读写带来的视觉疲劳。作者使用Onyx BOOX Air 2平板与Arch Linux系统下的i3wm窗口管理器，发现通过VNC进行屏幕镜像的体验优于Deskreen等基于浏览器的方案——后者存在文字显示质量差和延迟高的问题。

核心解决方案是在Linux电脑上配置TigerVNC服务器。关键步骤包括安装软件、使用`vncpasswd`设置安全密码以及配置服务器。作者建议直接使用`x0vncserver`命令共享主显示器，并通过指定自定义分辨率（如`1400x1050+0+0`）来匹配平板屏幕尺寸，实现无边框适配。

为提升便捷性，作者编写了自动调整桌面分辨率并启动VNC服务器的脚本，实现快速启用。在平板上则使用AVNC等VNC客户端进行连接。最终搭建的是一套适合文本工作的低延迟方案，主要限制仅在于电子墨水屏硬件本身的刷新率特性。作者建议在应用程序中使用浅色高对比度主题，以在电子墨水屏上获得最佳阅读体验。

---

<<<<<<< HEAD
## 6. Using E-Ink tablet as monitor for Linux
||||||| parent of 60bc0a6 (2025-12-14)
## 6. Sick of smart TVs? Here are your best options
=======
## 6. 我将24年的博客文章输入了一个马尔可夫模型。
>>>>>>> 60bc0a6 (2025-12-14)

<<<<<<< HEAD
**原文标题**: Using E-Ink tablet as monitor for Linux
||||||| parent of 60bc0a6 (2025-12-14)
**原文标题**: Sick of smart TVs? Here are your best options
=======
**原文标题**: I fed 24 years of my blog posts to a Markov model
>>>>>>> 60bc0a6 (2025-12-14)

<<<<<<< HEAD
**原文链接**: [https://alavi.me/blog/e-ink-tablet-as-monitor-linux/](https://alavi.me/blog/e-ink-tablet-as-monitor-linux/)
||||||| parent of 60bc0a6 (2025-12-14)
**原文链接**: [https://arstechnica.com/gadgets/2025/12/the-ars-technica-guide-to-dumb-tvs/](https://arstechnica.com/gadgets/2025/12/the-ars-technica-guide-to-dumb-tvs/)
=======
**原文链接**: [https://susam.net/fed-24-years-of-posts-to-markov-model.html](https://susam.net/fed-24-years-of-posts-to-markov-model.html)
>>>>>>> 60bc0a6 (2025-12-14)

在这篇文章中，作者描述了他如何将自己24年来的博客文章输入到一个名为Mark V. Shaney Junior的简单马尔可夫文本生成程序中。该程序受1980年代一个经典项目的启发，通过分析单词序列（默认为三元组）来构建模型，从而生成新的、通常无意义的文本。

当使用其博客中超过20万个单词（不包括评论）进行训练后，该模型产生了有趣且不连贯的输出，有时以幽默的方式将不同文章中的无关短语组合在一起。作者解释说，通过增加模型的“阶数”（用于预测下一个单词的单词数量），输出会变得更加连贯，但风险是可能直接复制原文的大段内容。

他将这种基于局部统计的简单马尔可夫模型与现代大型语言模型（LLMs）进行了对比，指出它无法捕捉长距离依赖或全局结构。尽管存在这些限制，他仍将其视为一个优秀且易于理解的“hello, world”式入门，用以介绍语言模型背后的概念，并赞赏其在探索性编程和娱乐方面的简洁性。

---

<<<<<<< HEAD
## 7. I fed 24 years of my blog posts to a Markov model
||||||| parent of 60bc0a6 (2025-12-14)
## 7. A 'toaster with a lens': The story behind the first handheld digital camera
=======
## 7. 我尝试用Gleam语言完成Advent of Code挑战
>>>>>>> 60bc0a6 (2025-12-14)

<<<<<<< HEAD
**原文标题**: I fed 24 years of my blog posts to a Markov model
||||||| parent of 60bc0a6 (2025-12-14)
**原文标题**: A 'toaster with a lens': The story behind the first handheld digital camera
=======
**原文标题**: I tried Gleam for Advent of Code
>>>>>>> 60bc0a6 (2025-12-14)

<<<<<<< HEAD
**原文链接**: [https://susam.net/fed-24-years-of-posts-to-markov-model.html](https://susam.net/fed-24-years-of-posts-to-markov-model.html)
||||||| parent of 60bc0a6 (2025-12-14)
**原文链接**: [https://www.bbc.com/future/article/20251205-how-the-handheld-digital-camera-was-born](https://www.bbc.com/future/article/20251205-how-the-handheld-digital-camera-was-born)
=======
**原文链接**: [https://blog.tymscar.com/posts/gleamaoc2025/](https://blog.tymscar.com/posts/gleamaoc2025/)
>>>>>>> 60bc0a6 (2025-12-14)

作者分享了使用Gleam编程语言完成2024年“代码降临节”（AoC）12日缩短版挑战的经历。他们认为Gleam非常适合AoC的解题风格，称赞其简洁的语法、实用的编译器，以及强调管道数据转换的函数式编程方法。突出优势包括`echo`调试工具、网格操作中`Option`类型的安全性，以及包含`list.transpose`和`list.combination_pairs`等实用函数的强大标准库。其中`fold_until`函数因能实现算法的优雅提前退出而备受青睐。

文中也提到了一些不足之处：文件I/O和正则表达式需依赖外部库，列表模式匹配功能有限，针对JavaScript目标时需要额外使用`bigi`库处理任意精度整数。作者的解决方案从优雅（用按位异或解决灯光谜题）到务实（调用`glpsol`求解器处理线性规划问题）不一而足。

总体而言，作者对Gleam在AoC中的表现非常满意，认为其函数式风格能产生清晰、可读性强的解决方案。这次经历激发了他们将Gleam用于实际项目的热情，比如构建网络服务器。

---

<<<<<<< HEAD
## 8. VPN location claims don't match real traffic exits
||||||| parent of 60bc0a6 (2025-12-14)
## 8. Apple has locked my Apple ID, and I have no recourse. A plea for help
=======
## 8. 精益定理证明器数学库
>>>>>>> 60bc0a6 (2025-12-14)

<<<<<<< HEAD
**原文标题**: VPN location claims don't match real traffic exits
||||||| parent of 60bc0a6 (2025-12-14)
**原文标题**: Apple has locked my Apple ID, and I have no recourse. A plea for help
=======
**原文标题**: Lean Theorem Prover Mathlib
>>>>>>> 60bc0a6 (2025-12-14)

<<<<<<< HEAD
**原文链接**: [https://ipinfo.io/blog/vpn-location-mismatch-report](https://ipinfo.io/blog/vpn-location-mismatch-report)
||||||| parent of 60bc0a6 (2025-12-14)
**原文链接**: [https://hey.paris/posts/appleid/](https://hey.paris/posts/appleid/)
=======
**原文链接**: [https://github.com/leanprover-community/mathlib4](https://github.com/leanprover-community/mathlib4)
>>>>>>> 60bc0a6 (2025-12-14)

**摘要**

Mathlib4 是一个由社区维护的 Lean 4 定理证明器库，包含了基础编程工具和大量形式化数学内容。本文为用户和贡献者提供了一份实用指南。

对于**用户**，本文提供了安装说明（包括通过云端工作空间）、学习资源和文档链接（包括自动生成的 API 文档和理论概述），并指出了活跃的 Zulip 聊天社区以供寻求支持。

对于**贡献者**，本文概述了开发流程：克隆代码库、下载缓存的构建文件（`lake exe cache get`）、构建库（`lake build`）以及运行测试。它强调了遵循项目的风格、命名和文档规范。文章还解释了如何在本地构建 HTML 文档以及如何更新依赖项。

最后，本文包含了一个从 Lean 3 迁移的章节，并列出了项目当前和过去的维护者，突出了他们的专业领域。

---

<<<<<<< HEAD
## 9. Cat Gap
||||||| parent of 60bc0a6 (2025-12-14)
## 9. GNU Unifont
=======
## 9. VPN位置声明与实际流量出口不符
>>>>>>> 60bc0a6 (2025-12-14)

<<<<<<< HEAD
**原文标题**: Cat Gap
||||||| parent of 60bc0a6 (2025-12-14)
**原文标题**: GNU Unifont
=======
**原文标题**: VPN location claims don't match real traffic exits
>>>>>>> 60bc0a6 (2025-12-14)

<<<<<<< HEAD
**原文链接**: [https://en.wikipedia.org/wiki/Cat_gap](https://en.wikipedia.org/wiki/Cat_gap)
||||||| parent of 60bc0a6 (2025-12-14)
**原文链接**: [https://unifoundry.com/unifont/index.html](https://unifoundry.com/unifont/index.html)
=======
**原文链接**: [https://ipinfo.io/blog/vpn-location-mismatch-report](https://ipinfo.io/blog/vpn-location-mismatch-report)
>>>>>>> 60bc0a6 (2025-12-14)

IPinfo对20款热门VPN服务进行的大规模分析发现，其中17家服务的流量实际路由国家与其宣传不符。许多VPN宣称在100多个国家设有服务器，但流量往往仅从美国或欧洲等地的少数实体数据中心流出。

研究识别出38个"纯虚拟"国家——即供应商宣称存在但从未被观测到实际流量流出的地区。仅有三款VPN（Mullvad、IVPN和Windscribe）完全不存在地理位置偏差。例如某些标注为"巴哈马"的服务器实际位于迈阿密，"索马里"服务器则位于法国或英国。

这种差异源于多数IP地理定位数据库依赖供应商自行申报的注册数据，而VPN服务商可能对此进行虚假标注。IPinfo基于实测的平台ProbeNet通过全球节点进行主动延迟测试，以识别真实的流量出口位置。

虽然虚拟服务器可能是出于成本或可靠性的技术折衷方案，但缺乏透明度会引发信任危机。这不仅误导依赖地理位置保障安全的记者或活动人士，还会影响欺诈检测和内容访问。文章建议用户将高国家数量宣传视为营销话术，并选择明确披露虚拟服务器位置的供应商。

---

<<<<<<< HEAD
## 10. The Rise of Computer Games, Part I: Adventure
||||||| parent of 60bc0a6 (2025-12-14)
## 10. Germany's train service is one of Europe's worst. How did it get so bad?
=======
## 10. 猫断层
>>>>>>> 60bc0a6 (2025-12-14)

<<<<<<< HEAD
**原文标题**: The Rise of Computer Games, Part I: Adventure
||||||| parent of 60bc0a6 (2025-12-14)
**原文标题**: Germany's train service is one of Europe's worst. How did it get so bad?
=======
**原文标题**: Cat Gap
>>>>>>> 60bc0a6 (2025-12-14)

<<<<<<< HEAD
**原文链接**: [https://technicshistory.com/2025/12/13/the-rise-of-computer-games-part-i-adventure/](https://technicshistory.com/2025/12/13/the-rise-of-computer-games-part-i-adventure/)
||||||| parent of 60bc0a6 (2025-12-14)
**原文链接**: [https://www.npr.org/2025/12/12/g-s1-100794/germany-train-rail-deutsche-bahn](https://www.npr.org/2025/12/12/g-s1-100794/germany-train-rail-deutsche-bahn)
=======
**原文链接**: [https://en.wikipedia.org/wiki/Cat_gap](https://en.wikipedia.org/wiki/Cat_gap)
>>>>>>> 60bc0a6 (2025-12-14)

“猫科断层”指的是北美化石记录中大约2500万至1850万年前的一段时期，在此期间几乎找不到猫科或类猫物种的化石。这一断层始于当时占主导地位的剑齿掠食者——并非真正猫科动物的猎猫科（又称“伪剑齿虎”）——的灭绝。

关于断层成因存在多种假说。主流理论认为，几乎完全依赖肉食的猎猫科动物因过度特化而容易灭绝。环境变化，特别是全球降温和森林被开阔草原取代，也可能使这些适应森林的猎捕者陷入劣势。其他推测因素包括大规模火山喷发和晚新生代冰期的开始。

在此断层期间，部分犬形类食肉动物演化出更接近猫科的高度肉食性特征，但未能完全填补空缺的生态位。直到约1850万年前，真正的猫科动物（源自假猫属）通过白令陆桥从欧亚大陆迁徙至北美，断层才告终结，这些猫科后来演化出所有现代猫科物种。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
<<<<<<< HEAD
| 2 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 3 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 4 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 5 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 6 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 7 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 8 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
||||||| parent of 60bc0a6 (2025-12-14)
| 1 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 2 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 3 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 4 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 5 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 6 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 7 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 8 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
=======
| 2 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 3 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 4 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 5 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 6 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 7 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 8 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
>>>>>>> 60bc0a6 (2025-12-14)
| 9 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 10 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 11 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 12 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 13 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
<<<<<<< HEAD
| 14 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 15 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
||||||| parent of 60bc0a6 (2025-12-14)
| 14 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 15 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 16 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 17 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
=======
| 14 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 15 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
>>>>>>> 60bc0a6 (2025-12-14)
| 16 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 17 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 18 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 19 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 20 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 21 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 22 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 23 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 24 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
<<<<<<< HEAD
| 25 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 26 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
||||||| parent of 60bc0a6 (2025-12-14)
| 25 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 26 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 27 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 28 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 29 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
=======
| 25 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 26 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
>>>>>>> 60bc0a6 (2025-12-14)
| 27 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 28 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 29 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 30 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 31 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 32 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
<<<<<<< HEAD
| 33 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
||||||| parent of 60bc0a6 (2025-12-14)
| 33 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 34 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
=======
| 33 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
>>>>>>> 60bc0a6 (2025-12-14)
| 34 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 35 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 36 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 37 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 38 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
<<<<<<< HEAD
| 39 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 40 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 41 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 42 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 43 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 44 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 45 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 46 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 47 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 48 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 49 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 50 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 51 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
||||||| parent of 60bc0a6 (2025-12-14)
| 38 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 39 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 40 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 41 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 42 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 43 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 44 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 45 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 46 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 47 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 48 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 49 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 50 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 51 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
=======
| 39 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 40 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 41 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 42 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 43 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 44 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 45 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 46 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 47 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 48 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 49 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 50 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 51 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
>>>>>>> 60bc0a6 (2025-12-14)
| 52 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
<<<<<<< HEAD
| 53 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 54 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 55 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 56 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 57 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
||||||| parent of 60bc0a6 (2025-12-14)
| 53 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 54 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 55 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 56 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 57 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 58 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
=======
| 53 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 54 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 55 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 56 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 57 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
>>>>>>> 60bc0a6 (2025-12-14)
| 58 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 59 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 60 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 61 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 62 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 63 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
<<<<<<< HEAD
| 64 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 65 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 66 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 67 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
||||||| parent of 60bc0a6 (2025-12-14)
| 62 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 63 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 64 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 65 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 66 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 67 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 68 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
=======
| 64 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 65 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 66 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 67 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
>>>>>>> 60bc0a6 (2025-12-14)
| 68 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 69 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 70 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 71 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 72 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 73 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
<<<<<<< HEAD
| 74 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 75 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 76 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 77 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 78 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 79 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 80 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 81 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 82 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 83 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 84 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
||||||| parent of 60bc0a6 (2025-12-14)
| 74 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 75 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 76 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 77 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 78 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 79 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 80 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 81 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 82 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 83 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 84 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 85 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
=======
| 74 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 75 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 76 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 77 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 78 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 79 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 80 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 81 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 82 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 83 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 84 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
>>>>>>> 60bc0a6 (2025-12-14)
| 85 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 86 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 87 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 88 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 89 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 90 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
<<<<<<< HEAD
| 91 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 92 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 93 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 94 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 95 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 96 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 97 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 98 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 99 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 100 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 101 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
||||||| parent of 60bc0a6 (2025-12-14)
| 89 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 90 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 91 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 92 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 93 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 94 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 95 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 96 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 97 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 98 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 99 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 100 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 101 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 102 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
=======
| 91 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 92 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 93 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 94 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 95 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 96 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 97 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 98 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 99 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 100 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 101 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
>>>>>>> 60bc0a6 (2025-12-14)
| 102 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 103 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 104 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 105 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 106 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 107 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
<<<<<<< HEAD
| 108 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 109 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 110 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 111 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 112 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 113 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 114 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 115 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 116 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 117 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 118 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 119 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 120 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
||||||| parent of 60bc0a6 (2025-12-14)
| 108 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 109 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 110 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 111 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 112 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 113 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 114 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 115 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 116 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 117 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 118 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 119 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 120 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 121 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
=======
| 108 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 109 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 110 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 111 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 112 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 113 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 114 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 115 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 116 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 117 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 118 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 119 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 120 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
>>>>>>> 60bc0a6 (2025-12-14)
| 121 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 122 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 123 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 124 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 125 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 126 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 127 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 128 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
<<<<<<< HEAD
| 129 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 130 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
||||||| parent of 60bc0a6 (2025-12-14)
| 127 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 128 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 129 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 130 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 131 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
=======
| 129 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 130 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
>>>>>>> 60bc0a6 (2025-12-14)
| 131 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 132 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 133 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 134 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 135 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 136 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 137 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 138 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 139 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
<<<<<<< HEAD
| 140 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 141 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
||||||| parent of 60bc0a6 (2025-12-14)
| 140 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 141 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 142 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
=======
| 140 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 141 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
>>>>>>> 60bc0a6 (2025-12-14)
| 142 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 143 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 144 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 145 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 146 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 147 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
<<<<<<< HEAD
| 148 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 149 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 150 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
||||||| parent of 60bc0a6 (2025-12-14)
| 148 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 149 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 150 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
=======
| 148 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 149 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 150 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
>>>>>>> 60bc0a6 (2025-12-14)
| 151 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
<<<<<<< HEAD
| 152 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 153 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 154 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 155 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 156 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
||||||| parent of 60bc0a6 (2025-12-14)
| 152 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 153 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 154 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 155 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 156 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 157 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
=======
| 152 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 153 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 154 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 155 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 156 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
>>>>>>> 60bc0a6 (2025-12-14)
| 157 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 158 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 159 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 160 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 161 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 162 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
<<<<<<< HEAD
| 163 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 164 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 165 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 166 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 167 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 168 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 169 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 170 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
||||||| parent of 60bc0a6 (2025-12-14)
| 161 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 162 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 163 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 164 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 165 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 166 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 167 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 168 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 169 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 170 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 171 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
=======
| 163 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 164 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 165 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 166 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 167 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 168 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 169 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 170 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
>>>>>>> 60bc0a6 (2025-12-14)
| 171 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 172 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
<<<<<<< HEAD
| 173 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 174 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 175 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 176 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 177 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 178 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 179 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 180 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 181 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 182 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 183 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 184 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 185 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 186 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 187 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 188 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 189 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 190 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
||||||| parent of 60bc0a6 (2025-12-14)
| 173 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 174 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 175 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 176 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 177 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 178 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 179 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 180 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 181 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 182 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 183 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 184 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 185 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 186 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 187 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 188 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 189 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 190 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
=======
| 173 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 174 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 175 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 176 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 177 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 178 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 179 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 180 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 181 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 182 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 183 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 184 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 185 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 186 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 187 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 188 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 189 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 190 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
>>>>>>> 60bc0a6 (2025-12-14)
| 191 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 192 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 193 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 194 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 195 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 196 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 197 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 198 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 199 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
<<<<<<< HEAD
| 200 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 201 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
||||||| parent of 60bc0a6 (2025-12-14)
| 192 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 193 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 194 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 195 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 196 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 197 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 198 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 199 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 200 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 201 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
=======
| 200 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 201 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
>>>>>>> 60bc0a6 (2025-12-14)
| 202 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
<<<<<<< HEAD
| 203 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 204 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 205 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 206 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 207 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 208 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 209 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 210 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 211 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 212 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 213 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 214 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 215 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
||||||| parent of 60bc0a6 (2025-12-14)
| 203 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 204 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 205 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 206 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 207 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 208 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 209 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 210 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 211 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 212 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 213 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 214 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 215 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
=======
| 203 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 204 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 205 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 206 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 207 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 208 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 209 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 210 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 211 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 212 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 213 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 214 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 215 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
>>>>>>> 60bc0a6 (2025-12-14)
| 216 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
<<<<<<< HEAD
| 217 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 218 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 219 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 220 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 221 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 222 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 223 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 224 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 225 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 226 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 227 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 228 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
||||||| parent of 60bc0a6 (2025-12-14)
| 217 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 218 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 219 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 220 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 221 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 222 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 223 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 224 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 225 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 226 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 227 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 228 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 229 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 230 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 231 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
=======
| 217 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 218 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 219 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 220 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 221 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 222 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 223 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 224 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 225 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 226 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 227 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 228 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
>>>>>>> 60bc0a6 (2025-12-14)
| 229 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 230 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 231 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 232 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 233 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 234 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 235 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 236 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 237 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 238 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
<<<<<<< HEAD
| 239 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 240 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
||||||| parent of 60bc0a6 (2025-12-14)
| 236 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 237 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 238 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 239 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 240 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
=======
| 239 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 240 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
>>>>>>> 60bc0a6 (2025-12-14)
| 241 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 242 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 243 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 244 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 245 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 246 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
<<<<<<< HEAD
| 247 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 248 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 249 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 250 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 251 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 252 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 253 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 254 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 255 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 256 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 257 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 258 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 259 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 260 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 261 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 262 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 263 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 264 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 265 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
| 266 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 267 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 268 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
||||||| parent of 60bc0a6 (2025-12-14)
| 242 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 243 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 244 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 245 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 246 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 247 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 248 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 249 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 250 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 251 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 252 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 253 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 254 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 255 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 256 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 257 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 258 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 259 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 260 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 261 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 262 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 263 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 264 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 265 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 266 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 267 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
=======
| 247 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 248 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 249 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 250 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 251 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 252 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 253 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 254 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 255 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 256 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 257 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 258 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 259 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 260 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 261 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 262 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 263 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 264 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 265 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 266 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 267 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 268 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
>>>>>>> 60bc0a6 (2025-12-14)
