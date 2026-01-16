# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-01-16.md)

*最后自动更新时间: 2026-01-16 20:38:16*
## 1. Cloudflare收购Astro

**原文标题**: Cloudflare acquires Astro

**原文链接**: [https://astro.build/blog/joining-cloudflare/](https://astro.build/blog/joining-cloudflare/)

Cloudflare已收购开源Astro网页框架背后的团队——Astro Technology Company。Astro的核心使命——打造最适合内容驱动型网站的开发框架——将在更多资源和更集中的投入下持续推进。

Astro社区获得的关键承诺是：该框架将保持免费、开源（基于MIT许可）并持续积极维护。它将保持平台中立性，支持所有部署目标，而不仅限于Cloudflare。项目的开放治理模式和当前路线图也保持不变，整个团队将整体加入Cloudflare。

此次收购解决了Astro此前围绕付费托管服务构建可持续商业模式的困境，这种尝试曾分散其对核心框架开发的专注力。创始人认为Cloudflare的基础设施专业能力与Astro的框架理念相辅相成，双方对高性能、内容导向的网页开发未来有着共同愿景。

在Cloudflare的支持下，该团队现在可以全力投入框架升级，从即将发布的Astro 6版本和未来路线图开始全面推进。

---

## 2. 6天和IP地址证书现已普遍可用

**原文标题**: 6-Day and IP Address Certificates Are Generally Available

**原文链接**: [https://letsencrypt.org/2026/01/15/6day-and-ip-general-availability](https://letsencrypt.org/2026/01/15/6day-and-ip-general-availability)

Let's Encrypt宣布推出两种新型证书的全面可用性：短期证书和IP地址证书。

短期证书有效期为160小时（约六天多），旨在通过大幅减少私钥泄露后的风险窗口来增强安全性。这是标准证书的可选替代方案，需要更频繁的自动续期。虽然Let's Encrypt计划在未来几年将默认证书有效期从90天缩短至45天，但对于拥有全自动化系统的用户，短期证书仍将作为可选方案。

IP地址证书允许服务器使用其IP地址（包括IPv4和IPv6）而非域名进行TLS身份验证。鉴于IP地址的临时性，此类证书仅以6天的短期有效期签发，以确保更频繁的验证。

这两项服务均旨在通过推动自动化和减少对可靠性较低的证书吊销机制的依赖来提升安全性。

---

## 3. 米开朗基罗的第一幅画作，创作于他十二三岁时。

**原文标题**: Michelangelo's first painting, created when he was 12 or 13

**原文链接**: [https://www.openculture.com/2026/01/discover-michelangelos-first-painting.html](https://www.openculture.com/2026/01/discover-michelangelos-first-painting.html)

米开朗基罗已知最早的画作《圣安东尼的折磨》创作于他仅12或13岁时。这幅描绘圣徒受恶魔侵扰的作品长期未被归为他所作。2008年拍卖后其地位发生转变——纽约大都会艺术博物馆的清洗和红外分析显示，其调色方式和艺术修正痕迹与米开朗基罗后期风格（如西斯廷教堂作品）一致。

得克萨斯州沃斯堡的金贝尔艺术博物馆在未发现有力反证后购得此画，使其成为美洲唯一的米开朗基罗画作，也是现存仅四幅归于其名下的架上绘画之一。约十年后，艺术史学家乔治奥·邦桑蒂最终确认了归属权。尽管仍存些许质疑，且米开朗基罗本人或视其为不成熟之作，但技术证据强有力地支持这幅画出自年轻大师之手。

---

## 4. 仅此浏览器

**原文标题**: Just the Browser

**原文链接**: [https://justthebrowser.com/](https://justthebrowser.com/)

**仅浏览器**是一个开源项目，帮助用户移除主流桌面网页浏览器（Google Chrome、Microsoft Edge 和 Firefox）中不需要的功能。它针对人工智能工具、遥测数据收集、赞助内容、购物集成、默认浏览器提示以及其他“烦人”功能，提供更简洁、更私密的浏览体验。

该工具通过应用预配置的组策略设置（这些隐藏选项原本用于组织机构的 IT 管理）来实现功能，无需修改浏览器的核心软件。这意味着设置会持久生效，且浏览器可能会显示“由您的组织管理”的提示。

项目为 Windows（PowerShell）和 macOS/Linux（终端）提供了自动化安装脚本，同时也提供了手动配置指南。项目包含每个浏览器的直接下载链接，以及详细说明每个被禁用功能的文档。

关键要点包括：
*   目前支持 Windows 和 macOS 上的 Chrome、Edge 和 Firefox，但**不支持** Linux 版本或移动设备。
*   用户可以查看、自定义或完全移除已应用的设置。
*   它不安装广告拦截器（推荐使用 uBlock Origin）。
*   该方法旨在保留主流浏览器的安全性和兼容性优势，同时剥离不需要的臃肿功能。

所有资源和配置文件均可在 GitHub 上获取。

---

## 5. Cursor最新的“浏览器实验”在无证据的情况下暗示成功

**原文标题**: Cursor's latest "browser experiment" implied success without evidence

**原文链接**: [https://embedding-shapes.github.io/cursor-implied-success-without-evidence/](https://embedding-shapes.github.io/cursor-implied-success-without-evidence/)

Cursor最近的博客文章《扩展长时间运行的自主编码》描述了一项实验，其中AI代理被要求从零开始构建一个网页浏览器。据报道，这些代理运行了一周，生成了超过一百万行代码。尽管文章将此描述为自主开发扩展的成功，并展示了一张截图，但并未提供任何证据表明该浏览器能够正常运行。

对链接的GitHub仓库进行的独立分析显示，代码无法编译，存在数十个错误和警告。最近的提交和自动化构建均持续失败。文章指出，该博客通过暗示性语言（如“有意义的进展”、“极其困难”）营造出可运行原型的印象，却省略了基本的可复现性标记，例如有效的提交记录、构建说明或可用的演示。

作者总结认为，Cursor关于代理在雄心勃勃的项目上取得“实际进展”的非凡主张缺乏依据，因为实验的产出似乎是无法满足基本编译和渲染网页最低标准的“AI垃圾”。

---

## 6. 开锁机器人

**原文标题**: Lock-Picking Robot

**原文链接**: [https://github.com/etinaude/Lock-Picking-Robot](https://github.com/etinaude/Lock-Picking-Robot)

本文介绍了一款开源开锁机器人，旨在替代存在安全隐患的万能钥匙（如TSA 007）。其核心在于解决万能钥匙带来的重大安全漏洞，同时满足锁匠等授权人员的开锁需求。该机器人的设计理念是通过增加非授权开锁的显性难度与耗时来提升安全性。

该设备采用暴力破解锁芯弹子组合的方式工作：通过特制的中空钥匙坯插入细金属丝，机械式测试每个可能的弹子高度，每组测试约需0.7秒。此方法可绕过安全弹子，但弹子数量或切割深度的增加会指数级延长开锁时间（例如5弹子锁需35分钟，而4弹子锁仅需3分钟）。其目标是让锁具对此机器人保持快速开启，而对人工开锁者则极为困难耗时。

该项目完全开源（采用GPL 3.0协议），使用Dynamixel伺服电机与OpenRB驱动板，机械部件需通过FDM、SLA和DMLS三种3D打印技术制造。每类锁具都需要定制新的金属钥匙坯。

计划中的改进包括采用更精准的锁具开启检测机制（如伺服电流反馈），并利用反馈智能减少需测试的组合数量。文章将该机器人定位为锁具运动爱好者的趣味工具，同时也是专业人员更安全实用的选择。

---

## 7. Elasticsearch从来就不是一个数据库

**原文标题**: Elasticsearch Was Never a Database

**原文链接**: [https://www.paradedb.com/blog/elasticsearch-was-never-a-database](https://www.paradedb.com/blog/elasticsearch-was-never-a-database)

本文认为，Elasticsearch本质上是一个搜索引擎，而非适合作为事务性（OLTP）工作负载主记录系统的数据库。尽管团队通常将其作为辅助搜索索引使用，但可能逐渐将其用作主数据存储，从而引发严重问题。

核心问题源于Elasticsearch的设计优先级。它缺乏真正的多文档事务功能，存在数据不一致风险。模式变更困难，通常需要完全重建索引。其查询功能虽在搜索和聚合方面强大，但在关系型操作（如连接查询）方面薄弱。运维复杂度高，且其持久性保证虽对单个文档较强，但无法扩展到协调的多步骤操作。

作者总结道，Elasticsearch作为专用搜索索引表现出色，但若被迫充当主数据库则会变得脆弱且成本高昂。解决方案是使用合适的数据库（如Postgres）作为数据源，让Elasticsearch保持其原有定位，或采用像ParadeDB这样原生集成OLTP与搜索的系统。

---

## 8. 闭嘴

**原文标题**: STFU

**原文链接**: [https://github.com/Pankajtanwarbanna/stfu](https://github.com/Pankajtanwarbanna/stfu)

本文介绍了一款名为“STFU”的网页应用程序的创建过程，该程序旨在劝阻人们在公共场所大声播放音频。作者的灵感来源于机场的一次恼人经历：当时有人正以最大音量观看视频。由于缺乏直接上前制止的勇气，作者转而开发了一个简单的应用程序。

该程序通过设备麦克风采集环境声音，并以大约两秒的延迟回放相同音频。作者感谢AI助手Claude仅用一次提示就生成了可运行的代码版本。虽然文中未详细说明具体心理机制，但作者认为这种“听觉反馈循环”会造成足够的认知失调，从而使喧闹者停止行为。

该应用最初命名为“make-it-stop”，但作者在看到另一位开发者Tim Darcet使用“STFU”命名的类似项目后更名。该工具基于Web Audio API构建，作为源自“一时意气”的公共资源发布，作者鼓励人们自由使用。

---

## 9. 发布HN：Indy（YC S21）——专为ADHD大脑设计的支持应用

**原文标题**: Launch HN: Indy (YC S21) – A support app designed for ADHD brains

**原文链接**: [https://www.shimmer.care/indy-redirect](https://www.shimmer.care/indy-redirect)

**摘要：**

Indy是一款专为帮助ADHD（注意力缺陷多动障碍）人群管理日常任务和责任而设计的移动应用。它旨在解决ADHD常见的挑战，如任务启动困难、工作记忆缺失以及对复杂系统感到不堪重负。

其核心理念是减少摩擦和认知负荷。Indy没有采用传统的待办事项列表，而是使用简单的卡片式任务界面。一个关键功能是“Indy按钮”——一个显眼的大按钮，按下后立即向用户展示一个可管理的小型下一步行动，帮助克服开始任务时的瘫痪感。

该应用强调简洁和温和引导，而非僵化的效率体系。它帮助将项目分解为步骤，提示下一步行动，并使用针对ADHD需求定制的通知和提醒（如减少唠叨、增加支持性推动）。目标是通过小胜利建立动力，减少常因未完成任务而产生的羞耻感。

Indy成立于Y Combinator的S21批次，以移动应用形式提供。它代表了向以神经多样性思维创建数字工具的转变，专注于用户体验和心理支持，而非仅仅是通用的任务管理。

---

## 10. `Read_once()`, `Write_once()`, 但非为Rust设计

**原文标题**: Read_once(), Write_once(), but Not for Rust

**原文链接**: [https://lwn.net/SubscriberLink/1053142/8ec93e58d5d3cc06/](https://lwn.net/SubscriberLink/1053142/8ec93e58d5d3cc06/)

这篇文章讨论了Linux内核中的`READ_ONCE()`和`WRITE_ONCE()`宏，它们确保无锁算法对内存进行单一、原子性的访问。虽然有人提议添加Rust的等效宏，但Rust开发者更倾向于使用`Atomic`库的宽松操作（`Atomic::from_ptr().load(Relaxed)`），认为相比含义模糊的C宏，这些操作提供了更清晰的语义和意图。这一决定意味着内核中的Rust和C代码将使用不同的API进行并发数据访问，可能使开发变得复杂。讨论还揭示了现有C代码中缺失`READ_ONCE()`调用的问题，显示了Rust的存在如何能改进C代码。最终，Rust社区致力于提供更精确的并发原语，即使这会导致不同语言间的实现差异。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 2 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 3 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 4 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 5 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 6 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 7 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 8 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 9 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 10 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 11 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 12 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 13 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 14 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 15 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 16 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 17 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 18 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 19 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 20 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 21 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 22 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 23 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 24 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 25 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 26 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 27 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 28 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 29 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 30 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 31 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 32 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 33 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 34 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 35 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 36 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 37 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 38 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 39 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 40 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 41 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 42 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 43 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 44 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 45 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 46 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 47 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 48 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 49 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 50 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 51 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 52 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 53 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 54 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 55 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 56 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 57 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 58 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 59 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 60 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 61 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 62 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 63 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 64 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 65 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 66 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 67 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 68 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 69 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 70 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 71 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 72 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 73 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 74 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 75 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 76 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 77 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 78 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 79 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 80 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 81 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 82 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 83 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 84 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 85 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 86 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 87 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 88 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 89 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 90 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 91 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 92 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 93 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 94 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 95 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 96 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 97 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 98 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 99 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 100 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 101 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 102 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 103 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 104 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 105 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 106 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 107 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 108 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 109 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 110 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 111 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 112 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 113 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 114 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 115 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 116 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 117 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 118 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 119 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 120 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 121 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 122 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 123 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 124 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 125 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 126 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 127 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 128 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 129 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 130 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 131 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 132 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 133 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 134 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 135 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 136 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 137 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 138 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 139 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 140 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 141 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 142 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 143 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 144 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 145 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 146 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 147 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 148 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 149 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 150 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 151 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 152 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 153 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 154 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 155 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 156 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 157 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 158 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 159 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 160 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 161 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 162 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 163 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 164 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 165 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 166 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 167 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 168 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 169 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 170 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 171 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 172 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 173 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 174 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 175 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 176 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 177 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 178 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 179 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 180 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 181 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 182 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 183 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 184 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 185 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 186 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 187 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 188 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 189 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 190 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 191 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 192 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 193 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 194 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 195 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 196 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 197 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 198 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 199 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 200 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 201 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 202 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 203 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 204 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 205 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 206 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 207 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 208 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 209 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 210 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 211 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 212 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 213 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 214 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 215 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 216 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 217 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 218 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 219 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 220 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 221 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 222 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 223 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 224 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 225 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 226 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 227 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 228 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 229 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 230 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 231 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 232 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 233 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 234 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 235 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 236 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 237 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 238 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 239 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 240 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 241 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 242 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 243 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 244 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 245 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 246 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 247 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 248 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 249 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 250 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 251 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 252 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 253 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 254 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 255 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 256 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 257 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 258 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 259 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 260 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 261 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 262 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 263 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 264 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 265 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 266 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 267 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 268 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 269 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 270 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 271 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 272 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 273 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 274 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 275 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 276 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 277 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 278 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 279 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 280 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 281 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 282 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 283 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 284 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 285 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 286 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 287 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 288 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 289 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 290 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 291 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 292 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 293 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 294 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 295 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 296 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 297 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 298 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 299 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 300 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
