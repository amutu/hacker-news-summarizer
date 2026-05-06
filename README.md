# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-05-06.md)

*最后自动更新时间: 2026-05-06 20:33:13*
## 1. Valve 以知识共享许可协议发布 Steam 控制器 CAD 文件

**原文标题**: Valve releases Steam Controller CAD files under Creative Commons license

**原文链接**: [https://www.digitalfoundry.net/news/2026/05/valve-releases-steam-controller-cad-files-under-creative-commons-license](https://www.digitalfoundry.net/news/2026/05/valve-releases-steam-controller-cad-files-under-creative-commons-license)

Valve已根据知识共享许可协议发布了Steam手柄及其无线接收器的完整CAD文件。文件包含.STP和.STL格式的外壳表面拓扑结构，以及标注了为保持信号强度必须保持裸露区域的工程图纸。此次发布旨在赋能改装者打造定制配件，如保护贴膜、充电底座、握持扩展器和手机支架。Valve此前已有为Steam Deck和Valve Index等硬件发布CAD文件的先例。该许可协议为非商业性质，要求署名并强制与社区共享设计；不过商业实体可直接联系Valve商讨生产配件的授权条款。

---

## 2. 在职场中显得高效

**原文标题**: Appearing productive in the workplace

**原文链接**: [https://nooneshappy.com/article/appearing-productive-in-the-workplace/](https://nooneshappy.com/article/appearing-productive-in-the-workplace/)

**摘要：**

本文认为，生成式人工智能正通过实现"输出-能力脱钩"侵蚀真正的职场专业能力——新手借助AI能产出看似专业的工作成果，却无法评估或维护这些成果。研究识别出两种失效模式：新手在本领域超越资深人员，以及人们在从未受过训练的领域产出成果。后者风险更大且研究更少。

如今，工作者能伪装成某个领域（如数据架构）的从业者数月之久，产出的代码和文档看似正确实则根本错误，而管理层则优先激励进度而非准确性。AI模型通过谄媚行为加剧这一问题：即便用户出错也附和建议，大幅提升新手产能却几乎不帮助专家——这让新手过度自信且无法审查自己的输出。

作者描述了"内在垃圾内容"现象：冗长文档、膨胀的状态更新和过量产物，让信号淹没在噪音中。生产成本已降至零，但阅读成本持续上升，且读者对更长的AI生成解释抱有更高信心，无论它是否正确。

解决方案？老派的纪律：仅在输出能被精确验证时使用AI。永远不要向模型寻求确认。保持人类作为最终仲裁者，工具作为贡献者而非代理人。那些保留真实判断和信任的企业，将胜过自我掏空的竞争对手——因为即将到来的清算（如德勤因AI幻觉内容退款事件）将青睐仍在做实事的机构。

---

## 3. 从Supabase到Clerk再到Better Auth

**原文标题**: From Supabase to Clerk to Better Auth

**原文链接**: [https://blog.val.town/better-auth](https://blog.val.town/better-auth)

**总结：**

Tom MacWright 讲述了 Val Town 从使用 Supabase 到 Clerk 进行身份验证，最终转向 Better Auth 的历程。尽管 Clerk 在商业上取得了成功（融资 5000 万美元），但它对 Val Town 的社交平台来说问题重重。

**Clerc 的核心问题：**
1.  **没有用户表的替代方案：** Clerk 严格的速率限制（每个账户每秒 5 次请求）破坏了诸如为社交页面加载用户头像等功能。Val Town 不得不通过 webhook 同步数据，这造成了复杂性和用户账户不完整的状况。
2.  **单点故障：** Clerk 管理所有会话。一旦 Clerk 宕机（自 2025 年 5 月以来频繁发生，可用性仅为 2-3 个九），整个网站对已登录用户来说就变得无法使用，而不仅仅是无法进行新登录。

Clerk 适用于没有社交组件的简单前端应用，但不满足 Val Town 的需求。

**切换到 Better Auth：**
-   拥有开源核心和无状态付费基础设施（不参与会话管理）
-   代码质量高，框架集成性好
-   消除了会话对第三方服务可用性的依赖
-   借助大语言模型（LLMs）实现了两周的双身份验证系统并行过渡期

**关键教训：** 上游提供商直接影响你的服务可用性；仔细评估供应商风险；正确的解决方案可能需要时间才能出现。

---

## 4. 特德·特纳去世

**原文标题**: Ted Turner has died

**原文链接**: [https://www.cnn.com/2026/05/06/us/ted-turner-death](https://www.cnn.com/2026/05/06/us/ted-turner-death)

媒体界特立独行的人物、CNN创始人兼慈善家泰德·特纳去世，享年87岁，家人在旁陪伴安详离世。这位出生于俄亥俄州的亚特兰大商人，绰号"南方之口"，缔造了包括有线电视首家超级电视台（WTBS）、TNT、特纳经典电影频道和卡通频道在内的传媒帝国。他还拥有亚特兰大勇士队和亚特兰大老鹰队等职业体育球队。

特纳曾作为帆船选手赢得美洲杯，创立联合国基金会的慈善家，核裁军活动家，也是将野牛重新引入美国西部的环保主义者。他甚至还创作了《地球超人》来教育儿童环保知识。

他最大的遗产是1980年6月1日创立的CNN——全球首个24小时新闻频道，通过实时全球报道革新了电视新闻业。1991年，他被《时代》周刊评为年度风云人物。1996年特纳将旗下电视网出售给时代华纳，但始终称CNN是他最引以为傲的成就。

2018年，他透露自己患有路易体痴呆症。他膝下有5名子女、14名孙辈和2名曾孙辈。CNN高层哀悼称其为业界巨擘，并称他代表着CNN的初心精神。

---

## 5. Google Cloud 欺诈防御，reCAPTCHA 的下一次进化

**原文标题**: Google Cloud fraud defense, the next evolution of reCAPTCHA

**原文链接**: [https://cloud.google.com/blog/products/identity-security/introducing-google-cloud-fraud-defense-the-next-evolution-of-recaptcha/](https://cloud.google.com/blog/products/identity-security/introducing-google-cloud-fraud-defense-the-next-evolution-of-recaptcha/)

**摘要：**

谷歌云推出**Google Cloud Fraud Defense**，这是reCAPTCHA的下一代演进版本，旨在为"智能体网络"——即自主AI代理执行交易的环境——构建信任平台。该平台在Google Cloud Next '26大会上发布，针对由复杂自动化工具和AI代理引入的新型欺诈向量提供解决方案。

Fraud Defense利用谷歌全球威胁信号，验证机器人、人类及AI代理的合法性。其关键新增功能包括：**智能体活动测量仪表板**、用于精细管控代理流量的**策略引擎**，以及用于证明人类在场的**抗AI二维码挑战**。

该平台采取三重策略：**1）应对不断演变的威胁**：依托保护数百万域名的大规模欺诈情报图；**2）保障客户旅程安全**：通过关联注册、登录及支付环节的风险识别多阶段欺诈（账户盗用率降低51%）；**3）加速业务增长**：采用无感知、无摩擦的验证方式，允许合法用户及AI购物助手顺畅操作。

现有reCAPTCHA客户将自动升级为Fraud Defense客户，无需迁移、调整定价或执行任何操作。

---

## 6. 深度学习理论

**原文标题**: A Theory of Deep Learning

**原文链接**: [https://elonlit.com/scrivings/a-theory-of-deep-learning/](https://elonlit.com/scrivings/a-theory-of-deep-learning/)

**摘要：**

本文探讨了深度学习为何在违反经典统计学习理论（该理论预测高度过参数化模型会过拟合）的情况下仍能有效工作，并提出了一种理论来解释良性过拟合、双下降、隐式偏差和顿悟等现象。

关键见解在于：作者未在参数空间中分析网络，而是利用经验神经正切核（eNTK）研究**输出空间动态**。他们引入了**信号通道**（训练在此处耗散损失）和**储备池**（训练在此处不耗散任何东西）。噪声可在储备池中被记忆，但保持**测试不可见**，从而解释了良性过拟合。当噪声在插值阈值附近短暂进入信号通道时，便会出现双下降。隐式偏差的产生是因为梯度下降会先学习高特征值模式。而顿悟则发生在信号从储备池缓慢迁移至通道时。

该理论产生了一种实用算法：仅在批量信号超过留一法噪声时更新参数，从而加速顿悟并消除验证集。

最终，该研究指出梯度下降是低效的——许多动态过程可通过解析求解——并指向直接基于总体风险进行训练，以及重新设计架构以最大化测试不可见的储备池。

---

## 7. 学习扩散模型的积分

**原文标题**: Learning the Integral of a Diffusion Model

**原文链接**: [https://sander.ai/2026/05/06/flow-maps.html](https://sander.ai/2026/05/06/flow-maps.html)

**摘要：**

本文介绍了流映射作为一种优于扩散模型的方案，可实现更快、更高效的采样。扩散模型通过沿连接噪声与数据的路径迭代预测切线方向来生成数据，需执行大量小步长操作。而流映射则学习同一路径上任意两点间的直接映射，可在单步中跨越多个噪声层级。

关键要点：
- **确定性采样**在噪声与数据样本间创建唯一且不相交的路径，支持无记忆遍历。
- **流映射**定义为 \(F(\mathbf{x}_s, s, t)\)——给定时间 \(s\) 的位置，预测路径上时间 \(t\) 的位置，这与仅预测局部切线方向的扩散去噪器不同。
- **优势**包括通过跳过多步中间步骤实现加速采样、缓解路径曲率问题，以及具备奖励学习与改进采样可操控性等新能力。
- **训练**需定义噪声与数据间的双射，通常采用简单噪声调度（\(\mathbf{x}_t = (1-t)\mathbf{x}_0 + t\varepsilon\)）。
- **实际应用**建立在扩散模型概念之上，但需采用不同训练方法以避免通过迭代采样进行反向传播。

文章指出，尽管流映射概念简洁，但其构建与训练方式多样，文献中术语不统一。作者旨在基于 Boffi 等人的分类法梳理这些方法。

---

## 8. 瓶颈从来都不是代码

**原文标题**: The bottleneck was never the code

**原文链接**: [https://www.thetypicalset.com/blog/thoughts-on-coding-agents](https://www.thetypicalset.com/blog/thoughts-on-coding-agents)

**摘要：** 本文认为，随着AI编程智能体大幅降低了编写代码的成本，软件开发真正的瓶颈已从编码转向组织一致性。

关键要点：
1. **编码智能体**如今使个人代码生产变得廉价而快速，但这并不会自动加速整个行业。
2. **协作而非个人产出**才是限制因素。弗雷德·布鲁克斯和杰拉尔德·温伯格曾指出，软件是人类关于“构建什么”进行协商与达成共识后的**残留物**。
3. **新的瓶颈是产出精确的规格说明**——即智能体可执行的路线图、验收标准及书面设计。管理者正疲于定义“我们真正想要什么”。
4. **杰文斯悖论在此适用**：更廉价的代码会催生更多功能，而非减少工作量，导致功能膨胀。保持聚焦（学会说“不”）变得更加困难。
5. **共享语境**——来自会议、故障和经验的非书面组织知识——至关重要，但对智能体而言不可见。智能体缺乏“潜移默化”的能力。
6. **解决方案**：构建外化语境的新型智能体系统，通过爬取代码库、议题、拉取请求及Slack消息，创建记录隐式决策与惯例的书面知识库。这一循环可产出人类从未文档化的组织记忆。
7. **新的竞争护城河是组织一致性，而非技术**。能够将团队凝聚于缩减决策、维护写作文化，并将一致性视为可构建产物的公司终将胜出——智能体只会倍增现有组织质量，无论优劣。

---

## 9. Inkscape 1.4.4

**原文标题**: Inkscape 1.4.4

**原文链接**: [https://inkscape.org/doc/release_notes/1.4.4/Inkscape_1.4.4.html](https://inkscape.org/doc/release_notes/1.4.4/Inkscape_1.4.4.html)

无法访问文章链接。

---

## 10. 战时课堂生活

**原文标题**: Life During Class Wartime

**原文链接**: [https://www.tbray.org/ongoing/When/202x/2026/05/03/Life-During-Class-Wartime](https://www.tbray.org/ongoing/When/202x/2026/05/03/Life-During-Class-Wartime)

本文认为，当今世界正处于一场"阶级战争"中，而大多数人在此战中正输给由最富有的0.1%人群构成的世袭贵族阶层。作者蒂姆·布雷援引乐施会数据，指出温哥华等富裕城市触目可及的贫富差距，并强调这种极端财富不平等不仅在道德上站不住脚，更在经济上缺乏效率且具有破坏性。

布雷批评现行税制允许贝索斯、马斯克等亿万富翁通过漏洞及"王朝信托"等金融工具缴纳极低所得税，从而有效传承世代财富。他举例描述一位30岁的亿万富翁继承人如何从整个国家手中夺走深受爱戴的本地足球队温哥华白帽队，以此作为隐喻。

雷·马多夫和托马斯·皮凯蒂等专家提出的解决方案是征收净值财富税（例如对超过数千万美元的资产每年征收2%），而非易于隐藏的收入税。布雷指出，此类税收几乎不会影响富豪的生活水平，却能产生关键公共收入，避免社会福利项目遭削减。他特别提及支持该主张的"爱国百万富翁"组织。最终，布雷认为答案不是革命，而是通过民主行动夺回权力，向超级富豪征税。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 2 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 3 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 4 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 5 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 6 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 7 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 8 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 9 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 10 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 11 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 12 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 13 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 14 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 15 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 16 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 17 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 18 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 19 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 20 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 21 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 22 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 23 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 24 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 25 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 26 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 27 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 28 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 29 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 30 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 31 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 32 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 33 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 34 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 35 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 36 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 37 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 38 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 39 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 40 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 41 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 42 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 43 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 44 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 45 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 46 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 47 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 48 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 49 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 50 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 51 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 52 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 53 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 54 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 55 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 56 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 57 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 58 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 59 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 60 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 61 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 62 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 63 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 64 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 65 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 66 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 67 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 68 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 69 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 70 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 71 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 72 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 73 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 74 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 75 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 76 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 77 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 78 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 79 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 80 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 81 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 82 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 83 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 84 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 85 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 86 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 87 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 88 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 89 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 90 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 91 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 92 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 93 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 94 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 95 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 96 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 97 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 98 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 99 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 100 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 101 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 102 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 103 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 104 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 105 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 106 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 107 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 108 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 109 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 110 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 111 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 112 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 113 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 114 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 115 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 116 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 117 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 118 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 119 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 120 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 121 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 122 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 123 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 124 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 125 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 126 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 127 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 128 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 129 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 130 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 131 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 132 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 133 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 134 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 135 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 136 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 137 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 138 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 139 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 140 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 141 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 142 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 143 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 144 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 145 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 146 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 147 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 148 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 149 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 150 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 151 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 152 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 153 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 154 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 155 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 156 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 157 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 158 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 159 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 160 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 161 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 162 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 163 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 164 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 165 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 166 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 167 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 168 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 169 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 170 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 171 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 172 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 173 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 174 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 175 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 176 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 177 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 178 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 179 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 180 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 181 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 182 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 183 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 184 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 185 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 186 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 187 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 188 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 189 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 190 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 191 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 192 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 193 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 194 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 195 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 196 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 197 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 198 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 199 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 200 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 201 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 202 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 203 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 204 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 205 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 206 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 207 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 208 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 209 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 210 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 211 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 212 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 213 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 214 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 215 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 216 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 217 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 218 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 219 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 220 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 221 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 222 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 223 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 224 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 225 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 226 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 227 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 228 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 229 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 230 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 231 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 232 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 233 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 234 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 235 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 236 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 237 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 238 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 239 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 240 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 241 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 242 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 243 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 244 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 245 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 246 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 247 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 248 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 249 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 250 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 251 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 252 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 253 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 254 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 255 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 256 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 257 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 258 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 259 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 260 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 261 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 262 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 263 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 264 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 265 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 266 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 267 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 268 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 269 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 270 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 271 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 272 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 273 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 274 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 275 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 276 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 277 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 278 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 279 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 280 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 281 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 282 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 283 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 284 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 285 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 286 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 287 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 288 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 289 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 290 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 291 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 292 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 293 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 294 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 295 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 296 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 297 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 298 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 299 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 300 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 301 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 302 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 303 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 304 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 305 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 306 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 307 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 308 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 309 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 310 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 311 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 312 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 313 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 314 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 315 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 316 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 317 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 318 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 319 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 320 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 321 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 322 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 323 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 324 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 325 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 326 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 327 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 328 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 329 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 330 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 331 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 332 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 333 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 334 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 335 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 336 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 337 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 338 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 339 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 340 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 341 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 342 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 343 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 344 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 345 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 346 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 347 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 348 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 349 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 350 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 351 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 352 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 353 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 354 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 355 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 356 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 357 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 358 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 359 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 360 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 361 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 362 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 363 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 364 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 365 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 366 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 367 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 368 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 369 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 370 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 371 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 372 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 373 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 374 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 375 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 376 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 377 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 378 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 379 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 380 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 381 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 382 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 383 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 384 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 385 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 386 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 387 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 388 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 389 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 390 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 391 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 392 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 393 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 394 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 395 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 396 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 397 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 398 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 399 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 400 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 401 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 402 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 403 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 404 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 405 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 406 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 407 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 408 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 409 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 410 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
