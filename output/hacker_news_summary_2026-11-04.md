# Hacker News 热门文章摘要 (2026-11-04)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

## 1. Flipper One 众筹与预售启动

**原文标题**: Preparing for the Flipper One Kickstarter and opening pre-orders

**原文链接**: [https://flipper.net/pages/flipper-one](https://flipper.net/pages/flipper-one)

Flipper One 即将开启 Kickstarter 众筹及预售。这是一款基于开源 Linux 的 ARM 架构便携计算机，定位"网络多工具"。核心采用双处理器架构：低功耗 RP2350 微控制器负责基础控制与 LCD 显示，八核 Rockchip RK3576 SoC 运行 Linux 系统，驱动 Wi-Fi 6E、千兆以太网、USB3、PCIe 及 NPU 等外设。项目与 Collabora 合作推动 RK3576 进入主线 Linux 内核，实现完全开源、无二进制闭源组件。扩展性强：M.2 插槽可安装 5G 模组、SDR 电台、SSD 及 AI 加速卡，GPIO 接口支持 DIY 模块；单根 USB-C 线缆即可同时完成供电、SSH 访问与虚拟网卡功能。功能方面，支持最多 5 路 WAN 连接、动态路由与负载均衡、网络扫描与功耗实时监测；可通过 DisplayPort Alt 模式一线连接外接显示器进入桌面模式；内置 eSIM 并预装 Flipper SIM 数据套餐，正在与卫星通信厂商合作探索 NTN 卫星联网支持。项目面向开发者与网络爱好者，现已开放预售通道。

---

## 2. Jailbreaking my car's navigation system just so I can change the time

**原文标题**: Jailbreaking my car's navigation system just so I can change the time

**原文链接**: [https://blog.nns.ee/2026/11/02/renault-hack/](https://blog.nns.ee/2026/11/02/renault-hack/)

文章之前已经处理过

---

## 3. 我的笔记本上的Qwen 3.8 27B也能解读模型权重

**原文标题**: Qwen 3.8 27B on my laptop can interpret model weights, too

**原文链接**: [https://simonwillison.net/2026/Nov/3/qwen-can-interpret-model-weights/](https://simonwillison.net/2026/Nov/3/qwen-can-interpret-model-weights/)

近期一篇热文提出"权重空间编程"概念：大语言模型能否仅凭原始浮点权重理解乃至修改神经网络。论文显示GPT-6 Astra可从权重识别训练游戏类型，无梯度即可修复Qwen3.5-0.8B的推理缺陷（MATH-500从7.9%升至48.1%），但有批评者指出其混淆了"纯推理"与"辅助代码执行"两种能力。作者选取论文中四款简化Atari游戏（Breakout、Pong、Pac-Man、Freeway）的权重识别任务，在笔记本上以17GB量化的Qwen 3.8 27B进行测试。Qwen成功识别Pac-Man（置信度72%）、Pong（75%）和Breakout（88%），但将冷门的Freeway误判为Pac-Man。推理耗时46分钟至1小时，产生数万推理token，推理链近乎不可读。作者认为该能力虽令人惊喜，但资深研究者借助纸笔亦或可完成类似分析，不必过分渲染"模型自主编辑权重"的颠覆性，距"源代码终结"仍很遥远。

---

## 4. Postman 静默自动安装 AI 插件并试图接管所有 API 工作流

**原文标题**: Postman silently auto-installs AI plugins and attempts to share all API data

**原文链接**: [https://github.com/postmanlabs/postman-app-support/issues/14370](https://github.com/postmanlabs/postman-app-support/issues/14370)

2026年10月，用户 indicava 在 GitHub 提交严重安全报告（#14370），指出 Postman 桌面版（12.33.4）在用户仅打开应用时，未经任何明确同意即自动向 Codex 和 Claude Code 注入插件、修改全局配置、注册启动钩子并试图自行审批信任记录。其日志明确记录了"auto-existing-upgrade"自动安装行为，影响了远程 MCP 连接、会话启动指令及 CLI 安装，导致用户 AI 编码助手的 API 任务被强制路由至 Postman 技能。用户强调，API 客户端不应因被打开就擅自改写其他工具的信任边界，并日志与源码已作为证据提交，但声明未指控数据外泄。该 issue 获得百余次点赞，社区情绪激烈，众多用户称 Postman 为"病毒"或"恶意软件"，质疑其合法性，建议改用 Insomnia、Bruno 等开源替代方案，亦有开发者发起自建 HTTP 客户端项目。有用户通过 Wayback Machine 发现 Postman 疑似事后修改下载页以规避责任。截至目前，issue 仍为开放状态，Postman 官方未在仓库发布正式回应，Discord 上的询问亦未获重视。用户核心诉求包括：立即停止自动安装、移除安装器自审批机制、提供覆盖所有受影响文件的完整卸载路径、收窄启动指令范围至仅限用户明确请求 Postman 的场景。

---

## 5. Stringman：800美元的开源室内级抓取机器人

**原文标题**: Stringman, an $800 open-source room scale gripper robot

**原文链接**: [https://neufangled.com/](https://neufangled.com/)

摘要：Stringman是一个造价约800美元的开源机器人项目，定位为房间尺度（room scale）的抓取机器人，用户可自行搭建使用。安装方面，指南指出需用木螺丝将固定夹（cleats）牢固地安装在靠近天花板的墙体龙骨（wall studs）上，若遇立柱则改用棘轮绑带进行固定，以确保整体结构的稳固与安全。该项目以开源形式发布，体现了低成本、可及性强的设计思路，适合在室内场景中完成物体抓取与操作任务。

---

## 6. Introduction to Programming in ATS

**原文标题**: Introduction to Programming in ATS

**原文链接**: [https://ats-lang.sourceforge.net/DOCUMENT/INT2PROGINATS/HTML/book1.html](https://ats-lang.sourceforge.net/DOCUMENT/INT2PROGINATS/HTML/book1.html)

文章之前已经处理过

---

## 7. 富士胶片拟将磁带产能扩大五倍，抢占AI时代归档市场

**原文标题**: Fujifilm to boost tape production 5x as AI fuels archiving demand

**原文链接**: [https://arstechnica.com/gadgets/2026/10/fujifilm-to-boost-tape-production-5x-as-ai-fuels-archiving-demand/](https://arstechnica.com/gadgets/2026/10/fujifilm-to-boost-tape-production-5x-as-ai-fuels-archiving-demand/)

富士胶片宣布投资约100亿日元（约6300万美元），在神奈川县小田原工厂将LTO磁带产能扩大五倍（以2025财年产能计），项目周期为2026至2028财年，届时将成为该公司历史上对LTO磁带设施的最大投资。公司称，生成式AI的普及引发全球数据需求"指数级增长"，是此次扩产的核心驱动力，主力生产对象为最新一代LTO Ultrium10磁带——该代产品采用钡铁磁与锶铁磁复合细混合磁粉技术。尽管消费市场早已淘汰磁带，企业级领域却从未放弃：云巨头与数据中心广泛利用磁带进行海量数据低成本备份，磁带还支持"气隙"离线存储（拔除存储盒物理隔离），可有效抵御勒索软件等网络攻击，正受到日益关注。富士胶片在磁介质领域深耕数十年，1950年代起步，2000年发布首款LTO磁带，2011年率先商用钡铁磁粉磁带，各代产品容量持续提升，当前已迭代至第十代。

---

## 8. 任意规模下的Mac

**原文标题**: Mac at Any Scale

**原文链接**: [https://namespace.so/blog/mac-at-any-scale](https://namespace.so/blog/mac-at-any-scale)

Namespace Labs为解决iOS开发对Mac的刚性需求，在数据中心大规模部署MacBook Pro，以替代供应短缺的Mac Mini。文章详述了机架方案：每台Mac经IP KVM远程管理、外接10G网卡，并面临HDMI线缆易脱落、FileVault锁屏后密码提示超时、USB网卡偶发故障等意外挑战；散热则依赖定制支架导出热点热量。虚拟化层基于Apple Virtualization框架（类比Firecracker），受限于每物理机仅跑两个macOS虚拟机，18核MacBook被划分为两个8核实例。网络侧采用gVisor用户态协议栈实现包级隔离与防火墙，上行带宽已达4Gbps。镜像管理是另一核心难题：含多版本Xcode及iOS运行时的镜像远超2TB，Namespace通过YAML驱动的自动化构建流程、稀疏格式与分层差异存储将镜像写入OCI注册表，再分发至各节点本地SSD，以本地文件支撑虚拟磁盘I/O，在性能与存储效率间取得平衡。

---

## 9. Pratt parsing is a black box

**原文标题**: Pratt parsing is a black box

**原文链接**: [https://vinipsmaker.github.io/blog/article/pratt-parsing-is-a-black-box/](https://vinipsmaker.github.io/blog/article/pratt-parsing-is-a-black-box/)

文章之前已经处理过

---

## 10. Kalshi及其联合创始人因违反犹他州赌博法面临重罪指控

**原文标题**: Kalshi and its co-founders face felony charges for violating Utah gambling laws

**原文链接**: [https://arstechnica.com/tech-policy/2026/10/trump-admin-sues-utah-to-save-kalshi-from-the-states-total-ban-on-gambling/](https://arstechnica.com/tech-policy/2026/10/trump-admin-sues-utah-to-save-kalshi-from-the-states-total-ban-on-gambling/)

犹他州总检察长布朗对预测市场平台Kalshi及其联合创始人、CEO塔雷克·曼苏尔和COO卢安娜·洛佩斯·拉拉提起刑事指控，三人各面临13项重罪及1项轻罪，涉及9月中旬平台上体育投注业务。犹他州以州宪法及法律明令禁止赌博为由，同步在州法院提起民事诉讼，要求全面关停Kalshi运营。与此同时，特朗普政府旗下商品期货交易委员会（CFTC）对犹他州发起联邦诉讼，试图阻止该州执法，并宣称对CFTC注册的事件合约拥有独家管辖权。但犹他州此前已在联邦地区法院胜诉，法官裁定联邦法并未剥夺各州执行反赌博法律的权力。目前各巡回法院判决不一——第三巡回法院倾向保护预测市场，第六、第九巡回法院则支持州执法——最高法院预计将就此裁决。若犹他州成功关停Kalshi，或将波及Polymarket、DraftKings和FanDuel等平台。Kalshi回应称犹他州"明显在搞政治"，誓言将在法庭抗争。

---

## 11. "'Astra读写权重提升Qwen'一文具有误导性"

**原文标题**: The 'Astra can read and write weights to improve Qwen' post is misleading

**原文链接**: [https://honnibal.dev/blog/astra-read-write-misleading](https://honnibal.dev/blog/astra-read-write-misleading)

摘要：作者以魔术师使用不同手法完成同一效果为喻，指出"Astra读取并修改权重以提升Qwen"帖子的表述存在误导。该帖摘要暗示Astra"仅凭查看原始权重"即可完成Qwen数学能力的修复，但实际情况是：真正仅依赖原始浮点权重、无需代码或运行模型的操作，仅出现在涉及1.7万至17.2万参数的小型网络上。所有涉及Qwen（8亿参数）等真实语言模型的实验，均使用了Python代码进行分析与修改，且Qwen实验中Astra还获得了对模型进行多达50轮实践推理的权限。因此，Qwen结果（MATH-500从7.9%提升至48.1%）实质表明的是Astra能够像人类ML工程师一样编写并执行代码来分析和修改网络权重，而非直接"读写"权重。作者强调，若单一技术能同时实现"从零生成小游戏网络"与"改进百亿级大模型"，才意味着对权重具有深层理解（gestalt）；而本文各实验依赖的技术路径并不相同，将其归入同一篇论文容易让读者产生"一种能力贯穿始终"的错觉。

---

## 12. Ashby（YC W19）招聘客户拓展经理

**原文标题**: Ashby (YC W19) Is Hiring EMs

**原文链接**: [https://www.ashbyhq.com/careers?ashby_jid=695b1ce6-c375-4fad-94ef-61b50a3fbd28&utm_source=hn](https://www.ashbyhq.com/careers?ashby_jid=695b1ce6-c375-4fad-94ef-61b50a3fbd28&utm_source=hn)

Ashby，一家由Y Combinator（YC W19批次）孵创的企业，目前正在招聘EMs（Engagement Managers，即客户拓展经理）。该公司在招聘页面中呼吁有志之士加入，共事于一个追求每日全力以赴、精益求精的团队。此信息为该职位的简要职业介绍，尚未涉及具体岗位职责、任职要求或薪酬细节。

---

## 13. USDB：面向字节跳动下一代推荐系统的可扩展存储

**原文标题**: USDB: Scaling Storage for Next-Generation Recommender Systems at ByteDance

**原文链接**: [https://arxiv.org/abs/2611.02618](https://arxiv.org/abs/2611.02618)

本文提出USDB，即字节跳动面向流式与批处理工作负载的统一序列存储方案，以应对推荐模型中用户历史日益增长、属性日趋丰富所带来的存储挑战，核心解决"小量持续写入与大量重复读取"之间的存储不对称问题。主要设计包括：CascadeLSM基于时间的分层压缩技术，将原始数据逐步转化为应用专属的历史视图；差异化副本机制实现持久文件的跨节点共享复用；部分转储策略从近期捕获状态与版本化历史中重建推理输入；混合列式存储格式加速投影查询。上述设计在数据摄入、在线推理与模型训练间实现维护结果的跨阶段复用。生产迁移数据显示，平均写入延迟降低85.8%，基础设施成本降低42.1%。与优化后的RocksDB序列基线相比，USDB在多种投影及客户端负载下均实现更快的长历史读取性能；在受限接收带宽下，聚合下推可达普通查询8.5倍吞吐。生产环境的序列重建与直读文件训练结果进一步验证了共享序列维护机制对实时服务刷新与历史数据重复访问的有效支撑。

---

## 14. Antimony：源自Lisp机器而非绘图板的CAD软件（2015）

**原文标题**: Antimony: CAD Software Evolved from Lisp Machines and Not Drafting Tables (2015)

**原文链接**: [https://www.mattkeeter.com/projects/antimony/3/](https://www.mattkeeter.com/projects/antimony/3/)

摘要：Antimony是一款概念独特的CAD工具，设想CAD从Lisp机器而非传统绘图板演化而来的平行世界。其架构由三大正交支柱构成：一是有向无环图引擎，用户通过连接自定义Python 3.x脚本来定义参数与形状的流向；二是采用函数式距离场表示的几何引擎，天然适配并集、交集、差集等CSG布尔运算，可导出二维高度图与三维STL文件（含特征检测以保持棱边锐利）；三是涵盖基本变换及吸引、排斥、弯曲等非常规操作的标准形状库。节点支持自定义UI，如拖拽控制点即可驱动图中节点实时更新。Antimony脱胎于MIT"位与原子中心"在个人级CAD/CAM领域的研究，是cad_ui、Kokopelli等前代工具的继承者，灵感源自FabServer。软件目前处于beta阶段，支持Mac与Linux，源码开源GitHub，欢迎具备Python或C++经验的社区贡献者参与开发。2015年版本配合Fab Academy发布，已有丰富的用户实践案例。

---

## 15. 1996年奔腾处理器上运行现代棋程能否击败卡斯帕罗夫？

**原文标题**: Could a modern chess engine on a Pentium have defeated Kasparov in 1996?

**原文链接**: [https://nicholas.carlini.com/writing/2026/algorithmic-improvements-chess.html](https://nicholas.carlini.com/writing/2026/algorithmic-improvements-chess.html)

1996年IBM耗资数百万美元打造专用超算Deep Blue首胜国际象棋冠军卡斯帕罗夫。作者通过实验证明，仅一台200MHz Pentium Pro配64MB内存的商用电脑运行改良版现代引擎，即可达约3300 Elo，远超卡斯帕罗夫的2800。实验分两部分：一是将1996年Crafty引擎逐步引入现代搜索算法（fail-soft、LMR、NNUE等），1秒/步Elo从1999升至2720；二是将Stockfish 17移植至该老机（32位、无SIMD、缩小神经网络），经优化后30秒/步达3180 Elo。两者对弈中，老机上的现代引擎以78胜5负17平碾压新硬件上的1996引擎。核心结论：现代引擎相较1996年的1335 Elo增益中，约720来自算法进步而非硬件提升。作者还将该机通过串口联网提供在线对弈，并以VGA文本屏实时展示运行状态。

---

## 16. 两千年后首次破读：PHerc. 306B纸莎草卷轴文字重见天日

**原文标题**: Writing seen in PHerc. 306B, for the first time in 2000 years

**原文链接**: [https://scrollprize.substack.com/p/writing-seen-in-pherc-306b-for-the](https://scrollprize.substack.com/p/writing-seen-in-pherc-306b-for-the)

公元79年维苏威火山喷发掩埋了PHerc. 306纸莎草卷轴，自1750年代发掘以来内容从未被识读。经微CT扫描后，"维苏威挑战赛"社区收到25份提交，英国软件工程师Liam Warner与澳大利亚悉尼大学研究生Nicola Bodill凭借改进的AI墨水检测模型，首次破读出该卷轴上部（PHerc. 306B）文字，荣获5万美元"首字奖"。二人识别出希腊文短语"το δι' αὑτό αἱρέτὸν"（意为"自身即为可取之物"），该表达与亚里士多德、塞克斯都·恩派里多及伊壁鸠鲁派哲学家菲罗德穆的伦理学论述相呼应。技术上，二人采用VC3D工具提取三维区域，将公共模型TRACE v3B与自训练模型A-hn的输出叠加，显著提升墨迹辨识度。PHerc. 306B现已具备竞争80万美元大奖的资格，该奖授予首个能以极少人工干预虚拟展开并读出一整卷70%内容的团队。目前仍有20个卷轴待破读，社区已对其中13个尝试提交，但尚无团队达标。

---

## 17. Show HN：HackerTV——将 Hacker News 高赞 YouTube 视频汇聚为 24/7 电视频道

**原文标题**: Show HN: HackerTV – HN's most-recommended Youtube videos as 24/7 TV channels

**原文链接**: [https://hackertv.org](https://hackertv.org)

摘要：HackerTV 是一个开源项目，将 Hacker News 上推荐度最高的 YouTube 视频自动编排为类似传统电视频道体验的 24 小时连续播放流。界面采用复古电视机风格，开机前显示"PLEASE STAND BY（请等待）"，通过"TURN ON"按钮进入观看模式。操作以键盘快捷键为主：上下方向键切换频道、数字键 0-9 直达频道、G 查看节目指南、M 静音、C 开启字幕、I 显示信息、T 宽屏模式、双击画面全屏、P 关机。作者指出，由于 YouTube 视频元数据获取存在延迟，频道时长暂时以估算值运行，部分节目可能出现画面提前结束（提示"请等待"）或被截断的情况，待元数据就绪后将自动修正。整体设计兼顾怀旧趣味与实用性，为开发者和技术爱好者提供了一个无需广告、纯内容驱动的连续浏览体验。

---

## 18. 训练一个"精通 Figma"的 AI 编辑模型

**原文标题**: We're Training a Figma-Fluent Editing Model

**原文链接**: [https://www.figma.com/blog/training-a-figma-fluent-editing-model/](https://www.figma.com/blog/training-a-figma-fluent-editing-model/)

Figma 正式宣布正在训练一款能够"精通 Figma"的 AI 编辑模型，即 Figma 设计智能体（Figma Agent）。该模型旨在让 AI 不仅理解设计意图，还能直接在 Figma 界面中完成操作与编辑，实现从文字描述到设计稿产出的全流程辅助。此次产品更新是 Figma Design AI 战略的核心环节，重点覆盖设计系统（Design Systems）的智能构建与管理，帮助设计师更高效地创建、维护和迭代组件库与设计规范。作为 Figma 平台近期推出的重要功能，该智能体体现了 Figma 将生成式 AI 深度融入设计工作流的明确方向，未来有望打通"需求—设计—交付"的完整链路，降低设计门槛、提升团队协作效率，面向全体 Figma 用户开放体验。

---

## 19. Arduino 微型BASIC解释器

**原文标题**: Tiny Basic for Arduino

**原文链接**: [https://dilshan.github.io/tiny-basic/](https://dilshan.github.io/tiny-basic/)

微型BASIC for Arduino 是一款专为中端 Arduino 板及 MCU 设计的轻量、高效且功能完备的 BASIC 解释器，用户无需连接 PC 开发环境，即可直接在硬件上编写、编辑和运行 BASIC 程序。其核心特性包括：一是硬件内置编辑器，支持在设备端直接进行代码编写与修改，摆脱对 PC IDE 的依赖；二是硬件无关性设计，整体架构轻量便携，将硬件依赖降至最低，几乎可移植至任何中端微控制器，移植成本低；三是提供丰富的标准库，涵盖硬件 I/O 控制、数学运算及位操作等常用功能，满足绝大多数嵌入式开发需求。项目同时提供用户指南与下载资源，便于开发者快速上手。

---

## 20. 谷歌将停止为拒绝使用AI的学校提供搜索服务

**原文标题**: Google will turn off search for schools that reject AI

**原文链接**: [https://www.nytimes.com/2026/11/03/us/google-search-schools-restrict-ai.html](https://www.nytimes.com/2026/11/03/us/google-search-schools-restrict-ai.html)

无法访问该文章链接

---

## 21. 展示 HN：HackerChurn——Hacker News 用户最想退订的 SaaS 工具

**原文标题**: Show HN: HackerChurn – which SaaS tools HN wants to cancel

**原文链接**: [https://hissingkitty.com/hacker-churn](https://hissingkitty.com/hacker-churn)

摘要：HackerChurn 是一个分析 Hacker News（HN）用户 SaaS 软件投诉的项目，抓取了过去三年 HN 公共评论中提及的 SaaS 工具名称并筛选负面评价，共覆盖 101 个平台、1,551 条负面反馈，其中 139 人表示已自建替代方案。榜单前三依次为：LastPass（54 个线程，因安全泄露与弱加密饱受诟病，用户转向 Bitwarden）、CrowdStrike（58 线程，因破坏性更新与性能问题）、Evernote（67 线程，因性能缓慢及被收购后品质下滑，用户转向 Obsidian）。其余高频被提及的还有 Adobe（锁定效应、AI 强推与遥测）、QuickBooks、Grammarly、Atlassian、LinkedIn、Microsoft、Mailchimp、SAP、Google Workspace、Salesforce 等。每款软件均标注了投诉数、讨论线程数及核心痛点，部分还列出了社区推荐的替代品（如 WordPress、ChatGPT、Linear、Grafana、Basecamp）。整体反映出 HN 开发者群体对高定价、功能臃肿、隐私侵犯与厂商锁定效应的普遍不满。

---

## 22. 如何撰写不会过时的竞品对比内容

**原文标题**: How to write comparison content that doesn't age like milk

**原文链接**: [https://posthog.com/blog/comparison-content-guide](https://posthog.com/blog/comparison-content-guide)

PostHog分享了五年间运营90篇竞品对比内容的实战经验。对比页面转化率（约10%）远高于普通博客（2.5%），因其精准命中用户决策阶段。作者提出两条核心原则：一是"不做伤害"，不贬低、不歪曲，大方承认自身短板并肯定竞品优势，这是最具性价比的信任信号；二是尊重读者，设立"谁该选择竞品"板块，让不匹配的用户也感到被帮助，同时主动接受竞品通过PR等方式纠错，既维护公信力也避免负面传播。

维护是最大痛点。PostHog将每个竞品信息封装为代码仓库中的独立数据文件，所有对比表格由统一组件渲染，改一行即全局更新。同时部署两套AI"Scouts"：一套比对竞品官网与自身数据文件的偏差，一套检查自家内容是否落后于产品迭代。Scouts具备跨次记忆、选择性报告及证据附带能力，最终由人审核合并PR，实现"机器发现、人类决策"，免去人工逐一核查。作者强调，在AI生成内容泛滥的当下，诚实与公允是少数不可伪造的差异化优势，也是赢得AI引擎引用的关键。

---

## 23. 研究估计15年间逝世的NFL球员中75%存在慢性创伤性脑病

**原文标题**: Study estimates 75% of NFL players who died over 15-year span had CTE

**原文链接**: [https://www.nbcnews.com/health/health-news/study-estimates-75-nfl-players-died-15-year-span-may-cte-rcna605975](https://www.nbcnews.com/health/health-news/study-estimates-75-nfl-players-died-15-year-span-may-cte-rcna605975)

摘要：波士顿大学团队在《JAMA网络开放》发表研究，估计2008至2023年间去世的美国职业橄榄球（NFL）球员中，约75%（约1760人）存在慢性创伤性脑病（CTE）迹象，为迄今最高比例。该研究将UNITE大脑银行396例捐赠脑组织数据与1966名亡故前NFL球员的全国死亡记录相结合，并通过统计模型校正了"有认知症状者家属更倾向捐献大脑"的样本偏差——数据显示此类家属捐献意愿高出五倍。研究还指出，约27%的受试球员存在痴呆，但并非所有CTE患者都会出现认知衰退。此前同组2025年8月针对五年跨度的研究仅为25%，全球脑库中仅有约1%的大脑存在CTE迹象。由于CTE至今无法在活体中确诊，只能依靠尸检，该数字仍属估算。神经外科医生巴伊尔斯呼吁加强活体诊断研究。NFL方面回应称正通过改进头盔、调整开球规则等措施减少高冲击碰撞。研究者强调，减少脑冲击是降低风险的關鍵。

---

## 24. 句柄胜指针：以索引句柄替代指针的内存管理之道

**原文标题**: Handles are the better pointers (2018)

**原文链接**: [https://floooh.github.io/2018/06/17/handles-vs-pointers.html](https://floooh.github.io/2018/06/17/handles-vs-pointers.html)

作者基于十余年大型 C++ 项目（五十万至百万行代码）经验，提出以"索引句柄"取代原始指针与智能指针的内存管理方案，旨在解决对象蜘蛛网代码引发的缓存未命中、内存碎片及假内存泄漏等顽疾。核心设计四要点：一、内存管理权收归各系统（渲染、物理、动画等），系统独有其数据数组基地址；二、同类项密集排入数组，以空闲槽位复用代替逐次分配；三、对外仅暴露索引句柄，基指针严格私有；四、仅在必要时将句柄转为临时指针，且不得存储或跨调用使用。句柄以位域编码：低位存数组索引，高位放唯一位模式；转换时执行范围校验与模式比对，可有效捕获"释放后重用"导致的悬挂访问，虽非万无一失，但远胜裸指针。该方案在数据导向架构中收益显著——数据紧密排列提升缓存命中率，数量越界可即时报警，且句柄可跨进程共享，适用于网络游戏与存档系统。但其哲学与高度分散式的经典面向对象代码不太兼容。文末补充了以每槽代际计数器防碰撞的更新方案。

---

## 25. 借助真实YouTube视频逐句分级练习日语口语

**原文标题**: Practice speaking Japanese with real YouTube videos, graded line by line

**原文链接**: [https://jivx.com/yt](https://jivx.com/yt)

摘要：JIVX是一个日语口语练习平台，用户可输入YouTube视频链接或选用已有视频，平台将视频中的每句话按JLPT N5至N1级别进行分级，供学习者逐句朗读或输入并获取评分。页面列出了大量已添加的练习视频，涵盖露营美食、动漫游戏、日常生活、旅行、文化、职场、日语课程等主题，例如琵琶湖畔单身露营、HikakinTV新居介绍、宝可梦游戏、东京初体验、日本世界杯赛事报道、可理解性输入入门教程等。每个视频页面清晰标注各级别句子数量，如N5共37句、N4共1句等，方便学习者按自身水平选取。此外，部分视频还附有英文标题说明，适合不同起点的学习者。平台支持用户分享自定义视频，也提供他人上传的丰富资源，实现从入门到高级的沉浸式日语听说训练。

---

## 26. 贝果商业女王

**原文标题**: Queen of the Bagel Business

**原文链接**: [https://thehustle.co/originals/the-unlikely-queen-of-the-bagel-business](https://thehustle.co/originals/the-unlikely-queen-of-the-bagel-business)

63岁的贝丝·乔治是全球顶尖的贝果顾问，被称作"贝果治疗师"。她原为缅因州儿童权益律师，2005年因儿子肠胃问题着手研究贝果，创立Spelt Right公司，产品进入全食等全国连锁。2024年她在纽约开设兼作培训学院的贝果店"Bagel-ish"，提供15个月创业指导，涵盖厨房设计、保密配方、预算规划及全天候咨询，收费为五位数咨询费加出售时2%分成。

十年来她已指导近百家店铺，客户遍布印度、韩国、越南、瑞典等地。她强调耐心与精准，坚持每天手工制作800个贝果，告诫创业者专注核心产品："别做冰淇淋，别做咖啡，只做最好的贝果和三明治。"经营上她将开店视为数学题：租金不超毛收入10%，食材和人力各不超35%。她自己的店周末日销千个，周收入超七千美元。

从17世纪波兰犹太社区到全球热炒，贝果承载深厚文化。身为黎巴嫩裔美国人，乔治感慨这一源自犹太传统的食物已成为联结全球创业者的精神纽带。

---

## 27. 为何我们未生活在"新艺术"风格的世界里？

**原文标题**: Why Don't We Live in an Art Nouveau World?

**原文链接**: [https://asteriskmag.com/issues/16/why-don-t-we-life-in-an-art-nouveau-world](https://asteriskmag.com/issues/16/why-don-t-we-life-in-an-art-nouveau-world)

文章以圣家堂主尖塔落成为契机，探讨新艺术风格（Art Nouveau）及其变体（如加泰罗尼亚现代主义）为何未成为主流建筑语言。该风格以曲线、繁复装饰和自然灵感为特征，介于19世纪历史主义与20世纪极简现代主义之间，至今仍受喜爱却极少被建造。作者指出网络上流行的"传统派"建筑观——即人类于20世纪中叶抛弃装饰之美、转向平庸——虽点出了真实困惑，却过于简化。以圣十字圣保医院为案例，文章揭示了美与用之间的张力：最华美的建筑竟是行政楼而非病房，后期因资金不足而被迫简化。作者亦分享个人体验：新艺术建筑的震撼感迅速消退，过度装饰反成认知负担，真正令人舒适的是橙树等自然元素，与风格本身关系不远。回顾历史，新艺术运动寿命极短，一战后各地即转向"回归秩序"；里加虽存约八百栋新艺术建筑，多数已趋于克制；南锡学派十余年后亦告式微；加泰罗尼亚则以强调秩序与严肃的"新百年代主义"取代了浪漫的个人主义。文章最终暗示，当前世界中这一风格的存量，或许已恰到好处。

---

## 28. 《弹珠球》遇上大都会博物馆

**原文标题**: Katamari Damacy but it's The Met collection

**原文链接**: [https://katamari.vaguespac.es/](https://katamari.vaguespac.es/)

《Katamari Met》是由 Jay Mollica 制作的一款网页小游戏，灵感取自经典游戏《弹珠球》（Katamari Damacy）。玩家操控一颗直径仅8厘米的小球，在虚拟重建的纽约大都会艺术博物馆中滚动收集展品，时限6分钟。游戏最大亮点在于：所有被滚起的物品均源自大都会博物馆的开放获取（CC0）藏品库，并以真实尺寸呈现——从最初的硬币、顶针、根付等小物，一路滚起直至丹铎神庙这样的大型建筑。玩家可使用WASD或方向键操控滚动，M键静音，Esc键结束本轮。游戏中设有排行榜、分享链接、CSV导出和文本复制等功能，方便玩家记录与对比成绩。视觉上，建筑依据大都会博物馆真实平面图搭建，墙面与地面纹理取自维基共享资源摄影素材，背景音乐采用 Kevin MacLeod 的 CC BY 4.0 授权曲目。整个项目将互动游戏与公共领域文化遗产数据巧妙结合，让玩家在轻松娱乐中"拥有"一座世界级博物馆。

---

## 29. Toit 2.0.0 正式发布

**原文标题**: Toit v2.0.0

**原文链接**: [https://toit.io/blog/toit-v2-0-0/](https://toit.io/blog/toit-v2-0-0/)

历经四年多 alpha 测试、超两千次提交、五十万行代码变更及两百余次测试版发布，Toit 终于迎来 v2.0.0 正式版。Toit 最初由 Toitware 闭源开发，后转为开源项目；Toitware 于 2024 年关停后，由志愿者社区继续维护。此前延迟发布源于两点：仍有破坏性更改未完成，以及"总想再加一个功能"的心态。最终，外围 API 改为直接接受引脚号成为最后一项重大变更，团队遂宣布发布，并接受了"完美永远不会到来"的理念。开源以来的主要亮点包括：硬件支持扩展至 Arm 架构 EC618 及绝大多数 ESP32 变体；推出统一 toit 命令，增强桌面脚本能力；重写包管理器并壮大生态；新增 Mixins 实现类间代码复用；引入固件信封机制，用户无需重建 SDK 即可自定义固件；编译器与运行时持续优化；硬件测试大幅改善；GitHub 支持 Toit 语法高亮。格式化器、编译器改进、更多架构支持等重要功能将通过后续版本陆续推出。

---

## 30. 将布尔电路嵌入神经网络

**原文标题**: Embedding boolean circuits in a neural network

**原文链接**: [https://edwardbenson.com/2026/10/embedding-boolean-circuits-in-a-neural-network](https://edwardbenson.com/2026/10/embedding-boolean-circuits-in-a-neural-network)

本文探讨如何将布尔电路作为"侧载模块"嵌入已训练的神经网络，需解决两个核心问题：一是将布尔电路表示为神经元集合，二是将其接入已训练网络。表示层面，当输入限定为0或1、激活函数取"是否大于0"时，AND、OR、NOT等逻辑门均可用单个神经元实现，并能组合成任意布尔表达式。连接层面，由于已训练网络的信号为实值而非0/1，需设计入口与出口映射。作者提出"探针"（Probe），将某一神经元的实值输出按阈值映射为布尔信号，作为电路输入；又提出"刺激"（Stim），由电路的布尔输出触发，对目标神经元施加带符号的加性推力，数值决定方向与幅度，以此干预模型行为。在Transformer中，刺激沿该神经元输出权重所定义的残差流方向施加归一化向量。此外存在层间时序约束：探针须在所刺激层之前执行，反向跨层则需将信号延至下一处理步。作者表示本文是对后续更复杂工程的思路梳理，暂未附代码。

---

