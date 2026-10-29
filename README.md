# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-10-30.md)

*最后自动更新时间: 2026-10-30 04:58:38*
## 1. 帕特里克·斯图尔特去世

**原文标题**: Patrick Stewart has died

**原文链接**: [https://www.nytimes.com/2026/10/29/arts/television/patrick-stewart-dead.html](https://www.nytimes.com/2026/10/29/arts/television/patrick-stewart-dead.html)

无法访问该文章链接。

---

## 2. Mistral Large 4（Le Chonk）权重正式发布

**原文标题**: We're releasing the weights of Mistral Large 4

**原文链接**: [https://mistral.ai/news/mistral-large-4-oss/](https://mistral.ai/news/mistral-large-4-oss/)

摘要：Mistral正式发布1万亿参数原生多模态模型Mistral Large 4（代号Le Chonk）的完整开放权重。经三周强化学习迭代，该模型在编码与防御性安全领域实现大幅跃升。编码方面，FrontierCode 2.0得分19.7%位列开源第一，Terminal-Bench 4.0达41%，Coding Agent Index以48%与GLM-5.3持平且token消耗减少47%；新增低/中/高三档推理模式以平衡性能与成本。安全方面，Cyber Index得分51%，对恶意请求拒绝率达96.6%，获Booz Allen、Cloudflare、CrowdStrike、ENISA、Fortinet等机构背书。企业场景中，FinWorkBench达73.3%，BrowseComp达84.5%，智能体安全防护率达97.1%。模型完全开放权重，在欧洲基础设施上从头训练，支持自托管与定制部署，契合主权AI需求。Mistral同时向Orange Cyberdefense等企业伙伴提供面向渗透测试的专项变体，并持续迭代安全护栏。

---

## 3. 软件社区的重要性

**原文标题**: The importance of communities around software

**原文链接**: [https://lumi.codeberg.page/blog/software-community.html](https://lumi.codeberg.page/blog/software-community.html)

作者回顾自己多年来在软件自由领域的行动经历，指出关注重心已从强著作权（copyleft）许可证转向软件项目周边的社区，认为社区才是决定项目价值观的核心。著作权制度本身维护权贵利益，copyleft 虽可反制，但属权宜之计；而自由软件许可证无法保证项目在包容性、社区自主治理、是否支持生成式模型等方面的伦理立场。作者以同时附带商业许可和贡献者协议的 AGPL 项目为例，说明"自由"标签可能名不副实。她提出评估项目时应综合考量：行为准则是否包容、是否禁止生成式模型、是否受公司控制、有无贡献者协议、是否绑定专有平台、核心开发者的伦理观。作者呼吁读者积极参与社区——不仅限于编程，还包括文档、美术、社区管理等——为无力发声者代言；也鼓励加入或创建跨项目的软件合作社，如星光网络与合声，以协作方式共同推动自由、合乎伦理的软件生态。

---

## 4. 疑似中国间谍与英伟达CEO黄仁勋"关系密切"引美方警觉

**原文标题**: Alleged Chinese spy had 'close relationship' with Nvidia boss Jensen Huang

**原文链接**: [https://nypost.com/2026/10/29/business/alleged-chinese-spy-had-close-relationship-with-nvidia-boss-jensen-huang-report/](https://nypost.com/2026/10/29/business/alleged-chinese-spy-had-close-relationship-with-nvidia-boss-jensen-huang-report/)

据《纽约时报》报道，一名化名Alice Huang（黄磊）的中国公民、新加坡Megaspeed公司高管，被指充当中国间谍向北京传递情报。该公司是英伟达客户，为阿里巴巴等中国公司提供AI算力，并被怀疑通过东南亚数据中心帮助中国企业规避美国芯片出口限制。

美国情报机构在监视其通信时发现，她与英伟达CEO黄仁勋关系密切，两人曾于2024年在台北酒吧同饮威士忌。然而报告未提供证据证明黄仁勋知晓其情报活动，但部分特朗普政府高官质疑他"不可能不知情"。

特朗普一年多前已获通报，但因担忧影响英伟达芯片销售及中美贸易关系而未采取行动。黄仁勋与特朗普交往密切，英伟达曾向白宫活动捐款至少2000万美元，并承诺5000亿美元美国制造业投资，同时成功游说放宽对华AI芯片出口限制。

英伟达回应称与客户会面属正常业务往来，仅涉及普通商业信息，无涉国家安全，驳斥芯片被转移的说法。中国使馆则斥责美方散布"中国间谍"叙事，呼吁停止技术封锁。

---

## 5. Show HN：自动忽略 macOS「允许 <应用> 发现本地网络设备」弹窗

**原文标题**: Show HN: Auto Dismiss Mac OS "Allow <app> to find devices on local networks?"

**原文链接**: [https://github.com/johncassil/dontallow](https://github.com/johncassil/dontallow)

摘要：macOS Sequoia 起，本地网络权限弹窗频繁复现且系统不记住决策，根源在于 Chromium 浏览器每次启动将自身复制至随机临时路径、部分应用使用版本化安装路径，以及系统错误归因弹窗归属等，且无官方清理或 MDM 预置拒绝方案。dontallow 是一个纯 Swift 单文件、零依赖的 macOS 工具，通过 Accessibility API 监听 UserNotificationCenter 窗口创建事件，识别弹窗后自动点击"不允许"，延迟仅 0.25 秒，空闲零 CPU 开销，开机自启。安装支持 Homebrew 或 make，自动注册 launchd 代理并引导授予辅助功能权限。提供 status、pause、resume、rules、uninstall 等子命令，支持白名单、宽限期及暂停时长配置，每次消除弹窗会发送通知告知应用名。对确需本地网络访问的场景，可临时暂停、加入白名单或在系统设置中手动覆盖。托管 Mac 可通过 PPPC 配置文件批量部署。工具不修改系统文件、不降低安全等级、绝不点击"允许"。支持 Apple Silicon 与 Intel，MIT 协议。

---

## 6. H.264：何以如此神奇

**原文标题**: H.264 Is Magic (2016)

**原文链接**: [https://sidbala.com/h-264-is-magic/](https://sidbala.com/h-264-is-magic/)

摘要：H.264是当今 ubiquitous 的视频压缩标准，广泛应用于网络视频、蓝光、手机等领域。文章以Apple主页为例，展示5秒60帧H.264视频仅175KB，而单帧PNG截图达1015KB，效率高出约1500倍。其核心原理分四步：一是量化，通过频域变换将图像细节分离，丢弃高频细粒度信息以大幅削减空间冗余；二是色度抽样，利用人眼对色彩细节不敏感的生理特性，将YCbCr中的色度分量降至1/4分辨率，带宽再减半；三是运动补偿，将帧划分为16×16宏块，关键帧（I帧）存储完整图像，预测帧（P/B帧）仅记录运动矢量，从而将数百帧压缩为极少数关键帧加位移信息；四是熵编码，对剩余统计冗余进行无损压缩。四项技术叠加，使1.2GB原始数据（1232×1154@60fps×5秒）最终压缩至175KB，相当于将3000磅汽车减重至6.5盎司。文章还解释了YouTube回退播放时短暂卡顿的原因——解码器需从最近I帧重新累加运动矢量。尽管有所简化，文章清晰呈现了H.264"化繁为简"的压缩精髓。

---

## 7. 环球步行28年，他已近归途

**原文标题**: After 28 years walking across the globe, he's almost home

**原文链接**: [https://www.nytimes.com/2026/10/29/world/europe/karl-bushby-walking-globe-uk.html](https://www.nytimes.com/2026/10/29/world/europe/karl-bushby-walking-globe-uk.html)

无法访问该文章链接

---

## 8. Duet：聊天机器人交互的未来

**原文标题**: Duet is the future of chatbot interaction

**原文链接**: [https://fig.blue/posts/duet-is-the-future/](https://fig.blue/posts/duet-is-the-future/)

本文作者是一位不愿为Anthropic"站台"的开发者，却坦言Duet是目前体验最出色的AI助手，已替代其大部分AI工作流。文章从四个方面肯定Duet的优势：一是响应极快，Opus 5.5经专项调优，避免了以往助手应用因后台任务阻塞前台交互的问题；二是"频道"机制，自动创建、管理和组织对话会话，形成自然的工作层级，有效解决了多任务切换与会话混乱的长期痛点；三是访问策略克制，按频道隔离代码仓库权限，不索取用户凭证，不存储凭据，主动保持能力边界；四是回复简洁，拒绝冗长输出，表情回应也恰到好处。作者同时指出不足：产品仍处于测试期，存在线程不可见、权限绑定竞态失败等缺陷；语音交互远逊于竞品Dot。文章最核心的判断是Duet的层级化权限架构——顶层总览全局但无底层权限，频道拥有权限但受上下文约束，子线程进一步沙箱化——使权限与上下文管理成为产品原生能力而非外部拼凑，作者认为这一设计将预示聊天机器人交互界面的未来默认形态。

---

## 9. DoorDash拟以约170亿美元收购Instacart

**原文标题**: DoorDash to acquire Instacart

**原文链接**: [https://about.doordash.com/en-us/news/doordash-to-acquire-instacart](https://about.doordash.com/en-us/news/doordash-to-acquire-instacart)

DoorDash宣布以每股65美元（较10月22日收盘价溢价26%）、股权价值约170亿美元收购Instacart，对价至少75%为现金，股东可选全现金、DASH股票或组合（股票上限25%）。Instacart董事会已一致批准。合并后，双方将整合DoorDash配送网络与Instacart杂货履约及AI技术，赋能各规模本地商家与大型电商竞争。消费者可享超15万家门店选择，DashPass与Instacart+会员合并为一项，年省约1亿美元；骑手与采购员获更多灵活收入机会。DoorDash承诺保持开放平台、不设杂货排他条款，并保留Instacart品牌及企业级技术产品。交易预计2027年底至2028年上半年完成，须经股东批准及美国、加拿大、以色列等地反垄断审查。DoorDash以自有资金和债务融资支付现金部分，已与摩根大通签署桥贷融资函，约19%的Instacart股东已承诺投赞成票。

---

## 10. 每层一审查：按代码阅读方式拆分审查流程

**原文标题**: One reviewer per layer: splitting code review by the way code is read

**原文链接**: [https://djordjepuzic.com/blog/posts/2026-10-27-one-reviewer-per-layer/](https://djordjepuzic.com/blog/posts/2026-10-27-one-reviewer-per-layer/)

Claude Code团队面临日均合并量从2500次飙升至3万以上，逐行审查已不可行。文章提出：代码审查不应由单一审查者承担全部层级，而应按阅读代码的方式分层，每层由独立审查者负责。作者将审查分为六层：意图、形式（交给编译器与linter）、局部含义（函数是否兑现契约）、接线（模块间连接）、运行时（并发与性能）、使用（用户工作流与文档）。关键洞察是：层不是代码在文件中的位置，而是判断它所需的不同理解程度。架构上，作者主张用树而非线性流水线，各层只读本层信息，以契约形式向上传递，借鉴Parnas 1972年信息隐藏原则，双向传递能捕获"每层都对但整体对用户错误"的变更。进一步，安全、历史、可逆性等横切关注点作为"镜头"叠加于层上形成矩阵；实践上5个上下文检索器乘4个镜头即可覆盖20个视角，按需激活。文章也指出风险：层间接缝是bug高发区，多审查者带来噪音需协调去重，成本应按变更风险裁剪。测试方法是收集历史事故PR，标注bug所在层与镜头，以指导建设优先级。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 2 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 3 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 4 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 5 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 6 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 7 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 8 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 9 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 10 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 11 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 12 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 13 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 14 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 15 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 16 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 17 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 18 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 19 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 20 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 21 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 22 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 23 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 24 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 25 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 26 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 27 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 28 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 29 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 30 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 31 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 32 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 33 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 34 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 35 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 36 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 37 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 38 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 39 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 40 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 41 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 42 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 43 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 44 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 45 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 46 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 47 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 48 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 49 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 50 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 51 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 52 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 53 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 54 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 55 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 56 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 57 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 58 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 59 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 60 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 61 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 62 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 63 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 64 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 65 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 66 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 67 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 68 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 69 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 70 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 71 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 72 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 73 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 74 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 75 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 76 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 77 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 78 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 79 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 80 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 81 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 82 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 83 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 84 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 85 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 86 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 87 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 88 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 89 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 90 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 91 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 92 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 93 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 94 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 95 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 96 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 97 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 98 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 99 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 100 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 101 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 102 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 103 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 104 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 105 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 106 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 107 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 108 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 109 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 110 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 111 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 112 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 113 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 114 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 115 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 116 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 117 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 118 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 119 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 120 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 121 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 122 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 123 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 124 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 125 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 126 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 127 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 128 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 129 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 130 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 131 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 132 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 133 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 134 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 135 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 136 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 137 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 138 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 139 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 140 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 141 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 142 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 143 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 144 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 145 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 146 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 147 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 148 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 149 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 150 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 151 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 152 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 153 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 154 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 155 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 156 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 157 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 158 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 159 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 160 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 161 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 162 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 163 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 164 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 165 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 166 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 167 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 168 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 169 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 170 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 171 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 172 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 173 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 174 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 175 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 176 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 177 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 178 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 179 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 180 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 181 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 182 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 183 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 184 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 185 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 186 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 187 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 188 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 189 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 190 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 191 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 192 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 193 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 194 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 195 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 196 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 197 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 198 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 199 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 200 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 201 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 202 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 203 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 204 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 205 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 206 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 207 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 208 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 209 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 210 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 211 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 212 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 213 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 214 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 215 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 216 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 217 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 218 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 219 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 220 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 221 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 222 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 223 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 224 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 225 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 226 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 227 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 228 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 229 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 230 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 231 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 232 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 233 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 234 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 235 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 236 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 237 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 238 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 239 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 240 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 241 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 242 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 243 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 244 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 245 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 246 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 247 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 248 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 249 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 250 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 251 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 252 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 253 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 254 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 255 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 256 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 257 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 258 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 259 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 260 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 261 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 262 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 263 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 264 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 265 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 266 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 267 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 268 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 269 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 270 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 271 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 272 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 273 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 274 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 275 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 276 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 277 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 278 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 279 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 280 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 281 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 282 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 283 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 284 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 285 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 286 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 287 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 288 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 289 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 290 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 291 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 292 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 293 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 294 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 295 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 296 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 297 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 298 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 299 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 300 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 301 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 302 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 303 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 304 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 305 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 306 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 307 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 308 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 309 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 310 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 311 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 312 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 313 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 314 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 315 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 316 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 317 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 318 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 319 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 320 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 321 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 322 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 323 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 324 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 325 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 326 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 327 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 328 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 329 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 330 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 331 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 332 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 333 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 334 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 335 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 336 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 337 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 338 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 339 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 340 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 341 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 342 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 343 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 344 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 345 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 346 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 347 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 348 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 349 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 350 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 351 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 352 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 353 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 354 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 355 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 356 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 357 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 358 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 359 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 360 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 361 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 362 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 363 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 364 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 365 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 366 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 367 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 368 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 369 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 370 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 371 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 372 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 373 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 374 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 375 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 376 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 377 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 378 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 379 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 380 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 381 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 382 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 383 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 384 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 385 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 386 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 387 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 388 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 389 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 390 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 391 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 392 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 393 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 394 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 395 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 396 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 397 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 398 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 399 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 400 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 401 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 402 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 403 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 404 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 405 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 406 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 407 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 408 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 409 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 410 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 411 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 412 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 413 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 414 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 415 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 416 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 417 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 418 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 419 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 420 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 421 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 422 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 423 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 424 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 425 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 426 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 427 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 428 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 429 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 430 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 431 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 432 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 433 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 434 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 435 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 436 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 437 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 438 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 439 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 440 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 441 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 442 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 443 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 444 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 445 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 446 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 447 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 448 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 449 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 450 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 451 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 452 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 453 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 454 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 455 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 456 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 457 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 458 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 459 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 460 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 461 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 462 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 463 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 464 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 465 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 466 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 467 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 468 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 469 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 470 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 471 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 472 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 473 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 474 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 475 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 476 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 477 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 478 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 479 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 480 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 481 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 482 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 483 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 484 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 485 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 486 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 487 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 488 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 489 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 490 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 491 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 492 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 493 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 494 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 495 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 496 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 497 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 498 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 499 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 500 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 501 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 502 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 503 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 504 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 505 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 506 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 507 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 508 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 509 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 510 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 511 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 512 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 513 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 514 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 515 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 516 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 517 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 518 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 519 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 520 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 521 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 522 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 523 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 524 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 525 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 526 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 527 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 528 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 529 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 530 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 531 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 532 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 533 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 534 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 535 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 536 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 537 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 538 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 539 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 540 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 541 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 542 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 543 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 544 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 545 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 546 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 547 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 548 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 549 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 550 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 551 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 552 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 553 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 554 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 555 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 556 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 557 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 558 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 559 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 560 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 561 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 562 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 563 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 564 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 565 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 566 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 567 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 568 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 569 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 570 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 571 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 572 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 573 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 574 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 575 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 576 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 577 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 578 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 579 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 580 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 581 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 582 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 583 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 584 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 585 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
