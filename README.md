# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-24.md)

*最后自动更新时间: 2026-11-24 04:55:47*
## 1. 应 Arm 要求，本网站将于 2026 年 12 月 4 日停止运营

**原文标题**: "Per ARM's Request, This Site Will Be Discontinued on 4 December 2026"

**原文链接**: [https://arm.jonpalmisc.com/](https://arm.jonpalmisc.com/)

摘要：由 Jon 创办的"Jon's Arm Reference"网站是面向 AArch64 指令集及系统寄存器的权威参考资源，涵盖 Armv8-A 与 Armv9-A 架构，内容包括 Base、SIMD、SVE、SME 指令集以及 AArch64 和 AArch32 寄存器定义，并提供全文搜索与分类浏览功能，长期深受开发者欢迎。然而，Arm 公司律师已正式函告 Jon，要求撤除该站点，否则将采取法律行动。迫于压力，Jon 宣布网站将于 2026 年 12 月 4 日停止服务，并表示将尽力保障现有书签和链接的可用性。Jon 在公告中对多年来支持网站的用户（包括 Arm 内部人士）表达了诚挚感谢，坦言能够为大家提供有价值资源深感欣慰。该网站技术上依赖 WebAssembly，若浏览器不支持或未启用（如苹果锁屏模式），则搜索功能将不可用。此次关停凸显了开源技术社区在芯片厂商知识产权保护与公众信息自由获取之间的张力。

---

## 2. 英伟达重新任命黄仁勋为CEO

**原文标题**: Nvidia Reinstates Jensen Huang as CEO

**原文链接**: [https://www.cnbc.com/2026/11/23/nvidia-jensen-huang-ceo.html](https://www.cnbc.com/2026/11/23/nvidia-jensen-huang-ceo.html)

英伟达董事会周一宣布，经与黄仁勋多轮会谈后一致投票，立即恢复其CEO职务。黄仁勋此前因多段婚外情——包括与一名涉嫌为中国国家安全部情报人员的女性交往——于11月13日辞去CEO，公司股价曾因此暴跌近33%。白宫高级官员上周向董事会通报，黄仁勋未违反国家安全法律；特朗普公开力挺，称其为"伟大的爱国者和国家宝藏"，表示政府无任何违法证据。马斯克等科技领袖亦积极游说支持其回归。消息公布后，英伟达股价暴涨33%。黄仁勋在声明中表达重返公司的荣幸与谦卑，CFO克雷斯继续留任。尽管黄仁勋已归位，国会审查仍在推进：他将于12月1日出席众议院多个委员会闭门听证，12月3日在参议院银行委员会就"保护美国AI优势"公开作证。参议员沃伦等人批评此举，要求英伟达就出口管制合规问题向国会作出交代，董事会表示独立调查仍将继续进行。

---

## 3. Ladybird 浏览器正式进入 Alpha 阶段

**原文标题**: Ladybird is now in alpha

**原文链接**: [https://ladybird.org/posts/alpha/](https://ladybird.org/posts/alpha/)

2026年11月23日，Andreas Kling 宣布 Ladybird 浏览器正式进入 Alpha 阶段，已提供 macOS 与 Linux 版本下载。Ladybird 采用完全从零自研的浏览器引擎，并非任何现有引擎的分支，浏览器外壳简洁但功能可用。

作为 Alpha 版本，部分网站可能无法正常运行，且偶有崩溃。浏览器内置了站点问题反馈和崩溃报告功能，用户可自主决定是否上传报告。团队明确表示当前不承诺安全性，并诚邀安全研究人员积极测试、挖掘漏洞，共同助力安全防护。

该版本采用滚动更新通道，将定期自动推送更新，用户无需自行编译源码即可体验持续改进。面向开发者，Ladybird 已支持 WebDriver 自动化测试及 Firefox DevTools 协议，方便进行网站兼容性调试。

文章最后向赞助商、捐赠者以及长期以来参与测试、提交反馈和贡献代码的社区成员致谢，坦言前方仍有大量工作，但很高兴用户终于能亲自体验 Ladybird。

---

## 4. GLM-5.4：以首个循环Transformer迈向通用编程

**原文标题**: GLM-5.4: Toward generalized coding with our first loop transformer

**原文链接**: [https://z.ai/blog/glm-5.4](https://z.ai/blog/glm-5.4)

无法访问该文章链接

---

## 5. NariQ：10 GB 内实现 BF16 级精度的 Qwen3.8-27B 模型

**原文标题**: NariQ: BF16-level Qwen3.8-27B in a 10 GB file

**原文链接**: [https://huggingface.co/nari-labs/Qwen3.8-27B-NariQ-GGUF](https://huggingface.co/nari-labs/Qwen3.8-27B-NariQ-GGUF)

本文提出一种名为 NariQ 的高效模型量化方案，将通义千问 Qwen3.8-27B（270 亿参数）大语言模型在仅 10 GB 存储体积内实现接近 BF16 全精度水平的推理质量。按 BF16 格式，27B 参数模型约需 54 GB 空间，NariQ 将体积压缩至约 1/5.4，在大幅降低存储与显存开销的同时将精度损失控制在可忽略范围。该方案面向端侧与消费级 GPU 部署场景，使原本依赖多卡或大显存的 27B 级模型得以在单张主流显卡乃至边缘设备上运行，显著降低大模型落地门槛。论文编号 2611.26157，发布于 5 天前，为当前大模型轻量化与高效推理方向提供了新的技术参考。

---

## 6. Dario夸大开源AI风险，意在推动禁令以巩固自身控制权

**原文标题**: Dario is hyping the dangers so OSS models are illegal and *he* stays in control

**原文链接**: [https://twitter.com/ylecun/status/2124550037912920090](https://twitter.com/ylecun/status/2124550037912920090)

摘要：X用户Hux于11月22日发文指出，Anthropic CEO Dario Amodei在国会听证会上公开警示开源AI模型的危险性。其核心逻辑是：闭源模型可由厂商实时监控用户行为、随时切断访问、划定安全红线；而一旦模型开源，这些"刹车机制"将彻底失效，模型脱离控制、无法收回。文章标题暗示，Dario此举并非纯粹出于安全关切，而是有意夸大风险，推动监管层将开源模型纳入限制甚至禁令，从而让以Anthropic为代表的闭源厂商维持行业主导地位与市场垄断。该帖以讽刺口吻揭示了闭源阵营与开源阵营之间的深层利益博弈。

---

## 7. Kagi Mail（公开测试版）

**原文标题**: Kagi Mail (public beta)

**原文链接**: [https://blog.kagi.com/kagi-mail-public-beta](https://blog.kagi.com/kagi-mail-public-beta)

Kagi 正式发布私有邮箱与日历服务 Kagi Mail 公开测试版，提供 @kagimail.com 地址或支持绑定自有域名，60天免费试用，之后为99美元/年，已包含在 Kagi Ultimate 计划中。核心理念为快速、私密、安全，无广告、无监控、无数据贩卖；采用开放标准（IMAP、JMAP、CalDAV）与开源架构（Stalwart 服务器），可搭配任意兼容客户端，支持随时一键导出全部数据，离开后保留6个月访问权限，无锁定风险。基本功能含50GB存储、无限别名与域名、内置日历。智能方面支持自然语言分类、收件箱重点提醒、AI 邮件问答及新闻通讯聚合视图，所有 AI 功能可随时关闭。隐私上自动屏蔽追踪像素，提供发件人审批与钓鱼预警。团队与家庭用户可共享域名地址，支持 OIDC 登录。高级用户可使用快捷键、Sieve 规则及 MCP 服务器，并集成 Kagi 翻译与邮件助手。尚未推出的功能包括联系人管理、完整 Kagi 助手整合及原生移动应用，预计2027年陆续上线。Kagi 的愿景是打造"愿意为孩子创建的第一封邮箱"——让用户被当作人而非商品。

---

## 8. 探测器抵达水星，成史上第二个进入水星轨道的航天任务

**原文标题**: Spacecraft reaches Mercury on second-ever mission to enter its orbit

**原文链接**: [https://www.theguardian.com/science/2026/nov/20/spacecraft-mercury-second-ever-mission-orbit-bepicolombo](https://www.theguardian.com/science/2026/nov/20/spacecraft-mercury-second-ever-mission-orbit-bepicolombo)

无法访问该文章链接

---

## 9. 开发9年的开源应用遭苹果从欧洲应用商店下架

**原文标题**: Apple removed my open-source app from EU App Stores after 9 years

**原文链接**: [https://github.com/glushchenko/fsnotes/discussions/2056](https://github.com/glushchenko/fsnotes/discussions/2056)

独立开发者、开源笔记应用FSNotes的作者Glushchenko在GitHub发布公开信，反映其应用被苹果从所有欧洲应用商店移除，且苹果对其支持请求长期沉默。FSNotes是一款macOS和iOS笔记应用，已开发运营9年。事件起因是10月销售款未能到账，开发者于11月5日和17日分别提交两个工单，但截至发帖未获任何回复。他表示已完成欧盟《数字服务法》合规信息，并提交了乌克兰政府商业注册文件，其身份为乌克兰合法注册的个体经营者。然而，应用排名与搜索可见性正持续流失，即使恢复上架也难以挽回损失。开发者指出，当前乌克兰开发者面临的经营环境极为艰难，"感觉像是乌克兰在受制裁，而非俄罗斯"。FSNotes源码仍可在GitHub免费获取，但缺乏收入将难以维持项目生存。他并非要求特殊待遇，只希望有人审阅文件、说明限制原因并给予解决机会。该帖获28个点赞，并已转载至Hacker News和X平台。

---

## 10. 导数翻转

**原文标题**: Derivative Flipping

**原文链接**: [http://blog.sigfpe.com/2026/11/derivative-flipping.html](http://blog.sigfpe.com/2026/11/derivative-flipping.html)

摘要：本文探讨自动微分的一种新视角，核心思想是将微分算子与被微分表达式的角色互换。作者先以Brzozowski正则表达式求导为引子，将其类比到多项式微积分中，定义配对⟨p,q⟩为p作为微分算子作用于q后在零点求值。两个关键定理为：⟨p,xᵢq⟩=⟨∂ᵢp,q⟩（移位性质），以及⟨p,q⟩=⟨q,p⟩（对称性）。后者意味着可将复杂函数与简单算子配对，也可将复杂算子作用于简单函数，而中间结果的复杂度始终有界。以二维拉普拉斯算子为例，仅需求解四个系数的线性组合，无需维护完整Hessian矩阵。作者用Haskell实现了该配对运算，验证了两种配对顺序结果一致。此方法即作者早年提出的"无穷小平方根"计算误差法，后被folx库优化并广泛应用于物理信息神经网络(PINN)和变分蒙特卡洛(VMC)等领域。作者还指出该翻转思想在量子力学（算子与态的角色互换）及影子演算(umbral calculus)中亦有体现，并提及Taylor模式AD的压缩工作，认为这些AD问题早在百年前已有相关代数结构加以解决。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-24](output/hacker_news_summary_2026-11-24.md) |
| 2 | [2026-11-23](output/hacker_news_summary_2026-11-23.md) |
| 3 | [2026-11-22](output/hacker_news_summary_2026-11-22.md) |
| 4 | [2026-11-21](output/hacker_news_summary_2026-11-21.md) |
| 5 | [2026-11-20](output/hacker_news_summary_2026-11-20.md) |
| 6 | [2026-11-19](output/hacker_news_summary_2026-11-19.md) |
| 7 | [2026-11-18](output/hacker_news_summary_2026-11-18.md) |
| 8 | [2026-11-17](output/hacker_news_summary_2026-11-17.md) |
| 9 | [2026-11-16](output/hacker_news_summary_2026-11-16.md) |
| 10 | [2026-11-15](output/hacker_news_summary_2026-11-15.md) |
| 11 | [2026-11-14](output/hacker_news_summary_2026-11-14.md) |
| 12 | [2026-11-13](output/hacker_news_summary_2026-11-13.md) |
| 13 | [2026-11-12](output/hacker_news_summary_2026-11-12.md) |
| 14 | [2026-11-11](output/hacker_news_summary_2026-11-11.md) |
| 15 | [2026-11-10](output/hacker_news_summary_2026-11-10.md) |
| 16 | [2026-11-09](output/hacker_news_summary_2026-11-09.md) |
| 17 | [2026-11-08](output/hacker_news_summary_2026-11-08.md) |
| 18 | [2026-11-07](output/hacker_news_summary_2026-11-07.md) |
| 19 | [2026-11-06](output/hacker_news_summary_2026-11-06.md) |
| 20 | [2026-11-05](output/hacker_news_summary_2026-11-05.md) |
| 21 | [2026-11-04](output/hacker_news_summary_2026-11-04.md) |
| 22 | [2026-11-03](output/hacker_news_summary_2026-11-03.md) |
| 23 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 24 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 25 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 26 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 27 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 28 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 29 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 30 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 31 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 32 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 33 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 34 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 35 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 36 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 37 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 38 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 39 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 40 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 41 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 42 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 43 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 44 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 45 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 46 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 47 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 48 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 49 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 50 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 51 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 52 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 53 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 54 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 55 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 56 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 57 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 58 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 59 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 60 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 61 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 62 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 63 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 64 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 65 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 66 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 67 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 68 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 69 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 70 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 71 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 72 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 73 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 74 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 75 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 76 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 77 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 78 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 79 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 80 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 81 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 82 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 83 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 84 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 85 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 86 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 87 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 88 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 89 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 90 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 91 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 92 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 93 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 94 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 95 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 96 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 97 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 98 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 99 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 100 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 101 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 102 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 103 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 104 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 105 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 106 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 107 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 108 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 109 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 110 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 111 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 112 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 113 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 114 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 115 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 116 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 117 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 118 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 119 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 120 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 121 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 122 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 123 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 124 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 125 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 126 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 127 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 128 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 129 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 130 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 131 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 132 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 133 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 134 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 135 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 136 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 137 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 138 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 139 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 140 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 141 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 142 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 143 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 144 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 145 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 146 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 147 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 148 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 149 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 150 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 151 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 152 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 153 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 154 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 155 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 156 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 157 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 158 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 159 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 160 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 161 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 162 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 163 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 164 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 165 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 166 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 167 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 168 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 169 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 170 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 171 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 172 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 173 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 174 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 175 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 176 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 177 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 178 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 179 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 180 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 181 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 182 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 183 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 184 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 185 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 186 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 187 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 188 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 189 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 190 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 191 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 192 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 193 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 194 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 195 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 196 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 197 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 198 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 199 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 200 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 201 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 202 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 203 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 204 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 205 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 206 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 207 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 208 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 209 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 210 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 211 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 212 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 213 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 214 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 215 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 216 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 217 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 218 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 219 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 220 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 221 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 222 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 223 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 224 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 225 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 226 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 227 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 228 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 229 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 230 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 231 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 232 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 233 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 234 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 235 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 236 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 237 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 238 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 239 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 240 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 241 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 242 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 243 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 244 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 245 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 246 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 247 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 248 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 249 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 250 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 251 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 252 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 253 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 254 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 255 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 256 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 257 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 258 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 259 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 260 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 261 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 262 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 263 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 264 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 265 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 266 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 267 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 268 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 269 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 270 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 271 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 272 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 273 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 274 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 275 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 276 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 277 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 278 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 279 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 280 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 281 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 282 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 283 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 284 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 285 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 286 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 287 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 288 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 289 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 290 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 291 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 292 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 293 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 294 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 295 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 296 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 297 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 298 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 299 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 300 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 301 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 302 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 303 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 304 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 305 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 306 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 307 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 308 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 309 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 310 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 311 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 312 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 313 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 314 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 315 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 316 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 317 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 318 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 319 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 320 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 321 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 322 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 323 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 324 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 325 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 326 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 327 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 328 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 329 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 330 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 331 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 332 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 333 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 334 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 335 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 336 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 337 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 338 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 339 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 340 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 341 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 342 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 343 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 344 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 345 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 346 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 347 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 348 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 349 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 350 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 351 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 352 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 353 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 354 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 355 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 356 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 357 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 358 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 359 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 360 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 361 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 362 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 363 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 364 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 365 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 366 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 367 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 368 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 369 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 370 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 371 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 372 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 373 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 374 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 375 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 376 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 377 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 378 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 379 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 380 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 381 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 382 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 383 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 384 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 385 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 386 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 387 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 388 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 389 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 390 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 391 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 392 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 393 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 394 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 395 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 396 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 397 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 398 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 399 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 400 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 401 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 402 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 403 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 404 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 405 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 406 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 407 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 408 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 409 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 410 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 411 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 412 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 413 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 414 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 415 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 416 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 417 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 418 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 419 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 420 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 421 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 422 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 423 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 424 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 425 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 426 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 427 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 428 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 429 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 430 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 431 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 432 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 433 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 434 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 435 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 436 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 437 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 438 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 439 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 440 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 441 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 442 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 443 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 444 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 445 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 446 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 447 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 448 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 449 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 450 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 451 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 452 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 453 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 454 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 455 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 456 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 457 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 458 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 459 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 460 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 461 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 462 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 463 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 464 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 465 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 466 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 467 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 468 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 469 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 470 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 471 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 472 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 473 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 474 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 475 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 476 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 477 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 478 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 479 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 480 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 481 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 482 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 483 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 484 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 485 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 486 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 487 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 488 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 489 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 490 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 491 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 492 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 493 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 494 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 495 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 496 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 497 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 498 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 499 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 500 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 501 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 502 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 503 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 504 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 505 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 506 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 507 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 508 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 509 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 510 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 511 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 512 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 513 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 514 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 515 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 516 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 517 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 518 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 519 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 520 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 521 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 522 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 523 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 524 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 525 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 526 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 527 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 528 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 529 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 530 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 531 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 532 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 533 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 534 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 535 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 536 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 537 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 538 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 539 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 540 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 541 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 542 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 543 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 544 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 545 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 546 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 547 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 548 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 549 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 550 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 551 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 552 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 553 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 554 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 555 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 556 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 557 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 558 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 559 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 560 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 561 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 562 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 563 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 564 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 565 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 566 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 567 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 568 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 569 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 570 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 571 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 572 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 573 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 574 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 575 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 576 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 577 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 578 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 579 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 580 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 581 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 582 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 583 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 584 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 585 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 586 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 587 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 588 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 589 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 590 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 591 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 592 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 593 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 594 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 595 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 596 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 597 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 598 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 599 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 600 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 601 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 602 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 603 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 604 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 605 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 606 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 607 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 608 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 609 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 610 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
