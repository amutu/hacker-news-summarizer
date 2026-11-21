# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-22.md)

*最后自动更新时间: 2026-11-22 04:53:50*
## 1. 5.4 GB 内存下的 Inkling-2-Mini

**原文标题**: Inkling-2-Mini in 5.4 GB Memory

**原文链接**: [https://github.com/ShinMegamiBoson/lookatmyquant](https://github.com/ShinMegamiBoson/lookatmyquant)

LookAtMyQuant 是一款量化编译器，通过逐部件测量压缩损伤并选取最优编码，使模型在给定体积预算内精度损失最小。核心成果：将 26.4B 物理/5.4B 活跃 3×-looped MoE 模型 Inkling-2-Mini 从 18.89 GB 压至 5.38 GB（1.63 bit/权重）与 8.87 GB（2.69 bit/权重），采用 4 KB SRAM 哈希块向量 trellis 码、行 trellis 码及 SQYFR 近端微调。5.38 GB 版在 GSM8K 与 HumanEval 上均超越 Unsloth 9.14 GB 方案；8.87 GB 版 GSM8K 匹配原始 BF16 精度，英文/对话/代码 KL 降低 2.34 倍。此外，Qwen3.5-4B 压至 1.23 GB，Qwen3.8-27B 压至 7.2 GB 且 540 道数学题全部答对。技术路径包括 Fisher 信息逐行比特分配、数字 token 10 倍权重校准、trellis 码后训练量化及 4000 步蒸馏（约 34 美元 GPU 时）。项目提供 Apple Silicon 原生运行时（Metal 内核、FlashAttention-2、投机解码），5.4 GB 版在 M5 Max 上解码达 124 tok/s。代码以 MIT 协议开源，支持 lamq 命令行与 Python 集成。

---

## 2. 黎曼假设的Lean形式化验证

**原文标题**: Lean verification of the Riemann Hypothesis

**原文链接**: [https://leanprover-community.github.io/blog/posts/riemann-hypothesis/](https://leanprover-community.github.io/blog/posts/riemann-hypothesis/)

2026年11月20日，Levent Alpöge发布了黎曼假设的Lean形式化证明，代码库共1700万行。Lean与Mathlib社区联合声明，经全面验证后确认该证明正确。验证依据涵盖四项标准：第一，代码库仅依赖Mathlib，黎曼假设的陈述已作为其正式组成部分，经数论与Lean领域专家审核；第二，数十名开发者独立编译该代码库，结果完全一致；第三，社区借助comparator与con-leche两个独立工具，确认Alpöge所证定理与Mathlib中黎曼假设陈述精确吻合；第四，导出的原始证明经Lean官方内核、con-leche、con-ron及多个第三方独立检查器验证，其中后两者在集合论语义下具有形式化证明保证不会接受错误证明，从而排除了Lean逻辑本身存在缺陷的可能性。所有验证均在惰性导出文件上执行，以隔绝源代码中潜在的恶意代码。声明感谢了社区各方提供的资源支持，并期待数学界进一步阐释该证明中的核心新思想。

---

## 3. 胰腺癌口服新药被誉为"数十年来最大突破"

**原文标题**: Pill to treat pancreatic cancer hailed as 'biggest breakthrough in decades'

**原文链接**: [https://www.theguardian.com/society/2026/nov/20/pill-pancreatic-cancer-breakthrough-daraxonrasib](https://www.theguardian.com/society/2026/nov/20/pill-pancreatic-cancer-breakthrough-daraxonrasib)

一种名为daraxonrasib的KRAS抑制剂口服药在胰腺癌治疗中展现出革命性效果，被誉为"数十年来最大突破"。在针对61名晚期胰腺癌患者的临床试验中，90%患者肿瘤停止生长，超60%肿瘤缩小或消失，约8%患者肿瘤在CT扫描上完全无法检测。一年后76.6%患者存活，远超传统化疗40%至45%的一年存活率。中位随访18个月，期间部分患者未见癌症复发。胰腺癌是全球存活率最低的常见癌症之一，五年存活率仅约3%。该药通过关闭驱动肿瘤生长的KRAS基因突变发挥作用，纽约纪念斯隆·凯特琳癌症中心朴允基博士称这是"最接近治愈"的结果。英国癌症研究组织首席执行官称这是"数十年来最大进展"，并指出该疗法有望拓展至其他携带KRAS突变的癌症。但医生强调目前不能将其视为治愈手段，仍需更多长期研究以评估疗效及在NHS中的应用。

---

## 4. 引爆一堆叠氮化铅

**原文标题**: Detonating a pile of lead azide

**原文链接**: [https://www.science.org/content/blog-post/detonating-huge-pile-lead-azide-really](https://www.science.org/content/blog-post/detonating-huge-pile-lead-azide-really)

无法访问该文章链接

---

## 5. 巴西联邦税务局以MIT协议将税收计算器开源至GitHub

**原文标题**: Brazil's tax authority open-sources its tax calculator on GitHub under MIT

**原文链接**: [https://www.gov.br/receitafederal/pt-br/assuntos/noticias/2026/novembro/receita-federal-publica-primeiro-codigo-fonte-aberto-no-github-e-amplia-transparencia-da-reforma-tributaria](https://www.gov.br/receitafederal/pt-br/assuntos/noticias/2026/novembro/receita-federal-publica-primeiro-codigo-fonte-aberto-no-github-e-amplia-transparencia-da-reforma-tributaria)

2026年11月12日，巴西联邦税务局依据Cotec第342号法令，首次将"税收计算器"源代码以MIT许可证开源至GitHub，这是该机构首次在公共协作开发平台上发布软件项目。该计算器是消费税改革中CBS等税种计算规则的官方实现工具，此次开源涵盖一般制度、简易全国制度及DAFSE生成器三个代码仓库。此举旨在提升税改落地的透明度、法律确定性与可预见性，使企业及软件供应商能够直接采用官方计算逻辑，嵌入自身的开票、管理和合规系统，从而减少合规成本与争议。项目由联邦税务局与巴西国家信息处理服务公司（Serpro）联合开发，契合经合组织所倡导的"税收管理3.0"理念，即税收合规直接嵌入纳税人业务系统。该法令还记录了各版本代码的哈希值，以保障代码的完整性与真实性。此举并非替代企业现有系统，而是为市场提供一个可审计、可互操作的官方组件，推动税制转型的标准化与统一实施。

---

## 6. 用 Go 语言构建 PostgreSQL 扩展

**原文标题**: PostgreSQL Extensions in Go

**原文链接**: [https://jespino.github.io/gopgext/](https://jespino.github.io/gopgext/)

gopgext 是一个实验性项目，基于 TinyGo 让开发者用纯 Go 代码构建 PostgreSQL 扩展。只需为函数添加 //gopgext:function 注释，即可自动生成 C 胶水代码、安装脚本和控制文件，将 Go 函数转为 SQL 函数。项目支持 Go 标准库、泛型与迭代器，Go 类型可映射为字符串、数字、数组、NULL、JSON、UUID 等 SQL 类型，亦支持自定义类型。功能上涵盖 SPI 查询、SQLSTATE 错误码、触发器、聚合函数、GiST/GIN 等索引操作类及外部数据包装器。安全性方面，PostgreSQL 错误不会穿透 Go 栈帧，结果数据复制至 PostgreSQL 内存，多个扩展可安全共存。项目已通过 pgcrypto、hstore、pg_stat_statements 等 contrib 模块回归测试验证。目前仍为实验阶段，不建议用于生产环境。其技术路线与用 Go 构建 Linux 内核模块的 gokm 一致，均采用定制 TinyGo 目标与宿主构建系统生成胶水代码的方案。

---

## 7. 我的显示器让我的下载速度损失了75%

**原文标题**: My monitor was cutting my download speed by 75%

**原文链接**: [https://blog.tymscar.com/posts/studiodisplayethernet/](https://blog.tymscar.com/posts/studiodisplayethernet/)

作者拥有2.5Gbps对称宽带，下载却仅600Mbps，上传正常。排查发现瓶颈在于通过苹果Studio Display XDR显示器连接UGREEN USB-C转2.5G以太网适配器（Realtek RTL8156B芯片）。该适配器经显示器USB集线器回传数据时，每次突发仅发送4个1KB包，叠加等待Mac确认的延迟（约7.6微秒）与发送耗时（约8.2微秒），有效速率上限仅约2Gbps，超出即丢包，造成下载严重受限；上传方向因数据流不同而不受影响。作者尝试Realtek官方驱动和开启以太网流控（PAUSE帧）可部分提速，但流控会引入游戏延迟等副作用。最终解决方案是换用基于RTL8157芯片的UGREEN 5G适配器：该芯片每次突发8个包且USB速率翻倍，有效传输上限提升至约4.5Gbps，远超2.5G输入带宽，彻底消除丢包。文章揭示了实际传输速度不仅取决于链路标称速率，还受突发包数、包大小、USB确认延迟等多重因素共同制约，值得深入探究。

---

## 8. Hurried Announcement: Alessandro Masullo GRH

**原文标题**: Hurried Announcement: Alessandro Masullo GRH

**原文链接**: [https://math216.wordpress.com/2026/11/20/hurried-announcement-alessandro-masullo-grh/](https://math216.wordpress.com/2026/11/20/hurried-announcement-alessandro-masullo-grh/)

文章之前已经处理过

---

## 9. 热带雨林物种可能比想象中年轻得多

**原文标题**: Tropical Rainforests Species may be surprisingly young

**原文链接**: [https://phys.org/news/2026-11-species-tropical-rainforests-young-emergence.html](https://phys.org/news/2026-11-species-tropical-rainforests-young-emergence.html)

无法访问该文章链接

---

## 10. Lean证明黎曼假设的验证文件

**原文标题**: Verification files for the Lean proof of the Riemann Hypothesis

**原文链接**: [https://math.mit.edu/~drew/grh/](https://math.mit.edu/~drew/grh/)

2026年11月20日，MIT的Andrew Sutherland（借助Claude Code协助）发布了Lean 4对黎曼假设形式化证明的全面验证报告。证明含五项核心定理，涵盖黎曼ζ函数零点、Dirichlet L函数零点及广义黎曼假设，均基于Mathlib标准定义。验证结果：全部175,187个模块在Lean v4.33.1下零错误编译；五项定理仅依赖propext、Classical.choice、Quot.sound三条标准公理；证明经nanoda（独立Rust内核）与con-leche（独立Lean内核）等多个独立内核完整接受，con-leche对比模式确认五项定理与挑战赛陈述一致。此外，该证明与独立的罗宾/拉加里阿斯不等式形式化结合后，导出了关于除数函数和的两个数论推论。报告提供完整导出文件（约7.7 GB）及自查步骤，并指出构建目录路径会影响编译文件哈希值等注意事项。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-22](output/hacker_news_summary_2026-11-22.md) |
| 2 | [2026-11-21](output/hacker_news_summary_2026-11-21.md) |
| 3 | [2026-11-20](output/hacker_news_summary_2026-11-20.md) |
| 4 | [2026-11-19](output/hacker_news_summary_2026-11-19.md) |
| 5 | [2026-11-18](output/hacker_news_summary_2026-11-18.md) |
| 6 | [2026-11-17](output/hacker_news_summary_2026-11-17.md) |
| 7 | [2026-11-16](output/hacker_news_summary_2026-11-16.md) |
| 8 | [2026-11-15](output/hacker_news_summary_2026-11-15.md) |
| 9 | [2026-11-14](output/hacker_news_summary_2026-11-14.md) |
| 10 | [2026-11-13](output/hacker_news_summary_2026-11-13.md) |
| 11 | [2026-11-12](output/hacker_news_summary_2026-11-12.md) |
| 12 | [2026-11-11](output/hacker_news_summary_2026-11-11.md) |
| 13 | [2026-11-10](output/hacker_news_summary_2026-11-10.md) |
| 14 | [2026-11-09](output/hacker_news_summary_2026-11-09.md) |
| 15 | [2026-11-08](output/hacker_news_summary_2026-11-08.md) |
| 16 | [2026-11-07](output/hacker_news_summary_2026-11-07.md) |
| 17 | [2026-11-06](output/hacker_news_summary_2026-11-06.md) |
| 18 | [2026-11-05](output/hacker_news_summary_2026-11-05.md) |
| 19 | [2026-11-04](output/hacker_news_summary_2026-11-04.md) |
| 20 | [2026-11-03](output/hacker_news_summary_2026-11-03.md) |
| 21 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 22 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 23 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 24 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 25 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 26 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 27 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 28 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 29 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 30 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 31 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 32 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 33 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 34 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 35 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 36 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 37 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 38 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 39 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 40 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 41 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 42 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 43 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 44 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 45 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 46 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 47 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 48 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 49 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 50 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 51 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 52 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 53 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 54 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 55 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 56 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 57 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 58 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 59 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 60 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 61 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 62 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 63 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 64 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 65 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 66 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 67 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 68 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 69 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 70 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 71 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 72 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 73 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 74 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 75 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 76 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 77 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 78 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 79 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 80 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 81 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 82 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 83 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 84 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 85 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 86 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 87 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 88 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 89 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 90 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 91 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 92 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 93 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 94 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 95 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 96 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 97 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 98 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 99 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 100 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 101 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 102 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 103 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 104 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 105 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 106 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 107 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 108 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 109 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 110 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 111 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 112 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 113 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 114 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 115 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 116 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 117 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 118 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 119 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 120 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 121 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 122 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 123 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 124 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 125 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 126 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 127 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 128 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 129 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 130 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 131 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 132 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 133 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 134 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 135 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 136 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 137 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 138 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 139 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 140 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 141 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 142 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 143 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 144 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 145 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 146 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 147 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 148 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 149 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 150 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 151 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 152 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 153 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 154 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 155 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 156 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 157 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 158 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 159 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 160 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 161 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 162 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 163 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 164 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 165 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 166 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 167 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 168 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 169 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 170 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 171 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 172 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 173 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 174 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 175 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 176 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 177 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 178 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 179 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 180 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 181 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 182 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 183 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 184 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 185 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 186 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 187 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 188 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 189 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 190 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 191 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 192 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 193 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 194 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 195 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 196 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 197 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 198 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 199 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 200 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 201 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 202 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 203 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 204 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 205 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 206 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 207 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 208 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 209 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 210 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 211 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 212 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 213 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 214 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 215 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 216 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 217 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 218 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 219 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 220 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 221 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 222 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 223 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 224 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 225 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 226 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 227 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 228 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 229 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 230 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 231 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 232 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 233 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 234 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 235 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 236 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 237 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 238 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 239 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 240 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 241 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 242 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 243 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 244 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 245 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 246 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 247 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 248 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 249 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 250 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 251 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 252 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 253 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 254 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 255 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 256 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 257 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 258 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 259 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 260 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 261 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 262 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 263 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 264 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 265 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 266 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 267 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 268 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 269 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 270 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 271 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 272 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 273 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 274 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 275 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 276 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 277 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 278 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 279 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 280 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 281 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 282 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 283 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 284 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 285 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 286 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 287 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 288 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 289 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 290 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 291 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 292 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 293 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 294 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 295 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 296 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 297 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 298 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 299 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 300 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 301 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 302 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 303 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 304 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 305 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 306 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 307 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 308 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 309 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 310 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 311 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 312 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 313 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 314 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 315 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 316 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 317 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 318 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 319 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 320 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 321 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 322 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 323 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 324 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 325 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 326 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 327 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 328 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 329 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 330 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 331 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 332 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 333 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 334 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 335 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 336 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 337 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 338 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 339 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 340 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 341 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 342 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 343 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 344 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 345 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 346 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 347 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 348 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 349 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 350 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 351 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 352 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 353 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 354 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 355 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 356 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 357 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 358 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 359 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 360 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 361 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 362 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 363 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 364 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 365 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 366 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 367 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 368 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 369 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 370 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 371 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 372 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 373 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 374 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 375 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 376 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 377 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 378 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 379 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 380 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 381 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 382 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 383 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 384 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 385 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 386 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 387 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 388 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 389 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 390 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 391 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 392 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 393 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 394 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 395 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 396 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 397 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 398 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 399 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 400 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 401 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 402 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 403 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 404 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 405 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 406 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 407 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 408 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 409 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 410 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 411 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 412 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 413 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 414 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 415 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 416 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 417 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 418 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 419 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 420 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 421 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 422 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 423 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 424 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 425 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 426 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 427 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 428 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 429 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 430 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 431 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 432 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 433 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 434 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 435 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 436 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 437 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 438 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 439 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 440 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 441 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 442 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 443 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 444 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 445 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 446 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 447 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 448 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 449 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 450 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 451 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 452 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 453 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 454 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 455 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 456 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 457 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 458 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 459 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 460 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 461 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 462 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 463 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 464 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 465 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 466 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 467 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 468 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 469 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 470 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 471 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 472 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 473 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 474 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 475 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 476 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 477 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 478 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 479 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 480 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 481 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 482 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 483 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 484 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 485 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 486 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 487 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 488 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 489 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 490 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 491 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 492 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 493 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 494 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 495 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 496 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 497 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 498 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 499 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 500 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 501 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 502 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 503 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 504 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 505 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 506 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 507 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 508 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 509 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 510 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 511 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 512 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 513 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 514 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 515 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 516 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 517 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 518 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 519 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 520 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 521 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 522 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 523 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 524 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 525 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 526 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 527 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 528 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 529 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 530 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 531 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 532 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 533 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 534 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 535 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 536 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 537 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 538 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 539 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 540 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 541 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 542 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 543 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 544 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 545 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 546 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 547 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 548 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 549 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 550 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 551 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 552 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 553 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 554 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 555 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 556 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 557 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 558 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 559 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 560 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 561 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 562 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 563 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 564 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 565 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 566 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 567 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 568 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 569 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 570 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 571 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 572 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 573 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 574 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 575 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 576 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 577 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 578 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 579 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 580 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 581 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 582 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 583 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 584 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 585 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 586 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 587 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 588 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 589 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 590 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 591 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 592 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 593 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 594 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 595 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 596 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 597 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 598 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 599 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 600 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 601 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 602 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 603 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 604 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 605 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 606 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 607 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 608 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
