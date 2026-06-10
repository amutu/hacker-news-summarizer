# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-06-10.md)

*最后自动更新时间: 2026-06-10 20:33:32*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 2 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 3 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 4 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 5 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 6 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 7 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 8 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 9 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 10 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 11 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 12 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 13 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 14 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 15 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 16 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 17 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 18 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 19 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 20 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 21 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 22 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 23 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 24 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 25 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 26 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 27 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 28 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 29 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 30 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 31 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 32 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 33 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 34 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 35 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 36 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 37 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 38 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 39 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 40 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 41 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 42 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 43 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 44 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 45 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 46 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 47 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 48 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 49 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 50 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 51 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 52 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 53 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 54 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 55 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 56 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 57 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 58 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 59 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 60 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 61 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 62 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 63 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 64 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 65 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 66 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 67 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 68 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 69 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 70 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 71 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 72 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 73 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 74 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 75 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 76 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 77 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 78 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 79 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 80 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 81 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 82 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 83 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 84 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 85 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 86 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 87 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 88 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 89 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 90 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 91 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 92 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 93 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 94 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 95 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 96 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 97 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 98 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 99 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 100 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 101 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 102 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 103 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 104 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 105 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 106 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 107 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 108 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 109 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 110 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 111 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 112 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 113 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 114 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 115 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 116 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 117 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 118 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 119 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 120 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 121 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 122 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 123 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 124 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 125 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 126 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 127 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 128 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 129 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 130 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 131 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 132 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 133 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 134 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 135 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 136 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 137 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 138 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 139 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 140 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 141 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 142 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 143 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 144 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 145 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 146 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 147 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 148 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 149 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 150 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 151 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 152 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 153 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 154 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 155 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 156 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 157 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 158 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 159 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 160 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 161 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 162 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 163 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 164 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 165 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 166 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 167 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 168 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 169 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 170 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 171 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 172 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 173 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 174 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 175 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 176 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 177 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 178 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 179 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 180 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 181 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 182 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 183 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 184 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 185 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 186 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 187 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 188 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 189 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 190 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 191 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 192 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 193 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 194 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 195 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 196 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 197 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 198 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 199 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 200 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 201 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 202 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 203 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 204 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 205 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 206 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 207 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 208 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 209 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 210 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 211 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 212 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 213 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 214 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 215 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 216 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 217 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 218 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 219 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 220 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 221 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 222 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 223 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 224 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 225 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 226 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 227 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 228 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 229 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 230 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 231 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 232 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 233 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 234 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 235 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 236 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 237 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 238 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 239 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 240 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 241 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 242 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 243 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 244 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 245 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 246 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 247 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 248 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 249 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 250 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 251 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 252 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 253 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 254 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 255 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 256 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 257 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 258 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 259 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 260 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 261 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 262 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 263 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 264 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 265 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 266 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 267 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 268 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 269 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 270 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 271 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 272 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 273 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 274 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 275 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 276 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 277 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 278 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 279 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 280 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 281 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 282 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 283 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 284 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 285 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 286 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 287 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 288 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 289 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 290 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 291 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 292 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 293 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 294 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 295 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 296 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 297 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 298 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 299 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 300 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 301 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 302 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 303 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 304 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 305 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 306 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 307 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 308 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 309 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 310 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 311 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 312 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 313 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 314 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 315 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 316 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 317 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 318 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 319 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 320 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 321 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 322 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 323 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 324 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 325 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 326 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 327 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 328 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 329 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 330 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 331 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 332 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 333 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 334 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 335 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 336 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 337 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 338 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 339 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 340 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 341 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 342 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 343 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 344 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 345 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 346 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 347 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 348 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 349 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 350 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 351 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 352 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 353 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 354 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 355 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 356 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 357 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 358 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 359 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 360 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 361 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 362 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 363 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 364 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 365 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 366 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 367 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 368 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 369 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 370 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 371 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 372 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 373 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 374 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 375 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 376 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 377 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 378 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 379 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 380 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 381 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 382 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 383 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 384 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 385 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 386 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 387 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 388 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 389 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 390 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 391 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 392 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 393 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 394 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 395 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 396 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 397 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 398 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 399 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 400 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 401 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 402 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 403 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 404 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 405 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 406 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 407 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 408 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 409 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 410 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 411 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 412 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 413 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 414 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 415 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 416 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 417 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 418 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 419 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 420 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 421 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 422 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 423 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 424 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 425 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 426 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 427 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 428 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 429 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 430 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 431 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 432 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 433 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 434 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 435 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 436 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 437 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 438 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 439 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 440 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 441 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 442 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 443 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 444 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 445 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
