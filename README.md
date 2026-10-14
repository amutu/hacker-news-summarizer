# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-10-15.md)

*最后自动更新时间: 2026-10-15 04:57:04*
## 1. 2026年确诊癌症后，这些你必须知道

**原文标题**: Things to know if you get cancer in 2026

**原文链接**: [https://jjmaxwell4.com/writing/things-to-know-when-you-get-cancer/](https://jjmaxwell4.com/writing/things-to-know-when-you-get-cancer/)

作者于2026年5月确诊口腔鳞状细胞癌，基于自身经历分享以下经验：一、预约需锲而不舍，多打电话争取加号或取消号，切勿被动等待；二、AI可能淡化病情严重性，不可盲目依赖；三、须主动推动基因检测，若医生拖延则持续跟进或更换团队；四、自行查阅NCCN临床指南PDF，了解各阶段标准治疗方案，借助AI辅助分析自身选项；五、术前应与同类手术患者交流真实体验，并询问医生手术量与并发症率；六、确诊后尽早赴顶级癌症中心获取第二诊疗意见，申请病理切片二次会诊；七、利用AI语音摘要工具记录每次就诊内容，形成追踪档案；八、关注Sijbrandij Foundation等组织获取实用就医资源。核心建议是：在癌症诊疗中，患者须主动掌控节奏、坚持跟进、多方求证，因为最关心自身病情的只有自己。

---

## 2. Go 1.27 中 HTTP/1 连接复用性能优化

**原文标题**: Better HTTP/1 connection reuse in Go 1.27

**原文链接**: [https://go.dev/blog/http-connection-reuse](https://go.dev/blog/http-connection-reuse)

建立新 TCP/TLS 连接需 1–3 个网络往返，开销巨大。HTTP/1 中请求与响应在同一连接上串行传输，若响应体未读完即关闭连接，后续请求无法复用该连接，被迫反复新建连接。此陷阱极为隐蔽：仅取状态码而忽略 body、JSON 解码后残留换行符等常见场景均会触发。Go 1.26 及之前，开发者须手动将 body 内容排空至 io.Discard，同时限制排空上限（256KB）与超时（50ms）并异步执行，代码复杂且易引入 goroutine 泄漏等问题。Go 1.27 起，net/http.Transport 自动在后台异步排空未读完的 HTTP/1 响应体（上限 256KB 或 50ms），对含 Connection: close 响应头则跳过排空。实测中，100 次请求 index.golang.org 的耗时从约 710ms 降至 150ms，性能提升近 5 倍。官方建议用户只需在不再需要响应体时调用 Close()，将连接复用与清理的复杂性交由标准库处理，保持代码简洁。

---

## 3. 保加利亚星链设施疑遭蓄意纵火 波兰此前亦发生类似破坏事件

**原文标题**: Fire at Starlink site in Bulgaria after suspected sabotage in Poland

**原文链接**: [https://dpa-international.com/politics/urn:newsml:dpa.com:20090101:261014-930-839530/](https://dpa-international.com/politics/urn:newsml:dpa.com:20090101:261014-930-839530/)

摘要：保加利亚总理拉德夫证实，10月9日首都索非亚附近一处星链卫星互联网设施发生火灾，17根天线中11根疑似被人为纵火。星链是乌克兰对抗俄罗斯入侵的重要战略设施，反对派怀疑俄方与此事有关。两名分别20岁和21岁、持德国护照的男子已于周一被保加利亚警方拘留，二人有移民背景，经希腊库拉塔口岸合法入境。调查人员正审查其是否属于一个更大破坏网络——此前9月23日华沙以南星链地面终端亦遭纵火，两名涉嫌波兰袭击的嫌疑男子于本周二在德国施图加特附近被捕，华沙政府怀疑俄罗斯情报部门幕后指使。保加利亚内政部长表示已对同类设施强化安保，国家安全局局长认定此次事件系蓄意破坏，并警告类似行动未来仍可能发生。

---

## 4. Phloem：Git 历史如黏菌般生长

**原文标题**: Phloem: Git history grown like a slime mold

**原文链接**: [https://phloem.stemdeck.app/](https://phloem.stemdeck.app/)

Phloem 是一款基于 WebGL 的创意可视化工具，将 Git 仓库的提交历史以类似黏菌（slime mold）有机蔓延、分枝、融合的形态直观呈现。与传统时间线或节点图不同，它借鉴生物学中黏菌生长的视觉特征，让代码仓库的演变如同一株持续伸展的有机体，赋予冷冰冰的提交记录以生动的生命感。该工具完全依赖 WebGL 进行画面渲染，需在浏览器中启用 JavaScript 方可正常运行。这种独特的呈现方式既有助于开发者以更直觉的方式理解项目分支与合并的演进脉络，也为技术社区提供了一种兼具科学性与艺术性的开源数据可视化视角。

---

## 5. Neckbeard——面向编码智能体的 DevOps/平台运维插件

**原文标题**: Neckbeard – a DevOps/platform/SRE plugin for your agent

**原文链接**: [https://github.com/bealesh/neckbeard](https://github.com/bealesh/neckbeard)

Neckbeard 是一款面向编码智能体的 DevOps 插件，将应用自动转化为可审查的云基础设施代码与月度成本估算。支持 AWS、GCP、Azure 多云，GitHub Actions 与 GitLab CI，以及无服务器容器与 Kubernetes 两种运行时，底层基于经验证的 OpenTofu 模块目录。其核心设计为"角色反转"：人类维护版本化模块与流水线，Agent 仅负责分析应用、映射参数并解释决策；规划、渲染、验证全由确定性代码完成，Agent 绝不凭空生成基础设施。提供 analyze、estimate、sync、doctor 等斜杠命令，覆盖从应用画像到脚手架生成的完整流程。成本对比以同一参考应用为例：Cloud Run 约 $77/月，EKS/GKE/AKS 则达 $396–$801/月，让独立开发者有据可依地拒绝过早采用 K8s。验证采用 V0（静态）/V1（计划）/V2（部署）三级体系，未执行阶段如实标注"NOT EXERCISED"，每条安全策略跳过均附书面理由，贯彻"诚实即架构"原则。当前处于预-alpha 阶段，产品聚焦于环境搭建与交付环节——可审查的基础设施、流水线、成本报告及引导手册；部署与回滚等生命周期能力尚在门禁式推进中。

---

## 6. Iosevka：一款开源无衬线与板衬线等宽字体

**原文标题**: Iosevka is an open-source, sans-serif and slab-serif monospace font

**原文链接**: [https://typeof.net/Iosevka/](https://typeof.net/Iosevka/)

Iosevka 是一款开源等宽字体家族，涵盖无衬线体与板状衬线体两种风格。该字体默认采用纤细设计，字形宽度仅为 1/2em，相较于同类竞品，在相同屏幕宽度下可容纳更多字符列，有效提升屏幕空间利用率。此外，Iosevka 提供 Normal（标准）与 Extended（扩展）两种宽度选项：标准宽度紧凑高效，适合追求信息密度的用户；扩展宽度则在字符之间保留更大间距，适合偏好开阔阅读体验的用户。用户可根据个人需求自由切换，兼顾专业性能与阅读舒适度。

---

## 7. 银行正急于甩脱自己刚承销的AI数据中心债务

**原文标题**: Banks are now trying to offload the AI data center debt they just underwrote

**原文链接**: [https://startupfortune.com/banks-are-now-trying-to-offload-the-ai-data-center-debt-they-just-underwrote/](https://startupfortune.com/banks-are-now-trying-to-offload-the-ai-data-center-debt-they-just-underwrote/)

摘要：摩根大通、摩根士丹利、三井住友、三菱UFJ等大行正通过风险转移操作，将此前承销的AI数据中心贷款剥离出资产负债表。六个月前它们还在竞相为Oracle、Meta等AI基建项目提供融资，如今却因触及内部行业集中度限额而急于分散风险。典型案例：与Oracle关联的380亿美元数据中心建设贷款，银行耗时逾六個月仍无法顺利分销，部分银行已折价出售。Oracle五年期CDS升至151个基点（2009年以来最高），标普已将其评级降至BBB-，距垃圾级仅一步之遥，且本财年还计划再融资超400亿美元。与此同时，AI公司债券认购倍数从二月的约5倍降至七月的不足2倍；10年期美债收益率触及5.3%（2002年以来最高），进一步推高融资成本。资金正向微软、谷歌等投资级超大规模云厂商集中，CoreWeave等弱信用公司融资成本显著偏高。Man Group信贷风险主管称当前交易规模"超出任何历史模型"。AI繁荣的隐性前提——信贷可长期以合理成本持续供给——正面临前所未有的现实检验。

---

## 8. Show HN：Petal——免费开源的 CoScreen/ScreenHero 替代方案

**原文标题**: Show HN: Petal, open-source CoScreen/ScreenHero finally free

**原文链接**: [https://petal.live/](https://petal.live/)

摘要：Petal 是一款开源实时结对编程工具，旨在取代 CoScreen 和 ScreenHero。其核心特性包括：窗口以真实桌面窗口形式共享（可移动、可缩放，非网格平铺）；支持多用户同时共享多个窗口；带用户标签的实时光标与远程键鼠输入；支持创建持久房间（如"eng-sync"），一键加入无需发送链接。项目提供三种部署方式：基于 LiveKit 的 Petal Cloud（零配置）、Docker 自托管（媒体流量自控，适合合规场景）、以及完全 Fork 源码构建。文章以 Rust 合成器代码（如 hold_last_frame 防止黑帧）和协作界面截图展示了技术实现与产品体验，强调开放与可控。

---

## 9. 海底通信电缆的韧性

**原文标题**: Submarine cable resilience

**原文链接**: [https://blog.apnic.net/2026/10/14/submarine-cable-resilience/](https://blog.apnic.net/2026/10/14/submarine-cable-resilience/)

海底电缆是全球通信的核心基础设施，全球约有150万公里电缆、607个在役系统，卫星无法替代其承载能力。文章指出，海底电缆面临地质灾害、船舶锚定与渔业拖网（占故障的86%）及战时人为切断等多重威胁，历史上英国曾在两次世界大战中切断德国电缆以截获情报。防御手段包括浅海段加装钢缆铠装、设立"电缆保护区"及优化路由，但曼德海峡、新加坡海峡、吕宋海峡等地理瓶颈和地缘政治风险仍使关键路段极为脆弱。近年故障频发：马祖电缆2018至2022年间被切断27次，波罗的海自2023年以来出现11次中断。全球每年约200次电缆故障，单次维修费约50万至100万美元，但维修响应时间近十年已翻倍，2023年最长一次耗时947天。行业仅有约60艘维修船，其中三分之二将在2040年前退役，而同期电缆里程预计增长48%，填补缺口需30亿美元及二十艘新船，却无明确出资主体。文章指出，新建电缆因有超大规模云厂商资助尚可推进，但维修船队依赖低成本共享协议，长期投资不足，这是海底电缆韧性面临的核心困境。

---

## 10. Show HN：帖木儿棋——一种14世纪含"长棋"的象棋变体

**原文标题**: Show HN: Timur's Chess – A 14th century chess variant with giraffes

**原文链接**: [https://timurschess.com](https://timurschess.com)

本文是 Hacker News 上一个名为"帖木儿棋"（Timur's Chess）的项目展示页。帖木儿棋是一种源自14世纪的象棋变体，其特色在于棋局中包含一种名为"长棋"（Giraffe）的独特棋子，反映了当时中亚地区的棋类玩法。该项目采用 WebAssembly 技术实现，提供两种运行方式：浏览器在线版需启用 JavaScript 以加载 WebAssembly 模块；同时附带可独立运行的本地原生可执行文件，无需浏览器环境。项目旨在借助现代技术让当代玩家体验数百年前的历史棋局，兼具历史文化趣味与互动性。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 2 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 3 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 4 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 5 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 6 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 7 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 8 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 9 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 10 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 11 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 12 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 13 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 14 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 15 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 16 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 17 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 18 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 19 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 20 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 21 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 22 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 23 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 24 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 25 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 26 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 27 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 28 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 29 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 30 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 31 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 32 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 33 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 34 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 35 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 36 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 37 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 38 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 39 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 40 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 41 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 42 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 43 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 44 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 45 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 46 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 47 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 48 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 49 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 50 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 51 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 52 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 53 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 54 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 55 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 56 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 57 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 58 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 59 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 60 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 61 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 62 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 63 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 64 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 65 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 66 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 67 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 68 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 69 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 70 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 71 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 72 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 73 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 74 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 75 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 76 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 77 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 78 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 79 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 80 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 81 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 82 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 83 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 84 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 85 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 86 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 87 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 88 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 89 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 90 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 91 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 92 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 93 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 94 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 95 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 96 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 97 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 98 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 99 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 100 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 101 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 102 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 103 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 104 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 105 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 106 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 107 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 108 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 109 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 110 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 111 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 112 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 113 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 114 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 115 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 116 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 117 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 118 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 119 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 120 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 121 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 122 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 123 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 124 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 125 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 126 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 127 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 128 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 129 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 130 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 131 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 132 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 133 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 134 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 135 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 136 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 137 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 138 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 139 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 140 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 141 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 142 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 143 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 144 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 145 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 146 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 147 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 148 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 149 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 150 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 151 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 152 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 153 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 154 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 155 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 156 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 157 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 158 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 159 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 160 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 161 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 162 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 163 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 164 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 165 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 166 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 167 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 168 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 169 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 170 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 171 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 172 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 173 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 174 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 175 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 176 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 177 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 178 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 179 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 180 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 181 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 182 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 183 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 184 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 185 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 186 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 187 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 188 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 189 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 190 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 191 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 192 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 193 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 194 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 195 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 196 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 197 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 198 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 199 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 200 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 201 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 202 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 203 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 204 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 205 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 206 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 207 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 208 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 209 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 210 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 211 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 212 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 213 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 214 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 215 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 216 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 217 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 218 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 219 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 220 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 221 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 222 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 223 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 224 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 225 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 226 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 227 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 228 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 229 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 230 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 231 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 232 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 233 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 234 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 235 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 236 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 237 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 238 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 239 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 240 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 241 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 242 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 243 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 244 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 245 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 246 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 247 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 248 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 249 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 250 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 251 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 252 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 253 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 254 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 255 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 256 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 257 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 258 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 259 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 260 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 261 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 262 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 263 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 264 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 265 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 266 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 267 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 268 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 269 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 270 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 271 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 272 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 273 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 274 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 275 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 276 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 277 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 278 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 279 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 280 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 281 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 282 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 283 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 284 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 285 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 286 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 287 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 288 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 289 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 290 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 291 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 292 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 293 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 294 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 295 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 296 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 297 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 298 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 299 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 300 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 301 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 302 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 303 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 304 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 305 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 306 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 307 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 308 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 309 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 310 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 311 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 312 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 313 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 314 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 315 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 316 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 317 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 318 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 319 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 320 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 321 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 322 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 323 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 324 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 325 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 326 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 327 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 328 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 329 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 330 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 331 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 332 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 333 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 334 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 335 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 336 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 337 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 338 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 339 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 340 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 341 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 342 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 343 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 344 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 345 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 346 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 347 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 348 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 349 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 350 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 351 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 352 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 353 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 354 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 355 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 356 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 357 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 358 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 359 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 360 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 361 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 362 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 363 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 364 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 365 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 366 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 367 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 368 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 369 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 370 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 371 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 372 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 373 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 374 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 375 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 376 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 377 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 378 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 379 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 380 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 381 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 382 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 383 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 384 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 385 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 386 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 387 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 388 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 389 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 390 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 391 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 392 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 393 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 394 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 395 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 396 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 397 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 398 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 399 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 400 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 401 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 402 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 403 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 404 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 405 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 406 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 407 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 408 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 409 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 410 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 411 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 412 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 413 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 414 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 415 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 416 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 417 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 418 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 419 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 420 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 421 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 422 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 423 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 424 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 425 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 426 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 427 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 428 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 429 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 430 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 431 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 432 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 433 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 434 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 435 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 436 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 437 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 438 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 439 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 440 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 441 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 442 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 443 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 444 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 445 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 446 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 447 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 448 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 449 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 450 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 451 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 452 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 453 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 454 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 455 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 456 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 457 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 458 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 459 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 460 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 461 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 462 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 463 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 464 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 465 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 466 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 467 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 468 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 469 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 470 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 471 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 472 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 473 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 474 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 475 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 476 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 477 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 478 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 479 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 480 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 481 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 482 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 483 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 484 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 485 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 486 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 487 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 488 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 489 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 490 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 491 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 492 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 493 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 494 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 495 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 496 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 497 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 498 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 499 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 500 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 501 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 502 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 503 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 504 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 505 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 506 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 507 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 508 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 509 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 510 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 511 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 512 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 513 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 514 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 515 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 516 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 517 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 518 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 519 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 520 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 521 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 522 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 523 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 524 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 525 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 526 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 527 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 528 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 529 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 530 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 531 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 532 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 533 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 534 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 535 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 536 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 537 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 538 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 539 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 540 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 541 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 542 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 543 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 544 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 545 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 546 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 547 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 548 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 549 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 550 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 551 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 552 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 553 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 554 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 555 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 556 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 557 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 558 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 559 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 560 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 561 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 562 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 563 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 564 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 565 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 566 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 567 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 568 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 569 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 570 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
