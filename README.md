# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-04.md)

*最后自动更新时间: 2026-11-04 04:56:20*
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

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-04](output/hacker_news_summary_2026-11-04.md) |
| 2 | [2026-11-03](output/hacker_news_summary_2026-11-03.md) |
| 3 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 4 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 5 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 6 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 7 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 8 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 9 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 10 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 11 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 12 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 13 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 14 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 15 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 16 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 17 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 18 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 19 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 20 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 21 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 22 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 23 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 24 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 25 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 26 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 27 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 28 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 29 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 30 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 31 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 32 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 33 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 34 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 35 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 36 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 37 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 38 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 39 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 40 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 41 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 42 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 43 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 44 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 45 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 46 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 47 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 48 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 49 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 50 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 51 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 52 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 53 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 54 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 55 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 56 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 57 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 58 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 59 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 60 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 61 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 62 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 63 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 64 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 65 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 66 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 67 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 68 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 69 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 70 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 71 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 72 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 73 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 74 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 75 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 76 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 77 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 78 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 79 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 80 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 81 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 82 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 83 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 84 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 85 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 86 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 87 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 88 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 89 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 90 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 91 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 92 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 93 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 94 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 95 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 96 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 97 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 98 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 99 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 100 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 101 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 102 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 103 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 104 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 105 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 106 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 107 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 108 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 109 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 110 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 111 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 112 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 113 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 114 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 115 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 116 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 117 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 118 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 119 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 120 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 121 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 122 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 123 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 124 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 125 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 126 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 127 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 128 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 129 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 130 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 131 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 132 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 133 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 134 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 135 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 136 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 137 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 138 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 139 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 140 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 141 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 142 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 143 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 144 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 145 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 146 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 147 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 148 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 149 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 150 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 151 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 152 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 153 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 154 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 155 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 156 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 157 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 158 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 159 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 160 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 161 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 162 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 163 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 164 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 165 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 166 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 167 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 168 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 169 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 170 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 171 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 172 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 173 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 174 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 175 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 176 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 177 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 178 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 179 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 180 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 181 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 182 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 183 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 184 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 185 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 186 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 187 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 188 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 189 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 190 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 191 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 192 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 193 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 194 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 195 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 196 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 197 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 198 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 199 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 200 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 201 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 202 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 203 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 204 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 205 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 206 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 207 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 208 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 209 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 210 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 211 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 212 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 213 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 214 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 215 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 216 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 217 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 218 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 219 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 220 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 221 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 222 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 223 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 224 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 225 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 226 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 227 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 228 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 229 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 230 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 231 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 232 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 233 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 234 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 235 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 236 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 237 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 238 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 239 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 240 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 241 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 242 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 243 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 244 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 245 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 246 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 247 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 248 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 249 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 250 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 251 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 252 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 253 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 254 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 255 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 256 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 257 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 258 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 259 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 260 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 261 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 262 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 263 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 264 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 265 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 266 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 267 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 268 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 269 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 270 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 271 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 272 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 273 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 274 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 275 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 276 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 277 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 278 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 279 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 280 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 281 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 282 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 283 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 284 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 285 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 286 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 287 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 288 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 289 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 290 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 291 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 292 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 293 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 294 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 295 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 296 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 297 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 298 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 299 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 300 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 301 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 302 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 303 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 304 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 305 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 306 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 307 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 308 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 309 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 310 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 311 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 312 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 313 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 314 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 315 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 316 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 317 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 318 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 319 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 320 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 321 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 322 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 323 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 324 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 325 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 326 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 327 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 328 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 329 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 330 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 331 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 332 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 333 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 334 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 335 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 336 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 337 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 338 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 339 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 340 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 341 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 342 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 343 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 344 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 345 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 346 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 347 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 348 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 349 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 350 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 351 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 352 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 353 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 354 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 355 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 356 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 357 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 358 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 359 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 360 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 361 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 362 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 363 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 364 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 365 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 366 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 367 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 368 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 369 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 370 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 371 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 372 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 373 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 374 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 375 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 376 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 377 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 378 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 379 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 380 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 381 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 382 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 383 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 384 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 385 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 386 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 387 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 388 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 389 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 390 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 391 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 392 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 393 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 394 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 395 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 396 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 397 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 398 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 399 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 400 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 401 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 402 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 403 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 404 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 405 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 406 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 407 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 408 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 409 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 410 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 411 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 412 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 413 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 414 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 415 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 416 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 417 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 418 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 419 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 420 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 421 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 422 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 423 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 424 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 425 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 426 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 427 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 428 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 429 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 430 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 431 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 432 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 433 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 434 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 435 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 436 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 437 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 438 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 439 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 440 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 441 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 442 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 443 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 444 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 445 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 446 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 447 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 448 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 449 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 450 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 451 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 452 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 453 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 454 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 455 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 456 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 457 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 458 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 459 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 460 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 461 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 462 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 463 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 464 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 465 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 466 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 467 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 468 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 469 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 470 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 471 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 472 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 473 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 474 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 475 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 476 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 477 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 478 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 479 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 480 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 481 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 482 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 483 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 484 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 485 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 486 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 487 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 488 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 489 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 490 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 491 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 492 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 493 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 494 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 495 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 496 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 497 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 498 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 499 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 500 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 501 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 502 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 503 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 504 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 505 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 506 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 507 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 508 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 509 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 510 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 511 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 512 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 513 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 514 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 515 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 516 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 517 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 518 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 519 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 520 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 521 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 522 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 523 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 524 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 525 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 526 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 527 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 528 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 529 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 530 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 531 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 532 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 533 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 534 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 535 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 536 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 537 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 538 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 539 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 540 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 541 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 542 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 543 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 544 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 545 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 546 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 547 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 548 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 549 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 550 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 551 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 552 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 553 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 554 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 555 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 556 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 557 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 558 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 559 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 560 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 561 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 562 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 563 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 564 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 565 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 566 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 567 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 568 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 569 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 570 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 571 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 572 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 573 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 574 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 575 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 576 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 577 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 578 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 579 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 580 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 581 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 582 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 583 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 584 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 585 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 586 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 587 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 588 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 589 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 590 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
