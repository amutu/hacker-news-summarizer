# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-19.md)

*最后自动更新时间: 2026-11-19 04:56:41*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-19](output/hacker_news_summary_2026-11-19.md) |
| 2 | [2026-11-18](output/hacker_news_summary_2026-11-18.md) |
| 3 | [2026-11-17](output/hacker_news_summary_2026-11-17.md) |
| 4 | [2026-11-16](output/hacker_news_summary_2026-11-16.md) |
| 5 | [2026-11-15](output/hacker_news_summary_2026-11-15.md) |
| 6 | [2026-11-14](output/hacker_news_summary_2026-11-14.md) |
| 7 | [2026-11-13](output/hacker_news_summary_2026-11-13.md) |
| 8 | [2026-11-12](output/hacker_news_summary_2026-11-12.md) |
| 9 | [2026-11-11](output/hacker_news_summary_2026-11-11.md) |
| 10 | [2026-11-10](output/hacker_news_summary_2026-11-10.md) |
| 11 | [2026-11-09](output/hacker_news_summary_2026-11-09.md) |
| 12 | [2026-11-08](output/hacker_news_summary_2026-11-08.md) |
| 13 | [2026-11-07](output/hacker_news_summary_2026-11-07.md) |
| 14 | [2026-11-06](output/hacker_news_summary_2026-11-06.md) |
| 15 | [2026-11-05](output/hacker_news_summary_2026-11-05.md) |
| 16 | [2026-11-04](output/hacker_news_summary_2026-11-04.md) |
| 17 | [2026-11-03](output/hacker_news_summary_2026-11-03.md) |
| 18 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 19 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 20 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 21 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 22 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 23 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 24 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 25 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 26 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 27 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 28 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 29 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 30 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 31 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 32 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 33 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 34 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 35 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 36 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 37 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 38 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 39 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 40 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 41 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 42 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 43 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 44 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 45 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 46 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 47 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 48 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 49 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 50 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 51 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 52 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 53 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 54 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 55 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 56 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 57 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 58 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 59 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 60 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 61 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 62 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 63 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 64 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 65 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 66 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 67 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 68 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 69 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 70 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 71 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 72 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 73 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 74 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 75 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 76 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 77 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 78 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 79 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 80 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 81 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 82 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 83 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 84 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 85 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 86 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 87 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 88 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 89 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 90 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 91 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 92 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 93 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 94 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 95 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 96 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 97 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 98 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 99 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 100 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 101 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 102 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 103 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 104 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 105 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 106 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 107 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 108 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 109 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 110 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 111 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 112 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 113 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 114 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 115 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 116 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 117 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 118 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 119 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 120 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 121 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 122 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 123 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 124 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 125 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 126 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 127 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 128 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 129 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 130 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 131 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 132 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 133 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 134 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 135 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 136 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 137 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 138 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 139 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 140 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 141 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 142 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 143 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 144 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 145 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 146 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 147 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 148 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 149 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 150 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 151 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 152 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 153 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 154 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 155 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 156 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 157 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 158 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 159 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 160 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 161 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 162 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 163 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 164 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 165 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 166 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 167 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 168 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 169 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 170 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 171 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 172 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 173 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 174 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 175 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 176 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 177 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 178 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 179 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 180 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 181 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 182 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 183 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 184 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 185 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 186 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 187 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 188 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 189 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 190 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 191 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 192 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 193 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 194 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 195 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 196 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 197 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 198 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 199 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 200 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 201 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 202 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 203 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 204 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 205 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 206 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 207 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 208 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 209 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 210 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 211 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 212 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 213 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 214 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 215 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 216 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 217 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 218 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 219 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 220 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 221 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 222 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 223 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 224 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 225 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 226 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 227 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 228 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 229 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 230 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 231 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 232 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 233 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 234 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 235 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 236 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 237 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 238 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 239 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 240 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 241 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 242 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 243 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 244 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 245 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 246 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 247 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 248 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 249 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 250 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 251 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 252 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 253 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 254 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 255 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 256 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 257 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 258 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 259 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 260 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 261 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 262 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 263 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 264 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 265 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 266 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 267 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 268 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 269 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 270 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 271 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 272 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 273 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 274 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 275 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 276 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 277 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 278 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 279 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 280 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 281 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 282 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 283 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 284 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 285 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 286 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 287 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 288 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 289 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 290 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 291 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 292 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 293 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 294 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 295 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 296 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 297 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 298 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 299 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 300 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 301 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 302 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 303 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 304 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 305 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 306 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 307 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 308 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 309 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 310 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 311 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 312 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 313 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 314 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 315 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 316 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 317 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 318 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 319 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 320 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 321 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 322 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 323 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 324 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 325 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 326 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 327 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 328 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 329 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 330 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 331 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 332 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 333 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 334 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 335 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 336 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 337 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 338 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 339 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 340 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 341 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 342 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 343 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 344 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 345 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 346 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 347 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 348 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 349 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 350 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 351 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 352 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 353 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 354 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 355 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 356 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 357 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 358 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 359 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 360 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 361 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 362 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 363 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 364 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 365 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 366 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 367 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 368 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 369 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 370 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 371 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 372 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 373 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 374 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 375 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 376 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 377 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 378 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 379 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 380 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 381 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 382 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 383 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 384 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 385 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 386 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 387 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 388 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 389 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 390 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 391 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 392 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 393 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 394 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 395 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 396 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 397 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 398 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 399 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 400 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 401 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 402 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 403 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 404 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 405 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 406 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 407 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 408 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 409 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 410 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 411 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 412 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 413 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 414 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 415 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 416 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 417 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 418 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 419 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 420 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 421 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 422 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 423 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 424 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 425 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 426 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 427 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 428 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 429 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 430 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 431 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 432 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 433 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 434 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 435 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 436 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 437 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 438 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 439 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 440 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 441 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 442 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 443 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 444 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 445 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 446 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 447 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 448 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 449 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 450 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 451 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 452 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 453 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 454 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 455 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 456 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 457 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 458 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 459 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 460 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 461 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 462 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 463 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 464 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 465 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 466 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 467 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 468 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 469 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 470 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 471 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 472 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 473 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 474 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 475 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 476 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 477 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 478 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 479 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 480 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 481 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 482 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 483 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 484 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 485 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 486 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 487 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 488 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 489 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 490 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 491 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 492 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 493 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 494 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 495 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 496 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 497 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 498 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 499 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 500 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 501 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 502 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 503 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 504 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 505 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 506 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 507 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 508 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 509 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 510 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 511 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 512 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 513 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 514 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 515 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 516 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 517 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 518 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 519 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 520 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 521 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 522 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 523 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 524 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 525 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 526 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 527 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 528 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 529 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 530 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 531 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 532 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 533 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 534 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 535 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 536 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 537 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 538 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 539 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 540 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 541 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 542 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 543 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 544 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 545 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 546 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 547 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 548 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 549 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 550 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 551 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 552 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 553 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 554 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 555 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 556 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 557 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 558 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 559 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 560 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 561 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 562 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 563 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 564 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 565 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 566 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 567 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 568 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 569 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 570 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 571 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 572 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 573 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 574 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 575 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 576 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 577 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 578 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 579 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 580 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 581 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 582 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 583 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 584 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 585 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 586 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 587 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 588 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 589 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 590 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 591 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 592 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 593 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 594 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 595 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 596 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 597 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 598 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 599 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 600 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 601 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 602 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 603 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 604 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 605 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
