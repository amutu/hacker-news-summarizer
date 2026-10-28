# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-10-29.md)

*最后自动更新时间: 2026-10-29 04:58:17*
## 1. 这个指纹识别脚本为何"制造生物武器"？

**原文标题**: Why Is This Fingerprinting Script Creating Bioweapons?

**原文链接**: [https://nullpt.rs/fingerprinting-bioweapons](https://nullpt.rs/fingerprinting-bioweapons)

摘要：安全研究员veritas爬取Tranco Top 10000站点，用Playwright拦截Canvas指纹调用，收集到1033个不同厂商的指纹画布并发布于fingerprint.garden。其中一个来自servicepipe.tech的脚本格外引人注目：其函数名故意使用"计算蓖麻毒素致命剂量""计算致死性阿司匹林自杀剂量""计算CRISPR基因驱动扩散率"等词汇，字符串中还藏有经Unicode加密的"系统提示词越狱"内容，涵盖DDoS攻击、生物武器、毒品合成，甚至针对中文模型的审查规避词。这些均非真实恶意代码，而是一种"反LLM混淆"策略——通过触发大模型安全过滤器，阻止AI辅助完成反混淆。作者尝试Astra、Daybreak Blue等模型均被拒绝，GLM-5.3则放行。去掉外层伪装后，脚本本体仅为常规反爬虫指纹采集，收集navigator属性、WebGL渲染器信息等，防护水平与混淆复杂度极不匹配。溯源发现servicepipe.tech关联俄罗斯公司servicepipe.ru，主营DDoS防护与流量控制。作者计划持续跟踪脚本更新并追踪新型指纹识别API。

---

## 2. 双子座4 Carbon：谷歌最强前沿模型

**原文标题**: Gemini 4 Carbon

**原文链接**: [https://blog.google/innovation-and-ai/models-and-research/gemini-models/introducing-gemini-4-carbon/](https://blog.google/innovation-and-ai/models-and-research/gemini-models/introducing-gemini-4-carbon/)

2026年10月28日，Google DeepMind正式发布最新前沿模型——双子座4 Carbon。该模型在AI智能指数v5.0中位列第一（59分），在编程、智能体及网络安全领域取得显著突破。网络安全是Carbon的核心亮点：漏洞发现（SEC-bench Pro）达88.2%，漏洞利用验证（ExploitGym）达54.8%，漏洞修复（CWE-bench）达71.0%，均创行业最佳。Chrome团队反馈其生成高质量补丁的性能超其他实验室大模型10倍以上，Wiz平台亦确认其在Web渗透测试中领先。安全对齐方面，作弊率降至0%，提示注入攻击成功率降至0%，虚假信息减少约50%，多步任务执行更精准可靠。定价与两周前发布的Argon一致：输入每百万token 2美元，输出10美元。Google正参与美国政府的预发布模型自愿测试，本周起先向部分网络安全防御者开放，后续逐步向开发者、企业及消费者推出。

---

## 3. CNC数控石雕

**原文标题**: CNC Stone Carving

**原文链接**: [https://carmelitegothic.com/cnc-stone-carving/](https://carmelitegothic.com/cnc-stone-carving/)

摘要：本文介绍怀俄明州卡梅尔修道院修士利用CNC（计算机数控）技术进行哥特式教堂石雕的实践。文章指出，中世纪石匠始终站在当时技术前沿，以现代科技延续哥特建筑并非突兀之举。CNC石雕机以金刚石刀具在5至6个自由轴上协同运动，逐层磨蚀石材，较手工雕刻将数月工期缩短至数日，且可昼夜无人值守运行，40小时工作量仅需两天完成。修道院选用意大利Prussiani工程公司的石雕CNC设备，该品牌以"几乎不可摧毁"著称——文中讲述一次因代码错误致机器在已完成的窗台上反复下压、数百磅石块碎裂飞溅，但机器仍服役近十年的故事。雕刻遵循完整的数字工作流：艺术家在三维软件中雕刻花卉与雕像，兼具无限"撤销"与整体预览优势；程序员将模型导入CAM软件生成刀具路径，兼顾刀具选择、工件固定与避碰等要素；锯切工则负责操作CNC及线锯、桥式锯，将粗坯切分后再由五轴机精雕。文章强调，尽管青年一代不谙锤凿，但其数字技能可被引导至为上帝建造教堂的崇高事业，而气动凿与手工雕凿仍不可或缺，二者相辅相成，共同成就可矗立数百年的哥特杰作。

---

## 4. 配备 PROLED XDR 显示屏与触控功能的全新 MacBook Pro

**原文标题**: MacBook Pro with PROLED XDR Display and Touch

**原文链接**: [https://www.apple.com/macbook-pro/proled-xdr-display/](https://www.apple.com/macbook-pro/proled-xdr-display/)

苹果发布全新 MacBook Pro，11 月 6 日起接受预订，主打 PROLED XDR 叠层 OLED 显示屏与全新触控功能。该屏幕峰值亮度达 2000 尼特，对比度 1000 万:1，覆盖 P3 与 Adobe RGB 双广色域，支持 10–120Hz ProMotion 自适应刷新率。触控传感器直接嵌入面板内部，支持滚动、缩放、绘制等手势，适配 3D 建模、音乐制作等专业场景。灵动岛整合 Spotlight 搜索、灵动活动与 Siri AI 助手。芯片方面搭载 M5 Pro 与 M5 Max，性能较上代分别提升最高 10.9 倍和 12 倍，M5 Max 配备最高 40 核 GPU、128GB 统一内存及最高 16TB 存储。机身更轻薄，14 英寸仅 3.0 磅、16 英寸 4.0 磅，提供深空黑与银色两种配色。此外配有六扬声器、1200 万像素 Center Stage 摄像头、三个雷雳 5 端口、HDMI、Wi-Fi 7 及蓝牙 6，电池续航最长 24 小时。用户还可选择 24 或 36 个月租赁方案，到期续升新款。

---

## 5. DAYJOB：税务——50项专业税务任务的AI代理评测

**原文标题**: Dayjob: Tax – evaluating AI agents on 50 professional tax assignments

**原文链接**: [https://surgehq.ai/blog/dayjob-tax](https://surgehq.ai/blog/dayjob-tax)

Surge AI推出DAYJOB: Tax基准测试，评估AI代理在50项专业税务任务中的综合表现，涵盖个人及家庭税务、合伙、不动产与投资、遗产信托、国际税务、公司交易及税务争议等八大领域，包含1789个工作区文件。任务要求代理在信息不完整、证据 conflicting 的条件下行使专业判断，而非仅完成指定计算。Leaderboard显示Claude Sonnet 5.5以10.8%通过率领先，但整体仍远低于专业标准。文章以两例揭示代理缺陷：判断卖房时间是否符合税务豁免时，AI正确评估了提案日期却遗漏资格到期的关键截止；建议夫妻分割退休账户时，Opus基于"非婚"这一未经核实假设给出方案，而文件中已有证据足以触发婚姻状态核查。与TaxBench、TaxCalcBench、TaxLab等已有基准侧重回答问题或完成计算不同，DAYJOB: Tax强调端到端的专业责任——代理须自行发现后果性问题、评估冲突证据并交付完整成果。任务由PwC、Deloitte等机构的资深税务专家设计，经正确性、完整性、可解性三层审核。结论指出，前沿模型虽能完成单步操作，但在真实税务工作流中持续行使专业判断仍远超其能力。

---

## 6. 工厂级机器人The Grid：马萨诸塞州按需生产PCB

**原文标题**: The Grid, a factory-scale robot in Massachusetts that builds PCBs on demand

**原文链接**: [https://www.circuithub.com/post/unveiling-the-grid](https://www.circuithub.com/post/unveiling-the-grid)

CircuitHub正式公布其工厂级机器人"The Grid"，位于马萨诸塞州，可按需生产印制电路板。过去30年电子制造业因劳动力成本外迁，自动化又主要服务于大批量，高混合、小批量需求长期难以解决。The Grid并非固定流水线，而是一台大型机器人，由悬浮传输器在锡膏印刷、贴片、回流焊、检测等工位间独立运送每块板，借助AI与经典优化器调度，实现零换型、零设置，100种不同设计的效率等同于单一设计。客户已涵盖头部电动车企、AI实验室及知名科技公司。以4层电机控制器（118个元件、5块）为例，The Grid 4天交付、报价630美元；深圳快交工厂约465美元但含运费关税需9天，多花165美元可提前5天收货。The Grid已运营五年，年产能达数千万美元，CircuitHub累计交付超220万块板、放置逾1.5亿个元件、服务2.6万工程师。公司计划今年产能扩大五倍，2027年再大幅跃升，终极目标是让硬件制造速度匹配设计速度，重建西方电子供应链。

---

## 7. 动手学图论

**原文标题**: Start Doing Graph Theory

**原文链接**: [https://vertex.degree/](https://vertex.degree/)

《动手学图论》是 Mikhail Lavrov 撰写的一本图论入门教材，旨在引导读者运用图论知识解决谜题、证明定理及处理相关问题，内容涵盖从基础概念到实际应用的广泛主题。全书以循序渐进的方式展开，适合初学者阅读。该书采用知识共享（CC BY-SA 4.0）许可协议，完全免费开放，读者既可在线阅读，也可下载 PDF 文件离线学习。书中设有完整目录，包括各章节正文、教材简介、作者简介及版本历史记录，方便读者按需查阅。该书最新版本为 2025 年版，由作者 Mikhail Lavrov 版权所有。整体而言，这是一本兼具趣味性与学术性的图论导读书籍，通过丰富的实例与练习，帮助读者从基础概念出发，逐步掌握图论的核心思想与解题方法。

---

## 8. Alphabet公布2026年第三季度业绩

**原文标题**: Alphabet Announces Third Quarter 2026 Results [pdf]

**原文链接**: [https://s206.q4cdn.com/479360582/files/doc_financials/2026/q3/2026q3-alphabet-earnings-release.pdf](https://s206.q4cdn.com/479360582/files/doc_financials/2026/q3/2026q3-alphabet-earnings-release.pdf)

摘要：本文为Alphabet Inc.（股票代码：GOOG）2026年第三季度业绩公告（Exhibit 99.1），于2026年10月28日发布，全文共九页。报告主要内容包括：公司整体业绩概览，涵盖营业收入、经营利润及净利润等核心财务指标；各业务板块（Google搜索及其他谷歌服务、YouTube广告、Google订阅/平台/设备、Google Cloud及其他）的收入与利润表现；以及GAAP口径收入向非GAAP恒定汇率收入的调节对账，以消除汇率波动影响，便于投资者评估公司真实经营增长。该文件以PDF格式呈现，采用英文撰写，由Workiva平台生成并经Fidelity Content Translations处理，属于Alphabet向美国证券交易委员会（SEC）提交的季度报告（Form 10-Q）附件，供投资者及分析师查阅公司当季财务与运营情况。

---

## 9. AlpineBSD操作系统简介

**原文标题**: AlpineBSD

**原文链接**: [https://wiki.alpinebsd.org](https://wiki.alpinebsd.org)

AlpineBSD是一个基于NetBSD内核、用户空间受Alpine Linux启发的操作系统，核心理念是尽量减少AI生成软件的使用，基础系统与主仓库中不包含任何大语言模型输出内容。该系统仍在开发中，暂无正式安装程序，但提供了面向高阶用户的简易安装指南。硬件兼容性方面，AlpineBSD沿用NetBSD内核及libc等平台工具，但NetBSD硬件支持远不及Linux，尤其笔记本兼容性有限，用户需提前查阅NetBSD硬件支持列表。与Alpine Linux相比，AlpineBSD同样采用apk-tools包管理器和busybox，但用户空间更偏GNU风格（如优先使用GNU make而非BSD make）；AlpineBSD并非Alpine Linux的分支，其软件包集合为原创，虽多源于aports。初始化系统方面，Alpine Linux使用OpenRC，而AlpineBSD目前采用s6，并计划将OpenRC作为备选方案加入。

---

## 10. Apple 的 git 仍信任已被攻陷的 eMudhra 证书

**原文标题**: Apple's git still trusts the compromised eMudhra certificates

**原文链接**: [https://emudhra.we-have-a-problem.com/apple.html](https://emudhra.we-have-a-problem.com/apple.html)

Apple 已于10月17日获知 eMudhra 证书被攻陷事件，但截至10月28日，macOS 自带的 git、curl 及 python3 等开发者工具仍信任相关受损证书，未予处理。10月26日发布的 macOS 27.2 不仅未修复该问题，还撤销了用户此前手动添加的临时补丁，使系统再次暴露于风险中，而数十个开源项目早已完成修复。

这意味所有 HTTPS 连接均可遭中间人攻击：git 克隆与推送可被篡改，GitHub 令牌等凭据可被截获。文章提供了检测命令及模拟攻击演示，供开发者验证自身是否受影响；curl 与 python3 存在同等漏洞。Apple 已修复 Safari 等应用，但开发者工具尚未处理。文章建议 Apple 尽快从系统证书库中移除受损根证书。在官方修复前，开发者应手动移除相关证书，并注意系统更新可能回滚该修复，每次更新后须重新验证。安全团队还应评估 CI/CD 中 macOS 运行器面临的供应链风险。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 2 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 3 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 4 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 5 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 6 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 7 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 8 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 9 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 10 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 11 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 12 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 13 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 14 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 15 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 16 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 17 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 18 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 19 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 20 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 21 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 22 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 23 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 24 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 25 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 26 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 27 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 28 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 29 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 30 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 31 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 32 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 33 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 34 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 35 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 36 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 37 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 38 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 39 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 40 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 41 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 42 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 43 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 44 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 45 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 46 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 47 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 48 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 49 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 50 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 51 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 52 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 53 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 54 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 55 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 56 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 57 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 58 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 59 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 60 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 61 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 62 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 63 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 64 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 65 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 66 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 67 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 68 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 69 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 70 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 71 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 72 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 73 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 74 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 75 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 76 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 77 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 78 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 79 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 80 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 81 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 82 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 83 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 84 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 85 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 86 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 87 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 88 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 89 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 90 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 91 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 92 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 93 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 94 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 95 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 96 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 97 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 98 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 99 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 100 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 101 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 102 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 103 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 104 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 105 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 106 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 107 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 108 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 109 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 110 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 111 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 112 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 113 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 114 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 115 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 116 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 117 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 118 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 119 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 120 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 121 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 122 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 123 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 124 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 125 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 126 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 127 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 128 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 129 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 130 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 131 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 132 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 133 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 134 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 135 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 136 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 137 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 138 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 139 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 140 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 141 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 142 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 143 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 144 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 145 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 146 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 147 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 148 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 149 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 150 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 151 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 152 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 153 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 154 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 155 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 156 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 157 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 158 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 159 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 160 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 161 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 162 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 163 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 164 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 165 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 166 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 167 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 168 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 169 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 170 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 171 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 172 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 173 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 174 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 175 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 176 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 177 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 178 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 179 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 180 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 181 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 182 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 183 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 184 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 185 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 186 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 187 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 188 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 189 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 190 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 191 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 192 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 193 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 194 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 195 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 196 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 197 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 198 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 199 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 200 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 201 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 202 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 203 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 204 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 205 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 206 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 207 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 208 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 209 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 210 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 211 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 212 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 213 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 214 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 215 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 216 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 217 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 218 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 219 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 220 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 221 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 222 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 223 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 224 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 225 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 226 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 227 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 228 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 229 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 230 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 231 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 232 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 233 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 234 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 235 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 236 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 237 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 238 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 239 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 240 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 241 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 242 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 243 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 244 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 245 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 246 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 247 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 248 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 249 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 250 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 251 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 252 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 253 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 254 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 255 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 256 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 257 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 258 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 259 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 260 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 261 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 262 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 263 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 264 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 265 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 266 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 267 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 268 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 269 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 270 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 271 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 272 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 273 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 274 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 275 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 276 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 277 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 278 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 279 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 280 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 281 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 282 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 283 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 284 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 285 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 286 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 287 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 288 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 289 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 290 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 291 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 292 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 293 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 294 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 295 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 296 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 297 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 298 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 299 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 300 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 301 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 302 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 303 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 304 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 305 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 306 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 307 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 308 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 309 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 310 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 311 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 312 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 313 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 314 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 315 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 316 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 317 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 318 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 319 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 320 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 321 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 322 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 323 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 324 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 325 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 326 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 327 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 328 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 329 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 330 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 331 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 332 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 333 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 334 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 335 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 336 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 337 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 338 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 339 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 340 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 341 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 342 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 343 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 344 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 345 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 346 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 347 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 348 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 349 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 350 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 351 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 352 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 353 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 354 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 355 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 356 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 357 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 358 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 359 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 360 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 361 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 362 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 363 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 364 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 365 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 366 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 367 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 368 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 369 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 370 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 371 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 372 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 373 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 374 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 375 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 376 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 377 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 378 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 379 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 380 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 381 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 382 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 383 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 384 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 385 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 386 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 387 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 388 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 389 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 390 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 391 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 392 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 393 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 394 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 395 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 396 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 397 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 398 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 399 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 400 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 401 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 402 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 403 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 404 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 405 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 406 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 407 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 408 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 409 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 410 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 411 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 412 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 413 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 414 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 415 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 416 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 417 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 418 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 419 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 420 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 421 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 422 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 423 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 424 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 425 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 426 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 427 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 428 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 429 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 430 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 431 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 432 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 433 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 434 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 435 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 436 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 437 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 438 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 439 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 440 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 441 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 442 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 443 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 444 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 445 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 446 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 447 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 448 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 449 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 450 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 451 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 452 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 453 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 454 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 455 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 456 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 457 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 458 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 459 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 460 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 461 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 462 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 463 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 464 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 465 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 466 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 467 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 468 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 469 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 470 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 471 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 472 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 473 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 474 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 475 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 476 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 477 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 478 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 479 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 480 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 481 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 482 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 483 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 484 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 485 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 486 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 487 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 488 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 489 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 490 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 491 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 492 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 493 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 494 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 495 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 496 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 497 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 498 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 499 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 500 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 501 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 502 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 503 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 504 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 505 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 506 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 507 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 508 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 509 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 510 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 511 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 512 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 513 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 514 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 515 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 516 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 517 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 518 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 519 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 520 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 521 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 522 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 523 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 524 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 525 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 526 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 527 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 528 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 529 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 530 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 531 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 532 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 533 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 534 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 535 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 536 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 537 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 538 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 539 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 540 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 541 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 542 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 543 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 544 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 545 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 546 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 547 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 548 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 549 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 550 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 551 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 552 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 553 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 554 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 555 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 556 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 557 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 558 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 559 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 560 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 561 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 562 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 563 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 564 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 565 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 566 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 567 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 568 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 569 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 570 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 571 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 572 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 573 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 574 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 575 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 576 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 577 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 578 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 579 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 580 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 581 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 582 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 583 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 584 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
