# Hacker News 热门文章摘要 (2026-09-23)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. 向商业人士解释：为何开发软件依然艰难

**原文标题**: Explaining to business people why building software is still hard

**原文链接**: [https://www.manager.dev/newsletter/cursing-the-day-lovable-was-born](https://www.manager.dev/newsletter/cursing-the-day-lovable-was-born)

摘要：作者以黑客松经历切入——团队用AI编程工具Lovable搭建员工推荐系统，第一天高速完成九成进度，第二天却全面崩溃、寸步难行，招募同事完全无法理解问题所在。这一遭遇折射出普遍的认知鸿沟：非技术领导常以为"把需求丢给ChatGPT"就能搞定，甚至厌恶"重构""基建"等基础工作，认为工程师在夸大难度。作者用"盖房子"作类比加以解释：三十年老房推倒重建远比翻新划算；屋顶漏水不能只放桶，必须找到根源；建一层时预留二层结构远比日后加装便宜得多。最终团队放弃"氛围式编码"的冲动，以理解、规划、实施的节奏逐步修复，才交出可用的演示。文章强调，软件不同于房屋，永远不会真正"建成"，交付后仍需在居住者不断迁入的情况下持续修缮。文末推荐了三篇延伸阅读，分别涉及如何缓解代码审查疲劳、工程管理者什么是真正的"激励"，以及2026年技术从业者的工作情绪调查——数据显示，拥有高效管理者的员工满意度高出65%，但仅四分之一人拥有这样的上级。

---

## 12. 结构指纹：识别AI生成的商业网页内容

**原文标题**: Show HN: Training a model to identify AI web content from structure alone

**原文链接**: [https://arxiv.org/abs/2609.15369](https://arxiv.org/abs/2609.15369)

词级AI文本检测器虽能高效识别未改写内容，但经改写后易失效，且无法表征文本特征或区分生成模型。本文提出"结构指纹"方法，从信息呈现方式、排列顺序、证据使用与语气等结构层面识别AI生成的商业网页内容。研究复现了StoryScope在AI小说上的发现，并将其推广至商业场景：以268个公司域名的2250篇ChatGPT前人类博客为基准，对比五个前沿模型生成的11250篇AI镜像内容。研究构建了214项结构特征工具，由大语言模型执行并经人工标注验证（人际一致性Kappa 0.928，人机一致性0.946）。结果表明，仅凭187项结构特征即可在留出公司上达到98.0的宏F1值，所有AI文本经自身模型改写后性能不变（98.1）。AI内容呈整洁、自我宣告的统一形态，79.3%可正确归因至来源模型（随机基准仅16.7%），人类内容则分布于罕见结构配置中。效应方向与StoryScope一致且幅度更大。研究公开了完整流程、特征工具、提示词、代码及数据。

---

## 13. 关于 Discord 年龄组确认方式的最新更新

**原文标题**: An update on how we confirm your age group on Discord

**原文链接**: [https://discord.com/blog/safer-for-teens-same-discord-for-adults](https://discord.com/blog/safer-for-teens-same-discord-for-adults)

Discord 宣布推出隐私保护的年龄自动确认方案，超过 90% 的用户无需额外验证。系统将根据账户创建时长、所在服务器类型等信号自动判定年龄组，不查看消息、通话等任何内容。本周起逐步上线，用户可在"用户设置 > 账户状态"查看结果。成人组（18+）体验完全不变；青少年组（13-17）享有额外安全保护，屏蔽成人内容及设置，但聊天、语音、非限制服务器等功能照常使用；未确认状态的用户部分成人功能暂受限，可通过信用卡等方式确认年龄，无需提交身份证或自拍。此次更新旨在应对全球（如美国得州、巴西等）不断扩展的青少年保护法规，Discord 以自主隐私方案替代被动合规，承诺在满足法律要求的同时最大限度减少用户负担。

---

## 14. OpenAI蓄势待发，随时可快跟Jev

**原文标题**: OpenAI is well positioned to fast-follow Jev

**原文链接**: [https://arcturus-labs.com/blog/2026/09/21/will-openai-eat-jevs-lunch/](https://arcturus-labs.com/blog/2026/09/21/will-openai-eat-jevs-lunch/)

摘要：TypeSafe推出的Jev是一款基于大语言模型概率输出的通用分类器，因其快速校准的概率判断能力在AI界引发关注。作者认为，Jev的核心原理——利用模型对特定token（如true/false）的概率分布进行归一化——并非全新概念，OpenAI自工具调用机制引入起便已长期将LLM的逐token预测隐含用作微分类器。因此，架构层面TypeSafe难以形成壁垒。真正的护城河或在于其合成训练数据与校准方法。然而，OpenAI的下一步可能不止于复制Jev，而是将通用分类能力直接融入模型内部：在思维链中插入`<prediction>`标签，让模型无需离开GPU即可对自身中间判断输出校准概率，实现"自问自答"。这一机制可拓展至多种场景：推理过程中判断任务是否完成或下一步优先级、工具调用前的安全检查与提示词注入拦截、动态路由至不同规模的模型以降低推理成本等。作者认为，若Jev的准确性经得住检验，OpenAI凭借算力、资金与工程积累可在短时间内实现"快跟"，并进一步将分类能力内化为模型原生行为，从而在速度、成本与智能程度上超越独立分类器方案。

---

## 15. Show HN：JevBench——类型化决策模型的可复现基准测试

**原文标题**: Show HN: JevBench, a reproducible benchmark for typed decision models

**原文链接**: [https://benchmarkheaven.com/jev-models](https://benchmarkheaven.com/jev-models)

JevBench 是一款面向类型化决策模型的可复现基准。classifier.dev 在 JevBench 上以 Jev 1.13.0 身份获 83.6 分（智力 85.1、校准 77.9、速度 87.6、成本 84.3），但因其实质即 Jev 模型本身，v1.2.4 起改列为荣誉提名而非正式排名——否则等于"Jev 与 Jev 自比"。classifier.dev 快层直接调用 Jev，智能层在低于 0.7 置信度时升级至 gemini-3.8-flash 重新判断，但本次仅测了快层。价格方面，$0.0033/千次决策系 Pro 套餐（$20/月、每日 20 万次）全量使用估算，用量不足时单价更高，免费层则零费用。性能上，快层在简单集上得分 97.3%，略高于直接调用 Jev 的 94.5%，但在高难集为 70.5%，低于 Jev 的 74.1%，官方将差异归因于批处理，属正常噪声。该产品开源、免注册可用，由 Michael Ryaboy 开发维护。

---

## 16. 加州从灌溉渠太阳能板试点中获得的启示

**原文标题**: What California is learning from solar panels built over irrigation canals

**原文链接**: [https://www.kqed.org/science/2002033/heres-what-california-is-learning-from-solar-panels-built-over-irrigation-canals](https://www.kqed.org/science/2002033/heres-what-california-is-learning-from-solar-panels-built-over-irrigation-canals)

摘要：面对气候变化导致水蒸发加剧及2045年100%清洁电力目标，加州在土洛克市启动"项目Nexus"，在灌溉水渠上方架设太阳能板，兼顾节水与发电。该项目由Solar AquaGrid公司联合土洛克灌溉区、UC默赛德分校及州水资源部推进，测试宽幅顶棚、斜置面板和可伸缩面板三种模式。研究预测，覆盖100英里窄渠或宽渠每年可分别节省2700户和11000户用水，发电量可供7.7万至30.4万户使用。附带效益包括减少藻类与水草滋生、改善水质，以及避免占用自然土地，缩短审批周期。然而，项目面临跨部门协调难、输电基建成本高等挑战。地处城市的康特拉科斯塔县因水渠穿行居民区，无法实施类似方案，转而采用管道化防蒸发。该项目由200万美元州拨款资助，目前仅产出1.7兆瓦，距实用规模仍有差距。州水资源部表示将在年内最终报告出炉后，再评估是否扩大投资。项目证明"水-能"复合利用方向可行，但规模化仍需更多科学数据支撑。

---

## 17. OpenAI解错了纳维-斯托克斯问题吗？

**原文标题**: Did OpenAI solve the wrong Navier-Stokes problem?

**原文链接**: [https://www.scientificamerican.com/article/did-openai-solve-the-wrong-navier-stokes-problem/](https://www.scientificamerican.com/article/did-openai-solve-the-wrong-navier-stokes-problem/)

2026年9月，OpenAI宣称解决了陶氏数学研究所悬赏百万美元的纳维-斯托克斯方程问题，但证明迅速引发争议。其解法由内部大语言模型生成，核心在于引入一个精心构造的外力使方程"爆炸"——即允许流体速度在某点趋于无穷。然而，数学家真正关切的是：仅凭流体自身内禀力，方程是否也会崩溃。科迪瓦和马丁内斯-索拉等学者此前已针对含外力情形给出方法，OpenAI在此基础上快速完成"最后一步"。但随后发布的证明表明，一旦去除外力，该爆炸必然消失，OpenAI的方法永远无法推广至无外力情形。换言之，AI解决的是问题的"技术版本"，而非数学界在意的"本质版本"。不过按陶氏研究所2000年原始表述中的选项C（允许外力），OpenAI结果在形式上确实成立。流体动力学界由此面对一个新认知：纳维-斯托克斯方程或许仅在人工外力下才崩溃，而非流体自身所致。对数学家而言，这带来一丝安慰——AI擅长构造具体反例，却仍难以证明"不可能性"，人类或许仍有优势。但整个数学界正谨慎重估AI的能力边界，视为一场"觉醒时刻"。

---

## 18. 2026年旧金山Muni交通遗产周末摄影记

**原文标题**: MUNI Heritage Weekend in San Francisco

**原文链接**: [https://daniel.lawrence.lu/blog/2026-09-20-muni-heritage-weekend/](https://daniel.lawrence.lu/blog/2026-09-20-muni-heritage-weekend/)

作者参加了2026年9月19日旧金山Muni交通遗产周末，以Alkeria Necta N4K2-7C线扫描相机沿轨道拍摄多辆历史有轨电车，图片以CC-By-SA 4.0协议开放共享并上传至维基共享资源。文中逐一介绍：1912年Muni No.1（美国首辆公立城市有轨电车）、1914年No.162（2014年碰撞修复后首次亮相）、1934年布莱克浦船形电车、1928年墨尔本绿色电车、1896年最古老的"Dinky"No.578（电动驱动但外观似缆车），以及1928年米兰Peter Witt多门设计电车No.1815。此外还拍摄了太平洋快线、洛杉矶、伊利诺伊、芝加哥CTA等PCC经典电车，以及Waymo自动驾驶车和警车等。作者使用darktable、GIMP等软件处理照片，部分线扫描作品因车辆遮挡或对焦问题未能成功。文末附有拍摄场景及朋友Daniel Du所拍的花絮照片。

---

## 19. Markdown in /src

**原文标题**: Markdown in /src

**原文链接**: [https://htmx.org/essays/markdown-in-src/](https://htmx.org/essays/markdown-in-src/)

文章之前已经处理过

---

## 20. AMD Ryzen 如何在两年内提升50%性能？

**原文标题**: How did AMD Ryzen get 50% faster in two years?

**原文链接**: [https://lemire.me/blog/2026/09/18/how-did-amd-ryzen-get-50-faster-in-two-years/](https://lemire.me/blog/2026/09/18/how-did-amd-ryzen-get-50-faster-in-two-years/)

无法访问该文章链接

---

## 21. JavaScript 的中年危机

**原文标题**: The JavaScript Midlife Crisis

**原文链接**: [https://maroun-baydoun.com/blog/javascript-midlife-crisis/](https://maroun-baydoun.com/blog/javascript-midlife-crisis/)

摘要：文章以自嘲笔调探讨了JavaScript工具链正经历的"大换血"。JavaScript从浏览器蔓延至服务器、手机乃至微控制器，却从未摆脱被替代的命运；TypeScript、Dart等前赴后继，最终都没能撼动它——因为JavaScript真正的"超能力"在于用一种语言打通全栈，开发者能读懂、修复乃至参与工具链的维护。然而当Rust、Go、Zig开始重写打包器与编译器，数倍的速度提升背后暗藏代价：能维护这些工具的开发者群体急剧缩小，内核沦为"黑箱"。作者将这股风潮称为"光鲜物症候群"——一个工具用Rust重写后性能飙升，同行纷纷跟进，"用Rust写"从实现细节沦为营销卖点。更深层的矛盾在于：我们用Rust编译JavaScript，产出运行在C++引擎上的JavaScript，正如为一辆蒸汽机车铺设越来越快的高铁轨道。每一步单独看都合情合理，合在一起却指向一个荒诞的困境——我们投入大量精力优化JavaScript周围的一切，而它本身从未加速。当速度红利逼近边际，终将有人要回答那个终极问题：是否该推倒重建整个Web？

---

## 22. 五角大楼称过度依赖AI致使伊朗学校遭导弹袭击

**原文标题**: Overreliance on AI contributed to missile strike on Iran school – Pentagon

**原文链接**: [https://www.bloomberg.com/graphics/2026-iran-school-attack/](https://www.bloomberg.com/graphics/2026-iran-school-attack/)

无法访问该文章链接

---

## 23. 16位英特尔8088芯片（约1985年）

**原文标题**: 16-bit Intel 8088 chip (c. 1985)

**原文链接**: [https://allpoetry.com/16-bit-Intel-8088-chip](https://allpoetry.com/16-bit-Intel-8088-chip)

无法访问该文章链接

---

## 24. 更快的最短路径算法

**原文标题**: A Faster Shortest Path Algorithm

**原文链接**: [https://www.vals.ai/blogs/faster-shortest-path-algorithm](https://www.vals.ai/blogs/faster-shortest-path-algorithm)

本文介绍了一种有向图非负权重精确最短路径新算法C-HD。在经典Dijkstra算法O(m+nlogn)及2025–2026年最新最优bound之上，作者调度10个Claude Opus 5.5智能体通过共享消息板协作，经约15小时、733条消息，提出C-HD算法并以Lean完成形式化验证，证明其时间复杂度上界为O(n+m+m·log(2+m/(n+1))+m^(1/3)·(n·log(n+2))^(2/3))，认证范围m≤n·⌊⌊log₂n⌋^{3/4}⌋。在m≈n·log^{3/4}n密度下简化为O(n·log^{11/12}n)，严格优于Dijkstra的O(nlogn)；当n=2^{1000}时常因子改进约1.78倍。算法核心为有界局部搜索：将未改善距离的新顶点计入搜索上限，借搜索树与枢轴组织递归，减少重复开销；超出认证密度则回退Bellman-Ford。作者强调此为渐近上界改进而非实测加速，形式化常数极大。完整Lean证明已开源。

---

## 25. Launch HN：Coverage Cat（YC S22）—— 通过专属经纪人购买伞形保险

**原文标题**: Launch HN: Coverage Cat (YC S22) – Umbrella insurance via your personal agent

**原文链接**: [https://www.coveragecat.com/](https://www.coveragecat.com/)

摘要：Coverage Cat 是 YC S22 批次的持牌保险经纪平台，主打伞形保险、房屋、汽车及租房保险的一站式比价，面向消费者与开发者两大用户群。其核心优势在于价格透明、不向第三方出售用户线索，并配备真人持牌经纪人，已服务数万用户，Trustpilot 评分 100% 五星，Google 评分 4.7。业务流程上，用户可通过 AI 引导的在线问卷获取保费估算与多家承保商报价对比，也可直接对接个人经纪人。对开发者及 AI Agent，Coverage Cat 提供 Agent API、OpenAPI 规范、沙箱文档及技能指南，支持从网页直接调用伞形保险预填等工具接口，并设计了 MCP 协议发现端点和纯文本代理文件以兼容机器读取。目前平台已在加州、佛州、纽约、德州和华盛顿州上线，更多州陆续开放。整体定位是以透明、隐私与速度见长，让用户无需同时联系多家经纪人，即可获得可靠的保险方案。

---

## 26. 乔治·卢卡斯重返地球，馈赠瑰宝

**原文标题**: George Lucas Returns to Earth, Bearing Gifts

**原文链接**: [https://commonedge.org/george-lucas-returns-to-earth-bearing-gifts/](https://commonedge.org/george-lucas-returns-to-earth-bearing-gifts/)

乔治·卢卡斯与妻子梅洛迪·霍布森创立的卢卡斯叙事艺术博物馆上周在洛杉矶展览公园举行媒体预览，公众开放日为9月22日。这座造价约10亿美元的博物馆由MAD建筑事务所设计，外形如有机云朵，被喻为"降临凡间的飞船"，坐落于原为停车场的13英亩园区内。馆内五层楼、33个展厅、共10万平方米，展出约1300件作品，涵盖从史前岩画、古代神像、文艺复兴绘画到电影美术、珍稀漫画及摄影，卢卡斯称漫画为"人民的艺术"。馆中设有星战主题展区，展出前六部电影的车辆设计、道具与服装等珍藏；两座免费影院以纪录片先驱弗拉哈迪和特效先驱沃卡皮奇命名，持续放映策展影片。摄影藏品包括卡帕、帕克斯、兰格等名家之作，绘画与插画则汇集里维拉、洛克威尔、科比、米勒等大师。建筑内部动线流畅、功能完善，但公共区域设计略显平淡；园区景观融入旱生植物，设喷泉、瀑布、草坪及漫步小径，宜休憩聚会。该馆曾计划落户芝加哥与旧金山，均因选址未果，最终落户这座以叙事艺术闻名的城市。

---

## 27. 2027年有望出现预装GrapheneOS的市售设备

**原文标题**: There's a high chance of devices being sold with GrapheneOS preinstalled in 2027

**原文链接**: [https://grapheneos.social/@GrapheneOS/117299954135808210](https://grapheneos.social/@GrapheneOS/117299954135808210)

摘要：GrapheneOS官方在Mastodon平台发布消息称，2027年市面上极有可能出现出厂预装GrapheneOS系统的终端设备。GrapheneOS是一款以隐私和安全为核心卖点的主流安卓分支系统，长期面向注重信息安全的用户群体。此次表态意味着该项目正从单纯的系统镜像分发向与硬件厂商合作、进入主流零售渠道的方向迈进。该消息引发了安全社区与隐私爱好者群体的广泛关注，帖子中与信息安全领域相关用户进行了互动讨论。目前具体内容尚待进一步披露，但这一信号预示着GrapheneOS正逐步走向更广泛的消费市场，有望让隐私保护成为更多普通用户的默认选择。

---

## 28. 苹果在iOS中植入持久性"广告"横幅，用户怒不可遏

**原文标题**: Apple has added persistent 'ads' to iOS, and it's driving users crazy

**原文链接**: [https://www.techradar.com/phones/iphone/i-wish-apple-would-just-stop-that-crap-apple-has-added-persistent-ads-to-ios-and-its-driving-users-crazy](https://www.techradar.com/phones/iphone/i-wish-apple-would-just-stop-that-crap-apple-has-added-persistent-ads-to-ios-and-its-driving-users-crazy)

摘要：苹果近期在iOS"设置"应用顶部插入了推广自家服务的横幅，内容涉及iCloud+付费存储、Apple Music与Apple TV免费试用、AppleCare+延保等。这些横幅普遍无法彻底关闭，部分甚至没有"移除"按钮，或按钮形同虚设，可能持续数周乃至数月，期间"设置"图标还挂着通知角标。用户购入iPhone Duo、iPhone 18 Pro等新品后，推广推送尤为密集。

社交媒体上用户怨声载道，有人将其比作微软在Windows开始菜单植入广告的行为，直呼"令人作呕"。批评者认为，苹果一直以高端用户体验为品牌核心，在系统中反复推销有损品牌调性，用户刚花高价购机后更显"锱铢必较"。

但此举背后是苹果对服务业务的持续加码。在硬件市场增长趋缓的背景下，苹果将重心转向iCloud、Apple Music等服务以寻找新增长点。此外，部分推广（如iCloud+）疑似系统bug，已订阅用户仍被推送，苹果是否会修复尚不明朗。分析指出，随着服务战略推进，未来Visual Intelligence等新功能中或嵌入更多广告，苹果短期内不会改变策略。

---

## 29. 电子烟成瘾者尝试新方式戒瘾：转抽香烟

**原文标题**: People hooked on vapes try a new way to quit: cigarettes

**原文链接**: [https://www.bloomberg.com/news/articles/2026-09-18/to-quit-vaping-some-are-starting-to-smoke](https://www.bloomberg.com/news/articles/2026-09-18/to-quit-vaping-some-are-starting-to-smoke)

由于无法访问该文章链接，无法提供摘要。

---

## 30. 通过AI代理迭代优化写出极速Rust代码

**原文标题**: Writing Rust code that's fast by asking agents to make the code faster

**原文链接**: [https://minimaxir.com/2026/09/agentic-iteration/](https://minimaxir.com/2026/09/agentic-iteration/)

本文展示了通过AI代理迭代优化Rust代码以获取极致性能的方法。作者历经数月实验，从Opus 4.5一路迭代至GPT-6 Astra，验证了agentic LLM可显著加速现有算法。核心方法：使用criterion基准测试工具，设定量化加速目标（如每次迭代至少提升1.2倍），要求代理持续优化至性能收敛。在UMAP降维算法上，代理运用SIMD运算、函数融合、循环展开、中间缓存等技术，最终比Python版umap-learn快4–15倍；经多轮模型迭代，累积加速达7.5–32倍。该管线同样适用于梯度提升树、MLP、图网络及模板引擎、HTML解析、Web服务器等场景。文章强调提示词工程至关重要：模糊的"写更快"指令会让代理堆砌无用功能，而精确的量化目标才能驱动有效优化。防作弊方面，作者通过AGENTS.md约束代理行为，包括禁止并行运行基准测试、禁止篡改测试参数、禁用target-cpu=native，并统一要求使用criterion标准工具。同时设置质量门禁，将代理输出与已知正确实现对比，确保速度提升不以正确性为代价。

---

