# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-06-27.md)

*最后自动更新时间: 2026-06-27 20:33:44*
## 1. 匿名GitHub账户批量披露未公开零日漏洞

**原文标题**: Anonymous GitHub account mass-dropping undisclosed 0-days

**原文链接**: [https://github.com/bikini/exploitarium](https://github.com/bikini/exploitarium)

**摘要：** 一名GitHub用户（“ashdfrkl”）正在大规模发布未公开零日漏洞的概念验证（PoC）利用代码，并将其整合至名为“Exploitarium”的单一仓库中。该仓库既收录了此前独立存在的PoC仓库（通过Git树验证保留），也包含新直接提交的条目。所披露的漏洞影响范围涵盖众多流行软件，包括7-Zip、AnyDesk、c-ares、Docker、Firefox、Floci API Gateway、Flowise、FFmpeg、Ghidra、Gitea、ImageMagick、libssh2、Lunar Modrinth、MyBB、nghttp2、Nmap、objdump、OpenVPN Connect、PHP、RustDesk、System Informer及VLC。用户利用Git Blob ID验证合并文件的完整性，声称在来自12个仓库的96个追踪条目中未发现任何差异。作者声明此为“善意、公开披露的漏洞研究”，并明确禁止恶意使用，将网络犯罪标签为“可耻行为”。其通过Discord邀请合作。该仓库包含严肃的安全研究成果，但作者的意图是公开分享发现以激发对网络安全的兴趣，而非助长攻击。

---

## 2. IP爬取：公共互联网上发现的开放网络摄像头的实时图谱

**原文标题**: IP Crawl: living atlas of open webcams discovered on the public internet

**原文链接**: [https://ipcrawl.com/](https://ipcrawl.com/)

无法访问文章链接。

---

## 3. 人工智能正在设计人类无法想象的无线电芯片

**原文标题**: AI Is Designing Radio Chips That Humans Couldn't Even Imagine

**原文链接**: [https://spectrum.ieee.org/ai-radio-chip-design](https://spectrum.ieee.org/ai-radio-chip-design)

**摘要：**

文章探讨了人工智能如何彻底改变射频集成电路的设计，这类芯片对于5G、自动驾驶汽车和卫星通信等无线技术至关重要。传统上，射频集成电路设计是一项复杂的“黑暗艺术”，需要人类多年的专业经验，涉及电磁学、热力学和力学之间错综复杂的权衡。这种人工流程缓慢、成本高昂，且限制了创新。

由考希克·森古普塔领导的普林斯顿大学研究人员开发了基于人工智能的方法，特别是强化学习和逆向设计，以从零开始创建射频集成电路——无需依赖现有的人工设计模板。与传统优化不同，这种方法允许算法自主确定架构、电路拓扑和电磁结构。人工智能通过生成和评估无数候选组合来探索设计空间，并从自身的成功与失败中学习，类似于AlphaGo Zero掌握围棋的方式。

结果令人瞩目：人工智能设计的芯片通常看起来像抽象艺术，但性能超越最先进的人工设计，而开发时间却减少数个数量级。这一突破可能彻底改变射频集成电路设计，加速下一代无线技术的进步。然而，未来的发展依赖于创建大规模共享数据集和开放生态系统，以使人工智能能够学习通用的电磁和电路行为。

---

## 4. OpenRA

**原文标题**: OpenRA

**原文链接**: [https://www.openra.net/](https://www.openra.net/)

OpenRA发布了新的试玩版（playtest-20260222），主打《红色警戒》《泰伯利亚黎明》和《沙丘2000》的全新随机地图生成器。这些生成器允许玩家在遭遇战和多人在线模式中选择生物群落、玩家数量、对称性和资源。

《沙丘2000》迎来重大更新：声波坦克和受损建筑新增视觉效果，期待已久的星港"批量购买"逻辑，社区主导的遭遇战/多人对战平衡性调整，以及单人战役难度优化。

《泰伯利亚黎明》独立高清模组（使用《命令与征服：重制版》素材）现已功能完备，为所有自定义资产提供高清像素贴图，并新增内容管理器用于切换重制版与经典版的美术、音频和音乐。与核心OpenRA的整合计划于下个版本实现。

本次更新还利好地图制作者：改进UI并新增"路径铺设"工具用于放置悬崖、海滩和道路。其他改动包括全新的"其他RTS"鼠标输入模式、任务/遭遇战定时自动存档、AI扩展基地建造、本地化进展，《红色警戒》和《泰伯利亚黎明》新增任务，以及多项漏洞修复和性能优化。

---

## 5. DSpark：推测性解码加速LLM推理 [pdf]

**原文标题**: DSpark: Speculative decoding accelerates LLM inference [pdf]

**原文链接**: [https://github.com/deepseek-ai/DeepSpec/blob/main/DSpark_paper.pdf](https://github.com/deepseek-ai/DeepSpec/blob/main/DSpark_paper.pdf)

基于所提供的元数据，文章《DSpark：推测解码加速大语言模型推理》是DeepSeek-AI的研究论文，托管于GitHub仓库`deepseek-ai/DeepSpec`。

尽管因加载错误无法获取706KB PDF的完整内容，但标题与上下文揭示了核心主题：**推测解码**，用于加速大语言模型（LLM）推理。

**要点总结：**

- **核心技术：** DSpark提出了一种推测解码框架，该方法利用更小、更快的“草稿”模型预测多个未来令牌，并由更大、更精确的“目标”模型并行验证这些草稿，从而加速LLM推理。
- **目标：** 主要目标是降低LLM推理延迟并提升吞吐量，在不牺牲输出质量的前提下，使模型部署更高效、成本更低。
- **实现：** 代码与论文托管于DeepSeek-AI的DeepSpec项目GitHub页面，表明这是一项聚焦于优化推理流程的实用开源研究贡献。
- **重要性：** 推测解码是LLM优化的关键领域，因为它允许大模型比传统自回归解码（需逐个处理令牌）更快生成文本。DSpark可能在草稿模型生成或验证过程中引入特定创新，以实现更高的加速比或更好的精度保持。

本质上，DSpark通过结合快速起草器与并行验证器，提出了一种加速LLM输出的高效方法，解决了实时AI应用中的关键瓶颈。

---

## 6. 将你的网站变成一个让人不期而遇的地方

**原文标题**: Turn your site into a place people can bump into each other

**原文链接**: [https://cauenapier.com/blog/townsquare_release/](https://cauenapier.com/blog/townsquare_release/)

文章介绍了一个名为“小镇广场”的轻量级开源网络实验项目，它能在网站上添加一个由火柴人组成的社会动态条，显示当前正在浏览该页面的其他访问者。该项目由作者创建，旨在恢复早期网络那种真实人类存在感，而无需现代社交网络的负担。

**核心特点：**
- 无需账户、个人资料、关注人数或永久聊天记录。
- 消息仅在使用者在线时存在。
- 访客可以看到其他人在阅读哪个页面，可以四处走动，并发送临时消息。

**获取方式：**
- 在GitHub上开源，可自行托管。
- 提供公共服务器，注册网站后即可轻松集成，无需自行托管。

**未来构想：**
- 改进聊天用户体验，添加互动道具。
- 实现不同网站“小镇广场”之间的“邻居”连接，形成去中心化的网络环状网络。

该项目有意保持小巧且注重遗忘的特性，旨在让网站感觉像社交“场所”，而非静态页面。作者欢迎通过电子邮件提供反馈和贡献。

---

## 7. 尽管遭受袭击，船只仍持续通过霍尔木兹海峡

**原文标题**: Ships keep moving through Hormuz despite strike

**原文链接**: [https://www.lloydslist.com/LL1157680/Ships-keep-moving-through-Hormuz-despite-strike-and-suspension-of-IMO-exit-strategy](https://www.lloydslist.com/LL1157680/Ships-keep-moving-through-Hormuz-despite-strike-and-suspension-of-IMO-exit-strategy)

无法访问文章链接。

---

## 8. 《金融科技工程手册》

**原文标题**: Fintech Engineering Handbook

**原文链接**: [https://w.pitula.me/fintech-engineering-handbook/](https://w.pitula.me/fintech-engineering-handbook/)

**金融科技工程手册摘要**

本手册概述了以资金为核心的系统所需的软件工程核心模式，遵循三条原则：**无凭空数据**（钱不能无中生有）、**无数据丢失**（所有交易必须可追溯）和**无信任**（验证所有组件与外部来源）。

**表示资金**  
避免使用浮点类型；使用整数最小单位（如分、聪）、任意精度（如用于计算的BigDecimal），或在需零精度损失时使用有理数。舍入是业务决策，应显式执行且尽可能延迟。始终将金额与货币配对，禁止跨币种算术运算，并将挂钩/包装资产与其基础资产区分对待。

**记录资金**  
采用**复式记账法**：每笔交易有来源与去向，余额通过推导得出（而非存储），且分录不可变。需区分**价值时间**、**记账时间**与**结算时间**——三者必须分别记录。

**审计追踪与事件溯源**  
金融系统需保留完整历史以应对监管审查。审计追踪必须捕获每次变更的*内容、时间、主体及原因*。**事件溯源**以事件日志为真相源，状态由其推导得出，但会显著增加复杂性。通过仅追加日志、运行时检查及防篡改证据（如哈希链）强制实现**不可变性**。修正采用新的补偿性分录，而非编辑。

---

## 9. 《可疑的中断》（2020）

**原文标题**: Suspicious Discontinuities (2020)

**原文链接**: [https://danluu.com/discontinuities/](https://danluu.com/discontinuities/)

本文考察了各种“可疑的不连续性”——系统中产生逆向激励的急剧阈值。文章首先以美国税收政策为例，在诸如《平价医疗法案》医疗保险等补贴中，严格的收入截止点（例如个人年收入48,560美元）可能促使人们为获取福利而故意亏损，实际上奖励了收入减少。同样，医疗补助和儿童健康保险计划等社会项目中也存在不连续性。

作者在多个领域进行了类比：在网络领域，丢弃满数据包的简单队列会不公平地惩罚突发流量，从而催生了随机早期丢弃等解决方案；在大学招生中，高校为优化佩尔助学金获得者数量而设置严苛的收入门槛，这意味着最贫困的非受助者受损最大，而最富有的受助者获益最多；选举统计显示，整数节点（如95%投票率）出现异常峰值，暗示舞弊；二手车拍卖价格集中在1万美元关口；心理学论文中，p值刚好低于0.05出现不自然的峰值，表明存在p值操纵或发表偏倚；毒品量刑法律导致在新的强制性最低刑期阈值以上，起诉数量激增；波兰高中毕业考试在30%（及格线）处出现峰值，因为教师为提高通过率而虚高分数；青少年体育中表现出强烈的出生月份效应，年龄较大的孩子在同年儿童中占比过高；采购拍卖中出现可疑的重复高价，暗示串通行为。

核心主题是，无论是税收、教育、体育还是科学领域，二元阈值（通过/不通过、合格/不合格）往往会产生意料之外的次优行为。作者建议，采用更平滑的退出机制或概率规则可缓解这些问题。

---

## 10. 抓不住，便不曾拥有

**原文标题**: If you can't hold it, you don't own it

**原文链接**: [https://dervis.de/physical/](https://dervis.de/physical/)

**摘要：数字所有权是一种错觉**

本文指出，数字“购买”本质上是可撤销的许可，而非真正所有权。与实体媒体（光盘、卡带、书籍）不同，数字文件可被远程删除、修改或使其无法访问。

**关键要点包括：**
- **许可而非所有权：**数字商店出售的是访问权而非财产。若许可到期或服务关闭（例如索尼删除影业片库内容、Funimation关停），内容可能被移除。
- **无转售价值：**首次销售原则不适用于数字文件，无法转售、出借或转让。
- **频繁下架：**主流平台（Disney+、HBO Max、亚马逊、索尼）因许可或削减成本原因已删除已购买内容，例如Disney+删除《陨石坑》和《威洛》，科乐美的《P.T.》变得无法游玩。
- **服务关停：**谷歌Stadia、Ultraviolet和Wii商店频道关闭后，用户无法再访问已购内容。
- **画质差异：**流媒体画质低于实体媒体（码率更低、有损音频、压缩伪影）。
- **修改与审查：**数字文件可在购买后编辑（例如Disney+修改《星球大战》场景，Rockstar删除授权音乐）。
- **订阅成本：**流媒体价格显著上涨，访问需持续付费。

**结论：**实体媒体提供永久、可转售且不可变更的所有权，而数字“购买”始终依赖企业政策与服务器运行状态。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 2 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 3 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 4 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 5 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 6 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 7 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 8 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 9 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 10 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 11 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 12 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 13 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 14 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 15 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 16 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 17 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 18 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 19 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 20 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 21 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 22 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 23 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 24 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 25 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 26 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 27 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 28 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 29 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 30 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 31 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 32 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 33 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 34 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 35 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 36 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 37 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 38 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 39 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 40 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 41 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 42 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 43 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 44 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 45 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 46 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 47 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 48 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 49 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 50 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 51 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 52 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 53 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 54 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 55 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 56 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 57 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 58 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 59 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 60 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 61 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 62 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 63 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 64 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 65 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 66 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 67 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 68 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 69 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 70 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 71 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 72 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 73 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 74 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 75 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 76 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 77 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 78 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 79 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 80 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 81 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 82 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 83 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 84 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 85 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 86 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 87 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 88 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 89 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 90 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 91 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 92 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 93 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 94 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 95 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 96 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 97 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 98 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 99 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 100 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 101 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 102 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 103 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 104 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 105 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 106 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 107 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 108 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 109 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 110 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 111 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 112 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 113 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 114 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 115 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 116 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 117 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 118 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 119 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 120 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 121 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 122 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 123 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 124 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 125 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 126 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 127 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 128 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 129 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 130 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 131 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 132 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 133 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 134 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 135 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 136 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 137 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 138 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 139 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 140 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 141 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 142 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 143 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 144 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 145 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 146 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 147 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 148 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 149 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 150 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 151 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 152 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 153 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 154 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 155 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 156 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 157 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 158 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 159 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 160 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 161 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 162 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 163 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 164 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 165 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 166 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 167 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 168 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 169 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 170 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 171 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 172 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 173 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 174 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 175 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 176 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 177 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 178 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 179 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 180 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 181 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 182 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 183 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 184 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 185 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 186 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 187 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 188 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 189 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 190 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 191 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 192 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 193 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 194 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 195 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 196 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 197 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 198 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 199 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 200 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 201 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 202 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 203 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 204 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 205 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 206 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 207 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 208 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 209 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 210 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 211 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 212 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 213 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 214 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 215 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 216 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 217 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 218 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 219 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 220 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 221 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 222 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 223 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 224 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 225 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 226 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 227 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 228 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 229 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 230 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 231 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 232 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 233 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 234 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 235 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 236 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 237 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 238 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 239 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 240 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 241 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 242 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 243 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 244 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 245 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 246 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 247 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 248 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 249 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 250 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 251 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 252 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 253 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 254 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 255 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 256 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 257 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 258 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 259 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 260 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 261 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 262 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 263 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 264 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 265 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 266 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 267 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 268 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 269 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 270 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 271 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 272 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 273 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 274 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 275 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 276 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 277 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 278 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 279 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 280 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 281 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 282 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 283 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 284 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 285 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 286 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 287 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 288 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 289 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 290 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 291 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 292 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 293 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 294 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 295 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 296 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 297 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 298 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 299 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 300 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 301 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 302 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 303 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 304 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 305 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 306 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 307 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 308 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 309 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 310 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 311 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 312 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 313 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 314 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 315 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 316 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 317 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 318 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 319 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 320 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 321 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 322 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 323 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 324 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 325 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 326 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 327 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 328 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 329 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 330 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 331 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 332 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 333 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 334 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 335 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 336 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 337 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 338 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 339 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 340 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 341 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 342 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 343 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 344 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 345 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 346 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 347 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 348 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 349 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 350 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 351 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 352 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 353 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 354 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 355 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 356 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 357 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 358 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 359 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 360 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 361 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 362 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 363 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 364 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 365 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 366 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 367 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 368 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 369 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 370 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 371 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 372 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 373 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 374 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 375 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 376 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 377 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 378 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 379 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 380 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 381 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 382 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 383 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 384 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 385 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 386 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 387 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 388 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 389 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 390 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 391 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 392 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 393 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 394 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 395 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 396 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 397 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 398 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 399 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 400 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 401 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 402 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 403 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 404 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 405 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 406 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 407 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 408 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 409 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 410 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 411 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 412 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 413 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 414 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 415 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 416 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 417 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 418 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 419 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 420 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 421 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 422 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 423 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 424 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 425 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 426 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 427 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 428 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 429 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 430 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 431 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 432 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 433 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 434 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 435 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 436 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 437 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 438 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 439 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 440 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 441 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 442 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 443 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 444 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 445 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 446 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 447 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 448 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 449 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 450 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 451 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 452 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 453 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 454 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 455 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 456 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 457 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 458 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 459 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 460 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 461 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 462 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
