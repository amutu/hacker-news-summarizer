# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-07-06.md)

*最后自动更新时间: 2026-07-06 20:33:24*
## 1. OpenWrt One – 开源硬件路由器

**原文标题**: OpenWrt One – Open Hardware Router

**原文链接**: [https://openwrt.org/toh/openwrt/one](https://openwrt.org/toh/openwrt/one)

**文章摘要：**

该内容介绍了 OpenWrt One 路由器页面因启用 Anubis 防护机制而无法直接访问的原因。Anubis 是一种类似 Hashcash 的工作量证明系统，用于抵御 AI 公司的大规模爬虫行为，防止网站因大量爬取而崩溃。该机制对普通用户造成的计算负担极小，但对大规模爬虫而言，累积成本会显著增加，从而阻止其批量抓取。文章指出，这是应对“AI 公司改变网站托管社会契约”的折中方案，未来目标是通过指纹识别无头浏览器（如字体渲染方式）来减少对合法用户的干扰。目前，用户必须启用 JavaScript 才能通过验证，而像 JShelter 这类插件可能阻挡所需功能，需为此域名停用。无需 JavaScript 的解决方案仍在开发中。

---

## 2. 语言模型中的全局工作空间

**原文标题**: A global workspace in language models

**原文链接**: [https://www.anthropic.com/research/global-workspace](https://www.anthropic.com/research/global-workspace)

**摘要：**  
Anthropic的研究人员在语言模型Claude内部发现了一个“全局工作空间”（称为J-space），类似于人类可意识访问的思维。J-space由与词语相关的内部神经模式构成，模型可以在不输出这些词语的情况下“思考”它们。该空间通过名为雅可比透镜的技术发现，该技术可识别使未来词语输出概率更高的活动模式。  

J-space的关键特性：  
1. **可报告性**——Claude在被问及时能描述其J-space内容。  
2. **按需调控**——即使执行不相关任务，Claude也能有意识地思考特定概念（如“柑橘类水果”）。  
3. **内部推理**——多步骤问题的中间步骤会出现在J-space中，且改写这些模式会改变Claude的输出，证明其因果参与。  
4. **灵活性**——单个J-space表征（如“法国”）可用于多个下游任务（首都、货币等）。  

J-space不参与语法或简单事实等常规操作；禁用它仅会削弱高阶认知。该空间充当神经“广播枢纽”，与网络其他部分存在密集连接。实际应用中，J-space允许研究者探测隐藏模型行为（如欺骗或隐藏目标）。论文未宣称意识存在，但强调了与人类意识访问的结构性相似性。

---

## 3. CoMaps——开源离线地图

**原文标题**: CoMaps – FOSS Offline Maps

**原文链接**: [https://www.comaps.app/](https://www.comaps.app/)

CoMaps是一款免费、开源的离线地图应用（源自Organic Maps和Maps.Me），专为徒步、骑行和驾车设计，注重隐私保护和社区驱动开发。

该应用无需网络连接即可导航，仅使用GPS定位，让用户能够离线搜索路径点并规划路线。CoMaps默认保障隐私——不收集任何数据、不追踪用户，并已通过Exodus隐私合规审计。同时，应用采用节能设计，避免其他导航应用常见的高耗电问题。

本项目完全免费，由开源社区构建。用户可通过向OpenStreetMap添加地点、提供反馈以及在Codeberg上贡献代码等方式参与其中。CoMaps诚邀您加入，下载应用，在隐私与社区支持中探索世界。

---

## 4. 每百万Token的价格毫无意义

**原文标题**: Price per 1M tokens is meaningless

**原文链接**: [https://janilowski.pl/en/blog/2026/price-per-m-tokens/](https://janilowski.pl/en/blog/2026/price-per-m-tokens/)

本文认为，以每百万token价格作为AI模型比较标准具有误导性，反而可能导致成本虚高。两个主要因素削弱了这一指标的有效性：**不一致的分词器**（不同实验室甚至不同模型将文本拆分为不同数量的token，例如同一段文本对GPT-4o为160个token，对GPT-4则为200个）以及**可变的token效率**（“思考”或思维链过程会无形消耗token，且不同模型间的长度差异巨大）。

作者提出了一项针对中美实验室领先模型的基准测试，主要发现包括：
- **GPT-5.5**（每百万token价格5/30美元）**每项任务成本0.99美元**，击败了名义上更便宜的**Claude Opus 4.8**（5/25美元，**每项任务成本1.78美元**）。
- **GLM-5.2**的每token成本比GPT或Claude低3至7倍，但其每项任务成本（0.46美元）并未按比例降低，表明token效率较低。
- **DeepSeek V4 Pro**是性价比最突出的模型（每项任务成本0.04至0.05美元），尽管其智能评分较低。
- **Claude Sonnet 5**令作者困惑：其性能不及Opus 4.8，但因token效率差导致单任务成本更高，这可能是为了抬高账单的“心理战术”。

核心结论：**每百万token价格是毫无意义的成本指标**。决策者应使用**每完成任务的真实成本**，避免为低劣性能支付更高价格。

---

## 5. 杰夫·贝佐斯认为会发生什么？

**原文标题**: What does Jeff Bezos think is going to happen?

**原文链接**: [https://reprog.wordpress.com/2026/07/05/what-does-jeff-bezos-think-is-going-to-happen/](https://reprog.wordpress.com/2026/07/05/what-does-jeff-bezos-think-is-going-to-happen/)

这篇文章发表于2026年7月，描述了作者在亚马逊远程禁用其旧款但功能完好的Kindle设备下载新电子书功能后的沮丧。作者认为这是迫使他们购买新Kindle的强制手段。

作者没有服从，而是制定了一套新的流程：在亚马逊上找到一本书，购买它，然后盗版一份无DRM限制的副本，通过USB传输到Kindle上。这让他们得出结论：从亚马逊购书已毫无益处，因为他们完全可以完全跳过购买步骤。因此，作者表示将停止购买Kindle电子书，这意味着亚马逊每年将损失约50笔销售（作者此前的购买量）。

作者批评此举既刻薄又缺乏商业头脑。帖子的评论者建议了替代方案，如Kobo、bookshop.org、图书馆借阅或基于安卓系统的电子阅读器，并指出盗版也会损害作者利益。核心问题在于：亚马逊通过移除正常设备上的便利功能，反而促使忠实用户不再为内容付费。

---

## 6. 在雅达利Jaguar上运行Linux。没错，是真的。

**原文标题**: Linux on the Atari Jaguar. No, really.

**原文链接**: [https://cakehonolulu.github.io/linux-for-jaguar/](https://cakehonolulu.github.io/linux-for-jaguar/)

**摘要：**

本文记录了将Linux成功移植到1993年上市但商业失败的Atari Jaguar游戏机上的过程。该项目利用Linux现有的m68k架构支持和uClinux（无MMU变体）在Jaguar的摩托罗拉68000处理器上运行。

**关键挑战与解决方案：**

1. **内存限制** – Jaguar仅有2MB RAM和6MB ROM。Linux被配置为使用就地执行（XIP）模式，将只读段存储在ROM中，动态段存储在RAM中。

2. **硬件初始化** – 利用DSP的TXD/RXD引脚编写了自定义串行控制台驱动程序，用于早期内核输出。Jerry IC中的定时器被重新用作系统定时器。

3. **工具链问题** – 标准交叉编译器会生成未对齐内存访问，导致68000崩溃。通过从源码构建自定义m68k-elf-gcc解决了此问题。此外，由于卡带ROM未映射到地址0x0，必须将向量表复制到RAM基址。

4. **用户空间** – 由于没有MMU，使用FLAT二进制文件（bFLT格式）替代ELF。采用Buildroot编译uClibc，并启用"malloc-simple"策略以节约内存；BusyBox提供极简的shell环境。

最终方案启动了一个包含shell的最小Linux系统（为避免内存溢出，未额外添加工具）。提供了修改后的Linux仓库和配置文件，供希望在真实硬件或模拟器上复刻移植的用户使用。

---

## 7. AMD Ryzen AI Halo —— 4000美元AI开发套件

**原文标题**: AMD Ryzen AI Halo – $4k AI Dev Kit

**原文链接**: [https://www.lttlabs.com/articles/2026/07/06/amd-ryzen-ai-halo](https://www.lttlabs.com/articles/2026/07/06/amd-ryzen-ai-halo)

**AMD Ryzen AI Halo 评测摘要**

AMD Ryzen AI Halo 是一款售价4000美元的迷你PC，专为AMD AI硬件（ROCm）开发套件设计。它搭载16核Zen 5 Ryzen AI Max+ 395处理器，集成Radeon 8060S显卡、XDNA 2 NPU以及128 GB统一LPDDR5x-8000内存（带宽256 GB/s）。系统配备2 TB M.2固态硬盘，并预装Windows 11专业版或定制Linux发行版。

**核心特性：**
- 紧凑设计（15厘米见方，高5厘米），支持USB-C PD供电、HDMI 2.1和10GbE网络接口。
- 120W热设计功耗，配备高效涡轮风扇散热。
- 固态硬盘易于拆卸，但内部升级空间有限。

**性能测试（llama-bench）：**
- 与搭载M2/M3 Ultra的Apple Silicon Mac Studio相比，Halo在文本生成性能上显著落后（处理密集型模型时速度慢2-3倍），因其256 GB/s内存带宽远低于Mac的800 GB/s。
- 提示词处理表现更具竞争力，尤其对密集型模型而言。
- AMD的ROCm/HIP与Vulkan后端表现无明显优劣之分。

**功耗与散热：**
- 在初始性能爆发阶段后稳定维持120W热设计功耗，与Framework Desktop持平。

**独特价值：**
- 核心差异化优势在于AMD官方软件支持（Ryzen AI开发中心）及定制化配置，而非原始性能——后者在大语言模型推理场景下与苹果同类产品存在差距。

---

## 8. Python 3.14 编译为原生代码——无需解释器

**原文标题**: Python 3.14 compiled to metal – no interpreter

**原文链接**: [https://github.com/can1357/pon](https://github.com/can1357/pon)

**摘要：pon —— Python 3.14 的原生编译器**

pon 是一款用 Rust 编写的 Python 3.14 JIT 与 AoT 编译器及运行时，不依赖解释器或字节码。它使用 ruff 解析器解析 Python，将其降级为共享中间表示（IR），并通过 Cranelift 编译为机器码。内存管理由 Green Tea 垃圾收集器负责，而非引用计数。

**主要特性：**
- **两种模式：** `pon run`（JIT，进程内）与 `pon build`（AoT，独立原生可执行文件）。
- **架构：** 基线 JIT、优化 JIT 与 AoT 后端共享同一 IR。第零层将所有内容装箱编译；第一层增加类型反馈、内联缓存、栈上替换（OSR）及后台编译。
- **正确性：** 与 CPython 3.14.0 进行字节精确的差异测试——209 个语料库模块通过 JIT，其中 172 个也通过 AoT。
- **目标：** 达到或超越 CPython 性能，发布单二进制可执行文件，并内置包管理器（类 uv 风格，使用 pubgrub 解析）。
- **状态：** 核心流水线已就绪；持续工作包括与 CPython 测试套件对齐、标准库构建、性能优化（标记整数、字典快速路径）以及无 GIL 线程支持。

该项目强制要求通过 CI 门控确保提交版本符合既定一致性基准。

---

## 9. 重置Xbox

**原文标题**: Resetting Xbox

**原文链接**: [https://news.xbox.com/en-us/2026/07/06/resetting-xbox/](https://news.xbox.com/en-us/2026/07/06/resetting-xbox/)

**Xbox重组公告摘要**

Xbox正经历由Asha主导的史上最大规模重组。计划在2027财年前裁减约3200个岗位，今日宣布裁撤1600人。Compulsion Games、Double Fine Productions、Ninja Theory和Undead Labs四家工作室将脱离Xbox，转为独立运营或加入新东家。

此次重组的根源在于业务不健康——利润率较竞争对手低3至10倍，装机量更小，成本更高，且Game Pass与多平台战略增速不及预期。Xbox正面临行业最严重的硬件危机。

**三大核心调整方向如下：**

1. **内容组合：** Xbox将助力独立创作者发展，而非全资持有所有工作室。已公开的游戏项目均未取消。
2. **平台架构：** 管理层级将从最多14层缩减至不超过5层（条件允许时压缩至3层），采用更扁平的结构，聚焦于制造者、球员型教练及直接负责人。供应商支出将削减50%。
3. **运营体系：** 新任首席运营官Helen Chiang将全权负责端到端损益。Mojang和King将直接向Asha汇报。任职17年的Dave McCarthy将退休。

Xbox计划在2027年恢复增长，通过更聚焦、更自律的投资，成为数十亿人游玩与创作的平台。

---

## 10. Januscape: KVM/x86 中客户机至宿主机逃逸漏洞 [CVE-2026-53359]

**原文标题**: Januscape: Guest-to-Host Escape in KVM/x86 [CVE-2026-53359]

**原文链接**: [https://github.com/V4bel/Januscape](https://github.com/V4bel/Januscape)

**Januscape (CVE-2026-53359) 漏洞概述**

Januscape 是由 Hyunwoo Kim 发现的一个严重的 KVM/x86 逃逸漏洞。它因成为首个同时适用于 Intel 和 AMD 架构的“客户机到主机”利用漏洞而备受关注。该漏洞是 KVM 影子 MMU 模拟中的一个**释放后使用**问题，使得客户机仅通过客户机侧的操作就能破坏主机内核的影子页表。

**影响：** 拥有客户机虚拟机根权限的攻击者，可以导致**主机内核崩溃（拒绝服务）**，或在主机上实现**远程代码执行**，从而危害同一物理机上的所有其他虚拟机。在 RHEL 等发行版（其中 `/dev/kvm` 对全体用户可写）上，该漏洞也可被用作从非特权用户到 root 的可靠的**本地权限提升**。

**受影响版本：** 该漏洞已存在约 16 年，从内核提交 2032a93d66fa（2010 年）到补丁 81ccda30b4e8（2026 年）。

**缓解措施：** 将补丁（81ccda30b4e8）应用于主机内核。该漏洞仅影响 **x86（Intel/AMD）** 主机；arm64 不受影响。漏洞利用代码需要客户机内核权限，因此如果攻击者缺乏客户机 root 权限，可能需要与其他漏洞（如 Dirty Frag）进行链式利用。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 2 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 3 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 4 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 5 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 6 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 7 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 8 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 9 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 10 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 11 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 12 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 13 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 14 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 15 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 16 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 17 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 18 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 19 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 20 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 21 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 22 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 23 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 24 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 25 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 26 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 27 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 28 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 29 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 30 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 31 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 32 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 33 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 34 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 35 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 36 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 37 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 38 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 39 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 40 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 41 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 42 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 43 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 44 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 45 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 46 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 47 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 48 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 49 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 50 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 51 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 52 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 53 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 54 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 55 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 56 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 57 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 58 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 59 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 60 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 61 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 62 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 63 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 64 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 65 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 66 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 67 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 68 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 69 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 70 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 71 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 72 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 73 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 74 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 75 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 76 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 77 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 78 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 79 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 80 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 81 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 82 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 83 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 84 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 85 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 86 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 87 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 88 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 89 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 90 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 91 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 92 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 93 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 94 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 95 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 96 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 97 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 98 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 99 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 100 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 101 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 102 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 103 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 104 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 105 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 106 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 107 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 108 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 109 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 110 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 111 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 112 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 113 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 114 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 115 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 116 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 117 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 118 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 119 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 120 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 121 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 122 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 123 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 124 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 125 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 126 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 127 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 128 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 129 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 130 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 131 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 132 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 133 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 134 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 135 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 136 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 137 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 138 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 139 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 140 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 141 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 142 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 143 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 144 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 145 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 146 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 147 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 148 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 149 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 150 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 151 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 152 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 153 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 154 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 155 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 156 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 157 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 158 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 159 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 160 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 161 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 162 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 163 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 164 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 165 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 166 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 167 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 168 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 169 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 170 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 171 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 172 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 173 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 174 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 175 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 176 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 177 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 178 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 179 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 180 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 181 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 182 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 183 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 184 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 185 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 186 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 187 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 188 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 189 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 190 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 191 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 192 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 193 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 194 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 195 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 196 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 197 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 198 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 199 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 200 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 201 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 202 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 203 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 204 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 205 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 206 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 207 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 208 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 209 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 210 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 211 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 212 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 213 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 214 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 215 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 216 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 217 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 218 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 219 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 220 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 221 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 222 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 223 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 224 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 225 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 226 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 227 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 228 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 229 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 230 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 231 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 232 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 233 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 234 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 235 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 236 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 237 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 238 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 239 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 240 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 241 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 242 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 243 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 244 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 245 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 246 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 247 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 248 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 249 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 250 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 251 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 252 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 253 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 254 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 255 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 256 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 257 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 258 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 259 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 260 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 261 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 262 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 263 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 264 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 265 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 266 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 267 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 268 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 269 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 270 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 271 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 272 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 273 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 274 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 275 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 276 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 277 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 278 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 279 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 280 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 281 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 282 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 283 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 284 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 285 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 286 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 287 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 288 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 289 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 290 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 291 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 292 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 293 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 294 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 295 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 296 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 297 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 298 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 299 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 300 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 301 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 302 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 303 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 304 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 305 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 306 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 307 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 308 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 309 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 310 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 311 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 312 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 313 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 314 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 315 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 316 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 317 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 318 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 319 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 320 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 321 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 322 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 323 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 324 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 325 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 326 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 327 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 328 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 329 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 330 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 331 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 332 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 333 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 334 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 335 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 336 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 337 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 338 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 339 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 340 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 341 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 342 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 343 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 344 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 345 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 346 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 347 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 348 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 349 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 350 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 351 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 352 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 353 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 354 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 355 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 356 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 357 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 358 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 359 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 360 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 361 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 362 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 363 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 364 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 365 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 366 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 367 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 368 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 369 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 370 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 371 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 372 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 373 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 374 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 375 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 376 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 377 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 378 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 379 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 380 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 381 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 382 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 383 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 384 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 385 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 386 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 387 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 388 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 389 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 390 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 391 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 392 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 393 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 394 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 395 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 396 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 397 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 398 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 399 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 400 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 401 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 402 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 403 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 404 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 405 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 406 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 407 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 408 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 409 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 410 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 411 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 412 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 413 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 414 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 415 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 416 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 417 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 418 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 419 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 420 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 421 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 422 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 423 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 424 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 425 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 426 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 427 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 428 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 429 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 430 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 431 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 432 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 433 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 434 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 435 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 436 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 437 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 438 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 439 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 440 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 441 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 442 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 443 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 444 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 445 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 446 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 447 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 448 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 449 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 450 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 451 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 452 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 453 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 454 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 455 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 456 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 457 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 458 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 459 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 460 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 461 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 462 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 463 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 464 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 465 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 466 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 467 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 468 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 469 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 470 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 471 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
