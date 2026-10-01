# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-10-02.md)

*最后自动更新时间: 2026-10-02 04:56:12*
## 1. Pi 1.0 正式发布

**原文标题**: Pi 1.0

**原文链接**: [https://earendil.com/posts/pi-1-0/](https://earendil.com/posts/pi-1-0/)

Earendil公司正式发布Pi 1.0——一款加固、最小化且可扩展的AI智能体框架，全球已有数十万用户每周使用。Pi坚持极简设计哲学，不追逐每周更迭的agentic工具潮流，只在功能经受充分验证后方才纳入，以维持核心简洁。本次1.0版本新增多项功能：Codemode（原生支持MCP协议及非LLM模型如Jev、图像模型）、虚拟模型扩展、延迟工具加载、Anthropic模型缓存预热、对话中途动态系统消息、新TUI主题及默认全屏模式。与此同时，Earendil推出实验性新包Pi Durable，定位为面向长时运行智能体应用的新基础层，将Pi的极简与高度可塑原则延伸至编码和终端之外的场景，支持更持久的对话与任务，使用户能更灵活地操控底层智能。Pi 1.0与Pi Durable均采用MIT开源协议，现已提供跨平台一键安装脚本，文档见pi.dev，代码托管于GitHub。

---

## 2. Clef：开源决策模型与全新强化学习微调平台

**原文标题**: Clef: Open-source decision models, and new RL fine-tuning platform

**原文链接**: [https://blog.cloudflare.com/clef-decision-models/](https://blog.cloudflare.com/clef-decision-models/)

Cloudflare正式发布两款自研决策模型Clef和Clef-flash，托管于Workers AI平台，并以Apache 2.0协议在Hugging Face开源。决策模型可针对特定输入快速输出有界结构化结果（含概率），适用于智能体工作流中的自动决策场景，如工单分类、威胁检测等。Clef的核心优势包括：配备视觉编码器支持图像分类；64k上下文窗口；采用基于Qwen的非自回归推理架构，跳过逐词生成直接输出概率评分，速度显著优于Jev等竞品；与Jev API完全兼容，可无缝替换。性能方面，Clef在Jev决策指数等多项基准测试中领先，Clef-flash中位延迟仅约39毫秒。文章还介绍了新推出的强化学习（RL）微调服务，客户可通过Cloudflare AI Gateway捕获流量数据、Workers AI生成训练样本、Containers提供RL沙箱，最终实现Clef模型的定制微调与重新部署。Cloudflare已内部将该模型应用于安全团队域名分类、支持工单分流等场景，并计划从前期FDE团队人工协助逐步过渡为面向客户的自助式微调平台。

---

## 3. 永别了，向量数据库

**原文标题**: RIP, vector database

**原文链接**: [https://turbopuffer.com/blog/rip-vector-database](https://turbopuffer.com/blog/rip-vector-database)

turbopuffer 宣布推进 v3 架构升级，彻底告别以 ANN 向量索引为主索引的设计，ANN 将降级为普通二级索引。回顾其演进：v1 以分层聚类（SP Fresh）将文档按向量聚簇存储，仅含 ID 与向量；v2 增加属性过滤与 BM25 全文检索，但存储架构未变，一切仍围绕 ANN 地址展开。该设计已支撑百十亿级向量检索，但也带来三大瓶颈：一是存储放大——多向量场景下文档需为每个向量重复存储；二是写放大——SP Fresh 重平衡聚簇时，整份文档及倒排索引均被搬迁，索引吞吐量触及天花板；三是向量化受限——所有查询计划的块大小被 ANN 聚簇规模（100–200）锁死，无法利用更大块提升 CPU 吞吐与 SIMD 效率。v3 的核心改动即不再将 ANN 地址主键化，从而为 GROUP BY、聚合等 SQL 查询扫清障碍。目前 v3 已实现 100% CI 通过，团队进入性能调优阶段，将在达到性能持平后逐步上线生产环境。turbopuffer 当前承载超 10 万亿文档、每秒 1000 万写入，此次重构旨在为其承载更通用、更高性能的查询负载奠定基础。

---

## 4. 水下缺氧区或并非"死亡区"，而是生命起源的重要线索

**原文标题**: Oxygen-deprived underwater zones may not be "dead zones" but clue to early life

**原文链接**: [https://agupubs.onlinelibrary.wiley.com/doi/10.1029/2026AV002570](https://agupubs.onlinelibrary.wiley.com/doi/10.1029/2026AV002570)

无法访问该文章链接。

---

## 5. StreetComplete 现已在 iOS 平台进入公测阶段

**原文标题**: StreetComplete on iOS is now in public beta

**原文链接**: [https://github.com/streetcomplete/StreetComplete/issues/5421](https://github.com/streetcomplete/StreetComplete/issues/5421)

StreetComplete 项目的 iOS 移植主协调 issue（#5421）正式宣布进入公测阶段。该 issue 替代了早期的 #1892，集中管理 iOS 版本的开发工作。技术路线上，采用 Kotlin Multiplatform 实现跨平台，UI 层使用 Compose Multiplatform（基于 Jetpack Compose），可在最大化复用现有 Kotlin 代码库的同时，将平台相关代码降至最低，避免像 Flutter 方案那样需要以 Dart 重写全部逻辑。开发分两步：先将应用逻辑与 Android 依赖解耦、替换为 Kotlin 多平台依赖；再逐步将 Android XML 布局迁移至 Compose Multiplatform。作者预计完整移植约需一个人年工作量，2024 上半年已全职推进，目前迁移完成度约 50%。项目面向社区开放贡献，鼓励开发者从项目看板中认领任务、学习 Jetpack Compose 等相关技术，或通过赞助、issue 清理等方式支持开发。项目托管于 GitHub，拥有约 4900 颗星、458 个 fork，标签标记为"仅涉及 iOS"。

---

## 6. Bez：基于规范与测试的浏览器引擎自动生成

**原文标题**: Bez: Generating a browser engine from specs and tests

**原文链接**: [https://tangled.org/burrito.space/bez](https://tangled.org/burrito.space/bez)

Bez 是一个从 Web 规范与测试自动生成浏览器渲染引擎的项目，旨在打破仅少数公司能自建引擎的高门槛。其核心流程为：AI 模型依据规范文本生成候选实现，在引擎内运行后与 Chromium、Firefox、WebKit 三大引擎及 WPT 测试交叉验证，一致则提交为 Rust 代码。项目追求完整可裁剪、低资源占用、易嵌入、快速更新四大目标。当前进展：HTML、JavaScript、SVG、WebAssembly 等模块已完全覆盖；CSS 领域已生成九条布局规则并通过全部 227 个测试用例；整体平台约 93% 处于"仅参照"阶段。关键发现：三浏览器在 699/705 次比较中结果一致，并定位到 Firefox 因像素舍入精度差异（1/60 与 1/64）引发的真实兼容性缺陷；WPT 投票一致率达 94.8%；Datalog 逻辑编程在边距合并等场景表现优异；约 55–60% 的引擎相关规范条目已具备自动生成条件。

---

## 7. 第十六届 RacketCon：周六启幕

**原文标题**: RacketCon Is Saturday

**原文链接**: [https://con.racket-lang.org/](https://con.racket-lang.org/)

第十六届RacketCon将于2026年10月3日至4日在加州奥克兰举办，是面向Racket编程语言社区的公开会议，欢迎所有感兴趣者参加。注册现已开放，9月13日前可享早鸟折扣，并同步提供直播及YouTube录像。周六议程包括：图灵奖得主Pat Hanrahan谈Notation；Fred Fu展示结合发生类型与代数子类型的类型推断系统；Lucas Myers介绍面向底层高性能的Rhombus衍生语言Pille；Mike Delmonaco的Treason项目——让宏可扩展语言中的IDE服务在错误状态下仍可工作；Pavel Panchekha讲解Herbie浮点精度优化编译器；JJ讨论effect handlers库cio的设计；Ryan Culpepper发布BrandX接口与泛型面向对象库。周日包括Sam Phillips的不可变数据框Uke、Matthew Flatt发布的新外函数接口ffi2、Sam Tobin-Hochstadt的Racket现状报告及Racket社区大会。会议实行友好环境政策，由志愿者团队组织，当晚另设社交晚宴。

---

## 8. 2026版iPod

**原文标题**: iPod of 2026

**原文链接**: [https://sudo.music/](https://sudo.music/)

Sudo是一款以"为聆听而生"为理念、定位"2026年iPod"的专用便携音乐播放器。产品支持离线与流媒体双模式，内置64GB存储并可通过microSD扩展至1TB；配备2.73英寸320×320触控屏与物理触控滚轮，同时保留3.5mm耳机孔与蓝牙连接，续航超20小时，机身仅103.5×58.6×8.5mm，采用USB-C充电。用户支付50美元可退押金即可抢占首批名额，该押金将抵扣最终售价（预计249美元），且下单前可自由确认配色与收货信息，设备预计2027年第四季度初发货。首发覆盖美国、加拿大、英国、澳大利亚及新西兰，其余地区用户可加入候补名单。整体设计回归纯粹听音乐的体验，兼顾复古手感与现代功能。

---

## 9. Cloudflare K2：无服务器事件流

**原文标题**: Cloudflare K2: serverless event streams

**原文链接**: [https://blog.cloudflare.com/cloudflare-k2-streams/](https://blog.cloudflare.com/cloudflare-k2-streams/)

Cloudflare 正式发布 K2 公开测试版，这是一款无服务器持久事件流服务，解决传统RPC架构中生产者与消费者在规模和时序上必须对齐的痛点，使多个消费者能独立、异步地消费同一数据流。K2底层基于R2对象存储构建分区持久日志，借助R2的11个9持久性和强一致性，实现计算与存储分离及低成本海量数据留存；由于对象存储不支持追加写入，K2采用内存批量累积后写入段文件的方式，99分位生产延迟约1秒。消费侧支持两种模式：通过订阅将数据分片实现并行消费，或通过多订阅实现发布/订阅式全量分发；每次消费获得5分钟租约，支持确认、否定和延期操作。K2与Queues（侧重单任务异步处理）和Basin Pipelines（侧重写入对象存储/Iceberg）定位不同，面向高吞吐、长保留、扇出消费场景。公测期间免费，限额为10GB存储、30MB/s写入；未来定价为生产和消费各$0.04/GB、保留$0.02/GB/月。路线图涵盖多GB/s写入、消息键排序、推送式消费者及Kafka客户端透明兼容。

---

## 10. 多个项目发现ESP32微控制器的隐藏SDR功能

**原文标题**: Various Projects Find Hidden SDR Capabilities in ESP32 Microcontrollers

**原文链接**: [https://www.rtl-sdr.com/various-projects-independently-find-hidden-sdr-capabilities-in-esp32-microcontrollers/](https://www.rtl-sdr.com/various-projects-independently-find-hidden-sdr-capabilities-in-esp32-microcontrollers/)

摘要：近期，ESPARGOS团队发现ESP32芯片存在未公开的底层功能，可绕过固定WiFi/蓝牙协议直接采集原始IQ基带数据，使多种ESP32型号具备软件定义无线电（SDR）能力，覆盖2.2–2.7 GHz，ESP32-C5另支持4.8–6.0 GHz，采样率最高80 MS/s。受限于带宽，普通ESP32仅能以快照方式向PC导出数据，用作频谱分析；新发布的ESP32-S31则可通过千兆以太网实现16 MS/s连续流式传输。凭借相干IQ采集，ESPARGOS相控阵已能从仅处理WiFi信号扩展至2.4 GHz频段任意信号的方向查找。与此同时，Reddit用户h0m3us3r独立发现相同特性，并搭建ESP32-S3搭配FPGA的USB3前端原型，可实现连续IQ数据流传输，有望解决时钟相位噪声后成为媲美RTL-SDR的宽频通用SDR。另一项目C5VRX则利用ESP32-C5的类似未文档化IQ通路，将5.8 GHz FPV视频信号在片上解调并经简易电阻DAC输出模拟复合视频。上述发现表明，ESP32系列在低成本、宽频段无线感知领域具有巨大潜力。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 2 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 3 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 4 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 5 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 6 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 7 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 8 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 9 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 10 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 11 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 12 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 13 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 14 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 15 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 16 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 17 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 18 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 19 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 20 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 21 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 22 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 23 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 24 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 25 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 26 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 27 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 28 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 29 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 30 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 31 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 32 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 33 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 34 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 35 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 36 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 37 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 38 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 39 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 40 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 41 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 42 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 43 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 44 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 45 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 46 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 47 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 48 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 49 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 50 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 51 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 52 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 53 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 54 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 55 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 56 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 57 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 58 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 59 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 60 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 61 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 62 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 63 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 64 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 65 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 66 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 67 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 68 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 69 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 70 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 71 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 72 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 73 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 74 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 75 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 76 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 77 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 78 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 79 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 80 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 81 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 82 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 83 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 84 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 85 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 86 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 87 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 88 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 89 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 90 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 91 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 92 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 93 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 94 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 95 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 96 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 97 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 98 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 99 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 100 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 101 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 102 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 103 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 104 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 105 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 106 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 107 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 108 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 109 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 110 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 111 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 112 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 113 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 114 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 115 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 116 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 117 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 118 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 119 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 120 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 121 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 122 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 123 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 124 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 125 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 126 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 127 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 128 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 129 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 130 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 131 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 132 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 133 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 134 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 135 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 136 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 137 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 138 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 139 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 140 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 141 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 142 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 143 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 144 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 145 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 146 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 147 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 148 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 149 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 150 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 151 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 152 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 153 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 154 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 155 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 156 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 157 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 158 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 159 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 160 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 161 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 162 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 163 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 164 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 165 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 166 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 167 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 168 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 169 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 170 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 171 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 172 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 173 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 174 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 175 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 176 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 177 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 178 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 179 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 180 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 181 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 182 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 183 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 184 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 185 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 186 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 187 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 188 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 189 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 190 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 191 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 192 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 193 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 194 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 195 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 196 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 197 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 198 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 199 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 200 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 201 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 202 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 203 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 204 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 205 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 206 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 207 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 208 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 209 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 210 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 211 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 212 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 213 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 214 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 215 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 216 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 217 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 218 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 219 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 220 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 221 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 222 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 223 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 224 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 225 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 226 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 227 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 228 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 229 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 230 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 231 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 232 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 233 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 234 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 235 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 236 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 237 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 238 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 239 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 240 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 241 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 242 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 243 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 244 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 245 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 246 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 247 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 248 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 249 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 250 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 251 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 252 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 253 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 254 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 255 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 256 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 257 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 258 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 259 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 260 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 261 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 262 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 263 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 264 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 265 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 266 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 267 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 268 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 269 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 270 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 271 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 272 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 273 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 274 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 275 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 276 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 277 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 278 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 279 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 280 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 281 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 282 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 283 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 284 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 285 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 286 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 287 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 288 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 289 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 290 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 291 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 292 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 293 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 294 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 295 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 296 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 297 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 298 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 299 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 300 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 301 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 302 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 303 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 304 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 305 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 306 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 307 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 308 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 309 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 310 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 311 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 312 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 313 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 314 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 315 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 316 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 317 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 318 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 319 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 320 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 321 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 322 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 323 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 324 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 325 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 326 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 327 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 328 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 329 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 330 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 331 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 332 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 333 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 334 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 335 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 336 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 337 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 338 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 339 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 340 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 341 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 342 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 343 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 344 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 345 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 346 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 347 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 348 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 349 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 350 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 351 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 352 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 353 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 354 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 355 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 356 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 357 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 358 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 359 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 360 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 361 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 362 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 363 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 364 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 365 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 366 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 367 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 368 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 369 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 370 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 371 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 372 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 373 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 374 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 375 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 376 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 377 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 378 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 379 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 380 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 381 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 382 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 383 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 384 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 385 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 386 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 387 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 388 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 389 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 390 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 391 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 392 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 393 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 394 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 395 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 396 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 397 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 398 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 399 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 400 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 401 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 402 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 403 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 404 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 405 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 406 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 407 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 408 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 409 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 410 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 411 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 412 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 413 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 414 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 415 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 416 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 417 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 418 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 419 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 420 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 421 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 422 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 423 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 424 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 425 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 426 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 427 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 428 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 429 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 430 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 431 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 432 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 433 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 434 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 435 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 436 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 437 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 438 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 439 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 440 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 441 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 442 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 443 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 444 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 445 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 446 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 447 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 448 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 449 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 450 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 451 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 452 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 453 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 454 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 455 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 456 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 457 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 458 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 459 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 460 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 461 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 462 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 463 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 464 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 465 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 466 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 467 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 468 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 469 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 470 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 471 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 472 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 473 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 474 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 475 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 476 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 477 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 478 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 479 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 480 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 481 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 482 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 483 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 484 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 485 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 486 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 487 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 488 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 489 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 490 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 491 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 492 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 493 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 494 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 495 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 496 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 497 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 498 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 499 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 500 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 501 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 502 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 503 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 504 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 505 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 506 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 507 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 508 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 509 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 510 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 511 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 512 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 513 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 514 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 515 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 516 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 517 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 518 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 519 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 520 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 521 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 522 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 523 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 524 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 525 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 526 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 527 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 528 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 529 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 530 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 531 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 532 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 533 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 534 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 535 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 536 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 537 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 538 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 539 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 540 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 541 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 542 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 543 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 544 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 545 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 546 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 547 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 548 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 549 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 550 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 551 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 552 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 553 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 554 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 555 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 556 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 557 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
