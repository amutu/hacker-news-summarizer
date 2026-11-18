# Hacker News 热门文章摘要 (2026-11-19)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. NGINX未授权远程代码执行漏洞

**原文标题**: Unauthenticated remote code execution in Nginx

**原文链接**: [https://www.wiz.io/blog/nginx-http2-rce-vulnerabilities](https://www.wiz.io/blog/nginx-http2-rce-vulnerabilities)

2026年11月，Wiz Research、Ikotas Labs、Metnir、Rapid7和Xint五家机构独立发现NGINX存在两个严重漏洞（CVE-2026-123633与CVE-2026-123007），CVSS 4.0评分均为9.2，属危急级别。两漏洞均可实现未授权远程代码执行，攻击者无需身份验证即可控制服务器，窃取数据或破坏服务。根因均为NGINX处理HTTP/2流量时的内存安全问题：前者为连接使用后释放，后者为发送窗口整数下溢导致越界内存拷贝，且均可绕过ASLR等内存保护机制。CVE-2026-123007缺陷可追溯至2015年NGINX 1.9.5，潜伏逾十年。由于漏洞在NGINX自身，即使后端应用代码安全亦无法幸免，单一部署可波及多个应用。F5已发布修复版本：NGINX OSS 1.30.7/1.31.9、NGINX Plus 37.0.7.1/37.0.8.1。建议尽快升级，若无法立即更新应临时禁用HTTP/2。文章还指出，AI辅助代码扫描正大幅降低内存安全漏洞的发现门槛，加速了长期潜伏缺陷的暴露。

---

## 2. 七款新模型：可扩展的高性价比之选

**原文标题**: Seven new models at scalable price-performance

**原文链接**: [https://microsoft.ai/news/microsoft-ignite-2026/](https://microsoft.ai/news/microsoft-ignite-2026/)

2026年11月17日，MAI正式发布七款新模型，核心主打"可扩展的价格-性能比"，面向不同规模用户提供灵活部署方案。本次发布的最大亮点是"MAI许可权重"模式，用户可直接获取模型权重进行本地部署，完全掌控前沿级性能，无需依赖云端API调用，显著降低长期使用成本。七款模型覆盖从轻量级到大规模参数的多种规格，用户可根据自身算力与预算自由匹配，在性能与成本间取得最优平衡。该许可权重策略标志着AI模型分发向开放、自主方向迈出关键一步，为从初创团队到大型机构的各类用户提供了更多元的选择，同时也彰显了MAI在推动前沿AI能力普惠化方面的战略意图。

---

## 3. 德国商业银行内幕调查

**原文标题**: Inside Deutsche Bank

**原文链接**: [https://www.inside-db.com/](https://www.inside-db.com/)

全球媒体联合开展了一项针对德国商业银行的重大调查，通过逾1500万份泄露的内部文件，揭开这家全球金融巨头的运作真相。文件涉及反金融犯罪、制裁监控、内部审计及高风险客户审批等核心业务，暴露出该银行文化缺陷、监管盲区及利润凌驾于合规之上的痼疾。调查揭露多项重大丑闻：银行为卡塔尔王室提供金融服务，模糊投资者与客户界限；协助全球最大贪腐案嫌疑人朱浩隆完成至少24笔、共计1.73亿欧元的交易；为以色列提供军火融资；处理与匈牙利银行相关的俄罗斯寡头洗钱资金；明知故犯保护俄罗斯寡头客户利益；将特朗普旗下企业与洗钱网络关联；搭建沙特王子的巨额离岸投资架构等。此外，该银行还被指违反自身合规政策，向高风险及冲突地区供应武器。这一系列报道由多家国际媒体协作完成，深刻揭示了大型银行在逐利驱动下对合规与道德底线的系统性突破。

---

## 4. Genie 4 现已上线

**原文标题**: Genie 4 is now available

**原文链接**: [https://blog.google/innovation-and-ai/models-and-research/google-deepmind/genie-4-now-available-project-genie/](https://blog.google/innovation-and-ai/models-and-research/google-deepmind/genie-4-now-available-project-genie/)

2026年11月18日，Google DeepMind与Google Labs面向Google AI Ultra订阅用户推出Project Genie全新体验，核心包括Genie 4模型、Genie 3升级、Project Genie智能体及社区画廊。Genie 4为迄今最逼真的交互世界模型，支持在会话中通过自然语言实时编辑环境（如改变天气、添加角色），并首次搭配随场景自适应的原生音频。Genie 3同步升级，会话时长延至3分钟，新增360度全景图引导与跨世界链接功能。新增的Project Genie智能体让用户仅凭对话即可构建复杂世界，自动调用多模态模型生成视觉与配乐，并可在探索中提供上下文建议。社区画廊汇集精选与用户创作，支持混搭再创造，还联合创作者Will aka BLVCKL!GHT及导演Anand Gandhi推出"Villa Giallo""The Life of Ants"等合作项目。所有生成内容均含SynthID水印并经过安全筛查。Google AI Pro用户可通过官网加入等候名单。

---

## 5. DNS解析器不是对抗盗版的正确战场

**原文标题**: DNS resolvers are the wrong place to fight piracy

**原文链接**: [https://techstackups.com/articles/quad9-leaves-france-dns-blocking/](https://techstackups.com/articles/quad9-leaves-france-dns-blocking/)

2026年11月24日，瑞士非营利DNS解析器Quad9（9.9.9.9）将停止服务法国，原因是巴黎法院因Quad9拒绝按beIN Sports要求封堵盗版体育流媒体域名而处以每日1000欧元罚款，且另有约20起同类案件待审。Quad9以过滤恶意软件和钓鱼域名为核心使命，不保存用户记录，其用户涵盖法国多家政府机构与关键基础设施。法国体育法第L.333-10条允许版权方向法院申请"动态封锁令"，强制解析器封堵侵权域名。Quad9陷入三难：全球封堵令法国司法越权干涉他国用户；地理定位技术不可靠且已被德国法院判为不合规；诉讼成本对小规模非营利组织构成生存威胁。文章同时论证DNS封锁本身收效甚微：仅屏蔽指针而非内容，用户数秒即可绕过；域名粒度粗糙易误伤；Arcom数据显示封锁量年增长71%而盗版仅下降4%。法国用户将丧失恶意软件防护，关键基础设施或静默中断。比利时等国已出现类似诉讼，欧洲DNS生态正面临系统性挤压。

---

## 6. 毕马威审计试验：AI智能体提问能力超越人类会计师

**原文标题**: AI agents ask better questions than KPMG accountants in audit trial

**原文链接**: [https://europeanbusinessmagazine.com/ai-agents-better-questions-kpmg/](https://europeanbusinessmagazine.com/ai-agents-better-questions-kpmg/)

2026年11月，毕马威英国公布代号"指数计划"的实验结果：逾100个AI智能体在审计一家英国富时250成分公司财报时，多次比人类审计团队提出更敏锐、更深入的问题，挖掘出需进一步调查的财务疑点。实验中，AI智能体贯穿整个审计流程，承担信息收集、数据分析、文档撰写及结论起草等任务，并实现智能体间的协作分工。然而，人类监督仍不可或缺——试验中一名AI未能正确匹配监管要求，需人工介入纠正。毕马威强调，该实验并非正式法定审计，结论未用于财报审批。毕马威计划将项目扩展至多达20个大型审计，但承认技术尚未成熟，数据质量仍是主要障碍。此举对"四大"以初级会计师大量重复劳动为基础的传统模式构成潜在冲击，有望降低成本、提升效率，但费用是否下调仍未明确。英国财务报告局警告，AI应用不得损害审计独立性、职业怀疑及数据安全性。当前核心议题已非AI是否进入审计，而是机器承担越来越多分析工作后，人类会计师将扮演何种角色。

---

## 7. 部分求值的魔力

**原文标题**: The Magic of Partial Evaluation

**原文链接**: [https://jimmyhmiller.com/magic-of-partial-evaluation](https://jimmyhmiller.com/magic-of-partial-evaluation)

文章探讨了部分求值这一计算概念的优雅与深意。部分求值的核心思想是：在构建时尽可能完成可确定的计算，仅保留运行时才能决定的动态部分。作者通过阶乘、幂运算、算术表达式解释器及 Brainfuck 解释器等示例，直观展示了将通用程序特化为具体实例的过程——例如对 Brainfuck 解释器做部分求值后，解释器本身被完全消除，输出一段等价的编译后代码，这正是第一个 Futamura 投影：对解释器与特定程序做部分求值即得编译器。作者进一步将部分求值诠释为"特化"，以模式匹配为例说明从通用代码到专用代码的转化。更令人惊叹的是第二个 Futamura 投影：将部分求值器本身作为被特化对象，可针对特定解释器自动生成编译器。文章还以 JSON Schema 验证器为例，展示了部分求值在运行时动态生成专用验证函数、带来数倍性能提升的实用价值。作者表示，尽管发布了相关库，初衷并非推广使用，而是分享这一让计算本质变得可见的思想之美。

---

## 8. OpenAI 模型助力芯片设计

**原文标题**: Advancing chip design with OpenAI models

**原文链接**: [https://openai.com/index/advancing-chip-design-with-our-models/](https://openai.com/index/advancing-chip-design-with-our-models/)

无法访问该文章链接

---

## 9. 剑桥词典将"human"评为2026年度词汇

**原文标题**: The Cambridge Dictionary has named ‘human’ as the Word of the Year 2026

**原文链接**: [https://www.cam.ac.uk/news/cambridge-dictionary-reveals-word-of-the-year-2026](https://www.cam.ac.uk/news/cambridge-dictionary-reveals-word-of-the-year-2026)

摘要：2026年，剑桥词典将"human"（人类）评为年度词汇，反映了AI时代人们对"何为人类"这一命题的深刻反思。比尔·盖茨撰文呼吁保留护理等"人类专属岗位"，强调AI的成功标准在于改善人类生活；诺贝尔奖得主杰弗里·辛顿警告人类正在"创造异类"，主张选择人类优先；教皇利奥十四世呼吁抵御新型"去人性化"。在文艺领域，斯嘉丽·约翰逊、凯特·布兰切特等多位名人发起"人类艺术运动"，反对大语言模型窃取人类创作成果；安迪·威尔担忧自己或成"最后一代纯人类作家"，作者公会推出"人类创作"认证标识。麦康纳马克和泰勒·斯威夫特先后为自身声音、形象注册商标以抵御AI深度伪造。剑桥大学学者指出，AI虽可能加剧不平等，也具备消除不平等的潜力，但"未来并非注定，一切取决于我们自己的选择"。语言学家科林·麦金托什表示，正是AI时代对"人之为人"这一概念的空前关注，使"human"成为捕捉时代精神的年度词汇。

---

## 10. KVM：x86架构模拟INIT信号时无条件重置MMU上下文（CVE-2026-99312）

**原文标题**: KVM: x86: Unconditionally reset MMU context when emulating INIT (CVE-2026-99312)

**原文链接**: [https://www.cve.org/CVERecord?id=CVE-2026-99312](https://www.cve.org/CVERecord?id=CVE-2026-99312)

摘要：CVE-2026-99312是Linux内核KVM（内核虚拟机）模块中影响x86架构的一个安全漏洞。该漏洞存在于KVM模拟x86处理器INIT信号的处理逻辑中：当虚拟机执行INIT仿真操作时，MMU（内存管理单元）上下文未被正确重置，可能导致虚拟机间或宿主机与虚拟机之间出现内存上下文残留，进而引发信息泄露或安全隔离失效等风险。修复方案为在模拟INIT流程中强制无条件重置MMU上下文，确保每次INIT触发后内存映射状态得到彻底清理，消除跨上下文信息残留的可能性。该漏洞已在相关内核补丁中修复，建议受影响用户及时更新内核版本。CVE详情页面提示需启用JavaScript方可完整浏览漏洞记录。

---

## 11. Search 浏览器——支持 Chrome 扩展的极简 WebKit 浏览器

**原文标题**: Search Browser – Minimalist WebKit browser with Chrome extension support

**原文链接**: [https://searchbrowser.app/](https://searchbrowser.app/)

Search 是巴黎设计工作室 Office Commun 推出的极简 macOS 浏览器，基于系统自带 WebKit 引擎，无独立内核。体积仅 10.8 MB，冷启动 320 毫秒，内存 51 MB、11 个进程，远优于 Chrome 与 Safari。适用于 macOS 14 及以上（Apple Silicon 与 Intel），免费且开源。核心特性包括：标签页支持横排与侧边栏两种布局；"空间"将工作、生活等标签组独立管理，双指滑动即可切换；阅读模式仅保留文章与图片；视频可悬浮于所有应用之上；内置广告拦截与页面元素隐藏；密码存入钥匙串并支持 Touch ID；可从 Chrome、Arc、Firefox 等一键导入书签、历史与密码；macOS 15.4 起支持 Chrome 扩展。数据同步通过用户自选的 iCloud 或 Dropbox 文件夹完成，无需注册账户，不上传密码与浏览记录。支持 Homebrew 安装，每小时自动检测更新。

---

## 12. Show HN：ExitPath——摆脱 Slack、Notion 与 Microsoft 365 的开源迁移方案

**原文标题**: Show HN: ExitPath – Open-source ways out of Slack, Notion and Microsoft 365

**原文链接**: [https://exitpath-ruddy.vercel.app/](https://exitpath-ruddy.vercel.app/)

ExitPath 是一个开源项目，旨在帮助用户和团队从 Slack、Notion 和 Microsoft 365 等主流 SaaS 平台中迁移出来，打破数据与供应商锁定。随着企业日益依赖少数几家科技巨头，持续涨价、数据不可控及单点供应商风险等问题愈发突出。该项目针对三大场景分别提供替代方案与工具链：以开源即时通讯工具替代 Slack，以开放文档与知识管理系统替代 Notion，以自由软件办公套件替代 Microsoft 365，并配套数据导出与格式转换能力，力求在迁移过程中保留核心工作流、降低切换成本。项目以完全开源的方式发布，欢迎社区共建，目标是让中小企业和开发者重新获得对数据与协作工具的自主选择权，实现真正"自由退出"。

---

## 13. DaisyRose-27B：仅1200个强化学习任务，Terminal-Bench 4.1通过率翻倍

**原文标题**: DaisyRose-27B: 1,200-task RL took Qwen3.8 from 5.6% to 12% on Terminal-Bench 4.1

**原文链接**: [https://www.radixark.com/blog/daisyrose-27b](https://www.radixark.com/blog/daisyrose-27b)

RadixArk发布首个模型DaisyRose-27B，基于Qwen3.8-27B，以自研强化学习框架Miles在144张H200 GPU上仅用18天、1200个精选任务完成训练，将Terminal-Bench 4.1的pass@1从5.6%提升至12.0%，多项推理、代码基准亦同步提升。训练任务与Eigent AI合作构建，核心设计包括：针对基座模型弱点定向出题、每任务含多步链式推理（超100次工具调用、256k输出token、最长1.5小时）、严格审查杜绝奖励作弊。训练采用全异步架构（128卡推理+16卡训练），GPU有效利用率达37%，较开源方案降低57%训练成本，端到端速度提升2倍，连续数周运行稳定。沙盒服务基于AgentENV构建，累计运行约94.4万个沙盒，创建成功率超99.95%，云基础设施成本降低80%。模型提供BF16、FP8、NVFP4三种精度检查点，Miles框架已开源。

---

## 14. Show HN：逐层拆解旅行者1号，直至单颗存储芯片

**原文标题**: Show HN: Take Voyager 1 apart, down to a single memory chip

**原文链接**: [https://rshekhar.com/voyager/](https://rshekhar.com/voyager/)

无法访问该文章链接

---

## 15. 从黑胡子的六把手枪到六发左轮：转轮手枪的演进史

**原文标题**: The First Revolver: How We Got from Blackbeard's Six Pistols to the Six-Shooter

**原文链接**: [https://americanhandgunner.com/handguns/revolvers/the-first-revolver/](https://americanhandgunner.com/handguns/revolvers/the-first-revolver/)

摘要：旋转弹膛的概念可追溯至1580年纽伦堡的转轮火绳枪，1660年代伦敦已出现六发转轮，但因全手工制作、成本高昂且点火不可靠，仅为富人奇物。1718年，海盗黑胡子仍靠携带六支单发手枪解决火力问题；同年，伦敦律师帕克尔获颁转轮式武器专利，虽未获军方采用，却印证了多管旋转系统的可行性。1818年，美国匠人科利尔改进燧发转轮手枪并售至英国。真正突破来自点火系统：雷击帽的发明使每个弹膛成为自封闭发射单元，彻底解放了转轮结构。1836年，16岁的萨缪尔·柯尔特以可机器制造的转锁机构获美、英双国专利，开启量产时代。1844年得克萨斯骑警在佩德罗内斯河以帕塔森型柯尔特击溃科曼奇人，证明其实战价值；1847年沃克柯尔特定型；1857年史密斯威森推出首款弹壳式左轮；1873年柯尔特"和平缔造者"被美军采用，奠定现代左轮基本形态。文章指出，转轮概念四百年前已存在，拖慢普及的并非机械结构，而是点火系统的可靠性。

---

## 16. Show HN：没人能屏蔽键盘——Rooted 安卓变身硬件级 USB 操控台

**原文标题**: Show HN: Nobody blocks a keyboard – Rooted Android as a physical USB Deck

**原文链接**: [https://github.com/mr-anjaneyam/Emittr](https://github.com/mr-anjaneyam/Emittr)

摘要：Emittr 是一款将已 Root 的安卓手机（含 Kali NetHunter）经 USB OTG 线缆转化为标准 USB HID 设备的开源工具，模拟物理键盘、精密鼠标及双 Xbox 摇杆，无需目标主机安装任何驱动或软件。核心优势：零剪贴板写入、零存储挂载、零网络依赖，目标主机保持完全网络隔离。项目提供两种模式：①"手持模式"——手机直连目标，作为独立操控台，可在 BIOS/UEFI/GRUB 等预启动阶段操作；②"中继模式"——手机保持 USB 连接充当硬件桥接，用户经本地 Wi-Fi 从个人设备（如 iPhone）复制凭据，通过 WebSocket 桥接注入目标，实现跨设备密钥传输而不触碰目标剪贴板。功能亮点包括：万词/分钟高速批量输入（5–60ms 可调延迟，带预飞倒计时与中止按钮）、实时触控板（多指滑动、手势点击）、双摇杆原生 AC 横向滚动（HID 0x0238）、修饰键防卡死保护及 USB 断连自动刷新。典型场景涵盖企业受限工作站、气隙/隔离诊断、BIOS 盲操作、现场维修等，要求安卓内核支持 USB Gadget ConfigFS。

---

## 17. x86处理器：从4004到486

**原文标题**: The x86 CPU: From 4004 to 486

**原文链接**: [https://pikuma.com/blog/history-of-x86-4004-to-486](https://pikuma.com/blog/history-of-x86-4004-to-486)

本文追溯了x86架构从1971年Intel 4004到1989年80486的演进历程，揭示了当前指令集中诸多"反直觉"设计的历史根源。4004是Intel为Busicom计算器定制的首款处理器，Intel通过收购独占权开启了微处理器商用时代。8008脱胎于Datapoint 2200终端，其逐位串行处理特性奠定了x86的小端序，终端通信校验需求则保留了至今鲜有人用的奇偶标志位。8080引入寄存器对、独立I/O空间和堆栈指针，成为PC热潮的核心引擎；8085以单5V供电和总线复用为后续芯片铺路。1978年发布的8086并非最初规划，而是iAPX 432延迟后的权宜之计，其16位分段寻址（段×16+偏移）以极低成本实现1MB地址空间，却也让64KB段限制困扰DOS程序员长达十五年。8080到8086的源兼容映射解释了AX、BX、CX、DX的命名由来。IBM于1981年选用8088推出PC，4.77MHz主频源自NTSC电视晶振。此后80286引入保护模式与特权环，80386迈向32位并支持分页，80486将缓存与浮点单元集成于片内。文章核心观点：x86每一处"怪异"设计皆为兼容性妥协的产物，理解其历史比阅读数据手册更能真正掌握架构本质。

---

## 18. F-22下一代微型数据传输卡（mDTC）

**原文标题**: F-22 Next-Generation micro–Data Transfer Cartridge (mDTC)

**原文链接**: [https://sam.gov/workspace/contract/opp/8948e8601e964c6aba9c801eee16b1be/view](https://sam.gov/workspace/contract/opp/8948e8601e964c6aba9c801eee16b1be/view)

本文围绕F-22战斗机配套的下一代微型数据传输卡（mDTC）展开介绍。该数据卡旨在为F-22提供高效、紧凑的战场数据交换方案，支持任务数据在机载平台与地面系统之间的快速传输与共享。结合"Sam Acquisition 360"（360度全向目标获取）能力，mDTC可在360度无死角感知环境下实现传感器数据的实时采集与分发，有效提升F-22的态势感知与多机协同作战水平。整体设计强调微型化与下一代系统兼容性，以适配F-22有限的机内安装空间，并为后续技术升级预留扩展接口，确保该战斗机在未来空中优势任务中持续保持数据链路的先进性与可靠性。

---

## 19. 傅里叶级数导论

**原文标题**: A Primer on Fourier Series (2025)

**原文链接**: [https://arxiv.org/abs/2510.18203](https://arxiv.org/abs/2510.18203)

本文为一本面向本科及研究生课程的傅里叶级数教科书，由Serena Dipierro、David Pfefferlé和Enrico Valdinoci合著，归类于偏微分方程分析领域。全书系统介绍傅里叶级数的基础理论与核心方法，涵盖级数的展开、收敛性分析、正交性等关键主题，旨在为读者建立从基本定义到进阶应用的完整知识体系。教材结构兼顾理论与应用，适合数学、物理及工程等相关专业的学生使用。书中配有大量练习题，并在书末提供完整解答，便于读者自主检验学习效果。该书于2025年10月21日提交至arXiv预印本平台（编号2510.18203），版本为第一版，文件大小约8 MB，提供PDF与HTML格式供在线阅读。作者Enrico Valdinoci为提交人，其研究长期涉及非局部算子与分数阶偏微分方程等领域，本教材的编写体现了作者将经典分析与现代PDE理论相衔接的教学理念。

---

## 20. 基于能量的推理器：推理效率提升385倍

**原文标题**: Energy-Based Reasoners: 385x more efficient inference

**原文链接**: [https://energy-based-reasoners.github.io/](https://energy-based-reasoners.github.io/)

循环推理通过迭代隐空间中的循环模块实现多步推理，但缺乏显式进度度量，难以判断何时停止及如何改进。本文提出能量推理器（EBR），将循环更新建模为能量函数上的梯度下降：能量函数对隐推理状态评分，其梯度提供改进方向，梯度范数充当停止判据，最低能量状态作为最终解。同时引入探索式训练以发现更多解模式、塑造更优能量景观。实验表明，EBR仅1.8M参数，在Sudoku-Extreme上以5次迭代达99.9%准确率，推理计算量较次优模型减少345倍；在迷宫等基准上同样领先。多解任务中，20个样本即实现N-Queens 98.1%、图着色88.6%的解覆盖度，大幅超越基线。自适应停止机制使简单问题数步即收敛，在保持99.9%准确率的同时再省10.9倍FLOPs。结果表明，能量模型是高效、可扩展推理的有力范式。

---

## 21. Evidence（YC S21）招聘创始GTM负责人

**原文标题**: Evidence (YC S21) Is Hiring

**原文链接**: [https://www.ycombinator.com/companies/evidence/jobs/1xb9PpP-founding-gtm-lead](https://www.ycombinator.com/companies/evidence/jobs/1xb9PpP-founding-gtm-lead)

Evidence是Y Combinator S21批次的BI即代码（BI-as-code）平台公司，总部设于加拿大多伦多，现招聘创始GTM（市场拓展）负责人，薪酬90–120加元/小时，股权0.15%–0.30%。公司核心产品为开源框架Evidence Core（GitHub 7000+星）及企业级平台Evidence Studio，已服务数千家企业，涵盖初创至财富100强。该岗位直接向联创兼CEO汇报，职责包括技术内容创作、产品发布营销、落地页搭建、客户案例开发、多渠道增长运营及营销基础设施搭建，鼓励借助AI工具自主交付。理想候选人需具备出色写作能力、技术敏感度、强执行力和1–3年营销经验，不限国籍与签证。公司2021年成立，团队仅6人，获YC、SV Angel、dbt创始人及PagerDuty创始人等投资。入职首月即需独立完成从内容发布到端到端营销活动的交付，强调快速迭代、以实际获客效果为导向。

---

## 22. CrossPoint 阅读器

**原文标题**: CrossPoint Reader

**原文链接**: [https://crosspointreader.com](https://crosspointreader.com)

本文介绍 CrossPoint 阅读器在 EPUB 格式排版与字体呈现方面的核心特性。该应用支持正文两端对齐排版，具备语言感知的自动连字符处理，并能正确显示脚注。此外，CrossPoint 还可渲染首字下沉、小型大写字母及插图等高级排版元素，力求为读者提供接近印刷书籍的精致阅读体验。文章末尾引导用户参阅阅读指南以获取更详细的使用说明。

---

## 23. Lakegres：在现有 Hudi/Iceberg 开放表上实现原生向量搜索

**原文标题**: Lakegres: Vector search on existing Open/Hudi/Iceberg tables

**原文链接**: [https://www.onehouse.ai/blog/lakegres-vector-search-on-open-table-formats](https://www.onehouse.ai/blog/lakegres-vector-search-on-open-table-formats)

Onehouse 宣布 Lakegres 支持原生向量搜索，索引以开放格式直接存储在 Hudi/Iceberg 表的元数据中，与数据文件同置于用户自有存储桶，通过 Postgres 协议即可对数据湖中的嵌入向量执行相似度检索，无需将数据复制至独立数据库。文章指出，Snowflake、Databricks、AWS、BigQuery 等厂商虽已支持向量搜索，但索引均存于封闭服务中，形成供应商锁定；而传统 HNSW 图索引需将全部向量驻留内存，面对数十亿级向量规模不切实际。Lakegres 采用 k-means 聚类与 RaBitQ 量化方案，将索引作为表元数据随每次写入同步更新，支持在现有表上无需重写数据文件即可添加或删除索引，查询通过两阶段剪枝在有限候选集中完成检索。该技术基于 Apache XTable 开源项目，由 Onehouse 联合 Uber、Walmart 工程师共同设计。基准测试中，在 2.47 亿条、1024 维向量上，Lakegres 热查询 p50 延迟 63.5 毫秒、冷查询 536 毫秒，较 Databricks AI Search 分别快约 10 倍与 15 倍，基础设施成本亦更低。

---

## 24. 当自由软件还不够自由

**原文标题**: When Free Software Isn't Free Enough

**原文链接**: [https://foss.life/notes/2026/free-software-isnt-free-enough/](https://foss.life/notes/2026/free-software-isnt-free-enough/)

近期，emacs-devel邮件列表上"Human Emacs"讨论引发关注：是否应接受LLM生成的代码贡献？Brian Cully以极端假设追问——若代码出自奴隶劳动，是否仍应接受？维护者Eli Zaretskii答"是"，理由是项目应只审代码质量，不评判贡献者的道德与政治立场，否则将引发派系分裂。作者承认该立场有其合理性，但认为它暴露了自由软件运动的根本局限：伦理边界止步于"用户与自身软件"的关系，而将代码如何生产、谁被剥削、软件对他人造成何种影响一律视为不相关。作者指出，自由软件从未真正中立——其创立本身即是对专有软件的道德批判，运动却将关怀收窄至单一维度。作者提出具体建议：项目应公开制定LLM贡献政策而非默认"只看代码"；审查过程而非个人，确认代码由知情且自愿的人编写；将自由概念扩展至无障碍、多语言支持与供应链透明；承认软件的社会影响亦是自由议题；以团结取代纯粹性。针对"fork即可""拒绝无意义"等反驳，作者强调fork并非万能，接受或拒绝本身即是一种表态。文章以"没有人是自由的，直到我们都自由"作结，呼吁将"自由"的含义从程序员延伸至所有代码的编写者与承受者。

---

## 25. S表达式矩阵

**原文标题**: Sexp Matrix

**原文链接**: [https://lisper.cc/ideas/entangle.html](https://lisper.cc/ideas/entangle.html)

无法访问该文章链接

---

## 26. SuperEMeans：实现 e-means 的 3 倍加速

**原文标题**: SuperEMeans: Making e-means 3× faster

**原文链接**: [https://www.lkuffo.com/superemeans/](https://www.lkuffo.com/superemeans/)

本文提出 SuperEMeans，将 SuperKMeans（裁剪冗余维度以规避全量扫描）与 e-means（以 2 个 epoch 替代传统 10 次迭代即可达到同等聚类质量）融合，实现高维向量聚类 3 倍加速且无质量损失。两者思想正交——前者降低单次迭代计算量，后者削减迭代轮数，叠加后效果显著。作者在两个基准数据集（500 万条 1536 维 OpenAI 嵌入、1000 万条 1024 维 Cohere 嵌入）上构建 IVF 索引，实验显示 SuperEMeans 在保持与 e-means 相同召回率的前提下，运行时间缩短 1.8–3.2 倍。此外，文章指出 e-means 因小批量更新易造成簇规模失衡，导致搜索阶段需扫描更多向量；将簇复活阈值从 0.1 提升至 0.3 可有效缓解该问题，使扫描量接近传统 k-means 水平。最后，作者展望了层次化 k-means 与量化向量聚类（如 8-bit 整数或 RaBitQ 编码）等进一步加速方向，代码已在 GitHub 开源。

---

## 27. 章鱼、壁虎与龟：三个猎取你AI密钥的扫描器

**原文标题**: Octopus, Gecko and Tortoise: the 3 scanners hunting your AI keys

**原文链接**: [https://tin.computer/blog/fake-ai-crawler-secrets-scanners](https://tin.computer/blog/fake-ai-crawler-secrets-scanners)

摘要：文章披露了2026年9月底至11月间在作者运营的十个网站上观察到的三个AI密钥扫描器。"章鱼"伪装32种AI爬虫身份且每请求随机更换，为每个目标在Google Cloud不同区域租用新虚拟机（共97台、15个区域，多数存活不足一小时），先以真实浏览器UA浏览首页读取框架信息，再按静态站、Next.js或Vite分别选择约385条路径，扫描.env文件、云凭证、LiteLLM/Flowise等AI网关配置及CI密钥。"壁虎"为.NET程序，主要运行于Google Cloud比利时区域及两台离岸Windows VPS，使用截断至60字符的Chrome 128 UA，专注探测Claude Code、Codex、Cursor、Gemini CLI等编程工具的密钥与登录文件，其AI工具路径五周内从4条扩至26条，11月12日曾短暂切换新清单后仅保留令牌文件。"龟"最为低调，仅出现两次，来自廉价VPS主机。作者通过SSH主机密钥、TLS指纹、操作系统及登录策略等比对，判定章鱼与壁虎分属两个不同操作员。根本动因在于AI编程工具将凭证与MCP配置存于用户主目录，经构建产物或误提交暴露至公网，而当前漏洞利用周期已缩短至数小时，扫描器正同步演进。

---

## 28. 波兰称挫败俄方在加里宁格勒边境策划的假旗行动

**原文标题**: Poland says it thwarted false flag operation near border with Kaliningrad

**原文链接**: [https://www.yahoo.com/news/world/articles/russia-reportedly-planned-mass-casualty-090500574.html](https://www.yahoo.com/news/world/articles/russia-reportedly-planned-mass-casualty-090500574.html)

据波兰《立场日报》报道，波兰情报机构近日挫败了俄罗斯情报部门策划的一项假旗行动。俄方原计划于10月底至11月初，在波兰靠近加里宁格勒州边境地区制造大规模伤亡破坏事件并嫁祸乌克兰，意图切断波兰对乌援助。波兰称，该计划通过合作伙伴预警及自身分析被发现，攻击目标已被锁定。俄方行动主要由军事情报机构格鲁乌协调。波兰特别事务部长协调人西莫尼亚克虽未透露细节，但确认威胁真实、应对措施得当。为应对威胁，波兰10月底向边境增派警力，加强边防哨所及内安局部署，特别部队与领土防卫部队在瓦尔米亚-马祖里亚及波德拉谢地区展开演习；11月初，国家警察总部设立专项指挥中心。总理图斯克亦证实边境出现"可疑活动"。波兰情报人员将此计划比作1939年纳粹德国的"盖利维茨事件"，即伪造成对方发动袭击以制造冲突借口。

---

## 29. RFC 2675：IPv6 巨型报文

**原文标题**: RFC 2675: IPv6 Jumbograms

**原文链接**: [https://www.rfc-editor.org/info/rfc2675/](https://www.rfc-editor.org/info/rfc2675/)

本文定义了IPv6巨型报文（Jumbogram），即负载超过65,535字节的IPv6报文。由于IPv6头部负载长度字段仅16位，本文引入Jumbo Payload逐跳选项，以32位长度字段支持最大约42亿字节负载。该选项仅适用于链路MTU大于65,575字节的节点，不支持的节点无需实现。UDP层面，发送方将UDP长度字段置零，接收方依据Jumbo Payload长度推算实际报文长度。TCP层面，MSS值设为65,535表示无穷大，实际MSS由路径MTU发现确定；紧急指针偏移超过65,535时需将报文拆分发送。文档还规定了多种格式错误的检测及ICMPv6参数问题报文报告机制，并提示设计者16位校验和在大报文下精度下降。本文件取代RFC 2147，属标准轨道文档。

---

## 30. 苏格兰式HTTP状态码

**原文标题**: Scottish HTTP Codes

**原文链接**: [https://underwood.network/http/scots.html](https://underwood.network/http/scots.html)

本文以幽默恶搞的方式，将标准HTTP状态码全部改写为苏格兰方言，语言粗犷生动，充满俚语与脏话。内容涵盖1xx至5xx各系列：100"AYE, HAUD ON"（好的，坚持住）；200"NAE BOTHER"（没事）；404"NAE FUCKIN HERE, PAL"（这他妈没有，伙计）；403"GET TAE FUCK"（滚蛋）；500"AH'VE FUCKED IT"（我搞砸了）等。其中经典彩蛋如418"我是茶壶"译为"AH'M A FUCKIN TEAPOT"，307与308重定向对应"滚到那边去"，429请求过多变为"喝太多酒了"，503服务不可用变为"我们他妈关门了"。全文采用苏格兰口音拼写（如dinnae、canna e、ae等），将冷冰冰的技术术语转化为极具地方特色的市井粗话，兼具娱乐性与语言文化趣味。

---

