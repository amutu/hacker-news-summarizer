# Hacker News 热门文章摘要 (2025-12-20)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. NIST博尔德实验室的NTP服务已断电。

**原文标题**: NTP at NIST Boulder Has Lost Power

**原文链接**: [https://lists.nanog.org/archives/list/nanog@lists.nanog.org/message/ACADD3NKOG2QRWZ56OSNNG7UIEKKTZXL/](https://lists.nanog.org/archives/list/nanog@lists.nanog.org/message/ACADD3NKOG2QRWZ56OSNNG7UIEKKTZXL/)

**摘要：**

位于科罗拉多州博尔德的国家标准与技术研究院（NIST）因强风和野火预防性断电导致的长时间公共电力中断，已失去其主要原子时间尺度。尽管备用发电机最初维持了系统运行，但一台关键发电机随后发生故障。

因此，为NIST博尔德公共互联网时间服务器提供精确时间参考的原子钟组现已离线。受影响的服务器（time-a-b至time-e-b.nist.gov及ntp-b.nist.gov）虽仍在备用电源下运行，但正在分发错误的时间。NIST工作人员计划禁用这些服务器，以防止传播不准确的时间数据。

目前现场仅限应急人员进入，且尚无修复或恢复供电的时间预估。当前的首要任务是确保获得替代电源，以在氢脉泽时钟的电池备用电力耗尽前维持其运行。若成功，NIST将能够在不依赖外部参考的情况下最终重建其主要时间尺度。

---

## 12. Immersa：开源基于网页的3D演示工具

**原文标题**: Immersa: Open-source Web-based 3D Presentation Tool

**原文链接**: [https://github.com/ertugrulcetin/immersa](https://github.com/ertugrulcetin/immersa)

Immersa是一款开源、基于网络的演示工具，能够创建带有动画过渡效果的3D演示文稿。它允许用户在3D场景中导入.glb格式的3D模型、放置2D图像以及添加3D文字。其核心功能是自动平滑动画：当用户在复制的幻灯片之间重新定位、旋转或缩放对象时，Immersa会对变化进行插值处理，从而在演示过程中生成流畅的过渡效果。

主要功能包括具备相机控制的全功能3D编辑器、浏览器本地存储（IndexedDB）、撤销/重做支持以及演示模式。该工具采用ClojureScript开发，界面使用Reagent和Re-frame库构建，3D渲染则依赖Babylon.js。安装后可在本地运行，需要Node.js、npm和Java环境。

概述涵盖了其用途、核心动画机制、主要功能及技术栈，采用MIT许可证发布。

---

## 13. 大语言模型驱动智能体中的细致平衡

**原文标题**: Detailed balance in large language model-driven agents

**原文链接**: [https://arxiv.org/abs/2512.10047](https://arxiv.org/abs/2512.10047)

**摘要：**

本文提出了一个理解大型语言模型（LLM）驱动智能体宏观动态的理论框架。尽管这类智能体在实证上取得了成功，但作者认为目前缺乏一个统一的理论来解释其行为。

基于对LLM生成状态间转移概率的实验测量，他们的核心发现是**细致平衡**在统计上的涌现。这一源自统计力学的原理表明，当系统处于平衡态时，两个状态之间的正向与反向转移概率相等。

作者将这一发现解读为证据，表明LLM的生成过程不仅仅是学习显式规则或策略。相反，他们提出LLM隐式地学习了一个底层的**势函数**（或能量景观）。细致平衡条件意味着，LLM的生成过程倾向于根据这一势函数对状态进行采样，这一特性可能在不同模型架构和提示模板中具有普适性。

这项工作被视为建立复杂AI系统“宏观动态理论”的基础性一步。其目标是将AI智能体的研究从特设性的工程实践，转向基于可测量、可预测、可量化的有效定律的、更具原则性的科学，这些定律独立于具体的模型细节。

---

## 14. Biscuit是一种专为PostgreSQL设计的索引，用于快速执行LIKE查询模式匹配。

**原文标题**: Biscuit is a specialized PostgreSQL index for fast pattern matching LIKE queries

**原文链接**: [https://github.com/CrystallineCore/Biscuit](https://github.com/CrystallineCore/Biscuit)

Biscuit是一种专为PostgreSQL设计的索引，旨在加速使用`LIKE`和`ILIKE`运算符的模式匹配查询。它采用一种新颖的基于位图的方法，追踪字符串内的字符位置，从而实现确定性匹配，无需传统三元组（pg_trgm）索引所需的重新检查开销。这使得它在处理复杂通配符模式（`%`、`_`）时尤其快速。

其主要特性包括：原生支持多列搜索，并自动重排谓词以获得最佳性能；高效处理聚合查询（如`COUNT`）；以及12项内置性能优化，例如提前终止和批量操作。它通过自动文本转换支持多种数据类型。

尽管Biscuit在精确通配符模式匹配方面表现出色，但它不支持正则表达式或相似性搜索。其主要优势在于对`LIKE`查询的速度和精确性，特别是在全文搜索、日志分析和CRM系统等应用中，其查询速度和索引构建时间均显著优于pg_trgm。

---

## 15. 人工智能会让我们的孩子变笨

**原文标题**: AI will make our children stupid

**原文链接**: [https://thecritic.co.uk/ai-will-make-our-children-stupid/](https://thecritic.co.uk/ai-will-make-our-children-stupid/)

**《“人工智能将使我们的孩子变笨”一文摘要》**

文章认为，以ChatGPT为代表的生成式人工智能工具融入教育领域，将对儿童的智力和道德发展构成重大威胁。其核心论点是：学生若将写作、推理和解决问题等核心认知任务外包给人工智能，将无法发展必要的心智能力，从而导致一代人能力更弱、知识更匮乏、智慧更欠缺。

主要观点包括：
*   **基础技能的侵蚀：** 作者认为，学习中固有的挣扎过程——如思考错误、构建论点、掌握语言——对培养智力和品格至关重要。人工智能的捷径绕过了这种必要的挣扎，阻碍了批判性思维、严谨思考和真正理解力的发展。
*   **知识与记忆的丧失：** 文章警示了“外延心智”模式的风险，即事实被储存在数字设备而非大脑中。它认为，丰富的个人知识储备（事实、词汇、历史事件）对于复杂推理、创造力以及建立微妙联系的能力至关重要，而过度依赖人工智能会扼杀所有这些能力。
*   **道德与存在风险：** 文章指出，这一趋势不仅会使孩子“变笨”，还会使他们“变得更糟”。它声称，由于未能深入参与语言和思考，儿童将更容易被操纵，更难以进行有意义的对话，其人性也会变得贫乏。通过传统学习培养出的真实声音和道德推理能力被视为牺牲品。
*   **呼吁抵制：** 结论是强烈呼吁教育工作者和家长抵制在教育环境中不加批判地采用人工智能。它主张保护传统的、基于努力的教育方法，以培养独立的智力和判断力，并将此视为抵御人工智能依赖所产生的弱化效应的必要防御。

---

## 16. 技能正式入驻Codex

**原文标题**: Skills Officially Comes to Codex

**原文链接**: [https://developers.openai.com/codex/skills/](https://developers.openai.com/codex/skills/)

本文介绍了**Agent Skills**，这是Codex的一项新功能，允许用户通过可复用的、针对特定任务的工作流来扩展其能力。一个技能包包含指令（在`SKILL.md`文件中）、可选脚本和资源，使Codex能够可靠地执行特定任务。

技能可以从多个作用域加载，**优先级较高的位置会覆盖较低的位置**。优先级从高到低依次为：当前工作目录、仓库中的父文件夹、仓库根目录、用户的个人文件夹、系统管理员文件夹，最后是Codex内置的捆绑技能。

Codex可以通过两种方式使用技能：**显式调用**（使用斜杠命令或`$`提及）或**隐式调用**（当Codex判定任务与技能描述匹配时）。用户可以使用内置的`$skill-creator`技能或手动创建新技能，并可以使用`$skill-installer`技能从GitHub安装额外技能。文章重点介绍了内置的`$plan`技能以及与Linear和Notion等工具集成的技能示例。

---

## 17. X-59 3D打印技术

**原文标题**: X-59 3D Printing

**原文链接**: [https://www.nasa.gov/stem-content/x-59-3d-printing/](https://www.nasa.gov/stem-content/x-59-3d-printing/)

本文介绍了NASA的X-59 3D打印文件作为教育资源。X-59是一架长约100英尺的实验性飞机，作为“Quesst”任务的一部分，设计用于以超音速（1.4马赫）飞行。该任务的主要目标是建造一架能将音爆减弱为更安静的“砰”声的飞机，并收集公众反馈数据，以帮助制定未来的超音速飞行法规。

该资源面向5-12年级的教师、学生及非正式教育机构，涵盖物理科学、技术和航空学等学科。它提供了多种格式的可下载3D模型文件，包括多部件模板、带支架版本和无支架版本，使用户能够打印并组装飞机比例模型。此外，还包含1/64比例模型的贴花文件以增加细节。

这些文件由NASA航空研究任务理事会的实习生创建，并于2021年12月添加到资源库中。

---

## 18. CSS网格轨道

**原文标题**: CSS Grid Lanes

**原文链接**: [https://webkit.org/blog/17660/introducing-css-grid-lanes/](https://webkit.org/blog/17660/introducing-css-grid-lanes/)

**《CSS Grid Lanes 简介》摘要**

CSS Grid Lanes 是一种新的布局方法，现已可在 Safari Technology Preview 中使用。它基于原生 CSS 实现砖石砌体式布局。该方法构建于 CSS Grid 之上，创建动态的、基于列的排列方式，其中项目会流入能将其放置在容器最顶部的“通道”（列）中，类似于交通堵塞或经典的砖石砌体式 JavaScript 库的效果。

主要特点包括：
*   **简单实现：** 使用 `display: grid-lanes` 配合 `grid-template-columns` 或 `grid-template-rows` 即可创建灵活、响应式的布局，无需媒体查询。
*   **完整网格功能：** 它继承了 CSS Grid 的所有能力，允许项目跨越多条通道，并可进行显式定位。
*   **自动方向：** 布局方向（瀑布流式列或砖块式行）会根据您定义的是列还是行自动确定。
*   **放置控制：** 新的 `item-tolerance` 属性（名称可能更改）允许开发者在放置项目时，控制算法对细微尺寸差异的敏感度，从而影响视觉和 Tab 键导航顺序。

此功能旨在解决长期存在的布局挑战，能更高效地实现复杂设计，如相册、报纸版式和大型菜单。虽然 CSS 工作组仍在最终确定部分属性名称和细节，但其核心语法已稳定，可供实验性使用。

---

## 19. 隐私已不再重要，匿名才是关键。

**原文标题**: Privacy doesn't mean anything anymore, anonymity does

**原文链接**: [https://servury.com/blog/privacy-is-marketing-anonymity-is-architecture/](https://servury.com/blog/privacy-is-marketing-anonymity-is-architecture/)

本文认为，现代“隐私”主张在很大程度上是表演性的，而真正的用户保护需要**从设计上实现匿名化**。

作者指出，大多数声称重视隐私的服务仍在收集大量个人数据（邮箱、电话、IP地址），这反而为数据泄露、黑客攻击或法律胁迫创造了目标。相比之下，真正的匿名是一种架构选择，它使得危害用户变得**不可能**，因为用户的个人数据从未被收集。

文章以**Mullvad VPN**为例：当警方突查时，他们没有任何用户数据可交出，因为其系统仅使用随机账号。作者自己的平台Servury也遵循这一模式，仅存储一个随机的32位凭证、账户余额和活跃服务——不保存邮箱、姓名、IP日志或支付信息。

文章强调了一个关键权衡：由于不存储身份信息，一旦凭证丢失，**账户将无法恢复**。这种不便被视作实现真正匿名必须付出的代价，它能防止社会工程攻击和强制数据披露。

文章总结道，互联网正在分裂为**“实名网络”**（充满监控）和**“匿名网络”**（隐私得以存续）。匿名并非为了逃避责任，而是确保服务无法背叛用户——因为它们从一开始就不掌握任何个人数据。

---

## 20. 为什么人们会在OpenBenches上留言？

**原文标题**: Why do people leave comments on OpenBenches?

**原文链接**: [https://shkspr.mobi/blog/2025/12/why-do-people-leave-comments-on-openbenches/](https://shkspr.mobi/blog/2025/12/why-do-people-leave-comments-on-openbenches/)

文章解释称，OpenBenches项目作为一个众包纪念长椅目录，其评论功能本意是用于实用信息更新。但创始人发现，访客主要将其用于情感联结与追思。

人们并未报告错误，而是通过留言表达哀思、分享在长椅上静坐的个人故事、感谢安放者，或向逝者寄托爱意。这些评论显露出一种集体渴望：既承认失去之痛，也期盼记忆永存。

文章强调，这一现象为提供简单、受监管且自主管理的线上互动空间带来了意外而深刻的意义，展现了人类在共同纪念经历中寻求联结的内在需求。

---

## 21. Mistral OCR 3

**原文标题**: Mistral OCR 3

**原文链接**: [https://mistral.ai/news/mistral-ocr-3](https://mistral.ai/news/mistral-ocr-3)

Mistral AI发布了Mistral OCR 3，这是一款全新的光学字符识别模型，为文档处理的准确性和效率设立了新标准。该模型相比前代产品实现了74%的整体胜率，表现优于企业级和AI原生OCR解决方案。

该模型擅长从各类复杂文档中提取文本和图像，包括表格、低质量扫描件、复杂图表及手写内容。它能输出纯净文本或结构化JSON格式，并通过HTML增强的Markdown实现精准表格重建。其关键优势在于成本效益：每处理1,000页仅需2美元，批量使用API还可享受50%折扣。

Mistral OCR 3已通过API（模型`mistral-ocr-2512`）和Mistral AI Studio全新推出的文档AI交互平台即时上线。该平台提供拖拽式界面，可实现即时文档解析。该模型专为高吞吐量企业流水线和交互式工作流设计，适用于发票自动化、历史文档数字化及提升企业搜索效率等应用场景。

---

## 22. 最大化苹果II高分辨率图像的压缩效果

**原文标题**: Maximizing Compression of Apple II Hi-Res Images

**原文链接**: [http://deater.net/weave/vmwprod/hgr_compress/](http://deater.net/weave/vmwprod/hgr_compress/)

本文探讨了如何最大限度压缩Apple II高分辨率图像（未压缩时为8,184字节），以便在有限的RAM和磁盘空间中存储更多图像。文章指出，标准的ZX02压缩算法对交错排列的图像数据效果良好，但若先对数据进行去交错处理，每张图像可额外节省约100多字节，这对于包含大量图像的项目意义重大。

作者详细阐述了一种两步到位的去交错算法：首先恢复原始内存映射中存在的8字节内存“空洞”，然后将图像行重新排序为线性格式。虽然有效，但该过程会增加代码量（355字节）和解压时间开销，因此仅当存储多张图像时才能实现净收益。

文章还讨论了一种更集成化解决方案的概念验证：一种直接输出交错格式的高分辨率感知型ZX02解码器，可避免中间处理步骤。但由于需要在6502处理器上处理复杂的地址查找，初始实现版本速度较慢。

这些技术被认为适用于各类Apple II项目（包括游戏和演示程序），其中节省内存至关重要。相关代码已在GitHub上开源。

---

## 23. 2025年末对人工智能的反思

**原文标题**: Reflections on AI at the End of 2025

**原文链接**: [https://antirez.com/news/157](https://antirez.com/news/157)

**《2025年末人工智能反思》摘要**

本文反思了截至2025年末的人工智能发展状况，强调其已从理论潜力转向广泛、切实的融合。作者指出，人工智能不再是新奇事物，而是嵌入日常生活、行业和治理的基础性工具。

关键点包括：**智能体AI的成熟**，系统能自主执行从管理个人日程到优化供应链的复杂多步骤任务，超越了简单的聊天机器人。这带来了显著的**生产力提升**，但也加剧了关于**岗位替代与经济结构调整**的争论。

**监管格局**正在形成，主要经济体已实施初步的人工智能治理框架。然而，**“创新与安全”之间的紧张关系**依然显著，导致全球政策环境呈现碎片化。

在技术层面，文章观察到**纯粹模型规模扩张的放缓**，重点转向效率、可靠性和专业化的小型模型。同时，**多模态AI**（无缝处理文本、图像、音频和视频）已成为标准的用户界面。

一个核心主题是社会对人工智能影响的**日益深刻的审视**。**偏见、错误信息和集中的企业权力**等问题依然严峻，导致公众监督加强，对透明度和问责制的要求提高。结论强调，当前的界定性挑战不再是构建更强大的人工智能，而是**明智地引导其融合**，使其与人类价值观和公平结果保持一致。

---

## 24. Charles Proxy

**原文标题**: Charles Proxy

**原文链接**: [https://www.charlesproxy.com/](https://www.charlesproxy.com/)

本文是网络调试代理应用Charles Proxy的按时间顺序发布的更新日志。它详细记录了该软件从2005年的2.0版本到2025年的5.0.3版本的演进历程。

更新的主要脉络包括：
*   **主要版本发布：** 重要里程碑，如2007年的v3.0、2016年支持HTTP/2和IPv6的v4.0，以及2025年进行重大用户界面改造的v5.0。
*   **核心功能增强：** 对核心功能的持续改进，包括SSL/TLS调试、对新协议（HTTP/2、WebSocket、Brotli压缩）的支持，以及数据格式查看器（AMF/Flash、JSON、SOAP）。
*   **平台与兼容性：** 定期更新以确保支持新的操作系统版本（macOS、Windows）并修复安全漏洞（例如log4j、本地权限提升）。
*   **用户界面与性能：** 对用户界面的持续优化、深色模式的引入以及性能提升。

该日志表明，Charles Proxy是一个积极维护的工具，在二十年间持续适应并满足网络开发和调试不断变化的需求。

---

## 25. 车库——一款可靠到可在数据中心外运行的S3对象存储系统

**原文标题**: Garage – An S3 object store so reliable you can run it outside datacenters

**原文链接**: [https://garagehq.deuxfleurs.fr/](https://garagehq.deuxfleurs.fr/)

Garage是一款轻量级、自包含的S3兼容对象存储系统，专为传统数据中心之外的高韧性环境设计。其核心特性是通过三区域数据三重复制确保可靠性，即使面临网络或硬件故障也能保障数据安全。

该系统以操作简洁为理念，采用单一二进制文件，可在配置适中的硬件（如1GB内存、x86_64或ARM架构CPU）及异构机器上运行，适合在多地点二手设备上部署。其设计可承受高达200毫秒的网络延迟和低带宽环境，在公共互联网中也能稳定运作。

Garage致力于让稳健的数据存储变得触手可及，支持静态网站托管、媒体存储和备份目标等多种应用场景。该项目由欧盟NGI计划的公共研究基金资助开发。

---

## 26. 一条火车大小的隧道现已在伦敦南部地下输送电力。

**原文标题**: A train-sized tunnel is now carrying electricity under South London

**原文链接**: [https://www.ianvisits.co.uk/articles/a-train-sized-tunnel-is-now-carrying-electricity-under-south-london-86221/](https://www.ianvisits.co.uk/articles/a-train-sized-tunnel-is-now-carrying-electricity-under-south-london-86221/)

伦敦电力隧道2号（LPT2）项目是一项耗资10亿英镑的基础设施升级工程，现已部分投入运营。两条新建高压电路中的第一条已在南伦敦新建的18公里隧道内通电，连接了纽克罗斯和赫斯特的变电站。

这一新的深层隧道网络部分区域深达地下50米、宽3米，取代了上世纪60年代埋设在街道浅层沟渠中的老化电缆。该线路的第二条电路计划于2026年初启用。

整个LPT2项目于2019年启动建设，隧道总长32.5公里，穿越南伦敦七个行政区，通过赫斯特将温布尔登与克雷福德连接起来。该项目延续了2018年北伦敦类似10亿英镑项目的成功经验，是国家电网为现代化和保障伦敦电力供应基础设施而进行的一项重大长期投资。

---

## 27. 新型量子天线揭示隐藏的太赫兹世界

**原文标题**: New Quantum Antenna Reveals a Hidden Terahertz World

**原文链接**: [https://www.sciencedaily.com/releases/2025/12/251213032617.htm](https://www.sciencedaily.com/releases/2025/12/251213032617.htm)

华沙大学的研究人员开发出一种新型量子传感器，能够探测并精确测量太赫兹辐射——这是介于微波与红外光之间、极具挑战性的电磁频谱区域。该传感器利用被激发至高能里德伯态的铷原子，作为对电场高度敏感且可调谐的“量子天线”。

其关键突破在于能够测量太赫兹频率梳的单个“齿梳”——一种用于校准的、频率间隔均匀的超精密标尺。此前，由于太赫兹振荡对电子设备而言过快，而对标准光学工具又过慢，这项测量一直无法实现。研究团队将基于原子基本常数实现绝对校准的里德伯原子电测技术，与灵敏的太赫兹-光转换技术相结合，使得利用单光子计数器探测极微弱信号成为可能。

这种混合方法首次实现了对单个太赫兹频率梳齿功率的测量，并完成了跨数十个频率的整梳校准。该系统在室温下即可运行，与许多量子技术不同，这使其在未来应用中更具实用性。

此项工作为太赫兹计量学奠定了新基础，为高灵敏度光谱学、成像技术以及6G等新一代通信技术的发展铺平了道路。

---

## 28. Show HN：Claude代码插件，在等待用户输入时播放音乐

**原文标题**: Show HN: Claude Code Plugin to play music when waiting on user input

**原文链接**: [https://github.com/Sevii/agent-marketplace/blob/main/plugins/elevator-music/README.md](https://github.com/Sevii/agent-marketplace/blob/main/plugins/elevator-music/README.md)

本文是一篇Show HN帖子，介绍了一款为Claude Code环境开发的新插件，该插件能在等待用户输入时播放背景音乐。该项目名为“agent-marketplace”，由用户Sevii托管在GitHub上，目前已获得8个星标。

其核心理念是通过在AI代理处理或空闲时添加环境音乐，以提升开发者的使用体验，旨在让交互过程更生动、更具吸引力。帖子遵循标准的“Show HN”格式，向社区展示该工具以征求反馈和讨论。关键信息包括项目的公开可用性、复刻与星标数（分别为0和8），以及关于通知设置需登录的说明。总结部分精准捕捉了这款针对特定编码助手平台、注重用户体验的轻量级工具。

---

## 29. Arduino UNO Q将高性能计算与实时控制无缝连接

**原文标题**: Arduino UNO Q bridges high-performance computing with real-time control

**原文链接**: [https://www.arduino.cc/product-uno-q/](https://www.arduino.cc/product-uno-q/)

Arduino UNO Q是一款新型混合开发板，集成了支持Linux的高通Dragonwing™ QRB2210微处理器（MPU）与实时STM32U585微控制器（MCU）。这种双核心设计将能够运行AI模型、视觉与音频应用的高性能计算，与精准低功耗的硬件控制能力相结合。

其主要特性包括16GB内置存储、双频Wi-Fi、蓝牙5.1，以及兼容扩展盾板的经典UNO外形。该板可通过Qwiic连接器进行扩展，并配备用于视觉反馈的LED矩阵。

开发环境以预装在板载系统中的新型**Arduino App Lab**为核心，该统一平台支持用户无缝整合Arduino草图、Python脚本与容器化AI模型。开发板支持两种使用模式：既可连接PC作为外设，也可通过USB-C扩展坞连接显示器与外围设备作为独立单板计算机运行。

虽然该开发板兼容传统Arduino IDE进行MCU编程，但Arduino推荐将App Lab作为充分发挥其混合架构能力的主要工具。相较于专注于微控制器的UNO R4，UNO Q定位为更高级的解决方案，适用于同时需要Linux应用与实时控制的项目场景。

---

## 30. 空客将关键应用迁移至欧洲主权云平台。

**原文标题**: Airbus to migrate critical apps to a sovereign Euro cloud

**原文链接**: [https://www.theregister.com/2025/12/19/airbus_sovereign_cloud/](https://www.theregister.com/2025/12/19/airbus_sovereign_cloud/)

空客公司正发起一项招标，计划将其关键业务应用——包括企业资源规划（ERP）系统、制造系统和飞机设计数据——迁移至欧洲主权云。这份合同价值超过5000万欧元，期限长达十年，旨在确保欧洲敏感数据由欧洲自主掌控。此举的驱动因素包括唐纳德·特朗普重返美国总统大选带来的地缘政治担忧，以及对美国《云法案》可能造成数据外流的顾虑。

尽管空客目前使用谷歌和微软等美国巨头的云服务，但公司正寻求主权云解决方案，以降低数据被域外访问和潜在服务中断的风险。空客数字业务执行副总裁凯瑟琳·杰斯坦表示，对能否找到合适的欧洲供应商仅有80%的信心，她担忧欧洲云服务商是否具备必要规模，以及欧洲法规能否真正保障数据免受外国法律干预。

这一举措也受到SAP等软件供应商的推动，这些企业正专注于开发仅适用于云端的新技术。招标结果预计将在2025年夏季前公布。

---

