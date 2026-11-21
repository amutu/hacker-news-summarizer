# Hacker News 热门文章摘要 (2026-11-22)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. Show HN：Zero C#——无需运行时与垃圾回收器的 C#

**原文标题**: Show HN: Zero C# – C# without a runtime or GC

**原文链接**: [https://onurgumus.github.io/zero-csharp/index.html](https://onurgumus.github.io/zero-csharp/index.html)

摘要：本项目是 bflat 的一个分支，可将 C# 代码直接编译为轻量原生程序，目标机器无需 .NET 运行时、无需垃圾回收器、无需安装任何依赖。项目保留 C# 15 的语法、类型检查、泛型、接口、记录、Lambda 等核心特性，内存管理改用竞技场（Arena）机制，按生命周期批量释放；字符串、集合等操作通过小型库在 Arena 上实现。编译产物极小：Hello World 在 Windows 仅 11KB、Linux 仅 40KB。同一份源码可编译运行于 Linux（x64/arm64）、macOS（Apple Silicon）、Windows x64、WebAssembly（WASI）及 DOS 386 共五个目标平台，由同一测试套件验证输出一致。与常规 C# 的主要取舍为：无 GC（改用 Arena）、无运行时、异常改为返回联合类型、无反射与 async。项目附有从安装到交互式小程序的完整教程，涵盖 DOS 运行、输入输出、错误处理及 Arena 使用等主题，并提供任务指南与完整类型参考文档。

---

## 12. Inkling 2 Mini

**原文标题**: Inkling 2 Mini

**原文链接**: [https://thinkingmachines.ai/news/inkling-2-mini/](https://thinkingmachines.ai/news/inkling-2-mini/)

文章之前已经处理过

---

## 13. 我对自己的艺术网站技术架构颇为满意

**原文标题**: I'm quite pleased by the tech architecture of my art website

**原文链接**: [https://klauria.tech/klauria-art/](https://klauria.tech/klauria-art/)

作者身为程序员兼画家，希望将画作与速写分享给亲友，遂搭建个人艺术网站。核心矛盾在于：内容极少变动（日均不足0.3幅画），理应做纯静态站点；但增删作品需要直观的CRUD管理界面，又引入了动态需求。最终方案巧妙兼顾两者：所有HTML页面由Cloudflare Worker服务端渲染，但附带30天缓存头交由CDN长期缓存；每次增改作品时直接失效全部缓存页面，而非精确追踪依赖关系——作者认为局部失效易引入正确性缺陷，全量失效虽粗暴却可靠。图片在上传时由浏览器预生成多尺寸缩略图，与原图一并存入Cloudflare R2；全部元数据集中存于单一JSON文件，地图、时间线等交互组件仅读取该文件做前端展示，不回写服务器。技术上选用Astro框架，但核心并不依赖框架本身，关键在于缓存管理。整体方案近乎零成本、加载极快，对基础设施资源也足够友好。

---

## 14. GnuPG远程代码执行漏洞

**原文标题**: RCE in Gnupg

**原文链接**: [https://lists.gnupg.org/pipermail/gnupg-announce/2026q4/000517.html](https://lists.gnupg.org/pipermail/gnupg-announce/2026q4/000517.html)

摘要：2026年11月20日，GnuPG团队发布安全公告，披露GPGME组件中的严重漏洞（CVE-2026-129975，内部编号T8557），并同步发布修复版本GPGME 2.3.1。该漏洞由Johan Carlsson发现，经GitLab于11月12日通报，因Ruby2Shell漏洞需提前披露，最终于11月20日公开。漏洞根因在于GPGME内部读取状态行和密钥列表的函数在调用realloc进行内存重分配时，若因读取错误等原因提前返回，上下文对象中的指针未同步更新，仍指向已释放内存，最终导致双重释放（double free）。攻击者可通过构造包含超长用户ID的OpenPGP密钥触发该漏洞，进而窃取应用程序数据，且不能完全排除远程代码执行（RCE）的风险。所有使用GPGME 2.3.0之前版本的软件均受影响，包括Gpg4win、GnuPG Desktop、GnuPG VS-Desktop、主流邮件与XMPP客户端、Samba及Flatpak等。修复方案为将GPGME升级至2.3.1版本，Gpg4win 5.1.2等衍生产品亦已同步更新；无法升级者可应用官方补丁。无需更新GPGMEPP或GPGMEQT。

---

## 15. 以心驭身，以身驭己

**原文标题**: Getting the mind to steer the body to steer you

**原文链接**: [https://notnottalmud.substack.com/p/getting-the-mind-to-steer-the-body](https://notnottalmud.substack.com/p/getting-the-mind-to-steer-the-body)

文章探讨了"以心驭身"的深层原理：很多时候，理性说服或单纯靠意志力无法改变身体状态，我们需要找到身体能理解的"魔法语言"来引导它。作者列举了多个例证：Allen Carr的戒烟书之所以灵验，是因为它教会人们驯服"渴望"本身而非对抗吸烟——作者12岁时便独立推理出这一原理，后用于戒除糖瘾并成功。Scott Alexander推荐PTSD患者阅读《身体从未忘记》，患者虽未实践书中任何技巧，仅凭阅读便康复。John Sarno的《治愈背痛》亦然——疼痛源于"不适→关注→紧张→更痛"的心理循环，一旦相信身体并无结构性损伤，循环即被打破。作者自身也有切身体会：用计时器强迫自己"扫描身体感受"反而能快速入睡，但计时器必须真实运转；想象身体如气球充气，则能瞬间化解压力与沉重感。文章最终指出，身体不听从逻辑与事实，却响应特定的"咒语"与仪式；无论是艺术、仪式还是某种特定方式，我们往往需要通过身体能接收的通道，才能抵达仅凭意志永远无法触及的目标。

---

## 16. How I made a custom game engine for Satelital

**原文标题**: How I made a custom game engine for Satelital

**原文链接**: [https://spectralorbit.com/blog/satelital_game_engine](https://spectralorbit.com/blog/satelital_game_engine)

文章之前已经处理过

---

## 17. Why there are still no non-WebKit browsers on iOS

**原文标题**: Why there are still no non-WebKit browsers on iOS

**原文链接**: [https://blog.mozilla.org/en/mozilla/internet-policy/apple-ios-browser-engine-rules/](https://blog.mozilla.org/en/mozilla/internet-policy/apple-ios-browser-engine-rules/)

文章之前已经处理过

---

## 18. 确定性模拟测试，人人适用

**原文标题**: Deterministic Simulation Testing Is for Everyone

**原文链接**: [https://outdata.net/blog/261120](https://outdata.net/blog/261120)

作者主张确定性模拟测试（DST）并非分布式系统专属，而是适用于一切软件的测试技术。文章从测试目的（防止缺陷、消除疑虑、履行规范）与效用三维度（范围、确定性、彻底性）出发，对比端到端测试、单元测试、属性测试、黑盒模糊测试与DST，指出DST在三项指标上均全面领先。其核心在于将程序构建为确定性状态机，同时模拟外部环境（网络、IO、时间、存储等），以测试种子驱动，实现完全可复现；一次模拟即可压缩数年的运行时间，极大缩短发现缺陷的周期。作者以分布式数据库、Web应用、嵌入式系统为例，阐明凡含"环境"与"机器"的软件均可采用DST。最终，DST不依赖外部义务驱动，而是通过最大化确定性代码比例、主动放大环境中的异常与巧合，让开发者在开发阶段尽早、全面地暴露缺陷，从而消除疑虑、建立信心。

---

## 19. We promoted developers into architects without informing them

**原文标题**: We promoted developers into architects without informing them

**原文链接**: [https://manidoraisamy.com/developer-to-architect.html](https://manidoraisamy.com/developer-to-architect.html)

文章之前已经处理过

---

## 20. 终端中的 ASCII 细胞水族箱

**原文标题**: Show HN: An ASCII cell aquarium for your terminal

**原文链接**: [https://github.com/kborer/cells/](https://github.com/kborer/cells/)

本项目是一个运行在终端里的 ASCII 生物模拟程序，如同一张"活体显微镜载玻片"：免疫细胞追逐细菌，细胞有丝分裂，噬菌体偶发侵染，巨噬细胞、中性粒细胞、红细胞、微生物、真菌等共栖一屏，呈现吞噬、出芽、病毒复制等过程。灵感源自 cbonsai 与 asciiquarium，比例和节奏经过夸张化处理。程序基于 Python 3.10 与 curses，无第三方依赖，支持 Linux/macOS（Windows 用 WSL）。安装途径包括 pipx、Ubuntu PPA 及 Homebrew。终端建议 80×24 以上，支持暂停、调速、切换场景等快捷键，内置微生物、血液、屏保等多种模式，可切换明暗主题或纯 ASCII 字形。交互模式下可执行检查、裂解、喂食、搅拌等操作，键盘与鼠标均可操控。项目采用 0BSD 许可证，允许自由使用、修改与再分发，无署名要求，并欢迎生物学建议、截图分享及终端兼容性测试，无编程经验亦可参与贡献。

---

## 21. Upload2Shell（CVE-2026-125396）

**原文标题**: Upload2Shell · CVE-2026-125396

**原文链接**: [https://pwn.ai/upload2shell](https://pwn.ai/upload2shell)

该漏洞（CVE-2026-125396）影响Debian 13系统中CUPS打印服务及Ghostscript 10.05.1~dfsg-1+deb13u1版本，攻击者可利用完整网络攻击链，通过匿名方式以IPP协议向共享网络打印队列提交打印任务，最终在目标主机上以lp用户（uid=7）身份执行任意命令，实现从文件上传到Shell权限获取的远程利用。验证结果表明，远程攻击已成功复现一次，另有20/20组本地转换测试全部通过，证明该利用路径稳定可靠。目前PoC暂未公开发布。建议受影响用户尽快升级相关组件或限制打印队列的匿名访问权限。

---

## 22. Unforced Navier-Stokes Singularity and the Generalized Riemann Hypothesis

**原文标题**: Unforced Navier-Stokes Singularity and the Generalized Riemann Hypothesis

**原文链接**: [https://terrytao.wordpress.com/2026/11/20/unforced-euler-singularity-unforced-navier-stokes-singularity-and-the-generalized-riemann-hypothesis/](https://terrytao.wordpress.com/2026/11/20/unforced-euler-singularity-unforced-navier-stokes-singularity-and-the-generalized-riemann-hypothesis/)

文章之前已经处理过

---

## 23. 黄仁勋失势，硅谷加速主义者前景堪忧

**原文标题**: Jensen Huang's fall is bad news for Silicon Valley's accelerationists

**原文链接**: [https://www.economist.com/business/2026/11/19/jensen-huangs-fall-is-bad-news-for-silicon-valleys-accelerationists](https://www.economist.com/business/2026/11/19/jensen-huangs-fall-is-bad-news-for-silicon-valleys-accelerationists)

无法访问该文章链接。
</think>

标题：黄仁勋失势对硅谷加速主义者而言是不幸消息
无法访问该文章链接。

---

## 24. Levent Alpöge claims proof of the Generalized Riemann Hypothesis [pdf]

**原文标题**: Levent Alpöge claims proof of the Generalized Riemann Hypothesis [pdf]

**原文链接**: [https://alpo.ge/remark.pdf](https://alpo.ge/remark.pdf)

文章之前已经处理过

---

## 25. Bolt滑板车化身无障碍出行传感器

**原文标题**: Bolt's Scooters Are Becoming Accessibility Sensors

**原文链接**: [https://geoawesome.com/bolt-scooters-accessibility-mapping-wheels4wheels/](https://geoawesome.com/bolt-scooters-accessibility-mapping-wheels4wheels/)

摘要：爱沙尼亚出行公司Bolt在塔林开展"Wheels4Wheels"试点，将共享滑板车上已有的GPS、加速度计、陀螺仪和摄像头转化为移动地理空间传感器，用于检测路面破损、路缘过渡等影响轮椅及行动不便人群的无障碍要素。试点覆盖全部八个区约550公里，产出4050万条加速度计读数与6.6万次路面质量评估，结果以开放数据形式贡献至OpenStreetMap，可供市政、导航应用及无障碍服务调用。其核心价值在于将数千辆日常运营的商业车队转变为持续运行的城市观测网络，无需专门市政调查即可发现路面劣化。但挑战同样显著：振动信号难以区分破损路面、鹅卵石或骑手操作；覆盖受限于商业运营区域，易遗漏居民区与行人通道；每条数据需附带置信度并经轮椅使用者等终端用户验证。此外，滑板车自身乱停堵塞人行道与路缘坡道的矛盾也需同步解决。Bolt的被动感知可 complement Wheelmap、Project Sidewalk等既有平台，未来有望形成"遥测标记异常—影像分类—本地贡献者确认"的协作流程，将现有传感能力转化为可信赖、可导航、真正包容的无障碍地理空间基础设施。

---

## 26. 大模型可从十六进制转储逐字节读写可执行文件

**原文标题**: LLMs can read and write executables byte by byte from a hex dump

**原文链接**: [https://sgiannopoulos.github.io/blog/machine-code-programming/](https://sgiannopoulos.github.io/blog/machine-code-programming/)

摘要：本文提出"机器码编程"概念，验证大语言模型无需编译器、反汇编器或任何外部工具，仅凭十六进制转储即可直接读写可执行文件。以GPT-6.1 Sol为主力模型开展四项实验：（1）阅读——正确解析四个程序（含67KB的FreeBSD统计工具）的功能，甚至从裸字节中发现上游代码的真实缺陷；（2）扩展——通过原地编辑字节为三个程序各添加新功能，均通过全部测试；（3）创建——仅凭文字描述从零生成三个完整ELF64可执行文件；（4）应用——在211秒内准确分析一款真实恶意样本，正确识别其下载执行行为、硬编码服务器地址及XOR解密密钥，与沙箱动态分析结果吻合。开源模型DeepSeek V4.1 Flash亦得出相同结论，表明该能力并非闭源模型独有。主要限制在于上下文窗口：十六进制转储约2.4 token/字节，67KB文件已消耗约16万token，更大规模程序尚不可行。文章指出，若趋势延续，LLM或将直接在机器码空间编程，对逆向工程与恶意软件分析产生深远影响。

---

## 27. 苏联"电子学 BK-0010"：搭载 PDP-11 克隆芯片的家用电脑

**原文标题**: The Soviet Elektronika BK-0010 home computer built on a clone of the PDP-11 CPU

**原文链接**: [https://8bitarchitect.net/machines/elektronika-bk-0010/](https://8bitarchitect.net/machines/elektronika-bk-0010/)

1985年，苏联"电子学"联合体推出BK-0010，这是苏联唯一纳入国家计划生产的家用电脑。与西方以Z80、6502等8位芯片为主流不同，该机采用K1801VM1——一款PDP-11兼容的16位处理器（3MHz），具备真正的16位指令与寻址能力。内存共32KiB，其中16KiB为视频显存，程序员实际可用仅16KiB；操作系统为精简版RT-11（BK-11），内置FOCAL解释器，可选装维尔纽斯BASIC。售价600至650卢布，约为当时月均工资的4倍。主要缺陷包括伪薄膜键盘手感松软、电源稳压模块漂移导致内存不稳定。1989年推出升级版BK-0011（128KiB RAM、4MHz），另有学校版BK-0010Sh等变体，1985至1993年为主产期。进入21世纪，凭借硬件文档完善、结构清晰的优势，BK-0010在独联体演示编程（demo）社群中获得第二生命，爱好者仍能采购库存旧机并进行超越原设计的深度开发。

---

## 28. NINLIVE：九寸钉现场演出档案

**原文标题**: NINLIVE: The Nine Inch Nails live archive

**原文链接**: [https://ninlive.com/](https://ninlive.com/)

NINLIVE是一个由粉丝运营、与九寸钉乐队无官方关联的现场演出资料库，涵盖1988至2026年所有巡演与演出，收录逾1,210场演唱会、1,949份录音、4,675张影音资料及363首曲目，遍及46个国家、373座城市。网站最新上线流媒体播放功能，用户可通过Discord账号登录，收听并收藏任意时期的现场录音。资料覆盖从《Pretty Hate Machine》到"Peel It Back"巡演各阶段，亦包含Nine Inch Noize、HTDA、Trent & Atticus、Pigface、Revolting Cocks等相关项目。站长TJ正陆续上传票根、setlist扫描及通行证，并招募摄影师贡献演出照片（可附个人站点链接）。音频方面，他已完成200盘DAT磁带转制，手头存有1991年新奥尔良Tipitina's首版卡带等珍贵母带，并持续处理VHS/卡带转制队列。近期更新包括为多场演出补充未流传的DAT母带录音及视频。用户可通过邮件投稿素材或委托转制服务，共同完善这一跨越近四十年的乐队现场档案。

---

## 29. ClawDOS——DOS 平台上的 AI 编程代理

**原文标题**: ClawDOS – An AI coding agent for DOS

**原文链接**: [http://ricapar.net/ClawDOS/](http://ricapar.net/ClawDOS/)

ClawDOS 是运行于真实 IBM PC 5160（8088@4.77MHz、640K RAM、CGA 显卡）的 AI 编程代理，全部代码由 Claude 自主编写。核心 HARNESS.EXE 仅 176KB，在 DOS 下原生调用 Claude Messages API，8088 承担全部计算，仅 TLS 由外部桥接机经隧道转发。系统内置 18 项工具，涵盖文件读写搜索、Turbo C 编译运行、内存与端口操作、CGA 屏幕截图（自动编码为 PNG 回传模型）、PC 喇叭音乐及文本记忆（C:\MEMORY）等。演示中一条指令即可完成素数程序的编写、编译与运行；还完整创作了 WarGames 风格 demo（5 个 C 源文件，可执行文件不足 10KB）。对话以磁盘文件持久化，支持断点续聊；安全模式默认开启，文件变更需确认；支持多模型切换与提示缓存，适配慢速网络。项目以 Open Watcom 编译，约 1.3 万行 C/C++，可通过 86Box 模拟器或真机运行，GPL v3 开源。

---

## 30. Astra 6.2与Sol 6.2在SimpleBench基准测试中折戟

**原文标题**: Astra 6.2 and Sol 6.2 flop at Simple Bench

**原文链接**: [https://simple-bench.com/](https://simple-bench.com/)

本文介绍了SimpleBench——一项面向大语言模型的多选题文本基准测试，涵盖时空推理、社会智能及语言对抗鲁棒性（即"陷阱题"）等维度，包含200余道题目。在多数文本基准中，LLM通常优于非专业人类乃至专家，但SimpleBench结果相反：仅具备高中知识的普通人类得分达83.7%（基于九名参与者的小样本），超越了所有被测大模型，包括当前顶级模型Claude Fable（81.9%）。这一结果表明，前沿LLM所依赖的预存记忆知识与近似推理检索机制，仍不足以稳定解答基础常识问题，揭示了当前大模型在常识推理方面的显著短板。尽管预计性能将逐步提升，但SimpleBench为模型评估提供了重要参照。文章还公布了完整技术报告，并提供了在线测试平台（LMcouncil.ai），供用户对各模型进行横向对比。

---

