# Hacker News 热门文章摘要 (2026-06-27)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. 后神话时代的网络安全：保持冷静，继续前行

**原文标题**: Post-Mythos Cybersecurity: Keep calm and carry on

**原文链接**: [https://cephalosec.com/blog/cybersecurity-in-the-post-mythos-era-keep-calm-and-carry-on/](https://cephalosec.com/blog/cybersecurity-in-the-post-mythos-era-keep-calm-and-carry-on/)

本文指出，尽管关于Anthropic的Mythos模型将彻底改变零日漏洞利用的危言耸听言论甚嚣尘上，但其实际影响更为渐进且可控。Mythos确实代表了进步——尤其在生成可验证漏洞利用代码和减少误报方面——但更早的Opus 4.6和GPT-5.4等模型在基准测试中并未落后太多。值得注意的是，Mythos最受关注的发现涉及数十年历史的漏洞，且其昂贵的大规模扫描（每漏洞2万美元）限制了资金充裕的机构之外的使用。

关键进展包括美国政府阻止非美国用户访问Mythos/Fable，迫使Anthropic暂停公开发布；而OpenAI谨慎推进GPT-5.5-Cyber与“Daybreak”，但仅向大型网络安全公司开放，人为制造稀缺性。

作者建议保持冷静，聚焦既有的网络安全优先事项：通过感知上下文的分类改进漏洞管理、减少攻击面（无发行版容器、最小化镜像）、实施零信任原则（预认证、最小权限）、部署利用AI笨拙特性的诱饵（蜜罐、金丝雀令牌）。AI辅助的社会工程学攻击也是日益增长的威胁。

**结论：** Mythos提高了忽视现有最佳实践的成本，但并未推翻这些实践。防御者应在强化基础的同时，善用现有AI工具（Opus 4、GPT-5.5、Strix等开源框架）。

---

## 12. 让Apple II成为专业级设备的卡

**原文标题**: The Card That Made the Apple II Serious

**原文链接**: [https://www.wiseowl.com/articles/a2fpga-videx-01-the-card-that-made-the-apple-ii-serious/](https://www.wiseowl.com/articles/a2fpga-videx-01-the-card-that-made-the-apple-ii-serious/)

本文介绍了Videx VideoTerm的硬件架构与FPGA仿真。该设备是为Apple II及II+设计的 pioneering 80列显示卡，对WordStar和VisiCalc等商业软件至关重要。

**关键要点：**

- **问题：** 原版Apple II仅通过NTSC复合视频输出40列文本，无法满足严肃应用需求。
- **解决方案：** Videx VideoTerm（1980年）通过自带的2KB视频RAM和摩托罗拉MC6845 CRT控制器芯片（负责生成时序信号但不处理像素数据）实现了清晰的80列文本显示。
- **插槽3限制：** 由于Apple II的INTCXROM机制，该卡必须占用插槽3。访问插槽3的$C300–$C3FF地址段可控制$C800–$CFFF扩展ROM空间的所有权，Videx固件需遵循该协议以避免阻塞其他扩展卡。
- **FPGA仿真：** A2FPGA采用约250个查找表（LUT）和160个寄存器完整替代Videx卡（包括MC6845、字符ROM、固件及胶合逻辑），直接从仿真VRAM生成HDMI输出，绕过模拟复合信号的伪影问题。
- **效率优化：** 字符ROM中反向显示字符（$80–$FF）通过单次异或运算由前128个字符生成，节省了一个BSRAM块。
- **兼容性：** 由于固件ROM字节完全一致，CardCat等软件可将仿真卡识别为正版Videx。

---

## 13. 扎克伯格对举报人愈发怪异的战争

**原文标题**: Zuckerberg's Increasingly Bizarre War on Whistleblowers

**原文链接**: [https://pluralistic.net/2026/06/27/zuckerstreisand-2/](https://pluralistic.net/2026/06/27/zuckerstreisand-2/)

**摘要：**

本文详述了Meta首席执行官马克·扎克伯格对回忆录《粗心之人》作者、举报人莎拉·温-威廉姆斯发起的激进法律攻势。该书揭露了Facebook涉嫌犯罪行为，包括参与缅甸种族灭绝，并严厉批评了高管谢丽尔·桑德伯格、乔尔·卡普兰以及扎克伯格。

温-威廉姆斯与Meta签署的合同中包含保密、禁止贬损及强制仲裁条款。在她的书成为畅销书后，一名由Meta付费的仲裁员下令她停止推广或讨论该书，并处以超过1100万美元的罚款——这一数额远超她的资产。尽管她通过活动期间保持沉默（包括在海伊文学节上无声登台）以示遵守，Meta仍声称她违反禁令并寻求进一步赔偿，这促使她提起诉讼要求认定合同无效。

多克托罗将Meta的策略比作白俄罗斯独裁者卢卡申科，后者曾因吃冰淇淋等琐事逮捕活动人士。他认为，Meta的真正目标并非阻止温-威廉姆斯的书，而是恐吓数千名被解雇的员工，使其对更严重的公司不当行为保持沉默——尤其是在Meta因一次失败的AI押注而陷入财务困境之际。讽刺的是，不断升级的法律威胁反而激发了人们对《粗心之人》的更多兴趣，但Meta为维持内部恐惧与控制，接受了这一声誉代价。

---

## 14. Supabase (YC S20) 正在招聘 Multigres 相关岗位

**原文标题**: Supabase (YC S20) Is Hiring for Multigres

**原文链接**: [https://jobs.ashbyhq.com/supabase/2e718684-4f75-4a99-8d6b-3b6bd44e4228](https://jobs.ashbyhq.com/supabase/2e718684-4f75-4a99-8d6b-3b6bd44e4228)

**摘要：**

本文是 **Supabase（YC S20）** 发布的一则职位招聘，岗位名称为 **“Multigres 工程师”**。该职位专注于推进 Supabase 的“Multigres”技术，这是一个分布式、多实例的 PostgreSQL 系统。

主要职责可能涉及构建和优化 Supabase 的基础设施，使多个数据库实例能够通信、扩展并作为一个统一系统运行。旨在解决 PostgreSQL 的数据库分片、复制和水平扩展问题。

招聘信息注明“申请人需启用 JavaScript 以运行此应用程序”，表明申请流程基于网络进行。

**要点：**
- **公司：** Supabase（Y Combinator S20）。
- **职位：** Multigres 工程师。
- **重点：** 构建分布式 PostgreSQL 基础设施，以实现可扩展性和多实例协调。
- **意义：** 这是一个技术岗位，旨在增强 Supabase 的核心数据库平台，突破单实例限制。

---

## 15. 一个男人，两个内核，大量RISC-V

**原文标题**: One man, two kernels, and a lot of RISC-V

**原文链接**: [https://www.theregister.com/software/2026/06/26/one-man-two-kernels-and-a-lot-of-risc-v/5262858](https://www.theregister.com/software/2026/06/26/one-man-two-kernels-and-a-lot-of-risc-v/5262858)

**概述：**

QRV Systems 旗下高产开发者尤里·扎波罗热茨基于 RISC-V 与 FPGA 打造了一系列卓越项目，最终催生了名为 QSOE 的全新操作系统。他的探索始于 **GateMate 个人电脑**——一款在廉价 Olimex FPGA 板卡上实现的 25 MHz RISC-V 系统，配备自研 BIOS 与 GMDOS 操作系统。随后他构建了 **GateMate 系统/359**，这是一台受 IBM S/360 启发但非二进制兼容的微型大型机，拥有专属汇编器与通道 I/O。

扎波罗热茨随后将传统 QNX 6.4 内核移植至 64 位 RISC-V 架构，推出了 **QRV OS**。在实现多用户启动并达到 v0.43 版本后，他因 QNX 的许可限制而宣布移植完成。

旗舰项目 **QSOE**（快速安全操作环境）基于 Apache 2.0 协议发布。其独特之处在于提供两种共享同一用户空间的版本：**QSOE/N** 运行于扎波罗热茨自研的新微内核 "Skimmer" 之上，而 **QSOE/L** 则基于经形式化验证的 **seL4** 微内核。该项目借鉴了他早期的 RadiOS 工作与 QRV 开发经验。虽借助 Anthropic 的 Claude 大语言模型辅助开发，但他强调这些概念源于 20 多年前的积累。源代码已在 GitLab 上开放。

---

## 16. 加拿大渥太华休闲步道沿线蜱虫密度降低研究

**原文标题**: Reducing tick density along recreational trails in Ottawa, Canada

**原文链接**: [https://www.sciencedirect.com/science/article/pii/S1877959X26000476](https://www.sciencedirect.com/science/article/pii/S1877959X26000476)

**摘要：降低加拿大渥太华休闲步道沿线的蜱虫密度**

本研究评估了在加拿大渥太华休闲步道沿线实施的一项为期三年的综合蜱虫管理（ITM）项目的有效性，该项目针对传播莱姆病的肩突硬蜱（黑腿蜱）。研究人员采用了两种处理方法：（1）春季在步道边缘植被上单次喷洒杀螨剂氯菊酯；（2）将上述喷洒与春季投放针对小型哺乳动物（如老鼠和花栗鼠）的灭蜱诱饵盒（含氟虫腈）相结合。他们将这两种方法与未处理的对照步道进行了比较。

在2019年至2021年期间，通过拖样法测量了蜱虫密度（若虫和成虫）。结果显示，与对照组相比，单独喷洒可使蜱虫密度降低约50%–60%，而喷洒结合诱饵盒则实现了约70%–75%的更显著降幅。两种处理方式均显著降低了蜱虫丰度，其中组合方法效果更佳。该研究还指出，蜱虫种群因天气和宿主活动而逐年波动，但ITM项目始终能抑制其密度。

作者总结认为，有针对性的低毒杀螨剂喷洒与针对宿主的诱饵盒相结合，可以有效降低公共步道沿线的蜱虫密度，从而减少人类暴露风险。但他们强调，由于蜱虫可能从周边栖息地重新定殖，很可能需要进行持续处理以维持防控效果。这项研究为在休闲区域采用综合手段管理蜱传疾病风险提供了支持。

---

## 17. 《菜单的历史》是一部历史的菜单

**原文标题**: A History of Menus Is a Menu of History

**原文链接**: [https://pudding.cool/2026/06/menu-story/](https://pudding.cool/2026/06/menu-story/)

无法访问该文章链接。

---

## 18. 长波广播时代即将落幕：信号关闭在即

**原文标题**: Long Wave radio era set to end with switch-off

**原文链接**: [https://www.economist.com/britain/2026/06/25/the-bbc-switches-off-its-oldest-service](https://www.economist.com/britain/2026/06/25/the-bbc-switches-off-its-oldest-service)

**摘要**

英国广播公司（BBC）正准备关闭其长波广播服务，终结一个始于1925年达文特里发射机的广播时代。这一预计在数年内实施的关停主要影响BBC广播四台的长波频率（198千赫），目前该频率听众已极少且持续减少。该服务仅对一项内容仍具必要性：航运预报——这项保障海事安全的强制广播。然而，现代数字及卫星替代技术已使长波过时。关停源于高昂的维护成本及频谱资源优化再利用的需求。尽管包括海员及老年农村听众在内的一些群体将失去珍视的服务，BBC辩称该技术效率低下、成本高昂且浪费环境资源。此举象征着模拟时代的终结，但也凸显了将弱势群体过渡至数字平台的挑战。

---

## 19. 在充满低劣泛滥作品的世界里举办软件创作马拉松

**原文标题**: Running a software jam in a world of slop

**原文链接**: [https://foxmoss.com/blog/radish/](https://foxmoss.com/blog/radish/)

这篇文章由一位Hack Club工作人员撰写，探讨了在人工智能生成的“垃圾内容”泛滥且激励机制扭曲的时代，如何举办有意义的软件创作活动。作者指出，大多数软件黑客马拉松存在缺陷，往往奖励ChatGPT的包装者而非真正的工匠。Hack Club的资助模式依据通过WakaTime服务器（Hackatime）追踪的编码时间，向参与者支付每小时8.50美元。这导致一种不良激励：参与者可以为了赚钱而草率完成低质量项目，却几乎学不到东西。试图通过基于曲线的投票来修复这一问题，效果也仅部分有效。

提出的解决方案是借鉴传统游戏创作活动的软件创作活动模式，在这种模式下，低质量作品自然会因投票结果不佳而失去动力。为使创作活动成功，作者强调需要更好的评委、明确的期望（例如，禁止基于大型语言模型的项目），并给予参与者足够的时间从一开始就编写优质代码。该活动采用与参与时长挂钩的动态奖品，但由于预算不确定，这要求参与者承担一定风险。

最终，这一创作活动旨在一举两得：改善Hack Club的资助模式，同时复兴真正的软件创作。该活动面向青少年开放，详情请访问 radish.hackclub.com。

---

## 20. 真正有多少种基本粒子？

**原文标题**: How Many Elementary Particles Are There, Really?

**原文链接**: [https://www.quantamagazine.org/how-many-elementary-particles-are-there-really-20260615/](https://www.quantamagazine.org/how-many-elementary-particles-are-there-really-20260615/)

以下是文章的简要总结：

基本粒子的数量有多少？这个问题没有简单答案，可能的计数范围从17到995.5。粒子物理学的标准模型通常被描述为包含17种粒子：12种物质粒子（费米子）、4种力载体（玻色子）和希格斯玻色子。然而，根据计数方式的不同，这个数字会大幅增加。

将反粒子包括在内，总数增至30。加入8种不同的胶子和夸克的3种色态后，数字升至61。进一步考虑物质的左旋和右旋手征态，以及力粒子的极化态，得出的不同粒子类型为118种。

最极端的计数来自2011年物理学家科马戈茨基和施维默的一项理论证明。他们的“a定理”指出，四维空间中的量子场论具有固定的非整数“自由度”（粒子可能变化的基本方式）。对于标准模型，这一计算得出995.5个自由度，这个数字源于抽象数学，而非可观测的粒子态。

文章总结道，答案取决于人们对“粒子”的定义以及对复杂性的容忍度。实验物理学家可能偏爱17种粒子的简洁性，而理论物理学家则可能接受995.5这个奇特的分数结果，这揭示了量子场论核心的一个深层谜团。

---

## 21. 人机交界的奇妙界面（《生活》杂志，1967年10月）

**原文标题**: The eerie interface of man and machine (Life Magazine, October 1967)

**原文链接**: [https://blog.jgc.org/2026/06/the-eerie-interface-of-man-and-machine.html](https://blog.jgc.org/2026/06/the-eerie-interface-of-man-and-machine.html)

**摘要：**  
这篇1967年《生活》杂志文章通过比较计算机与人脑，探讨了制造思维机器的挑战。文章将人脑描述为“计算机的层级结构”，其中神经元（100亿个相互连接的细胞）通过复杂的反馈回路处理信息——这与依赖固定线路中线性电脉冲的计算机不同。  

文章指出，尽管科学家理论上可以通过连接多台计算机来模拟人脑，但一台仅拥有人类1/20能力的机器就需要占据数个谷仓的体积。两大障碍依然存在：缺乏详细的大脑“接线图”，以及为此类系统编程的巨大难度。一位资深程序员评论道，即使连续三年每天输入数百万条数据，这样的机器仍可能无法学会基本推理——比如正确计算2+2。  

帖子的结尾附上2026年的更新，幽默地将1967年的乐观态度与现代AI进展形成对比：“再输一条提示词就睡，真的！”

---

## 22. 二战期间，美国陆军向士兵发放陶笛

**原文标题**: The US Army Issued Ocarinas to Soldiers in World War II

**原文链接**: [https://www.flutetunes.com/articles/my-flute-goes-to-war/](https://www.flutetunes.com/articles/my-flute-goes-to-war/)

**概要：**

二战期间，美国陆军向士兵发放了数千只塑料陶笛作为消遣用品。这种乐器因其体积小巧、耐用、防水、价格低廉且极易演奏而被选中。当时的竖笛无法满足需求，因为塑料竖笛直到1946年才出现，而当时所有竖笛均为木制，不适合野战环境。

陆军选定了两种陶笛：格雷奇“甘薯”式（顶部七个音孔加一个拇指孔）与通奈特式（类似竖笛的直列设计）。两种陶笛均设有两个预填孔洞，士兵可用小刀镂空以扩展音域。其中通奈特式因可调音且音色更佳而更受青睐。

士兵们收到了一本25页的指导手册，教授基础指法、简谱标识与流行歌曲。陆军小卖部还提供配套的陶笛四重奏曲谱集。

作者指出，如今格雷奇陶笛主要作为音质较差的收藏品存在，而他继承的军用通奈特陶笛——以厚重光亮的塑料制成——音色优美，远超现代版本。战后士兵获准将乐器作为个人装备保留，许多至今仍存世。

---

## 23. 老旧硬件上的Linux：完全复活指南

**原文标题**: Linux on Older Hardware: The Complete Revival Guide

**原文链接**: [https://www.fosslinux.com/158206/linux-on-older-hardware-revival-guide.htm](https://www.fosslinux.com/158206/linux-on-older-hardware-revival-guide.htm)

本文是一篇关于使用轻量级Linux发行版复兴老旧硬件（约2014-2019年）的实用指南，强调通过减少电子垃圾来保护环境。关键要点包括：

**硬件评估**：使用`free -h`、`lscpu`和`lsblk`等命令评估内存、CPU架构和存储。建议安装前先通过Live USB进行测试。

**发行版选择**：
- **内存低于2GB**：antiX（闲置约256MB）或Puppy Linux（内存中运行）。BunsenLabs可选，但不再支持32位。
- **内存2-4GB**：Lubuntu（LXQt，闲置约480MB）效率高；Linux Lite（Xfce，约650MB）通过BORE调度器响应更快。
- **内存4-8GB**：Xubuntu或Linux Mint Xfce。

**桌面环境**：LXQt最轻量（约480MB），Xfce可定制性强（约650MB），MATE介于两者之间（约580MB）。

**性能调优**：
- **zram**：在内存中压缩交换空间，有效增加低内存系统的可用内存。
- **Swappiness**：机械硬盘设为10-20，固态硬盘保持60。
- **服务精简**：若未使用，禁用蓝牙、CUPS和Avahi。

**硬件升级**：用SATA固态硬盘替换机械硬盘可将启动时间从45-60秒降至12-18秒，成本低于30美元。启用TRIM以延长寿命。

**浏览器优化**：通过禁用磁盘缓存、限制会话历史及安装uBlock Origin降低Firefox内存占用。替代方案包括Falkon或Pale Moon。

---

## 24. 研究人员开发出可同时发射并分析光线的像素

**原文标题**: Researchers have developed pixels that can emit and analyse light together

**原文链接**: [https://ethz.ch/en/news-and-events/eth-news/news/2026/06/a-new-type-of-pixel.html](https://ethz.ch/en/news-and-events/eth-news/news/2026/06/a-new-type-of-pixel.html)

**摘要：**

苏黎世联邦理工学院的研究人员开发出一种新型“傅里叶像素”，既能发射光也能分析光，这在显示与相机技术领域尚属首次。传统像素要么生成图像（显示器），要么捕捉图像（相机），而这种双向像素则兼具这两种功能。

该技术基于光波干涉与傅里叶分析。像素将入射光转化为表面波（表面等离极化激元），随后这些表面波再被散射出去。通过精确控制纳米尺度的表面形状，研究人员能够操控光的强度、振荡相位和偏振态，从而生成图案与图像。关键在于，同一原理可反向应用：该像素能通过捕捉干涉图样来分析入射光，从而测量光的相位与偏振态。

由于表面轮廓只需通过简单的数学傅里叶分析即可计算得出，多种功能（振幅、相位及偏振控制/分析）可整合于单个像素中。研究人员展望了未来应用，例如双向相机显示器——设备可同时兼具屏幕与相机功能。长期目标是构建由众多傅里叶像素组成的矩阵，以实现更复杂的设备。这项发表于《自然》杂志的研究，可能对从电视到光纤光学等众多技术产生影响。

---

## 25. 《里程碑式研究表明：屏幕时间可能损害两岁以下幼儿的发育》

**原文标题**: Screen time can damage under-twos' development, landmark study suggests

**原文链接**: [https://www.theguardian.com/society/2026/jun/27/screen-time-damage-under-twos-development-study](https://www.theguardian.com/society/2026/jun/27/screen-time-damage-under-twos-development-study)

一项里程碑式的研究警告称，两岁以下儿童接触屏幕时间可能对发育造成长期危害，包括减少与看护者的情感联结、身体活动不足以及语言发展受限。来自英国四所大学的研究人员经审查全球证据发现，屏幕时间与过度刺激、睡眠困难、眼部健康问题及儿童肥胖存在关联。他们呼吁紧急调查智能手机、平板电脑及其他数字设备对婴幼儿的风险。

该研究批评了英国政府现行指导意见——虽建议两岁以下儿童避免屏幕时间，但允许鼓励亲子互动的共享活动作为例外。研究者认为这可能被误读为安全，从而加剧发育迟缓问题。他们建议该年龄段儿童不应有规律性或有意的屏幕时间，官方指南应重新审议。

研究团队敦促开展"婴幼儿屏幕时间风险评估"并强化家庭支持。专家安德烈娅·利德索姆强调不应指责家长，科技公司也不应将内容宣传为适合婴幼儿。英国政府则辩称其指南清晰明确且支持家长自主判断。

---

## 26. 7月1日起，加州流媒体服务中烦人的高音量广告将被视为非法行为。

**原文标题**: Streaming services' obnoxiously loud ads become illegal on July 1 in California

**原文链接**: [https://arstechnica.com/gadgets/2026/06/streaming-services-obnoxiously-loud-ads-become-illegal-on-july-1-in-california/](https://arstechnica.com/gadgets/2026/06/streaming-services-obnoxiously-loud-ads-become-illegal-on-july-1-in-california/)

自2025年7月1日起，加州将禁止流媒体平台在播放广告时音量超过正片内容。州长加文·纽森于2025年10月签署了SB 576法案，将联邦《CALM法案》中已适用于广播电视、有线电视和卫星电视的相同音量规定，扩展至视频流媒体服务。

流媒体服务尚未详细说明将如何遵守该规定，包括是否仅对加州观众实施音量调整，还是在全国范围内推行。伊利诺伊州已通过一项类似法案，要求于2027年7月前合规。

美国电影协会及流媒体创新联盟（成员包括奈飞、迪士尼、亚马逊Prime Video和孔雀）对该法案表示反对。他们辩称，许多服务商已尝试管理广告音量，但面临服务器端广告插入（使用不同编码管道）以及电视、平板、手机等多样输出设备带来的挑战。

行业刊物《TV Tech》指出，流媒体提供商需将基于文件或实时的音量控制整合到服务器端广告工作流程中。观众对传统电视广告音量的持续不满显而易见：美国联邦通信委员会在2024年收到超过1700起投诉，2023年约825起，2022年约750起。

---

## 27. 任务成功失败：饱和网卡与磁盘带宽

**原文标题**: Task Failed Successfully: Saturating NIC and Disk Bandwidth

**原文链接**: [https://blog.mrcroxx.com/posts/task-failed-successfully-saturating-nic-and-disk-bandwidth/](https://blog.mrcroxx.com/posts/task-failed-successfully-saturating-nic-and-disk-bandwidth/)

**摘要：**

本文详细介绍了一个系统的性能优化历程，该系统从8块NVMe硬盘读取1 MiB数据块，并通过RDMA WRITE发送数据，以占满400 Gb/s网卡带宽。

**简单示例：** 初始阶段，系统在I/O深度为16时仅达到约50%的网卡吞吐量，原因是CPU饱和。性能分析显示，81.62%的CPU时间消耗在`io_submit_sqes`中，主要涉及每次I/O的内存操作，如页表遍历、页面锁定以及直接I/O的folio更新。解决方案是预先使用`io_uring_register_buffers()`注册I/O缓冲区。改用`READ_FIXED`消除了这一开销，使吞吐量线性增长并占满网卡（深度为64时提升108%）。

**规模扩展：** 架构扩展至8个客户端网卡、4个服务器节点（每个节点2个NUMA节点）以及每个分片多个工作线程。I/O大小增加到1028 KiB（含元数据）。尽管解决了先前的问题，吞吐量仍停留在理论聚合带宽372.5 GiB/s的约50%。

**新瓶颈定位：** 性能分析显示出现了`iou-wrk`内核线程，由I/O拆分触发。由于`max_segments = 128`以及4 KiB页面碎片化，每个1028 KiB的I/O被拆分为约3个bios。这迫使io_uring将工作卸载给`iou-wrk`线程。然而，进一步实验（如禁用CRC）证实`iou-wrk`本身并非导致吞吐量减半的主要瓶颈。尽管本文摘录部分未完全解决根本原因，但文章展示了一种使用火焰图和性能计数器进行系统调试的方法。

---

## 28. 为何动能随速度呈平方而非线性增长？（2011）

**原文标题**: Why does kinetic energy increase quadratically, not linearly, with speed? (2011)

**原文链接**: [https://physics.stackexchange.com/questions/535/why-does-kinetic-energy-increase-quadratically-not-linearly-with-speed](https://physics.stackexchange.com/questions/535/why-does-kinetic-energy-increase-quadratically-not-linearly-with-speed)

基于所提供的文本，动能与速度呈二次方关系（KE = ½mv²），而非线性关系，这源于基础物理学原理。以下是几个关键解释：

1. **伽利略不变性（罗恩·梅蒙的回答）：** 这一对称性论点表明，如果动能由黏土球撞击墙壁时产生的热量来定义，那么在运动的参考系中，正面对撞过程中的能量守恒迫使关系式 \(E(2v) = 4E(v)\) 成立，从而证明了二次方依赖性。

2. **做功与制动距离（杰拉德的回答）：** 使速度翻倍的物体停下所需的作用力，由于动量（\(p=mv\)）需要两倍的时间，并且平均速度也加倍。两者结合，导致制动距离变为四倍（\(s = \bar{v}t\)）。由于做功（\(W = Fs\)）等于动能的变化，因此能量变为四倍。

3. **重力自由落体（迈克·邓拉维的回答）：** 从两倍高度释放物体并不会使其最终速度翻倍，因为它在通过第二米时所需时间更短（物体已在运动），因此增加的速度更少。这产生了速度与高度/势能之间的平方根关系。

4. **牛顿第二定律（数学推导）：** 从 \(F=ma\) 和做功的定义（\(W = \int F \, ds\)）出发，微积分直接推导出 \(W = \frac{1}{2}mv_f^2 - \frac{1}{2}mv_i^2\)，从而证明了二次方形式。

本质上，虽然动量（运动量）与速度呈线性关系，但改变速度所需的能量——即所储存的做功——与速度的平方成正比。

---

## 29. Beer CSS – 极速构建Material Design

**原文标题**: Beer CSS – Build material design in record time

**原文链接**: [https://www.beercss.com](https://www.beercss.com)

**《"Beer CSS – 极速构建Material Design"》摘要**

本文介绍了Beer CSS，这是一个旨在帮助开发者快速、轻松构建Material Design界面的CSS框架。其标语强调速度（"极速"）与开发者体验（"无压力"），并以啤酒表情符号作为象征。

主要内容包括：

- **定位：** Beer CSS提供了一套轻量级、开箱即用的样式与组件，严格遵循Google Material Design设计规范。
- **核心优势：** 开发者无需从头编写大量自定义CSS，从而大幅缩短Web界面的开发时间。
- **目标用户：** 希望实现现代化、视觉一致性Material Design的前端开发人员和设计师，避免使用大型框架或繁重工具的负担。
- **主要特性：** 包含预置样式的UI元素（按钮、卡片、表单、导航）、响应式设计支持，以及简洁清晰、易于理解和定制的代码库。
- **设计理念：** 项目旨在提升效率与编程愉悦感，强调其设置与维护过程直观简单。

总之，Beer CSS致力于成为快速构建专业级Material Design风格Web应用的实用、"无压力"解决方案。

---

## 30. WordStar：作家的文字处理器（1996）

**原文标题**: WordStar: A Writer's Word Processor (1996)

**原文链接**: [https://www.sfwriter.com/wordstar.htm](https://www.sfwriter.com/wordstar.htm)

**《WordStar：作家的文字处理器》摘要**

罗伯特·J·索耶认为，尽管受到批评，但DOS版WordStar在创意写作领域依然卓越。他强调了两个关键优势：

1. **为盲打者设计的界面：** WordStar的命令使用主键盘行的控制键组合（例如，^E、^S、^D、^X用于光标移动）。这使得作家能双手不离键盘，保持创作流畅，无需寻找专用键。该系统逻辑清晰且位置对应（例如，^W/^Z上下滚动；^R/^C上下翻页）。

2. **长手稿页面隐喻：** 与多数模拟打字机（线性、自上而下）的文字处理器不同，WordStar模拟纸质手稿。作家可瞬间跳转至任意位置，设置十个书签（^K0-^K9），随时标记文本块，并添加不打印的注释（以".."开头的行）。这赋予作家控制权，使其能捕捉转瞬即逝的灵感，而无需遵循强制性的步骤顺序（如WordPerfect和MS Word那样）。

索耶声称，WordStar从不崩溃，深受众多科幻作家（包括阿瑟·C·克拉克和乔治·R·R·马丁）喜爱，且对于创意写作而言，远比现代替代品直观。文章还提供了下载WordStar 7.0及用于现代Windows系统的DOS模拟器的链接。

---

