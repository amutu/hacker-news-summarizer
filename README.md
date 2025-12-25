# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2025-12-25.md)

*最后自动更新时间: 2025-12-25 20:21:53*
## 1. Python 3.15的Windows x86-64版本解释器有望提速15%

**原文标题**: Python 3.15’s interpreter for Windows x86-64 should hopefully be 15% faster

**原文链接**: [https://fidget-spinner.github.io/posts/no-longer-sorry.html](https://fidget-spinner.github.io/posts/no-longer-sorry.html)

本文宣布，由于采用了新的“尾调用”解释器设计，Python 3.15的Windows x86-64解释器预计将提速约15%。这项技术将每个字节码处理器实现为独立的函数，并通过尾调用方式执行下一个处理器，此前已在macOS上通过Clang启用，现在也可在Windows上通过Visual Studio 2026的实验性`[[msvc::musttail]]`属性实现。

作者解释道，传统解释器设计（如switch-case和计算跳转）存在性能限制，而尾调用方法有助于重置编译器启发式策略。主要提速源于编译器能够在解释器循环中内联小型关键函数——这在旧设计的大型单体函数中往往被规避，从而生成更高效的机器码。

早期基准测试显示，Windows版pyperformance的几何平均提速达15-16%，部分微基准测试提升高达48%。这一改进归功于与MSVC团队的合作，并已记录在Python的发布说明中。但该功能目前仍处于实验阶段，需使用Visual Studio 2026从源代码编译Python才能测试。

---

## 2. 《纽约客》全部档案现已数字化。

**原文标题**: The entire New Yorker archive is now digitized

**原文链接**: [https://www.newyorker.com/news/press-room/the-entire-new-yorker-archive-is-now-fully-digitized](https://www.newyorker.com/news/press-room/the-entire-new-yorker-archive-is-now-fully-digitized)

《纽约客》已将其全部档案数字化，将四千多期逾十万篇文章搬上网络。这一全新资源汇集了海量内容，包括三万一千余篇《城中话题》专栏、两万四千篇《深度报道》特稿，以及近百年历史中刊载的数千部小说、诗歌与随笔。

该档案库配备增强检索功能，读者可轻松查找特定主题、作者或文章。人工智能技术还为原本无摘要的文章生成概要，便于浏览。虽然数字收藏缺失纸质版的实体质感，却提供了集中化、可便携的杂志遗产探索方式。

此项举措是《纽约客》百年庆典的一部分。订阅用户可完整访问档案库，杂志亦将继续通过新闻通讯和网站持续推介经典作品。

---

## 3. 我在网上卖洋葱（2019）

**原文标题**: I sell onions on the Internet (2019)

**原文链接**: [https://www.deepsouthventures.com/i-sell-onions-on-the-internet/](https://www.deepsouthventures.com/i-sell-onions-on-the-internet/)

2014年，网页开发工程师兼域名爱好者彼得·阿斯克意外拍下了VidaliaOnions.com。尽管没有具体计划，他仍感到必须开发这个网站。受高端水果配送服务启发，他设想建立一个从农场直送门口的维达利亚洋葱业务，尽管他毫无农业或物流经验。

2015年，他与获奖维达利亚洋葱种植者阿里斯·海古德合作，由对方提供洋葱和包装。阿斯克负责营销、客户服务和网站开发。他们的首个销售季远超预期，订单量从预估的50单增长到600多单。通过对客户需求的专注和营销实验，业务稳步增长，甚至在竞争对手退出邮购市场时依然坚挺。

阿斯克强调，这项业务的驱动力是使命而非利润，客户的热烈反响也印证了这一点。他承认曾犯过错误，比如在包装箱上付出过昂贵代价，但始终坚持。如今进入第五个销售季，这个项目依然是连接人们与这款深受喜爱的地域产品的美好事业。

---

## 4. CUDA Tile 开源发布

**原文标题**: CUDA Tile Open Sourced

**原文链接**: [https://github.com/NVIDIA/cuda-tile](https://github.com/NVIDIA/cuda-tile)

CUDA Tile IR 是一个基于MLIR的开源编译器基础设施，专为优化CUDA内核而设计，重点关注基于分块的计算和NVIDIA张量核心。它提供了一种用于表达分块操作的专用方言，并包含Python绑定、字节码格式和一致性测试套件。该项目与CUDA Toolkit 13.1兼容，提供全面的构建选项，支持通过预构建库或源代码集成到现有项目中。

其关键特性是能够通过CUDA驱动API即时编译Tile IR程序，或提前编译为cubin文件。文档中包含一个实用示例，演示如何编写简单内核、编译并通过C++主机程序启动。该项目在Apache License v2.0 with LLVM Exceptions下开源，但NVIDIA指出目前暂不接受外部贡献，鼓励通过GitHub Issues提交反馈。

---

## 5. 将Git分支归档为标签

**原文标题**: Archiving Git Branches as Tags

**原文链接**: [https://etc.octavore.com/2025/12/archiving-git-branches-as-tags/](https://etc.octavore.com/2025/12/archiving-git-branches-as-tags/)

本文介绍了如何通过创建Git别名将旧分支转换为标签以实现“归档”，从而帮助清理工具中的分支列表。该别名`archive-branch`定义在`.gitconfig`文件中，执行三个操作：切换到`main`分支、创建一个以`archive/`为前缀指向分支最后一次提交的标签，然后删除该分支。

关键特性在于该别名支持分支名的标签补全，模拟了`git switch`的行为。这是通过将别名包装在shell函数中并添加特殊注释行（`: git switch`）实现的，该注释指示Git官方补全脚本使用相同的补全逻辑。

作者指出，这种“神奇操作”需要依赖Git官方补全脚本。对于使用Xcode自带Git的macOS用户，文中提供了在Zsh中配置的具体步骤，包括创建符号链接并在`.zshrc`文件中添加配置行，以确保正确加载Bash补全脚本。该创意最初源自一篇Reddit讨论帖。

---

## 6. 阿尔茨海默病在动物模型中可逆转：研究显示

**原文标题**: Alzheimer’s disease can be reversed in animal models: Study

**原文链接**: [https://case.edu/news/new-study-shows-alzheimers-disease-can-be-reversed-achieve-full-neurological-recovery-not-just-prevented-or-slowed-animal-models](https://case.edu/news/new-study-shows-alzheimers-disease-can-be-reversed-achieve-full-neurological-recovery-not-just-prevented-or-slowed-animal-models)

凯斯西储大学、大学医院和克利夫兰退伍军人医疗中心的一项新研究挑战了长期以来认为阿尔茨海默病不可逆转的观点。这项发表在《细胞报告医学》上的研究表明，恢复大脑的能量平衡可以逆转晚期阿尔茨海默病的病理变化，并在动物模型中恢复认知功能。

该研究聚焦于一种名为NAD+的关键细胞能量分子，这种分子会随着年龄增长而减少，并在阿尔茨海默病患者和疾病小鼠模型的大脑中严重耗竭。研究人员利用实验室开发的药物P7C3-A20，在不同基因突变（影响淀粉样蛋白和tau蛋白）导致的晚期阿尔茨海默病症状小鼠中恢复了正常的NAD+平衡。

值得注意的是，这种延迟治疗不仅阻止了疾病进展，还逆转了包括神经炎症和突触损伤在内的主要病理特征。小鼠实现了完全的认知恢复，其血液中关键的阿尔茨海默病生物标志物（磷酸化tau 217）也恢复正常。

资深作者安德鲁·A·皮珀强调，这代表了一种范式转变，表明受损的大脑在适当条件下能够自我修复。该方法与市售的NAD+前体不同，它能维持安全、平衡的水平，而非冒险导致危险升高。

这些发现为阿尔茨海默病治疗提供了新方向，侧重于恢复功能而不仅仅是延缓衰退。该技术正在商业化，研究人员主张精心设计人体临床试验，以验证这种疗效是否能应用于患者。

---

## 7. MacBook Air M2 上的 Asahi Linux 与 Sway

**原文标题**: Asahi Linux with Sway on the MacBook Air M2

**原文链接**: [https://daniel.lawrence.lu/blog/2024-12-01-asahi-linux-with-sway-on-the-macbook-air-m2/](https://daniel.lawrence.lu/blog/2024-12-01-asahi-linux-with-sway-on-the-macbook-air-m2/)

本文详细介绍了作者在MacBook Air M2上安装并定制搭载Sway窗口管理器的Asahi Linux的体验。安装过程通过官方单行命令虽耗时较长但操作直接。作者选择了极简的Fedora配置以节省存储空间。

关键定制涉及回收屏幕刘海周围的空间。作者启用了刘海后方的显示区域，并将Sway状态栏置于顶部，高度与刘海齐平（56像素），形成无缝视觉效果。状态栏配置更新后支持MacBook的电池状态显示。随后，作者从Sway原生状态栏切换至Waybar，以获得更图形化的界面。

作者称赞Asahi Linux性能出色，指出其流畅度超越高端AMD台式机，触控板体验堪比macOS。文中强调了M2芯片极快的编译速度和约4.5小时高强度使用的续航能力。该系统可成功运行线扫描摄影专用软件。

提及的不足包括睡眠模式耗电较高（导致频繁关机）、缺乏硬件加速视频解码功能，以及部分USB/外接显示器的兼容性问题。尽管存在这些缺陷，作者仍认为该系统足以胜任日常使用。

---

## 8. 凤凰：一款用Zig语言从零开始编写的现代化X服务器

**原文标题**: Phoenix: A modern X server written from scratch in Zig

**原文链接**: [https://git.dec05eba.com/phoenix/about/](https://git.dec05eba.com/phoenix/about/)

**Phoenix**是一款用Zig语言从头编写的新型X服务器，旨在成为Xorg服务器的现代化、安全替代方案。目前仍在开发中，仅支持在现有X或Wayland会话中以嵌套模式运行应用程序。

其主要目标是实现**简洁性**（仅支持现代X11协议子集）、**安全性**（通过自动协议解析、Zig的内存安全机制及默认客户端隔离）以及**现代硬件支持**（包括支持VRR、HDR的多显示器配置及内置合成器）。Phoenix致力于以更低延迟和无画面撕裂的默认表现改进图形处理。

明确不包含的目标包括：取代Xorg的完整功能集、支持多X11屏幕，或实现已弃用的功能（如间接GLX）。它还将为新兴需求扩展X11协议，并计划未来兼容Wayland。

目前，在嵌套环境下已能渲染硬件加速的GLX、EGL或Vulkan应用程序。构建需要Zig 0.14.1及多种后端库（如用于X11嵌套的xcb）。该项目强调，为常见应用程序编写实用的X服务器比创建完整的Wayland合成器更为简单。

---

## 9. 我们在圣诞节邀请了一位男士来家里做客，他在我们家住了45年。

**原文标题**: We invited a man into our home at Christmas and he stayed with us for 45 years

**原文链接**: [https://www.bbc.co.uk/news/articles/cdxwllqz1l0o](https://www.bbc.co.uk/news/articles/cdxwllqz1l0o)

1975年12月，卡迪夫的新婚夫妇罗布和黛安·帕森斯邀请了一位名叫罗尼·洛克伍德的无家可归的自闭症男子到家中过圣诞节。这个始于一时善举的临时安排，最终成了持续45年的长久相伴。

罗尼自幼在福利院长大，年近三十的他从15岁起便流落街头。帕森斯一家帮助他稳定生活，为他找到工作，并让他融入家庭。他成为家中深受爱戴的一员，协助抚养夫妇的两个孩子，并在黛安患病期间给予支持。

这段关系包含着相互妥协，包括应对罗尼的日常仪式习惯，以及与他长期赌博成瘾的斗争，但家人形容他心地善良，并说他极大地丰富了他们的生活。罗尼还是当地教堂的忠实志愿者。

罗尼于2020年去世，享年75岁。以他命名的洛克伍德之家福祉中心附属于其教堂，延续着他的精神。令人惊叹的是，该中心屋顶修缮所需的4万英镑缺口，恰好与罗尼遗嘱中留下的金额完全吻合。帕森斯夫妇感慨，这段长达45年的非凡情谊是“一天一天自然展开的”。

---

## 10. 展示 HN：灯热驱动的动态雕塑——自制灯饰旋转木马

**原文标题**: Show HN: Lamp Carousel – DIY kinetic sculpture powered by lamp heat

**原文链接**: [https://evan.widloski.com/posts/spinners/](https://evan.widloski.com/posts/spinners/)

本文介绍了一种名为“灯饰旋转器”或“罐子旋转器”的DIY动态雕塑，这是一种利用灯的热量上升驱动旋转、由回收铝制汽水罐制成的小型装饰品。

制作者详细描述了简单的制作过程：磨尖钢丝作为低摩擦轴心，从罐身或罐底裁剪形状，在中心压出凹坑作为轴点，然后将“叶片”切割并弯曲成艺术造型。最后一步是修剪并平衡旋转器，使其能在钢丝尖端平稳旋转。随后将钢丝固定在灯罩支架或螺母上。虽然白炽灯泡提供的动力最强，但即使是LED灯泡在预热后也能产生足够的热量。

文章重点包括使用常见的家用材料、强调处理锋利铝片时的安全性，并指出用较薄罐身制作的旋转器最终可能出现轴孔磨损，但仍可继续使用。文章最后展示了一系列设计作品图集，如“涡轮”、“螺旋桨”和“水母涡轮”等命名，凸显了该项目兼具创意性与易操作性。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 2 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 3 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 4 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 5 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 6 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 7 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 8 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 9 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 10 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 11 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 12 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 13 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 14 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 15 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 16 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 17 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 18 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 19 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 20 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 21 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 22 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 23 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 24 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 25 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 26 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 27 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 28 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 29 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 30 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 31 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 32 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 33 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 34 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 35 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 36 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 37 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 38 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 39 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 40 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 41 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 42 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 43 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 44 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 45 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 46 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 47 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 48 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 49 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 50 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 51 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 52 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 53 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 54 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 55 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 56 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 57 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 58 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 59 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 60 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 61 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 62 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 63 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 64 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 65 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 66 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 67 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 68 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 69 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 70 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 71 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 72 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 73 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 74 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 75 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 76 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 77 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 78 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 79 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 80 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 81 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 82 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 83 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 84 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 85 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 86 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 87 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 88 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 89 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 90 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 91 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 92 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 93 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 94 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 95 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 96 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 97 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 98 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 99 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 100 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 101 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 102 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 103 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 104 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 105 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 106 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 107 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 108 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 109 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 110 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 111 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 112 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 113 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 114 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 115 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 116 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 117 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 118 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 119 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 120 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 121 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 122 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 123 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 124 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 125 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 126 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 127 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 128 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 129 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 130 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 131 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 132 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 133 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 134 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 135 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 136 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 137 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 138 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 139 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 140 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 141 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 142 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 143 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 144 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 145 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 146 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 147 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 148 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 149 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 150 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 151 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 152 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 153 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 154 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 155 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 156 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 157 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 158 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 159 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 160 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 161 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 162 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 163 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 164 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 165 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 166 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 167 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 168 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 169 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 170 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 171 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 172 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 173 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 174 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 175 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 176 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 177 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 178 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 179 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 180 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 181 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 182 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 183 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 184 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 185 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 186 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 187 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 188 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 189 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 190 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 191 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 192 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 193 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 194 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 195 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 196 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 197 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 198 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 199 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 200 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 201 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 202 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 203 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 204 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 205 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 206 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 207 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 208 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 209 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 210 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 211 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 212 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 213 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 214 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 215 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 216 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 217 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 218 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 219 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 220 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 221 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 222 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 223 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 224 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 225 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 226 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 227 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 228 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 229 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 230 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 231 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 232 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 233 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 234 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 235 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 236 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 237 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 238 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 239 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 240 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 241 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 242 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 243 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 244 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 245 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 246 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 247 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 248 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 249 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 250 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 251 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 252 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 253 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 254 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 255 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 256 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 257 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 258 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 259 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 260 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 261 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 262 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 263 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 264 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 265 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 266 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 267 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 268 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 269 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 270 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 271 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 272 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 273 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 274 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 275 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 276 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 277 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 278 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 279 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
