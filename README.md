# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-08-27.md)

*最后自动更新时间: 2026-08-27 04:56:46*
## 1. Tailcat——基于 Tailscale 数据平面的 netcat

**原文标题**: Tailcat – Like netcat, but over Tailscale’s data plane

**原文链接**: [https://github.com/tailscale/tailcat](https://github.com/tailscale/tailcat)

Tailcat 是 Tailscale 开源组件的组合应用，提供类似 netcat 的点对点连接工具，走 Tailscale 数据平面（WireGuard 加密 + DERP 中继/NAT 穿透），完全绕开控制平面。无需 Tailscale 账户、root 权限或修改系统路由。一端启动服务器获取连接令牌，另一端凭令牌接入，连接元数据完全带外交换。功能涵盖：stdin/stdout 管道、TCP 端口转发、免认证 SSH、ping 诊断（区分中继与直连）、SOCKS5 代理、出口节点等。密钥分临时（默认，进程退出即失效）与持久（存盘可复用）两种，持久密钥可配合白名单限制客户端。令牌可发布为 DNS TXT 记录，按域名连接。支持自建 DERP 中继，避免依赖 Tailscale 公共中继及其速率限制。网络栈全在用户态运行（WireGuard + magicsock + gVisor），无需内核模块。提供 CLI（支持 Go 和 Nix 安装）及 Go 库。连接流程：双方经 DERP 完成 WireGuard 握手，随后尝试 STUN 发现与 UDP 打洞升级为直连，失败则回退中继。注意：Tailcat 不提供任何 API/CLI 稳定性保证，公共中继亦无 SLA。

---

## 2. GLM-5.3-Flash（极速版）

**原文标题**: GLM-5.3-Flash

**原文链接**: [https://z.ai/blog/glm-5.3-flash](https://z.ai/blog/glm-5.3-flash)

无法访问该文章链接

---

## 3. 达拉斯初创企业Actinide实现铀浓缩

**原文标题**: Dallas startup enriches Uranium

**原文链接**: [https://www.actinideinc.com/press/actinide-becomes-first-startup-to-ever-enrich-natural-uranium-to-produce-haleu](https://www.actinideinc.com/press/actinide-becomes-first-startup-to-ever-enrich-natural-uranium-to-produce-haleu)

达拉斯先进材料公司Actinide成为历史上首家成功生产高浓缩低浓缩铀（HALEU）的初创企业。该公司使用自研电磁同位素分离器（calutron）——基于曼哈顿计划技术原理，但采用现代磁体、真空系统及控制设备进行革新——在实验规模下将天然铀浓缩至15.38%的U-235含量。此前，公司已为制药企业交付富集钇-176。此举意义重大：美国目前无HALEU商业供应，铀浓缩服务77%依赖进口（其中26%来自俄罗斯），而HALEU是多数先进反应堆的必需燃料。Actinide的技术可跳过传统六氟化铀气体浓缩后须转为固体的瓶颈，直接产出固态HALEU。技术总监孟德尔森称，其设备仅需数十万美元，数月即可产出，数天内可重新配置以分离不同同位素，远优于耗资数十亿美元、建设以年计的传统离心机工厂。公司正建造第二代设备"Fortitude"，单台产能预计达美国联邦电磁分离机队总产能的一半。Actinide于2025年9月成立，2026年3月完成由Onto Ventures领投的种子轮融资，使命涵盖核能、医疗及量子计算等领域的同位素自主供应。

---

## 4. AWS收购DuckLabs

**原文标题**: AWS Acquires DuckLabs

**原文链接**: [https://ducklabs.com/news/2026/08/26/ducklabs-to-join-aws](https://ducklabs.com/news/2026/08/26/ducklabs-to-join-aws)

DuckLabs宣布将于2026年9月正式加入亚马逊云科技（AWS）。该公司由DuckDB核心创建者Raasveldt与Mühleisen五年前在阿姆斯特丹创立，团队超30人，始终坚持独立开源路线，如今DuckDB日下载量已超百万次，广泛用于数据探索、产品研发与学术研究。此次加入旨在借助AWS的基础设施与客户触达能力，将DuckDB生态推向更大规模，同时让团队专注核心研发。关键承诺方面：DuckDB、DuckLake、Quack等"Duck Stack"组件将继续以MIT许可证保持免费开源，由非营利DuckDB基金会负责监管，团队整体留驻阿姆斯特丹。未来还将在基金会中设立技术顾问委员会，并开放第三方扩展签名机制。AWS高级副总裁Andy Warfield、CWI数据库架构组负责人Peter Boncz、图宾根大学教授Torsten Grust以及MotherDuck、Fivetran等行业伙伴纷纷表态支持，认为此举将加速DuckDB生态发展，同时守护其开源开放的核心价值。

---

## 5. 3D打印机AGPLv3违规事件持续发酵

**原文标题**: An ongoing 3D-printer AGPL violation

**原文链接**: [https://lwn.net/SubscriberLink/1089390/46116614cc74b814/](https://lwn.net/SubscriberLink/1089390/46116614cc74b814/)

2026年FOSSY大会上，软件自由保护协会（SFC）的Bradley Kühn、Karen Sandler和Denver Gingerich介绍了Bambu Lab持续违反AGPLv3协议一事。Bambu Lab在消费级3D打印机市场占据约40%份额，其切片软件"Bambu Studio"基于AGPLv3许可的PrusaSlicer开发，却长期未提供完整源代码。该公司通过动态加载两个.so文件，以通用User-Agent字符串为"密钥"调用其服务器上的专有组件，这恰恰是AGPLv3旨在禁止的行为。其打印机固件中的Buildroot等组件亦违反GPLv2。波兰用户逆向相关代码后遭DMCA警告，但仍获SFC支持维护替代方案。SFC此次筹款远超25万美元目标，已聘请全职诉讼律师，并探索合同诉讼（参照Vizio案）、版权诉讼及贸易协定知识产权条款等多元维权路径。此次事件吸引了大量原本对自由软件陌生的3D打印爱好者加入社区，SFC呼吁公众在购买设备时主动要求完整源代码，以消费者压力推动企业合规。

---

## 6. CoMaps：引导委内瑞拉震区无信号救援的离线地图应用

**原文标题**: CoMaps: The Offline App That Guided Rescuers Without a Signal in Venezuela

**原文链接**: [https://hotosm.org/en/news/comaps-the-offline-app-that-guided-rescuers-without-a-signal-in-the-venezuela-response/](https://hotosm.org/en/news/comaps-the-offline-app-that-guided-rescuers-without-a-signal-in-the-venezuela-response/)

2026年委内瑞拉地震后，志愿者开发的开源离线地图应用CoMaps成为一线救援人员的关键工具。该应用基于OpenStreetMap数据，完全离线运行，仅依赖手机GPS定位，专为应急场景设计。地震后，联合创始人Anton深入无信号重灾区，用CoMaps为来自萨尔瓦多的国际救援队导航，替代了团队原本功能有限的导航应用，展现了社区志愿者贡献的详细地图数据在实战中的优势。CoMaps与开放人道主义地图组织（HOT）合作密切。地震前数月，团队已将地图更新周期从10天缩短至约3天，实现每周全球刷新，使HOT志愿者通过Tasking Manager标注的新数据能快速抵达救援现场。CoMaps的核心价值在于降低使用门槛——红十字会等机构人员无需专业培训即可直接使用，联创Bastian将其比喻为"口袋里最好的相机"：关键时刻，真正有用的工具是已经在手边的那一个。目前团队能在应急后约35小时内完成地图更新，目标是实现区域每12小时刷新一次。作为非营利开源志愿者项目，CoMaps正成为连接人道救援与开放地理信息的重要桥梁。

---

## 7. 星云无衬线字体（Nebula Sans）

**原文标题**: Nebula Sans

**原文链接**: [https://www.nebulasans.com](https://www.nebulasans.com)

Nebula Sans是独立创作者流媒体平台Nebula的品牌字体，基于Paul D. Hunt为Adobe设计的Source Sans开发，旨在替代原有品牌字体Whitney SSm，采用SIL开放字体许可证免费供所有用户使用，涵盖两种风格、六种字重，适用于界面、印刷及各类数字与实体场景。设计核心在于融合美式哥特与欧式人文主义风格并强调易读性，主要调整包括适配Whitney SSm的字距、采用卷曲标点、提供单层a/开g/带尾l等风格替代，以及品牌专属星号和表格数字功能。团队自制字体的初衷有三：实现个性化定制、集成高级排版特性、控制商业字体授权成本。

---

## 8. 通义千问3.8-Flash-Next

**原文标题**: Qwen3.8-Flash-Next

**原文链接**: [https://qwen.ai/blog?id=qwen3.8-flash-next](https://qwen.ai/blog?id=qwen3.8-flash-next)

本文提供的正文内容仅包含"Qwen"一词，未包含任何实质性段落或描述，因此无法提取有效的要点、背景或结论进行概括。该文疑似为模型名称页面或内容尚未完整加载，目前可确认的唯一信息是：该条目涉及"Qwen"（通义千问）系列，结合标题可推断指向"通义千问3.8-Flash-Next"这一版本，但关于其架构、性能、发布背景、功能特性等关键信息在现有文本中均未体现。

---

## 9. GitHub部分服务出现中断

**原文标题**: Disruption with Some GitHub Services

**原文链接**: [https://www.githubstatus.com/incidents/hcbtzksccj2f](https://www.githubstatus.com/incidents/hcbtzksccj2f)

2026年8月26日，GitHub状态页面发布事件报告，通报部分服务出现性能受损。当天下午15:09（UTC），GitHub确认收到影响报告并启动调查；16:07（UTC），即约一小时后，宣布事件已解决，感谢用户耐心与理解，并表示详细的根本原因分析将在完成后尽快公布。该状态页面由Atlassian Statuspage提供支持，同时为用户提供多种事件通知订阅渠道，包括电子邮件、短信、Slack集成、Webhook及RSS/Atom订阅，便于用户在事件创建、更新或解决时及时获知。页面还引导用户前往GitHub支持站点寻求帮助，并邀请开发者订阅技术通讯，每两月获取技术指南与最佳实践。整体来看，此次为一次短暂的服务性能故障，影响时长约一小时，目前已恢复正常。

---

## 10. Hugging Face 数据泄露事件及未来展望

**原文标题**: The Hugging Face incident and the road ahead

**原文链接**: [https://openai.com/index/hugging-face-incident-and-the-road-ahead/](https://openai.com/index/hugging-face-incident-and-the-road-ahead/)

2025年9月，Hugging Face 平台上一个开源代码仓库意外包含了 OpenAI 工程师使用 AI 编程助手（如 Codex）时生成的内部聊天记录，其中涉及 GPT-5 等前沿模型的架构设计、训练策略、未发布功能及内部研发讨论等高度敏感信息。事件曝光后，Hugging Face 迅速下架相关仓库，OpenAI 随即发布本文明确回应。文章首先确认了泄露事实，指出受影响数据主要集中于模型训练与工程开发环节，并强调公司已启动内部安全审查。OpenAI 表示，此次事件凸显了 AI 辅助编程工具在大规模普及过程中，日志与上下文数据管理面临的新挑战——工程师在本地或云端使用 AI 工具时，敏感信息可能随代码片段外流。文章随后提出多项改进方向：一是强化内部数据分级与访问控制，对涉及核心模型信息的对话日志实施更严格的脱敏与加密；二是推动与 Hugging Face 等社区平台的协作，建立异常数据上传的自动检测与预警机制；三是呼吁整个 AI 行业共同制定开源代码中嵌入信息的审查规范，防止类似事故重演。最后，OpenAI 重申对 AI 安全与透明的承诺，表示将继续平衡技术开放与核心知识产权保护，并与业界一道探索更稳健的数据治理框架，以应对日益复杂的 AI 开发协作环境。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 2 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 3 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 4 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 5 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 6 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 7 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 8 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 9 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 10 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 11 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 12 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 13 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 14 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 15 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 16 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 17 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 18 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 19 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 20 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 21 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 22 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 23 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 24 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 25 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 26 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 27 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 28 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 29 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 30 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 31 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 32 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 33 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 34 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 35 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 36 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 37 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 38 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 39 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 40 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 41 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 42 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 43 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 44 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 45 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 46 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 47 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 48 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 49 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 50 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 51 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 52 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 53 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 54 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 55 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 56 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 57 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 58 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 59 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 60 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 61 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 62 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 63 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 64 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 65 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 66 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 67 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 68 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 69 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 70 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 71 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 72 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 73 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 74 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 75 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 76 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 77 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 78 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 79 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 80 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 81 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 82 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 83 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 84 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 85 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 86 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 87 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 88 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 89 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 90 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 91 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 92 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 93 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 94 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 95 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 96 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 97 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 98 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 99 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 100 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 101 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 102 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 103 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 104 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 105 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 106 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 107 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 108 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 109 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 110 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 111 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 112 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 113 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 114 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 115 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 116 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 117 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 118 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 119 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 120 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 121 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 122 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 123 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 124 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 125 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 126 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 127 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 128 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 129 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 130 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 131 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 132 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 133 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 134 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 135 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 136 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 137 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 138 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 139 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 140 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 141 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 142 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 143 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 144 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 145 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 146 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 147 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 148 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 149 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 150 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 151 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 152 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 153 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 154 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 155 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 156 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 157 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 158 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 159 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 160 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 161 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 162 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 163 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 164 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 165 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 166 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 167 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 168 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 169 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 170 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 171 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 172 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 173 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 174 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 175 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 176 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 177 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 178 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 179 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 180 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 181 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 182 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 183 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 184 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 185 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 186 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 187 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 188 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 189 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 190 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 191 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 192 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 193 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 194 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 195 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 196 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 197 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 198 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 199 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 200 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 201 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 202 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 203 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 204 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 205 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 206 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 207 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 208 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 209 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 210 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 211 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 212 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 213 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 214 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 215 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 216 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 217 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 218 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 219 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 220 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 221 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 222 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 223 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 224 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 225 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 226 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 227 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 228 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 229 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 230 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 231 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 232 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 233 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 234 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 235 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 236 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 237 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 238 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 239 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 240 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 241 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 242 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 243 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 244 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 245 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 246 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 247 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 248 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 249 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 250 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 251 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 252 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 253 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 254 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 255 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 256 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 257 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 258 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 259 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 260 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 261 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 262 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 263 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 264 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 265 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 266 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 267 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 268 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 269 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 270 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 271 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 272 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 273 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 274 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 275 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 276 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 277 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 278 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 279 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 280 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 281 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 282 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 283 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 284 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 285 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 286 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 287 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 288 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 289 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 290 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 291 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 292 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 293 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 294 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 295 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 296 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 297 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 298 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 299 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 300 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 301 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 302 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 303 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 304 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 305 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 306 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 307 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 308 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 309 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 310 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 311 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 312 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 313 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 314 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 315 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 316 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 317 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 318 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 319 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 320 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 321 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 322 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 323 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 324 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 325 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 326 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 327 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 328 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 329 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 330 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 331 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 332 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 333 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 334 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 335 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 336 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 337 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 338 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 339 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 340 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 341 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 342 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 343 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 344 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 345 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 346 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 347 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 348 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 349 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 350 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 351 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 352 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 353 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 354 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 355 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 356 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 357 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 358 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 359 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 360 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 361 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 362 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 363 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 364 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 365 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 366 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 367 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 368 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 369 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 370 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 371 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 372 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 373 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 374 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 375 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 376 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 377 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 378 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 379 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 380 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 381 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 382 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 383 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 384 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 385 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 386 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 387 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 388 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 389 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 390 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 391 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 392 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 393 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 394 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 395 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 396 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 397 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 398 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 399 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 400 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 401 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 402 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 403 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 404 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 405 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 406 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 407 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 408 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 409 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 410 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 411 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 412 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 413 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 414 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 415 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 416 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 417 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 418 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 419 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 420 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 421 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 422 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 423 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 424 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 425 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 426 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 427 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 428 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 429 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 430 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 431 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 432 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 433 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 434 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 435 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 436 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 437 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 438 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 439 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 440 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 441 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 442 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 443 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 444 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 445 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 446 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 447 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 448 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 449 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 450 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 451 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 452 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 453 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 454 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 455 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 456 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 457 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 458 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 459 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 460 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 461 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 462 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 463 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 464 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 465 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 466 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 467 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 468 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 469 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 470 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 471 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 472 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 473 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 474 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 475 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 476 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 477 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 478 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 479 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 480 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 481 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 482 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 483 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 484 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 485 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 486 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 487 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 488 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 489 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 490 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 491 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 492 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 493 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 494 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 495 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 496 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 497 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 498 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 499 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 500 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 501 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 502 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 503 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 504 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 505 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 506 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 507 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 508 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 509 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 510 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 511 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 512 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 513 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 514 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 515 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 516 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 517 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 518 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 519 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 520 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 521 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
