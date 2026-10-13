# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-10-14.md)

*最后自动更新时间: 2026-10-14 04:56:50*
## 1. 双子座四代氩项目

**原文标题**: Gemini 4 Argon

**原文链接**: [https://deepmind.google/models/gemini/](https://deepmind.google/models/gemini/)

氩（Argon）是谷歌为 Chrome 浏览器团队开发的一项架构重构工具，旨在将核心网页处理逻辑与 Chromium 代码库中约 600 万行的浏览器功能遗留代码模块彻底分离。Chromium 整体代码规模达 4000 万行，模块间耦合严重，传统方式下拆分工作量极为庞大。氩项目具备同时并行传输多组独立代码变更的能力，使团队得以在数百个文件上高效推进架构拆分，将原本需历时数月的工作压缩至数周内完成，重构效率大幅提升。对 Chrome 全球数十亿用户而言，此次重构意义深远：完成后，用户将能在标签页、侧边面板与浮动窗口之间无缝迁移正在浏览的网页，全程无需重新加载页面，从根本上消除了一整类由页面迁移引发的浏览器崩溃问题，显著提升了浏览体验的流畅性与稳定性。

---

## 2. Ledger确认间谍芯片植入为硬件钱包加密货币盗窃元凶

**原文标题**: Ledger confirms spy chip implant behind wallet crypto thefts

**原文链接**: [https://www.bleepingcomputer.com/news/security/ledger-confirms-hardware-wallet-spy-implant-behind-crypto-thefts/](https://www.bleepingcomputer.com/news/security/ledger-confirms-hardware-wallet-spy-implant-behind-crypto-thefts/)

摘要：Ledger公司正式确认，近期多起硬件钱包加密货币失窃事件系攻击者向设备内部植入微型间谍芯片所致。据报道，攻击者通过物理手段在Ledger Nano等硬件钱包中秘密植入极小的窃听芯片（被称为"coinjector"），该芯片可嗅探并记录用户输入的PIN码，随后将数据无线传输给攻击者，进而窃取钱包中的加密资产。部分案件中，攻击者还采用中间人方式篡改设备或整包替换，使受害者在不知情的情况下完成签名操作。Ledger表示，这些攻击主要针对其用户，事件已在欧洲多地被发现。公司建议用户定期检查设备外壳是否有异常开孔或异物，避免在不可信场所进行密钥操作，并通过官方渠道验证设备真伪。此外，Ledger提醒用户切勿将私钥或助记词以明文形式存储，并启用额外安全验证措施。此次事件凸显了硬件钱包面临的新型物理侧信道攻击威胁，也为整个加密行业敲响了设备供应链与物理安全方面的警钟。

---

## 3. Show HN：Guitoro——用键盘弹奏的虚拟吉他

**原文标题**: Show HN: Guitoro, a virtual guitar you strum with your keyboard

**原文链接**: [https://guitoro.com/](https://guitoro.com/)

摘要：无法访问该文章链接。

---

## 4. 苹果 HomeView 智能显示屏

**原文标题**: Apple HomeView

**原文链接**: [https://www.apple.com/apple-homeview/](https://www.apple.com/apple-homeview/)

苹果 HomeView 于11月13日开启预购，定位为家庭智能中枢。产品搭载A18芯片、7英寸Liquid Retina显示屏、1200万像素Center Stage摄像头、四麦克风阵列及空间音频，带来沉浸式视听体验。内置基于Apple Intelligence的Siri AI，支持个人上下文、知识问答及多轮自然对话，可识别最多六名用户并提供个性化服务，各用户数据经Secure Exclaves严格隔离。功能上，HomeView以Home应用为智能家居中控，联动灯光、温控、安防及Apple Home Collection配件；支持FaceTime、隔空喊话、AirPlay多房间音频及第三方影音应用。设计提供银、星光、玫瑰粉、深空灰四色，另有壁挂版本。隐私方面，Apple通过Private Cloud Compute确保数据不存储、不泄露。购买渠道涵盖苹果官网、Apple Store应用及线下门店，并提供两小时配送、专业安装与一对一设置指导服务。

---

## 5. Anthropic 重构源代码控制系统

**原文标题**: Redesigning source control at Anthropic

**原文链接**: [https://www.anthropic.com/engineering/redesigning-source-control](https://www.anthropic.com/engineering/redesigning-source-control)

随着 AI 编程能力爆发，Anthropic 每日代码合并量从 2500 次飙升至超 3 万次，瓶颈从编码转向源代码控制等基础设施。七人团队遂在五个月内完成自研版本控制系统 Scion 的设计与全面迁移，替代 Git。Scion 的核心洞见是：当客户端多为始终在线的 AI 代理时，无需保留 Git 的离线分布式设计。其原则包括：客户端始终在线、服务端承担重计算（历史查询、合并等）、全组件水平可扩展、提交廉价无锁、工作副本稀疏按需。架构上，Scion 以"变更集"为核心单元，仅记录变更文件及内容寻址指针，规避锁竞争；通过 daemon、cache、server 三级缓存实现超 99% 命中率，资源消耗降至原 Git 镜像的 1/200，CI 检出提速两个数量级。Scion 开发本身亦受 AI 加速：原型经 Claude 改写后内存降 20 倍、速度提升 4 倍。文章认为，随 AI 编码普及，类似压力将蔓延至更多团队。

---

## 6. Thunderbird iOS版：原生邮件应用开发首亮相

**原文标题**: Thunderbird for iOS

**原文链接**: [https://blog.thunderbird.net/2026/10/thunderbird-for-ios-a-first-look-at-the-native-iphone-email-app-in-development/](https://blog.thunderbird.net/2026/10/thunderbird-for-ios-a-first-look-at-the-native-iphone-email-app-in-development/)

摘要：2026年10月1日，Thunderbird团队公布iOS原生邮件应用的开发进展。该应用从零原生构建，未复用现有代码，旨在为iPhone用户带来快速、可靠的现代邮件体验，终极目标是实现桌面与移动端之间的无缝跨设备协同。当前开发聚焦四大方向：支持Google、微软、Apple等服务的快速安全登录；后台同步机制兼顾实时性与电池续航；简洁收件箱布局搭配现代化邮件编辑器；以及面向社区开发者的特性标志系统，便于扩展贡献。技术栈方面，应用98.9%采用Swift与SwiftUI编写。团队计划数个月内推出社区测试版，并强调完全隐私保护，无任何数据追踪。负责人Aly Blenkin曾开放用户调研征集功能优先级，现已关闭。评论区反响热烈，用户普遍高度期待，同时集中提出多项诉求：完整邮件签名（含图片与HTML）、ProtonMail支持、标签跨设备同步、Lightning日历与苹果日历对接、应用级PIN锁屏保护、自定义通知铃声等。部分用户质疑iOS版开发晚于Android版，但整体情绪积极，不少长期等待的用户表达了感谢与信心。

---

## 7. Rust借用检查器中发现存在十一年的类型健全性漏洞

**原文标题**: 11 year old unsoundness bugs found in Rust borrow checker

**原文链接**: [https://github.com/rust-lang/rust/issues/164250](https://github.com/rust-lang/rust/issues/164250)

2026年10月，Rust社区暴露一个自1.4/1.18.0版本起存在约十一年的类型健全性漏洞。核心问题：带有生命周期上界约束（如 'a: 'static）的结构体，其约束可被协变字段赋值绕过。攻击手法为：先构造含 Option::None 的结构体，再通过 q.0 = Some(&l) 注入短生命周期引用，使 Drop 中本应持有 'static 引用的代码实际访问已失效的栈引用，造成 use-after-free。该漏洞标记为 I-unsound（最严重等级），涉及借用检查器、生命周期、类型方差与析构函数四大子系统。虽本质属 P-critical，但因十一年间无人触发，实际降为 P-high——利用需刻意编写恶意 Drop 实现，意外命中概率极低。Issue 中给出多种复现变体（Mutex 持引、闭包传递、数组 swap 等），均表明类型统一阶段未校验生命周期约束。修复补丁已提交，类型团队正在处理。

---

## 8. 我在HN发帖后，网站遭AI机器人流量轰炸

**原文标题**: I posted to HN, and then my website was flooded with AI bot traffic

**原文链接**: [https://www.sammystraus.com/#i-posted-to-hn-and-then-my-website-was-flooded-with-ai-bot-traffic](https://www.sammystraus.com/#i-posted-to-hn-and-then-my-website-was-flooded-with-ai-bot-traffic)

摘要：作者开发了一款名为sprinklz.io的可自定义新闻阅读器，允许用户将AI、LLM等话题从信息流中降权或过滤。一个月前在Hacker News上发布后获得百余个点赞，但随后网站遭遇严重性能问题。排查发现，近一半流量来自某AI摘要新闻服务，该服务每分钟高频抓取网站以监测内容变化；此外还有Claude、OpenAI、Google等知名爬虫及漏洞扫描器。作者已屏蔽恶意来源，添加robots.txt限制AI爬虫（但保留搜索引擎），设置速率限制，并让Claude模拟漏洞扫描以确认无安全泄露。更关键的教训是：网站基础设施必须能承受高并发真实流量，作者因此对底层架构做了大量性能优化。文章后半部分还涉及作者用LLM将现代网页重简为纯文本以适配Emacs终端浏览器的实践，以及对"技术越好、生活越差"这一悖论的思考，并批评了Nate Silver新书中过度依赖ChatGPT辅助写作而丧失个人思维深度与读者连接感的问题，主张"若你懒得亲自写，我便懒得读"。

---

## 9. 火狐企业版

**原文标题**: Firefox Enterprise

**原文链接**: [https://www.firefox.com/en-US/enterprise/](https://www.firefox.com/en-US/enterprise/)

火狐企业版以"数据主权"为核心理念，帮助企业实现浏览器部署与数据管理的全面自主可控。企业可将火狐企业版部署于自有基础设施中，进行本地化运行，避免依赖外部云服务，从而将数据、安全策略及系统管理环节牢牢掌握在自己手中。该方案支持企业对数据存储位置、策略配置及管理权限进行明确定义，并提供完善的审计能力，便于持续追踪和审查上述要素的实际运行状态，切实满足金融、政务、医疗等对数据合规与安全要求严苛的行业需求。通过本地部署，企业可有效降低数据外泄风险，强化内部治理，真正实现技术自主与数据主权。

---

## 10. 全新 Apple TV 4K

**原文标题**: New Apple TV 4K

**原文链接**: [https://www.apple.com/newsroom/2026/10/apple-unveils-the-new-apple-tv-4k/](https://www.apple.com/newsroom/2026/10/apple-unveils-the-new-apple-tv-4k/)

2026年10月13日，苹果发布第四代Apple TV 4K，搭载由下一代Apple Intelligence驱动的Siri AI，带来全屏对话式影视搜索与发现体验，支持个人语境理解及广泛知识问答。设备内置三颗远场麦克风，配合先进回声消除技术，实现完全免提语音控制。性能方面，A19芯片CPU性能提升最高50%，GPU性能提升2倍，并新增专用AV1解码器以优化流媒体效率。新Siri Remote保持经典设计，新增"查找"精准定位功能。音响方面，首次支持四台HomePod mini 2或HomePod（第二代）组建环绕声系统，系统可自动识别扬声器位置并校准音频。作为智能家居中枢，设备整合Apple Intelligence生成的摄像头活动描述与通知摘要，门铃画面可直接显示在电视上。隐私安全方面，采用Secure Exclaves与Private Cloud Compute架构，确保数据处理全程加密。产品售价299美元（美国），11月13日正式发售，已在美国及另外29个国家和地区开启预购。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 2 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 3 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 4 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 5 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 6 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 7 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 8 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 9 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 10 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 11 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 12 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 13 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 14 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 15 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 16 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 17 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 18 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 19 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 20 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 21 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 22 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 23 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 24 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 25 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 26 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 27 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 28 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 29 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 30 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 31 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 32 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 33 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 34 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 35 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 36 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 37 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 38 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 39 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 40 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 41 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 42 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 43 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 44 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 45 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 46 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 47 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 48 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 49 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 50 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 51 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 52 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 53 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 54 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 55 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 56 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 57 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 58 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 59 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 60 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 61 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 62 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 63 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 64 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 65 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 66 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 67 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 68 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 69 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 70 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 71 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 72 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 73 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 74 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 75 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 76 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 77 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 78 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 79 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 80 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 81 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 82 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 83 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 84 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 85 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 86 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 87 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 88 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 89 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 90 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 91 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 92 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 93 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 94 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 95 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 96 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 97 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 98 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 99 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 100 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 101 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 102 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 103 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 104 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 105 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 106 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 107 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 108 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 109 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 110 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 111 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 112 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 113 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 114 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 115 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 116 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 117 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 118 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 119 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 120 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 121 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 122 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 123 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 124 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 125 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 126 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 127 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 128 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 129 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 130 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 131 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 132 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 133 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 134 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 135 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 136 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 137 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 138 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 139 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 140 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 141 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 142 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 143 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 144 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 145 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 146 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 147 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 148 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 149 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 150 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 151 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 152 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 153 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 154 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 155 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 156 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 157 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 158 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 159 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 160 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 161 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 162 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 163 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 164 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 165 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 166 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 167 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 168 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 169 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 170 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 171 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 172 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 173 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 174 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 175 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 176 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 177 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 178 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 179 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 180 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 181 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 182 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 183 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 184 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 185 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 186 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 187 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 188 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 189 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 190 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 191 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 192 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 193 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 194 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 195 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 196 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 197 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 198 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 199 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 200 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 201 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 202 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 203 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 204 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 205 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 206 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 207 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 208 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 209 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 210 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 211 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 212 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 213 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 214 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 215 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 216 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 217 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 218 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 219 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 220 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 221 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 222 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 223 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 224 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 225 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 226 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 227 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 228 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 229 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 230 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 231 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 232 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 233 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 234 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 235 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 236 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 237 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 238 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 239 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 240 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 241 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 242 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 243 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 244 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 245 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 246 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 247 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 248 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 249 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 250 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 251 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 252 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 253 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 254 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 255 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 256 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 257 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 258 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 259 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 260 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 261 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 262 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 263 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 264 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 265 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 266 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 267 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 268 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 269 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 270 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 271 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 272 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 273 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 274 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 275 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 276 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 277 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 278 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 279 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 280 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 281 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 282 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 283 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 284 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 285 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 286 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 287 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 288 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 289 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 290 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 291 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 292 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 293 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 294 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 295 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 296 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 297 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 298 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 299 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 300 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 301 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 302 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 303 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 304 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 305 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 306 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 307 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 308 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 309 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 310 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 311 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 312 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 313 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 314 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 315 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 316 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 317 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 318 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 319 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 320 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 321 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 322 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 323 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 324 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 325 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 326 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 327 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 328 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 329 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 330 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 331 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 332 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 333 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 334 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 335 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 336 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 337 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 338 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 339 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 340 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 341 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 342 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 343 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 344 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 345 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 346 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 347 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 348 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 349 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 350 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 351 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 352 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 353 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 354 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 355 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 356 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 357 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 358 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 359 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 360 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 361 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 362 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 363 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 364 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 365 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 366 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 367 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 368 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 369 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 370 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 371 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 372 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 373 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 374 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 375 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 376 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 377 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 378 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 379 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 380 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 381 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 382 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 383 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 384 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 385 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 386 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 387 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 388 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 389 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 390 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 391 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 392 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 393 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 394 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 395 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 396 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 397 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 398 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 399 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 400 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 401 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 402 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 403 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 404 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 405 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 406 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 407 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 408 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 409 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 410 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 411 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 412 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 413 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 414 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 415 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 416 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 417 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 418 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 419 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 420 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 421 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 422 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 423 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 424 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 425 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 426 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 427 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 428 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 429 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 430 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 431 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 432 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 433 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 434 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 435 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 436 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 437 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 438 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 439 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 440 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 441 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 442 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 443 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 444 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 445 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 446 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 447 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 448 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 449 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 450 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 451 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 452 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 453 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 454 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 455 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 456 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 457 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 458 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 459 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 460 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 461 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 462 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 463 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 464 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 465 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 466 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 467 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 468 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 469 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 470 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 471 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 472 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 473 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 474 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 475 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 476 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 477 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 478 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 479 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 480 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 481 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 482 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 483 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 484 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 485 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 486 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 487 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 488 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 489 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 490 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 491 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 492 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 493 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 494 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 495 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 496 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 497 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 498 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 499 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 500 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 501 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 502 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 503 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 504 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 505 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 506 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 507 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 508 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 509 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 510 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 511 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 512 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 513 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 514 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 515 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 516 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 517 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 518 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 519 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 520 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 521 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 522 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 523 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 524 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 525 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 526 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 527 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 528 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 529 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 530 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 531 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 532 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 533 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 534 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 535 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 536 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 537 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 538 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 539 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 540 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 541 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 542 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 543 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 544 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 545 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 546 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 547 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 548 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 549 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 550 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 551 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 552 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 553 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 554 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 555 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 556 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 557 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 558 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 559 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 560 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 561 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 562 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 563 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 564 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 565 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 566 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 567 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 568 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 569 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
