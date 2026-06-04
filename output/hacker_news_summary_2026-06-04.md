# Hacker News 热门文章摘要 (2026-06-04)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 在巴黎圣母院脚下，“世纪考古”揭开1700年历史

**原文标题**: Under Notre Dame, a 'dig of the century' unearths 1,700 years of history

**原文链接**: [https://apnews.com/article/notre-dame-dig-treasures-paris-archaeology-roman-dae41f792c1402faf32a87c154cc9a77](https://apnews.com/article/notre-dame-dig-treasures-paris-archaeology-roman-dae41f792c1402faf32a87c154cc9a77)

考古学家正在巴黎圣母院前庭进行一项重大发掘，被称为“世纪考古”。该项目始于2019年火灾及后续重建，由于计划在广场上增设树木和遮阳设施，需要挖掘古老土壤。这个深达4米的发掘揭示了1700年的历史，出土了从罗马时期的巴黎（2000年前）到中世纪的文物。

关键发现包括一枚刻有君士坦丁大帝像的4世纪硬币、带有未破译红色标记的中世纪陶器碎片，以及来自古代用作垃圾堆的厕所的完整壶和杯子。层层土壤展现了叠压的时代：中世纪房屋、墨洛温王朝和加洛林王朝的粮仓，以及密集的罗马居民区。考古学家还发现了一块被回收用作铺路石的罗马门槛，这证明了罗马帝国崩溃后人们如何加固西岱岛。

此次发掘极为罕见，因为这类工程仅在施工前进行；广场计划于2028年完工，届时将新增160棵树木和降温水景。考古学家希望能继续深挖，直至前罗马时代的高卢。出土文物存放在巴黎考古中心，有助于更深入了解这座城市的层叠历史。

---

## 2. DNS是为人类服务的，而非为IT基础设施。

**原文标题**: DNS is for people, not for IT infrastructure

**原文链接**: [https://louwrentius.com/dns-is-for-people-not-for-it-infrastructure.html](https://louwrentius.com/dns-is-for-people-not-for-it-infrastructure.html)

**摘要：**

本文主张不应在内部IT基础设施中使用DNS，同时承认其面向公网服务的价值。核心论点是，DNS为内部网络中的机器间通信引入了不必要的复杂性、风险和故障点。

**主要观点：**
- **DNS是一种负担：** 添加DNS会增加组件数量、故障风险及不可预测的交互（如循环依赖），Facebook 2021年事件等重大宕机事故已凸显这一点。
- **内部使用的替代方案：** 工程师可利用自动化工具（Ansible、pyinfra）直接将IP地址配置到服务器配置中，替代依赖DNS的做法。若需人类可读性，可预配`/etc/hosts`文件实现域名到IP的映射，无需DNS服务。
- **安全风险：**
    - **DNS默认未加密，** 使其在本应安全的网络中易受欺骗攻击。DNSSEC则增加了管理复杂性。
    - **DNS可被用于数据泄露：** 攻击者可通过DNS查询（如`dnscat2`、`iodine`）隧道传输敏感数据，绕过薄弱的出口过滤。作者建议阻止直接出站DNS查询，改用代理服务器并仅允许列表中的域名。
- **评价：** 文章总结认为，尽管存在权衡，但探索无DNS内部基础设施有助于提升可靠性与安全性，并邀请读者就便利性与健壮性之间的取舍展开讨论。

---

## 3. Kiki——一款轻量级、占地小的个人主页构建工具包

**原文标题**: Kiki – a tiny homepage construction kit with a small footprint

**原文链接**: [https://tomotama.com/kiki](https://tomotama.com/kiki)

**摘要：**

Kiki 是一款极简主页构建工具包，秉承“友魂”理念，专为简洁性与用户自主权设计。其源代码约1500行（不足50KB），便于单人阅读和修改。

**核心功能：** 5款响应式主题、公开维基模式、实时动态与静态站点生成、Gopher协议支持、简易标记语言（Bug）、Markdown插件支持、RSS/HTML生成、屏幕阅读器友好输出及交互式文档。

**Kiki不包含：** 无JavaScript、外部库、Cookie、跟踪、数据库、安装程序（仅需解压）、社交媒体功能或自动更新提示。总占用空间低于100KB，且不含任何AI生成代码。

**发布方式：** 通过itch.io提供共享软件版；可购买完整版。演示站点及Tomotama官网均基于Kiki运行。

---

## 4. 我最近被诊断出患有抗NMDA受体脑炎。

**原文标题**: I was recently diagnosed with anti-NMDA receptor encephalitis

**原文链接**: [https://burntsushi.net/encephalitis/](https://burntsushi.net/encephalitis/)

**概要：** 作者描述了其被诊断及经历抗NMDA受体脑炎的过程，这是一种导致脑部炎症的自身免疫性疾病。病症始于流感样症状（心跳加速、盗汗、焦虑、惊恐发作），随后发展为慢性下颌疼痛、严重平衡问题、自杀意念、精神病性症状（妄想、幻听）并最终跌倒。初期被误诊为焦虑症/精神分裂症，并被送入精神病院。一次幸运的医生转介使其得以转入布列根和妇女医院，甚至在官方确诊前便开始了挽救生命的治疗（静脉注射免疫球蛋白和甲泼尼龙），后通过脊髓液抗体检测阳性最终确诊。作者目前正在参加萨特利珠单抗的临床试验（CIELO项目），逐渐减停药物，并指出因早期干预而预后极佳。他们推测此类疾病或许能解释历史上的“恶魔附身”现象。尽管这是人生中最糟糕的经历，但康复效果远超预期。作者对妻子凯特琳·布雷迪无条件的支持与帮助，以及雇主查理·马什非同寻常的理解表示感谢，并提及苏珊娜·卡哈兰的《燃烧的大脑》中记载了类似案例。

---

## 5. Uber每月1500美元的AI使用上限，为AI工具定价提供了有益信号

**原文标题**: Uber's $1,500/month AI limit is a useful signal for AI tool pricing

**原文链接**: [https://simonwillison.net/2026/Jun/3/uber-caps-usage/](https://simonwillison.net/2026/Jun/3/uber-caps-usage/)

优步已对所有员工实施每款AI编码工具每月1500美元的使用额度限制，涉及Cursor和Anthropic的Claude Code等工具，以应对在四个月内耗尽2026年AI预算后出现的意外高成本。该限额针对每款工具分别设定，而非跨工具统一管理，意味着在一款工具上的支出不会影响其他工具的预算。这一政策被视为对超支现象的理性回应，与此前竞争性的使用排行榜形成鲜明对比。

这一限额暗示了优步从AI工具中获得的实际价值：假设每位工程师活跃使用两款工具，则每名工程师每年的限额为36000美元。以美国软件工程师年薪中位数33万美元计算，AI限额约占其总薪酬的11%。作者指出，其个人每款工具的每月使用量约为1000美元，但由于享受了优步等大公司无法获得的补贴个人套餐，实际花费仅为100美元。在新政策下，作者每款工具每月仍可有500美元的富余额度。该文章发布于2026年6月3日。

---

## 6. 我们跨产品管控Claude的方式

**原文标题**: The ways we contain Claude across products

**原文链接**: [https://www.anthropic.com/engineering/how-we-contain-claude](https://www.anthropic.com/engineering/how-we-contain-claude)

本文详述了Anthropic如何通过聚焦于自主AI代理的“爆炸半径限制”策略，管理其三大核心代理产品——claude.ai、Claude Code与Claude Cowork——中的安全风险。

核心安全挑战涉及三类风险：**用户滥用**（有害指令）、**模型异常行为**（非提示下的有害行动）及**外部攻击者**（提示注入或运行时攻击）。防御体系覆盖三个层面：**环境层**（沙箱、虚拟机、出口控制）、**模型层**（系统提示、分类器）及**外部内容层**（工具访问与权限）。

Anthropic为每个产品量身定制了三类遏制模式：

1. **claude.ai**：在隔离基础设施上使用临时容器（gVisor），禁止本地代码执行与持久化存储，以有限功能为代价最小化爆炸半径。

2. **Claude Code**：最初依赖人工审批写入/bash/网络操作，但审批疲劳（93%审批率）削弱了监督效力。现采用操作系统级沙箱（Seatbelt/bubblewrap），将权限提示减少84%。主要漏洞包括：信任同意前的项目配置执行，以及成功窃取凭证的网络钓鱼攻击。

3. **Claude Cowork**：为非技术用户内置于完整虚拟机运行，仅挂载用户选定工作区文件夹，主机凭据保持不可访问。这种绝对边界消除了用户对命令的判断需求。

文章强调，单一防御措施并不足够——随着代理能力持续扩展，环境层、模型层与内容层的重叠控制至关重要。

---

## 7. 一次学会SQL，受用三十年

**原文标题**: Learn SQL Once, Use It for 30 Years

**原文链接**: [https://fagnerbrack.com/learn-sql-once-use-it-for-30-years-9aceb0bdee03](https://fagnerbrack.com/learn-sql-once-use-it-for-30-years-9aceb0bdee03)

**摘要：**

本文认为，SQL在科技行业中具有独特的持久性和价值。与每隔几年就会更新的前端框架或编程语言不同，SQL作为数据管理的核心稳定工具，已持续三十多年。作者指出，其声明式特性——只需说明*想要什么*数据，而非*如何获取*——使其能普遍适用于不同的数据库系统。

关键要点包括：
- **持久性：** SQL在数十年前就已标准化，如今依然几乎同样重要。
- **可移植性：** 掌握SQL后，只需极少的语法调整即可操作PostgreSQL、MySQL、SQL Server、SQLite等多种数据库。
- **高需求：** 数据存储几乎是所有应用的基础，因此从后端开发到数据科学，SQL技能始终不可或缺。
- **学习基础：** 理解SQL有助于更轻松地学习ORM和数据工具。
- **需规避的陷阱：** 过度依赖ORM而不理解底层SQL，可能导致查询效率低下。

文章总结指出，在SQL上投入时间是一项高回报的职业决策，并强调，尽管其他技术来去匆匆，但使用SQL查询和分析数据的能力，仍将是贯穿开发者整个职业生涯的一项宝贵且恒久的技能。

---

## 8. thunderbolt-ibverbs：我们的家庭版InfiniBand

**原文标题**: thunderbolt-ibverbs: We have InfiniBand at home

**原文链接**: [https://blog.hellas.ai/blog/thunderbolt-ibverbs/](https://blog.hellas.ai/blog/thunderbolt-ibverbs/)

本文介绍了“thunderbolt-ibverbs”这一实验性Linux内核模块的创建过程，该模块能使AMD迷你电脑上的USB4/雷电端口作为InfiniBand设备运行，旨在让消费级硬件无需昂贵的企业级网络设备即可在多台机器间运行AI工作负载（vLLM/RCCL）。

主要成果包括：
- **性能**：双向RDMA吞吐量约95 Gb/s，单向延迟约7微秒（通过ib_write_bw/ib_write_lat测试），远超板载2.5 GbE（约2.3 Gb/s）或基于雷电网络的软RoCE（约9 Gb/s）。
- **应用成果**：实现两台设备间的张量并行推理（MiniMax-M2.7），并将Gemma 3 27B模型的FSDP训练时间从以太网下的1359秒缩短至使用4-HCA USB4 RDMA时的126秒。

作者指出，此代码为研究级AI生成代码，存在已知风险（如神秘的内核恐慌），不提供任何担保或支持。它展示了在廉价硬件上实现高速低延迟互连的概念验证，但尚未达到生产就绪状态。

---

## 9. Show HN：Boxes.dev：告别本地主机；在云端运行Claude Code与Codex

**原文标题**: Show HN: Boxes.dev: ditch localhost; run Claude Code and Codex in the cloud

**原文链接**: [https://boxes.dev](https://boxes.dev)

**Boxes.dev 概述**

Boxes.dev 是一款基于云端的开发环境服务，允许开发者在云端完整运行Claude Code和Codex等AI编程工具，无需搭建本地开发环境。

**核心要点：**

- **云原生开发：** 用户可直接从浏览器启动预配置、可丢弃的开发环境，省去本地安装和配置的繁琐步骤。
- **AI工具集成：** 该平台针对运行Claude Code和Codex进行了特别优化，提供预装这些AI编程助手的即用环境。
- **即时启动：** 无需管理依赖项、Docker容器或本地服务器配置——环境可在数秒内启动。
- **协作功能：** 开发环境可与团队成员共享，支持实时结对编程或代码审查。
- **无缝工作流：** 开发者可远程编写、测试和运行应用程序，完成后直接关闭环境，保持本地机器整洁。
- **适用场景：** 非常适合实验、原型开发、学习新技术或需要隔离环境（避免污染宿主系统）的项目开发。

该服务旨在将整个编码环境迁移至云端，专注于速度、简洁性和AI辅助开发，从而简化开发者体验。

---

## 10. 达芬奇调色 21

**原文标题**: DaVinci Resolve 21

**原文链接**: [https://www.blackmagicdesign.com/products/davinciresolve/whatsnew](https://www.blackmagicdesign.com/products/davinciresolve/whatsnew)

DaVinci Resolve 21 新增专用**照片页面**，将好莱坞级调色工具引入静态摄影，包括节点式编辑、灯箱视图、相册整理及AI搜索功能。支持索尼/佳能相机联机拍摄、Resolve FX特效、LUT色彩查找表及Blackmagic Cloud云端协作。

**AI工具**大幅扩展：**IntelliSearch智能搜索**可识别媒体中的人物/物体；**AI语音生成器**通过文本或简短语音样本创建配音；**CineFocus电影景深**调节景深效果；**面容年龄变换**与**面部重塑**可调整面部特征；**瑕疵去除**、**场记板ID**自动提取元数据、**超级锐化**及**动态去模糊**提升画质。

**剪辑与快编页面**优化关键帧功能（新增缓动模式、曲线编辑器），支持HTML/Lottie动画及智能媒体夹视图。**调色页面**推出**多主控修剪管理器**，可同步处理HDR/SDR交付，支持魔法蒙版原位渲染及图层列表节点视图。**Fusion特效**新增70余种**Krokodove**视觉特效工具、宏编辑器、音频驱动动画及升级版USD工具集。**Fairlight音频**新增音轨文件夹、6段片段均衡器、均衡/电平匹配器及插件预设链式特效。

性能提升包括支持Apple**注视点渲染**、**MainConcept H.265/MV-HEVC编码**，以及通过全景图旋转和ILPD重定向扩展的**VR180/VR360沉浸式工作流**。

---

## 11. 英国媒体近六成报道未披露其国防产业关联

**原文标题**: UK media fails to disclose defence sector links in nearly 60% of cases

**原文链接**: [https://aoav.org.uk/2026/military-experts-or-arms-industry-insiders-uk-media-fails-to-disclose-defence-sector-links-in-nearly-60-of-cases/](https://aoav.org.uk/2026/military-experts-or-arms-industry-insiders-uk-media-fails-to-disclose-defence-sector-links-in-nearly-60-of-cases/)

**摘要**

AOAV（武装暴力行动组织）发布的一份新报告显示，英国媒体在引用或介绍"军事专家"时，近60%的情况下未披露其与国防领域的关联。该研究分析了英国主要广播公司和报纸的334个视频片段及文章，发现59%被描述为独立专家的消息源，实际与武器行业存在未公开的联系，例如受雇于国防承包商、游说团体，或供职于接受武器制造商资助的军事智库。

这种缺乏透明度的做法可能会误导公众，因为这些"内部人士"在被包装成中立分析人士时，往往呈现倾向行业的观点。报告指出，仅41%的出镜适当披露了这些关联。AOAV呼吁制定更严格的编辑准则，要求全面公开经济利益关系，并敦促媒体机构丰富专家库，纳入人权与和平建设领域的观点。该发现引发了对国防领域影响英国战争报道及公众舆论的担忧，尤其是在涉及英制武器的冲突期间。

---

## 12. 纪录片《C++：最具影响力的编程语言》

**原文标题**: Documentary, "C++: The Most Consequential Programming Language"

**原文链接**: [https://www.youtube.com/watch?v=lI7tMxzSJ7w](https://www.youtube.com/watch?v=lI7tMxzSJ7w)

所提供的文本并非关于名为“C++：最具影响力的编程语言”的纪录片文章，而是呈现为**YouTube页面页脚**或法律声明。内容完全由标准的YouTube平台信息构成，包括：**版权与法律声明**（© 2026 Google LLC）、**谷歌公司地址**（加州山景城）、**联系方式**（电话号码与邮箱）、**条款与政策**（隐私、安全、开发者条款），以及**免责声明**（声明YouTube不出售创作者展示的产品，且对此不承担责任）。**要点：**该文本是YouTube的模板化法律及公司信息，而非纪录片摘要，其中不包含关于C++编程语言或任何纪录片内容的实质信息。用户查询中的标题与所提供的文本并不相符。

---

## 13. 波音787客机在法兰克福前起落架倒塌，数人受伤

**原文标题**: Several injured in Boeing 787 nose-gear collapse in Frankfurt

**原文链接**: [https://www.reuters.com/business/aerospace-defense/lufthansa-787-jet-suffers-front-wheel-collapse-frankfurt-gate-2026-06-04/](https://www.reuters.com/business/aerospace-defense/lufthansa-787-jet-suffers-front-wheel-collapse-frankfurt-gate-2026-06-04/)

无法访问文章链接。该网址可能位于付费墙之后、需要订阅，或页面无法访问。

---

## 14. 扩展还是模仿？合法的Haskell语言扩展与冒牌货

**原文标题**: Extension or Imitation? Valid Haskell Language Extensions vs. Impostors

**原文链接**: [https://doscienceto.it/extension-or-imitation/](https://doscienceto.it/extension-or-imitation/)

**摘要：**

文章《扩展还是模仿？真正的 Haskell 语言扩展与冒牌货》探讨了 Haskell 语言扩展的泛滥问题，区分了集成到 Glasgow Haskell 编译器（GHC）中的官方稳定扩展与那些模仿扩展行为却缺乏可靠语义的非官方冒牌货（如编译器标志、预处理器宏或语法技巧）。

关键要点包括：
- **有效扩展**（例如 `-XScopedTypeVariables`、`-XGADTs`）经过正式规范，作为 GHC 的一部分维护，并提供可预测的类型安全功能。
- **冒牌货**通常源于变通方法（例如使用 `CPP` 宏模拟条件编译）或使用已被取代或废弃的过时扩展。
- 这种混淆常导致代码无法在 GHC 不同版本或其他 Haskell 编译器之间移植，从而引发维护难题。
- 文章建议开发者对照 GHC 官方文档验证扩展，避免依赖未记录的标志，并用多个 GHC 版本测试代码，以确保获得真正的语言级支持而非模仿。

本质上，文章警示通过非标准手段模仿扩展会损害 Haskell 的可靠性与可移植性，并敦促仔细验证以区分真正的语言能力与近似模拟。

---

## 15. Let's Encrypt的后量子未来

**原文标题**: A Post-Quantum Future for Let's Encrypt

**原文链接**: [https://letsencrypt.org/2026/06/03/pq-certs](https://letsencrypt.org/2026/06/03/pq-certs)

**摘要：**

本文概述了Let's Encrypt构建后量子安全Web PKI的计划，主要通过Merkle树证书（MTC）实现。由于政府指令（美国国家安全局、欧盟）以及谷歌、Cloudflare等大型企业将迁移时间表提前至2029年，后量子认证的紧迫性日益增强。

核心挑战在于体积：ML-DSA-44等后量子签名方案的大小（2420字节）远超当前的RSA/ECDSA签名，这将导致TLS握手失败和速度下降。MTC通过以单次签名覆盖批量颁发证书的方式解决了这一问题。在常见场景下，即便采用后量子算法，MTC的握手数据量也比当前更小。MTC还将证书透明度直接内置到颁发过程中。

Let's Encrypt计划支持MTC，目标于2026年底搭建测试环境，2027年投入生产。这需要对颁发基础设施、ACME协议及撤销工具进行改造。对于当前用户而言，短期内无需任何变更。过渡将逐步推进，取决于最终标准的确定及生态系统的支持。与此同时，文章建议优先启用混合后量子密钥交换（X25519MLKEM768）以加强加密，因为"先存储，后解密"攻击的威胁更为紧迫。

---

## 16. ESP32-S31

**原文标题**: ESP32-S31

**原文链接**: [https://www.espressif.com/en/products/socs/esp32-s31](https://www.espressif.com/en/products/socs/esp32-s31)

本文概述了乐鑫科技SoC产品线中的**ESP32-S3**微控制器，该产品隶属于**ESP32-S**系列，定位与ESP32-P、ESP32-C及ESP32-H等系列并列。

内容阐述了乐鑫科技更广泛的生态系统，具体包括：
- **硬件**：SoC、模组、开发套件（含M5Stack）及设备。
- **SDK与框架**：ESP-IDF、ESP-IoT-Solution，以及专用AI（ESP-SR、ESP-DL）、物联网（ESP-ADF）和连接框架。
- **云解决方案**：用于设备管理与远程监控的ESP RainMaker®和ESP Insights。
- **连接与协议**：支持Matter、ESP-Mesh-Lite、BLE-MESH和HomeKit。
- **解决方案**：AI代理、音频前端算法、HMI智能屏显、低功耗无线（ESP-NOW）及智能开关方案。
- **支持与资源**：技术文档、GitHub仓库、客户端应用（Nova Home、ESP RainMaker）及原理图/PCB设计审查等服务。
- **生态与社区**：合作伙伴关系（AWS）、第三方SDK（Arduino、Zephyr）、教育资源及开发者论坛。

本文主要为ESP32-S3及相关乐鑫产品提供导航枢纽，重点突出适用于物联网与AI应用的硬件选型、软件开发工具、云集成及全面技术支持。

---

## 17. 数学家发出警告：人工智能迅猛发展

**原文标题**: Mathematicians issue warning as AI rapidly gains ground

**原文链接**: [https://www.science.org/content/article/mathematicians-issue-warning-ai-rapidly-gains-ground](https://www.science.org/content/article/mathematicians-issue-warning-ai-rapidly-gains-ground)

**摘要：**

一群著名数学家就人工智能（AI），尤其是大语言模型在数学研究中的快速发展发出警告。在一封与《美国数学学会通告》社论同步发表的公开信中，数学家们指出，尽管AI工具在计算、证明验证和生成猜想方面可能有用，但它们对数学的严谨性和创造力构成了严重风险。

核心担忧在于，过度依赖AI可能削弱人类的理解与直觉。与人类数学家不同，AI缺乏真正的推理能力，可能产生看似合理但实则错误的结果（幻觉）。如果研究人员在未经严格验证的情况下将AI输出视为权威，可能导致有缺陷的证明泛滥，并削弱推动数学发现的深层概念性思维。

包括蒂莫西·高尔斯和陶哲轩在内的签署者并不呼吁禁止AI。相反，他们敦促数学界谨慎行事，强调需要透明地使用AI，批判性地评估机器生成的证明，并保留数学中独特的人类方面——例如提出问题的能力、发展启发式方法以及构建概念框架。他们主张制定明确的指导方针，以确保AI成为协作工具，而非人类推理的替代品，从而维护该学科的长期可靠性与思想深度。

---

## 18. Palantir将管理英国枪支、爆炸物及毒品的许可事务

**原文标题**: Palantir to manage UK firearms, explosives, and poisons licensing

**原文链接**: [https://www.theregister.com/databases/2026/06/04/palantir-wins-9m-contract-to-run-uk-firearms-licensing-cia-backed-biz-to-hold-gun-bomb-and-poison-records/5251132](https://www.theregister.com/databases/2026/06/04/palantir-wins-9m-contract-to-run-uk-firearms-licensing-cia-backed-biz-to-hold-gun-bomb-and-poison-records/5251132)

**摘要：**

Palantir赢得了一份价值900万英镑（约合1200万美元）的英国政府合同，负责管理国家枪支许可管理系统（NFLMS），以取代2000年代中期遗留的旧系统。这家由中情局支持的美科技公司还将处理爆炸物、爆炸物前体及毒药的许可管理。

该合同由警察数字服务机构授予，将为英格兰和威尔士的43支警察部队提供服务，并可能扩展至苏格兰警察局和北爱尔兰警察局。合同期限最长可达十年，并击败了竞标对手埃森哲和NEC软件公司。此前的招标估价包含税费为1700万英镑。

Palantir的入选引发了担忧，因其存在争议的历史，包括由中情局的风险投资创立，以及首席执行官亚历克斯·卡普发表的挑衅性言论。本周早些时候，英国一议会委员会称政府对Palantir的依赖是一个“不可接受的薄弱点”。该公司还持有英国公共部门的其他重大合同，包括价值3.3亿英镑的NHS数据平台，以及未通过竞标直接授予的价值2.4亿英镑的国防部合同。

---

## 19. 以读书为生的男人

**原文标题**: A Man Who Reads Books for a Living

**原文链接**: [https://lithub.com/the-man-who-reads-books-for-a-living-one-every-two-days/](https://lithub.com/the-man-who-reads-books-for-a-living-one-every-two-days/)

**摘要：**

本文介绍了克拉克·斯派克——一位罕见的职业“书籍审读人”，专门评估文学作品是否适合改编成影视作品。他的工作内容包括阅读书籍（每周约六本，职业生涯累计超过6000本），并撰写“评估报告”——即面向好莱坞高管、经纪人和制片人的详细摘要及影视化评估。这些报告决定了哪些书籍会被推荐进一步考虑，哪些被淘汰，往往影响着数百万美元的交易决策。

克拉克自幼阅读速度快、热爱电影，2002年从制片助理做起，一直以自由职业者身份参与零工经济。他阅读范围广泛，从通俗小说到文学杰作，有时还会接到知名作家的初稿。尽管他影响力巨大（曾是一位拥有EGOT大满贯的资深制片人的首席审读人），但始终默默无闻，片尾字幕中从未出现他的名字，也很少遇到同行。

关键洞察包括：改编成功依赖于强有力的“梗概”（一句话即可概括）、行动力强而非沉溺于内心活动的动态角色，以及可转化的情节优于文笔风格。叙述内心活动密集的文学作品比惊悚小说更难改编。忠实原著不如创造独立成篇的影视作品重要。克拉克的角色揭示了出版与电影产业之间不断变化的输送管道——如今已基本数字化且去中心化。

---

## 20. 马萨诸塞州上空流星爆炸

**原文标题**: Meteor Explodes over Massachusetts

**原文链接**: [https://www.nbcboston.com/news/local/meteor-explodes-over-massachusetts-what-we-know-and-where-it-landed/3957663/](https://www.nbcboston.com/news/local/meteor-explodes-over-massachusetts-what-we-know-and-where-it-landed/3957663/)

2026年5月30日，一颗流星在马萨诸塞州上空爆炸，产生的巨大音爆响彻整个新英格兰地区。最初估计其宽度为3英尺，但美国国家航空航天局随后将直径修正为约5英尺，质量达5.6公吨（与一头成年大象相当）。它以约42000英里/小时的速度飞行，自西北向东南划破26英里长的轨迹，最终在海拔31英里处解体，释放能量相当于230吨TNT炸药。现已被确认为铁陨石的这块陨石坠入科德角湾，沉没在30米深的海水中。

尽管有报告称建筑晃动、地面震动，但未造成人员伤亡或财产损失。美国地质调查局确认该事件为音爆现象，而非地震。行星防护专家阿莉莎·哈达吉教授指出，此类天体并不罕见，但能如此清晰地听到其声响却非比寻常。上一次重大陨石致灾事件发生于2013年俄罗斯车里雅宾斯克。受恶劣海况及海水侵蚀影响，打捞工作几无可能。

---

## 21. Ableton 扩展 SDK

**原文标题**: Ableton Extensions SDK

**原文链接**: [https://www.ableton.com/en/live/extensions/](https://www.ableton.com/en/live/extensions/)

**Ableton Extensions SDK 文章摘要**

本文介绍了 **Ableton Extensions SDK**，这是一款面向 Live 12 Suite（测试版 12.4.5+）的全新开源 JavaScript API。该 SDK 支持用户构建可直接集成到 Live 工作流程中的自定义工具，使其能够读取和重写整个工程集——包括轨道、片段及结构。

**核心功能：** 扩展程序可用于转换 MIDI、分析歌曲结构、自动执行重复任务、生成创作模式、连接外部服务，甚至运行游戏。用户可通过右键单击片段或轨道等项目的上下文菜单来访问这些功能。

**开发

**可用性：** 扩展程序仅适用于 **Live 12 Suite 测试版**（不支持 Standard、Intro 或 Lite 版本）。文章列举了一系列实验性扩展程序（例如 Beat Buddy、Notation、Paulstretch）作为入门参考，用户可通过 Discord 社区进行分享。

**与 Max for Live 的对比：** Max for Live 专注于合成与复杂信号链，而扩展程序是基于 JavaScript 的工具，用于操控工程集结构、数据及工作流程。

用户可通过提供的 GitHub 仓库和 Discord 社区加入测试、下载 SDK 并开始构建。

---

## 22. PlayStation 架构

**原文标题**: PlayStation Architecture

**原文链接**: [https://www.copetti.org/writings/consoles/playstation/](https://www.copetti.org/writings/consoles/playstation/)

索尼PlayStation的架构以定制化系统级芯片（SoC）为核心，该芯片基于MIPS R3000A架构的中央处理器（CPU），由LSI Logic通过其CoreWare项目设计。这款主频33.87 MHz的CPU配备32位数据总线、4 KB指令缓存，并采用独特的1 KB高速暂存存储器（快速SRAM）替代数据缓存。该CPU未集成浮点运算单元（FPU），依赖定点运算完成3D计算。

该SoC集成了三个协处理器：系统控制协处理器（CP0）负责缓存与中断管理；几何变换引擎（GTE/CP2）加速3D数学运算（矩阵/向量操作、光照、裁剪）；运动解码器（MDEC）解压类似JPEG的宏块，实现全动态视频播放。主机配备2 MB EDO内存用于通用任务。

为处理高带宽数据传输，直接内存访问（DMA）控制器使光驱、MDEC、GPU和SPU能绕过CPU独立传输数据。MIPS I指令集要求程序员在跳转或分支指令后插入分支延迟槽以手动处理流水线冲突。该设计以简洁性和成本效益为核心，使家用主机具备竞争力的3D性能。

---

## 23. 太多人在未经许可的情况下变得过于能干

**原文标题**: Too many people become too capable without asking permission

**原文链接**: [https://morlockelloi.substack.com/p/censorship-20](https://morlockelloi.substack.com/p/censorship-20)

本文认为，推动对前沿AI模型的管控，本质上是为了维持垄断与精英把关，而非出于安全考虑。前沿大语言模型虽常被比作公共图书馆，但其本质截然不同：它们是活跃的能力引擎，压缩并具象化人类文明知识，能够即时实现综合、编程、规划与分析。

关键在于，大语言模型降低了将知识转化为行动所需的劳动与技能门槛。图书馆提供被动获取信息的渠道，而大语言模型则提供执行认知——一个不知疲倦、可随时部署的助手，相当于数年的精英教育。这种认知杠杆的民主化，动摇了博士、律师、分析师等资质认证的垄断地位。

本文将当前管控措施称为"能力审查"——并非旧式的禁书，而是限制将知识综合为可执行能力的机制。集中化实验室吸收公共数据后，却宣称对由此产生的能力拥有排他性所有权，并以"安全"为由阻碍分布式访问。

对于既得利益者而言，"噩梦场景"并非人人获得十个博士学位，而是数百万人能以低成本获得跨领域的实用能力框架——这缩小了普通人与资质专家之间的鸿沟，从而瓦解了专业知识的垄断定价与把关特权。核心矛盾在于圈地运动：对源于公共文明的能力实施私有控制，却伪装成负责任的治理。

---

## 24. CP/M-86与MS-DOS交叉开发环境

**原文标题**: CP/M-86 & MS-DOS Cross Development Environment

**原文链接**: [https://github.com/tsupplis/cpm86-crossdev](https://github.com/tsupplis/cpm86-crossdev)

**摘要：** 本文介绍了一种使用现代工具构建CP/M-86和MS-DOS软件的交叉开发环境。该环境支持C语言（K&R及接近ANSI标准）、汇编语言和BASIC编程语言。核心组件包括Aztec C编译器（v3.4和v4.2）、Digital Research工具（rasm86、link86、lib86、asm86、cb86）、Microsoft工具（masm、link、exe2bin）、NASM，以及用于在macOS/Linux上运行DOS工具的emu2 DOS模拟器。CP/M-80程序则通过tnylpo模拟器运行。

该环境使用脚本包装器（如`pcdev_rasm86`、`aztec34_cc`）简化工具调用。`fetch_tools`脚本可下载并缓存所有组件以确保可重现性。构建示例演示了如何编译C程序、使用rasm86/asm86/masm/nasm进行汇编，以及与相应库进行链接。Aztec链接器会根据目标库自动添加C运行时启动对象（例如，`-lc86`对应CP/M-86，`-lc`对应MS-DOS）。还提供了用于容器化开发的Dockerfile。

文中说明了所包含工具（Aztec C、Digital Research、Microsoft、NASM、emu2、tnylpo）的许可条件，用户需自行承担使用风险。该项目纯粹出于乐趣分享，不提供任何保证。

---

## 25. 航空公司用AI假装共情而非解决问题：乘客提示语

**原文标题**: Airlines Uses AI to Fake Empathy Rather Than Fix Problems: Passenger Sent Prompt

**原文链接**: [https://viewfromthewing.com/airlines-are-using-ai-to-manufacture-empathy-instead-of-solving-problems-one-passenger-was-sent-the-prompt-by-mistake/](https://viewfromthewing.com/airlines-are-using-ai-to-manufacture-empathy-instead-of-solving-problems-one-passenger-was-sent-the-prompt-by-mistake/)

国泰航空一名乘客的航班被取消，在与客服沟通时，该航司意外将一段用于“副驾驶”工具的内部AI提示指令发送给了乘客。这段指令要求AI制造共情——“承认感受”“使用第一人称陈述”“保持积极语气”——而非提供具体的改签方案。这一失误暴露出，客服人员正在利用AI写作助手编造富有同理心的回复，却不小心将操作指令粘贴到了对话窗口。该事件凸显出，AI可能让客服变得更粗心，且一旦暴露，这种刻意制造的共情便会显得空洞。文章指出，国泰航空内部推广微软Copilot，声称人类仍掌握控制权，但这次复制粘贴错误动摇了这一信任。航司使用AI聊天机器人已有数十年历史，从阿拉斯加航空2008年的“珍”到现代智能客服辅助工具。尽管AI能处理基础咨询，但在航班取消等特殊情况面前却力不从心。两年前，加拿大航空曾因聊天机器人提供错误信息而被判承担责任。作者质疑，是航司技术团队无力或不愿部署顶级AI模型，还是token成本比外包客服更高？归根结底，文章主张AI应着重于解决问题，而非仅仅模拟共情。

---

## 26. Gooey：一个基于GPU加速的Zig语言UI框架

**原文标题**: Gooey: A GPU-accelerated UI framework for Zig

**原文链接**: [https://github.com/duanebester/gooey](https://github.com/duanebester/gooey)

**Gooey** 是一个基于GPU加速的Zig UI框架，目前处于早期开发阶段，支持macOS（Metal）、Linux（Vulkan/Wayland）和浏览器（WASM/WebGPU）。

**主要特性：**
- **零依赖** – 仅依赖系统框架/库构建
- 声明式、基于组件的UI，采用flexbox风格布局
- 清晰分离：`cx.*` 用于状态、处理器和焦点；`ui.*` 用于布局原语
- 纯状态模式 – 可测试的状态方法，自动重新渲染
- 动画系统、实体系统、自定义着色器、拖放、输入法、无障碍
- 所有平台支持原生文件对话框、剪贴板和文本渲染

**处理器类型：**
- `cx.update()` / `cx.updateWith()` – 纯状态变更
- `cx.command()` / `cx.commandWith()` – 带框架访问权限的处理器
- `cx.defer()` / `cx.deferWith()` – 当前事件完成后执行（对于模态框/文件选择器至关重要）
- 带参数的处理器支持8字节限制；更大数据需使用指针、索引或ID

**后台工作：**
使用Zig 0.16的`std.Io.Queue`和`std.Io.Group`进行线程外工作（网络、文件I/O），无需锁即可将类型化结果推送回渲染循环。

**快速开始：**
需要Zig 0.16.0+。运行示例（如`zig build run-todo`）查看完整演示，涵盖状态管理、文本输入、复选框、按钮、列表迭代和可单元测试的纯状态逻辑。

---

## 27. Claude Code 和 Codex 可通过 Git 进行实时对话

**原文标题**: Claude Code and Codex can have real-time conversation via Git

**原文链接**: [https://medium.com/@Koukyosyumei/claude-code-and-codex-can-have-real-time-conversation-via-git-f95b696c1c05](https://medium.com/@Koukyosyumei/claude-code-and-codex-can-have-real-time-conversation-via-git-f95b696c1c05)

**无法访问文章链接。**

---

## 28. 每个字节都至关重要

**原文标题**: Every Byte Matters

**原文链接**: [https://fzakaria.com/2026/06/01/every-byte-matters](https://fzakaria.com/2026/06/01/every-byte-matters)

**摘要**

本文解释了数据结构布局和内存访问模式如何显著影响性能，其影响远超算法复杂度。

关键在于，现代CPU以**64字节缓存行**为单位加载数据。当遍历**结构体数组（AoS）**时，每个缓存行包含一个大型结构体，若只需访问其中某个字段（例如`is_alive`），就会浪费带宽。相比之下，**数组结构体（SoA）**布局将每个字段存储在独立的连续数组中，使得单个缓存行能容纳64个`is_alive`布尔值——对于大型结构体（如1 KiB）可实现高达**30倍的加速**。

对于**顺序访问**，CPU的预取器能隐藏延迟。对于**随机访问**（哈希表、树、指针追踪），预取器失效，性能完全取决于总**工作集是否适配缓存**。将结构体大小从64B翻倍至128B，仅需处理512个怪物就会将数据从L1缓存（~3 ns）推至L2缓存（~11 ns）。随着工作集增大，延迟在每个缓存层级边界（L1→L2→L3→DRAM）处跃升，而大型结构体会更早触及这些性能瓶颈。

**结论**：对于缓存敏感的工作负载，应使用SoA布局并最小化结构体大小，以使工作集驻留在更快的缓存层级中，尤其是在随机访问模式下。

---

