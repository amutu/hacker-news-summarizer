# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-06-28.md)

*最后自动更新时间: 2026-06-28 20:33:13*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 2 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 3 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 4 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 5 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 6 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 7 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 8 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 9 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 10 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 11 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 12 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 13 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 14 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 15 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 16 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 17 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 18 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 19 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 20 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 21 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 22 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 23 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 24 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 25 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 26 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 27 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 28 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 29 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 30 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 31 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 32 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 33 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 34 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 35 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 36 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 37 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 38 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 39 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 40 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 41 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 42 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 43 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 44 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 45 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 46 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 47 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 48 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 49 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 50 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 51 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 52 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 53 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 54 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 55 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 56 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 57 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 58 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 59 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 60 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 61 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 62 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 63 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 64 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 65 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 66 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 67 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 68 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 69 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 70 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 71 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 72 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 73 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 74 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 75 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 76 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 77 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 78 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 79 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 80 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 81 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 82 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 83 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 84 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 85 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 86 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 87 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 88 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 89 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 90 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 91 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 92 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 93 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 94 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 95 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 96 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 97 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 98 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 99 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 100 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 101 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 102 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 103 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 104 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 105 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 106 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 107 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 108 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 109 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 110 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 111 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 112 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 113 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 114 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 115 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 116 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 117 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 118 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 119 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 120 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 121 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 122 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 123 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 124 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 125 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 126 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 127 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 128 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 129 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 130 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 131 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 132 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 133 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 134 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 135 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 136 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 137 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 138 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 139 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 140 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 141 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 142 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 143 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 144 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 145 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 146 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 147 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 148 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 149 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 150 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 151 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 152 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 153 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 154 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 155 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 156 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 157 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 158 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 159 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 160 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 161 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 162 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 163 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 164 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 165 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 166 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 167 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 168 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 169 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 170 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 171 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 172 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 173 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 174 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 175 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 176 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 177 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 178 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 179 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 180 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 181 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 182 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 183 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 184 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 185 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 186 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 187 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 188 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 189 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 190 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 191 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 192 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 193 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 194 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 195 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 196 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 197 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 198 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 199 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 200 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 201 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 202 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 203 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 204 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 205 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 206 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 207 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 208 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 209 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 210 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 211 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 212 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 213 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 214 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 215 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 216 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 217 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 218 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 219 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 220 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 221 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 222 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 223 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 224 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 225 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 226 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 227 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 228 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 229 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 230 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 231 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 232 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 233 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 234 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 235 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 236 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 237 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 238 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 239 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 240 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 241 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 242 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 243 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 244 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 245 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 246 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 247 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 248 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 249 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 250 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 251 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 252 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 253 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 254 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 255 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 256 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 257 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 258 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 259 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 260 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 261 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 262 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 263 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 264 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 265 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 266 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 267 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 268 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 269 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 270 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 271 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 272 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 273 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 274 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 275 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 276 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 277 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 278 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 279 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 280 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 281 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 282 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 283 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 284 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 285 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 286 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 287 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 288 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 289 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 290 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 291 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 292 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 293 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 294 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 295 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 296 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 297 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 298 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 299 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 300 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 301 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 302 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 303 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 304 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 305 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 306 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 307 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 308 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 309 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 310 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 311 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 312 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 313 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 314 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 315 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 316 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 317 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 318 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 319 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 320 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 321 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 322 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 323 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 324 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 325 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 326 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 327 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 328 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 329 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 330 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 331 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 332 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 333 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 334 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 335 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 336 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 337 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 338 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 339 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 340 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 341 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 342 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 343 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 344 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 345 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 346 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 347 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 348 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 349 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 350 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 351 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 352 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 353 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 354 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 355 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 356 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 357 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 358 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 359 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 360 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 361 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 362 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 363 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 364 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 365 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 366 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 367 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 368 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 369 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 370 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 371 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 372 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 373 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 374 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 375 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 376 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 377 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 378 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 379 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 380 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 381 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 382 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 383 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 384 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 385 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 386 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 387 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 388 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 389 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 390 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 391 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 392 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 393 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 394 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 395 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 396 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 397 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 398 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 399 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 400 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 401 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 402 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 403 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 404 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 405 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 406 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 407 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 408 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 409 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 410 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 411 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 412 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 413 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 414 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 415 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 416 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 417 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 418 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 419 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 420 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 421 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 422 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 423 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 424 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 425 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 426 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 427 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 428 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 429 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 430 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 431 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 432 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 433 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 434 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 435 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 436 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 437 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 438 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 439 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 440 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 441 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 442 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 443 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 444 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 445 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 446 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 447 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 448 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 449 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 450 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 451 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 452 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 453 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 454 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 455 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 456 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 457 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 458 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 459 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 460 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 461 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 462 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 463 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
