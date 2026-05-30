# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-05-30.md)

*最后自动更新时间: 2026-05-30 20:33:58*
## 1. OpenRouter完成1.13亿美元B轮融资

**原文标题**: OpenRouter raises $113M Series B

**原文链接**: [https://openrouter.ai/announcements/series-b](https://openrouter.ai/announcements/series-b)

**摘要：**

OpenRouter宣布完成1.13亿美元B轮融资，由CapitalG（Alphabet旗下成长基金）领投，NVIDIA、ServiceNow、MongoDB、Snowflake、Databricks等企业的风投部门参与，现有投资者Andreessen Horowitz和Menlo Ventures继续跟投。

该公司增长迅猛：周token处理量在六个月内从5万亿飙升至25万亿，预计今年将处理千万亿级token。目前超过800万开发者通过OpenRouter使用400余种模型。

这一战略投资者组合折射出市场趋势：随着企业从单一模型试点转向多模型生产系统，需要专用的路由和网关层。OpenRouter将自己定位为位于AI代理与模型提供商之间的关键基础设施，负责管理路由、可靠性、成本优化及合规性。

主要产品进展包括：扩展多模态推理（图像、音频、语音、转录、嵌入、视频）、企业级控制功能（工作空间、支出管理、防护措施、零数据保留），以及具备提供商级故障切换和质量感知优化的智能路由。

本轮融资将用于扩展基础设施、深化企业能力、增强智能路由——帮助团队为每次请求选择最优模型和提供商。

---

## 2. Zig ELF链接器改进开发日志

**原文标题**: Zig ELF Linker Improvements Devlog

**原文链接**: [https://ziglang.org/devlog/2026/#2026-05-30](https://ziglang.org/devlog/2026/#2026-05-30)

本文重点介绍了Zig编程语言在2026年早期阶段的若干重大改进，聚焦于构建系统性能、链接器增强以及编译器内部机制。

**ELF链接器改进**（5月30日）——Matthew Lugg推进了新的ELF链接器（可通过`-fnew-linker`选项启用），目前该链接器已能借助LLVM和LLD库构建自托管Zig编译器。其关键特性是在x86_64 Linux系统上实现快速增量编译，使得重建过程仅需毫秒级时间（编译器自身的重建演示耗时228-288毫秒）。调试信息（DWARF）支持仍是下一阶段的优先任务。

**构建系统重构**（5月26日）——Andrew Kelley将构建过程拆分为两个独立进程：“配置器”（负责`build.zig`逻辑）与“制造器”（负责执行构建图）。通过缓存配置并以发布模式编译制造器，这一改动显著提升了`zig build --help`的性能（从150毫秒降至14.3毫秒，降幅达90.4%）。一项次要的破坏性变更将`b.args`替换为`run_cmd.addPassthruArgs()`。

**基于LLVM的增量编译**（4月8日）——Matthew Lugg为LLVM后端启用了增量编译功能，从而最大程度减少Zig编译器耗时（尤其针对编译错误场景），但LLVM的“生成目标文件”阶段不受影响。该功能已在主分支可用，预计随0.16.0版本发布。

**类型解析重构**（3月10日）——一项包含三万行代码的拉取请求重构了内部类型解析机制，使编译器更趋惰性（例如，未使用的结构体字段中的`@compileError`不再触发错误），改进了依赖循环的错误提示信息，并几乎消除了增量编译中的过度分析缺陷。

**I/O实现**（2月13日）——Andrew Kelley宣布为`std.Io.Evented`实现了基于栈式协程的`io_uring`（Linux）和Grand Central Dispatch（macOS）后端。这些实现目前仍处于试验阶段，但展示了可替换的I/O后端架构。

---

## 3. 霍尔木兹危机副作用：集装箱运价急剧上涨

**原文标题**: Hormuz crisis side effect: a sharp rise in container shipping rates

**原文链接**: [https://www.lloydslist.com/LL1157327/Hormuz-crisis-side-effect-a-sharp-rise-in-container-shipping-rates](https://www.lloydslist.com/LL1157327/Hormuz-crisis-side-effect-a-sharp-rise-in-container-shipping-rates)

无法访问文章链接。

---

## 4. Show HN：五百年朝鲜宫廷预兆的可观测性仪表盘

**原文标题**: Show HN: 500 years of Joseon court omens as an observability dashboard

**原文链接**: [https://ajin.im/is/building/omen.ops/](https://ajin.im/is/building/omen.ops/)

本文介绍了一项名为“omen.ops”的项目，该项目将朝鲜王朝（1392–1897）五个世纪的历史记录重新构想为一个可观测性仪表盘。朝鲜宫廷细致记录了日食、彗星、旱灾、洪灾及虎患等自然现象与异常事件，并将其解读为昭示上天对王朝统治认可与否的征兆——这一理念被称为“天命”。

该项目将这些古代记录视为类似于现代系统监控日志的运行遥测数据。每条记录均源自官方史书《朝鲜王朝实录》。界面采用控制台风格，呈现一条“系统通知”，将王朝统治视为一个系统，其健康与合法性通过这些征兆来检验。项目旨在将历史数据转化为可读的仪表盘格式，融合历史与现代数据可视化及软件工程美学。文章邀请用户“打开控制台”，探索这一历史、数据与界面设计的独特交汇点。

---

## 5. 我在沙漠中央发现了一个海贝

**原文标题**: I found a seashell in the middle of the desert

**原文链接**: [https://github.com/Hawzen/I-found-a-seashell-in-the-middle-of-the-desert](https://github.com/Hawzen/I-found-a-seashell-in-the-middle-of-the-desert)

**摘要：**

作者在沙特阿拉伯阿尔加特沙漠发现了一块形似海螺的岩石，该地距最近海岸线500公里。这是由于阿拉伯半岛在侏罗纪晚期（约1.5亿年前）曾没入海底所致。为鉴定该化石，作者采用基于形状的DIY形态学分析方法。

利用包含7,894种贝类、共59,244张图像的数据库，作者将每个贝类轮廓标准化为256个（x, y）坐标点，并处理了居中、缩放和朝向问题。通过主成分分析（PCA），将256维形状数据降维至两个主成分（PC1和PC2），保留了67.25%的方差。PC1代表贝类的"尖锐度"，PC2代表对称性。

在潜在空间中绘制贝类分布图后，作者发现阿尔加特化石与年代更年轻（3800万年前）的*Sphincterochila candidissima*最为相似。作者承认仅凭形态学不足以精确确定演化谱系，但提出这种相似性可能源于相似环境压力下的趋同演化。文中还提供了用于探索该贝类潜在空间的网络工具。

---

## 6. 体素空间

**原文标题**: Voxel Space

**原文链接**: [https://s-macke.github.io/VoxelSpace/](https://s-macke.github.io/VoxelSpace/)

本文介绍的是**体素空间**渲染引擎，该引擎因1992年游戏《科曼奇》的运用而闻名，在当时被视为革命性技术。

该引擎是一种基于射线投射的**2.5D**系统，专为地形渲染优化。它使用两张1024×1024的地图：**高度图**（定义地形起伏）和**色彩图**（预着色包含阴影，省去实时光照计算）。

**核心算法：**
渲染过程出奇简洁。其通过从远到近绘制垂直线（画家算法）或使用Y缓冲区从近到远处理遮挡实现。对于每个Z距离，引擎计算地图上对应屏幕宽度的线段，随后提取高度与色彩值，将垂直条纹投影至屏幕。

**性能优化关键：**
- **从近到远渲染**搭配Y缓冲区，避免重复绘制被遮挡像素。
- **细节层次（LOD）**，增加远处线条的步进间隔以减少计算量。

**局限：** 该引擎无法处理建筑或树木等复杂几何体，因其每个地图位置仅允许单一高度值。

文章附有基础Python伪代码及可下载的地图文件（从《科曼奇》逆向工程所得）。软件采用MIT许可协议，但地图因潜在专利问题未包含在内。

---

## 7. Intel 8087浮点芯片内部的微码：寄存器交换

**原文标题**: Microcode inside the Intel 8087 floating-point chip: register exchange

**原文链接**: [https://www.righto.com/2026/05/microcode-inside-intel-8087-floating.html](https://www.righto.com/2026/05/microcode-inside-intel-8087-floating.html)

**文章摘要：**

本文详细介绍了Intel 8087协处理器中FXCH（浮点交换）指令的微代码实现，该指令用于交换栈顶寄存器与指定的栈寄存器。尽管看似简单，但由于错误处理及硬件限制，该交换需要14条微指令完成。

8087使用八个栈寄存器及两个临时寄存器（tmpA和tmpB），每个寄存器存放80位浮点数及标签位（有效、特殊、零、空）。FXCH微代码首先将ST(0)保存至tmpA，ST(i)保存至tmpB。随后检查任一寄存器是否为空，若是则触发“无效操作”异常。若异常被屏蔽（不产生中断），空寄存器会被替换为“非数”（NaN）。最后，将tmpB写入ST(0)，tmpA写入ST(i)，完成交换，并附加上一个空操作周期以确保时序。

微代码同时展示了8087的异常系统：程序员可屏蔽异常以继续操作（例如用NaN替换空寄存器），或取消屏蔽以触发CPU中断。ROM采用密集的半模拟设计存储了1,648条微指令，作者通过高分辨率芯片图像及神经网络分析对其进行了逆向工程。

---

## 8. Openrsync：OpenBSD团队实现的rsync

**原文标题**: Openrsync: An implementation of rsync, by the OpenBSD team

**原文链接**: [https://github.com/kristapsdz/openrsync](https://github.com/kristapsdz/openrsync)

**摘要**

Openrsync 是由 OpenBSD 团队开发的 rsync 文件同步工具的开源实现，采用 BSD（ISC）许可证。它与现代 rsync（协议 27）兼容，官方支持 OpenBSD，但也可在其他 UNIX 系统上编译。该项目源自 rpki-client 项目，并由多个组织资助。

**主要特性与架构：**
- 采用发送方（源）和接收方（目标）模型运行
- 使用组件间共享的文件列表，按字典序排序，目录优先
- 块交换算法：通过大小和修改时间检查文件；若文件过期，接收方将块哈希（Adler-32 和 MD4）发送给发送方，发送方找到匹配的块并发送重构文件的指令
- 块大小以文件大小的平方根计算（最小 700B），向上取整到最接近的八的倍数

**安全性：**
- 利用 OpenBSD 的 `pledge(2)` 根据模式限制系统操作
- 使用 `unveil(2)` 将文件系统访问限制在目标目录
- 以 `arc4random(3)` 替代 `time(3)` 为 MD4 哈希提供种子，以提高随机性

**与 rsync 的差异：**
- 将接收方和生成器合并为使用事件循环的单一进程，而非分叉独立的生成器进程
- 仅接受 rsync 命令行参数的一个子集
- 安全特性依赖于 OpenBSD 特有的机制；移植到其他系统时需匹配这些机制

---

## 9. 合法TLS窃听的并行重构

**原文标题**: Parallel Reconstruction of Lawful TLS Wiretapping

**原文链接**: [https://remyhax.xyz/posts/reproducing-lawful-tls-wiretapping/](https://remyhax.xyz/posts/reproducing-lawful-tls-wiretapping/)

**摘要：**

本文分析了2023年针对jabber.ru（俄罗斯XMPP服务）的合法TLS窃听事件，攻击者可能利用了acme.sh中的ACME客户端漏洞（CVE-2023-38198）签发欺诈证书。该行动因过期TLS证书触发用户警告而暴露，进而引发公开调查。

关键要点：

- **漏洞利用**：CVE-2023-38198允许通过acme.sh的ACME质询令牌字段中的命令注入实现远程代码执行。作者演示了一个可行的概念验证，使用shell加载器连接服务器，在内存中读取并执行Python代码，且不留磁盘痕迹。

- **攻击机制**：该漏洞利用通过`echo|nl`产生空白字符绕过字符过滤器（不允许空格），对命令进行base64编码，并将载荷控制在Linux 255字节文件名限制以内。当受害者的ACME客户端请求证书时，恶意CA服务器返回以root权限执行的漏洞载荷。

- **操作背景**：此次窃听需要网络路由控制权（例如，入侵ISP或Hetzner/Linode等托管服务商）。该漏洞同时被CA机构“HiCA”滥用，用于签发合法证书，表明攻击者利用已知漏洞进行隐蔽拦截。

- **教训**：虽然TLS和ACME协议本身稳健，但实现层面的漏洞（软件客户端）仍是最薄弱环节。此类攻击可能完全不被察觉，除非操作者出现失误（例如未能续签证书）。

作者总结认为，只要具备适当的资源和网络定位，执行此次攻击轻而易举且不留痕迹——其被发现仅因操作者疏忽大意。

---

## 10. Pandoc 模板

**原文标题**: Pandoc Templates

**原文链接**: [https://pandoc-templates.org/](https://pandoc-templates.org/)

本文精选了超过50款 **Pandoc模板**，用于将Markdown文件转换为多种输出格式，主要包括PDF、HTML和DOCX。

最受欢迎的模板包括用于讲义笔记的 **Eisvogel**（7154颗星）、用于简历的 **The Markdown Resume**（1748颗星），以及用于终端演示的 **patat**（2708颗星）。其他值得关注的模板涵盖了学术写作领域，例如博士论文、IEEE论文、期刊文章（如JASA、Biometrics）及MLA格式的模板。

部分模板专为特定输出设计：**tufte-pandoc-css** 和 **pandoc-new.css** 用于HTML样式设计，**pandoc-letter** 用于专业信函，另有求职信（AcademiCL）和基金申请模板。此外，还有书籍、食谱及RPG战役（daggarheart-template）等模板。

许多项目在GitHub上获得了大量星标且近期持续更新，表明它们被积极用于创作论文、幻灯片（reveal.js）及学术通信等任务。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 2 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 3 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 4 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 5 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 6 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 7 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 8 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 9 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 10 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 11 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 12 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 13 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 14 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 15 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 16 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 17 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 18 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 19 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 20 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 21 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 22 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 23 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 24 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 25 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 26 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 27 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 28 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 29 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 30 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 31 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 32 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 33 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 34 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 35 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 36 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 37 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 38 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 39 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 40 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 41 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 42 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 43 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 44 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 45 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 46 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 47 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 48 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 49 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 50 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 51 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 52 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 53 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 54 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 55 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 56 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 57 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 58 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 59 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 60 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 61 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 62 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 63 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 64 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 65 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 66 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 67 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 68 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 69 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 70 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 71 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 72 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 73 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 74 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 75 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 76 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 77 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 78 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 79 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 80 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 81 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 82 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 83 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 84 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 85 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 86 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 87 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 88 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 89 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 90 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 91 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 92 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 93 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 94 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 95 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 96 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 97 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 98 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 99 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 100 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 101 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 102 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 103 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 104 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 105 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 106 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 107 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 108 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 109 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 110 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 111 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 112 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 113 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 114 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 115 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 116 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 117 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 118 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 119 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 120 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 121 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 122 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 123 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 124 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 125 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 126 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 127 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 128 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 129 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 130 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 131 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 132 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 133 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 134 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 135 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 136 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 137 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 138 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 139 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 140 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 141 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 142 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 143 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 144 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 145 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 146 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 147 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 148 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 149 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 150 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 151 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 152 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 153 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 154 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 155 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 156 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 157 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 158 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 159 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 160 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 161 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 162 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 163 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 164 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 165 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 166 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 167 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 168 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 169 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 170 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 171 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 172 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 173 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 174 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 175 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 176 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 177 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 178 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 179 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 180 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 181 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 182 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 183 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 184 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 185 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 186 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 187 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 188 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 189 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 190 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 191 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 192 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 193 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 194 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 195 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 196 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 197 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 198 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 199 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 200 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 201 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 202 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 203 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 204 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 205 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 206 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 207 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 208 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 209 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 210 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 211 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 212 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 213 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 214 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 215 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 216 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 217 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 218 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 219 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 220 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 221 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 222 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 223 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 224 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 225 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 226 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 227 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 228 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 229 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 230 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 231 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 232 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 233 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 234 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 235 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 236 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 237 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 238 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 239 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 240 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 241 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 242 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 243 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 244 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 245 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 246 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 247 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 248 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 249 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 250 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 251 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 252 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 253 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 254 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 255 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 256 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 257 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 258 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 259 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 260 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 261 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 262 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 263 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 264 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 265 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 266 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 267 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 268 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 269 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 270 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 271 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 272 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 273 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 274 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 275 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 276 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 277 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 278 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 279 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 280 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 281 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 282 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 283 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 284 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 285 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 286 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 287 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 288 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 289 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 290 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 291 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 292 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 293 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 294 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 295 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 296 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 297 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 298 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 299 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 300 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 301 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 302 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 303 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 304 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 305 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 306 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 307 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 308 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 309 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 310 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 311 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 312 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 313 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 314 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 315 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 316 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 317 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 318 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 319 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 320 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 321 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 322 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 323 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 324 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 325 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 326 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 327 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 328 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 329 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 330 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 331 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 332 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 333 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 334 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 335 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 336 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 337 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 338 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 339 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 340 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 341 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 342 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 343 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 344 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 345 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 346 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 347 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 348 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 349 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 350 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 351 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 352 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 353 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 354 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 355 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 356 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 357 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 358 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 359 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 360 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 361 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 362 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 363 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 364 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 365 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 366 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 367 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 368 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 369 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 370 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 371 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 372 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 373 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 374 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 375 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 376 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 377 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 378 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 379 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 380 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 381 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 382 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 383 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 384 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 385 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 386 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 387 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 388 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 389 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 390 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 391 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 392 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 393 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 394 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 395 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 396 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 397 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 398 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 399 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 400 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 401 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 402 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 403 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 404 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 405 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 406 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 407 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 408 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 409 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 410 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 411 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 412 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 413 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 414 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 415 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 416 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 417 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 418 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 419 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 420 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 421 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 422 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 423 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 424 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 425 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 426 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 427 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 428 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 429 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 430 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 431 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 432 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 433 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 434 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
