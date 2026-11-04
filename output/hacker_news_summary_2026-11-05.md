# Hacker News 热门文章摘要 (2026-11-05)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. 人工智能正倒逼行业偿还四十年技术债务

**原文标题**: AI is forcing us to pay off 40 years of technical debt

**原文链接**: [https://spectrum.ieee.org/ai-in-cybersecurity-php2shell-vulnerability](https://spectrum.ieee.org/ai-in-cybersecurity-php2shell-vulnerability)

摘要：IEEE Spectrum计算与硬件编辑Dina Genkina在2026年11月的文章中指出，人工智能的爆发式发展正迫使整个技术行业直面并清偿累积长达四十年的技术债务。所谓技术债务，是过去数十年间软件与基础设施领域为追求开发速度而选择捷径所遗留的系统性问题——包括架构陈旧、代码不规范、遗留系统缺乏维护文档等。文章认为，AI大规模落地与部署对这些"老旧底子"提出了极高要求：训练和运行大模型需要高度结构化、可维护、低耦合的代码环境与计算基础设施，而大量依赖过时语言、非标准化接口和手工维护的旧系统根本无法承载现代AI工作负载。在AI竞赛的紧迫时间线下，企业已无法继续"带病运行"，不得不投入大量资源进行代码重构、系统迁移和基础设施现代化。文章强调，这一轮技术债务清偿并非自愿选择，而是AI时代的外部压力所倒逼的刚性转型，其代价高昂但不可避免。该视角为理解当前企业IT战略中"安全现代化"与"AI就绪化"并重的趋势提供了深层逻辑。

---

## 2. Go 全新 JSON API

**原文标题**: A new Go API for JSON

**原文链接**: [https://go.dev/blog/jsonv2](https://go.dev/blog/jsonv2)

Go 1.27 正式发布了 encoding/json/v2 与 encoding/json/jsontext 两个新包，旨在解决旧版 encoding/json 长期存在的行为缺陷、API 不足与性能瓶颈。旧版存在无效 UTF-8 静默通过、接受重复键名、nil 切片/映射序列化为 null 引发跨语言兼容问题、大小写不敏感匹配及缺乏流式处理等缺陷。新架构将 JSON 处理分为语法层（jsontext，提供真正流式的 Encoder/Decoder）与语义层（json/v2，负责 Go 值与 JSON 值的转换）。新版 API 以选项为一等参数，大幅提升灵活性；新增 MarshalerTo 和 UnmarshalerFrom 流式接口，避免旧版 MarshalJSON/UnmarshalJSON 的双重解析与强制内存分配；并支持调用方通过 WithMarshalers 等函数为任意类型指定自定义序列化逻辑。行为方面，v2 默认拒绝无效 UTF-8 和重复键名、将 nil 切片/映射序列化为空数组/对象、采用大小写敏感匹配、重新定义 omitempty 语义。性能上，序列化速度与 v1 基本持平，反序列化性能提升最高达 10 倍。

---

## 3. Ripple-65B Preview：美国开源权重智能体编程新标杆

**原文标题**: Ripple-65B Preview: U.S. Open-Weight SOTA on Agentic Coding

**原文链接**: [https://www.ricursive.com/ripple](https://www.ricursive.com/ripple)

摘要：Ricursive Intelligence发布开源模型Ripple-65B Preview，在智能体编码基准TerminalBench 2.1上取得80.52分，刷新美国开源权重最先进纪录，显著超越Reflection Beam 501B、Meta Muse Spark等更大参数模型。模型基于12万亿tokens预训练，支持百万级上下文，采用80层稠密Transformer架构而非MoE，兼顾推理性能与低延迟生成，可高效运行于NVIDIA DGX Spark等本地设备。成本上，全程研发仅耗资3200万美元，为前代开源SOTA的十分之一。团队未外购后训练数据，自建合成数据管线与质量过滤体系，通过精心迭代的SFT与强化学习方案，仅用140万条rollout即达80.5分，较前代SOTA减少约70倍。架构采用"窄而深"设计，引入门控注意力、全局NoPE、值残差等技术，经多轮模型阶梯实验，累计将编码计算效率提升16倍。公司定位为全栈AI实验室，核心目标是实现模型与芯片的协同自改进，内部版本已驱动其AI芯片设计平台。模型现已在Hugging Face、Together AI、OpenRouter等平台上线。

---

## 4. 昆虫不再趋附LED灯

**原文标题**: Insects Don't Swarm at LED Lights

**原文链接**: [https://www.birdsoutsidemywindow.org/2026/11/03/insects-dont-swarm-at-led-lights/](https://www.birdsoutsidemywindow.org/2026/11/03/insects-dont-swarm-at-led-lights/)

过去，昆虫被户外灯光大量吸引的现象司空见惯，昆虫学家常借助光源与白布采集夜间昆虫。然而随着LED灯普及，这一现象正悄然消失。罗兰·拉姆回忆，童年时家中白炽灯前昆虫云集，壁虎也随之而来捕食；换成LED后，昆虫骤减，壁虎也消失不见。科学上，飞行昆虫依靠月光中的紫外线辨别方向、维持飞行姿态。白炽灯等传统光源会发射紫外线，使昆虫误以为是月光而不断盘旋聚集；而LED灯几乎仅发出可见光，不含紫外线，对昆虫的吸引力大幅降低。2016年英国布里斯托尔大学的实验证实，冷白与暖白两种LED吸引的昆虫数量均显著少于白炽灯和荧光灯，且两类LED之间无显著差异。昆虫趋光性下降对生态环境而言是利好消息——夜间人工光源对昆虫的干扰已被认为是全球昆虫种群衰退的重要原因之一，LED不发射紫外线的特性有助于减轻光污染对野生动物及食物链的干扰，也有望降低虫媒疾病的传播风险。

---

## 5. 大语言模型可证明推理的研究进展

**原文标题**: Progress on provable inference for large language models

**原文链接**: [https://www.anthropic.com/research/provable-inference](https://www.anthropic.com/research/provable-inference)

摘要：本文介绍Anthropic联合EPFL等机构在"可证明推理"（PI）领域的最新进展，核心成果为开源系统FlashProve。针对用户无法验证AI响应确实来自指定模型的问题，该系统采用zkSNARK（零知识简洁论证）技术，使模型提供方在隐藏权重的前提下，向用户提交可快速验证的密码学证明。在400B参数混合专家模型（Llama 4 Maverick，4-bit量化）上，单张H100 GPU每秒可生成约110个token的证明，证明大小约19MB/1024 tokens，速度为通用推理库vLLM的70–95倍，远超以往开源方案。系统分离线提交权重承诺与在线生成推理证明两阶段，保证证明的完备性与可靠性。作者还以Lean形式化语言对顶层安全保证进行了可审计的形式化验证，并配套交互式定理可视化工具。应用场景涵盖四方面：AI发展节奏监管、推理服务器篡改检测、文本溯源（如验证代码确实经前沿模型审查）、以及合规模型审批。项目以Apache 2.0协议开源了代码（含C++快速验证器与Lean验证器）、技术报告及协议规范，旨在推动PI技术生态发展，兼具AI安全与监管意义。

---

## 6. 高通云AI 100 Ultra——150W AI加速卡，搭载128GB内存与548GB/s带宽

**原文标题**: Qualcomm Cloud AI 100 Ultra – 150W AI Accelerator Card with 128GB at 548GB/s

**原文链接**: [https://www.qualcomm.com/data-center/products/cloud-ai-100-ultra](https://www.qualcomm.com/data-center/products/cloud-ai-100-ultra)

摘要：高通（Qualcomm）发布Cloud AI 100 Ultra，这是一款面向数据中心的高性能AI推理加速卡。该产品单卡功耗为150W，配备128GB大容量内存，内存带宽高达548GB/s，旨在为云端AI推理工作负载提供强大算力支撑。作为高通云AI系列的旗舰型号，Cloud AI 100 Ultra主打高吞吐、低延迟的推理性能，适用于大语言模型生成、多模态推理及大规模并发推理等场景，帮助企业在有限功耗预算内最大化AI加速效率。该产品体现了高通在云端AI基础设施领域的持续投入，为其客户提供从边缘到云端的全场景AI加速方案。

---

## 7. Nvidia RTX Spark 加密固件致 Linux 推理速度降至 35%

**原文标题**: Nvidia RTX Spark encrypted firmware slows inference speed to 35% on Linux

**原文链接**: [https://www.mindstudio.ai/blog/linux-nvidia-rtx-spark-laptop](https://www.mindstudio.ai/blog/linux-nvidia-rtx-spark-laptop)

摘要：RTX Spark平台（MSI Prestige、Asus ProArt、Dell XPS等）搭载与DGX Spark同款GPU及最高128GB统一内存，面向AI开发者。双装Linux（如Omarchy）可行，桌面、4K 120Hz输出与GPU加速均可用，但插电后GPU频率被锁在约780MHz，而Windows下可达2.2GHz。实测GPT-OSS-120B推理：Windows 65.4 token/s，原生Linux仅13.9，性能缩水约65%。根源在于Windows专属的"Nvidia平台控制器与框架"管理CPU与GPU功率共享，其功率表经加密，仅Windows驱动可解密，Linux无法读取。有趣的是，拔掉电源后Linux性能反趋近Windows（61–67 token/s），问题仅在插电时出现，排除散热因素。内存方面，128GB统一内存默认将96GB划给GPU，仅Windows端可调整，Linux需先在Windows中释放。目前WSL是最佳折中方案，它运行于Windows驱动层，继承GPU满频加速，同时支持vLLM等Linux原生AI工具。彻底修复取决于Nvidia将平台控制器的功率管理逻辑移植至Linux驱动，否则原生Linux体验将持续受限。

---

## 8. AMD 预计第四季度营收将首次超越英特尔

**原文标题**: AMD expects to outsell Intel in Q4 for the first time in history

**原文链接**: [https://www.tomshardware.com/pc-components/cpus/amd-expects-to-outsell-intel-in-q4-for-the-first-time-in-history-usd17b-guidance-would-exceed-intels-projections](https://www.tomshardware.com/pc-components/cpus/amd-expects-to-outsell-intel-in-q4-for-the-first-time-in-history-usd17b-guidance-would-exceed-intels-projections)

AMD 公布第三季度财报，营收达 133.77 亿美元，创公司历史新高，同比增长 45%。数据中心业务贡献 85.5 亿美元，占总营收 64%，同比大增 97%，主要受益于 Epyc 服务器处理器需求强劲及 Instinct MI455X AI 加速器的推出，Meta、微软、OpenAI、Oracle 等已部署其 Helios 机架级系统。最引人注目的是，AMD 预计第四季度营收约 170 亿美元（同比增 66%），而英特尔同期预期为 150 至 160 亿美元，这意味着 AMD 季度销售额将史上首次超越英特尔，差距约 15 亿美元。与此同时，客户端与游戏业务营收为 37.22 亿美元，同比下降 8%，游戏产品因主机 SoC 订单减少及独立显卡需求疲软而大幅下滑。公司预计 2027 年 PC 出货量将两位数下跌，但仍计划在企业及高端消费领域保持优势。嵌入式业务营收同比增长 29% 至 11.1 亿美元，受益于航空航天、汽车及通信需求。AMD 展望 2027 年数据中心业务占比将超总营收 80%，服务器及 AI 加速器收入将大幅翻倍，成为公司增长的核心引擎。

---

## 9. 几乎没有人在用AI代理下DoorDash点餐订单

**原文标题**: Basically no one is using AI agents for their DoorDash orders

**原文链接**: [https://arstechnica.com/ai/2026/10/doordash-says-outside-ai-agents-have-only-led-to-hundreds-of-orders-so-far/](https://arstechnica.com/ai/2026/10/doordash-says-outside-ai-agents-have-only-led-to-hundreds-of-orders-so-far/)

DoorDash CEO Tony Xu在第三季度财报电话会上透露，AI代理在其平台上仅产生"数百单"，与当季近十亿总订单相比几乎可以忽略不计。Xu坦言这是"极低频使用场景"，并指出AI代理更适合复杂的高决策成本购买，而点餐这类简单任务，用户仍倾向于直接打开App完成。客观而言，DoorDash的第三方AI接入（MCP连接器）上线不足一个月，目前仅向少量早期合作伙伴开放，主要用于简化企业团餐场景。不过，DoorDash自营的"Ask DoorDash"AI助手数据亮眼：购物车构建速度提升五倍，客单价高出近50%，商品种类多约60%，且近半数订单流向用户此前未尝试过的本地餐厅。文章将当前AI代理点餐的早期阶段类比1994年Pizza Hut首次试水在线订餐，暗示多年后这一方式或将成为主流。Xu态度务实："我不逆技术大势，但也不会自欺欺人。"

---

## 10. OpenAI将收购皮埃尔计算机公司

**原文标题**: OpenAI to acquire Pierre Computer Company

**原文链接**: [https://openai.com/index/openai-to-acquire-pierre/](https://openai.com/index/openai-to-acquire-pierre/)

无法访问该文章链接

---

## 11. 腾讯混元4

**原文标题**: Tencent Hy4

**原文链接**: [https://hy.tencent.ai/research/hy4](https://hy.tencent.ai/research/hy4)

无法访问该文章链接

---

## 12. 我是否与一名杀人犯成了朋友？

**原文标题**: Have I Befriended a Murderer?

**原文链接**: [https://longreads.com/2026/11/03/murder-friendship-doubt/](https://longreads.com/2026/11/03/murder-friendship-doubt/)

英国作家爱德华·史密斯因一次偶然的档案浏览，接触到北约克郡村民罗宾·加布特及其妻子黛安娜的谋杀案。2010年，罗宾被控伪造现场、以虚构的抢劫掩盖杀害妻子的罪行，经陪审团多数决被判终身监禁。黛安娜被发现时伤痕触目惊心，但罗宾始终坚称无辜，其家人与上百名村民为他建立了支持网站，奔走申诉。

作者通过监狱通信系统与罗宾建立联系，后驾车前往监狱会面。罗宾表现得温和、耐心、不卑不亢，然而作者内心充满矛盾——无法判断这份真诚是真心流露还是精心伪装。此后两人每周通话，罗宾漫长的翻案之路成为作者生活中一个固定的坐标。

然而英国刑事案件审查委员会多次驳回其申请。案件存在关键疑点：检方以邮储系统数据认定罗宾存在盗窃动机，但该"地平线"软件后来被证实存在大规模缺陷；证人证称在早上6:45听到黛安娜从楼梯方向呼唤丈夫，与检方认定的凌晨死亡时间窗口矛盾逾一个半小时，但陪审团未予采信。

文章以第一人称细腻书写了作家与囚犯之间逐渐萌生的友谊，同时叩问一个伦理困境：在真相未明之际，理解与同情是否已构成某种共谋？

---

## 13. 朝鲜假招聘面试引发63亿美元币安黑客案

**原文标题**: North Korean fake job interview led to $6.3B Binance heist

**原文链接**: [https://www.theregister.com/security/2026/11/03/north-korean-fake-job-interview-led-to-63b-binance-heist/5307398](https://www.theregister.com/security/2026/11/03/north-korean-fake-job-interview-led-to-63b-binance-heist/5307398)

摘要：据报道，朝鲜方面通过伪造求职招聘面试的方式渗透目标组织，最终策划并实施了一起针对加密货币交易所币安（Binance）的大规模网络攻击，涉案金额高达63亿美元。这一事件揭示了朝鲜黑客组织利用社会工程学手段——即以虚假职位诱骗求职技术人员——作为突破口，进而瓦解安全防护体系的作案模式。文章以一句"我们还能分辨真假吗？"作结，引发人们对网络时代中人类判断力与信息辨识能力的深切反思，警示在深度伪造与精心伪装日益普遍的背景下，传统的安全防线正面临前所未有的挑战。该事件也凸显了朝鲜作为国家级网络威胁行为体对全球数字经济与金融基础设施的严重威胁。

---

## 14. 游击自行车道：旧金山将违规设施转为永久

**原文标题**: Guerrilla bike lanes: San Francisco makes illicit infrastructure permanent (2016)

**原文链接**: [https://99percentinvisible.org/article/guerrilla-bike-lanes-san-francisco-makes-illicit-infrastructure-permanent/](https://99percentinvisible.org/article/guerrilla-bike-lanes-san-francisco-makes-illicit-infrastructure-permanent/)

2016年，旧金山两名骑行者因肇事逃逸遇难后，匿名活动组织"旧金山转型机构"（SFMTrA）以交通锥搭建临时受保护自行车道，随后又在约翰·F·肯尼迪大道路侧违规安装软性路桩。与以往此类"战术城市主义"干预多被市政拆除不同，旧金山交通局此次选择将其合法化，计划安装正式路桩并保留临时设施至审批完成。文章还回顾了其他城市案例：西雅图"礼貌市民"组织安装路桩后一度被拆，交通部门最终主动恢复；纽约"Right of Way"组织更在夜间自行涂画整条自行车道，起因是一起出租车撞人事故。此类游击式干预引发多元反响——活动者或受社区赞誉，或面临拘捕与罚款；但同时也为城市提供了公开支持公共空间转型的契机。旧金山近年已建成27英里受保护自行车道，此次将违规设施转为永久，释放出积极回应市民安全诉求、拥抱城市进步的信号。

---

## 15. 验证非知识：科学不止于答案

**原文标题**: Verification Is Not Knowledge: Science needs more than answers

**原文链接**: [https://blog.cosmos-institute.org/p/verification-is-not-knowledge](https://blog.cosmos-institute.org/p/verification-is-not-knowledge)

摘要：本文是Jessica Hullman的评论文章，探讨AI时代科学的核心张力：可验证的正确输出与人类理解之间的关系。作者指出，将科学等同于"产出可验证答案"是危险简化——验证不等于知识。文章追溯其根源：冷战时期形成的"价值无涉理想"将科学限定为纯粹认识标准的运用，排斥伦理与社会价值，使人将理解视为可选的"心理状态"，而非知识生产的内在环节。作者以陶哲轩的"AI癌症治疗"思想实验和arXiv上AI生成论文为例，强调出错时无人能解释或问责，科学即丧失纠错能力。她进一步论证，选择研究什么问题、发展"认识论品味"本身是价值驱动的实践；若AI取代人类判断，科学将沦为"无提问的解答"，失去服务人类目标的能力。在认识论层面，文章援引Longino与Brandom指出，科学知识的客观性依赖批评性对话与社群互动，同行评审并非低效的事实核查，而是知识生产的核心机制；即使AI能可靠地产出真命题，缺乏人类理解与问责仍不构成真正的知识。

---

## 16. 拉取请求、Git 操作及 Issues 服务故障事件

**原文标题**: Incident with Pull Requests, Git Operations and Issues

**原文链接**: [https://www.githubstatus.com/incidents/smtdswd1h2w4](https://www.githubstatus.com/incidents/smtdswd1h2w4)

2026年11月4日，GitHub 发生了一起影响多项核心服务的故障。事件于当日 09:49 UTC 开始，最初排查 Git 操作、Issues 和 Pull Requests 的性能下降问题。随后 09:50，GitHub Actions 出现性能降级；09:53，Pull Requests 可用性降低；11:11，API 请求性能进一步恶化；11:17，确认存在错误率升高和间歇性服务中断，部分请求可能失败或延迟。11:30，API 请求、Git 操作、Issues 与 Pull Requests 的降级问题得到缓解；11:43，Actions 的恢复也被确认。11:50 UTC，GitHub 正式宣布事件已解决，并承诺后续提供详细根因分析。此次故障共涉及 Git 操作、API 请求、Issues、Pull Requests 及 Actions 五项服务，持续约两小时。用户可通过 GitHub 状态页面及邮件、短信、Slack、Webhook 等渠道获取事件更新。

---

## 17. Kimi K3.1 Pro 开源权重正式发布

**原文标题**: Kimi K3.1 Pro model weights are out

**原文链接**: [https://huggingface.co/moonshotai/Kimi-K3.1-Pro](https://huggingface.co/moonshotai/Kimi-K3.1-Pro)

月之暗面发布Kimi K3.1 Pro开源权重，为K3.1系列首个模型，亦是迄今最强的3T级原生多模态智能体模型。该模型基于Kimi K3，经数百领域大规模联合强化学习后训练，支持文本与图像输入，具备100万token上下文窗口。架构采用MoE设计，总参数2.8T、激活参数104B，共93层、896个专家（每token选16个），注意力机制为KDA与门控DSA组合，视觉编码器为MoonViT-V2。评测显示，K3.1 Pro在编码（Terminal-Bench 4.0达65.7）、智能体任务（HLE-Full工具增强达70.0）、多模态推理（GPQA-Diamond达94.2）及金融、法律、3D设计等场景均具竞争力，多项指标对标或超越Claude Opus 5.5、GPT-6 Astra等闭源模型。模型已上线Kimi平台API，兼容OpenAI/Anthropic接口，推荐搭配vLLM、SGLang、TokenSpeed部署，推理努力支持low/high/max三档。以专属Kimi K3.1 Pro许可证发布。

---

## 18. 【Show HN】我开发了一款预装电脑逐件估价工具

**原文标题**: Show HN: I built a tool that prices a prebuilt PC part by part

**原文链接**: [https://pcdealcheck.com/](https://pcdealcheck.com/)

PC Deal Check 是一款面向普通消费者的预装电脑性价比检测工具，目前处于公测阶段。用户只需粘贴零售商商品链接或上传价格与规格照片，AI 即可自动识别主机中的主要硬件部件，再由自研定价引擎将整机报价与各部件市场参考价逐一对比，最终给出性价比评级。流程分三步：导入报价→查看价值→获取报告。报告包含综合评级、各部件报价日期及比价链接，支持分享、打印或邮件转发，全程无需硬件知识，也无需注册账号。目前面向美国用户免费开放，仅收录美国零售商数据。示例中，一台标价 1,399.99 美元的 PowerSpec G531 因部件估价约 1,569 美元而获得 A 级评分。作者强调工具仍在迭代，功能与评分标准可能随版本更新调整，并已公布反馈邮箱。

---

## 19. Evergreen：一种可证明安全的系统编程语言

**原文标题**: Evergreen: A Provably Safe Systems Language

**原文链接**: [https://evergreenlang.net](https://evergreenlang.net)

Evergreen 是一种追求"可证明安全"的系统编程语言，其核心理念是将不变量直接嵌入代码本身。前置条件、后置条件与数据不变量不再作为独立规范，而是紧邻其所约束的代码，成为编译器在编译期必须验证的形式化义务。以整数自增函数为例，开发者可在函数签名处声明前置条件"n < usize::MAX"以防溢出，并声明后置条件"result > n"确保结果正确，编译器随后自动验证这些条件在所有执行路径上均成立。这种设计将安全性证明从运行时前移至编译时，从根本上消除因边界或不变量被违反而引发的内存与逻辑错误。Evergreen 让不变量"活在代码里"，使形式化验证不再是独立的附加流程，而是融入日常编码的自然实践，显著降低了安全编程的门槛。

---

## 20. 果冻薄片

**原文标题**: Jelly Sheet

**原文链接**: [https://mrdoob.github.io/codevember-2026/01/](https://mrdoob.github.io/codevember-2026/01/)

无法访问该文章链接

---

## 21. Conductor 将并入 Meta

**原文标题**: Conductor Is Joining Meta

**原文链接**: [https://www.conductor.build/announcement](https://www.conductor.build/announcement)

摘要：Conductor团队宣布，其产品将加入Meta。Conductor于2025年7月推出，是当时领先的AI编程代理工具，支持单个及多代理协作编写代码。如今Meta公布了下一代界面的大型规划，预览版预计明年年初上线，体验将远胜当前版本。在此之前，Conductor本地版将正常服务，但Conductor Cloud将于未来数周内停止运营，团队已提供一键迁移方案，将云端工作区转入本地使用，并开放专用邮箱为用户答疑。作者Charlie代表团队向所有早期支持者致谢，感谢用户在概念尚属前沿时选择信任并陪伴Conductor成长。

---

## 22. 让用户信任自有MCP客户端，同时防范钓鱼攻击

**原文标题**: Letting users trust their own MCP clients, without opening a phishing hole

**原文链接**: [https://streamvessel.com/blog/mcp-trusted-redirect-uris](https://streamvessel.com/blog/mcp-trusted-redirect-uris)

MCP客户端经OAuth注册时，服务器面临两难：固定白名单使用户自建客户端无法接入，允许任意重定向URI则使攻击者注册伪造客户端（如伪装"Claude"），以钓鱼链接诱导用户点击批准，实现账户接管。2026年5月研究显示119个MCP服务器中95.8%接受任意重定向URI，Square等已遭实际攻击，PKCE无法防御因攻击者发起整个流程。Stream Vessel提出"每用户、登录时决定"的信任机制：注册阶段接受任意HTTPS地址，授权阶段（已知用户身份）才校验该地址是否受该用户信任，每用户上限10个精确HTTPS地址。核心安全措施包括：仅浏览器会话可修改列表；添加须手动输入主机名；同意页显示本次重定向地址及信任依据；每次添加发送邮件通知；移除即撤销全部授权及在途授权码；拒绝浏览器与解析器对主机名解读不一致的地址；仅精确匹配，无通配符。所有响应含错误均仅在受信任地址间重定向，消除开放重定向漏洞。该方案无法阻止社会工程学攻击，但通过多重摩擦将风险降至最低。

---

## 23. 为电子表格添加窗口函数

**原文标题**: Adding Window Functions to a Spreadsheet

**原文链接**: [https://www.getgrist.com/blog/running-totals-you-dont-have-to-chase/](https://www.getgrist.com/blog/running-totals-you-dont-have-to-chase/)

传统电子表格中，运行余额公式依赖"上一行"的物理位置，插入或删除行后引用即错乱或报错。Airtable、Notion 等工具缺乏"上一行"概念，只能回避；SQL 窗口函数虽能解决却面向开发者。Grist 提出 PREVIOUS(rec, order_by="Date") 函数，在公式中显式声明排序依据，使"上一条记录"按业务逻辑而非物理行定位，增删行或切换视图后余额均自动重算。配合 group_by 可轻松实现按持卡人分组的多列累计余额。NEXT() 与 RANK() 分别提供向后查找与排名能力。此外，通过 lookupRecords() 搭配 find() 实现有序近似匹配，一次性覆盖薪资查找、佣金档次、税率累进、运费分级等场景，无需手动排序。性能上，有序查找采用二分检索，两万条记录的运行余额仅需数秒完成，而全表扫描需五分钟以上。Grist 公式基于 Python，用户可手写逻辑，但内置函数兼顾简洁与高效，真正做到公式即意图、数据自校准。

---

## 24. Kitty 0.50 更新日志

**原文标题**: Kitty 0.50

**原文链接**: [https://sw.kovidgoyal.net/kitty/changelog/#](https://sw.kovidgoyal.net/kitty/changelog/#)

Kitty 是一款功能丰富、跨平台的 GPU 加速终端模拟器。0.50 版本（2026-11-03）带来两大核心特性：一是**停靠窗口**，可将窗口停靠至其他窗口或标签页边缘，适用于状态栏、文件树等场景，并随宿主窗口移动与关闭，支持会话保存；二是**注销后恢复**，注销、重启或关机时自动保存全部窗口、标签页及滚动缓冲，下次启动完整还原，macOS 下经钥匙串加密。此外还新增标签页命名工作区、Wayland 触屏支持、GNOME 原生窗口装饰、光标轨迹粒子着色器、图形协议索引色彩格式、程序状态协议（OSC 7501）、明暗主题自动切换、布局边框对齐、滚轮控制字号、超链接提示定位、会话保存窗口位置等改进。回顾历史，kitty 还陆续引入自定义着色器（0.49）、吞吐量提升 15–35% 的性能优化（0.49）、垂直标签页（0.48）、跨程序拖放（0.47）、平滑滚动与标签拖拽（0.46）、快速文件选择器（0.45）、多光标与会话管理（0.43）、Quake 风格浮动终端（0.42）、多尺寸文本（0.40）、可变字体（0.36）及 Wayland 全面支持（0.34）等重要功能。

---

## 25. 从野性到温顺：友好狐狸脑区发生显著变化

**原文标题**: From wild to mild: Friendly foxes show changes in brain region

**原文链接**: [https://news.cornell.edu/stories/2026/11/wild-mild-friendly-foxes-show-changes-brain-region](https://news.cornell.edu/stories/2026/11/wild-mild-friendly-foxes-show-changes-brain-region)

摘要：康奈尔大学科学家在《当前生物学》期刊发表论文，揭示了狐狸驯化过程中的脑部神经变化。团队对比了驯化、攻击型及野生三类银狐大脑，发现脑基部的腹内侧下丘脑——与攻击性、母性本能及社会行为密切相关——在温顺狐狸中发生了明显改变。研究依托1950年代末西伯利亚的经典实验：俄罗斯遗传学家从银狐中定向选育友好个体，仅六代即获得主动亲近人类的狐狸，并伴随垂耳、短吻等驯化外貌特征。团队利用荧光RNA技术对九份大脑薄切片进行分析，发现与小鼠攻击回路相关的雌激素受体α表达神经元在驯化狐狸下丘脑中数量显著减少，验证了驯化与攻击性降低之间的神经关联。该研究表明，环境选择压力可在极短时间内重塑脑结构，为理解动物驯化的神经机制提供新视角。后续研究将探索基因突变如何影响特定神经元的发育。论文第一作者为贾里德·克莱恩，通讯作者为分子生物学副教授马克恩斯科夫-帕帕德米特利乌，共同作者来自伊利诺伊大学和俄罗斯科学院，研究由康奈尔大学脊椎基因组中心资助。

---

## 26. Benchfmt.rs：将 Go 的基准测试与 benchstat 工作流引入 Rust

**原文标题**: Benchfmt.rs: Bringing Go's benchmarking and benchstat workflow to Rust

**原文链接**: [https://www.bwplotka.dev/2026/rust-microbenchmarks-benchstat/](https://www.bwplotka.dev/2026/rust-microbenchmarks-benchstat/)

摘要：作者 Bartek Płotka 开发了零依赖工具 benchfmt.rs，为 Rust 微基准测试提供兼容 Go benchstat 的工作流，支持 /key=value 多维投影、每操作堆分配追踪（B/op、allocs/op）及 pprof 性能分析。文章以 varint 解码和 Prometheus Remote Write 2.0 解码为用例，在 Go（golang/snappy + vtprotobuf）与 Rust（snap + prost/Criterion）两端实现并对比。作者在 Intel Xeon 2.20GHz 平台上以 24 线程、6 轮 2 秒稳态运行，展示 benchstat 多维透视表格中 Rust 几何平均快约 22.9%（吞吐量提升约 29.7%）。同时，文章深入剖析了 Criterion 框架的四大短板：引入 42 个传递依赖增加约 19 秒冷编译；线性递增采样模型与 Go 稳态纪元在方差和计时器开销上产生可测量偏差；缺少堆分配度量；基线对比不支持多维表格透视。为此 benchfmt.rs 提供独立 CLI，可直接读取 Criterion 的 JSON 输出并转换为 benchstat 格式，无需改写基准代码即可实现跨语言对比，并附带 Criterion/libtest 到 Go benchfmt 格式的转换器，显著降低 Rust 生态 A/B 测试门槛。

---

## 27. Ladybird 2026年10月刊

**原文标题**: This Month in Ladybird – October 2026

**原文链接**: [https://ladybird.org/newsletter/2026-10-31/](https://ladybird.org/newsletter/2026-10-31/)

Ladybird 浏览器 2026 年 10 月进展显著。渲染层面，样式与布局移至独立线程，与 JavaScript 并行运行，CSS 动画及 :hover 在脚本阻塞时仍保持响应，据称无其他浏览器目前具备此能力。性能层面，LibJS 新增 JIT 编译器（x86-64/AArch64），WebAssembly 引擎全面重构，性能提升约 7 倍，JSLinux 启动 Alpine Linux 仅需 1.8 秒。兼容性方面，WPT 得分超越 Safari 技术预览版，月末达 218 万子测试，大量修复由 AI 编程代理完成。体验方面，完成首次全量 UI 设计，新增屏幕阅读器、画中画、拼写检查、权限请求及 DevTools 等功能。安全方面，强化沙箱机制，跨域 iframe 与弹窗获独立渲染进程，各站点使用独立网络进程。大量 C++ 代码已迁移至 Rust。Windows 端视频播放与 YouTube 已可用，硬件解码通过 Vulkan 在 Linux 运行。项目正筹备 alpha 发布，已提供多平台安装包与崩溃上报。

---

## 28. 历经十年逆向，我让DOS《沙丘战机》实现了双人合作

**原文标题**: Show HN: After a decade of reversing, I got co-op working in DOS Wing Commander

**原文链接**: [https://fireflyk64.github.io/wcmulti/](https://fireflyk64.github.io/wcmulti/)

摘要：作者与哥哥Patrick自幼梦想在经典DOS游戏《沙丘战机》中协作飞行。2015年，他利用DOSBox将640KB内存全量导出，通过静止与移动状态的快照对比，在64KB数据段中锁定玩家坐标（A9C2）、速度（CAE2）及方向向量（AEB6/B1B6/B4B6）等关键地址，发现游戏以64个12字节槽位管理实体。2016年他编写自动差分工具定位旋转向量，逆向出物理更新与主循环调用链。同年末发现仅凭内存写入无法操控武器，遂转向函数Hook：利用Borland C++的overlay跳转桩表，在固定死字符串地址写入跳板代码，通过call far调用开火等函数。2017年设计TCP加Protobuf网络协议，实现逐帧位置同步与事件分发；同时解决overlay动态加载导致的栈帧遍历崩溃问题，改用含BP帧的标准函数桩。此后处理了临时对象槽位映射冲突，逐步实现爆炸、导弹与自动驾驶。2019年着手修复胜负判定。整个项目跨越十年，最终实现跨网络双人合作飞行。

---

## 29. 任天堂卡带供应商转向数据中心，实体游戏市场或将承压

**原文标题**: Nintendo's cartridge maker shifts focus to data centers, hurting physical media

**原文链接**: [https://kotaku.com/nintendo-switch-cart-rom-physical-media-data-centers-manufacture-2000753293](https://kotaku.com/nintendo-switch-cart-rom-physical-media-data-centers-manufacture-2000753293)

台湾半导体厂商华邦电子（Macronix）宣布逐步退出ROM芯片生产，将产能转向数据中心NOR闪存及NAND闪存领域。华邦电子是任天堂Switch游戏卡带的主要ROM芯片供应商，其CEO吴明辉在2026年第三季度财报中透露，数据中心对NOR闪存的需求是公司创纪录净利润（约3.37亿美元）的核心来源，而ROM销售收入同比下降达39%。ROM业务占比也从2025年第二季度的26%骤降至2026年第三季度的仅5%。不过，华邦电子并非Switch ROM芯片的唯一供应商，且Switch 2卡带采用的是日本ROHM半导体提供的NAND闪存，短期内不受影响。但对Switch 1实体卡带收藏者而言，核心供应商退出ROM领域仍是潜在隐患。金融分析师David Gibson指出，截至2026年二季度末，任天堂数字版游戏已占软件总销量的61.5%，较2025年底增长2.2个百分点，实体游戏的式微趋势愈发明显。

---

## 30. PostgreSQL 内部机制详解

**原文标题**: The Internals of PostgreSQL

**原文链接**: [https://www.interdb.jp/pg/index.html](https://www.interdb.jp/pg/index.html)

本文为日本工程师铃木铁人（Hironobu SUZUKI）自2015年9月起持续维护的PostgreSQL内核技术文档，旨在深入解析各子系统运作原理，帮助读者建立对PostgreSQL的整体架构认知。文档共12章，涵盖数据库集群与表结构、进程与内存架构、查询处理、外部数据包装器（FDW）、并发控制、VACUUM处理、HOT与仅索引扫描、缓冲区管理器、预写日志（WAL）、在线备份与时间点恢复（PITR）、流复制及逻辑复制（Beta版）等核心主题，内容覆盖至PostgreSQL 19-beta。文档持续更新逾十年（最近一次更新于2026年10月），曾被学术论文引用，2019年出版中文版。作者曾任日本PostgreSQL用户组理事长（2010–2016），累计发表7本数据库与系统集成领域书籍。使用条款方面，教育机构可自由引用；商业用途需签订20%收益分成协议或全版权买断（500万欧元）。作者目前已恢复国际求职状态，寻求AI与数据库技术结合的远程职位，偏好欧洲、南半球及东南亚地区的岗位或提供签证赞助的机会。

---

