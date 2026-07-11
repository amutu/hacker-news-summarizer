# Hacker News 热门文章摘要 (2026-07-11)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 在SQLite中优先使用严格表

**原文标题**: Prefer Strict Tables in SQLite

**原文链接**: [https://evanhahn.com/prefer-strict-tables-in-sqlite/](https://evanhahn.com/prefer-strict-tables-in-sqlite/)

文章提倡使用SQLite 3.37.0版本引入的严格表，通过强制执行强类型约束来防止常见数据错误。

**主要优势：**
- **防止类型不匹配：** 禁止向INTEGER列插入文本（如将`'garbage'`存入`age`字段），但仍允许无损转换（如`'123'`）。
- **拒绝无效列类型：** 阻止`GARBAGE`、`DATETIME`、`JSON`等无效类型定义——仅允许`INT`、`INTEGER`、`REAL`、`TEXT`、`BLOB`和`ANY`。
- **`ANY`类型保持灵活性：** 严格表中可通过`ANY`类型按需使用任意数据类型。

**主要劣势：**
- **无法变更：** 无法通过`ALTER`将现有表改为严格表；迁移需创建新表、复制数据并清理无效条目。
- **版本依赖：** 仅适用于SQLite 3.37.0+；旧版本无法读取含严格表的数据库。
- **潜在性能损耗：** 类型检查会略微增加开销，但作者测试表明未产生显著影响。

作者认为利大于弊，可减少错误并提升数据完整性。不过，作者也承认SQLite官方更倾向灵活类型，并指出非严格表在特定场景（如键值存储或杂乱CSV导入）的合理用途。

---

## 2. 谁管理这些代理？

**原文标题**: Who manages the agents?

**原文链接**: [https://www.off-policy.com/dont-go-quietly-into-the-ai-night/](https://www.off-policy.com/dont-go-quietly-into-the-ai-night/)

**摘要：**  
本文对比了两种人工智能的未来图景：一种是由少数“神职人员”掌控强大的AI系统，为其他人充当媒介；另一种是数十亿人各自指挥自己的智能体。目前，前沿AI的进步集中于少数人手中——这导致大规模失业的预警、功能受限以及两级化的接入体系。当尖端领域的开发者享受到百倍的生产力提升时，中等水平的劳动者却未看到实质性改善，差距持续扩大。  

作者认为，未来的重点应放在让普通人能力翻倍，而非仅仅服务于少数精英。企业必须从裁员转向增长，通过赋能每位员工成为“智能体管理者”——拥有并控制自己的智能体。智能体应实现自主化：归公司所有，但具备可迁移的身份、记忆与权限。目标是全民参与，而非仅仅全民接入。文章呼吁建设者以普通用户为中心设计，让人始终处于核心位置，并拒绝那种由“神职人员”驱动的未来愿景——即大多数人只是被动接受AI带来的富足。

---

## 3. 我们将PgBouncer的吞吐量提升了4倍

**原文标题**: We scaled PgBouncer to 4x throughput

**原文链接**: [https://clickhouse.com/blog/pgbouncer-clickhouse-managed-postgres](https://clickhouse.com/blog/pgbouncer-clickhouse-managed-postgres)

**摘要：**

PgBouncer 是单线程的，无论可用核心数量多少，它都只能使用一个 CPU 核心。ClickHouse Managed Postgres 通过运行一组 PgBouncer 进程，将吞吐量提升了约 4 倍。这些进程的数量与可用 vCPU 数量匹配，并使用 `so_reuseport` 绑定同一端口。这使得内核能够将传入的连接在多个进程之间进行负载均衡，从而实现全部核心的充分利用。

主要挑战在于：查询取消会失败，因为取消请求（通过新连接发送）可能会落在与执行查询不同的进程上。**对等互联**通过将取消请求转发到正确的进程来解决此问题。

连接配额（`max_client_conn`、`max_db_connections`）会在整个进程组中进行分配，以避免对 Postgres 的过度订阅。

**基准测试结果**（16-vCPU c7i.4xlarge，仅选择事务池模式）：
- 单个 PgBouncer 峰值约为 87k TPS（1 个核心，约 9% CPU），然后在 256 个客户端时下降至约 77k TPS。
- 16 个进程的组达到了约 336k TPS（约 4 倍提升），使用了约 8 个核心（约 52% CPU）。在 256 个客户端时，进程组使用了 48.9% 的 CPU，而单个进程为 7.7%。

**关键要点：** 单个 PgBouncer 在成为瓶颈之前运行良好。根据核心数量调整进程组规模、使用 `so_reuseport` 并启用对等互联，可以将连接池化组件转变为可扩展的基础设施。

---

## 4. 英伟达、CoreWeave和Nebius：探秘GPU热潮中的循环融资内幕

**原文标题**: Nvidia, CoreWeave, and Nebius: Inside the Circular Financing of the GPU Boom

**原文链接**: [https://io-fund.com/ai-stocks/nvidia-coreweave-nebius-circular-financing-gpu-boom](https://io-fund.com/ai-stocks/nvidia-coreweave-nebius-circular-financing-gpu-boom)

本文研究了CoreWeave和Nebius等“新型云服务商”的快速增长及其金融风险。这些服务商为微软、Meta等超大规模企业提供快速获取英伟达GPU的渠道并优化计算利用率。要点包括：

1. **超大规模企业需求**：微软和Meta已承诺向新型云服务商投入超过1200亿美元以换取长期GPU算力。原因在于，新型云服务商能在数周内部署最新芯片（如H100、Rubin），而自建需要数年；同时能将资本支出转为运营支出，缓解自由现金流压力。

2. **GPU利用率优势**：CoreWeave声称其GPU利用率（MFU）超过50%，行业平均水平为30%-40%，这是通过Kubernetes和Tensorizer等软件减少闲置时间实现的。

3. **循环融资模式**：英伟达分别向CoreWeave和Nebius投资了20亿美元，同时为未售出的算力提供担保（例如为CoreWeave担保63亿美元）。新型云服务商用这些股权和债务融资购买英伟达GPU，形成资本循环。

4. **财务压力**：CoreWeave的资本支出（2026年预测为330亿美元）远超其运营现金流（87亿美元），债务已达249亿美元且仍在攀升。Nebius面临类似缺口。两者均严重依赖债务、股权融资及英伟达支持，才能将已签订合同（各3.5千兆瓦）的电力转化为实际算力和收入。

总之，新型云服务商虽受益于超大规模企业需求和英伟达合作，但处于深度亏损状态，依赖循环融资和持续资本筹集来维持庞大的基础设施建设。

---

## 5. 奇异值分解的早期历史（1993）[pdf]

**原文标题**: The early History of the Singular Value Decomposition (1993) [pdf]

**原文链接**: [https://www.math.ucdavis.edu/~saito/courses/229A/stewart-svd.pdf](https://www.math.ucdavis.edu/~saito/courses/229A/stewart-svd.pdf)

根据提供的PDF内容（该文件为扫描图像，采用CCITT传真编码，而非可读文本），仅能提取文章标题及有限元数据。文档标题为**《奇异值分解的早期历史（1993）》**。

由于PDF正文为二进制图像数据，无法解析为文本，因此无法对文章内容进行总结。目前可获取的关键信息是：该文件是一篇关于奇异值分解（SVD）的历史综述，发表于1993年，并以扫描图像格式存储（2550×3300像素，黑白）。

若要生成有意义的摘要，需通过光学字符识别（OCR）技术处理该图像。

---

## 6. 展示HN：Ant——一个JavaScript运行环境与生态系统

**原文标题**: Show HN: Ant – A JavaScript Runtime and Ecosystem

**原文链接**: [https://antjs.org](https://antjs.org)

**《Show HN：Ant——一款JavaScript运行时与生态系统》摘要**

本文介绍**Ant**，一款轻量级JavaScript运行时，作为Node.js、Bun和Deno的替代方案。其核心目标是为使用JavaScript和TypeScript的开发者提供**更快、更高效、更简洁**的体验。

主要特性包括：
- **性能：** 基于现代引擎（如V8或同类）构建，Ant声称启动速度更快且内存占用较传统运行时更低。
- **原生TypeScript支持：** Ant直接运行TypeScript，无需单独编译，简化开发流程。
- **内置工具链：** 运行时内集成测试运行器、包管理器和打包工具，减少对外部工具的依赖。
- **标准化API：** 聚焦Web标准API（如`fetch`和`WebSocket`）及Node.js兼容性，便于迁移。
- **轻量化设计：** 二进制体积更小，依赖少于旧款运行时。

其生态圈扩展至运行时之外，提供包注册表和高效的依赖管理工具。作者将Ant定位为现代Web开发、无服务器函数和边缘计算场景的理想选择——这些场景对速度和低开销要求严苛。

总而言之，Ant旨在通过将分散的工具整合为一个统一的高性能运行时，简化JavaScript工具链。

---

## 7. UPI：支付交易解析

**原文标题**: UPI: Anatomy of a Payment Transaction

**原文链接**: [https://timeseriesofindia.com/economy/reads/upi-architecture/](https://timeseriesofindia.com/economy/reads/upi-architecture/)

**《UPI支付交易解构》摘要**

本文将一个UPI支付分解为五个可见时刻（扫码、输入姓名/金额、输入密码、绿色勾选、收款方提示音）及其背后的隐藏中继过程。用户应用（TPAP）收集交易意图但从不处理资金或密码；它依赖发起银行（PSP）签发UPI标识并连接至NPCI中央交换系统。该交换系统路由请求，先借记付款方银行（密码在此验证），再贷记收款方银行——资金总是先离开后到达。

关键洞察：商户交易现已超过个人转账，导致银行排名失衡——Yes Bank在收款端（作为顶级商户发起银行）占主导地位，但在付款端落后。技术故障率已降至低于1/400，然而整体拒绝率仍接近1/11，主要源于业务原因（密码错误、余额不足）。对于模糊性失败（"待定"交易），系统会在一天内自动对账，延迟撤销将产生罚金。结论是：一个看似简单的2秒交易实际涉及七个实体、严格校验和即便出错也倾向于保护用户的安全网络。

---

## 8. 现代装饰可能正让人们的脑筋紧张

**原文标题**: Modern decor may be straining people's brains

**原文链接**: [https://studyfinds.com/modern-decor-may-be-straining-peoples-brains/](https://studyfinds.com/modern-decor-may-be-straining-peoples-brains/)

《视觉》期刊最新科学综述提出，现代视觉环境——如条纹地板、频闪的LED灯、拥挤的超市布局——可能从生理上使大脑超负荷运转，引发头痛、眼疲劳和恶心。其核心假说认为：人类大脑进化出高效处理自然场景的能力，这类场景具有可预测的视觉复杂度；而现代人造图案高度重复、对比强烈且常伴随频闪，迫使视觉皮层加倍工作、消耗更多氧气。理论认为这种代谢超载会触发不适感作为警示信号。

这种影响并非普遍存在。自闭症、多动症、偏头痛、癫痫、阅读障碍等神经系统疾病患者受影响尤为明显，可能因其抑制过度活跃视觉信号的能力较弱。综述指出常见触发因素包括：条纹图案、LED频闪（可产生"幻影阵列"）、现代汽车前照灯及拥挤的视觉空间。

实用解决方案包括：可调节脑部反应的精准滤光眼镜、更智能的建筑设计（降低重复图案的对比度）以及彩色阅读覆层。这篇由32位跨学科研究者合著的论文强调，视觉不适具有可测量的生理基础，并呼吁开展跨学科合作以设计视觉负荷更低的环境。

---

## 9. 含铅汽油在发明之初便已是已知毒物（2016）

**原文标题**: Leaded Gas Was a Known Poison the Day It Was Invented (2016)

**原文链接**: [https://www.smithsonianmag.com/smart-news/leaded-gas-poison-invented-180961368/](https://www.smithsonianmag.com/smart-news/leaded-gas-poison-invented-180961368/)

1921年，通用汽车工程师小托马斯·米奇利发现四乙基铅能有效减少发动机"爆震"，尽管自1854年以来它就被确认为有毒物质。虽然乙醇是更安全有效的抗爆剂，但通用汽车和石油公司因其无法获得专利或控制其生产而予以拒绝。而四乙基铅可以获得专利，且并非汽油替代品。1923年，首批含铅汽油售出，不久后米奇利本人便遭受严重铅中毒。

尽管1924年标准石油公司一家炼油厂有工人死亡，但1926年的一份公共卫生报告允许继续销售，声称低浓度接触可以忍受，并否认对公众存在风险，同时承认未来可能出现问题。直到1970年代，经过多年法律斗争，含铅汽油才在美国被逐步淘汰。文章强调儿童是主要受害者，他们遭受神经损伤，与智商降低、多动症和暴力犯罪相关。结论是，过去排放的铅仍有大量残留在环境中，构成不可忽视的持久影响。

---

## 10. Biff.graph：将你的Clojure代码库构建为可查询的图结构

**原文标题**: Biff.graph: structure your Clojure codebase as a queryable graph

**原文链接**: [https://github.com/jacobobryant/biff/tree/v2.x/libs/graph](https://github.com/jacobobryant/biff/tree/v2.x/libs/graph)

**《Biff.graph：将你的Clojure代码库结构化为可查询的图》概述**

Biff.graph是一个轻量级（600行）的Clojure库，允许开发者将数据模型构建为统一、可查询的图，并融合数据库访问与派生业务逻辑。作为Pathom的简化替代方案，它专注于易于理解和调试。

**核心概念：**
- **解析器**：具有定义输入/输出查询的小型独立函数，用于获取或派生数据
- **图查询**：使用EQL/Datomic pull模式请求嵌套数据形态，无需了解每个属性的来源
- **自动批处理**：解析器可标记为`:batch true`以高效获取多个实体

**主要特性：**
- 每个数据库表/实体类型对应一个解析器（通常自动生成）
- 用于派生数据的附加解析器（例如清理帖子标题）
- 支持缓存、验证和调试（异常中的追踪信息）
- 集成biff.fx处理副作用，biff.core进行模式验证
- 简洁API：`defresolver`、`new-ctx`和`query`

**应用场景：** Ring请求处理器、后台任务、返回Hiccup的UI组件、通过"参数解析器"实现授权

**权衡：** 无查询计划步骤（不同于Pathom），复杂查询效率可能较低，但更易理解和调试。专为图数据建模新手设计。

---

## 11. Show HN：从零重建Redis、Git和数据库来学习

**原文标题**: Show HN: Learn by rebuilding Redis, Git, a database from scratch

**原文链接**: [https://shipthatcode.com](https://shipthatcode.com)

这是一篇关于 **CodeCrafters** 的推广文章。CodeCrafters 是一个动手实践的学习平台，它通过让用户从零开始重建真实世界的系统来教授编程。其核心理念是“选择 → 编写 → 运行”，直至掌握概念。

**主要内容：**

- **80+ 门从零构建课程：** 用户可以构建 Redis、Git、数据库、容器运行时、操作系统内核、3D 渲染器、神经网络和 BitTorrent 等系统。
- **支持 9 种语言：** 包括 Python、Go、Rust、C、C++、JavaScript 和 TypeScript。
- **职业路径：** 结构化、循序渐进的课程（例如，后端工程师、前端工程师、DevOps/SRE、数据科学家），旨在帮助用户从初学者成长为能胜任工作的专业人士。
- **在实践中学习：** 用户编写真实代码并通过自动化测试（例如，示例展示了处理 Redis 的 SET 和 GET 命令）。
- **免费访问：** 无需信用卡；第一节课仅需两分钟。
- **用户证言：** 强调该平台能防止作弊，并提供真正的理解。

**核心要点：** CodeCrafters 提供了一种基于项目的、实用的传统教程替代方案，专注于构建类生产系统，以加深对基础设施、工具和编程基础的理解。

---

## 12. 美国女划艇运动员完成从加州到夏威夷的历史性单人旅程

**原文标题**: Female US rower completes historic solo journey from California to Hawaii

**原文链接**: [https://www.theguardian.com/us-news/2026/jul/04/california-hawaii-rowing-solo-journey](https://www.theguardian.com/us-news/2026/jul/04/california-hawaii-rowing-solo-journey)

**摘要**

28岁的美国大峡谷河流向导凯尔西·芬德勒完成了从加利福尼亚到夏威夷的历史性单人划船旅程。她于五月从蒙特雷出发，驾驶21英尺长的“莉莉”号船穿越中太平洋，航行超过2400英里，在海上漂泊近44天后抵达檀香山。

根据国际海洋划船协会的记录，芬德勒似乎同时打破了此前的女子速度纪录（86天）和男子速度纪录（52天），成为该航线单人划船最快的人。她的目标是成为首位完成此旅程的美国女性、最年轻的女性以及速度最快的女性。

芬德勒在社交媒体上记录了她的旅程，分享了双手起泡、难以入睡、洋流不利等挑战，以及做饭、淡化海水和防晒等日常生存细节。数百名支持者在檀香山迎接了她。

在欧胡岛附近的一段视频中，她反思了自己的成就，鼓励他人去迎接属于自己的“重大、艰难、可怕的事情”，并强调力量是在过程中获得的。她的成功比马拉松游泳选手凯瑟琳·布里德开始沿加利福尼亚海岸进行900英里游泳之旅早了两天。

---

## 13. 六十四（YC P25）正在招聘

**原文标题**: Sixtyfour (YC P25) Is Hiring

**原文链接**: [https://www.ycombinator.com/companies/sixtyfour/jobs/bIbgQkL-operations-associate-data-samples-customer-success](https://www.ycombinator.com/companies/sixtyfour/jobs/bIbgQkL-operations-associate-data-samples-customer-success)

**Sixtyfour（YC P25）招聘 – 运营助理**

Sixtyfour 是一家由 Y Combinator 支持的数据增强平台，现于旧金山诚聘一名**运营助理**，负责数据样本与客户成功工作。该岗位为全职、现场办公，薪资范围 75,000–120,000 美元，并附带 0.10%–0.40% 的股权。应届毕业生及需美国工作授权的申请者均可应聘。

**主要职责：**
- 主动创建定制化数据样本，向潜在客户及现有客户展示平台能力。
- 确保样本无差错、准确且去重。
- 通过 Slack、邮件及 CRM 系统，同时管理 7–10 个以上的请求。
- 作为客户 Slack 频道的第一响应人，负责问题分类、答疑及提出改进建议。
- 跟踪用户参与度，标记高风险账户，并与工程团队协调处理漏洞及反馈。
- 参与每日站会及 CRM 同步会议。

**理想候选人：**
- 主动性强，注重细节，能在快节奏环境中高效工作。
- 熟练使用电子表格、CSV 文件及 CRM 系统。
- 书面沟通能力强，能同时处理多项任务。

**面试流程：** 初步沟通、简短线上作业、随后一周带薪现场工作（旧金山）。

**关于 Sixtyfour：** 专注于为人员/公司数据构建 AI 研究代理，为销售、招聘及营销领域实现研究自动化。公司成立于 2025 年，团队共 12 人，总部位于旧金山。

---

## 14. Show HN：Orbit – AR 卫星追踪器，观测超过15000个天体

**原文标题**: Show HN: Orbit – AR satellite tracker, watch 15k+ objects

**原文链接**: [https://nagylukas.github.io/orbit.html](https://nagylukas.github.io/orbit.html)

**概要**

Orbit 是一款适用于 iPhone 和 iPad（iOS 17 及以上版本）的 AR 卫星追踪应用，用户只需将摄像头对准天空，即可实时查看超过 15,000 个空中目标——包括国际空间站、行星、星座以及太空碎片。

**隐私优先设计：** Orbit 无需注册账号或提供个人详细信息。摄像头画面在设备端处理，从不被记录、存储或传输。位置与运动传感器数据仅用于本地计算卫星位置和过境时间，不存储在服务器上，也不会被共享。

**收集的数据（均为匿名且不与身份关联）：** 性能指标、崩溃日志以及聚合的产品交互数据（例如，哪些功能被使用）。这些数据仅用于改善应用稳定性和功能，不涉及第三方广告或跨应用追踪。

**AI 聊天机器人：** 一项由 Google Gemini API 驱动的可选功能。只有您输入的文本会被发送至 Google 以获取回复，并受 Google 隐私政策约束。该聊天机器人设有安全护栏，仅限太空话题，且消息中不附带任何个人信息。

**不收集的数据：** 照片、摄像头画面、精确位置历史或可识别身份的信息。任何数据均不会被出售，也不会与广告商或数据经纪商共享。公开卫星数据仅用于参考下载。

**儿童隐私：** 本应用不会在知情情况下收集儿童的个人数据。

**联系方式：** 如有疑问，可发送邮件至 nagy.lukas50@gmail.com。

---

## 15. 人工智能无法重现《Trust Game》（但能帮你理解它）

**原文标题**: AI Can't Recreate the Thrust Game (But It Can Help You Understand It)

**原文链接**: [https://www.jamesdrandall.com/posts/thrust_ai_powered_software_archaeology/](https://www.jamesdrandall.com/posts/thrust_ai_powered_software_archaeology/)

本文记述了作者尝试使用AI（Claude Code）重现1986年BBC Micro经典游戏《Thrust》的过程。起初，Claude生成了“劣质仿品”——物理引擎与操作手感均与原作相去甚远。然而，该项目随后转向对原始游戏代码的深度剖析。

作者借助Claude分析6502汇编反编译代码，提取出游戏子系统的详细技术规格。关键发现包括：

- **物理引擎**：原作采用Q7.8定点数运算、32级旋转查找表，并设有精确时序循环（非50Hz垂直同步）。物理更新被严格限制在每16个时钟周期中的6次（约12.5Hz），且存在非对称阻力（X轴阻力大于Y轴）。精确还原这些时序参数是复刻原作手感的关键。

- **音频**：作者未采用音频采样，而是在AudioWorklet中模拟了SN76489音效芯片与BBC MOS包络处理器（OSWORD 7/8），实现了完全一致的音频输出。

- **图形**：飞船精灵图提取自原作中硬编码的32个旋转角度。地形渲染采用原作的扫描线奇偶校验多边形填充算法，分辨率达320×256。

- **演示模式**：通过时序表注入按键指令，配合随机化数值生成多样化循环演示序列。

- **工具应用**：AI辅助从反编译代码中提取资源（字体、关卡、精灵图），并基于视频帧还原传送动画。

作者总结道，复刻《Thrust》需要深入理解原作的精确时序与硬件行为，而非仅模仿表层特征。最终成果为浏览器版本，可于annhexation.com试玩。

---

## 16. 被迫自证为人的中国配音演员

**原文标题**: The Chinese Voice Actor Forced to Prove He's Human

**原文链接**: [https://www.sixthtone.com/news/1018753](https://www.sixthtone.com/news/1018753)

中国配音演员沈安瑜被迫反复自证“人类身份”——他声音的AI克隆版本在网上广泛传播，导致平台将他的真实录音标记为合成内容。这不仅造成收入减少，更让他陷入与盗用版本的持久斗争。自2025年以来，沈安瑜发现自己的声音出现在他从未录制过的视频中，从电影解说短片到产品推广片。如今他和妻子的大部分时间都用于记录侵权证据、提交投诉和准备法律诉讼，但成功案例寥寥无几。

这一问题波及中国配音行业的众多从业者，包括有声书演播者和微短剧配音员。随着AI声音克隆工具日益普及，演员们发现自己的声音未经许可被复制，往往被制成AI语音包出售，或被客户用于规避再次雇佣真人配音。该技术同时压低了薪酬和就业机会，因为企业纷纷转向更廉价的AI替代方案。

沈安瑜的法律维权面临重大障碍：追踪原始克隆者几乎不可能，平台投诉鲜有成效，而声纹鉴定的费用可能超过潜在赔偿金额。2024年中国的一起标志性案例虽然裁定未经授权的声音克隆侵犯人格权，但执行难度依然很大。经济压力已对沈安瑜的婚姻和心理健康造成影响，使他陷入卡夫卡式的循环——克隆声音流传得越广，反倒越难证明自己的真实性。

---

## 17. Amber编程语言：编译为Bash/Ksh/Zsh

**原文标题**: Amber the programming language compiled to Bash/Ksh/Zsh

**原文链接**: [https://amber-lang.com/](https://amber-lang.com/)

以下是文章的简要总结：

**Amber** 是一种全新的编程语言（0.6 alpha 版本），可完全编译为 **Bash、Ksh 或 Zsh** 脚本。该语言旨在为 shell 脚本带来现代、类型安全的编程体验，在编译时而非执行时捕获错误。

主要特性包括：
- **现代语法**：采用类似 ECMA 脚本的语法。
- **运行时安全**：强制开发者处理所有潜在错误。
- **类型安全**：强类型机制在运行前预防缺陷。
- **Bash 互操作**：可与现有 Bash 脚本无缝协作。
- **内置标准库**：包含诸多实用函数。
- **自动文档生成**：即时生成文档。

该语言由 Paweł Karaś 创建，于弗罗茨瓦夫大学荣获 **2024 年度最佳工程项目** 奖。

---

## 18. 新研究显示：爱因斯坦的相对论主导重元素化学键

**原文标题**: Einstein's relativity rules chemical bonds in heavy elements, new research shows

**原文链接**: [https://www.brown.edu/news/2026-07-09/chemical-bonds-relativity](https://www.brown.edu/news/2026-07-09/chemical-bonds-relativity)

**摘要**

布朗大学的化学家在《科学》杂志上发表了直接实验证据，挑战了传统高中化学模型中关于重元素三键的表述。标准的教科书图示将三键描述为由一个σ键（头对头）和两个π键（肩并肩）构成。然而，对于铋等重原子核的元素，爱因斯坦的相对论改变了这些成键规则。

随着原子核变重，绕核电子的运行速度会接近光速的显著比例。这引发了“自旋-轨道耦合”，即电子的自旋与轨道运动相互纠缠。这一效应模糊了σ键与π键之间的严格区分。研究团队利用光电子能谱技术对冷却的碳铋分子进行研究，观察到这些键并不符合传统的σ/π模型。相反，它们形成两个混合的“σ-π”键和一个π键。

首席研究员王来生表示，尽管自20世纪70年代以来，理论界便已知晓相对论对重元素的重要性，但这是首个直接的谱学证据。该发现表明化学教科书可能需要进行修订，尤其是在铋等重元素因其在太阳能电池和量子计算研究中可替代有毒铅而日益受到关注的背景下。

---

## 19. 反向半人马是应对人工智能悖论的答案

**原文标题**: Reverse centaurs are the answer to the AI paradox

**原文链接**: [https://pluralistic.net/2025/09/11/vulgar-thatcherism/#there-is-an-alternative](https://pluralistic.net/2025/09/11/vulgar-thatcherism/#there-is-an-alternative)

**摘要：**科里·多克托罗在这篇文章中引入“反向半人马”概念来解释AI悖论：一些用户觉得AI如同地狱，另一些则视其为福音。“半人马”指由机器辅助的人类；“反向半人马”则是利用人类作为助手的机器——被冷漠算法操控的脆弱个体。多克托罗以赫斯特集团一名被迫用AI生成阅读指南（其中充斥大量不存在的书籍）的作者为例，说明此人如何充当AI错误的“责任承担池”。相比之下，多克托罗本人按自己需求使用Whisper等开源AI，成为真正的“半人马”。

文章认为AI是投机泡沫，正造成即时危害（工人不稳定、气候破坏）与未来破裂时的隐患。与加密货币泡沫不同，AI可能留下生产性残余：廉价GPU、熟练统计学家及可在普通硬件上运行的开源模型（如Whisper）。但必须尽快戳破泡沫以限制损害——例如终结基础模型失效与人类专业知识流失。多克托罗正撰写《反向半人马AI指南》一书，旨在提升AI批评的质量以对抗助推泡沫的炒作与骗局。

---

## 20. Show HN: Reame —— 一款越运行越快的CPU推理服务器

**原文标题**: Show HN: Reame – a CPU inference server that gets faster as it runs

**原文链接**: [https://github.com/swellweb/reame](https://github.com/swellweb/reame)

**Reame：一款CPU推理服务器简介**

Reame 是一款基于 llama.cpp 构建的全新 MIT 许可 LLM 推理服务器，专为廉价 CPU 硬件（共享 vCPU、免费 ARM 层级）而非 GPU 设计。其核心原则：**绝不在 CPU 上重复计算同一内容**。

**主要特性：**
- **持久化磁盘缓存** – 跨重启和用户复用共享前缀的 KV 缓存（系统提示词仅需计算一次）。
- **重写记忆** – 归档历史生成结果；重复请求从内存中草拟响应，成本近乎为零。
- **建议器** – 利用语法结构预判标记，加速格式化输出（列表、项目符号）。
- **自适应推测解码** – 根据实测性能增益自动启用或禁用。
- **共识机制** – 批量运行 `--best-of N` 候选方案，在多数达成一致时停止（无需更大模型即可提升准确性）。

**性能示例**（基于真实硬件测量）：
- Oracle 免费层级（2核 ARM，每月 €0）上 7B 模型达 3.3 tok/s
- Apple M3 Pro 上 1.5B 模型达 52 tok/s
- 使用热磁盘缓存加速比达 4.8 倍；历史推测加速比达 2.3 倍

**应用场景：** 文档提取、批量流水线、SaaS 人工智能功能、隐私敏感工作（法律/医疗）、代码自动补全。**不适用于：** 通用 ChatGPT 替代或创意写作。

**快速启动：** 单条命令（`reame run qwen2.5-1.5b`）即可下载、自动配置并启动兼容 OpenAI 的 API。随着积累历史请求记忆，运行速度会持续提升。

---

## 21. 谷歌搜索让创作者更了解其内容触达范围

**原文标题**: Google Search lets creators know more about their reach

**原文链接**: [https://www.theverge.com/tech/961955/google-search-console-reach-platform-properties](https://www.theverge.com/tech/961955/google-search-console-reach-platform-properties)

谷歌在Search Console中推出了一项名为“平台属性”的新功能，允许内容创作者和网站所有者查看哪些搜索词会将用户引导至他们的社交媒体资料和YouTube内容。该工具提供了关于受众如何在Instagram、TikTok、X（原Twitter）和YouTube等平台上与帖子互动的数据，使创作者能够汇总查看其跨多个渠道的搜索表现。

此次更新延续了谷歌今年6月的举措，当时谷歌允许主要创作者和发布商认领专属搜索资料页，其中可包含其他平台的链接以及TikTok和Instagram的置顶视频。谷歌旨在通过简化跨平台内容发现洞察，使搜索成为创作者的中央枢纽，尤其是那些没有自己网站的创作者。

该功能将在未来几周内逐步推出。

---

## 22. 如何躲避杀手无人机

**原文标题**: How to Hide from Killer Drones

**原文链接**: [https://www.economist.com/science-and-technology/2026/07/08/how-to-hide-from-killer-drones](https://www.economist.com/science-and-technology/2026/07/08/how-to-hide-from-killer-drones)

无法访问文章链接。

---

## 23. Show HN：地球游戏——将人生目标转为任务的离线命令行工具

**原文标题**: Show HN: Earth Game – An offline CLI for turning life goals into quests

**原文链接**: [https://github.com/skorotkiewicz/earth-game](https://github.com/skorotkiewicz/earth-game)

**地球游戏**是一款注重隐私的离线命令行工具（CLI），将人生目标转化为任务。完全基于Python标准库和SQLite构建，无第三方依赖、无账户系统、无AI功能。

**核心功能：**
- **命令：** 管理任务、角色特质（价值观、优势、目标）、未闭环事务、每日回顾及数据导出。
- **隐私：** 无网络请求；网页界面仅在本地主机（127.0.0.1）运行，数据库以私有权限本地存储。
- **使用：** 支持Python 3.8+的类Unix终端，可通过AUR在Arch Linux上安装。
- **工作流：** 添加循环事务（任务）、查看每日摘要、开始/完成任务、记录反思、以JSON格式导出数据。

**核心理念：** 一款私密离线助手，助力选择行动、闭环未结事务、复盘方向，无需评分、账户或外部建议。网页界面与CLI共用同一本地数据库。

---

## 24. 极乐

**原文标题**: BLISS

**原文链接**: [https://en.wikipedia.org/wiki/BLISS](https://en.wikipedia.org/wiki/BLISS)

BLISS是一种系统编程语言，由W. A. Wulf、D. B. Russell和A. N. Habermann于1970年左右在卡内基梅隆大学开发。在C语言普及之前，它曾是一种知名的系统语言。BLISS是一种无类型、基于表达式而非语句的块结构语言，具备异常处理、协程和宏功能，但没有`goto`语句。

该语言省略了内置的输入输出设施，因为系统软件通常使用自定义的输入输出，并允许访问机器特定的功能。在BLISS中，变量名引用的是其地址而非值；使用句点（`.`）前缀来访问值。赋值使用`=`，常量为目标机器的全字长。

数字设备公司（DEC）为多种架构（包括PDP-10、VAX和Alpha）开发了BLISS编译器。虽然未被客户广泛采用，DEC内部却大量使用它，特别是在OpenVMS实用程序中。BLISS编译器以其先进的优化技术闻名，并促成了经典著作《优化编译器的设计》的诞生。该名称后来被追溯解释为“系统软件实现基础语言”的首字母缩写。

---

## 25. 苹果起诉OpenAI，指控前员工窃取商业机密

**原文标题**: Apple sues OpenAI, accuses ex-employees of stealing trade secrets

**原文链接**: [https://9to5mac.com/2026/07/10/apple-sues-openai-trade-secret-theft/](https://9to5mac.com/2026/07/10/apple-sues-openai-trade-secret-theft/)

苹果公司对OpenAI提起诉讼，指控其涉及前苹果员工的商业机密盗窃。该诉讼将苹果前产品设计副总裁唐坦、前高级系统电气工程师刘畅列为被告，同时起诉的还有OpenAI以及由苹果前设计总监乔纳森·艾维创立的硬件初创公司io Products。

苹果指控唐坦在面试求职者时使用苹果机密项目代号进行提问，并指示应聘者携带实际的苹果硬件零件和原型机参加"展示与讲解"环节。刘畅被控在离职后利用安全漏洞下载超千页机密工程文件，并指导另一名新员工应研习哪些保密资料。

诉状还称OpenAI误导苹果合作伙伴执行苹果专有的金属表面处理工艺，并援引行业术语联系第二家供应商。苹果表示早在二月便向OpenAI提出关切但未获回应，称其行为只是"冰山一角"。

据报道，由乔纳森·艾维领导的OpenAI硬件团队已招募超400名前苹果员工。此次诉讼寻求禁令救济和损害赔偿，正值OpenAI开发首款消费级硬件设备之际，传闻该设备可能包含智能手机或智能音箱。苹果强调此举并非质疑当前将ChatGPT整合至Siri的合作关系。

---

## 26. 书籍：RISC-V片上系统设计

**原文标题**: Book: RISC-V System-on-Chip Design

**原文链接**: [https://www.amazon.com/RISC-V-Microprocessor-System-Chip-Design/dp/0323994989](https://www.amazon.com/RISC-V-Microprocessor-System-Chip-Design/dp/0323994989)

**《RISC-V片上系统设计》概要**

本书由David Harris、James Stine、Sarah Harris和Rose Thompson合著，是面向高年级本科生和专业人士的全面指南，教授如何利用开源RISC-V架构设计微处理器与片上系统。由Morgan Kaufmann出版（第一版，2026年7月），全书共856页。

本书内容易于理解，仅需高中数学基础，并在必要时对操作系统、超大规模集成电路和存储系统进行说明。书中涵盖非平凡微处理器所有组件的详细设计，包括单发射与超标量核心、多核配置、全部RISC-V扩展（乘除法、浮点运算、原子内存操作）以及常见外设。

其核心特色在于开源配套材料，包括完整的SystemVerilog代码、C语言和汇编验证代码，以及引导Linux的启动代码。辅助资源托管于GitHub。本书旨在教会读者优化处理器并运用现代设计与验证工具，通过清晰的讲解、补充说明和幽默风格吸引学生。该书在电路设计类新书排行榜中位列第一。

---

## 27. 《数字熟食店》，1984年由早期个人电脑黑客与爱好者所著

**原文标题**: Digital Deli, 1984 book by early PC hackers and enthusiasts

**原文链接**: [https://www.atariarchives.org/deli/](https://www.atariarchives.org/deli/)

以下是为1984年出版的《数字熟食店》一书绘制的目录。该书由史蒂夫·迪特利亚主编，是一部全面收录早期个人电脑文化的文集，分为历史、技术、生活方式与未来愿景等主题章节。

核心篇章包括：**前菜**（历史与硬件）、**汤与饼干**（黑客文化、杂志与盗版）、**个人选择**（对雅达利、IBM PC、苹果等早期电脑的评测与用户体验）、**家庭最爱**（家庭应用与社会影响）。**文字沙拉**涵盖编程语言（BASIC、Logo、FORTH）、文字处理与在线网络。**创意拼盘**探索电脑在艺术、音乐、动画与漫画领域的应用。**精神食粮**探讨人工智能、专家系统与电脑象棋。**异域珍味**聚焦欧洲、日本、中国与墨西哥的计算机发展。**时蔬鲜绿**涉及电子表格与金融等商业应用。**小不点**关注儿童与教育。**甜蜜收尾**与**明日特供**涵盖游戏与未来幻想，撰稿人包括史蒂夫·沃兹尼亚克、比尔·盖茨、泰德·尼尔森、蒂莫西·利里等知名人物。

本书经主编授权仅以非商业用途存档于 www.atariarchives.org，网站由凯·萨维茨维护。

---

## 28. ZeroFS 与 Amazon S3 文件对比

**原文标题**: ZeroFS vs. Amazon S3 Files

**原文链接**: [https://www.zerofs.net/blog/zerofs-vs-aws-s3-files/](https://www.zerofs.net/blog/zerofs-vs-aws-s3-files/)

本文比较了**ZeroFS**与**Amazon S3 Files**这两个系统。两者均提供基于对象存储的POSIX文件挂载功能，但文章重点指出了二者截然不同的实现方式。

**核心差异：** S3 Files在文件与S3对象之间保持一一映射关系，而ZeroFS则采用不透明的内部布局（基于LSM树的元数据管理，以及将压缩/加密数据块打包为数据段）来提升性能与安全性。

**对象互操作性：** S3 Files的文件会在约60秒无操作后最终导出为普通S3对象，从而支持通过S3 API访问。而ZeroFS的文件永远无法通过S3 API访问；挂载时必须提供加密密码。

**成本：** ZeroFS通过压缩（预计压缩比约2:1）降低存储成本，并避免AWS的高性能存储费用。S3 Files则需对其性能层（每GB每月$0.30）以及数据读写操作支付额外费用。文章示例显示：存储10000 GiB数据并读取一次，S3 Files需支付约$3,530以上，而ZeroFS仅需约$115至$230。

**性能与持久性：** S3 Files通过其性能层实现即时持久性，但S3导出为异步操作。ZeroFS则在执行`fsync`时提供同步持久性，并采用自适应预取技术处理冷数据读取。S3 Files的重命名操作需复制所有对象；ZeroFS仅需更新LSM元数据。

**结论：** 当文件需保留为普通S3对象供其他工具使用时，请选择S3 Files。若可将存储桶作为私有持久层使用，且优先考虑压缩、客户端加密与更低成本而非直接S3访问，则选择ZeroFS。

---

## 29. 住宅代理与数据抓取情况的最新进展

**原文标题**: An update on residential proxies and the scraper situation

**原文链接**: [https://lwn.net/SubscriberLink/1080822/990a8a5e2d379085/](https://lwn.net/SubscriberLink/1080822/990a8a5e2d379085/)

**摘要：**

本文发表于2026年7月，更新了人工智能爬虫机器人淹没网站的持续危机。流量的主要来源是住宅代理网络——数以百万计的受感染设备（家庭路由器、媒体流媒体设备或使用“免费”VPN的手机）被远程控制来抓取网页，使每个请求看起来都像真人操作。这些网络由犯罪集团（如已被查封的IPIDEA）或Bright Data等公司运营，后者通过劫持用户连接提供“来源合规”的IP地址。虽然主要AI公司（例如前沿模型开发商）公开抓取并遵守robots.txt规则，但目前尚不清楚它们是否使用这些代理网络。

网站被迫实施防御措施（如Anubis的工作量证明、验证码、登录门槛），但这已成为一场军备竞赛；爬虫程序利用其庞大的设备集群绕过这些防御。LWN已优化其网站并采用选择性防御，同时未屏蔽合法流量或搜索引擎。近期的查封行动（2026年7月的NetNut）提供了暂时缓解，但并没有永久解决方案。

文章警告称，如果不要求AI公司遵守道德标准，开放互联网将被防御围墙所封闭——爬虫程序掠夺内容，并将独立网站推向毁灭。

---

## 30. Otary – 图像与几何Python库现已推出教程

**原文标题**: Otary – Image and Geometry Python Library Now Has Tutorials

**原文链接**: [https://alexandrepoupeau.com/otary/learn/](https://alexandrepoupeau.com/otary/learn/)

本文介绍了图像与几何处理Python库**Otary**的教程部分。这些教程旨在通过实际示例帮助用户学习如何使用该库，而非作为完整参考文档。

主要内容通过目录整理为以下几个关键领域：

- **通用与高级示例**：包含图像与几何联合处理、高级图像操作以及高效裁剪技术（包括加载前的图像裁剪）。
- **线性实体处理**：涵盖基础用法、相对定位及方向函数。
- **评分与面积计算**：提供几何实体评分及面积计算方法。
- **交集计算**：演示如何计算几何对象间的交集。
- **OCR**：指导用户如何实例化`OcrMultiOutput`进行光学字符识别。
- **显示与分析**：提供结果可视化与分析选项。

整体目标是帮助用户以实践探索的方式掌握该库的功能。

---

