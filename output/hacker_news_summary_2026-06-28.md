# Hacker News 热门文章摘要 (2026-06-28)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. Librepods：从苹果生态系统中解放出来的AirPods

**原文标题**: Librepods: AirPods liberated from Apple's ecosystem

**原文链接**: [https://github.com/librepods-org/librepods](https://github.com/librepods-org/librepods)

**LibrePods 简介**

LibrePods 是一个开源项目，通过逆向工程苹果的专有协议，使非苹果设备（主要是 Android 和 Linux）能够使用 AirPods 的专属功能。主要功能包括切换聆听模式、入耳检测、电池状态、头部手势（仅限 Android）、对话感知以及自动连接。部分功能（如高质量双向音频和心率监测）需要 root 权限或仍在开发中。

该项目提供了适用于 Android 和 Linux 的安装指南。**VendorID 伪造**（模拟苹果的蓝牙 ID）可以解锁更多功能。应用采用 GPLv3 许可协议，但“LibrePods”名称和标志为注册商标，未经许可不得使用。

项目警告存在一个虚假网站（librepods.org）冒充官方网站，并鼓励用户举报此类网站。项目感谢支持者并向逆向工程贡献者致谢。针对受限平台，替代方案包括 CAPod（Android）和 MagicPods（Windows/Steam Deck）。

---

## 2. 纽约公共图书馆巴托夫收藏的五千份菜单（1880-1920）

**原文标题**: 5k menus from the New York Public Library’s Buttolph Collection (1880-1920)

**原文链接**: [https://pudding.cool/2026/06/menu-story/](https://pudding.cool/2026/06/menu-story/)

无法访问该文章链接。

---

## 3. 我用Claude Code为我的MRI获取了第二诊疗意见。

**原文标题**: I used Claude Code to get a second opinion on my MRI

**原文链接**: [https://antoine.fi/mri-analysis-using-claude-code-opus](https://antoine.fi/mri-analysis-using-claude-code-opus)

以下是文章的简洁总结：

作者因右肩疼痛接受核磁共振检查，骨科医生诊断为肩胛下肌腱III级（超过50%宽度）部分厚度撕裂。诊所立即开始大规模治疗。作者对此激进方案存疑，要求获取核磁共振数据和治疗记录。

首先，他们将文件输入GPT-5.5 Pro，该系统标记出两项可疑治疗：冲击波疗法（非钙化性肌腱病禁忌）和一次无治疗指征的同种疗法注射。

接着，作者使用**Claude Code中的Opus 4.8**分析266 MB的DICOM格式核磁共振导出数据。经过一小时分析，Claude得出完全不同的结论：**肌腱完好无损**——根本没有撕裂。

为解决这一矛盾，作者让Claude在人类放射科医生的报告与自身分析之间进行仲裁。仲裁者以中高置信度得出结论：**轻度插入性肌腱病变，但不存在离散的部分或全层撕裂**。

这让作者陷入两难境地——既无法完全信任人类医生，也无法完全信任人工智能。他们质疑诊断和治疗方案是否过于草率和过度干预。作者将此作为一次技术实验分享，而非医疗建议，并希望未来的人工智能模型在核磁共振审查方面能像我们在校对工作中信任它们一样被信赖。

---

## 4. Semgrep：GLM 5.2 在网络安全基准测试中击败克劳德

**原文标题**: Semgrep: GLM 5.2 beats Claude in our Cyber Benchmarks

**原文链接**: [https://semgrep.dev/blog/2026/we-have-mythos-at-home-glm-52-beats-claude-in-our-cyber-benchmarks/](https://semgrep.dev/blog/2026/we-have-mythos-at-home-glm-52-beats-claude-in-our-cyber-benchmarks/)

Semgrep测试了开放权重与前沿AI模型在检测不安全直接对象引用（IDOR，一种常见安全漏洞）方面的表现。关键发现：智谱AI的开放权重模型GLM 5.2仅通过简单提示即获得39%的F1分数——以约每个漏洞0.17美元的成本击败了Claude Code（32%）。这一结果令人惊讶，因为GLM 5.2没有使用专门的结构化框架，而Semgrep自身的多模态管道（F1分数达53–61%）则采用了端点发现与引导式导航。

实验在完全相同的条件下比较了各模型：相同的IDOR数据集、评估方法（F1分数）及提示。GLM 5.2优于其他开放权重模型（MiniMax M3的23%、Kimi K2.7 Code的22%）及多款前沿模型。主要结论：

- **框架比模型更重要**：Semgrep专门构建的结构化框架取得了最高F1分数，表明模型周边的体系结构至关重要。
- **开放权重模型已具备竞争力**：GLM 5.2在推理密集型安全任务中以极低成本击败了前沿编码智能体，且其权重已公开，支持私有部署。
- **多元化策略明智**：仅依赖昂贵的前沿模型可能错失更便宜且具竞争力的替代方案。

Semgrep提醒称，这仅针对单一任务与数据集，其他漏洞类型的结果可能不同。但该研究凸显出开放权重模型已跨越值得安全团队关注的关键性能门槛。

---

## 5. Tokenmaxxing已死，Tokenmaxxing万岁

**原文标题**: Tokenmaxxing is dead, long live tokenmaxxing

**原文链接**: [https://12gramsofcarbon.com/p/agentics-tech-things-tokenmaxxing](https://12gramsofcarbon.com/p/agentics-tech-things-tokenmaxxing)

**《“代币最大化”已死，“代币最大化”万岁》摘要**

文章探讨了企业环境中“代币最大化”——即在AI代币上投入巨额资金的现象。起初，Meta等公司的高管将绩效评估与代币使用挂钩，导致员工在无意义任务上浪费代币。尽管此举普遍被视为败笔，但作者认为这是迫使抗拒变革的高层员工采用AI的刻意策略。

数月后，采用策略取得成功，但OpenAI和Anthropic等公司API成本上升及预算收紧，迫使许多团队取消无限代币政策。不过作者声称，“代币最大化”并未真正消亡。

关键转变在于“复合正确性”的出现——与早期的“复合错误”不同，如今投入更多代币能带来更优结果。这使得长期运行、无需监督的AI代理成为可能（例如用于网络安全、代码迁移）。诸如“循环”等技术让代理能够迭代改进。真正的赢家将是开放模型平台：更便宜的模型可通过更多迭代实现相似收益。

文章区分了两种“代币最大化”：一种提升开发者生产力（合理）；另一种驱动脆弱的、一次性流水线代理（常属浪费）。随着通用型平台的改进，后者正在减少。最终形态将是自主生成代码的“黑暗工厂”。

尽管当前诸如“每日1000美元代币”的炒作已趋极端，但投入巨资于代币的潜在动机依然存在。所谓“代币最大化”的“死亡”只是暂时的，一种更高效的迭代正在浮现。

---

## 6. 波音747开始最后降落

**原文标题**: The Boeing 747 begins its final descent

**原文链接**: [https://www.theatlantic.com/magazine/2026/07/boeing-747-retirement/687304/](https://www.theatlantic.com/magazine/2026/07/boeing-747-retirement/687304/)

这篇文章回顾了波音747作为标志性“空中女王”的遗产，从其最终安息地——亚利桑那州皮纳尔航空公园——开始。文章追溯了这款飞机自20世纪60年代因失去一项军事合同而冒险研发，到1969年首飞的历程。747凭借其可容纳490多名乘客的载客量、远程飞行能力以及原计划未来改装为货机的独特驼背设计，彻底改变了航空旅行。它成为美国创新与喷气时代魅力的象征，提供上层甲板休息室、宽敞客舱以及个性化的社交服务等豪华体验。然而，经济压力、燃油危机、放松管制以及更高效的小型飞机的崛起，导致这些舒适设施被取消，飞机逐渐过时。747还在“婴儿空运行动”等历史事件中发挥了重要作用。最终，文章哀叹747所代表的威严、舒适与人情味的价值观在现代航空中为效率与统一性让路而走向衰败。

---

## 7. TOP500在ISC'26大会：新科冠军诞生——乔治·科兹马

**原文标题**: TOP500 at ISC'26: We Have a New Number 1 – By George Cozma

**原文链接**: [https://chipsandcheese.com/p/top500-at-isc26-we-have-a-new-number](https://chipsandcheese.com/p/top500-at-isc26-we-have-a-new-number)

**ISC'26 TOP500榜单摘要：新科榜首**

第67届TOP500榜单于德国汉堡ISC 2026大会上揭晓，来自中国深圳的**"领光"超级计算机**荣登榜首。这是中国九年来首次向TOP500提交系统，其采用纯CPU架构，搭载自主研发的**LX2 Armv9芯片**。每颗LX2处理器拥有304个活动核心、228 MB二级缓存及32 GB封装内高带宽内存。全系统包含超过22,000个节点与1300万核心，以42.22 MW功耗实现**2.198 Exaflops持续FP64性能**（Rmax），能效比达52.07 Gigaflops/瓦。"领光"同时登顶HPCG基准测试榜首。

其他亮点：意大利埃尼集团的**HPC7**系统首次亮相即位列第六，采用HPE Cray架构与AMD MI300A APU（571.5 Petaflops）。前榜首**"富岳"**跌至第九，但HPCG排名仍保持第三。**Green500**前十名首次出现零变动。

文章提出质疑：中国是否会提交其他E级系统（神威·海洋之光、CNIS）？美国是否会因此增加能源部经费？同时探讨为何大型AI系统（如xAI的Colossus 2）未参与TOP500排名。最后，ISC集团宣布将把TOP500管理权移交ACM SIGHPC，未来榜单将启用专属DOI编号。

---

## 8. 在Lemote Yeeloong笔记本上使用OpenBSD应对龙芯兼容性挑战

**原文标题**: Working around dragons with the Lemote Yeeloong laptop and OpenBSD

**原文链接**: [http://oldvcr.blogspot.com/2026/06/working-around-dragons-with-lemote.html](http://oldvcr.blogspot.com/2026/06/working-around-dragons-with-lemote.html)

**摘要：** 本文详细介绍了Lemote Yeeloong笔记本电脑的历史与发展。这款基于MIPS64架构的上网本专为完全自由/开源计算设计（深受理查德·斯托曼青睐）。作者描述了自己购买一台以运行OpenBSD的经历，并探讨了其搭载的中国龙芯处理器的起源。

龙芯系列始于2002年推出的32位Godson-1处理器，该处理器在中国863计划支持下研发，旨在实现技术自主。它由中国科学院计算技术研究所研制，采用MIPS II架构（规避了受专利保护的未对齐内存访问指令），基于180纳米工艺制造。随后推出的64位Godson-2经历了问题频出的迭代版本（2A、2B、2C、2D），最终于2006年成功研发出90纳米工艺的Godson-2E，主频达到1GHz并集成了二级缓存。与MIPS科技公司达成协议后，该处理器才获得官方MIPS兼容认证。

2007年推出的Godson-2F集成了北桥与PCI-X控制器，并促成了江苏龙梦科技有限公司的成立。该公司于2008年推出Fuloong 2F桌面电脑，同年10月发布了全球首款基于龙芯的笔记本电脑Yeeloong。这款产品以低功耗、无二进制固件模块为特点，定位为廉价且完全开放的计算平台。

---

## 9. 《非言语儿童计算机辅助语言发展》（1968）[pdf]

**原文标题**: Computer-Aided Language Development in Nonspeaking Children (1968) [pdf]

**原文链接**: [https://archive.org/details/colby1968-computer-aided-language-development-in-non-speaking-children](https://archive.org/details/colby1968-computer-aided-language-development-in-non-speaking-children)

根据提供的元数据，以下是关于科尔比1968年论文《计算机辅助无语言儿童的语言发展》的简要总结：

这篇1968年发表于《普通精神病学档案》的开创性论文，探讨了利用计算机辅助教学促进无语言儿童（特别是自闭症或发育障碍儿童）语言发展的方法。作者描述了一种早期辅助技术系统，旨在帮助非语言儿童获得沟通技能。计算机作为一种互动工具，可能通过视觉显示或简易界面，吸引对传统言语治疗无反应的儿童参与。研究聚焦于通过结构化、重复性的练习构建语言能力，绕过口头表达的需求，旨在为功能性沟通搭建桥梁。主要发现表明，这种技术能减少挫折感、增强动机，使儿童能够按自身节奏学习语言组成部分（如词汇-物体关联）。该研究被视为辅助与替代沟通（AAC）及针对自闭症儿童的早期计算机干预领域的基础性文献，凸显了适应性技术在儿童精神病学与特殊教育中的潜力。文章以PDF格式（11页，1.4 MB）收录于互联网档案馆的社区文本集中。

---

## 10. 福特在AI表现不佳后重新聘用“灰胡子”工程师

**原文标题**: Ford rehires 'gray beard' engineers after AI falls short

**原文链接**: [https://techcrunch.com/2026/06/28/ford-rehires-gray-beard-engineers-after-ai-falls-short/](https://techcrunch.com/2026/06/28/ford-rehires-gray-beard-engineers-after-ai-falls-short/)

福特汽车公司重新雇佣了350名资深工程师（被称为“灰胡子”工程师），此前公司发现过度依赖人工智能和自动化质量系统未能实现车辆生产的预期质量目标。公司首席运营官库马尔·加尔霍特拉解释道，自动化系统产出的结果令人失望，促使福特召回技术专家——包括前员工和供应商工人——在零部件进入工厂前识别故障点。

福特汽车硬件工程副总裁潘明光承认了这一失误：公司错误地认为仅凭输入设计需求的人工智能就能确保高品质产品。但这并不意味着福特将放弃人工智能；相反，这些被重新雇佣的工程师如今正在培训年轻员工，并协助重新编程人工智能工具以提升性能。

这一举措已初见成效：福特预计该项目今年将节省10亿美元成本。此外，在最新发布的J.D. Power（君迪）新车质量研究中，该汽车制造商在主流品牌中登顶。这篇最初由彭博社报道、经TechCrunch发布的文章，凸显了将人类专业经验与人工智能相结合——而非单纯依赖自动化——的价值。

---

## 11. 展示HN：NanoEuler – 从头用纯C/CUDA实现的GPT-2级别模型

**原文标题**: Show HN: NanoEuler – GPT-2 scale model in pure C/CUDA from scratch

**原文链接**: [https://github.com/JustVugg/nanoeuler](https://github.com/JustVugg/nanoeuler)

**NanoEuler** 是一款完全从零用C/CUDA构建的教育级GPT-2规模语言模型，不依赖PyTorch或其他机器学习库。它包含手写的前向/反向传播、字节级BPE分词器，以及完整的训练流程（涵盖在书籍/网络数据上的预训练和监督微调（SFT）以形成对话模型）。

该项目有两种配置：小型CPU模型（约100万参数）和单张RTX 4070训练的GPU模型（约1.16亿参数）。GPU引擎包含手写CUDA内核（FlashAttention、RMSNorm、RoPE、SwiGLU）与cuBLAS矩阵乘法，并通过全模型梯度检查验证。

架构以欧拉前向积分法命名（残差块作为ODE步骤），包括RMSNorm、RoPE、SwiGLU前馈、分组查询注意力和多令牌预测。受限于规模和数据量，模型能生成流利但浅显的英文。

对话流程展示端到端预训练→SFT功能（使用Alpaca数据），但结果并非强力助手——它展示正确回复格式但缺乏实质世界知识。未来计划包括DPO对齐和扩展至2.7亿参数。

---

## 12. 历史内存价格（1960-2026）

**原文标题**: Historical memory prices 1960-2026

**原文链接**: [https://dam.stanford.edu/memory-prices.html](https://dam.stanford.edu/memory-prices.html)

本文展示了一个交互式数据集，追踪了1960年至2026年内存与存储的历史及当前价格。其中包含多项可视化内容：DRAM、NAND闪存和HBM每GB价格随时间变化趋势；按代际划分的DRAM价格（从SDRAM至DDR5）；英伟达、AMD、谷歌和亚马逊AI加速器的成本分解；以及各代际HBM的价格。数据来源包括约翰·C·麦卡勒姆的经典数据集（DRAM历史数据）、Keepa亚马逊零售价格（2024年年中以来的DRAM和NAND数据）以及Epoch AI估算值（HBM与加速器成本）。关键说明如下：所列价格为以名义美元计价的零售最低价，而非合同价或通胀调整价；零售价往往反映的是生命周期末期的库存价格，而非前沿技术价格；HBM数据为稀少的行业估算值，而非公开交易价格。该数据集提供CSV格式下载，DRAM和NAND每月更新，HBM每季度更新。本项目由斯坦福大学的David Shim维护。

---

## 13. 检查航天飞机输入/输出处理器中的电路板

**原文标题**: Examining circuit boards from the Space Shuttle's I/O Processor

**原文链接**: [https://www.righto.com/2026/06/space-shuttle-io-processor-boards.html](https://www.righto.com/2026/06/space-shuttle-io-processor-boards.html)

**航天飞机I/O处理器电路板文章摘要**

本文研究了航天飞机输入/输出处理器（IOP）中的两块电路板（"页面"），该处理器负责连接CPU与航天飞机各系统。每台航天飞机计算机配备五台通用计算机，而IOP作为独立可编程计算机，其复杂度高于CPU。

**MIA（多路复用器接口适配器）页面**提供四个网络连接，每秒处理100万比特。它采用20世纪40年代发明的曼彻斯特编码，将航天飞机数据总线网络的模拟信号转换为数字信号，通过避免直流偏置确保可靠传输。该页面使用摩托罗拉定制芯片和混合模块进行模拟处理，并采用移位寄存器实现串并转换。

**PROM页面**以金银双色芯片存储IOP微码，通过熔断每个1比特对应的熔丝进行编程。IOP采用非传统架构：作为最早的多线程计算机之一，它在单一物理处理器上运行25个虚拟处理器（24个BCE用于网络I/O，1个MSC用于管理）。每个虚拟处理器运行一个时钟周期，从而确保可预测的网络性能。BCE与MSC使用不同的指令集，均以存储在PROM页面上的微码实现。

两块电路板均为9英寸×3英寸的铝合金板，布满大量返工飞线。它们属于为可靠性设计的坚固系统，采用冗余网络和变压器隔离连接。

---

## 14. Show HN：Zanagrams

**原文标题**: Show HN: Zanagrams

**原文链接**: [https://zanagrams.com/](https://zanagrams.com/)

**《Show HN：Zanagrams》简介**

Zanagrams是一款免费的每日单词拼图游戏。核心玩法是将一组打乱的字母重新排列成有效单词。与传统字谜只有一个正确答案不同，Zanagrams提供多种可能的解法，增加了可重玩性和深度。

界面设计简洁极简，专注于拼图本身。"Show HN"标签表明这是创作者在Hacker News上发布的产品。该帖子旨在收集用户反馈并建立初始用户群。

关键特点：
- **免费游玩**的每日拼图
- **多解法**字谜格式
- **简洁干净的UI**，无广告或复杂机制
- 目标用户：单词游戏爱好者和拼图爱好者
- 目的：提供比标准字谜游戏更灵活的每日烧脑挑战

---

## 15. 台杉，一种在其他树木上培育树木的日本技艺（2020）

**原文标题**: Daisugi, the Japanese technique of growing trees out of other trees (2020)

**原文链接**: [https://www.openculture.com/2020/10/daisugi.html](https://www.openculture.com/2020/10/daisugi.html)

这篇文章介绍了**台杉**——一种15世纪在日本京都发展起来的林业技术，以解决树苗和木材用地短缺的问题。该词字面意为“平台杉木”，其方法是从现有树干上培育出多根笔直向上的树木，形似张开的手掌。这项技术能防止森林砍伐，并产出**垂木**——用于传统日式茶室屋顶的完美笔直圆木。

在京都茶道大师千利休的影响下，这一技术得到了完善。利休对北山杉木的完美性要求极高，以满足16世纪流行的数寄屋建筑风格。台杉所产的木材品质显著优越：**柔韧性比普通杉木高140%**，**密度和强度高出200%**，因而成为椽木和屋顶木材的理想选择，并能抵御台风。600多年后的今天，该技术因其将盆景原理巧妙运用于林业而备受全球推崇。

---

## 16. 解决OpenAI Codex中排除敏感文件问题的方案仍未确定

**原文标题**: A way to exclude sensitive files issue still open for OpenAI Codex

**原文链接**: [https://github.com/openai/codex/issues/2847](https://github.com/openai/codex/issues/2847)

本文是针对OpenAI Codex代码库提交的GitHub Issue（编号2847），请求增加一项功能，用于排除敏感文件被读取或发送至AI模型。用户mkusaka希望建立一个确定且可共享的机制——类似于`.gitignore`文件——既能作用于仓库级别（如本地`.codexignore`文件），也能在全局范围内生效。

核心要点包括：
- **需求**：防止敏感数据泄露（如`.env`、`.pem`、`.ssh/`等文件），并排除大型/无关文件（如`node_modules/`），同时仍允许为实施检查而搜索这些文件。
- **可配置性**：该功能应在团队/仓库间可共享，支持用户默认配置，而非依赖项目文档或惯例。
- **背景**：引用了已关闭的相关Issue（#205），该Issue优先采用Rust实现（codex-rs），但截至2025年8月28日，codex-rs中尚不存在类似功能。
- **标签**：该Issue被标记为"增强功能"和"沙箱"（权限/沙箱化）。
- **贡献者**：作者表示愿意实施并测试该功能。

总结而言，该Issue呼吁重启关于Codex确定性文件排除功能的讨论，以防意外共享敏感或无关文件。

---

## 17. 《波兰消失字母S的奇异案例（2015）》

**原文标题**: The curious case of the disappearing Polish S (2015)

**原文链接**: [https://aresluna.org/the-curious-case-of-the-disappearing-polish-s/](https://aresluna.org/the-curious-case-of-the-disappearing-polish-s/)

**消失的波兰字母Ś之谜**

本文解释了Medium上一个阻止波兰用户输入字母“Ś”的怪异漏洞，其根本原因是四个无关的历史和技术因素相互冲突。

1.  **波兰语打字历史：** 波兰语使用拉丁字母，并附加九个变音符号字母（如Ś）。在早期打字机上，需通过基础字母加注音符号输入。
2.  **共产主义时代计算：** 由于进口限制，波兰使用标准美式键盘。一种事实标准应运而生：用户按**右Alt键**加拉丁字母来生成波兰语变音符号（例如，右Alt+S=Ś）。
3.  **旧习惯：** 按**Ctrl+S**保存文档成为普遍习惯。
4.  **Windows技术细节：** 在Windows中，**右Alt**在内部被映射为**Ctrl+Alt**。因此，键入Ś（右Alt+S）在技术上被系统解释为**Ctrl+Alt+S**。

Medium的代码中有一个阻止**Ctrl+S**的功能（以防止浏览器的保存对话框），但它没有检查Alt键。这意味着当波兰用户按下右Alt+S输入Ś时，Medium将其视为Ctrl+Alt+S，作为“保存”命令阻止，导致字母无法显示。

修复方法很简单：Medium更新了代码，仅在**未按下Alt键**时阻止**Ctrl+S**（`!e.altKey`），从而让波兰语变音符号正常通过。该文章凸显了以美国为中心的计算机惯例如何不经意间为其他语言用户制造问题。

---

## 18. YAGNI的成本从来就不是关于

**原文标题**: The cost YAGNI was never about

**原文链接**: [https://newsletter.kentbeck.com/p/the-cost-yagni-was-never-about](https://newsletter.kentbeck.com/p/the-cost-yagni-was-never-about)

**《YAGNI从未真正关乎成本》摘要**

肯特·贝克阐明，YAGNI（“你并不需要它”）并非节省编码工作量的规则，而是一项关于*投机性结构*成本的准则——即在需要某个特性的功能之前就提前编写代码。在人工智能能免费生成代码的当下，这一点更为重要。

贝克指出了过早构建代码的两项隐性成本：

1. **选择权成本**：在确切了解特性需求之前就确定结构，你会丧失日后构建正确方案的选择权。即便是正确的预测也会让你处境更糟，因为你已耗费了等待更优信息所需的“时间价值”。

2. **净现值成本**：将成本提前（过早构建）的同时将收益延后（推迟交付），会造成财务损失。即使你的预测完全准确，这一结论依然成立。

这两项成本都与敲击键盘编写代码的工作量无关。既然人工智能已让代码编写变得零成本，YAGNI反而变得*更加*重要，而非减弱。低成本生成代码更容易催生投机性结构，导致代码难以理解，并同时产生上述两项成本。

**核心要点**：在需要时再构建它。YAGNI是价格理论——等待的期权价值大于未动用的成本，现金流的时机比生产成本更重要。

---

## 19. 《MUMPS 76入门指南——周年纪念版》

**原文标题**: The MUMPS 76 Primer – anniversary edition

**原文链接**: [https://github.com/rochus-keller/MUMPS/blob/main/docs/MUMPS_Primer.adoc](https://github.com/rochus-keller/MUMPS/blob/main/docs/MUMPS_Primer.adoc)

以下是该文章的简明摘要：

本文介绍的是1976年的MUMPS编程语言，该系统最初于1966年在麻省总医院开发。MUMPS旨在极有限的硬件（如拥有8KB内存的PDP-7）上处理实时多用户医院数据。

其核心创新是**全局变量**（^），一种内置的分层持久化NoSQL数据库。这一系统早于无模式存储、有序键遍历及集成数据库等现代概念。

1976年标准被描述为简约而强大，仅包含19条命令、12个函数和7个特殊变量。

该语言的主要特点包括：
- **一切皆字符串：** 数字是看似数值的字符串，可自动转换。
- **无运算符优先级：** 所有二元运算符严格从左向右计算（例如`2+3*4=20`）。
- **面向行结构：** 空格具有语法意义；分号表示注释开始。
- **简洁命令：** 每条命令都有单字母缩写（如`S`代表`SET`）。

这本入门指南既可作为教程，也可作为这一历史性重要语言的快速参考。

---

## 20. Show HN：无DRM书籍

**原文标题**: Show HN: DRM-Free Books

**原文链接**: [https://frequal.com/Perspectives/DrmFreeAuthors.html](https://frequal.com/Perspectives/DrmFreeAuthors.html)

本文《Show HN：无DRM书籍指南》介绍了如何寻找不受数字版权管理（DRM）限制的电子书。文章首先列举了多位提供无DRM书籍的当代作家，包括**安德鲁·奥利弗**（悬疑类）、**蒂莫西·扎恩**（科幻类）和**凯西·埃泽尔**（奇幻类），并附有亚马逊、巴诺书店和Baen出版社的购买链接。这些书籍的样章可下载EPub和PDF格式。

随后，文章列出了更广泛的无DRM书籍资源：在亚马逊上，可寻找提供EPUB和PDF下载的商品；**TOR**出版社的所有书籍十余年来均无DRM；**Baen**出版社明确标注无DRM销售的书籍；作家**科利·多克托罗**的所有电子书均无DRM销售。

最后，文章指出版权过期的书籍自然无DRM，并引导读者前往**古登堡计划**和**标准电子书**网站，获取格式纯净、无DRM的经典公共领域作品。核心内容是为读者提供一份实用的清单，列出合法获取无DRM电子书的作家、出版商和平台。

---

## 21. Show HN：Bash4LLM+ – 一个轻量级、无依赖的LLM API Bash封装工具

**原文标题**: Show HN: Bash4LLM+ – A lightweight, dependency-free Bash wrapper for LLM APIs

**原文链接**: [https://github.com/kamaludu/bash4llm/](https://github.com/kamaludu/bash4llm/)

**Bash4LLM⁺ 概述**

Bash4LLM⁺ 是一个轻量级、无依赖的 Bash 封装程序，用于调用 LLM API，最初支持 Groq 的聊天补全 API，但可扩展至其他服务商。它是一个独立的、自包含且可审计的脚本，适用于类 Unix 系统（Linux、macOS、WSL、Android/Termux）。

**主要特性：**
- **动态模型列表**：通过 API 获取（无需硬编码模型）。
- **安全优先设计**：不使用 `/tmp`，无 `eval`，严格的权限控制及高级提供商验证。
- **流式与非流式**输出。
- **长输出自动保存**（可配置阈值）。
- **会话管理**：通过 `--session` 和 NDJSON 文件持久化上下文。
- **UI 状态系统**：暴露 JSON 元数据以集成 GUI/外部工具。
- **模块化结构**：支持可选扩展（额外提供商、模板、安全工具）。

**安装与使用：**
通过 `git clone` 和 `chmod +x` 快速安装。依赖 `bash`、`curl`、`jq` 及 `gawk`。支持直接提示、管道、文件输入、批处理及交互式聊天模式。

**配置：**
模型及参数可通过 CLI 标志、环境变量或配置文件设置。模型选择优先级：`--model` 参数 > 提供商特定配置 > 自动选择 > 白名单。

**安全与许可：**
不执行模型输出；提供商代码为安全目录下的可信代码。基于 GPL v3 协议发布。

**退出码与变量：**
错误时使用特定退出码（如 API 密钥缺失、网络故障）。关键变量包括 `GROQ_API_KEY`、`BASH4LLM_CONFIG_DIR` 及 `BASH4LLM_TMPDIR`。

---

## 22. 具有100万个p比特的可编程概率计算机

**原文标题**: Programmable Probabilistic Computer with 1M p-bits

**原文链接**: [https://arxiv.org/abs/2606.25313](https://arxiv.org/abs/2606.25313)

**摘要：**

本文提出了一种由百万个p比特构建的可编程概率计算机，通过将多个FPGA联网组成单一大规模伊辛机实现。该设计将所有耦合权重存储在本地，运行时仅需在设备间交换1比特边界状态，从而克服了单芯片系统的容量与内存带宽限制，实现了每秒超过一万亿次翻转的吉布斯采样。

核心贡献在于识别出分布式采样器的基础设计规则：比率η = f_comm / f_p-bit（边界交换频率与本地p比特更新频率之比）。当η超过拓扑相关阈值时，分布式机器的性能可与单片（非分区）GPU相媲美；低于该阈值时，残余能量呈幂律衰减但指数降低，揭示了分区随机动力学中固有的可量化吞吐量-精度权衡。理论集群平均场模型证实了该行为的普适性。

该机器已在自旋玻璃、最大割和布尔可满足性问题中得到验证，为概率计算机超越单芯片极限的规模化发展提供了量化路径。

---

## 23. 更多证据与火星上可能存在古生命相符（2025）

**原文标题**: More evidence is consistent with possible ancient life on Mars (2025)

**原文链接**: [https://www.cbc.ca/radio/quirks/more-evidence-of-life-on-mars-but-still-no-life-1.7649645](https://www.cbc.ca/radio/quirks/more-evidence-of-life-on-mars-but-still-no-life-1.7649645)

**摘要：**

鲍勃·麦克唐纳2025年的一篇文章探讨了美国宇航局“毅力号”火星车发现的最新间接证据，表明火星上可能存在远古生命。火星车在一个古老的河流三角洲发现了两种化学物质——蓝铁矿和硫复铁矿，在地球上它们通常与微生物活动相关，但也可通过非生物的化学反应形成。尽管这一发现激动人心，但并非确凿证据。

文章将这一发现置于反复出现虚假警报的历史背景中。1894年，天文学家珀西瓦尔·洛厄尔将火星表面特征误认为人工运河，暗示存在火星文明。1976年“海盗号”着陆器发现土壤反应模仿了微生物新陈代谢，但缺乏有机物，表明可能是化学过程。1996年，一块火星陨石(ALH84001)似乎含有微生物化石，但地球化学家认为非生物成因的可能性也存在。

麦克唐纳指出，更深层的希望在于：地球地壳深处数公里存在丰富的微生物生命，这些生命不依赖阳光。鉴于火星的永久冻土，其地壳深处可能存在液态水，从而可能孕育生命。文章总结道，未来的火星探索应侧重于向地表深处钻探，而非仅仅进行表层采样，并强调真正的证据可能需要抵达火星地下才能获得。

---

## 24. Show HN：Appaca – 面向运营者的AI工作空间

**原文标题**: Show HN: Appaca – AI Workspace for Operators

**原文链接**: [https://www.appaca.ai/](https://www.appaca.ai/)

**Appaca 简介**

Appaca 是一个专为业务运营者设计的 AI 驱动工作空间，无需编写代码即可构建自定义内部工具。用户描述工作流程需求，平台即可创建具备内置数据库、团队访问权限和 AI 能力的实用应用程序。

**主要功能：**
- 为 CRM、发票、报告和入职等运营流程构建应用程序
- 创建全天候工作的专用 AI 智能体（数字同事）
- 上传文档至共享知识库以获取上下文理解
- 通过 API 连接外部工具（Google Sheets、Slack、Notion 等）
- 设置自动化任务（例如每日 Slack 更新）
- 集成来自 OpenAI、Anthropic 和 Google 的 AI 模型

**按部门划分的使用场景：**
- 销售：潜在客户跟进、评分、提案生成
- 财务：发票处理、付款提醒、报告生成
- 市场营销：内容创作、活动简报、绩效报告
- 人力资源：职位描述、员工名录、入职流程
- 运营：报告生成、供应商跟踪、标准作业程序辅助
- 产品/工程：产品需求文档生成、反馈汇总、错误分类
- IT 支持：帮助台机器人、工单路由、访问请求

**定价：** 免费计划包含每月 100 个 AI 积分和一个应用程序。付费计划支持积分充值。

**差异化：** 与 Lovable、Replit 或 v0（用于交付面向客户的产品）不同，Appaca 专注于构建**运营内部工具**，用以支持业务运行，而非面向客户的软件。

---

## 25. 欧盟拟闭门立法监管聊天信息

**原文标题**: EU to legislate about Chat Control behind closed doors

**原文链接**: [https://www.patrick-breyer.de/en/double-threat-to-private-communications-undemocratic-chat-control-backroom-deals-and-imminent-concessions-spark-relaunch-of-fightchatcontrol-eu/](https://www.patrick-breyer.de/en/double-threat-to-private-communications-undemocratic-chat-control-backroom-deals-and-imminent-concessions-spark-relaunch-of-fightchatcontrol-eu/)

**摘要：**

民权活动家帕特里克·布雷耶博士警告称，在欧洲议会议长萝伯塔·梅措拉及欧盟各国政府的推动下，欧盟的安全通讯正面临“双重攻击”。两场关键会议已排定：周五的欧盟理事会会议及周一的立法三方谈判。

**威胁一（周五）：** 梅措拉正试图以不民主的手法强行复活“聊天管控1.0”——该项大规模扫描法规已于今年三月被欧洲议会明确否决。理事会可能通过一读立场来绕过此次否决。

**威胁二（周一）：** 关于永久性“聊天管控2.0”（2022/0155）的最终谈判存在作出致命让步的风险。欧洲议会正仓促推行新的扫描授权，可能导致：
- 大规模扫描私密信息（伪装成“自愿”或“风险减缓”措施）。
- 无需法院批准或犯罪嫌疑，即可强制执行检测命令。
- 强制年龄验证，终结匿名通讯。

作为回应，公民社会已重启 **fightchatcontrol.eu** 网站，使民众能向欧盟立法者发送邮件，要求其遵守基本权利及欧盟法院既有判例。布雷耶坚称，真正的儿童保护无需通过大规模监控实现，并敦促采取有针对性的调查及“安全设计”原则。

---

## 26. 《儿童互联网安全法案》要求上网需进行年龄验证

**原文标题**: The KIDS Act would require age checks to get online

**原文链接**: [https://www.eff.org/deeplinks/2026/06/kids-act-would-require-age-checks-get-online](https://www.eff.org/deeplinks/2026/06/kids-act-would-require-age-checks-get-online)

本文批评了国会正在快速推进的《儿童法案》（KIDS Act）——该立法方案将修订后的《儿童在线安全法案》（KOSA）与其他互联网法案合并。文章指出，尽管该法案声称不要求年龄验证，但实际上将强制所有用户进行年龄验证。核心要点包括：

- **年龄验证压力**：虽然KOSA表示不要求年龄验证，但它对“知道或应当知道”用户未满17岁的平台施加了义务。为避免法律责任，企业很可能实施严格的年龄核查（如身份证扫描或面部年龄估算），这些方法易出错且歧视少数群体。
- **言论自由风险**：法案迫使平台对广泛类别的合法言论（如关于成瘾、赌博或酒精的讨论）进行监管以规避责任，从而导致对未成年人和成年人的过度审查。
- **加密与隐私威胁**：监管私密和加密信息的条款，将迫使平台削弱加密功能或限制“阅后即焚”等特性，进而损害所有用户的隐私。
- **全民后果**：随着平台为合规采取限制措施，成年人也将面临年龄核查和隐私缩水。

文章呼吁读者敦促国会否决该法案，并将其定性为一项年龄监控与审查措施，危害所有年龄层用户的隐私、言论自由及安全通信。

---

## 27. 美国曾追求最顶尖的技术，如今我们却将其封禁。

**原文标题**: The US Used to Demand the Best Tech. Now We Ban It

**原文链接**: [https://www.pcmag.com/opinions/the-us-used-to-demand-the-best-tech-now-we-ban-it](https://www.pcmag.com/opinions/the-us-used-to-demand-the-best-tech-now-we-ban-it)

**总结：**

本文认为，美国已从历史上偏爱采用最佳可用技术（无论其来源）的立场，转向了禁止外国创新（尤其是来自中国）的保护主义立场。作者指出，此举损害了美国消费者的利益，压制了全球竞争，并削弱了美国自身的技术领先地位。

要点包括：
- **历史背景：** 美国机构和行业曾需要尖端工具（如日本半导体、欧洲光学设备）以保持竞争力，从而促进了全球创新。
- **当前转变：** 受国家安全担忧驱动，美国如今禁止中国科技产品（如华为、TikTok和先进芯片），而非与之竞争或合作。
- **后果：** 禁止外国技术限制了消费者选择，推高了成本，并减轻了美国公司的创新压力。这还使美国市场与全球研发生态系统隔绝。
- **讽刺之处：** 作者指出，中国反而采纳并改编美国技术（如操作系统、社交媒体功能），同时构建自身能力。

文章总结认为，采用“最佳技术胜出”的方法——并辅以严格的安全审查——比全面禁令更为可取。通过向所有来源要求卓越，美国可以在不牺牲开放性或消费者福利的情况下保持其优势。相反，当前的禁令可能导致“网络碎片化”，从而削弱美国的长期地位。

---

## 28. 密歇根州法案拟禁止雇主强制员工在非工作时间保持通讯

**原文标题**: Michigan bill would bar employers from requiring after-hours coms with workers

**原文链接**: [https://www.cbsnews.com/detroit/news/workplace-boundaries-act-employees-after-hours/](https://www.cbsnews.com/detroit/news/workplace-boundaries-act-employees-after-hours/)

密歇根州提出的第948号参议院法案《职场员工界限法案》将禁止雇主强制员工在非工作时间回复工作相关通讯（如邮件、短信或消息）。该法案由参议员埃里卡·盖斯发起，旨在保护员工免受"全天候经济"带来的压力——这种经济模式尤其对看护者造成不成比例的负担，并损害身心健康。

法案豁免情形包括涉及企业运营的州或联邦紧急情况消息。员工可在合同中协商待岗补偿，或设定具体可联系时段。违规行为将被提交至州劳动与经济机会部，企业可能面临罚款或需向员工支付加班费。法案分析指出，该部门需承担制定培训材料和处理投诉的行政成本。该立法已提交至劳工委员会审议。

---

## 29. 玛法公共广播伴你入眠

**原文标题**: Marfa Public Radio Puts You to Sleep

**原文链接**: [https://www.marfapublicradio.org/podcast/marfa-public-radio-puts-you-to-sleep](https://www.marfapublicradio.org/podcast/marfa-public-radio-puts-you-to-sleep)

**概要：**  
玛法公共广播电台（天气允许时24小时播出）发起了一项独特的秋季会员招募活动，名为《玛法公共广播电台伴你入眠》。该播客通过让电台工作人员朗读必要但枯燥的操作文件——例如FCC合规规则、NPR风格指南、1967年《公共广播法》以及《德克萨斯州行政法典》——旨在让听众安然入睡。  

这一创意幽默地承认，虽然他们无法完全解释运营电台所需的一切，但可以用无聊的内容让听众昏昏欲睡。活动目标是娱乐、放松身心，并最终鼓励捐款以支持电台的昼夜运行。  

页面列出了近期节目，包括主持人佐伊·库尔兰、卡洛斯、朱莉、特拉维斯·波普等人朗读的内容，涵盖2025年《拨款撤销法案》、《晨间版》历史、塔台法规、知识共享许可协议及暗夜条例等话题。听众可访问marfapublicradio.org/donate捐款，帮助电台保持清醒，并制作更多“无聊”内容。

---

## 30. Linux 干掉 Strncpy

**原文标题**: Linux Kills Strncpy

**原文链接**: [https://smist08.wordpress.com/2026/06/25/linux-kills-strncpy/](https://smist08.wordpress.com/2026/06/25/linux-kills-strncpy/)

本文探讨了Linux内核为消除代码中不安全的`strncpy()`函数而付出的长期努力，并用更安全、更清晰的替代方案取而代之。

**关键要点：**

1.  **问题根源：** 原始`strcpy()`函数因未限制拷贝长度而存在危险，易导致缓冲区溢出和安全漏洞。最初的修复方案`strncpy()`又引入了新问题：当源字符串过长时，它无法保证目标字符串以空字符结尾，且始终用空字符填充未使用的字节，造成性能浪费。程序员常常忘记手动添加终止符或误算缓冲区大小。

2.  **解决方案：** 经过六年时间与超过360个补丁的修改，内核已移除所有`strncpy()`的使用。取而代之的是一组语义更清晰的函数，将字符串终止与缓冲区填充分离开来。

3.  **核心替代函数：**
    - **`strscpy()`** 是主要替代方案。它会将字符串拷贝至目标位置，始终保证空字符结尾（若目标大小非零），且不填充缓冲区。
    - **`strscpy_pad()`** 在需要时明确添加对未使用空间的零填充。
    - 其他函数如`strtomem_pad()`和`memcpy_and_pad()`则明确了目标是字符串还是原始内存。

4.  **总结：** 此次改动通过使代码意图更清晰、消除不必要的工作（如空字符填充），提升了内核的安全性与效率。这凸显了优秀API设计的重要性，即便是C语言字符串函数这类历史悠久的库也不例外。

---

