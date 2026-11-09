# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-10.md)

*最后自动更新时间: 2026-11-10 04:57:09*
## 1. 加拿大实时支付系统RTR正式上线

**原文标题**: Payments Canada announces launch of Canada's Real-Time Rail (RTR) payment system

**原文链接**: [https://www.payments.ca/canada-launches-real-time-rail-bringing-247-payment-infrastructure-national-economy](https://www.payments.ca/canada-launches-real-time-rail-bringing-247-payment-infrastructure-national-economy)

2026年11月9日，加拿大支付协会（Payments Canada）宣布加拿大实时支付系统（RTR）正式上线，为国民提供24/7全天候支付基础设施。该系统支持金融机构、信用合作社及支付服务商通过现有渠道实时清算和结算，采用ISO 20022数据消息标准。加拿大由此成为G7中首个部署强制集中欺诈防控的实时支付国家，涵盖付款人确认、风险评分及欺诈情报平台等多层防护。C.D. Howe研究所预测，RTR将带来145亿美元成本节约，产生160亿美元经济效益，未来可扩展至270亿美元。首批参与者包括Wealthsimple、Questrade、KOHO、加拿大银行等，系统由CGI、德勤、IBM及Interac联合交付。财政部长Champagne与央行行长Macklem均表态支持。RTR计划一年内覆盖超九成加拿大人，60%的加拿大企业已具备采用意愿，被视为推动数字经济增长与支付主权的关键基石。

---

## 2. Claude Fable 5.2 与 Mythos 5.2 发布

**原文标题**: Claude Fable 5.2 and Mythos 5.2

**原文链接**: [https://www.anthropic.com/claude-fable-and-mythos-5-2](https://www.anthropic.com/claude-fable-and-mythos-5-2)

Anthropic 发布 Claude Fable 5.2 与 Mythos 5.2，两款模型共享同一底层架构，专为高难度技术任务设计。Fable 内置网络安全与生物安全防护，面向所有用户开放；Mythos 则通过专项审核向相关研究机构提供无限制访问。性能方面，新模型在编码、推理、视觉等能力上全面超越 Opus 5.5，生成速度提升 30%，价格降至每百万输入令牌 8 美元、输出 40 美元，并提供 2.5 倍加速的快速模式。应用成果涵盖：Python 转 Rust 大规模迁移（启动提速 26 倍）、从零设计可启动的原型操作系统、设计三台电子硬件设备、推进黑洞物理与机器人评估等。基准测试中，Fable 5.2 在 FrontierCode 2.0（49.1%）、WANDR（82.1%）、人类终极考试（74.2%）等任务上均创最高纪录，且以更低成本达到或超过竞品最优表现。网络安全领域，Mythos 5.2 的 CVE 漏洞发现能力领先前代 14.4%。安全方面，Anthropic 完成大规模预发布测试，新增沙箱逃逸等专项评估，并部署了迄今最强蒸馏攻击防护。Vercel、Shopify、Datadog、Unity 等企业用户反馈显示，新模型在工程判断力与自主任务完成方面表现卓越。

---

## 3. USPS 现提供官方邮政编码边界多边形数据

**原文标题**: USPS now offers official ZIP Code boundary polygons

**原文链接**: [https://postalpro.usps.com/zcb](https://postalpro.usps.com/zcb)

美国邮政署（USPS）正式推出官方邮政编码（ZIP Code）边界多边形数据，该数据基于其投递地址与位置信息构建，作为全国级邮政编码地图，确保边界准确性，并随投递点的新设或变更而动态更新。数据可服务于地图、邮寄、营销、保险、房地产、物流、导航及交通等行业，主要应用场景包括：作为边界基准供用户整合或修正现有数据；作为组织与展示人口统计数据的支撑工具；作为投递区域分组的代理以优化配送路线。USPS 提供三种版本——内部版、企业版（限子公司及合作伙伴）和出版版（限有限范围发布），均每季度更新四次。配套资源涵盖边界简报、技术指南、Shapefile 及 GeoJSON 格式样本文件、许可协议和订购表单等，便于用户评估与采购。

---

## 4. Muse Ember：我们最小、最高效的模型

**原文标题**: Our Smallest, Most Efficient Model: Muse Ember

**原文链接**: [https://research.meta.ai/blog/muse-ember](https://research.meta.ai/blog/muse-ember)

Meta发布Muse Ember，定位为其最小、最高效的AI模型，专为代理高频重复任务设计，涵盖工具调用、编码子任务、路由、信息提取及长文档解析。在Artificial Analysis排行榜上，Muse Ember以约三分之一的成本达到Claude Haiku 5.5最佳分数，并全面超越GPT-6 Luna各推理档位，稳居效率前沿。性能方面，该模型在Agents' Last Exam（61.6%）、Terminal-Bench 4.0（40.9%）、OSWorld 2.1（69.5%）、PerceptionBench（80.6%）等基准中均取得领先或并列最优成绩。Muse Ember原生支持文本、图像、音频、视频多模态输入，具备1M token上下文窗口与512K输出能力。定价为每百万输入token 0.10美元、输出token 0.50美元，每任务成本仅约0.14美元，适合大规模部署。Box、Cline、Oracle、Cloudflare、You.com等合作伙伴在早期测试中肯定了其在合同审查、代码生成、多仓库调查等场景中的速度、精度与成本优势。Muse Ember是Muse Wonder Full训练的首个专用模型，与Muse Wonder（前沿难题）、Muse Spark（编码与代理工作流）共同构成Meta完整模型矩阵。安全评估显示其低于高风险阈值，并具备用户意图遵从与敏感信息处理能力。Meta表示更多高效模型正在训练中。

---

## 5. CUI – 面向C语言的原生UI组件库

**原文标题**: CUI – Native UI components for C

**原文链接**: [https://yappologistic.github.io/CUI/](https://yappologistic.github.io/CUI/)

无法访问该文章链接

---

## 6. e-means：以同等损失实现10倍加速的k-means算法

**原文标题**: E-means: 10x faster k-means at equal loss

**原文链接**: [https://e-means.github.io/](https://e-means.github.io/)

摘要：本文提出e-means，一种面向k-means聚类的现代优化方法。k-means是机器学习中少数仍广泛使用全批次优化的问题，e-means以指数移动平均（EMA）小批次更新替代Lloyd算法的全批次迭代，在GPU上实现10–45倍、CPU上8–15倍墙钟加速，且测试损失更优。其核心组件包括：基于EMA的质心更新使旧分配按速率α衰减；通过缩放定律自动确定批大小与步长，无需人工调参；余弦调度渐进降低学习率；以分裂大簇方式复活死簇，避免码本容量损失；以及专用GPU融合内核将算法优势转化为实际加速。Lloyd算法本质上是e-means在α=1、全批次下的特例。小批次引入的噪声更新使e-means更易逃离局部最优，在多个玩具数据集上陷入病态配置的概率从Lloyd的15%–46%降至0%–3.5%。在24个嵌入与合成数据集、234种配置的实验中，e-means仅需1.2–3个epoch即达到Lloyd 25个epoch的精度。代码已集成于Faiss库。

---

## 7. 英飞凌以300毫米功率碳化硅晶圆达成创新里程碑

**原文标题**: Infineon marks innovation milestone with 300mm power silicon carbide wafer

**原文链接**: [https://www.infineon.com/press-release/2026/infpr202611-028](https://www.infineon.com/press-release/2026/infpr202611-028)

2026年11月9日，英飞凌宣布在奥地利Villach工厂成功将300毫米碳化硅（SiC）晶圆加工为功能性功率器件，成为全球首家在量产级晶圆厂中实现这一突破的企业，且利用了现有硅制造设备。300毫米晶圆相比200毫米晶圆每片可多生产2.3倍芯片，制造效率显著提升。英飞凌CEO Hanebeck表示，此举进一步巩固了公司在功率半导体领域的领导地位，英飞凌已掌握硅、氮化镓和碳化硅三种材料的300毫米技术。该成果为汽车、可再生能源、工业及AI数据中心等领域的SiC器件提供高效、安全且可持续的供应保障。同时，英飞凌在德累斯顿工厂成功验证了Cold Split技术对300毫米SiC晶圆的可行性，可大幅减少材料损耗并缩短加工时间。公司表示未来将与客户及合作伙伴共同规划300毫米SiC技术的产业化路径，同时持续推进200毫米SiC制造路线图。英飞凌将于11月10日在慕尼黑electronica展会上首次公开展示该300毫米SiC晶圆。

---

## 8. DeepX 宣称其芯片可在不足 5 瓦功耗下推理千亿参数模型

**原文标题**: DeepX claims inference up to 100B parameters at less than 5 W

**原文链接**: [https://www.eetimes.com/deepx-tapes-out-second-gen-chip-projects-6-7x-performance-gain-with-lpddr5x-pim/](https://www.eetimes.com/deepx-tapes-out-second-gen-chip-projects-6-7x-performance-gain-with-lpddr5x-pim/)

摘要：DeepX 已完成第二代 AI 推理芯片的流片，该芯片采用 LPDDR5x 存内计算（PIM, Processing-In-Memory）架构，旨在将计算单元直接集成于内存之中，大幅减少数据搬运开销。据公司方面介绍，新一代芯片相较前代可实现约 6 至 7 倍的性能提升，同时功耗控制在 5 瓦以下，即可支撑最高 1000 亿（100B）参数规模的大模型推理任务。这一指标对于边缘端及低功耗场景意义重大，意味着无需依赖高功耗数据中心 GPU，便能在终端设备或小型服务器中运行超大规模语言模型。LPDDR5x 的高带宽与低延迟特性配合 PIM 设计，是 DeepX 实现高能效比的核心技术路径。该芯片面向端侧 AI 推理、物联网及移动设备等对功耗敏感的应用场景，有望推动大模型从云端向边缘侧的普及。

---

## 9. 折叠传奇纸飞机

**原文标题**: Fold Epic Paper Airplanes

**原文链接**: [https://www.foldableflight.com](https://www.foldableflight.com)

本网站是集纸飞机设计与教程于一体的平台，收录109款独家设计方案，用户可在线学习折叠或购买相关产品。平台提供完善的筛选功能，支持按难度（从"非常容易"至"专家级"）、飞机类型（飞镖、滑翔机、混合型、喷气式、特技型及设计师款）、设计师和纸张类型进行检索。每款飞机均标注速度、滑翔力与精确度评分，涵盖高速冲刺、长时滑翔、回旋特技等多元风格。其中包含多项世界纪录设计，如滞空31.2秒的"Unite"、飞行超300英尺的"Firefly 5"原型，以及飞行距离超180英尺的"Quill"等。知名设计师Kyle Boyer、Evan Brus、Michael LaFosse等均有佳作收录。设计兼具美观与性能，如螺旋飞行的"X-01 Missile"、回旋镖式"The Swifter"、3D锁扣结构的"Trifecta"等，满足各水平折纸爱好者的需求。

---

## 10. 品红色太阳能板或成农光互补领域最巧妙的突破

**原文标题**: Magenta solar panels may be agrivoltaics' cleverest trick yet

**原文链接**: [https://www.anthropocenemagazine.org/2026/10/magenta-solar-panels-may-be-agrivoltaics-cleverest-trick-yet/](https://www.anthropocenemagazine.org/2026/10/magenta-solar-panels-may-be-agrivoltaics-cleverest-trick-yet/)

摘要：品红色太阳能板有望成为农光互补（农业与光伏发电结合）技术中最具创新性的一环，通过优化光谱吸收提升光伏效率的同时兼顾农作物生长需求。此外，研究团队还展示了一项"污水三合一"技术：新型微生物燃料电池利用污水中的细菌，在产生电能的同时高效降解难以去除的抗生素残留物，并副产家用消毒剂过氧化氢，集发电、废水处理与化学品生产于一体，为可持续能源与环保领域提供了全新思路。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-10](output/hacker_news_summary_2026-11-10.md) |
| 2 | [2026-11-09](output/hacker_news_summary_2026-11-09.md) |
| 3 | [2026-11-08](output/hacker_news_summary_2026-11-08.md) |
| 4 | [2026-11-07](output/hacker_news_summary_2026-11-07.md) |
| 5 | [2026-11-06](output/hacker_news_summary_2026-11-06.md) |
| 6 | [2026-11-05](output/hacker_news_summary_2026-11-05.md) |
| 7 | [2026-11-04](output/hacker_news_summary_2026-11-04.md) |
| 8 | [2026-11-03](output/hacker_news_summary_2026-11-03.md) |
| 9 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 10 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 11 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 12 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 13 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 14 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 15 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 16 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 17 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 18 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 19 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 20 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 21 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 22 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 23 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 24 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 25 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 26 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 27 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 28 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 29 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 30 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 31 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 32 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 33 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 34 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 35 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 36 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 37 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 38 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 39 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 40 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 41 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 42 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 43 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 44 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 45 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 46 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 47 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 48 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 49 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 50 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 51 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 52 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 53 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 54 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 55 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 56 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 57 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 58 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 59 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 60 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 61 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 62 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 63 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 64 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 65 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 66 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 67 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 68 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 69 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 70 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 71 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 72 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 73 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 74 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 75 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 76 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 77 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 78 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 79 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 80 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 81 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 82 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 83 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 84 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 85 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 86 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 87 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 88 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 89 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 90 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 91 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 92 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 93 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 94 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 95 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 96 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 97 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 98 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 99 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 100 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 101 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 102 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 103 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 104 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 105 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 106 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 107 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 108 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 109 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 110 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 111 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 112 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 113 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 114 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 115 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 116 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 117 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 118 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 119 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 120 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 121 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 122 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 123 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 124 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 125 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 126 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 127 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 128 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 129 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 130 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 131 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 132 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 133 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 134 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 135 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 136 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 137 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 138 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 139 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 140 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 141 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 142 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 143 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 144 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 145 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 146 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 147 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 148 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 149 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 150 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 151 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 152 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 153 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 154 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 155 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 156 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 157 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 158 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 159 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 160 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 161 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 162 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 163 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 164 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 165 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 166 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 167 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 168 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 169 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 170 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 171 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 172 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 173 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 174 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 175 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 176 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 177 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 178 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 179 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 180 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 181 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 182 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 183 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 184 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 185 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 186 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 187 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 188 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 189 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 190 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 191 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 192 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 193 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 194 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 195 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 196 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 197 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 198 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 199 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 200 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 201 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 202 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 203 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 204 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 205 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 206 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 207 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 208 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 209 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 210 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 211 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 212 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 213 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 214 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 215 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 216 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 217 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 218 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 219 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 220 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 221 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 222 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 223 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 224 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 225 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 226 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 227 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 228 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 229 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 230 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 231 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 232 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 233 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 234 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 235 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 236 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 237 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 238 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 239 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 240 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 241 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 242 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 243 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 244 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 245 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 246 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 247 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 248 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 249 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 250 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 251 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 252 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 253 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 254 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 255 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 256 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 257 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 258 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 259 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 260 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 261 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 262 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 263 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 264 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 265 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 266 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 267 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 268 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 269 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 270 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 271 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 272 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 273 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 274 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 275 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 276 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 277 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 278 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 279 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 280 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 281 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 282 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 283 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 284 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 285 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 286 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 287 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 288 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 289 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 290 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 291 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 292 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 293 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 294 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 295 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 296 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 297 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 298 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 299 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 300 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 301 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 302 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 303 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 304 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 305 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 306 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 307 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 308 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 309 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 310 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 311 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 312 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 313 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 314 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 315 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 316 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 317 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 318 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 319 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 320 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 321 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 322 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 323 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 324 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 325 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 326 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 327 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 328 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 329 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 330 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 331 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 332 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 333 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 334 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 335 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 336 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 337 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 338 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 339 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 340 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 341 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 342 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 343 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 344 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 345 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 346 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 347 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 348 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 349 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 350 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 351 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 352 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 353 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 354 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 355 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 356 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 357 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 358 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 359 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 360 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 361 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 362 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 363 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 364 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 365 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 366 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 367 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 368 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 369 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 370 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 371 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 372 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 373 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 374 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 375 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 376 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 377 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 378 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 379 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 380 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 381 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 382 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 383 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 384 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 385 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 386 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 387 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 388 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 389 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 390 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 391 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 392 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 393 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 394 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 395 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 396 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 397 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 398 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 399 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 400 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 401 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 402 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 403 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 404 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 405 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 406 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 407 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 408 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 409 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 410 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 411 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 412 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 413 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 414 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 415 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 416 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 417 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 418 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 419 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 420 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 421 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 422 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 423 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 424 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 425 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 426 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 427 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 428 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 429 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 430 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 431 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 432 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 433 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 434 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 435 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 436 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 437 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 438 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 439 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 440 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 441 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 442 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 443 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 444 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 445 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 446 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 447 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 448 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 449 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 450 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 451 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 452 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 453 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 454 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 455 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 456 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 457 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 458 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 459 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 460 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 461 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 462 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 463 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 464 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 465 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 466 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 467 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 468 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 469 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 470 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 471 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 472 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 473 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 474 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 475 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 476 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 477 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 478 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 479 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 480 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 481 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 482 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 483 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 484 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 485 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 486 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 487 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 488 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 489 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 490 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 491 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 492 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 493 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 494 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 495 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 496 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 497 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 498 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 499 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 500 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 501 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 502 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 503 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 504 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 505 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 506 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 507 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 508 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 509 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 510 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 511 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 512 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 513 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 514 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 515 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 516 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 517 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 518 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 519 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 520 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 521 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 522 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 523 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 524 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 525 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 526 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 527 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 528 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 529 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 530 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 531 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 532 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 533 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 534 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 535 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 536 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 537 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 538 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 539 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 540 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 541 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 542 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 543 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 544 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 545 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 546 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 547 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 548 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 549 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 550 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 551 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 552 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 553 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 554 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 555 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 556 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 557 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 558 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 559 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 560 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 561 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 562 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 563 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 564 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 565 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 566 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 567 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 568 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 569 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 570 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 571 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 572 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 573 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 574 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 575 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 576 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 577 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 578 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 579 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 580 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 581 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 582 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 583 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 584 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 585 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 586 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 587 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 588 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 589 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 590 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 591 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 592 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 593 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 594 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 595 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 596 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
