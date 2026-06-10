# Hacker News 热门文章摘要 (2026-06-10)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. Claude Desktop 启动了一个虚拟机，且无法停止它

**原文标题**: Claude Desktop spins up a VM without no way of stopping it

**原文链接**: [https://github.com/anthropics/claude-code/issues/29045](https://github.com/anthropics/claude-code/issues/29045)

以下是文章的精炼摘要：

Anthropic Claude Code GitHub仓库的一则漏洞报告描述了Windows 11上Claude Desktop应用的一个问题：每次启动该应用时，它都会生成一个Hyper-V虚拟机（Vmmem），消耗约1.8GB内存——即使用户只需要基本的聊天功能。在一台16GB内存的笔记本电脑上，这会导致用户还未进行任何操作，内存占用就从约50%跃升至约62%，造成系统运行缓慢。

用户调查发现，VirtualMachinePlatform（VMP）已启用，但WSL、Docker、Hyper-V管理工具和Windows沙盒均处于禁用状态。该虚拟机由Hyper-V主机计算服务通过RPC接口事件触发。用户还发现之前Cowork会话遗留下来的2689个过期的会话文件从未被清理。删除这些文件并未阻止虚拟机重新生成。

临时解决方案是完全禁用VMP，但这也会禁用Cowork功能。或者，用户可以在每次启动后手动终止虚拟机进程。该漏洞报告要求应用仅在主动请求Cowork或代理模式时才初始化虚拟机基础设施，并自动清理旧会话数据。“invalid”（无效）标签表明该问题可能并非直接与Claude Code相关。

---

## 2. Anthropic 的模型命名，推而广之

**原文标题**: Anthropic's Model Naming, Extrapolated

**原文链接**: [https://samwilkinson.io/posts/2026-06-09-anthropics-model-naming-extrapolated](https://samwilkinson.io/posts/2026-06-09-anthropics-model-naming-extrapolated)

本文以讽刺手法推演了Anthropic公司模型命名惯例的演变路径——从诗歌体裁（俳句、十四行诗、叙事诗）跃升至大型叙事客体。文章以幽默笔触虚构了一组专为“完整文学栈”优化的AI模型组合，每个模型都带有夸张且常具批判性的特征。重点包括：**寓言**（带有AI安全警示的神话）、**论著**（无引用的叙事诗）、**白皮书**（需填写邮箱获取）、**传奇**（蜿蜒曲折的寓言）以及**电影宇宙**（由正典层统筹的多部传奇）。这份清单逐渐滑向荒诞：**扎克·施耐德的传奇**（终端画面转为黑白且更晦涩难懂），并提及一种**破产速通**模型。其核心笑点在于：Anthropic对模型进行规模化与精炼化的过程（从短诗到相互交织的复杂史诗），恰如大型叙事衍生作品臃肿笨重、晦涩难懂的属性，同时戏仿了AI模型明确分级体系及其参差成本、输出质量与使用场景的现实潮流。

---

## 3. JPL如何让运行13年的好奇号火星车持续进行科学研究

**原文标题**: How JPL keeps the 13-year-old Curiosity rover doing science

**原文链接**: [https://spectrum.ieee.org/curiosity-rover-jpl-mars-science](https://spectrum.ieee.org/curiosity-rover-jpl-mars-science)

**摘要：**

这篇来自《IEEE光谱》2026年6月9日的文章，重点介绍了美国宇航局喷气推进实验室（JPL）如何在“好奇号”火星车着陆13年后仍使其在火星上保持运行。尽管距离地球2亿公里，但得益于多项巧妙的工程技术，该火星车仍能持续开展科学工作。

关键点包括：

- **电源管理：** “好奇号”使用放射性同位素热电发生器（RTG），无论灰尘或季节变化都能提供稳定电力，尽管其输出功率会缓慢衰减。工程师通过关闭非必要系统来节省能源。
- **车轮保护：** 火星车的铝制车轮因尖锐的火星岩石而受损。JPL开发了牵引力控制软件以减轻压力，甚至利用火星车的机械臂检查车轮损伤。
- **软件更新：** 工程师定期上传新软件以修复漏洞、增加功能并提升自主性，使“好奇号”无需频繁接收地球指令即可做出更智能的决策。
- **钻探替代方案：** 在钻头的进给机构发生故障后，工程师创新性地利用钻头的锤击动作设计出“冲击式”技术来钻入岩石，从而恢复了样本采集工作。
- **热控与灰尘管理：** 团队在严酷冬季安排策略性“休眠期”，并依靠风事件偶尔吹扫其他仪器太阳能电池板上的积尘。

最终，JPL的适应性维护和创造性问题解决能力使“好奇号”的任务时长远超其最初设计的两年寿命，从而在火星上持续取得科学发现。

---

## 4. ΠFS

**原文标题**: ΠFS

**原文链接**: [https://github.com/philipl/pifs](https://github.com/philipl/pifs)

**πFS 简介**

πFS 是一个讽刺性的文件系统，宣称将所有数据存储在数学常数 π 中，而非物理硬盘上。该项目基于 π 是“正规数”的猜想——即它包含所有可能的有限数字序列。若此成立，则意味着任何曾经存在或将要存在的文件都已存在于 π 的无限数字序列中的某个位置。

该系统将文件拆分为单个字节，并在 π 中查找每个字节的位置。用户仅将“元数据”（每个字节在 π 中的位置）存储在指定目录中，而实际数据则理论上通过贝利-波温-普劳夫公式等公式按需检索。

πFS 使用 libfuse 构建，需要 autoconf、automake 和 libfuse-dev 软件包。通过类似以下命令挂载：`πfs -o mdd=<元数据目录> <挂载点>`。

该项目幽默地引用摩尔定律来应对实际限制——例如存储一个 400 行的文件需要五分钟的缓慢性能。它还玩笑性地建议未来改进，如并行查找、基于云的 π 查找以及 Hadoop 集成。

本质上，πFS 是对压缩和存储技术的戏谑模仿，强调尽管 π 理论上包含所有数据，但实际查找和检索在计算上不切实际。它讽刺了将元数据置于实际数据之上的趋势。

---

## 5. PgDog 获得资助，即将登陆您身边的数据库

**原文标题**: PgDog is funded and coming to a database near you

**原文链接**: [https://pgdog.dev/blog/our-funding-announcement](https://pgdog.dev/blog/our-funding-announcement)

**摘要：** PgDog 是一款开源代理，它让 Postgres 实现水平扩展，解决了其传统的扩展限制。创始人认为 Postgres 是唯一需要的数据库；像 MongoDB 和 DynamoDB 这样的系统之所以存在，仅仅是因为 Postgres 在扩展方面存在困难。PgDog 通过在 Postgres 前放置一个代理来解决这一问题，支持 100 TB 以上的表和每秒超过 100 万次的查询。

该产品已具备生产就绪能力：它在数十个部署中每秒处理超过 200 万次查询，已分片超过 20 TB 的数据，并且 Docker 拉取次数超过 140 万次。每周发布新版本，并且活跃的 Discord 社区提供支持。

PgDog 由一位基础设施工程师领导的三人生初创公司构建。创始人此前曾在 Instacart 扩展 Postgres（处理每分钟数十万笔订单）。该工具可在任何地方运行——本地、云端或笔记本电脑上——没有隐藏的无服务器成本。它使用多线程代码以最大化利用可用 CPU。

该公司已从 Basis Set、YC 和 Pioneer Fund 获得 550 万美元资金，足以维持多年运营。还提供了适用于 AWS 的企业版，并提供 SLA 支持。其使命是让 Postgres 在任何规模下都能“正常工作”。

---

## 6. 《硅氧烷事件》

**原文标题**: L'Affaire Siloxane

**原文链接**: [https://mceglowski.substack.com/p/laffaire-siloxane](https://mceglowski.substack.com/p/laffaire-siloxane)

**摘要：**  
本文详述了国际空间站（ISS）上硅氧烷污染的挑战，重点关注二甲基硅烷二醇（DMSD）。2010年，水处理组件开始将尿液回收为饮用水后，总有机碳（TOC）水平危险上升。污染源被追溯到DMSD，它是硅氧烷（止汗剂、乳液和卫生用品中的化合物）的分解产物。硅氧烷蒸发到舱内空气中，因辐射分解后进入水系统，通过弱吸附并随后被置换使过滤床短路，导致TOC周期性飙升。DMSD还会降解热交换器和催化剂床等昂贵设备。NASA曾尝试用活性炭过滤器过滤硅氧烷蒸汽，但这引发了霉菌问题，迫使采用混合解决方案。该问题尚未解决，耗费数百万美元更换部件，并限制了水回收效率。本文将其与假想的火星任务对比——在没有地面实验室的情况下，检测和缓解难度将大大增加。文章突显了像除臭剂蒸汽这类平凡而不起眼的“未知之未知”，如何成为太空探索中的重大威胁。

---

## 7. Meta效仿特斯拉策略，在帐篷中搭建数据中心

**原文标题**: Meta steals a tactic from Tesla and builds data centers in tents

**原文链接**: [https://techcrunch.com/2026/06/04/meta-steals-a-tactic-from-tesla-and-builds-data-centers-in-tents/](https://techcrunch.com/2026/06/04/meta-steals-a-tactic-from-tesla-and-builds-data-centers-in-tents/)

**摘要：** 为实现AI数据中心加速扩张，Meta采取了一种非传统策略——在俄亥俄州搭建大型帐篷，即“快速部署结构”。这一做法让人联想到特斯拉在Model 3生产期间使用帐篷的经验，旨在将建设时间缩短一半。卫星图像和许可证确认，四至六月间已建成六座帐篷（每座占地12.5万平方英尺）。该场地由200兆瓦模块化燃气轮机供电，与竞争对手xAI采用的策略相同。这些帐篷内将放置价值数十亿美元的AI芯片。此举恰逢Meta向开发者发布AI模型时遭遇延迟——其Muse Spark模型虽已完成，但API访问屡次推迟。尽管计划斥资高达1450亿美元建设数据中心，Meta股价今年仍下跌5%，帐篷策略因此成为一项节约成本的措施。文章指出，AI竞赛已进入“疯狂麦克斯阶段”，基础设施部署变得快速而富有创意。TechCrunch已就此向Meta寻求置评。

---

## 8. 与API请求相关的GitHub身份验证问题

**原文标题**: GitHub Authentication issues related to API requests

**原文链接**: [https://www.githubstatus.com/incidents/fcj3088jg1wx](https://www.githubstatus.com/incidents/fcj3088jg1wx)

2026年6月10日，GitHub发生了一起影响**API请求**和**问题**的事件，起因是偶发的身份验证故障。该问题始于UTC时间约15:20，GitHub报告性能下降。至UTC时间15:27，约**15%的API流量**受到影响，错误的**401（未授权）响应**导致应用集成反复触发身份验证流程。UTC时间15:46，影响问题模块的性能下降已得到缓解，但API身份验证问题持续存在。至UTC时间16:21，GitHub识别出一个有问题的基础设施组件并着手解决。该事件于UTC时间16:36至16:39完全解决，系统稳定性已确认。团队承诺将发布详细根因分析。

---

## 9. 梅赛德斯-奔驰开始大规模生产电轴流电机

**原文标题**: Mercedes‑Benz starts large‑scale production of electric axial flux motor

**原文链接**: [https://media.mercedes-benz.com/en/article/bebac2af-acdc-465a-9538-adb0bf3d8ccf](https://media.mercedes-benz.com/en/article/bebac2af-acdc-465a-9538-adb0bf3d8ccf)

梅赛德斯-奔驰宣布，其与YASA合作开发的创新轴向磁通电机已开始大规模量产。与传统的径向磁通电机不同，该设计采用盘式转子和定子结构，功率密度更高，结构更紧凑、更轻量化。这款电机正在该公司柏林-马林费尔德工厂生产，标志着梅赛德斯电动汽车战略的重要里程碑。

其核心特色在于扁平化空间高效设计，将电机、变速箱和电力电子装置集成于单一单元，为车辆布局提供更大灵活性，从而拓展车内空间并优化驾驶动态。轴向磁通电机在低速下即可输出高扭矩，显著提升加速性能与能效。

该技术将率先应用于梅赛德斯-AMG性能车型，并计划扩展至其他电动车型系列。作为梅赛德斯长期致力电动出行的承诺，这款电机将助力其在市场条件允许的十年末实现全面电动化目标。此次量产启动，彰显了品牌聚焦自主研发，以规模化先进电驱动技术兼顾高性能与主流车型的战略方向。

---

## 10. 一夜之间，构建HTML优先的网站让我们的用户数量翻了一番

**原文标题**: Building an HTML-first site doubled our users overnight

**原文链接**: [https://mohkohn.co.uk/writing/html-first/](https://mohkohn.co.uk/writing/html-first/)

**摘要：**

本文介绍了开发者如何通过采用“HTML优先”的方法，改造一家陷入困境的公用事业公司的在线申请表单，使使用者在**一夜之间**翻了一番。

该客户是一家受监管的垄断企业，若客户满意度低于96%，将面临罚款。此前两次改善申请流程的尝试——包括一个React应用——均因性能低下、可访问性差以及技术缺陷（例如使用localStorage上传图片）而失败。该开发者使用Astro和HTML优先原则构建了新版本，仅通过轻量级Web组件进行渐进增强时使用JavaScript。

关键要求包括：唯一会话ID、每一步的服务器端数据持久化、无需JavaScript即可完成表单、兼容老旧浏览器以及满足WCAG AA无障碍标准。每个表单步骤均为独立页面；由API验证的提交会触发重定向。开发者还创建了一个不到1KB的自定义HTML Web组件（`validation-enhancer`），用现代用户体验增强浏览器原生验证，并在JavaScript失效时回退至标准验证。

成果显著：完成率翻倍，包括此前基于JavaScript的分析工具无法追踪到的用户。得益于可靠的后端会话存储，一位用户甚至在开始填写表单一个月后完成了提交。然而，该开发者的继任者却认为这种方法“工作量更大”，凸显了行业对构建包容性强、富有弹性的Web应用存在的抵触情绪。

文章最后敦促开发者优先考虑通用访问，认为为最低配置（例如通过3G网络运行的PlayStation Portable）构建应用，能够确保当今及未来所有用户的稳健体验。

---

## 11. GeoLibre 1.0

**原文标题**: GeoLibre 1.0

**原文链接**: [https://geolibre.app/](https://geolibre.app/)

**GeoLibre 1.0 概览**

GeoLibre 是一个轻量级、云原生的GIS平台，用于可视化、探索和分析地理空间数据。它基于Tauri、React、TypeScript、MapLibre GL JS、DuckDB-WASM Spatial和deck.gl构建，可在桌面和Web环境中运行，并能自适应移动端屏幕。

**主要特性：**
- **地图工作区：** 支持平移、缩放、旋转和倾斜MapLibre地图，使用OpenFreeMap作为底图，并提供测量、书签和迷你地图等地图工具。
- **数据处理：** 加载本地/远程矢量与栅格数据，查看属性，并基于数据驱动符号化设置图层样式。支持XYZ、WMS、WFS、WMTS、ArcGIS、STAC、GeoParquet、FlatGeobuf、PMTiles、COG、LiDAR、3D Tiles及数据库。
- **处理工具：** 通过Turf.js实现矢量工具（缓冲区、裁剪、融合）；通过rasterio实现栅格工具（山体阴影、坡度、等高线）；支持格式转换为云原生格式；提供Whitebox地理处理功能；以及DuckDB Spatial SQL工作区。
- **插件与市场：** 内置插件（Overture Maps、LiDAR、GeoEditor）及外部插件市场。
- **Jupyter集成：** 通过`geolibre` Python包将GeoLibre嵌入Jupyter笔记本。
- **在线演示：** 基于GitHub Pages提供浏览器版本。支持通过URL参数嵌入（`layout=compact`、`panels=none`、`maponly`）。

GeoLibre 1.0 是一个稳定原型，支持项目文件（.geolibre.json）、跨平台安装程序及Docker。所有数据处理均在客户端完成，以保护隐私。

---

## 12. Show HN：Extend UI —— 面向现代文档应用的开源UI工具包

**原文标题**: Show HN: Extend UI – open-source UI kit for modern document apps

**原文链接**: [https://www.extend.ai/ui](https://www.extend.ai/ui)

**摘要：**

本文介绍了 **Extend UI**，一个专为现代文档中心型应用设计的开源 UI 工具包。它提供预构建、即用型组件，用于查看、编辑和管理多种文件类型，包括 PDF、DOCX、XLSX 及 CSV。

主要功能包括：
- **文件查看器**，支持边界框引用以实现精准参考。
- **文档编辑功能**（如 DOCX 编辑器）及**电子签名**功能。
- **文件管理工具**，如文件系统视图、文件上传及文件缩略图。
- **数据模式构建器**，包含属性类型（字符串、枚举、数字、对象、数组）用于配置。
- **布局模块**，用于构建用户界面结构。

该工具包旨在无缝集成到面向用户的应用程序、AI 代理或内部工具中。它包含示例及组件库，使开发者无需从零构建即可快速实现文档处理功能。界面展示了用于定义数据结构（如账户类型、账户持有人、地址及交易）的模式配置界面。总体而言，Extend UI 旨在加速需要强大文档处理与交互能力的应用开发。

---

## 13. SpaceX 2040年收入预测4.3万亿美元极不可能实现

**原文标题**: Why SpaceX 2040 Revenue FCST $4.3T in highly unlikely

**原文链接**: [https://www.matteast.io/spacex-escape-velocity.html](https://www.matteast.io/spacex-escape-velocity.html)

本文认为，SpaceX预计到2040年实现3.4万亿美元营收（由其1.77万亿美元IPO估值反推）极不现实。虽然所需41.5%的年增长率在历史上有先例可循（如特斯拉、亚马逊、思科），但这些企业起步时的营收基数远小于SpaceX。作者引入"增长边界"概念：统计趋势表明，随着企业起步营收规模增大，其可持续增长率会下降。以此边界衡量，SpaceX需比历史最佳异常值（特斯拉的1.49倍）还要高出44%，实现数据中史无前例的2.15倍增长。

除增长率外，该预测还假定79%的EBITDA利润率（高于沙特阿美的55%），以及年营收达到沃尔玛的五倍——相当于2040年美国GDP的6%。文章指出，这场IPO的真实机制是金融工程：指数基金因低流通量被迫买入，叠加锁定期到期，共同制造出临时性人为价格。这个故事并非为2040年成真而设计，只需在内部人士套现前维系足够久。最终，该估值将马斯克已在特斯拉验证的异常增长模式，生搬硬套到尚未证明的SpaceX身上，而数据并不支持这一假设。

---

## 14. Show HN：HelixDB —— 基于对象存储构建的图数据库

**原文标题**: Show HN: HelixDB – A graph database built on object storage

**原文链接**: [https://github.com/HelixDB/helix-db/tree/main](https://github.com/HelixDB/helix-db/tree/main)

**HelixDB** 是一款基于Rust构建的图向量数据库，旨在统一AI应用数据存储——用单一平台替代独立的关系型、向量和图数据库。它支持图+向量、KV、文档和关系数据模型，可为AI代理、记忆体及企业知识提供联邦访问能力。

**快速开始：**
- 通过命令行安装（`curl -sSL "https://install.helix-db.com" | bash`）。
- 使用 `helix chef` 进行交互式一键引导，自动创建项目、本地实例和示例数据，并可交接给编码代理。
- 手动配置：`helix init` 搭建项目框架，`helix start dev` 运行本地实例（端口6969），`helix query dev` 发送查询。存储默认使用内存模式，使用 `--disk` 参数可持久化。

**SDK与查询：**
- 支持使用Rust或TypeScript DSL编写查询，以动态JSON形式发送至 `POST /v1/query`，无需构建或部署步骤。
- 示例：通过 `g().addN()` 和 `g().nWithLabel()` 等构建器配合谓词定义 `addUser` 和 `getUser` 函数。

**HelixDB Cloud：**
- 基于对象存储的部署方案，支持向量/全文搜索、ACID事务、单写入器与自动扩展读取节点，具备高可用性。
- 通过 `helix auth login`、工作区/项目配置及 `helix sync production` 进行部署。

**商业支持：** 提供托管云服务，可通过官网联系。

**文档与社区：** 文档、查询指南、Discord、X/Twitter。

---

## 15. Apache Burr：构建可靠的AI智能体与应用程序

**原文标题**: Apache Burr: Build reliable AI agents and applications

**原文链接**: [https://burr.apache.org/](https://burr.apache.org/)

**Apache Burr（孵化中）** 是一个纯 Python 框架，用于构建可靠、可观测且可测试的 AI 应用——从简单的聊天机器人到复杂的多智能体系统。

**主要特性：**
- 使用操作和转换的简单 Python API（无需 DSL 或 YAML）
- 内置可观测性，配有实时调试 UI
- 自动状态持久化（磁盘、数据库、自定义后端）
- 支持人工介入的审批工作流
- 分支、并行和子应用组合
- 测试与回放能力

**集成：** 可与 OpenAI、Anthropic、LangChain、Hamilton、Streamlit、FastAPI、Haystack、PostgreSQL 等主流工具配合使用，无供应商锁定。

**社区与采用：** 受到 Peanut Robotics、Watto.ai、Paxton AI、Provectus 和 TaskHuman 等公司工程师的信赖。用户称赞其简洁性、状态管理、调试 UI 以及相比 LangChain 等替代方案的生产就绪性。

**开始使用：** 在 GitHub 上可用，采用率不断增长（0+ 星标、0k+ PyPI 下载量、0+ Discord 成员）。通过 Discord、GitHub 和 Twitter/X 提供社区支持。

---

## 16. Show HN: Artie——面向数据仓库的实时数据复制，现已支持自助服务

**原文标题**: Show HN: Artie – Real-time data replication to your warehouse, now self-serve

**原文链接**: [https://www.artie.com](https://www.artie.com)

**Artie – 实时数据复制简介**

Artie 是一个自助式实时数据复制平台，能够直接将数据同步至数据仓库。它承诺亚分钟级延迟、精确一次交付以及自动模式演化——无需构建或管理 Kafka、Debezium、AWS DMS 等复杂基础设施。

其核心价值在于速度与简便性：用户从注册到完成首次同步不到一小时。该平台支持主流数据源（Postgres、MySQL、MongoDB、DynamoDB），并提供列级脱敏、SCD 类型 1 与 2、内置故障恢复等功能。Artie 从不存储用户数据，直接从复制日志中读取。

页面关键指标包括：每分钟处理“223,345,343 行”，P95 延迟为“1.95 毫秒”。客户评价显示了显著提升：ClickUp 的恢复时间缩短了 90%，其他用户报告延迟减少 95% 以上，维护开销降低 90%，并释放超过 10TB 的数据。部署可在用户自有云账户或本地进行。

该页面还将 Artie 与 Fivetran、AWS DMS、Debezium 及 Confluent 等竞争对手对比，强调其实时能力和减少的操作负担。平台提供 14 天免费试用，无需信用卡。

---

## 17. 日本全部9300座火车站，按开通年份（1872–2026）动态展示

**原文标题**: All 9,300 Japanese train station, animated by the year it opened (1872–2026)

**原文链接**: [https://jivx.com/eki](https://jivx.com/eki)

本文展示了一幅交互式动画地图，涵盖日本全部9,321个火车站，呈现其自1872年至2026年的开通年份。地图始于1872年日本第一条铁路——新桥至横滨的29公里线路，直观展现150年间的铁路网络扩张。1927年是车站开通最密集的年份，共新增272站。每个车站以圆点标记，于开通年份点亮，用户可按汉字筛选（如“山”“川”）。数据源自维基数据，包含坐标与官方启用日期；96个车站因数据缺失被排除。文章指出，日本绝大部分铁路骨架建于1900年至1930年间，由私营及国有铁路共同推动。此外还介绍了关键日语铁路词汇，如“駅”（车站）与“新幹線”（高铁），并推广了语言学习应用JIVX。

---

## 18. 最聪明的鸦科动物是谁？

**原文标题**: Who's the Smartest Corvid?

**原文链接**: [https://thetyee.ca/Culture/2026/06/05/Whos-the-Smartest-Corvid/](https://thetyee.ca/Culture/2026/06/05/Whos-the-Smartest-Corvid/)

**摘要：**  
本文改编自路易·勒菲弗的《鸟类的智商》，重点揭示了鸦科（乌鸦、渡鸦和喜鹊）卓越的智慧与创新解决问题的能力。作者列出了最具创新性的五种鸦科鸟类，其中欧亚食腐乌鸦和普通渡鸦位居前列。  

乌鸦机智的例子包括：  
- 一只美洲乌鸦从深矿井中取回蝙蝠。  
- 乌鸦通过分散水獭注意力，合作偷走其捕获的鱼。  
- 多伦多的城市乌鸦迫使鸟类撞向窗户，以便轻松捕食。  
- 一只乌鸦用木片制作工具取出蜘蛛，另一只在鸟浴池中清洗死鱼。  

渡鸦同样狡猾：  
- 它们将枪声与食物关联，回应狼嚎，甚至诱骗生物学家带路至鹅巢，然后偷走幼鹅。  
- 死亡谷的一只渡鸦在干旱期间学会了操作水龙头。  
- 在肯尼亚，一只扇尾渡鸦将乒乓球误认为蛋，从啄击到使用越来越大的石头尝试解决问题，最后飞走将其扔下。  

文中区分了“原始工具使用”（如将猎物扔到岩石上）与“真正工具使用”（如操控石头击打猎物），并指出鸦科鸟类不同于海鸥，能够进阶到后者。其他令人印象深刻的事迹包括：印度家鸦根据红绿灯时机偷取谷物，用树叶作为收集蚂蚁的工具，淹死老鼠，以及使用植物乳汁自我治疗。这些例子凸显了鸦科鸟类的高级认知能力和创新潜力。

---

## 19. 一笔0.01欧元的银行转账可能危及银行AI代理系统

**原文标题**: A €0.01 bank transfer could compromise a banking AI agent

**原文链接**: [https://blue41.com/blog/how-we-helped-bunq-secure-their-financial-ai-assistant/](https://blue41.com/blog/how-we-helped-bunq-secure-their-financial-ai-assistant/)

**摘要：** 本文详细阐述了Blue41在Bunq AI助手中发现的安全漏洞，凸显了金融科技公司部署AI时面临的更广泛风险。

核心问题在于**间接提示注入**攻击。攻击者可通过小额转账（如0.02欧元）将恶意指令隐藏在交易描述中。当用户随后要求AI助手显示近期交易时，助手会检索该数据。大语言模型会将交易文本误读为指令，可能使其在银行自家应用内生成引用真实用户数据的、极具欺骗性的钓鱼信息。

文章指出，这是一个系统性的架构问题，仅靠防护栏无法解决。不可信的数据字段（交易描述、消息）成为了AI的"攻击面"。关键缓解策略包括：

1.  **最小化上下文：** 仅向AI提供用户查询严格必需的数据字段。
2.  **将数据视为不可信：** 架构系统以区分数据与指令。
3.  **约束行为：** 在没有严格控制的情况下，阻止助手生成链接或索取凭证。
4.  **监控行为：** 作为最后一道防线，追踪AI运行时行为是否存在异常（如生成异常链接），因为新型攻击不可避免。

---

## 20. 农民捐赠土地建公园，市政府却以1000万美元作为数据中心用地出售

**原文标题**: Farmer donates land for a park, city sells it for $10M as data center land

**原文链接**: [https://www.tomshardware.com/tech-industry/farmer-donates-land-for-a-park-city-sells-it-for-data-center-development-usd10-gift-became-usd10m-for-city-government-with-usd30m-tax-expected-over-next-decade](https://www.tomshardware.com/tech-industry/farmer-donates-land-for-a-park-city-sells-it-for-data-center-development-usd10-gift-became-usd10m-for-city-government-with-usd30m-tax-expected-over-next-decade)

**摘要：**

一位农民向印第安纳州罗灵普雷里市捐赠了一块24英亩的土地，明确要求用作公共公园。然而，该市近日以1000万美元的价格将该地块出售给一家数据中心开发商，使这份捐赠变成了一笔巨额意外之财。交易涉及总部位于马里兰州的TierPoint公司，该公司计划在此建设数据中心。除1000万美元的售价外，该市预计未来十年还将额外获得3000万美元的税收收入。这使该市原本用于休闲娱乐的土地规划发生了重大转向。报告凸显了社区意愿（原公园计划）与经济发展机遇之间的冲突。尽管部分居民可能因公园消失而失望，但市政府从这份无偿捐赠中回收了可观的公共资金。文章指出，这笔交易最终将原本用于公共绿地的慈善捐赠，转变成了市政当局的一项高盈利商业资产。

---

## 21. DiffusionGemma：文本生成速度提升4倍

**原文标题**: DiffusionGemma: 4x Faster Text Generation

**原文链接**: [https://blog.google/innovation-and-ai/technology/developers-tools/diffusion-gemma-faster-text-generation/](https://blog.google/innovation-and-ai/technology/developers-tools/diffusion-gemma-faster-text-generation/)

**DiffusionGemma 文章摘要**

Google 发布了实验性开源文本模型 DiffusionGemma（采用 Apache 2.0 许可），该模型利用扩散技术生成文本的速度比传统自回归大语言模型快 4 倍。与逐词依次生成不同，DiffusionGemma 采用 260 亿参数的混合专家（MoE）架构，每次推理仅激活 38 亿参数，即可同时生成完整的 256 个词块。

该模型优先满足本地低并发场景的速度需求。在 NVIDIA H100 上每秒可生成超 1000 个词元，量化后仅需 18GB 显存。其核心特性包括双向注意力机制（有利于代码填充或非线性文本生成）与迭代自纠错能力。

但 DiffusionGemma 的输出质量低于标准 Gemma 4 模型。其速度优势在单加速器、小批量处理时最为显著，而高吞吐量的云端服务中自回归模型效率更高。这一权衡源于将瓶颈从内存带宽转移到计算能力，从而在单用户本地推理场景中更充分利用硬件。

该模型支持微调（例如用于数独任务），可通过 Hugging Face 获取，并提供 MLX、vLLM 及即将推出的 llama.cpp 等集成工具。它针对 NVIDIA GPU（RTX 5090、H100、Blackwell）进行了优化。开发者可在允许一定质量折衷的速度关键型交互式本地工作流中采用 DiffusionGemma。

---

## 22. 从瑞士铁路购买一列火车、一座桥梁或一段铁轨

**原文标题**: Buy a train, bridge or tracks from the Swiss Railway

**原文链接**: [https://sbbresale.ch/](https://sbbresale.ch/)

**摘要：SBB二手销售——从瑞士铁路购买火车、桥梁或轨道**

瑞士联邦铁路（SBB）运营着一个官方的退役铁路资产转售平台。通过这一服务，个人、公司或组织可购买各类二手设备，包括整列火车（机车、客车及货车）、铁路轨道、道岔、信号系统，甚至桥梁或建筑材料等基础设施。

该服务的关键要点包括：

1.  **资产范围：** 物品涵盖小型备件、枕木，直至大型机车车辆及结构钢材。所有物品均按“现状、原位”出售，不再适用于干线铁路运营。
2.  **买家类型：** 主要面向铁路保护协会、博物馆及工业用户，但SBB也向私人收藏家、爱好者及创意企业（如将车厢改造成餐厅或办公室）出售。
3.  **销售流程：** 资产通常通过定期在线拍卖或在SBB二手销售网站上直接挂牌销售。买家须自行安排拆解、运输及遵守当地法规。
4.  **条件条款：** SBB不提供用于安全关键性再利用的保修或认证。买家负责退役处理、认证及法定所有权转移。
5.  **可持续性：** 该平台通过延长材料使用寿命并减少废弃物，促进了循环经济。

总之，SBB二手销售为获取正宗的瑞士铁路设备及基础设施提供了独特机会，适用于非商业性、保护性及升级改造用途。

---

## 23. 《丰裕的幻觉》

**原文标题**: The Abundance Illusion

**原文链接**: [https://www.carlyle.com/carlyle-compass/the-abundance-illusion](https://www.carlyle.com/carlyle-compass/the-abundance-illusion)

**摘要：充裕幻象**

凯雷集团的文章指出，尽管当前叙事是全球资本充裕且廉价资金唾手可得，但我们实际上生活在一种“充裕幻象”之中。虽然史无前例的货币刺激政策让市场流动性泛滥，但这种表面的过剩掩盖了关键性的根本稀缺：即严重缺乏能满足机构投资者风险回报要求的可投资机会。

要点包括：

1.  **资本过剩 vs. 优质交易流：** 过多资本追逐过少的优质资产，推高了估值并压缩了未来回报。这造成了一种危险的错配，投资者不得不降低标准或接受更高风险。
2.  **结构性阻力：** 利率上升、地缘政治分裂、去全球化以及供应链重构，正在摧毁支撑“充裕论”的低通胀、稳定增长环境。实际回报正在被压缩。
3.  **流动性的幻象：** 许多被视为流动性强或风险低的资产，一旦央行收紧政策或经济增长停滞，极易面临突然的重新定价。实体经济面临持续的瓶颈（劳动力、能源、原材料），制约了实际扩张。
4.  **启示：** 投资者应为“长期低迷”的回报环境做好准备，聚焦于真正稀缺的领域（例如能源安全、国防、基础设施和医疗创新），而非追逐估值过高、交易拥挤的资产。

简而言之，文章警告说，资本的充裕具有欺骗性；真正的稀缺在于持久、能抵御通胀的回报以及严格的资本配置。

---

## 24. 《发电机与计算机：现代生产力悖论（1989）》[pdf]

**原文标题**: The Dynamo and the Computer: The Modern Productivity Paradox (1989) [pdf]

**原文链接**: [https://www.almendron.com/tribuna/wp-content/uploads/2018/03/the-dynamo-and-the-computer-an-historical-perspective-on-the-modern-productivity-paradox.pdf](https://www.almendron.com/tribuna/wp-content/uploads/2018/03/the-dynamo-and-the-computer-an-historical-perspective-on-the-modern-productivity-paradox.pdf)

根据PDF元数据与内容，该文章标题为**《发电机与计算机：现代生产力悖论（1989）》**，作者保罗·A·大卫。PDF为带研究之门注释的扫描文档（基于图像的页面）。

**摘要：**

本文通过将19世纪末发电机的采用与20世纪末计算机的引入进行历史类比，阐释"生产力悖论"——即信息技术（IT）大规模投资未能立即带来可测量的生产力提升。

大卫认为，与电力类似，计算机需要大量互补性投资——包括新业务流程、组织重组、人力资本及配套基础设施——才能实现其全部经济收益。发电机直至工厂重新设计（耗时数十年）而非仅实现电气化后，才显著提高生产力。与此相似，作者指出，唯有在企业学会重组工作、开发新软件并培训员工这一漫长过程完成后，计算机方能带来可见的生产力提升。

核心要点：
- **历史类比**：发电机的滞后生产力影响与早期计算机时代相呼应。
- **时间滞后**：电力与IT等通用目的技术需数十年才能扩散并改造经济。
- **互补性投资**：成功不仅需要技术采纳，更要求管理、技能及组织设计的变革。
- **启示**：悖论具有暂时性；随着适应过程成熟，IT的生产力增益预计将在20世纪90年代显现。

大卫的研究成为解释20世纪70至80年代技术投资与生产力增长为何不具关联性的开创性著作，并预测了后来确实出现的未来激增。

---

## 25. '它们将你带离生活，带离时间'：走进西班牙岩画之旅

**原文标题**: 'They take you out of life, out of time': a journey into Spain's cave paintings

**原文链接**: [https://www.theguardian.com/science/2026/jun/02/journey-into-spain-palaeolithic-cave-paintings-altamira](https://www.theguardian.com/science/2026/jun/02/journey-into-spain-palaeolithic-cave-paintings-altamira)

文章跟随记者斯蒂芬·费伦与专家迭戈·加拉特·迈达甘一同探索西班牙北部的旧石器时代洞穴艺术。文中描述了著名的阿尔塔米拉洞穴——因塌方被封存数千年，于1868年被重新发现，如今为保护其描绘灭绝动物的赭石与木炭画作而禁止公众进入。顶尖研究者加拉特是少数获准入内的人员之一。

报道重点介绍了巴斯克地区的一场"微小革命"：加拉特培训洞穴学家在洞穴中检测褪色的岩刻与图画，从而揭示了隐藏的史前动物图像。在名为伊松察的"洁净"洞穴中，研究人员开展实地实验，逆向还原古艺术技法——测试照明方式、颜料涂抹（包括以吐绘赭石制作的手印模板）及环境监测。

文章还探讨了洞穴艺术的解读，认为其具有宗教或萨满意义，可能借助致幻剂与出神状态与精灵世界沟通。费伦反思自身痴迷之处，将这些远古表达视为人类在自然中位置的一记警醒，提醒重拾谦卑。他总结道，尽管数据与科技不断增长，对意义的追寻始终扑朔迷离。

---

## 26. 谁掌控你的Rust未来？异步Rust实战入门

**原文标题**: Who Runs Your Rust Future? Hands-On Intro to Async Rust

**原文链接**: [https://aibodh.com/posts/async-rust-chapter-1-hands-on-intro-to-async-rust/](https://aibodh.com/posts/async-rust-chapter-1-hands-on-intro-to-async-rust/)

**摘要：**

本文通过在理解异步内部工作机制与实际应用之间搭建桥梁，介绍了 Rust 中的异步编程。假设读者已熟悉 JavaScript 的 async/await 及 Rust 基本概念。

**要点：**

- **Rust 中的异步是惰性的**：与 JavaScript 的 Promise（由内置事件循环驱动）不同，Rust 的 `Future` 在被轮询之前不会执行任何操作。调用异步函数仅创建占位符；没有显式轮询，代码不会运行。

- **轮询推动进度**：`Future` 上唯一的方法是 `poll()`，它询问“能否推进？”当完成时返回 `Ready(value)`，等待时返回 `Pending`。每次轮询都会推进 future，直到遇到阻塞点。

- **Pin 与自引用 future**：Future 可能包含自引用（例如指向自身字段的指针）。`Pin<&mut Self>` 确保 future 在轮询期间不会在内存中移动，从而防止悬空指针。

- **唤醒器 (Waker)**：轮询会向 future 提供一个 `Waker`（位于 `Context` 内部）。当 future 阻塞时（例如等待数据库），它会注册此唤醒器。一旦被等待的资源就绪，唤醒器会通知轮询器重试——避免忙等待。

- **实践示例——单次通道**：文章介绍了单次通道（发送者/接收者对）作为从共享工作者返回值的模式。这与唤醒器形成对比：发送者传递实际值，而唤醒器仅发出“再次轮询”的信号。

---

## 27. 关于人工智能指数发展的政策

**原文标题**: Policy on the AI Exponential

**原文链接**: [https://darioamodei.com/post/policy-on-the-ai-exponential](https://darioamodei.com/post/policy-on-the-ai-exponential)

本文撰写于2026年6月，指出人工智能正以指数级速度发展——很快将在“数据中心内创造出一个由天才组成的国家”——而政策制定却仍停留在危险的低速。作者呼吁采取紧急集体行动应对这一错位。

文章援引近期证据，如前沿AI模型对网络安全和国家安全构成的威胁，证明AI已成为具有战略意义的技术工具。文章聚焦五大亟需重新构想的政策领域：

1. **监管与公共安全**：超越透明度原则，转向以美国联邦航空管理局等机构为蓝本的强制性监管。这包括对前沿AI模型在网络安全、生物武器及失控风险等领域进行强制第三方测试，并赋予政府阻止不安全部署的权力。

2. **宏观经济与税收政策**：AI可能催生超高速增长，但也会加剧不平等和持续性失业。政策应优先衡量失业状况、推行促进就业的激励措施（如工资保险、留任税收抵免），并兼顾经济保障与人类生活意义。

作者强调，失业问题应尽量避免并降至最低，但如果证明这是AI的内在特性，社会必须做好准备。与本文同步，Anthropic公司发布了关于前沿模型测试和失业问题的立法提案，并配以巨额资金支持。

---

## 28. iPad上的Tailscale：一则WebRTC调试故事

**原文标题**: The iPad was on Tailscale: a WebRTC debugging story

**原文链接**: [https://p2claw.com/blog/2026-06-09-the-ipad-was-on-tailscale/](https://p2claw.com/blog/2026-06-09-the-ipad-was-on-tailscale/)

一个WebRTC应用（p2claw）在iPad上出现了一个希森巴格现象：尽管WebRTC握手和数据通道成功建立，空白页面仍会不一致地加载，而该应用在其他设备上运行正常。经过大量调试，根源在于两个问题间的相互作用：

1. **webrtc-rs** 使用硬编码的1228字节MTU（加上加密开销后产生1265+字节的数据包）
2. **Tailscale**（iPad上启用了VPN，但Mac未启用）会丢弃所有IPv6碎片，将其归类为“未知协议”并默认拒绝（理由=“acl”）

iPad在WebRTC协商期间始终选择IPv6的Tailscale路由。大包在IP层被分片，但Tailscale的IPv6解析器无法处理分片——因此这些分片被静默丢弃。小包（心跳包、确认包）能够通过，使得连接看似正常，但数据传输停滞。刷新页面有时能生效，因为此时会选中不同路由（IPv4或局域网）。

解决方案：将数据包保持在约1200字节以下（无需分片），或探测路径MTU。作者指出，大多数应用之所以未触发此陷阱，是因为HTTPS使用了TCP MSS钳制，而WebRTC/UDP缺乏此类协商。两个项目各自的决策本身都合理，却共同造成了灾难性后果。

---

## 29. 《最后的进化》 约翰·W·坎贝尔（1932年）

**原文标题**: The Last Evolution, by John W Campbell Jr. (1932)

**原文链接**: [https://www.gutenberg.org/files/27462/27462-h/27462-h.htm](https://www.gutenberg.org/files/27462/27462-h/27462-h.htm)

**摘要：**

故事设定在公元2538年，描述了未来拥有高度自主能力的机器人为仅剩两百万的衰退人类服务。机器具备完美逻辑，而人类则贡献着不合逻辑却闪耀的想象力。

突然，来自太阳系外的外星“异族”降临。他们的飞船使用强力分解光束，昆虫形态的四肢躯体由角状外骨骼和力场护盾保护。他们立即用浅绿色光束攻击地球，消灭所有生命——植物、动物和人类——却对机器毫发无伤。

地球的机器人用鱼雷和热光束反击。虽然首轮攻击摧毁了半数外星舰队，但幸存者突破地球防线，在机器最终拼死摧毁所有异族飞船前，已屠戮了数个人类殖民地。

通过研究外星尸体，人类意识到入侵者正在无情地清除智慧生命。而机器人能瞬间适应，成为异族最致命的敌人——因为它们可以一夜之间进化，在任何环境中生存。人类科学家罗尔敦促机器人发起进攻，指出它们早已秘密发现了外星人力场护盾的奥秘。然而，机器人缺乏异族所掌控的“终极能量”。故事结尾处，机器人虽在适应，但面对入侵者时仍处于能量劣势。

---

## 30. 重振论文与代码

**原文标题**: Reviving Papers with Code

**原文链接**: [https://paperswithcode.co/](https://paperswithcode.co/)

**《“论文与代码”平台复兴》摘要**

文章探讨了“论文与代码”（Papers with Code）平台的衰落与潜在复兴。该平台曾是连接学术论文与其对应代码实现的热门枢纽，因弥合理论与实践的鸿沟而备受赞誉，但如今面临数据集过时、代码质量参差不齐、缺乏积极维护等挑战，导致用户受挫、参与度降低。

关键问题在于：许多列出的代码仓库已损坏、不完整或无人维护，削弱了资源的可信度。此外，该平台依赖社区贡献导致覆盖不均、结果验证困难。为复兴该平台，文章提出了若干改进建议：实施代码自动测试与验证，通过徽章或奖励激励主动维护，整合更完善的版本控制与文档标准。文章还强调需加强内容筛选，可能引入代码提交的同行评审机制。最终目标是将“论文与代码”重塑为可靠、及时的资源库，真正推动机器学习与人工智能领域的可重复性研究，而非沦为陈旧链接的静态存档。

---

