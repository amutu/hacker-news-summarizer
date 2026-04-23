# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-04-23.md)

*最后自动更新时间: 2026-04-23 20:32:43*
## 1. GPT-5.5

**原文标题**: GPT-5.5

**原文链接**: [https://openai.com/index/introducing-gpt-5-5/](https://openai.com/index/introducing-gpt-5-5/)

无法访问该文章链接。（提供的URL在响应时并不对应OpenAI网站上存在或公开的页面。）

---

## 2. 《Claude Code最新质量报告更新》

**原文标题**: An update on recent Claude Code quality reports

**原文链接**: [https://www.anthropic.com/engineering/april-23-postmortem](https://www.anthropic.com/engineering/april-23-postmortem)

**Claude 代码质量报告总结**

Anthropic 对用户反映的 Claude 代码性能下降问题进行了调查，发现三个独立问题，均已在4月20日(v2.1.116)修复。API未受影响。

1. **默认推理努力度变更(3月4日):** Claude 代码的默认推理努力度从高调至中以减少延迟，但用户认为其智能程度下降。已于4月7日回滚。影响 Sonnet 4.6 和 Opus 4.6。

2. **缓存漏洞(3月26日):** 一项旨在清除空闲会话旧思考内容的修改存在漏洞，导致每次交互都清除推理内容，造成遗忘和重复。已于4月10日修复。影响 Sonnet 4.6 和 Opus 4.6。此问题还导致意外的使用额度消耗。

3. **响应精简提示(4月16日):** 新增的系统提示将工具调用间的文本限制在25词以内，损害了编码质量。在评估显示效果下降3%后，已于4月20日回滚。影响 Sonnet 4.6、Opus 4.6 和 Opus 4.7。

Anthropic 承认，由于流量变化和内部测试条件不同，这些问题最初难以复现。今后将：确保更多内部员工使用正式版本、改进代码审查工具、通过更广泛的评估对系统提示变更实施更严格管控、为智能折衷方案增设观察期，并通过 X 平台和 GitHub 上的 @ClaudeDevs 账号分享更新。自4月23日起，所有订阅用户的使用额度已重置。

---

## 3. 10岁女孩在威尔士桥下发现罕见墨西哥蝾螈

**原文标题**: Girl, 10, finds rare Mexican axolotl under Welsh bridge

**原文链接**: [https://www.bbc.com/news/articles/c9d4zgnqpqeo](https://www.bbc.com/news/articles/c9d4zgnqpqeo)

一位名叫伊维的10岁女孩在威尔士布里真德奥格莫尔河附近的“吊桥”下发现了一只罕见的墨西哥蝾螈，当时她正与家人一同露营。这只后来被命名为“迪皮”的两栖动物尾巴和腹部均有损伤。为了将它带回莱斯特的家中，这家人提前结束了假期。在寻求专家帮助后，他们被告知可以饲养这只蝾螈。

墨西哥蝾螈属于极度濒危物种，全球野外现存数量仅剩50至1000只。这是英国首次有记录在野外发现这种动物。专家认为，“迪皮”很可能是主人因情况变化而放生的——这属于违法行为。国家爬行动物福利中心主任克里斯·纽曼表示，伊维很可能救了“迪皮”一命，否则它几乎没有存活的机会。

墨西哥蝾螈因出现在《我的世界》和《罗布乐思》等电子游戏中而成为热门宠物，但英国皇家防止虐待动物协会警告称，它们很难照料，切勿冲动购买。“迪皮”已成为伊维学校的明星，学生们觉得这个故事十分有趣。

---

## 4. Bitwarden 命令行界面在正在进行的 Checkmarx 供应链攻击中遭入侵

**原文标题**: Bitwarden CLI compromised in ongoing Checkmarx supply chain campaign

**原文链接**: [https://socket.dev/blog/bitwarden-cli-compromised](https://socket.dev/blog/bitwarden-cli-compromised)

**总结：**

一次供应链攻击已攻陷官方Checkmarx KICS Docker仓库及相关代码扩展，恶意产物现与先前针对Bitwarden CLI工具的大规模攻击活动相关联。Docker与Socket的安全研究人员在官方`checkmarx/kics`仓库中发现被篡改的Docker镜像，同时发现可疑的Visual Studio Code（VS Code）扩展发布版本。

恶意KICS镜像包含经过修改的代码，旨在窃取环境变量、凭证及其他敏感数据。此次攻击似乎是威胁行为者持续协调行动的一部分，意图在受信任的开源工具中植入后门。此前，攻击者曾通过类似方法入侵Bitwarden CLI——以合法更新的幌子部署恶意发布版本。

主要发现包括：
- 恶意Checkmarx KICS Docker镜像托管于官方注册表中，伪装成合法构建版本。
- 观察到可疑的代码扩展发布版本（可能针对VS Code），潜在目标为开发者。
- 攻击手段与Bitwarden CLI入侵中使用的技术相似，表明存在共通的威胁行为者或方法论。
- 该攻击活动利用了对官方仓库的信任，绕过了传统安全措施。

使用Checkmarx KICS镜像或相关扩展的组织应立即验证镜像哈希值、审计近期拉取记录，并检查异常行为。此事件凸显了针对开发者工具及CI/CD管道的供应链攻击风险日益增长。

---

## 5. Meta将裁员10%，约8000名员工

**原文标题**: Meta to cut 10% of jobs, or 8k employees

**原文链接**: [https://techcrunch.com/2026/04/23/meta-job-cuts-10-percent-8000-employees/](https://techcrunch.com/2026/04/23/meta-job-cuts-10-percent-8000-employees/)

据彭博社报道及内部备忘录显示，Meta计划裁减10%的员工，约8000人。本轮裁员将于5月20日开始。此外，Meta还将暂停填补目前空缺的6000个岗位。

该公司表示此举是为了提升运营效率并平衡其他领域的投资。首席人事官珍妮尔·盖尔承认这一决定十分艰难，指出这将涉及解雇那些做出过重要贡献的员工。

此次裁员前，Meta在其基本失败的元宇宙项目上投入了巨额资金，同时为保持竞争力在人工智能领域进行了重大投资，包括近期推出全面升级的AI产品Muse Spark。TechCrunch已联系Meta寻求进一步置评。

---

## 6. MeshCore 开发团队因商标争议和 AI 生成代码问题分裂

**原文标题**: MeshCore development team splits over trademark dispute and AI-generated code

**原文链接**: [https://blog.meshcore.io/2026/04/23/the-split](https://blog.meshcore.io/2026/04/23/the-split)

**MeshCore 开发团队分裂事件摘要**

MeshCore 开源项目内部发生重大分裂。核心开发者 Andy Kirby 在未告知团队的情况下，秘密使用 AI 生成代码（“氛围编码”）完成了大部分项目组件（包括固件、应用和工具），这违背了团队坚持人工编写代码的承诺。

更严重的是，Andy 于3月29日在未与同事商议的情况下申请了“MeshCore”商标，并声称对该品牌拥有独家所有权。他控制了原有的 Discord 服务器和 meshcore.co.uk 域名，并大力推广自己标有“官方”标签的“MeshOS”系列产品。

其余核心团队——包括创始人 Scott、应用开发者 Liam Cottle、地图开发者 Recrof 及其他成员——已在 **meshcore.io** 上推出新的官方网站，并建立了新的 Discord 服务器、博客和文档。他们坚持认为，真正的“官方”MeshCore 是 GitHub 代码仓库，而 Andy 从未向其做出任何贡献。

该项目自2025年1月以来发展迅速，目前全球拥有超过38,000个节点和10万以上的活跃应用用户。核心团队将继续在新平台上进行固件开发、漏洞修复和社区管理。

---

## 7. 多个GitHub服务出现的事故

**原文标题**: Incident with multple GitHub services

**原文链接**: [https://www.githubstatus.com/incidents/myrbk7jvvs6p](https://www.githubstatus.com/incidents/myrbk7jvvs6p)

2026年4月23日，GitHub发生了一起影响多项服务的事件，包括Webhooks、Actions和Copilot。该问题首次于UTC时间16:12被报告，当时Copilot和Webhooks出现可用性降级。至UTC时间16:19，更多服务变得不可用，促使进一步调查。UTC时间16:34，确认Actions正在经历性能降级。UTC时间16:52定位到根本原因，并开始采取缓解措施。至UTC时间17:03，影响Actions和Copilot的降级问题已得到缓解；UTC时间17:04，多项服务已恢复，其余服务仍在验证中。UTC时间17:10，Webhooks报告恢复正常运行。该事件于UTC时间17:30正式解决。GitHub感谢用户的耐心等待，并表示将在获得详细根本原因分析后第一时间分享。

---

## 8. Palantir员工开始怀疑自己是否成了反派角色

**原文标题**: Palantir employees are starting to wonder if they're the bad guys

**原文链接**: [https://www.wired.com/story/palantir-employees-are-starting-to-wonder-if-theyre-the-bad-guys/](https://www.wired.com/story/palantir-employees-are-starting-to-wonder-if-theyre-the-bad-guys/)

**摘要：**

本文详细描述了帕兰提尔科技公司内部日益增长的不满情绪，员工们质疑公司在特朗普第二任期内的道德方向。长期以来，帕兰提尔因其被美国军方和移民机构使用的强大数据分析软件而受到外部批评，如今又因与特朗普政府加深联系而面临员工反弹。

主要冲突点包括：帕兰提尔在国土安全部追踪和驱逐移民行动中扮演了更大角色；可能参与美军针对伊朗一所小学的致命导弹袭击（使用了帕兰提尔的“马文”系统）；以及首席执行官亚历克斯·卡普的争议性言论，包括一份建议恢复兵役制的宣言。员工们在内部Slack频道中表达了担忧，有人将公司的发展轨迹称为“法西斯主义”。

前员工和现员工描述了一场“身份危机”——这家成立于“9·11”事件后、旨在防止公民自由被侵犯的公司，如今似乎正在助长此类侵犯。管理层通过有限的内部分论坛和更新后的维基页面来为移民和海关执法局合同辩护，但员工反映，Slack消息删除行为增多，且公司对实质性变革持抵制态度。然而，首席执行官卡普暗示，失去部分员工是公司采取强硬立场所能接受的代价。本文捕捉到员工群体日益纠结于自身工作是否在道德上站得住脚。

---

## 9. 我正在建造一朵云

**原文标题**: I am building a cloud

**原文链接**: [https://crawshaw.io/blog/building-a-cloud](https://crawshaw.io/blog/building-a-cloud)

**摘要：**

David Crawshaw宣布推出exe.dev，这是他正在构建的新云服务提供商。尽管已是成功的联合创始人，他依然选择创立另一家公司，因为他热爱计算机，但厌恶当前云计算的现状。

他指出现有云服务的三大根本缺陷：
1. **虚拟机形态不合理：** 它们绑定特定CPU/内存资源，迫使用户为嵌套或隔离方案额外付费。
2. **磁盘性能缓慢：** 云供应商依赖为硬盘设计的远程块设备，但在NVMe SSD时代，网络延迟导致IOPS比本地存储低10倍。
3. **网络昂贵且受限：** 出站流量费用是普通数据中心费率的10倍，将用户锁定在供应商平台。

Crawshaw认为现有抽象层（如Kubernetes）无法解决这些基础问题。然而，AI代理的兴起催生了对更优基础设施的迫切需求——代理将生成海量软件，需要高效、低开销的计算能力。

Exe.dev通过以下方式解决这些问题：提供CPU/内存资源池替代独立虚拟机、本地NVMe存储配合异步复制、以及全球任播网络。该项目旨在从零重构云，重新思考软件栈的每一层。

---

## 10. 法国政府机构确认数据泄露，黑客叫卖被盗数据

**原文标题**: French government agency confirms breach as hacker offers to sell data

**原文链接**: [https://www.bleepingcomputer.com/news/security/french-govt-agency-confirms-breach-as-hacker-offers-to-sell-data/](https://www.bleepingcomputer.com/news/security/french-govt-agency-confirms-breach-as-hacker-offers-to-sell-data/)

法国政府机构法国证件局（France Titres，亦称ANTS，即法国国家安全证件局）已确认发生数据泄露事件，此前有攻击者宣称发动了此次攻击并提供被盗数据出售。ANTS隶属于内政部，负责管理驾驶执照、护照、国民身份证等官方身份证件。

该泄露事件于2026年4月15日被发现，可能暴露了登录ID、全名、电子邮箱地址、出生日期、唯一账户标识符，部分用户的邮政地址、出生地和电话号码也受到影响。该机构正在通知受影响个人，并表示这些数据无法用于未经授权访问其门户网站，但可能被用于钓鱼或社会工程攻击。

一名化名为“breach3d”的黑客于4月16日声称窃取了多达1900万条记录，包括性别和婚姻状况，并正在出售这些数据。ANTS已通知法国数据保护机构（CNIL）、巴黎检察院以及国家网络安全机构（ANSSI）。该机构建议用户对可疑通信保持警惕，但表示用户无需采取任何行动。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 2 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 3 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 4 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 5 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 6 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 7 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 8 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 9 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 10 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 11 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 12 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 13 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 14 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 15 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 16 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 17 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 18 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 19 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 20 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 21 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 22 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 23 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 24 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 25 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 26 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 27 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 28 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 29 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 30 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 31 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 32 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 33 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 34 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 35 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 36 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 37 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 38 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 39 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 40 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 41 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 42 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 43 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 44 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 45 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 46 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 47 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 48 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 49 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 50 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 51 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 52 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 53 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 54 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 55 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 56 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 57 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 58 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 59 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 60 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 61 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 62 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 63 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 64 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 65 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 66 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 67 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 68 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 69 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 70 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 71 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 72 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 73 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 74 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 75 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 76 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 77 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 78 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 79 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 80 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 81 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 82 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 83 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 84 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 85 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 86 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 87 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 88 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 89 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 90 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 91 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 92 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 93 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 94 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 95 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 96 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 97 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 98 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 99 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 100 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 101 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 102 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 103 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 104 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 105 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 106 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 107 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 108 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 109 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 110 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 111 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 112 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 113 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 114 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 115 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 116 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 117 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 118 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 119 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 120 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 121 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 122 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 123 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 124 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 125 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 126 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 127 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 128 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 129 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 130 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 131 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 132 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 133 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 134 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 135 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 136 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 137 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 138 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 139 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 140 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 141 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 142 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 143 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 144 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 145 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 146 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 147 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 148 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 149 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 150 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 151 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 152 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 153 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 154 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 155 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 156 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 157 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 158 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 159 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 160 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 161 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 162 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 163 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 164 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 165 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 166 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 167 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 168 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 169 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 170 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 171 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 172 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 173 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 174 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 175 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 176 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 177 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 178 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 179 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 180 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 181 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 182 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 183 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 184 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 185 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 186 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 187 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 188 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 189 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 190 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 191 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 192 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 193 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 194 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 195 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 196 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 197 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 198 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 199 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 200 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 201 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 202 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 203 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 204 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 205 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 206 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 207 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 208 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 209 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 210 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 211 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 212 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 213 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 214 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 215 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 216 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 217 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 218 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 219 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 220 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 221 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 222 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 223 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 224 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 225 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 226 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 227 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 228 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 229 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 230 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 231 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 232 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 233 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 234 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 235 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 236 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 237 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 238 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 239 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 240 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 241 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 242 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 243 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 244 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 245 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 246 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 247 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 248 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 249 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 250 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 251 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 252 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 253 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 254 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 255 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 256 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 257 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 258 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 259 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 260 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 261 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 262 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 263 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 264 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 265 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 266 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 267 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 268 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 269 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 270 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 271 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 272 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 273 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 274 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 275 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 276 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 277 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 278 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 279 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 280 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 281 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 282 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 283 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 284 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 285 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 286 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 287 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 288 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 289 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 290 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 291 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 292 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 293 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 294 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 295 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 296 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 297 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 298 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 299 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 300 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 301 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 302 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 303 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 304 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 305 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 306 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 307 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 308 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 309 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 310 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 311 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 312 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 313 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 314 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 315 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 316 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 317 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 318 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 319 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 320 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 321 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 322 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 323 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 324 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 325 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 326 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 327 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 328 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 329 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 330 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 331 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 332 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 333 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 334 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 335 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 336 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 337 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 338 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 339 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 340 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 341 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 342 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 343 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 344 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 345 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 346 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 347 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 348 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 349 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 350 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 351 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 352 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 353 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 354 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 355 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 356 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 357 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 358 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 359 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 360 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 361 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 362 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 363 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 364 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 365 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 366 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 367 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 368 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 369 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 370 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 371 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 372 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 373 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 374 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 375 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 376 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 377 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 378 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 379 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 380 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 381 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 382 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 383 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 384 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 385 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 386 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 387 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 388 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 389 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 390 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 391 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 392 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 393 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 394 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 395 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 396 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 397 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
