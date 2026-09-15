# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-09-16.md)

*最后自动更新时间: 2026-09-16 04:57:26*
## 1. 发布"系统一模型"与Jev

**原文标题**: Introducing System One Models and Jev

**原文链接**: [https://typesafe.ai/blog/introducing-system-one-models-and-jev](https://typesafe.ai/blog/introducing-system-one-models-and-jev)

TypeSafe AI创始人Diogo Almeida（曾参与OpenAI ChatGPT相关研究）正式推出"系统一模型"——一类专为软件自动化设计的新型前沿模型，首款产品Jev即日开放早期体验。该模型采用全新架构、并行采样器及"校准决策强化学习（RLCD）"训练方法，放弃逐token文本生成，转而在单次查询中并行输出类型安全的结构化决策。Jev在系统一任务上达到与主流大模型相近的智能水平，但速度快两个数量级（70–500毫秒），输入成本仅0.042美元/百万token，输出近乎免费。其核心优势在于：输出结构预先定义、零类型错误、不产生幻觉，并附带校准置信度，可直接嵌入代码充当"模糊条件判断"。文章通过与GPT-5.6等模型的对比，在工作流评测、幻觉率、速度成本等维度展示Jev的显著领先，并发布Doom实时对战、Wiki竞速等演示，验证其"每秒智能"与低幻觉复合优势。名称"系统一"源自卡尼曼《思考，快与慢》，"Jev"致敬经济学家杰文斯及其悖论，寓意智能成本每降一个数量级即解锁更多用例。

---

## 2. Show HN：听声辨鸟、以19世纪版画风格呈现鸟类的墨水屏相框

**原文标题**: Show HN: An e-ink frame that hears birds and draws them as 1800s illustrations

**原文链接**: [https://github.com/arnegiacomo/fugleramme](https://github.com/arnegiacomo/fugleramme)

摘要：fugleramme 是一款基于树莓派的墨水屏鸟类相框。它通过麦克风采集鸟鸣，调用本地 BirdNET-Go 完成物种识别（全离线，无云端依赖），再将检测结果匹配至手工裁剪的19世纪自然历史版画插图，按鸟体质量大小排版于仿纸纹页面，最终渲染于 Inky Impression 13.3 英寸彩色墨水屏，仅在种类变化时刷新，兼顾省电与复古质感。项目收录800余幅、覆盖400多个物种的插图，均取自真实历史版画并经人工甄选，非AI生成；当前主要覆盖北欧、英伦及中欧物种。作者将设备架设于挪威卑尔根厨房窗边，实时呈现花园中的飞鸟。硬件含树莓派5、墨水屏、麦克风及A4相框，亦支持纯网页模式（HDMI或浏览器查看）。项目以MIT协议开源，支持Docker一键部署，已有BirdNET-Go实例可直接对接。灵感源于一幅WWF博物海报，目标是让观者透过这扇"电子窗"，以百年前的插画笔触欣赏身边的鸟语。

---

## 3. 时光机（Wayback Machine）访问服务更新公告

**原文标题**: An Update on Wayback Machine Access

**原文链接**: [https://blog.archive.org/2026/09/15/an-update-on-wayback-machine-access/](https://blog.archive.org/2026/09/15/an-update-on-wayback-machine-access/)

应广大用户反馈，互联网档案馆针对"时光机"近期频繁出现的访问问题发布最新通报。因平台近期遭受多波大规模自动化机器流量冲击，为保障服务稳定运行，官方已部署防护措施，其中包括对 HTTP 429（"请求过多"）错误拦截提示页面进行改版。然而，这些保护机制在拦截恶意爬虫的同时，也会偶发误伤正常用户，官方对此致歉并表示正在持续优化识别算法，以更好地区分滥用流量与日常依赖时光机的普通用户。若用户认为自身遭遇误封，可将操作系统、浏览器及 IP 地址发送至 info@archive.org，官方将予以核查处理。

---

## 4. 25分钟内攻入Baseten生产环境GitHub管理员权限

**原文标题**: We got admin access to Baseten's production GitHub in 25 minutes

**原文链接**: [https://www.strix.ai/blog/baseten-harbor-github-pat-takeover](https://www.strix.ai/blog/baseten-harbor-github-pat-takeover)

摘要：安全公司Strix在评估是否采用Baseten（估值130亿美元）作为AI推理服务时，将自主渗透代理Strix指向其域名进行黑盒测试。25分钟内，Strix从公开的Harbor容器仓库匿名拉取了baseten/baseten-app镜像，在镜像构建历史的created_by字段中发现一个2023年3月残留的GitHub个人访问令牌（basetenbot）。该令牌具有repo作用域，对Baseten核心产品仓库、驱动生产集群的GitOps仓库及Homebrew分发渠道拥有admin和push权限，对多个客户专属私有仓库有读写权限——意味着攻击者可篡改其推理平台源码、操控生产基础设施或发起供应链攻击。根因是构建时以Docker build arg传入GITHUB_TOKEN，凭据被永久写入镜像元数据，三年多未失效。文章建议：定期审计公开可拉取的镜像及构建历史，使用BuildKit密钥挂载替代构建参数传递凭据，为令牌设置最小权限与过期时间，并及时轮换旧令牌。Baseten安全团队响应迅速，次日即完成修复。作者强调，AI攻击者能沿相同路径在极短时间内发现高危漏洞，企业应常态化进行自主渗透测试。

---

## 5. Gemini 3.8 Live及扩展思维模型：打造更智能自然的语音交互

**原文标题**: Gemini 3.8 Live and 3.8 Live Extended Thinking

**原文链接**: [https://blog.google/innovation-and-ai/models-and-research/gemini-models/gemini-3-8-live-gemini-3-8-live-extended-thinking/](https://blog.google/innovation-and-ai/models-and-research/gemini-models/gemini-3-8-live-gemini-3-8-live-extended-thinking/)

谷歌于2026年9月15日发布Gemini 3.8 Live与3.8 Live扩展思维两款实时语音对话模型。前者侧重规模化与成本效率，融合对话智能、语音流畅度与视觉感知；后者面向高复杂度任务，具备多步推理能力，可在对话的同时并行思考。两模型在多项基准中表现突出，扩展思维版以82.6分领跑语音对语音质量指数，语音代理任务完成率亦居前列。核心亮点包括：近实时视觉输入处理、97种语言自动切换、后台执行工具调用与API请求而不中断对话，并通过"让我查一下"等早期语音提示及实时进度播报实现无缝交互。应用层面，开发者可通过Gemini API和AI Studio接入，企业用户可在Gemini企业平台及Google Workspace（Docs Live、Gmail Live、Keep Live）中使用，普通用户则通过Search Live和Gemini应用体验。Agora、LangChain、LiveKit等开发平台已完成适配，Salesforce等企业亦参与合作。所有AI生成音频均嵌入SynthID水印以保障内容透明度。

---

## 6. WangNet——1.8MB零依赖、11种语言Numberwang裁定引擎

**原文标题**: WangNet – 1.8 MB, zero-dependency Numberwang adjudication in 11 languages

**原文链接**: [https://github.com/GraafHenk/numberwang](https://github.com/GraafHenk/numberwang)

Numberwang是一款判定数字"是否为Numberwang"的虚构游戏。WangNet是一个仅1.8MB的超轻量神经网络，全部权重存于JSON文件，推理代码约100行纯Python标准库，无需PyTorch、NumPy等任何第三方依赖，Python 3.8+即可运行。模型支持11种语言，可识别数字、文字、算术表达式、罗马数字、序数、货币、时间乃至虚构数字，输出四种裁定结果：非Numberwang、Numberwang、非数字本身、Wangernumb。架构为：字符→32维嵌入→两层一维卷积（ReLU）→全局最大池化→两层全连接→softmax，共80,804个参数，推理过程无任何分词器或规则引擎。数字的裁定结果取决于其本身，与表达语言无关。在486条测试样本上准确率达88.9%（macro-F1 0.896），算术运算为薄弱环节。项目基于MIT许可证，另提供Hugging Face在线演示。

---

## 7. 把你的书切成小册

**原文标题**: Chop Up Your Books

**原文链接**: [https://attainablefelicity.mattkirkland.com/20260915/cut-up-your-books.html](https://attainablefelicity.mattkirkland.com/20260915/cut-up-your-books.html)

作者倡议读者将过厚的大部头书籍切割成若干小册，以提升阅读舒适度。他以850页的普利策奖小说《孤星》为例，指出厚书持握累手、举在床前阅读伤臂、随身携带也过于占包。具体操作如下：先自行购买实体书（切勿使用图书馆藏书）；寻找分卷或章节等自然断点；将书脊彻底掰开——胶装本弯折至露出内部胶条，线装本则沿书帖接缝下刀；用美工刀沿切口精准切入胶层，一分为数段；为每册裁一张牛皮纸文件夹充当封面，以普通胶水粘合并以文件夹夹定型、晾干；最后用粗头记号笔标注书名。作者强调此法耗时仅数分钟，成本低廉，无需专业工具，不违法，作家也不会介意，自己这本"太厚"的书若被读者切开也完全没意见。核心宗旨是实用至上，不求精工，只让厚书变为轻松翻阅的小册，既护手腕又便携带。

---

## 8. Show HN：Capsule —— 将数据存入 SQLite 的单文件可移植 Web 应用

**原文标题**: Show HN: Capsule – Single-file web apps that save their data into SQLite

**原文链接**: [https://withcapsule.app/](https://withcapsule.app/)

Capsule 将一个完整 Web 应用——界面、媒体资源与 SQLite 本地数据库——打包为单一 .capsule 文件，实现"应用即文档"的理念。无需注册、无需云端，用户可通过 WhatsApp、空投或邮件像分享 PDF 一样传递整个应用，接收方点击即可运行，数据已预加载。核心优势有三：其一，隐私优先，所有数据离线存储在文件内部，不依赖网络，杜绝服务器泄露风险；其二，完全跨平台，同一文件可在 macOS、Windows、Linux 上直接运行，iOS 与 Android 版本即将上线；其三，零厂商锁定，使用标准 HTML/CSS，代码与数据完全归用户所有。此外，Capsule 集成 AI 应用生成能力：用户以自然语言描述需求，AI 即可输出含界面、数据架构与本地存储的完整应用，并支持通过对话实时迭代功能、切换深色模式或修改数据表结构，也可借助 MCP 工具开发。用户可选 ChatGPT、Claude 或 Gemini 等助手构建应用。项目完全免费，提供各平台桌面版下载及 Web 预览。

---

## 9. 我无法停止思考巴布亚新几内亚

**原文标题**: I can't stop thinking about Papua New Guinea

**原文链接**: [https://notnottalmud.substack.com/p/why-i-cant-stop-thinking-about-papua](https://notnottalmud.substack.com/p/why-i-cant-stop-thinking-about-papua)

文章以丹尼索瓦人后裔、近一千种语言、1963年弓箭战争、库鲁病等震撼性冷知识开篇，引出对巴布亚新几内亚的深层探讨。核心围绕1930年澳大利亚人利希意外发现高地约百万人与世隔绝逾万年的"首次接触"展开：作者依托利希拍摄的影像，描述了高地将白人误认为亡灵、以粪便辨人之类细节，以及白人用飞机、贝壳炫耀"神迹"，最终以贝壳贸易制造出一场"恶性通胀"的荒诞图景。文章追溯高地文明脉络：约一万年前高地独立驯化芋头、香蕉与甘蔗，但因根茎作物易腐、无畜力、无文字，社会始终停留于数百人小部落，以"大男人"竞争和"莫卡"馈赠礼为政治核心，未曾形成中央集权。地理上，疟疾与云雾山脉构成天然屏障；文化上，知识因语言隔阂与邻族敌意难以传递，而甘薯、烟草、贝壳等商品却借联姻网络缓慢渗透，形成"物通而意不达"的独特现象。文章最终呈现一个深刻命题：人类史上最漫长的文明孤岛如何在隔绝中自洽演化，又在1930年被镜头永远定格。

---

## 10. GEFS 移植 OpenBSD：早期预览

**原文标题**: GEFS on OpenBSD: A Early Preview

**原文链接**: [https://marc.info/?l=openbsd-tech&m=178948744271633&w=2](https://marc.info/?l=openbsd-tech&m=178948744271633&w=2)

摘要：Ori 在 openbsd-tech 邮件列表上发布了一则公告，展示了其将 GEFS 文件系统移植到 OpenBSD 的极早期进展。GEFS 是一款为 Plan 9（9front）开发的崩溃安全、支持快照与写时复制的文件系统，内核代码目前不足 9000 行。该移植版尚不可用于生产环境，出错时可能丢数据，但主要问题已基本明确。移植策略为保持与 9front 版本结构同步，代码为复制粘贴而非抽象层共享。主要待解决问题包括：超级块写入的一致性协议、错误处理路径的重写（9front 方案不适用于 OpenBSD）、用户空间管理工具与 ioctl、Posix 语义适配、回归测试缺失、硬链接与 kqueue（需引入逐文件引用计数）、NFS 支持以及引导环境等。开发者明确表示暂不打算纳入 OpenBSD 主树，也暂不处理 KNF 格式问题。代码获取方式为：先克隆 OpenBSD 官方 GitHub 仓库，再从 shithub 私有服务器拉取 GEFS 分支的增量更新，作者会定期 rebase 以保持与上游同步。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 2 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 3 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 4 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 5 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 6 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 7 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 8 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 9 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 10 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 11 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 12 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 13 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 14 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 15 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 16 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 17 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 18 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 19 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 20 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 21 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 22 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 23 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 24 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 25 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 26 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 27 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 28 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 29 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 30 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 31 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 32 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 33 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 34 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 35 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 36 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 37 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 38 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 39 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 40 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 41 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 42 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 43 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 44 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 45 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 46 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 47 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 48 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 49 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 50 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 51 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 52 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 53 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 54 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 55 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 56 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 57 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 58 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 59 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 60 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 61 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 62 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 63 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 64 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 65 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 66 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 67 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 68 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 69 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 70 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 71 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 72 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 73 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 74 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 75 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 76 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 77 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 78 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 79 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 80 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 81 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 82 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 83 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 84 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 85 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 86 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 87 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 88 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 89 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 90 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 91 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 92 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 93 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 94 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 95 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 96 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 97 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 98 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 99 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 100 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 101 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 102 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 103 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 104 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 105 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 106 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 107 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 108 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 109 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 110 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 111 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 112 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 113 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 114 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 115 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 116 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 117 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 118 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 119 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 120 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 121 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 122 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 123 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 124 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 125 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 126 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 127 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 128 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 129 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 130 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 131 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 132 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 133 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 134 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 135 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 136 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 137 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 138 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 139 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 140 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 141 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 142 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 143 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 144 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 145 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 146 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 147 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 148 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 149 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 150 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 151 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 152 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 153 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 154 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 155 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 156 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 157 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 158 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 159 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 160 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 161 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 162 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 163 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 164 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 165 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 166 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 167 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 168 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 169 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 170 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 171 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 172 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 173 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 174 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 175 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 176 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 177 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 178 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 179 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 180 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 181 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 182 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 183 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 184 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 185 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 186 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 187 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 188 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 189 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 190 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 191 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 192 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 193 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 194 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 195 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 196 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 197 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 198 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 199 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 200 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 201 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 202 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 203 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 204 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 205 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 206 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 207 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 208 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 209 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 210 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 211 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 212 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 213 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 214 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 215 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 216 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 217 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 218 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 219 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 220 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 221 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 222 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 223 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 224 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 225 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 226 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 227 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 228 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 229 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 230 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 231 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 232 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 233 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 234 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 235 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 236 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 237 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 238 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 239 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 240 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 241 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 242 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 243 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 244 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 245 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 246 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 247 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 248 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 249 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 250 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 251 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 252 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 253 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 254 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 255 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 256 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 257 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 258 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 259 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 260 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 261 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 262 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 263 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 264 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 265 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 266 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 267 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 268 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 269 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 270 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 271 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 272 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 273 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 274 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 275 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 276 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 277 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 278 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 279 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 280 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 281 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 282 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 283 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 284 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 285 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 286 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 287 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 288 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 289 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 290 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 291 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 292 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 293 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 294 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 295 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 296 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 297 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 298 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 299 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 300 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 301 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 302 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 303 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 304 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 305 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 306 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 307 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 308 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 309 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 310 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 311 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 312 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 313 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 314 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 315 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 316 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 317 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 318 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 319 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 320 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 321 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 322 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 323 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 324 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 325 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 326 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 327 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 328 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 329 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 330 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 331 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 332 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 333 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 334 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 335 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 336 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 337 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 338 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 339 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 340 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 341 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 342 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 343 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 344 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 345 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 346 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 347 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 348 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 349 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 350 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 351 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 352 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 353 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 354 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 355 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 356 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 357 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 358 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 359 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 360 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 361 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 362 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 363 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 364 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 365 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 366 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 367 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 368 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 369 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 370 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 371 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 372 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 373 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 374 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 375 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 376 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 377 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 378 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 379 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 380 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 381 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 382 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 383 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 384 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 385 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 386 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 387 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 388 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 389 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 390 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 391 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 392 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 393 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 394 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 395 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 396 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 397 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 398 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 399 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 400 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 401 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 402 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 403 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 404 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 405 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 406 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 407 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 408 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 409 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 410 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 411 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 412 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 413 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 414 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 415 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 416 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 417 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 418 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 419 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 420 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 421 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 422 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 423 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 424 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 425 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 426 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 427 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 428 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 429 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 430 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 431 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 432 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 433 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 434 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 435 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 436 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 437 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 438 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 439 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 440 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 441 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 442 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 443 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 444 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 445 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 446 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 447 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 448 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 449 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 450 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 451 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 452 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 453 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 454 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 455 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 456 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 457 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 458 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 459 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 460 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 461 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 462 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 463 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 464 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 465 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 466 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 467 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 468 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 469 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 470 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 471 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 472 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 473 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 474 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 475 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 476 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 477 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 478 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 479 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 480 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 481 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 482 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 483 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 484 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 485 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 486 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 487 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 488 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 489 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 490 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 491 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 492 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 493 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 494 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 495 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 496 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 497 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 498 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 499 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 500 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 501 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 502 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 503 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 504 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 505 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 506 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 507 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 508 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 509 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 510 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 511 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 512 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 513 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 514 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 515 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 516 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 517 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 518 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 519 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 520 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 521 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 522 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 523 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 524 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 525 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 526 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 527 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 528 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 529 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 530 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 531 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 532 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 533 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 534 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 535 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 536 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 537 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 538 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 539 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 540 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 541 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
