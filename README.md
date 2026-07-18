# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-07-18.md)

*最后自动更新时间: 2026-07-18 20:32:11*
## 1. TP-Link Kasa摄像头通过未认证UDP泄露家庭GPS信息长达6年

**原文标题**: TP-Link Kasa cameras leaked home GPS via unauthenticated UDP for 6 years

**原文链接**: [https://github.com/BadChemical/IoT-Vulnerability-Research-Public/blob/main/TP-Link_Kasa_EC71/Kasa_EC71.md](https://github.com/BadChemical/IoT-Vulnerability-Research-Public/blob/main/TP-Link_Kasa_EC71/Kasa_EC71.md)

**概要：** 本文详述了TP-Link Kasa Spot EC71摄像头（固件v2.3.26）中的严重漏洞，该漏洞在暴露六年后，已于v2.4.1版本中修复（CVE-2026-9770和CVE-2026-13230）。

**发现一：** 两个硬编码的、适用于全产品线的RSA私钥（1024位和一个活跃的2048位密钥）可从SPI闪存中提取，从而可能对所有设备实施中间人攻击。

**发现二：** 用户的TP-Link ID凭据以未加盐的MD5哈希形式（电子邮件明文存储）保存在两个分区中。这些哈希极易破解，能够实现对整个TP-Link生态系统（Tapo智能锁、Deco路由器、VIGI摄像头）的跨域账户接管。

**发现三（CVE-2026-13230）：** 单个未认证的UDP数据包（端口9999）即可返回精确的GPS坐标（自账户创建时存储）、硬件标识符和设备别名，且仅受一个简单的XOR密码保护，无需任何身份验证。

**关键背景：** 该未认证协议自2016年起便已存在文档记录。自2020年8月起，通过相同方法泄露Kasa摄像头GPS位置的问题已为公众所知，但TP-Link直到一名研究人员演示了该漏洞及一条二手市场攻击路径（从恢复出厂设置的设备中恢复原所有者的凭据和GPS信息）后，才予以修复。披露过程包括一台被变砖的测试设备以及有据可查的供应商分类失败案例。该研究人员对TP-Link的中等严重等级评分（5.3）提出异议，指出其违反了CCPA隐私规定，并存在泄露精确家庭位置的风险。

---

## 2. 英国选手乔什·克尔打破尘封27年的一英里世界纪录

**原文标题**: British runner Josh Kerr breaks world record for mile which stood for 27 years

**原文链接**: [https://news.sky.com/story/british-runner-josh-kerr-breaks-world-record-for-mile-which-had-stood-for-27-years-13564688](https://news.sky.com/story/british-runner-josh-kerr-breaks-world-record-for-mile-which-had-stood-for-27-years-13564688)

**摘要：**

英国中长跑运动员乔什·科尔在纽约米罗斯运动会上以3分47.02秒的成绩打破室内一英里世界纪录。这一成绩打破了肯尼亚选手诺亚·恩吉尼在1999年创造的3分48.45秒、尘封27年的原纪录。作为1500米项目卫冕世界冠军，科尔全程配速完美，在最后冲刺阶段超越卫冕冠军尼尔·古利。他将此次成就称为"一项了不起的世界纪录"，并为其稳定性和训练成果感到自豪。该纪录有待官方认证。

---

## 3. 学习关于运行SQLite的几个要点

**原文标题**: Learning a few things about running SQLite

**原文链接**: [https://jvns.ca/blog/2026/07/17/learning-about-running-sqlite/](https://jvns.ca/blog/2026/07/17/learning-about-running-sqlite/)

本文分享了在生产环境中将SQLite用作Django网站数据库时获得的实用经验，特别是当数据库因ORM而复杂度增加时。

**关键要点包括：**

1. **ANALYZE对性能至关重要。** 对4000行数据执行全文搜索查询时，运行`ANALYZE`后耗时从5秒降至0.05秒。该命令为查询计划器生成统计信息，避免低效甚至可能是二次方的查询计划。

2. **受限于单写入者机制，数据库清理颇具挑战。** 删除大量数据（如已完成任务）时，长时间运行的事务可能导致其他工作者超时（如5秒超时）并崩溃。作者现在采用分批清理而非一次执行大型慢操作。

3. **ORM查询适用于小型数据库。** 当数据量约1万行且无增长预期时，Django的ORM表现足够（除了ANALYZE问题外）。

4. **备份策略包括restic和Litestream。** Restic使用`VACUUM INTO`和gzip压缩，但备份有时会因内存溢出被终止。Litestream提供增量复制功能，支持可配置保留期（如400小时），两者均备份至AWS S3。

5. **可同时使用多个SQLite数据库。** 在之前的项目中，当不需要跨表查询时，作者将表拆分至独立数据库文件，从而优化了组织结构和性能。

文章强调SQLite适用于小型站点，但需关注查询规划、事务管理和备份方法。

---

## 4. 孕期使用对乙酰氨基酚与不良妊娠结局无关联

**原文标题**: No link between acetaminophen use during pregnancy and adverse birth outcomes

**原文链接**: [https://sph.unc.edu/sph-news/no-link-between-acetaminophen-use-during-pregnancy-and-adverse-birth-outcomes-study-finds/](https://sph.unc.edu/sph-news/no-link-between-acetaminophen-use-during-pregnancy-and-adverse-birth-outcomes-study-finds/)

**摘要：**

北卡罗来纳大学吉林斯全球公共卫生学院的一项大规模研究发现，孕期使用对乙酰氨基酚（泰诺）与早产、低出生体重或死产等不良分娩结局之间没有关联。这项发表在《美国医学会杂志网络开放版》上的研究分析了丹麦和瑞典超过240万例妊娠数据。

研究考虑了混杂因素，包括服用止痛药（如发烧或感染）的潜在医学原因，而此前的研究未能完全解决这些问题。比较使用与未使用对乙酰氨基酚的妊娠时，初始数据显示风险略有增加。然而，在根据促使其使用的状况（如母体发烧、疼痛或炎症）进行调整后，这种关联消失了。

研究人员得出结论，先前观察到的风险增加很可能源于潜在的健康问题（如感染或慢性疼痛），而非药物本身。这些发现为孕妇和医疗保健提供者提供了强有力的保证，即短期使用对乙酰氨基酚治疗获批适应症，似乎不会增加主要分娩结局的风险。不过，该研究未评估神经发育风险，而此前研究一直将其作为一个独立的关注领域。

---

## 5. 瓦尔迪：一处静谧的写作与阅读之所

**原文标题**: Waldi: A quiet place to write, and to be read

**原文链接**: [https://github.com/waaldev/waldi](https://github.com/waaldev/waldi)

Waldi是一个博客平台，其设计确保每篇发布内容在算法介入影响可见性之前，至少能触达100位读者。每位注册用户每天都会在收件箱中随机收到一位陌生人的"野卡"文章，以此促进意外发现而非算法推荐。

该平台架构以PostgreSQL为核心数据存储，采用Cloudflare R2进行对象存储，并通过Caddy管理TLS/自定义域名。文章内容基于Tiptap文档模型并实施服务端验证。前端设计极简：手工编写的CSS、服务端渲染的模板，以及通过esbuild打包的TypeScript编辑器。

所有管理功能均通过Telegram机器人实现，取代了传统的网页管理面板。后台任务以CLI命令形式通过cron调度运行，负责每日野卡选取、读者摘要推送及每周数据统计。平台采用MIT许可证允许自行部署，但针对主站waldi.blog实例进行了优化，因为保障阅读量需要活跃的读者基础。国际化采用扁平JSON语言包机制，通过用户偏好、Cookie或IP地理定位实现每次请求的语言检测。

当前处于开发阶段，平台路线图计划将启发式野卡选取机制替换为基于关注率与完成率的正式评分系统。

---

## 6. In-toto：保障软件供应链完整性的框架

**原文标题**: In-toto: A framework to secure the integrity of software supply chains

**原文链接**: [https://in-toto.io/](https://in-toto.io/)

**In-toto 概要**

In-toto 是一个已完成 CNCF 毕业的框架，旨在保护软件供应链从初始开发阶段到最终用户安装的完整性。其主要目标是通过向用户清晰展示供应链中执行了哪些步骤、由谁执行以及以何种顺序执行，来提高透明度。

该框架基于一个开放、可扩展的元数据标准构建，组织可将其应用于自身的供应链中。它通过 Apache 许可的库和工具提供丰富的功能支持，便于实际且即时地使用。此外，In-toto 还提供多种集成方案，并已被多个组织采用，展现了其在保障软件完整性方面的实际适用性与灵活性。

---

## 7. Show HN: 宜家复杂度指数

**原文标题**: Show HN: IKEA Complexity Index

**原文链接**: [https://ikea.greg.technology/](https://ikea.greg.technology/)

**《"Show HN：宜家复杂指数"摘要》**

该项目推出一个量化宜家家具组装难度的网站，通过提取宜家官网提供的单页PDF组装说明书数据，为每款产品生成"复杂指数"。

该指数可能评估的因素包括：步骤数量、零件数量、图解数量及说明书整体篇幅。用户界面支持浏览所有家具品类、筛选结果并按组装难度排序查看产品。该工具旨在帮助消费者在购买前预估组装所需的时间与精力，从而影响购买决策或提前做好准备（例如为复杂产品预留更多时间，或直接避免购买此类产品）。

关键信息：该指数仅依据官方PDF手册，反映的是文件记录的组装流程而非用户体验。它覆盖宜家所有品类，并聚焦于"单PDF产品"（即仅含一份说明书的商品，不含多文档组合套装）。当前网站显示"加载中…"，表明其处于现场演示或原型阶段。总体而言，该工具提供了一种数据驱动、客观中立的组装难度评估方式，填补了宜家自身产品页面未涉及的信息空白。

---

## 8. 我开始了“一本泥土笔记”

**原文标题**: I started a “dirt notebook”

**原文链接**: [https://pinewind.bearblog.dev/i-started-a-dirt-notebook/](https://pinewind.bearblog.dev/i-started-a-dirt-notebook/)

作者描述了一个个人困境：因过度珍视笔记本，导致笔记过于整洁、结构分明，反而提高了动笔门槛，陷入不断更换新本子的循环。为打破僵局，他们制作了绰号“排水渠”的“污损笔记本”——专供未经筛选的杂乱思绪。作者刻意选用纸页粗糙、洇墨严重的老旧笔记本，强迫自己使用廉价圆珠笔，且本子无法平摊，杜绝整齐书写的可能。使用一周后，作者畅快记录了零散引文、故事灵感、生活备忘及学习笔记，毫无框架束缚。目标是要填满这本笔记并接纳凌乱，待习惯养成后再换回优质纸张和钢笔。本文旨在反思如何克服笔记中的完美主义倾向。

---

## 9. 静态搜索树：比二分查找快40倍（2024）

**原文标题**: Static search trees: 40x faster than binary search (2024)

**原文链接**: [https://curiouscoding.nl/posts/static-search-tree/](https://curiouscoding.nl/posts/static-search-tree/)

本文详细介绍了静态搜索树（S+树）的优化方法，用于对已排序的32位无符号整数进行高吞吐量搜索，其性能相比标准二分查找最高可提升40倍。

作者首先对二分查找和Eytzinger布局进行了基准测试，指出虽然Eytzinger布局在大数据集上速度提升约4倍（得益于预取机制），但这两种方法每64字节缓存行仅使用一个值，效率低下。关键创新在于将搜索树的多个层级存储到单个缓存行中，具体采用15个值（代表4个树层级）打包到一行，分支因子为16。

这种方法（即S树，与B+树密切相关）使得CPU每次获取缓存行时能执行多次搜索迭代，而非仅一次，从而显著提升内存带宽利用率。除基本布局外，文章还探讨了多种优化技术，包括：

- **自动向量化**与**手动SIMD**以加速节点搜索
- **批量处理**查询以提高吞吐量
- **预取**与指针运算优化
- 多种**内存布局**（左树、紧凑子树、重叠树）
- **前缀分区**以处理非均匀数据分布

作者还讨论了实际应用中的注意事项，例如使用2MB巨页以减少TLB压力，以及锁定CPU频率以保证基准测试一致性。最终优化后的S树实现中，针对大数据集的查询响应时间约为每个30纳秒，而输入规模为1GB时二分查找需1150纳秒，吞吐量提升约40倍。

---

## 10. 重新审视Yliluoma有序抖动算法

**原文标题**: Revisiting Yliluoma's ordered dither algorithm

**原文链接**: [https://30fps.net/pages/revisiting-yliluoma-2/](https://30fps.net/pages/revisiting-yliluoma-2/)

**摘要：**

本文重新探讨了Yliluoma的彩色图像有序抖动算法，并将其与Photoshop中使用的Thomas Knoll方法进行了对比。

文章以使用拜耳矩阵进行1位单色抖动为基础，随后通过向图像添加结构化噪声（偏移）并选取最接近的调色板颜色，扩展至彩色抖动。这种简单的“灰度偏移”方法虽然可行，但会导致色彩饱和度降低。

文章核心内容介绍了N候选项方法，即对每个像素的多个调色板颜色进行加权计算。**Knoll算法**通过迭代方式寻找最近的调色板颜色，然后向反方向移动目标点以补偿其误差，并重复此过程。候选权重根据访问频率确定，最终输出由阈值矩阵选取。

**Yliluoma第二算法（#2）**同样使用N候选项，但采用指数移动平均（EMA）。在每次迭代中，它测试当前均值与每个调色板颜色之间的线段，找到最接近输入颜色的点。产生该最近点的混合因子 \(t\) 决定了候选项及其权重。文章给出了 \(t\) 的解析解法（替代缓慢的参数扫描），并指出设置0.2的最小限值可改善效果。

关键发现：通过在抖动前对图像进行去饱和/增亮处理（使用亮度加权），可简化色差公式。文章提供了源代码并对比了结果，显示Yliluoma-2算法在概念上优雅的同时，能产生与Knoll算法相媲美的质量。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 2 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 3 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 4 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 5 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 6 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 7 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 8 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 9 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 10 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 11 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 12 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 13 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 14 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 15 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 16 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 17 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 18 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 19 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 20 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 21 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 22 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 23 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 24 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 25 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 26 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 27 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 28 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 29 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 30 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 31 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 32 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 33 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 34 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 35 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 36 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 37 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 38 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 39 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 40 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 41 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 42 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 43 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 44 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 45 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 46 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 47 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 48 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 49 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 50 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 51 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 52 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 53 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 54 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 55 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 56 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 57 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 58 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 59 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 60 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 61 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 62 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 63 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 64 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 65 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 66 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 67 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 68 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 69 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 70 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 71 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 72 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 73 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 74 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 75 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 76 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 77 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 78 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 79 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 80 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 81 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 82 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 83 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 84 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 85 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 86 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 87 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 88 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 89 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 90 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 91 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 92 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 93 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 94 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 95 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 96 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 97 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 98 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 99 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 100 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 101 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 102 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 103 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 104 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 105 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 106 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 107 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 108 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 109 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 110 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 111 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 112 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 113 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 114 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 115 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 116 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 117 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 118 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 119 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 120 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 121 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 122 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 123 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 124 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 125 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 126 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 127 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 128 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 129 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 130 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 131 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 132 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 133 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 134 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 135 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 136 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 137 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 138 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 139 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 140 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 141 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 142 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 143 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 144 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 145 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 146 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 147 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 148 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 149 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 150 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 151 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 152 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 153 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 154 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 155 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 156 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 157 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 158 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 159 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 160 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 161 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 162 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 163 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 164 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 165 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 166 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 167 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 168 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 169 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 170 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 171 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 172 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 173 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 174 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 175 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 176 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 177 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 178 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 179 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 180 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 181 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 182 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 183 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 184 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 185 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 186 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 187 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 188 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 189 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 190 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 191 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 192 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 193 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 194 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 195 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 196 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 197 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 198 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 199 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 200 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 201 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 202 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 203 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 204 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 205 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 206 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 207 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 208 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 209 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 210 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 211 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 212 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 213 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 214 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 215 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 216 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 217 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 218 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 219 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 220 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 221 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 222 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 223 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 224 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 225 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 226 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 227 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 228 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 229 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 230 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 231 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 232 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 233 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 234 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 235 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 236 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 237 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 238 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 239 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 240 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 241 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 242 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 243 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 244 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 245 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 246 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 247 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 248 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 249 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 250 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 251 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 252 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 253 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 254 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 255 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 256 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 257 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 258 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 259 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 260 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 261 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 262 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 263 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 264 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 265 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 266 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 267 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 268 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 269 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 270 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 271 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 272 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 273 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 274 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 275 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 276 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 277 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 278 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 279 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 280 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 281 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 282 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 283 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 284 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 285 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 286 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 287 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 288 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 289 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 290 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 291 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 292 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 293 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 294 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 295 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 296 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 297 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 298 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 299 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 300 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 301 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 302 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 303 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 304 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 305 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 306 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 307 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 308 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 309 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 310 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 311 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 312 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 313 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 314 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 315 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 316 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 317 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 318 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 319 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 320 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 321 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 322 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 323 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 324 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 325 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 326 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 327 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 328 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 329 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 330 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 331 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 332 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 333 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 334 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 335 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 336 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 337 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 338 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 339 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 340 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 341 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 342 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 343 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 344 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 345 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 346 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 347 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 348 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 349 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 350 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 351 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 352 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 353 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 354 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 355 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 356 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 357 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 358 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 359 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 360 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 361 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 362 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 363 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 364 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 365 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 366 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 367 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 368 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 369 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 370 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 371 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 372 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 373 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 374 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 375 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 376 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 377 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 378 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 379 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 380 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 381 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 382 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 383 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 384 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 385 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 386 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 387 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 388 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 389 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 390 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 391 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 392 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 393 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 394 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 395 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 396 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 397 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 398 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 399 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 400 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 401 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 402 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 403 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 404 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 405 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 406 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 407 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 408 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 409 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 410 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 411 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 412 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 413 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 414 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 415 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 416 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 417 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 418 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 419 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 420 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 421 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 422 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 423 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 424 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 425 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 426 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 427 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 428 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 429 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 430 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 431 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 432 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 433 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 434 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 435 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 436 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 437 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 438 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 439 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 440 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 441 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 442 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 443 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 444 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 445 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 446 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 447 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 448 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 449 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 450 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 451 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 452 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 453 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 454 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 455 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 456 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 457 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 458 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 459 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 460 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 461 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 462 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 463 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 464 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 465 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 466 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 467 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 468 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 469 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 470 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 471 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 472 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 473 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 474 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 475 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 476 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 477 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 478 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 479 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 480 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 481 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
