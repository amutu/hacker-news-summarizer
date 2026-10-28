# Hacker News 热门文章摘要 (2026-10-29)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. 智能体 SDK

**原文标题**: The Agent SDK

**原文链接**: [https://cursor.com/blog/agent-sdk](https://cursor.com/blog/agent-sdk)

Cursor 正式发布 Agent SDK，这是一套以代码定义智能体的开发框架，也是 Bugbot、安全审查智能体等托管智能体的底层框架。该 SDK 让产品软件团队能围绕自身工作流快速构建和部署智能体，解决此前只能在现成产品与从零开发之间二选一的困境。智能体可接入 GitHub、GitLab、Bitbucket 等平台，响应 PR 审查、合规性工作流及事件排查等场景，按团队策略自动执行任务，并支持任务移交与子智能体并行处理。在架构上，Agent SDK 将智能体组织为类软件项目：提示词以 Markdown 编写，工具定义为 TypeScript 函数，所有变更均可纳入版本控制与代码审查。SDK 内置评估与事件回放功能，支持在本地 playground 迭代后，通过 agent-sdk deploy 一条命令部署至 Cursor 基础设施，也可打包为 Node 进程运行于自有环境。目前 PGA America 等团队已用该 SDK 构建软件开发工厂组件，验证了其在快速迭代与可靠交付方面的价值。

---

## 12. 在辛普森沙漠数沙丘

**原文标题**: Counting Sand Dunes in the Simpson Desert

**原文链接**: [https://www.fromtheroad.ford.com/img/en/articles/2026/simpson-desert-ranger-super-duty-counting-dunes](https://www.fromtheroad.ford.com/img/en/articles/2026/simpson-desert-ranger-super-duty-counting-dunes)

无法访问该文章链接

---

## 13. Converge（YC S23）招聘创始平台工程师

**原文标题**: Converge (YC S23) Is Hiring a Founding Platform Engineer

**原文链接**: [https://www.runconverge.com/careers/founding-platform-engineer](https://www.runconverge.com/careers/founding-platform-engineer)

摘要：Converge（YC S23）是一家13人团队，位于纽约，已实现300万美元ARR，服务200+客户，累计融资570万美元。公司为消费品牌构建AI代理，自动化广告全链路，管理日预算超100万美元，承担客户账户90%以上的预算变更。现招聘首位平台工程师（年薪18万–24万美元+0.3%–0.5%股权），负责打造支撑AI代理的核心平台。该岗位非传统SRE或后端角色，需自主制定路线图，深入攻克最难的系统与基础设施难题。技术挑战包括：处理60亿美元年收入、每月20TB数据摄入、峰值每秒1万任务、实时聚合数百GB数据。具体工作涵盖构建万亿任务级服务、ClickHouse性能调优、实时归因数据物化及为代理设计SQL方言。要求：强编码能力（Python为主，需掌握更高性能语言）、精通Postgres与Clickhouse、具备大规模数据系统实战经验、务实以客户为导向。不接受纯架构偏好、多季度大型迁移或远程优先。面试流程紧凑，两天内可完成：初聊（15分钟）→创始人交流（45分钟）→技术面（1小时）→带薪超级日（1天）。

---

## 14. 高斯泼溅渲染（三）：总有更大的场景

**原文标题**: Gaussian Splats part 3: There's always a bigger scene

**原文链接**: [https://www.magnopus.com/blog/gaussiansplats-part-3-theres-always-a-bigger-scene](https://www.magnopus.com/blog/gaussiansplats-part-3-theres-always-a-bigger-scene)

文章讲述团队依次突破高斯泼溅渲染三大瓶颈的过程。第一，GPU Scene 对单网格实例数上限为 1600 万，团队改用 DrawIndexedInstancedIndirect 间接实例化方案绕过限制，同时获得 GPU 端逐帧剔除能力，为 LOD 奠定基础。第二，面对真实摄影测量场景远超显存的规模，团队引入分级细节（LOD）系统，采用 Streamed SOG 格式将空间划分为树状区域，每区域预烘焙多级细节；每帧基于屏幕空间误差为各区域选取最经济的 LOD 等级，通过 HTTP 由粗到细流式加载。第三，纹理行数上限将容量限制在约 6700 万泼溅点，团队将行宽扩展至硬件上限，单纹理可容纳约 2.68 亿；更大场景则采用固定纹理池，按距离策略按需流入与淘汰。最终全链路——加载解码、驻留管理、LOD 选择、排序剔除至顶点工厂着色——支持任意规模场景，单文件小场景作为退化特例走同一代码路径。

---

## 15. Show HN：SlideBySide——无需共享屏幕的幻灯片协作演示工具

**原文标题**: Show HN: SlideBySide – Present slides without sharing your screen

**原文链接**: [https://slidebyside.com/](https://slidebyside.com/)

SlideBySide 是一款免共享屏幕的在线幻灯片演示工具：上传 PDF 或 PPT，生成链接，所有人同步观看同一页幻灯片。无需注册、无需安装，浏览器打开即用，免费开始。使用仅需三步：上传文稿（支持 PDF/PPT/PPTX，亦可从 Google Drive、OneDrive 导入）→ 分享链接（每位参与者获得随机昵称，可自定义）→ 协同演示（翻页、画光标、批注或自由浏览）。核心功能涵盖：带姓名的实时光标、画笔/荧光笔/激光笔（可选留痕或渐隐）、细粒度权限控制（翻页、绘图、浏览、下载，支持全局或按人设置）、观众可自由跳转后一键回到直播页、快捷键全屏演示模式、灵活分享方式（公开/指定邮箱/私有）及多版本历史（旧版批注保留）。核心理念是"不共享屏幕，只共享幻灯片"，为远程会议提供轻量、低门槛的演示协作体验。

---

## 16. 美国法典的 Git

**原文标题**: Git for the US Code

**原文链接**: [https://lexifina.com/blog/git-for-the-us-code](https://lexifina.com/blog/git-for-the-us-code)

本文提出为美国法典构建类似 Git 版本控制系统的修订追踪机制。美国法典并非正式法，仅为初步证据，其修改历史散见于脚注，律师难以快速追溯条文沿革；而法律研究日益依赖大模型，模型却常因缺乏时间有效性信息而给出错误判读，使该需求尤为迫切。文章以 11 USC §1182(1) 小商业债务人定义为案例，展示该条文自 2019 年创设以来历经 CARES 法案提高限额、2022 年过期与恢复、2024 年再过期、2025 年调整至 342.4 万美元的复杂变迁，说明有效修订史须同时记录文本、生效日期及追溯范围。作者引用慕尼黑工业大学研究指出，大模型常见两类失误：适用训练截止后已被取代的规则，或在新旧条文均可适用时偏向新法，将时间有效性视为硬约束可显著提升准确率。另一研究亦表明，让模型自行生成旧文本会产生法律意义上的错误，历史必须可核验。实践层面，作者对 2017 年以来九个标题的相邻发布点逐条比对，365 处变更中 361 处精确复现，每处标注公法来源与生效日期（261 处默认生效、72 处依生效日期注释、29 处依修订文本）。用户可按日期调取当时有效文本，以颜色区分各法案写入的措辞，追踪定义术语的关联引用。局限在于：尚未呈现后法对前日期的追溯效力，生效日期依赖模式匹配，特殊措辞回退至签署日。

---

## 17. Emacs 迎来五十周年

**原文标题**: Emacs Turns 50

**原文链接**: [https://www.technologyreview.com/2026/10/20/1145399/emacs-turns-50/](https://www.technologyreview.com/2026/10/20/1145399/emacs-turns-50/)

本文将编程工具从早期插板布线、穿孔卡片到全屏编辑器的演进，聚焦经典编辑器Emacs的五十年历程。Emacs前身是1962年丹·墨菲为PDP-1开发的TECO文本编辑器；1971年卡爾·米克尔森利用视频终端改进出Control-R，可即时显示编辑结果；1976年，MIT人工智能实验室研究员理查德·斯托曼受斯坦福全屏幕编辑器启发，以Control-R为基础开发出Emacs，核心创新在于每个按键皆可运行宏命令，极大提升了可定制性。格利·斯蒂尔等人为统一团队编程规范，确立了以Meta键为基础的标准命令集，"Emacs"即"编辑器宏"之缩写。Emacs以易用性迅速流行，斯托曼以磁带免费分发，开创了软件共享模式。伯纳德·格林伯格为Multics系统编写的Emacs版本被霍尼韦尔公司商业化，Java之父高斯林也做了类似尝试，这促使斯托曼发起GNU项目，推动自由软件运动。GNU Emacs随后跨平台运行，苹果曾于2001年将其预装于Mac OS X，2019年停用，但macOS至今仍保留Emacs快捷键。

---

## 18. 里金特地效飞行器重塑沿海出行方式

**原文标题**: Regent's Ground-Effect Vehicle Reimagines Coastal Travel

**原文链接**: [https://spectrum.ieee.org/ground-effect-vehicle](https://spectrum.ieee.org/ground-effect-vehicle)

罗德岛公司Regent正将一款现代电动地效飞行器推向市场，其设计灵感源自上世纪60年代的苏联"地效飞行器"概念。该项目名为Viceroy，计划于2028年前后投入商业运营，为沿海地区提供更快、更低碳的出行选择。地效飞行器利用贴近水面时产生的空气动力学"地面效应"实现高效飞行，Viceroy的巡航高度约为10米，可大幅缩短沿海城市间的通勤时间。文章配图显示，Viceroy已在罗德岛纳拉格安塞特湾上空完成测试试飞。Regent将这一经典苏联构想以现代电动驱动系统和智能控制技术全面改造，使其成为沿海短途交通的全新物种，有望缓解沿岸道路拥堵，打造绿色高效的跨区域运输网络。本文作者为资深汽车记者劳伦斯·乌尔里希，他曾任《纽约时报》及《底特律自由报》首席汽车评论员，在交通与出行领域具有深厚报道经验。

---

## 19. 奥塞贝格挂毯残片

**原文标题**: Oseberg Tapestry Fragments

**原文链接**: [https://en.wikipedia.org/wiki/Oseberg_tapestry_fragments](https://en.wikipedia.org/wiki/Oseberg_tapestry_fragments)

奥塞贝格挂毯残片是1904年在挪威奥塞贝格农场维京船葬中发现的纺织遗物，现藏于奥斯陆维京船博物馆，年代约为公元834年。挂毯宽16至23厘米，全长未知，由羊毛、丝线和亚麻制成，其中丝料疑为进口。残片图案包含人物、动物、船只、马车和房屋等。最大且保存最好的两块残片描绘武装人物与动物组成的队伍，似为葬礼或宗教仪式的送葬行列，队列朝向一棵悬挂尸体的大树，另有两只黑鸟掠过一匹马，可能象征奥丁的乌鸦。部分人物头戴角盔或佩戴动物面具，暗示仪式性质。船葬中还发现两具女性遗骸，据推测为王室成员，并伴有马车、雪橇、动物骨架等随葬品。因大量陶土和泥炭的密封作用，该墓葬被誉为维京时代保存最完好的遗存。奥塞贝格挂毯与贝叶挂毯风格相近，均为刺绣而非织造，是维京时代叙事艺术与装饰纺织品中极为罕见的幸存者，其具体含义至今仍有争议。

---

## 20. 动态墨滴斩获尼康"微观世界"摄影赛大奖

**原文标题**: Ink droplets in motion snag top prize in Nikon Small World contest

**原文链接**: [https://arstechnica.com/science/2026/10/meet-the-2026-winner-of-nikons-small-world-photomicrography-contest/](https://arstechnica.com/science/2026/10/meet-the-2026-winner-of-nikons-small-world-photomicrography-contest/)

25岁德国摄影师奥勒·比尔费尔特以一幅喷墨打印机滴墨瞬间的显微照片，从69个国家提交的1802幅作品中胜出，夺得了2026年尼康"微观世界"显微摄影大赛冠军。比尔费尔特在新冠疫情期间于父母阁楼发现一台旧显微镜，用管子和木块自制适配器连接父亲的相机，靠摸索自学显微摄影，并以"macrofying"品牌发布幕后视频。为捕捉高速飞行的墨滴，他巧妙拆解打印机，让纸张在固定喷头下滑动，在暗室中以闪光灯替代快门凝住滴墨瞬间，无需昂贵设备便完成拍摄。他坚持不使用AI，全靠传统技法。尼康方面称赞该作品展现了显微成像、创造力与艺术的交汇，提醒人们显微镜不只是科学仪器，更是拓展视觉的创意工具。该赛事创办于1974年，今年恰逢52周年；2011年另设"动态微观世界"摄影录像赛事。本届十项大奖作品涵盖跳跃蜘蛛携花粉、小鼠脑神经元、圆珠笔笔尖、雏菊剖面结构、蛭形弧菌孢子等奇妙主题。尼康还将推出收录本届获奖作品的2027年全彩日历。

---

## 21. 蜘蛛将"丝液"纺成自然界最坚韧的材料

**原文标题**: Spiders Spin 'Silk Dope' into Nature's Toughest Material

**原文链接**: [https://www.quantamagazine.org/how-spiders-spin-silk-dope-into-natures-toughest-material-20261028/](https://www.quantamagazine.org/how-spiders-spin-silk-dope-into-natures-toughest-material-20261028/)

圣地亚哥州立大学Gregory Holland团队通过核磁共振谱学、AlphaFold及分子动力学模拟，揭示了蜘蛛将液态"丝液"（蛋白质、水与盐的混合物）转化为超强纤维的分子机制。研究发现，在磷酸触发下，丝蛋白中精氨酸和酪氨酸的侧链通过弱相互作用排出水分子，将原本无序的蛋白质组织为凝胶状"凝聚态"，再进一步形成富含β-折叠的坚固纤维。这些氨基酸侧基充当"分子贴纸"，引导蛋白质在β折叠弯折处精准定位。该发现为生物界广泛使用的凝聚态策略提供了原子级直接证据——凝聚态同样参与DNA组织、基因调控及贻贝黏附等过程。蜘蛛丝比凯夫拉更坚韧、比钢更强且生物相容性好，有望应用于安全带、头盔及脑细胞修复支架。然而，实验室合成丝强度始终不及天然丝，推测额外强度来自β折叠以外的结构因素。研究者认为胶束、凝聚态与液晶并非互斥，而是同一相变过程中并存的多态。未来还需发现更多触发"开关"，方能复制蜘蛛在常温常压下制造超材料的天然"蓝图"。

---

## 22. 肯塔基男子成首位获AI使用宗教豁免的人本主义者

**原文标题**: Kentucky man becomes the first humanist granted religious exemption from AI

**原文链接**: [https://religionnews.com/2026/10/26/in-a-first-a-humanist-granted-a-religious-exemption-from-using-ai/](https://religionnews.com/2026/10/26/in-a-first-a-humanist-granted-a-religious-exemption-from-using-ai/)

无法访问该文章链接

---

## 23. 可执行考古学：重新激活模拟编程的程序——启发式编译器（1961）与KBEmacs（1984）

**原文标题**: Executable Archaeology: Reanimating the Heuristic Compiler (1961) and KBEmacs (1984)

**原文链接**: [https://arxiv.org/abs/2610.36341](https://arxiv.org/abs/2610.36341)

本文以"可执行考古学"方法，运行并重新激活两款兼具编程认知理论的历史AI程序。西蒙1961年的启发式编译器将编程视为问题求解，运用通用问题求解器的"手段-目的分析"策略；MIT程序员学徒项目1984年开发的KBEmacs则将专家编程建模为识别与组合熟悉"套语"，允许用户通过类英语命令语言搭建程序。作者通过运行两系统的原始代码完成验证：启发式编译器成功复现了西蒙1963年论文中的编译输出，KBEmacs则重现了1984年12月自检中的SQRT序列。对比分析揭示两者本质相通——均依赖适配已有例程，且西蒙后期亦主张搜索本身需要大量编程知识支撑。值得关注的是，本文有意采用Anthropic的Claude Code（Opus 5.5）等现代AI工具辅助完成重新激活工作，凸显了自我指涉的反思性。作者指出，这两个系统所承载的显式、可执行的编程理论在当今能力远超它们的AI编程助手中已基本消失，呼吁学界重新关注这些被遗忘的认知模型。

---

## 24. 反编译《快餐大亨2》：世界渲染揭秘

**原文标题**: Decompiling Fast Food Tycoon 2: Drawing the World

**原文链接**: [https://healeycodes.com/decompiling-fast-food-tycoon-2-drawing-the-world](https://healeycodes.com/decompiling-fast-food-tycoon-2-drawing-the-world)

摘要：作者利用GPT-6.1与Ghidra反编译了2001年经营模拟游戏《快餐大亨2》（欧洲名《Pizza Connection 2》），将4046个函数转化为约9.5MB的C伪代码存于SQLite，并结合Windows内存读取API深入剖析游戏机制。文中揭示了多项技术细节：世界渲染采用脏区域重绘与对角线绘制顺序，通过临时像素值处理遮挡关系，实现隐藏人物描边效果；日夜间光照由25级亮度表驱动，路灯按对象ID分组依次亮灭；动画基于精灵图预渲染，不同角色行走速度各异；餐厅内景采用"椅背—人物—椅面"分层绘制。此外，作者发现市民拥有不随每日重置的固定日程表，内含各阶层行为刻板设定；游戏内部代号"Pizza3"；披萨评分系统采用24分区均匀度检测、对位配料匹配及抄袭惩罚机制。作者以反编译字体生成全部配图，纪念这款童年神作背后被忽略的精巧设计。

---

## 25. 近各年龄段结直肠癌发病率均呈上升趋势

**原文标题**: Rising rates of colorectal cancer found in nearly all age groups

**原文链接**: [https://www.uchicagomedicine.org/forefront/cancer-articles/rising-rates-of-colorectal-cancer](https://www.uchicagomedicine.org/forefront/cancer-articles/rising-rates-of-colorectal-cancer)

美国芝加哥大学团队在《新英格兰医学杂志·证据》发表研究指出，结直肠癌发病率上升已不再局限于年轻人群，而是扩展至几乎各年龄段。研究分析国家癌症研究所近20年数据发现，美国结直肠癌年龄标准化发病率从2000年的每10万人55.2例降至2022年的36.7例，但2023年回升至38.3例，为二十余年来首次整体上升。其中45至49岁组增幅最大（年增12.76%），部分归因于全国筛查起始年龄由50岁降至45岁后早期检出增多。然而，65至69岁组发病率攀升及70至74岁组停滞令人担忧，提示可能存在尚未识别的风险因素正在抵消筛查成效。研究已排除新冠大流行的影响，团队正着手研究环境化学暴露等潜在病因。文章呼吁公众重视筛查：美国指南建议45至75岁进行常规筛查，45岁以下或75岁以上者应结合家族史及症状个体化评估；尚未达到筛查年龄者应关注血便、排便习惯改变及不明原因体重下降等信号，及时就医。若趋势持续，大规模诊断增加将给医疗体系带来沉重负担。

---

## 26. NVIDIA Nemotron 3.5 Transcribe：覆盖40种语言的开源ASR模型

**原文标题**: Nvidia Nemotron 3.5 Transcribe: open ASR for 40 languages

**原文链接**: [https://huggingface.co/blog/nvidia/nemotron-transcribe-granary](https://huggingface.co/blog/nvidia/nemotron-transcribe-granary)

NVIDIA于2026年10月发布Nemotron 3.5 Transcribe，一款开源权重语音转写模型，已在Hugging Face和ModelScope上线。该模型将转写、说话人归属、翻译与音频问答整合于单一检查点，支持40种语言转写、31种语言英译互译及13种语言说话人识别，可处理最长1小时录音并区分8位说话人。性能上，它以5.33%词错误率问鼎Hugging Face开源ASR英语排行榜，在Artificial Analysis排行榜以仅约40亿活跃参数（Mamba-Transformer混合MoE架构）与240亿参数模型并列首位，并在David AI与VoiceArena说话人归属榜单中取得最低错误率。模型支持自然语言提示引导输出格式，并可通过Granary v2开源数据管线（涵盖48种语言、46.3万小时音频）及NeMo Speech工具进行领域微调。医疗案例显示，经合成语音与真实录音联合微调，留出集WER从22.44%降至12.17%，相对降低45.8%。此外，借助NVFP4量化版本，该模型在Blackwell GPU上可实现3分钟处理100小时音频的高吞吐，兼顾本地与云端部署。

---

## 27. Tailscale SSH: Investigation and remediation update

**原文标题**: Tailscale SSH: Investigation and remediation update

**原文链接**: [https://tailscale.com/ssh-investigation-update](https://tailscale.com/ssh-investigation-update)

文章之前已经处理过

---

## 28. 美监管机构批准亚马逊Leo以115亿美元收购Globalstar

**原文标题**: US agency approves Amazon Leo’s $11.5B acquisition of Globalstar

**原文链接**: [https://www.reuters.com/business/media-telecom/us-agency-approves-amazon-leos-115-billion-acquisition-globalstar-2026-10-27/](https://www.reuters.com/business/media-telecom/us-agency-approves-amazon-leos-115-billion-acquisition-globalstar-2026-10-27/)

无法访问该文章链接。

---

## 29. Claude加速药物研发的早期进展

**原文标题**: Early progress on accelerating drug development with Claude

**原文链接**: [https://www.anthropic.com/research/early-progress-drug-development](https://www.anthropic.com/research/early-progress-drug-development)

Anthropic生命科学团队与BigHat、百时美施贵宝、Divergence Labs、Enveda、Generate Biomedicines及The Column Group六家机构深度合作，并启动自有研发项目，展示Claude贯穿药物开发全流程的潜力：Generate改造CAR-T疗法，设计方案缩短70%，受体产量提升约10倍；Divergence一个月内自主生成3.5万个抗体设计，为食物过敏治疗找到有效候选分子；BigHat完成超1000个分子变体测试，结合力提升10倍以上；Enveda用Claude审查制造文件，人工审查时间缩减89%；The Column Group创建新公司Pleiades，以Claude驱动更多药物项目；百时美施贵宝用Claude辅助临床试验规划与成功率评估。此外，Anthropic收购Mithril Medicine，借助Claude在18个月内将肌营养不良候选药推进至小鼠实验阶段，预计2028年进入人体临床试验。文章指出当前成果多属临床前阶段，未来将向临床扩展，并已推出Claude Science科研工作台、生命科学验证计划及开放研究合作等举措，致力于将AI深度融入研发全链条，加速新疗法问世。

---

## 30. 科技巨头的用水需求引发全球抗争

**原文标题**: Big Tech's thirst for water is sparking a global resistance

**原文链接**: [https://restofworld.org/2026/ai-datacenters-water-resistance-global/](https://restofworld.org/2026/ai-datacenters-water-resistance-global/)

2023年一项研究揭示，训练ChatGPT即需消耗18.5万加仑水，由此引发公众对AI数据中心用水问题的广泛关注。超大规模数据中心每日耗水可达100万至500万加仑，且必须使用纯净水，迫使它们与周边社区争夺有限的饮用水资源；生成式AI所依赖的GPU散热需求远超传统芯片，进一步加剧了这一压力。在智利，谷歌拟在圣地亚哥Cerrillos建设耗水量惊人的数据中心，当地居民成立MOSACAT组织经过数月抗争，推动公投以49%的反对率否决项目，谷歌最终改为空气冷却方案。微软在Quilicura也遭遇类似阻力。在乌拉圭，谷歌计划在旱情严重的Canelones建数据中心，日耗水达200万加仑，引发居民对基本饮水权受威胁的担忧。巴西福塔雷萨周边更有为TikTok建设的超大型数据中心。这些冲突正从全球南方蔓延至欧美。科技巨头常以就业和投资为说辞争取项目落地，却往往隐瞒对本地水资源的巨大索取，激起全球范围内日益广泛的社区抵抗运动。

---

