# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-09-23.md)

*最后自动更新时间: 2026-09-23 04:56:26*
## 1. GPT-6「日与月」正式发布

**原文标题**: GPT-6 Sol and Luna

**原文链接**: [https://openai.com/index/introducing-gpt-6-sol-and-luna/](https://openai.com/index/introducing-gpt-6-sol-and-luna/)

无法访问该文章链接。

---

## 2. Claude Opus 5.5 正式发布

**原文标题**: Claude Opus 5.5

**原文链接**: [https://www.anthropic.com/claude-opus-5-5](https://www.anthropic.com/claude-opus-5-5)

Anthropic发布Claude 5.5系列首作Opus 5.5，性能逼近Fable 5.1，运行成本较Opus 5降低40%。经Frontier Design、METR等外部机构测试，其在自动行为审计中创历史最佳对齐纪录，抗提示注入能力显著增强，并配备高规格安全防护措施。

性能方面，Opus 5.5在代理编码、计算机操作及知识工作中全面领先。早期测试者一天内完成68万行代码迁移；网页加载优化成功率达39/40；20万行代码审计仅需3小时（Opus 5超20小时）；将HAProxy从C转Rust仅用9.5小时且成本低51%。编码性价比突出，默认配置下成本仅为竞品1/5至1/3。

定价：输入$4、输出$20、缓存读取$0.20（每百万token），生成速度提升超30%。安全层面内置动作分类器、开源沙箱与代码审查机制，在Gray Swan基准中注入成功率与Fable 5.1并列最低。知识工作中，季度财报撰写18份报告16份通过质量校验，优于Fable 5.1与Opus 5。沟通风格更自然清晰，适合长时间协作。Claude Sonnet 5.5与Haiku 5.5将于数周内陆续发布。

---

## 3. OpenAI GPT-6 Astra 破解沉寂二十余年的恩尼格玛密码

**原文标题**: OpenAI GPT–6 Astra breaks Enigma message that has resisted solution since 2005

**原文链接**: [https://www.cryptocellar.org/bgac/the-mvueh-break.html](https://www.cryptocellar.org/bgac/the-mvueh-break.html)

2026年9月，密码学者Frode Weierud确认，Carter Leffer利用OpenAI GPT-6 Astra成功破解了1941年7月10日德国陆军恩尼格玛密码电文MVUEH（编号172），该消息自2005年起一直未获破解。MVUEH由战术代号2ny的电台发出，接收方为党卫军骷髅师后勤处，其密钥轮序为253，与同日其他消息的轮序512完全不同；明文与同日已被破解的SIPVX（编号173）高度相似，仅因拼写错误及签名重复而有细微差异。阻碍此前破解的原因包括密文转录错误和恩尼格玛左轮罕见翻转。此次破解最令人瞩目的是GPT-6 Astra完全自主完成：它分析Crypto Cellar网站上未破解消息列表，选定MVUEH，联想到与SIPVX的关联，以地名ROSENOW作为试破 Cribs，自行编写Python和C++的恩尼格玛模拟器及炸弹机软件，两天内即完成破译，而人类研究者通常需要数周乃至数月。AI还自主追踪至德国联邦档案馆的原始档案卷宗编号，展现出专业档案研究员的水准。Weierud感叹，作为一名资深密码分析员，他对此深感震撼。

---

## 4. SAML：坏设计的分形

**原文标题**: SAML: A Fractal of Bad Design

**原文链接**: [https://blog.trailofbits.com/2026/09/21/saml-a-fractal-of-bad-design/](https://blog.trailofbits.com/2026/09/21/saml-a-fractal-of-bad-design/)

SAML（安全断言标记语言）由OASIS委员会于2002年制定，是早期单点登录（SSO）的核心协议，催生了Okta、OneLogin等数十亿美元规模的身份认证产业。然而，作者从五个维度论证了SAML应被弃用：一是基于XML这一复杂格式，本身存在XXE、实体扩展等安全缺陷，签名验证依赖维护困难的libxmlsec库；二是XML规范化（C14N）机制极易产生解析器差异，导致签名绕过；三是将签名嵌入被签数据（enveloped signature）的设计使字节对齐极为困难；四是"大杂烩"式设计混入四个前身协议，99%的实现仅使用规范的极小子集；五是协议固化——SAML诞生于VPN与网络隔离时代，未能适应HTTP+TLS、移动应用、SPA及零信任架构。相比之下，OpenID Connect（OIDC）凭借JWT的简洁设计、对HTTPS的原生支持及敏捷演进，已成为更优替代。作者建议服务提供商直接采用OIDC，身份提供商则制定分阶段淘汰计划。尽管缺陷明显，作者仍肯定SAML推动SSO普及、改善用户体验的历史贡献，将其视为协议设计演进的经典案例。

---

## 5. Claude Opus 5.5 智能、性能与价格分析（Max模式）

**原文标题**: Claude Opus 5.5 Intelligence, Performance and Price Analysis (Max)

**原文链接**: [https://artificialanalysis.ai/models/claude-opus-5-5](https://artificialanalysis.ai/models/claude-opus-5-5)

摘要：Claude Opus 5.5（自适应推理、最大努力模式）由Anthropic于2026年9月发布，是一款专有推理模型，支持文本与图像输入、文本输出，上下文窗口达100万token。在Artificial Analysis智能指数v4.3.2中，该模型以58分位列第1/212，远超同类模型中位数25分，涵盖AA-Briefcase、GDPval-AA、Terminal-Bench 4.0、SciCode、Humanity's Last Exam等10项评估，覆盖编码、代理任务、法律、金融、物理推理等能力。成本方面，输入$4.00/百万token、输出$20.00/百万token（均高于中位数），提供95%缓存折扣，单任务综合成本$5.98，性价比评分4/4；完整评测总花费约$8708。不足在于冗长度突出，生成260M输出token（中位数仅88M），排名第95/212，意味着推理过程极为详尽但代价高昂。整体而言，该模型在智能与能力维度处于顶尖水平，适合对推理深度要求极高的复杂任务，但价格偏高且输出 verbosity 显著，用户需权衡性能与成本。

---

## 6. '我们攻陷了FBI'：黑客组织声称掌握全部FBI员工数据

**原文标题**: 'We hacked the FBI:' Hackers say they have data on all FBI employees

**原文链接**: [https://www.404media.co/we-hacked-the-fbi-hackers-say-they-have-data-on-all-fbi-employees/](https://www.404media.co/we-hacked-the-fbi-hackers-say-they-have-data-on-all-fbi-employees/)

摘要：知名黑客组织ShinyHunters声称入侵多个FBI相关服务，窃取了"所有FBI员工及申请人"数据，涉及姓名、家庭住址、电话号码、出生日期及配偶信息。该组织向404媒体提供了5000名FBI员工信息样本，经核实部分电话号码确实对应同名人员并与司法部相关人员关联。此次泄露影响深远，可能带来严重国安与反情报风险：犯罪团伙此前已用类似数据追踪、恐吓FBI办案人员，境外情报机构亦可能借此窥探美国核心执法机构运作，特工及其家属人身安全面临直接威胁。ShinyHunters还篡改了FBI招聘网站，模仿执法机构查封格式进行嘲讽。据称该组织于周一夜间利用Oracle PeopleSoft零日漏洞入侵，进而接入AWS GovCloud政府云服务器，下载2至3TB数据。该组织惯以公开数据要挟实施勒索，但此次声称并非经济动机，而是"胁迫"。FBI尚未回应。

---

## 7. WordPress：未认证路径遍历导致条件性远程代码执行漏洞

**原文标题**: WordPress: Unauthenticated path traversal leading to conditional RCE

**原文链接**: [https://github.com/WordPress/wordpress-develop/security/advisories/GHSA-7hp8-65ch-5whp](https://github.com/WordPress/wordpress-develop/security/advisories/GHSA-7hp8-65ch-5whp)

CVE-2026-87902（CVSS 9.2，严重）是WordPress核心中的未认证路径遍历漏洞，对应CWE-98（PHP文件包含）。攻击者可通过get_page_template()解析包含活动主题目录外的本地.php文件，在满足特定前置条件时实现远程代码执行。前置条件：①当前主题含以"page-"开头的顶级目录（经典主题Twenty Twelve、Twenty Fourteen及Neve、Hestia、Sydney等第三方主题均受影响）；②服务器存在Web用户可读的.php文件（如register_argc_argv开启时可利用pearcmd.php，官方Docker镜像及cPanel默认PHP 8.5以下配置均受影响）。受影响版本覆盖4.7.0至7.1.1全部分支，修复已回移植至4.7.37至7.1.2各分支。该漏洞由Robert Ressl发现并负责任披露，攻击无需认证、无需用户交互、复杂度低，但需环境条件配合方可利用。

---

## 8. Obscura：首款从架构上无法记录用户活动的VPN

**原文标题**: Obscura: The first VPN that can't log your activity

**原文链接**: [https://obscura.com/#faq-technical](https://obscura.com/#faq-technical)

摘要：Obscura是一款以"不可记录性"为核心设计理念的VPN，采用两方中继架构——用户流量经WireGuard端到端加密至Mullvad出口服务器，Obscura仅负责中继加密数据包，物理上无法解密；Mullvad出口节点经NAT处理，也无法获取用户真实IP，确保无任何单方同时掌握身份与流量信息。传输层采用QUIC协议（与HTTP/3同源），伪装为普通流量，有效抵御审查封锁；同时借助QUIC不可靠数据报扩展避免TCP嵌套问题。隐私层面，Obscura无需邮箱或手机号，仅以随机账户编号登录；支付支持比特币闪电网络、门罗币及信用卡，月费8美元，每账户含5个并发连接槽。应用全平台覆盖（iOS、macOS、Android、Windows、Linux），macOS以沙盒化网络扩展运行，无内核权限。项目完全开源，提供可复现构建，并支持生成WireGuard配置以兼容任意平台。出口节点覆盖北美、拉丁美洲、欧洲、亚洲、非洲、大洋洲数十个城市。团队拥有Nix、Go、Monero、比特币等项目贡献背景，强调"不信任，只验证"的隐私哲学，旨在用架构而非承诺保障用户隐私。

---

## 9. Unreal Agent：面向前沿成本效率的异步智能体框架

**原文标题**: Unreal Agent

**原文链接**: [https://unreallabs.ai/blog/unreal-agent/](https://unreallabs.ai/blog/unreal-agent/)

Unreal Agent是Unreal Labs开发的智能体运行框架（harness），旨在解决AI代理部署中工具调用管理带来的延迟与token消耗问题。其核心设计为完全异步管理工具调用，将等待、轮询和心跳等负担从底层模型中剥离，带来两大优势：用户无需等待工具完成即可随时引导代理行为；代理可在模型调用间隙并行调度更多工具任务。实测中，Unreal Agent在真实工作负载及代理基准测试中较Codex节省约40%成本，较Pi节省约20%。

成本优势源于两方面：一是极简的框架占用与token优化的工具输出格式，无子代理或工作流开销；二是异步调用模式使每次模型推理可触发更多工具执行，避免轮询浪费。基准测试覆盖Terminal-Bench 4.0、SWE-Atlas、DeepSWE 1.1及ALE-CLI等任务，Unreal Agent在通过率上持平或领先，总开销显著更低。目前项目提供Go语言SDK、类命令行运行器及兼容Harbor的基准测试工具，已开源。文章同时指出，智能体框架设计本身是一个值得持续深耕的研究方向。

---

## 10. 用 TypeScript 与 CSS 编写的原生应用

**原文标题**: Native apps written in TypeScript and CSS

**原文链接**: [https://github.com/geastack/examples](https://github.com/geastack/examples)

本仓库是 GeaStack 的示例应用集合，供模拟器、嵌入式目标、GeaOS、Apple 平台及 VS Code/Cursor 扩展调用。各示例以 TypeScript（TSX）编写逻辑、CSS 定义样式，并在 package.json 的 gea 字段中声明清单信息（应用 ID、入口、运行时及 web/esp32/geaos 等目标兼容项）。仓库结构包括 apps/*（示例应用）、tools/dialer-browser（浏览器拨号辅助工具）和 docs（目录与贡献指南）。快速上手：进入某一应用目录执行 npm install 后运行 npm run check/build；Web 开发循环由独立的 geastack/simulator 仓库驱动，需通过 GEA_APPS_ROOT 环境变量或 --app-dir 参数指定应用路径；嵌入式开发则使用 npx gea flash 命令烧录。维护要求示例精简聚焦、优先使用框架通用 API 而非平台特判、对含复杂逻辑的示例添加测试，并同步更新目录文档。许可证为 MIT，可自由用于闭源产品；唯嵌入式板级支持代码（@geastack/chips）采用 GPL-3.0，闭源固件分发须获取商业授权。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 2 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 3 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 4 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 5 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 6 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 7 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 8 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 9 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 10 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 11 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 12 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 13 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 14 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 15 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 16 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 17 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 18 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 19 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 20 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 21 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 22 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 23 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 24 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 25 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 26 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 27 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 28 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 29 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 30 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 31 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 32 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 33 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 34 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 35 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 36 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 37 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 38 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 39 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 40 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 41 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 42 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 43 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 44 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 45 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 46 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 47 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 48 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 49 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 50 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 51 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 52 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 53 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 54 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 55 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 56 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 57 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 58 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 59 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 60 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 61 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 62 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 63 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 64 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 65 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 66 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 67 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 68 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 69 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 70 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 71 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 72 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 73 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 74 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 75 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 76 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 77 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 78 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 79 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 80 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 81 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 82 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 83 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 84 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 85 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 86 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 87 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 88 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 89 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 90 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 91 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 92 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 93 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 94 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 95 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 96 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 97 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 98 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 99 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 100 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 101 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 102 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 103 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 104 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 105 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 106 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 107 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 108 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 109 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 110 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 111 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 112 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 113 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 114 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 115 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 116 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 117 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 118 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 119 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 120 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 121 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 122 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 123 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 124 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 125 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 126 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 127 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 128 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 129 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 130 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 131 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 132 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 133 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 134 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 135 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 136 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 137 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 138 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 139 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 140 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 141 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 142 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 143 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 144 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 145 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 146 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 147 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 148 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 149 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 150 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 151 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 152 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 153 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 154 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 155 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 156 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 157 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 158 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 159 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 160 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 161 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 162 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 163 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 164 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 165 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 166 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 167 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 168 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 169 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 170 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 171 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 172 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 173 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 174 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 175 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 176 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 177 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 178 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 179 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 180 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 181 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 182 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 183 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 184 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 185 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 186 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 187 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 188 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 189 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 190 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 191 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 192 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 193 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 194 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 195 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 196 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 197 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 198 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 199 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 200 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 201 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 202 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 203 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 204 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 205 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 206 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 207 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 208 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 209 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 210 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 211 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 212 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 213 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 214 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 215 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 216 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 217 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 218 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 219 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 220 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 221 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 222 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 223 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 224 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 225 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 226 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 227 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 228 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 229 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 230 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 231 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 232 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 233 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 234 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 235 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 236 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 237 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 238 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 239 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 240 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 241 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 242 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 243 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 244 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 245 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 246 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 247 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 248 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 249 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 250 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 251 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 252 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 253 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 254 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 255 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 256 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 257 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 258 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 259 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 260 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 261 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 262 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 263 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 264 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 265 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 266 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 267 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 268 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 269 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 270 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 271 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 272 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 273 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 274 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 275 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 276 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 277 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 278 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 279 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 280 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 281 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 282 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 283 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 284 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 285 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 286 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 287 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 288 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 289 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 290 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 291 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 292 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 293 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 294 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 295 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 296 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 297 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 298 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 299 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 300 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 301 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 302 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 303 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 304 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 305 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 306 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 307 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 308 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 309 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 310 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 311 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 312 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 313 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 314 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 315 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 316 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 317 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 318 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 319 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 320 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 321 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 322 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 323 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 324 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 325 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 326 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 327 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 328 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 329 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 330 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 331 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 332 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 333 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 334 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 335 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 336 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 337 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 338 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 339 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 340 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 341 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 342 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 343 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 344 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 345 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 346 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 347 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 348 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 349 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 350 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 351 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 352 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 353 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 354 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 355 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 356 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 357 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 358 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 359 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 360 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 361 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 362 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 363 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 364 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 365 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 366 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 367 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 368 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 369 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 370 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 371 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 372 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 373 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 374 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 375 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 376 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 377 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 378 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 379 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 380 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 381 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 382 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 383 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 384 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 385 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 386 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 387 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 388 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 389 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 390 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 391 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 392 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 393 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 394 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 395 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 396 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 397 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 398 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 399 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 400 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 401 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 402 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 403 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 404 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 405 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 406 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 407 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 408 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 409 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 410 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 411 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 412 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 413 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 414 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 415 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 416 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 417 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 418 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 419 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 420 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 421 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 422 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 423 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 424 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 425 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 426 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 427 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 428 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 429 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 430 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 431 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 432 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 433 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 434 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 435 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 436 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 437 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 438 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 439 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 440 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 441 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 442 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 443 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 444 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 445 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 446 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 447 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 448 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 449 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 450 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 451 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 452 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 453 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 454 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 455 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 456 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 457 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 458 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 459 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 460 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 461 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 462 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 463 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 464 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 465 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 466 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 467 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 468 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 469 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 470 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 471 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 472 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 473 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 474 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 475 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 476 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 477 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 478 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 479 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 480 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 481 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 482 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 483 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 484 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 485 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 486 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 487 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 488 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 489 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 490 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 491 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 492 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 493 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 494 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 495 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 496 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 497 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 498 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 499 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 500 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 501 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 502 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 503 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 504 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 505 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 506 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 507 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 508 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 509 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 510 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 511 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 512 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 513 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 514 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 515 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 516 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 517 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 518 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 519 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 520 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 521 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 522 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 523 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 524 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 525 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 526 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 527 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 528 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 529 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 530 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 531 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 532 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 533 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 534 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 535 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 536 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 537 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 538 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 539 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 540 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 541 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 542 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 543 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 544 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 545 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 546 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 547 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 548 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
