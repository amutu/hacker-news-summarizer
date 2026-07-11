# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-07-11.md)

*最后自动更新时间: 2026-07-11 20:33:45*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 2 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 3 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 4 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 5 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 6 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 7 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 8 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 9 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 10 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 11 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 12 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 13 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 14 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 15 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 16 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 17 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 18 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 19 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 20 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 21 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 22 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 23 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 24 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 25 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 26 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 27 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 28 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 29 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 30 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 31 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 32 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 33 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 34 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 35 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 36 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 37 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 38 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 39 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 40 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 41 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 42 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 43 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 44 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 45 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 46 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 47 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 48 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 49 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 50 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 51 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 52 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 53 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 54 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 55 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 56 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 57 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 58 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 59 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 60 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 61 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 62 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 63 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 64 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 65 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 66 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 67 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 68 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 69 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 70 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 71 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 72 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 73 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 74 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 75 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 76 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 77 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 78 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 79 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 80 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 81 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 82 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 83 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 84 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 85 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 86 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 87 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 88 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 89 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 90 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 91 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 92 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 93 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 94 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 95 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 96 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 97 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 98 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 99 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 100 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 101 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 102 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 103 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 104 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 105 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 106 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 107 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 108 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 109 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 110 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 111 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 112 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 113 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 114 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 115 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 116 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 117 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 118 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 119 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 120 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 121 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 122 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 123 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 124 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 125 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 126 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 127 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 128 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 129 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 130 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 131 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 132 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 133 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 134 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 135 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 136 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 137 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 138 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 139 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 140 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 141 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 142 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 143 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 144 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 145 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 146 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 147 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 148 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 149 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 150 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 151 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 152 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 153 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 154 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 155 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 156 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 157 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 158 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 159 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 160 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 161 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 162 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 163 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 164 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 165 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 166 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 167 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 168 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 169 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 170 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 171 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 172 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 173 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 174 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 175 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 176 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 177 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 178 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 179 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 180 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 181 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 182 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 183 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 184 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 185 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 186 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 187 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 188 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 189 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 190 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 191 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 192 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 193 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 194 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 195 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 196 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 197 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 198 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 199 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 200 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 201 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 202 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 203 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 204 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 205 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 206 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 207 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 208 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 209 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 210 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 211 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 212 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 213 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 214 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 215 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 216 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 217 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 218 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 219 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 220 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 221 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 222 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 223 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 224 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 225 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 226 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 227 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 228 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 229 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 230 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 231 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 232 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 233 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 234 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 235 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 236 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 237 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 238 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 239 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 240 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 241 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 242 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 243 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 244 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 245 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 246 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 247 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 248 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 249 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 250 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 251 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 252 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 253 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 254 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 255 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 256 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 257 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 258 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 259 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 260 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 261 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 262 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 263 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 264 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 265 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 266 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 267 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 268 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 269 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 270 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 271 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 272 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 273 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 274 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 275 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 276 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 277 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 278 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 279 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 280 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 281 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 282 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 283 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 284 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 285 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 286 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 287 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 288 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 289 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 290 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 291 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 292 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 293 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 294 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 295 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 296 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 297 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 298 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 299 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 300 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 301 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 302 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 303 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 304 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 305 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 306 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 307 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 308 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 309 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 310 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 311 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 312 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 313 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 314 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 315 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 316 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 317 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 318 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 319 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 320 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 321 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 322 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 323 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 324 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 325 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 326 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 327 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 328 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 329 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 330 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 331 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 332 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 333 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 334 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 335 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 336 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 337 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 338 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 339 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 340 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 341 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 342 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 343 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 344 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 345 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 346 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 347 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 348 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 349 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 350 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 351 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 352 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 353 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 354 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 355 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 356 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 357 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 358 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 359 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 360 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 361 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 362 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 363 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 364 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 365 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 366 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 367 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 368 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 369 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 370 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 371 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 372 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 373 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 374 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 375 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 376 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 377 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 378 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 379 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 380 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 381 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 382 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 383 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 384 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 385 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 386 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 387 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 388 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 389 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 390 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 391 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 392 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 393 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 394 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 395 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 396 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 397 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 398 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 399 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 400 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 401 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 402 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 403 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 404 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 405 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 406 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 407 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 408 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 409 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 410 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 411 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 412 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 413 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 414 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 415 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 416 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 417 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 418 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 419 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 420 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 421 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 422 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 423 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 424 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 425 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 426 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 427 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 428 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 429 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 430 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 431 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 432 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 433 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 434 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 435 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 436 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 437 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 438 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 439 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 440 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 441 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 442 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 443 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 444 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 445 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 446 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 447 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 448 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 449 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 450 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 451 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 452 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 453 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 454 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 455 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 456 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 457 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 458 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 459 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 460 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 461 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 462 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 463 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 464 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 465 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 466 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 467 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 468 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 469 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 470 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 471 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 472 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 473 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 474 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 475 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 476 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
