# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-03-17.md)

*最后自动更新时间: 2026-03-17 20:37:33*
## 1. 鼻涕虫的十年

**原文标题**: A Decade of Slug

**原文链接**: [https://terathon.com/blog/decade-slug.html](https://terathon.com/blog/decade-slug.html)

本文纪念Slug算法诞生十周年，这是一种基于GPU直接从贝塞尔曲线渲染字体的技术。该算法于2016年开发并在2017年发布，其函数库已在电子游戏、可视化及软件行业获得广泛授权。

作者详述了该渲染技术自诞生以来的演进历程。关键改进包括取消“频带分割优化”与超采样，以简化着色器代码并提升性能。最重要的新增功能是**动态扩张技术**——该技术能自动计算字形边界多边形的最佳扩展范围，确保在任何缩放比例或透视角度下实现完美的像素覆盖，从而免除了手动调试环节并节省了GPU资源。文中还提供了该过程的数学推导。

文章最后发布了一项重要声明：作者已于2026年3月17日将Slug算法的专利贡献至公共领域。这意味着任何人都可以自由实施该技术。为支持这一举措，参考用的顶点着色器与像素着色器（包含动态扩张代码）已在GitHub上以MIT许可证发布。

---

## 2. 微软“牢不可破”的Xbox One游戏机已被“Bliss”攻破。

**原文标题**: Microsoft's 'unhackable' Xbox One has been hacked by 'Bliss'

**原文链接**: [https://www.tomshardware.com/video-games/console-gaming/microsofts-unhackable-xbox-one-has-been-hacked-by-bliss-the-2013-console-finally-fell-to-voltage-glitching-allowing-the-loading-of-unsigned-code-at-every-level](https://www.tomshardware.com/video-games/console-gaming/microsofts-unhackable-xbox-one-has-been-hacked-by-bliss-the-2013-console-finally-fell-to-voltage-glitching-allowing-the-loading-of-unsigned-code-at-every-level)

**微软“牢不可破”的Xbox One被“Bliss”攻破**

一位名为“Bliss”的黑客成功入侵了2013年推出的初代Xbox One游戏机，而微软曾声称该机型“无法被破解”。这一突破在主机发布十年后实现，采用了一种名为“电压毛刺攻击”的硬件攻击方法。

该技术通过在主机启动序列的精确时刻操控主处理器的电源供应来实现。瞬间的电干扰导致CPU跳过一个关键的安全指令，从而使攻击者能够绕过系统的安全启动过程。这一绕过使得加载和执行未经签名的自定义代码成为可能，从而获得对主机操作系统各个权限级别的深度控制。

此次破解意义重大，因为它从根本上打破了硬件安全设计中的信任链。然而，这是一个复杂且依赖硬件的操作，需要物理改装和精确的时机把握，因此难以用于广泛的盗版活动。其主要应用领域在于安全研究、自制软件开发和主机保存，而非面向普通用户。

这一成果再次证明，没有系统是真正“牢不可破”的，并展示了即使在设备发布多年后，先进的硬件攻击最终也能绕过安全措施。该漏洞利用仅针对初代Xbox One机型，不影响Xbox One S、Xbox One X或Xbox Series X/S等新型号主机。

---

## 3. Kagi 小网

**原文标题**: Kagi Small Web

**原文链接**: [https://kagi.com/smallweb/](https://kagi.com/smallweb/)

根据Kagi网站文章，以下是简明摘要：

**Kagi小型网络**是Kagi创建的替代性精选搜索索引，旨在对抗其所谓的“大型网络”——即主导主流搜索引擎的商业化、SEO驱动且通常质量低劣的内容。该项目是对传统网页搜索结果同质化与实用性下降的回应。

其核心理念是索引并优先展示“小型网络”：即通常由个人或小团体出于热情而非营利目的创建的独立、个人化、高质量的网站。这包括个人博客、小众论坛、学术资源和独特的数字花园——这些内容在传统搜索结果中往往被埋没。

小型网络索引的主要特点包括：
*   **人工精选：** 网站基于Kagi员工和社区推荐添加，专注于真实、由人创作的内容。
*   **无视SEO优化：** 该索引有意忽略搜索引擎优化策略，旨在纯粹根据内容价值和相关性进行排名。
*   **注重隐私：** 与所有Kagi服务一样，它不跟踪用户或收集个人数据。
*   **集成访问：** 可直接在Kagi主要搜索结果中（通过“小型网络”筛选器）访问，也可通过专属搜索门户`smallweb.kagi.com`使用。

文章将小型网络定位为对互联网最初去中心化精神的回归，提供了一种能呈现独特视角和实质性信息的搜索体验——这些内容常被大型商业索引所遗漏。它被定位为一种补充工具，服务于那些在“大型网络”标准化结果之外寻求深度与真实性的用户。

---

## 4. Python 3.15的JIT现已重回正轨

**原文标题**: Python 3.15's JIT is now back on track

**原文链接**: [https://fidget-spinner.github.io/posts/jit-on-track.html](https://fidget-spinner.github.io/posts/jit-on-track.html)

本文宣布，Python 3.15的即时（JIT）编译器现已提前达成性能目标。在macOS AArch64平台上，其运行速度比解释器快11-12%；在x86_64 Linux平台上，则快5-6%。这与JIT在Python 3.13和3.14版本中性能时常逊色的初期表现形成了显著转折。

作者将这一成功归因于三个主要因素。首先，在主要赞助方撤资后，项目转向了**社区主导模式**。通过将复杂任务拆解为可管理的模块，团队成功吸引了新的贡献者。其次，**关键的技术决策**起到了决定性作用，特别是采用了全新的“双重派发”追踪记录系统，大幅扩展了JIT可优化的代码范围，同时着力削减引用计数操作。第三，成功依赖于一支**专注的核心团队**，他们在基础设施、优化和硬件适配实现方面具备深厚专长。

文章强调，虽然技术能力至关重要，但项目的复兴同样得益于有效的协作、指导传承，以及在战略决策中恰到好处的时机把握。

---

## 5. 我花了30年才解决这个视觉特效难题——绿屏问题 [视频]

**原文标题**: It Took Me 30 Years to Solve This VFX Problem – Green Screen Problem [video]

**原文链接**: [https://www.youtube.com/watch?v=3Ploi723hg4](https://www.youtube.com/watch?v=3Ploi723hg4)

由于所提供内容未包含实际文章或视频信息，无法生成摘要。

当前文本为标准的YouTube页面页脚，仅包含法律声明、版权信息及联系方式。其中未涉及视频标题、创作者、提及的具体VFX问题、解决方案或任何技术细节。

若要总结文章/视频内容，需获取描述“30年绿幕问题”及其解决方案的实质内容。

---

## 6. Node.js需要虚拟文件系统

**原文标题**: Node.js needs a virtual file system

**原文链接**: [https://blog.platformatic.dev/why-nodejs-needs-a-virtual-file-system](https://blog.platformatic.dev/why-nodejs-needs-a-virtual-file-system)

根据Platformatic的文章，其主要观点是Node.js需要一个标准化的虚拟文件系统（VFS）来解决当前模块和文件处理中的几个关键限制。

核心问题在于Node.js的`require()`和`fs`模块与物理文件系统紧密耦合。这给现代开发工作流程带来了问题，例如：
*   **模块模拟：** 测试通常需要复杂、缓慢且容易出错的技术来模拟文件或模块。
*   **内存操作：** 在内存中生成代码的工具（如打包工具或TypeScript编译器）必须将临时文件写入磁盘，影响性能。
*   **安全与隔离：** 应用程序可以自由读取系统上的任何文件，这对于运行不受信任的代码（例如在插件系统或无服务器函数中）是有问题的。

文章建议为Node.js提供一个原生的、标准化的VFS API。这将允许：
1.  **重写文件解析：** 开发者可以拦截文件读取（例如`require()`），从而轻松模拟测试或从网络或数据库提供文件。
2.  **受限的文件系统访问：** 应用程序可以获得文件系统的虚拟、限定范围的视图，增强插件和无服务器环境的安全性。
3.  **性能提升：** 工具可以在虚拟的、内存中的文件上操作，无需磁盘I/O。

其好处包括更简单的测试、改进的开发工具性能以及更强的安全模型。文章总结道，虽然存在一些变通方法，但内置在Node.js中的原生VFS解决方案将为生态系统提供一个健壮、标准化的基础。

---

## 7. 迈向未经审查的AI生成代码的自动化验证

**原文标题**: Toward automated verification of unreviewed AI-generated code

**原文链接**: [https://peterlavigne.com/writing/verifying-ai-generated-code](https://peterlavigne.com/writing/verifying-ai-generated-code)

本文探讨了从强制人工审查转向自动化验证的转变，以在生产环境中使用AI生成的代码。作者认为，开发者无需逐行阅读代码，而是可以建立一套机器可执行的约束条件来确保正确性。

核心建议包括对AI生成的代码进行四项关键约束验证：(1) 基于属性的测试，以确保代码在多种输入下满足需求；(2) 变异测试，以确认代码不会过于宽松；(3) 检查副作用；(4) 应用标准的类型检查和代码规范检查。作者通过一个简化的FizzBuzz问题进行了演示，指出虽然某些无效程序仍可能通过验证，但这类情况极少且不太可能偶然发生。

文章进一步提出，如果将AI生成的输出视为编译后的代码，那么关于可维护性和可读性的担忧可能不再那么重要。尽管当前设置的开销超过了人工审查的成本，但随着AI编码工具的改进，这一框架为建立可扩展的信任基线奠定了基础。该方法被视为形式化验证（过于费力）和完全依赖人工审查之间的实用中间路径。

---

## 8. 《秘密特工》：探索一个充满活力却又暴力四伏的巴西（2025）

**原文标题**: 'The Secret Agent': Exploring a Vibrant, yet Violent Brazil (2025)

**原文链接**: [https://theasc.com/articles/the-secret-agent-cinematography](https://theasc.com/articles/the-secret-agent-cinematography)

本文探讨了巴西2025年奥斯卡参选影片《秘密特工》的摄影艺术。这部政治惊悚片以1977年军事独裁时期为背景，摄影师叶夫根尼娅·亚历山德罗娃旨在通过鲜明饱和的色彩与黑暗叙事形成反差，视觉化呈现巴西的矛盾——其蓬勃的欢愉与暗涌的暴力。

影片使用阿莱Alexa 35摄影机搭配复古的潘那维申B系列变形镜头实地拍摄，亚历山德罗娃通过镜头像差与光晕追求动态的质感影像。她亲自掌机，常进行360度环拍。重点场景包括在加油站拍摄两周、充满紧张感的漫长开场戏，以及主角离开影院后加入狂欢节庆祝的关键段落。后者结合实景灯光、时代标识和抛撒面粉等效果，营造出既欢庆又不祥的层次氛围。

亚历山德罗娃的创作强调镜头内质感，并通过调色在受巴西历史摄影启发的红色主调中细化色彩层次，实现色调分离。

---

## 9. Java 26 已正式发布，为未来发展奠定坚实基础。

**原文标题**: Java 26 is here, and with it a solid foundation for the future

**原文链接**: [https://hanno.codes/2026/03/17/java-26-is-here/](https://hanno.codes/2026/03/17/java-26-is-here/)

Java 26聚焦于基础改进与性能提升，为未来如Valhalla项目等功能奠定基础。主要更新包括：

*   **性能：** JEP 516将提前编译对象缓存扩展至支持任意垃圾收集器（如ZGC），提升启动速度。JEP 522通过双卡表设计减少线程同步，提高G1垃圾收集器吞吐量。
*   **网络：** JEP 517为HTTP客户端API添加HTTP/3支持，实现更快速、可靠的连接，并支持自动回退至旧版协议。
*   **安全：** JEP 524（第二次预览）为标准API引入广泛使用的PEM格式加解密对象（密钥、证书）的编码与解码功能。
*   **弃用项：** JEP 500计划对某些内部方法强制执行`final`修饰符，JEP 504正式移除已弃用的Applet API。
*   **持续预览：** 多项功能仍处于预览/孵化阶段，包括结构化并发（JEP 525）、惰性常量（JEP 526）、向量API（JEP 529）及模式中的原始类型（JEP 530）。

总体而言，本次版本在实现针对性优化与现代化的同时，为即将到来的重大发展构建了基础。

---

## 10. OpenSUSE Kalpa

**原文标题**: OpenSUSE Kalpa

**原文链接**: [https://kalpadesktop.org/](https://kalpadesktop.org/)

**openSUSE Kalpa 概述**

Kalpa 是 openSUSE 项目推出的一个 Linux 桌面发行版。它是一个**原子化且支持事务性**的系统，这意味着它以完整、经过验证的镜像形式进行更新，并可在需要时回滚，从而提升了可靠性。

其核心组件源自另外两个 openSUSE 项目：
*   **基础系统：** 构建于 **MicroOS** 之上，它提供了不可变、支持事务性的基础。
*   **桌面环境：** 采用 **KDE Plasma** 桌面，源自滚动更新的 **Tumbleweed** 发行版。

对于用户而言，主要资源包括：
*   **安装：** 通过可下载的 ISO 镜像进行。
*   **文档：** 可在专门的文档页面上获取。
*   **支持与贡献：** 该项目通过 Matrix 聊天、Mastodon、openSUSE 论坛和 OpenBuildService 促进社区互动。也欢迎提交错误报告和功能请求。

文章最后致谢了促成 Kalpa 开发的关键项目：**Aeon**（一个类似的 openSUSE 原子化桌面）、**Codeberg**（用于代码托管）、**Zola**（网站生成器）以及 **Juice**（用于网站主题设计）。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 2 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 3 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 4 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 5 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 6 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 7 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 8 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 9 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 10 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 11 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 12 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 13 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 14 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 15 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 16 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 17 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 18 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 19 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 20 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 21 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 22 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 23 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 24 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 25 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 26 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 27 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 28 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 29 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 30 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 31 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 32 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 33 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 34 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 35 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 36 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 37 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 38 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 39 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 40 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 41 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 42 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 43 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 44 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 45 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 46 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 47 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 48 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 49 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 50 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 51 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 52 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 53 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 54 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 55 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 56 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 57 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 58 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 59 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 60 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 61 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 62 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 63 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 64 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 65 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 66 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 67 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 68 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 69 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 70 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 71 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 72 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 73 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 74 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 75 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 76 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 77 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 78 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 79 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 80 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 81 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 82 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 83 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 84 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 85 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 86 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 87 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 88 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 89 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 90 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 91 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 92 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 93 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 94 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 95 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 96 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 97 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 98 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 99 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 100 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 101 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 102 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 103 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 104 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 105 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 106 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 107 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 108 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 109 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 110 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 111 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 112 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 113 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 114 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 115 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 116 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 117 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 118 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 119 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 120 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 121 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 122 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 123 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 124 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 125 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 126 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 127 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 128 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 129 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 130 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 131 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 132 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 133 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 134 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 135 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 136 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 137 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 138 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 139 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 140 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 141 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 142 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 143 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 144 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 145 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 146 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 147 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 148 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 149 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 150 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 151 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 152 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 153 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 154 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 155 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 156 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 157 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 158 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 159 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 160 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 161 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 162 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 163 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 164 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 165 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 166 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 167 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 168 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 169 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 170 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 171 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 172 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 173 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 174 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 175 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 176 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 177 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 178 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 179 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 180 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 181 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 182 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 183 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 184 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 185 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 186 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 187 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 188 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 189 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 190 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 191 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 192 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 193 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 194 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 195 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 196 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 197 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 198 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 199 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 200 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 201 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 202 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 203 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 204 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 205 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 206 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 207 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 208 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 209 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 210 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 211 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 212 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 213 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 214 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 215 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 216 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 217 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 218 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 219 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 220 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 221 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 222 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 223 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 224 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 225 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 226 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 227 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 228 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 229 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 230 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 231 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 232 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 233 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 234 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 235 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 236 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 237 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 238 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 239 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 240 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 241 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 242 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 243 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 244 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 245 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 246 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 247 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 248 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 249 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 250 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 251 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 252 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 253 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 254 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 255 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 256 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 257 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 258 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 259 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 260 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 261 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 262 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 263 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 264 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 265 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 266 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 267 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 268 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 269 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 270 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 271 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 272 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 273 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 274 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 275 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 276 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 277 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 278 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 279 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 280 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 281 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 282 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 283 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 284 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 285 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 286 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 287 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 288 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 289 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 290 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 291 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 292 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 293 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 294 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 295 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 296 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 297 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 298 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 299 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 300 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 301 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 302 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 303 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 304 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 305 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 306 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 307 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 308 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 309 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 310 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 311 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 312 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 313 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 314 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 315 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 316 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 317 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 318 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 319 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 320 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 321 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 322 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 323 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 324 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 325 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 326 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 327 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 328 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 329 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 330 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 331 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 332 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 333 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 334 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 335 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 336 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 337 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 338 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 339 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 340 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 341 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 342 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 343 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 344 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 345 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 346 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 347 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 348 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 349 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 350 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 351 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 352 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 353 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 354 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 355 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 356 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 357 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 358 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 359 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 360 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
