# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2025-12-20.md)

*最后自动更新时间: 2025-12-20 20:20:38*
## 1. 纯硅演示编码：无需CPU，无需内存，仅用4千门电路

**原文标题**: Pure Silicon Demo Coding: No CPU, No Memory, Just 4k Gates

**原文链接**: [https://www.a1k0n.net/2025/12/19/tiny-tapeout-demo.html](https://www.a1k0n.net/2025/12/19/tiny-tapeout-demo.html)

本文详细介绍了为Tiny Tapeout 8 ASIC竞赛制作复古风格演示的过程。该竞赛要求设计限制在约4000个逻辑门内，且不能使用CPU或内存。演示内容包含实时生成的VGA输出星域、3D棋盘格以及带投影阴影的正弦波文字滚动效果。

主要挑战在于极端的硬件限制：每个状态位都消耗宝贵的触发器，所有图形必须按像素组合逻辑计算生成。作者使用Verilog编写设计，并通过Verilator进行仿真，最终为Skywater 130nm工艺完成综合。为适应门数限制，数据（如字体和音乐模式）未采用传统ROM存储，而是编码为优化逻辑门——其中重复模式可“免费”实现。通过Minsky圆算法等技术无需查找表即生成正弦波，自定义透视投影则高效渲染了棋盘格。

音频通过单引脚采用Σ-Δ调制实现。最终设计占用3374个单元和293个触发器，将芯片面积利用至极限。该项目展示了在严苛硅片约束下，通过以硬件为中心的创新编码实现复杂视听效果的实践。

---

## 2. OpenSCAD 相当不错

**原文标题**: OpenSCAD Is Kinda Neat

**原文链接**: [https://nuxx.net/blog/2025/12/20/openscad-is-kinda-neat/](https://nuxx.net/blog/2025/12/20/openscad-is-kinda-neat/)

在本文中，作者分享了通过重新设计一个最初在Fusion 360中创建的参数化电池座，来学习OpenSCAD的积极体验。

主要观点包括：
*   **OpenSCAD的特性**：它是一种基于代码的CAD工具，通过编写脚本来生成设计，与传统图形化CAD软件有显著差异。
*   **项目内容**：作者成功地将一个简单的、参数化的AA/AAA电池座设计转换为OpenSCAD脚本。该设计允许用户通过更改电池类型、行数和列数等变量来自定义电池座。
*   **结果与优势**：OpenSCAD模型生成了与Fusion 360版本完全相同的可打印结果。作者强调，对于这类简单的参数化设计，使用免费、轻量级的工具而无需复杂的商业软件是一大优势。
*   **代码示例**：脚本的核心使用`difference()`操作，先创建一个实心盒子，然后减去一个迭代的立方体网格以形成电池槽。
*   **学习心得**：作者提到一个困惑点——需要在循环内使用`let()`语句来定义变量——但总体上认为学习过程是直观的。
*   **未来应用**：他们总结道，即使OpenSCAD可能不适合高度复杂的设计，但它非常适合生成简单、可重复使用的几何对象，如垫片或轴承冲头。

---

## 3. 日志级别“错误”应意味着需要修复某些问题

**原文标题**: Log level 'error' should mean that something needs to be fixed

**原文链接**: [https://utcc.utoronto.ca/~cks/space/blog/programming/ErrorsShouldRequireFixing](https://utcc.utoronto.ca/~cks/space/blog/programming/ErrorsShouldRequireFixing)

本文解释称，作者网站正在阻止使用过时或可疑浏览器用户代理的访问者，主要是为了应对大量用于LLM训练的数据抓取爬虫（通常使用旧版Chrome）的激增。此信息针对遇到此阻止的合法人类访客。

作者澄清，如果用户确实在使用当前浏览器但被错误阻止，可以联系他解决问题，并提供浏览器和用户代理字符串等详细信息。

特别警告通过archive.today/ph/is访问网站的用户，指出其爬虫使用旧版Chrome代理和伪造反向DNS的IP地址，行为与恶意攻击者无异。作者建议改用行为更规范的archive.org进行存档访问。

---

## 4. 备份Spotify

**原文标题**: Backing Up Spotify

**原文链接**: [https://annas-archive.li/blog/backing-up-spotify.html](https://annas-archive.li/blog/backing-up-spotify.html)

安娜档案馆已备份了Spotify目录中的大部分内容，创建了其称之为首个完全开放的音乐“保存档案”。该发布包含约2.56亿首曲目的元数据及约8600万个实际音乐文件，数据总量近300TB，相当于该平台上约99.6%的收听量。

该档案库依据Spotify流行度指标对曲目进行优先级排序：流行度评分高于零的歌曲以原始OGG Vorbis格式（160 kbit/s）保存，而较低流行度的曲目（流行度=0）则重新编码为更紧凑的OGG Opus格式（75 kbit/s）以节省空间。元数据库尤为庞大，包含1.86亿个独立ISRC编码。

数据正通过种子文件分阶段分发，首批发布元数据，随后按流行度分组发布音乐文件。该项目旨在保护音乐遗产免遭潜在流失，并弥补现有档案库往往只关注流行或高质量发布的不足。安娜档案馆呼吁公众通过做种帮助确保档案的长期存续。

---

## 5. 大型显卡无需大型电脑。

**原文标题**: Big GPUs don't need big PCs

**原文链接**: [https://www.jeffgeerling.com/blog/2025/big-gpus-dont-need-big-pcs](https://www.jeffgeerling.com/blog/2025/big-gpus-dont-need-big-pcs)

本文探讨了将强大的外部GPU（eGPU）连接至树莓派5的实际效用，尽管其单通道PCIe Gen 3带宽有限。作者在树莓派和一台现代英特尔台式电脑上，对AMD、英特尔和英伟达的多款GPU进行了多项任务基准测试。

关键发现显示树莓派的表现出人意料地具有竞争力。在GPU密集型任务如3D渲染（GravityMark）中，性能几乎完全相同。在AI/LLM推理方面，树莓派通常能与电脑性能持平，同时能效显著更高，即使使用像RTX 4090这样的高端显卡。作为媒体服务器（Jellyfin），树莓派能流畅处理典型的转码任务，尽管电脑在原始吞吐量上更胜一筹。

文章还展示了在树莓派上使用外部PCIe交换机实现的多GPU配置。虽然通过合并显存可以运行更大的模型，但这种配置比使用单个更强大的GPU速度更慢、效率更低。一个值得注意的社区示例显示，一台树莓派连接四块英伟达A5000 GPU，其LLM性能达到了专用服务器的98%左右。

结论是，现代电脑在峰值性能和易用性方面更优。然而，对于特定的GPU密集型工作负载，若终极能效和低闲置功耗（4-5W对比30W）是优先考虑的因素，树莓派提供了一个可行且经济高效的替代方案。该项目最终突显了树莓派的潜力以及突破硬件极限的乐趣。

---

## 6. 我度过了一周没有IPv4的日子

**原文标题**: I spent a week without IPv4

**原文链接**: [https://www.apalrd.net/posts/2023/network_ipv6/](https://www.apalrd.net/posts/2023/network_ipv6/)

本文详细介绍了作者为期一周仅使用IPv6的实验，旨在深入理解从IPv4过渡的机制。作者认为，IPv6凭借其庞大的地址空间，消除了对网络地址转换（NAT）的需求——NAT仅是IPv4地址枯竭的临时解决方案。这使得全球可路由地址成为可能，从而简化了点对点连接、服务托管和虚拟专用网络（VPN）的部署。

文章阐释了几种适用于仍依赖IPv4网络的关键过渡方法：
*   **双栈协议：** 同时运行IPv4和IPv6，方法简单但需管理两套并行网络。
*   **NAT64/DNS64：** 通过在网络网关转换协议并合成DNS记录，使纯IPv6客户端能够访问IPv4资源。
*   **464XLAT：** 一种更先进的方法，在网络边缘和客户端设备上同时进行协议转换，在IPv6网络上提供无缝的IPv4体验。作者指出苹果设备对此具有出色的原生支持。

实验得出的关键结论是：IPv6技术已成熟且功能完备，但许多网站和网络管理员缺乏支持阻碍了其普及。作者总结道，网络设计应遵循“IPv6优先”原则，将NAT64/464XLAT作为传统NAT的现代替代方案，并呼吁加大推广力度，以突破遗留IPv4的限制。

---

## 7. Gemini 3 Pro与2.5 Pro在《宝可梦 水晶版》中的对比

**原文标题**: Gemini 3 Pro vs. 2.5 Pro in Pokemon Crystal

**原文链接**: [https://blog.jcz.dev/gemini-3-pro-vs-25-pro-in-pokemon-crystal](https://blog.jcz.dev/gemini-3-pro-vs-25-pro-in-pokemon-crystal)

本文比较了Gemini 3 Pro和Gemini 2.5 Pro作为AI智能体在相同实验框架下运行《宝可梦：水晶版》的表现。虽然两款模型初期表现相近，但Gemini 3 Pro展现出远胜一筹的效率和问题解决能力，最终成功通关游戏，而2.5 Pro则长期陷入困境。

Gemini 3 Pro的主要优势包括：
*   **空间推理能力：** 能构建精确的心理地图，有效导航复杂区域。
*   **工具运用：** 智能使用地图标记避开NPC，甚至创建定制工具突破框架限制，实现多任务处理。
*   **规划能力：** 展现出更佳的预见性和规划能力，规避了重大陷阱。

然而，Gemini 3 Pro仍存在弱点，例如会做出未经核实的假设。这在满金地下通道谜题中尤为明显：它耗费数日采用代数解法，最终才向NPC询问关键提示。

实验结论表明，Gemini 3 Pro如同“另一类智能体物种”，在长周期任务中展现出比前代模型显著更先进、更善用工具且更具目标导向的行为特质。

---

## 8. 去吧，自己托管Postgres数据库。

**原文标题**: Go ahead, self-host Postgres

**原文链接**: [https://pierce.dev/notes/go-ahead-self-host-postgres#user-content-fn-1](https://pierce.dev/notes/go-ahead-self-host-postgres#user-content-fn-1)

本文认为，自托管PostgreSQL是比AWS RDS等托管云服务更可行且通常更优的选择，挑战了主流观点所认为的自托管过于复杂和冒险的说法。

作者指出，云服务商主要提供的是标准Postgres及运维工具，而非什么专有魔法。托管服务虽降低了初始设置门槛，但代价高昂且持续增长，对性能调优的控制较少，且并未免除运维责任——服务中断时你仍需随时待命。

基于两年运行高流量数据库的经验，作者发现自托管不仅稳定、成本显著更低，且维护量出乎意料地小，仅需每周和每月例行检查。关键优势包括能够精细调整配置（如内存、连接数及NVMe驱动器的存储设置）以提升性能，并能使用PgBouncer等工具进行连接池管理。

文章总结道，除完全的新手或受严格监管的企业外，自托管对大多数组织而言都是合理的选择。作者鼓励团队重新审视默认选择托管服务的做法，并提出混合策略——仅在托管服务真正创造价值的场景中使用——才是务实基础设施的未来方向。

---

## 9. 展示 HN：HN 年度回顾 2025——用大型语言模型回顾你在 HN 的一年

**原文标题**: Show HN: HN Wrapped 2025 - an LLM reviews your year on HN

**原文链接**: [https://hn-wrapped.kadoa.com?year=2025](https://hn-wrapped.kadoa.com?year=2025)

**HN Wrapped 2025** 是一款第三方AI工具，可为用户提供其在Hacker News（HN）活动的个性化年度回顾总结。该服务与Y Combinator或HN官方无关。

该工具主要功能是分析用户2025年在HN的评论和提交等贡献，并生成总结报告。报告内容包括对用户发帖习惯的幽默“吐槽”，识别其参与的核心话题与趋势，并可能对其未来平台活动作出预测。

创建者称其公司致力于开发“用于网络数据的AI智能体”，并正在招聘人才。同时他们强调用户隐私保护，声明所有用于生成年度报告的用户数据将在30天内删除。

---

## 10. Depot (YC W23) 正在招聘企业支持工程师（远程/美国）

**原文标题**: Depot (YC W23) Is Hiring an Enterprise Support Engineer (Remote/US)

**原文链接**: [https://www.ycombinator.com/companies/depot/jobs/jhGxVjO-enterprise-support-engineer](https://www.ycombinator.com/companies/depot/jobs/jhGxVjO-enterprise-support-engineer)

Depot（YC W23）是一个加速软件构建的开发效率平台，现招聘一名驻美国的远程企业支持工程师。

该职位负责为Depot平台提供技术支持，就CI/CD和Docker最佳实践为客户提供建议，排查复杂问题，并协助从遗留系统迁移。理想候选人需具备3年以上面向客户的DevOps岗位经验，熟悉CI/CD平台（如GitHub Actions）、Docker、主流云服务商（AWS、Azure、GCP）及常用构建工具。

关键要求包括能在太平洋时间工作、参与节假日值班轮换，并与客户有效沟通。有GitHub Actions优化、BuildKit或API集成经验者优先。

该职位年薪范围为11万至14万美元，另加股权，福利包括全额医疗保险、无限制带薪休假、远程办公及年度团队线下聚会。公司成立于2022年，团队规模8人，客户包括PostHog和Wistia等。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 2 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 3 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 4 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 5 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 6 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 7 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 8 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 9 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 10 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 11 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 12 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 13 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 14 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 15 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 16 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 17 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 18 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 19 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 20 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 21 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 22 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 23 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 24 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 25 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 26 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 27 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 28 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 29 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 30 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 31 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 32 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 33 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 34 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 35 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 36 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 37 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 38 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 39 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 40 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 41 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 42 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 43 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 44 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 45 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 46 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 47 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 48 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 49 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 50 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 51 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 52 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 53 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 54 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 55 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 56 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 57 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 58 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 59 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 60 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 61 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 62 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 63 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 64 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 65 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 66 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 67 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 68 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 69 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 70 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 71 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 72 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 73 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 74 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 75 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 76 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 77 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 78 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 79 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 80 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 81 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 82 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 83 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 84 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 85 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 86 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 87 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 88 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 89 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 90 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 91 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 92 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 93 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 94 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 95 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 96 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 97 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 98 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 99 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 100 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 101 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 102 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 103 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 104 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 105 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 106 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 107 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 108 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 109 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 110 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 111 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 112 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 113 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 114 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 115 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 116 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 117 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 118 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 119 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 120 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 121 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 122 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 123 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 124 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 125 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 126 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 127 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 128 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 129 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 130 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 131 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 132 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 133 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 134 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 135 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 136 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 137 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 138 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 139 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 140 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 141 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 142 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 143 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 144 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 145 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 146 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 147 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 148 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 149 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 150 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 151 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 152 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 153 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 154 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 155 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 156 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 157 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 158 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 159 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 160 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 161 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 162 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 163 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 164 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 165 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 166 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 167 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 168 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 169 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 170 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 171 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 172 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 173 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 174 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 175 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 176 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 177 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 178 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 179 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 180 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 181 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 182 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 183 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 184 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 185 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 186 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 187 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 188 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 189 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 190 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 191 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 192 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 193 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 194 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 195 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 196 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 197 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 198 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 199 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 200 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 201 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 202 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 203 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 204 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 205 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 206 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 207 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 208 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 209 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 210 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 211 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 212 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 213 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 214 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 215 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 216 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 217 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 218 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 219 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 220 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 221 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 222 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 223 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 224 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 225 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 226 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 227 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 228 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 229 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 230 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 231 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 232 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 233 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 234 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 235 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 236 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 237 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 238 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 239 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 240 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 241 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 242 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 243 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 244 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 245 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 246 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 247 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 248 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 249 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 250 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 251 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 252 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 253 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 254 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 255 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 256 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 257 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 258 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 259 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 260 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 261 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 262 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 263 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 264 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 265 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 266 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 267 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 268 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 269 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 270 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 271 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 272 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 273 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 274 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
