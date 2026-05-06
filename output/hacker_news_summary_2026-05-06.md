# Hacker News 热门文章摘要 (2026-05-06)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. Show HN：我开发了一款开源邮件构建器，可作为 Beefree/Unlayer 的替代方案

**原文标题**: Show HN: I built an open-source email builder, alternative to Beefree/Unlayer

**原文链接**: [https://play.templatical.com](https://play.templatical.com)

**摘要：**

作者推出了开源邮件构建器“Templatical Playground”，将其定位为 Beefree 和 Unlayer 等主流工具的替代方案。该项目在 Hacker News（Show HN 版块）上发布，旨在提供免费、自托管的解决方案，用于创建响应式邮件模板，避免专有邮件构建器的许可费用或供应商锁定。

关键点包括：
- **开源特性：** 该工具完全开源，允许开发者自行定制和托管。
- **拖拽式编辑器：** 具备直观的浏览器端界面，用于可视化构建邮件。
- **响应式设计：** 自动生成兼容各类邮件客户端与设备的代码。
- **易于集成：** 旨在与现有邮件营销平台或自定义工作流配合使用。
- **社区驱动：** 鼓励开发者社区的贡献与反馈。

作者将 Templatical Playground 定位为一种经济、灵活的替代方案，适用于需要强大邮件构建器但希望避免订阅费用或 SaaS 解决方案数据隐私问题的团队和个人。该项目旨在填补市场中对一款现代、积极维护的开源邮件构建器的空白。

---

## 12. CARA 2.0——“我造出了一只更好的机器狗”

**原文标题**: CARA 2.0 – “I Built a Better Robot Dog”

**原文链接**: [https://www.aaedmusa.com/projects/cara2](https://www.aaedmusa.com/projects/cara2)

本文详细介绍了作为高级设计项目开发的升级版低成本四足机器人CARA 2.0的研制过程。主要目标是打造一台成本低于1000美元、重量不超过20磅、适合业余爱好者和研究人员的机器人。

核心创新在于低成本准直驱（QDD）执行器，通过重新绕制廉价的TYI 5008无刷直流电机（18美元）实现，将其KV值从335降至90，扭矩从0.421牛米提升至1.274牛米。该执行器搭配MKS XDrive Mini FOC控制器（41美元），但初期出现通信问题，后经Mohammad Marshid开发的定制固件解决，实现了稳定的CAN总线反馈。

由此构建的绞盘驱动关节采用迪尼玛绳，传动比9.6:1，峰值扭矩12牛米，每个关节成本约80美元。机器人腿部设计采用同轴五杆机构配合绞盘驱动以实现紧凑结构。相较于前代版本，改进包括减少镜像零件、使用更少螺钉、更薄轴承，以及将上下连杆比设为2:3以优化运动范围。脚部从TPU材质升级为双黄点壁球球芯，以获得更优的柔顺性和抓地力，并为此重新推导了逆运动学算法。

---

## 13. 什么造就了好的智能手机相机？

**原文标题**: What makes a good smartphone camera?

**原文链接**: [https://cadence.moe/blog/2026-05-05-what-makes-a-good-smartphone-camera](https://cadence.moe/blog/2026-05-05-what-makes-a-good-smartphone-camera)

**摘要：什么样的手机才算拥有好相机？**

本文认为，好的手机相机应优先考虑**传感器尺寸**和**光线管理**，而非营销中常被过度强调的像素数量。

**拍摄清晰照片的关键因素：**
- **清洁镜头：**污垢会导致画面模糊、起雾或出现条纹。
- **对焦：**点击拍摄对象（尤其注意眼睛），并留意最近对焦距离。
- **稳定性：**在弱光环境下，较长的快门速度会导致运动模糊。请握稳手机或借助平面支撑。

**细节与噪点：**
- 小型相机传感器捕捉的光线较少，在暗光场景中容易产生更多噪点（颗粒感）。
- 降噪软件会抹平颗粒感，但也会损失精细细节。**更大的传感器**对于保留细节至关重要，尤其是在弱光环境中。

**像素：**
- 更多像素允许放大和裁切而不损失分辨率，*前提是*图像本身清晰且光照充足。
- 如果照片模糊或有噪点，额外的像素毫无用处。传感器尺寸远比像素数量重要。

**曝光与HDR：**
- 手机会自动使用**HDR**来平衡场景中过亮和过暗的区域。这虽有帮助，但也可能产生不自然的效果。
- 面部直对明亮阳光是问题所在，移至阴凉处拍摄会有所改善。

**软件处理：**
现代手机大量运用软件（AI、夜景模式）来弥补硬件的不足。本文将由读者自行决定接受何种程度的软件处理。

---

## 14. 在OpenIndiana Hipster 2025.10上搭建Sun Ray服务器

**原文标题**: Setting up a Sun Ray server on OpenIndiana Hipster 2025.10

**原文链接**: [https://catstret.ch/202605/srss-hipster202510/](https://catstret.ch/202605/srss-hipster202510/)

**摘要：** 本篇博客文章提供了在 OpenIndiana Hipster 2025.10 上搭建 Sun Ray 服务器的分步指南，并使用 Proxmox 虚拟机。

**虚拟机设置：** 作者详细介绍了 Proxmox 的配置，包括使用 SeaBIOS、VirtIO 设备以及启用 vIOMMU。安装 OI 后，系统必须更新，并启用 `hipster-encumbered` 仓库。

**SRSS 安装：** 指南先安装 `sunray-essential` 软件包，然后从替代来源下载 Sun Ray Server Software 5.4.0.0（V37038-01.zip），因为适用于 x86 的 5.4.5.0 版本已不可用。将 IPS 发布者设置为解压后的软件包，并安装 `SUNWut-srss` 和 `SUNWut-srwc`。手动步骤包括安装捆绑的 Java 6 JRE 和 Apache Tomcat 5.5.36，然后链接它们。

**打补丁与配置：** 运行 `sunray/oi-adaptions` 补丁工具，并用 ISC DHCP 替代 Sun DHCP。需要对 `utprodinfo`、`utconfig` 和 `utreplica` 脚本进行手动打补丁。`utconfig` 脚本用于配置服务、Web 管理（HTTP）和自助服务终端模式。图形界面显示管理器从 LightDM 切换为 GDM。

**客户端连接与固件：** DTU 通过 DNS 或菜单（Stop+M）进行连接。固件从 Linux SRSS 5.2 软件包中提取，放置于 `/tftpboot` 目录，并使用 `utfwadm` 进行部署。Sun Ray Web 管理界面可在端口 1660 上访问。指南指出，此设置不支持热插拔功能。

---

## 15. Google 自定义搜索工具

**原文标题**: Google tools for customizing searches

**原文链接**: [https://cardcatalogforlife.substack.com/p/google-has-a-secret-reference-desk](https://cardcatalogforlife.substack.com/p/google-has-a-secret-reference-desk)

**摘要：**

文章指出，谷歌已从搜索门户变为守门人，利用AI概述和个性化功能阻止用户点击原始来源，如今近60%的搜索在无点击情况下结束。为恢复有效搜索，作者（一位图书管理员）分享了绕过这些限制的高级谷歌搜索指令。

关键技术包括：**site:**（在特定域名内搜索）、**引号**（精确短语）、**减号**（排除术语）、**filetype:pdf**（获取研究报告）、**intitle:**（按页面标题筛选）以及**before:/after:**（日期范围）。为获取真实人类意见，可使用**"can anyone recommend"**或**@reddit**来调取论坛讨论。**逐字模式**（位于“工具”菜单下）可去除个性化和同义词替换。

文章还介绍了隐藏工具，如航班追踪、包裹追踪、并排对比、水平仪，以及纸牌等可玩小游戏——均可在搜索栏直接使用。最后，文章警告不要盲目相信AI概述，并建议将搜索栏视为“精密仪器”，而非被动的提问框。

---

## 16. 编织废话

**原文标题**: Knitting bullshit

**原文链接**: [https://katedaviesdesigns.com/2026/04/29/knitting-bullshit/](https://katedaviesdesigns.com/2026/04/29/knitting-bullshit/)

这篇发表于Kate Davies Designs的评论文章，引用哲学家哈里·法兰克福的定义，批评了“编织界胡扯”——即那些漠视真相的内容。作者重点关注Inception Point AI公司制作的AI生成编织播客，这些节目每周产出数千集，完全没有人工审核。该公司一位高管将编织内容的失实轻描淡写为“无关生死”。

通过抽样收听该播客，戴维斯发现其内容空洞无物，从埃及袜子跳跃到Ravelry平台却毫无实质内涵，满篇都是矫揉造作、毫无意义的陈词滥调。它虚假引用了“迈克尔·李”和“伊丽莎白·布朗”等根本不存在的“专家”设计师。这套AI系统用情感认同替代了真正的知识，只会祝贺听众的手工选择，却从不教授任何实质内容。

第二个例子是一部AI生成的编织主题动画片，观看量已逾十万次。戴维斯将其定性为“精心炮制的胡扯”，它披着情感说服力的华丽外衣，却充斥着历史谬误（例如“人类仍在从事的最古老活动”）。她指出这种胡扯的危害在于，它把批判性审视曲解为缺乏情怀的表现。

在戴维斯看来，核心反对理由在于：这类内容寄生并侵蚀着真正的编织社群——这个建立在共享知识、批评、劳动与抗争基础上的社群——通过抽取其灵魂换取情感货币，正在威胁编织者们亲手建立的世界。

---

## 17. 逆向工程1998年《网络创世纪》演示服务器

**原文标题**: Reverse-engineering the 1998 Ultima Online demo server

**原文链接**: [https://draxinar.github.io/articles/2026-05-01-uodemo-reverse-engineering.html](https://draxinar.github.io/articles/2026-05-01-uodemo-reverse-engineering.html)

历经十年断断续续的工作，作者终于完整逆向还原了1998年的《网络创世纪》演示版服务器（UoDemo.exe）。该项目现已在GitHub发布，从原始MSVC x86二进制文件中拆解了约5000个函数，并将其翻译为可移植的C99代码，每个函数均经过与原始指令的逐一对标校验。

该演示版服务器随1998年10月的“第二纪元”扩展包一同发布，其中包含了1998年中旬实际运行于《网络创世纪》正式服务器的生产代码，但部分功能被禁用，可玩地图仅限于Ocllo岛。核心发现包括：修复稳定性与游戏性问题；重新发现著名但未启用的生态系统（捕食者/猎物/食腐者）；新增如冥想与潜行等后续技能；实现账户系统；并通过逆向五种不同加密机制，将客户端兼容性从1.25.30扩展至5.0.9.1。

类层次结构的还原至关重要，继承关系从CEntity贯穿至CPlayer。代码现已包含重构Ocllo之外的世界的工具。该项目提供了一个测试中心，供玩家体验这一忠实还原的1998年服务器。作者希望获得1997-2003年间的原始服务器文件（dynamic0.mul, regions.txt, resbank.mul），以进一步提升还原精度。

---

## 18. 哥伦比亚举办关于摆脱化石燃料的会谈，全球能源危机日益加深

**原文标题**: Colombia hosts talks on exiting fossil fuels as global energy crisis deepens

**原文链接**: [https://www.latimes.com/environment/story/2026-04-26/colombia-hosts-talks-on-exiting-fossil-fuels-as-global-energy-crisis-deepens](https://www.latimes.com/environment/story/2026-04-26/colombia-hosts-talks-on-exiting-fossil-fuels-as-global-energy-crisis-deepens)

**摘要：**

2026年4月，包括石油生产国和主要消费国在内的50多个国家齐聚哥伦比亚圣玛尔塔，召开了首届聚焦化石燃料退出的国际会议。自COP28承诺"逐步摆脱"化石燃料以来，进展缓慢令人沮丧；而最近一份逐步淘汰石油、天然气和煤炭的路线图因缺乏共识在巴西COP30上被搁置，正是此次会议的动因。

本次会议旨在制定切实可行的国家和国际路线图，超越宽泛目标。这是一个"意愿联盟"，决策流程不如联合国谈判正式，其成果将是一份最终报告，而非具有约束力的协议。

值得注意的是，世界前三大排放国（中国、美国、印度）以及沙特阿拉伯、俄罗斯等主要产油国均未出席。会议背景包括伊朗战争扰乱能源市场，凸显了对化石燃料依赖的不稳定性。高油价既增强了发展可再生能源的理由，也引发了增加钻探等短期应对措施。

主办国哥伦比亚展现了国内矛盾：总统古斯塔沃·佩特罗已暂停新的油气勘探，但日益严重的天然气短缺再度提振了对煤炭的需求。该国即将迎来选举，可能逆转这一政策。在全球二氧化碳排放量创下历史新高、气温远超巴黎协定目标之际，此次会议被视为向气候变化采取实际行动迈出的关键——尽管仍属早期——一步。

---

## 19. CSS 多笔画文字效果

**原文标题**: Multi-stroke text effect in CSS

**原文链接**: [https://yuanchuan.dev/multi-stroke-text-effect-in-css](https://yuanchuan.dev/multi-stroke-text-effect-in-css)

本文介绍了一种利用CSS创建复古多描边文字效果的技术，其核心是通过堆叠多个具有不同`text-stroke-width`值的文本层实现。作者最初因`text-stroke`属性仅支持单个值而受阻，后通过堆叠不同描边宽度与颜色的元素成功实现理想轮廓效果。关键要点包括：

- **实现原理**：浏览器绘制字符轮廓，较大的描边宽度可生成更厚的轮廓线，同时保留原始字形。
- **操作方式**：使用绝对定位堆叠图层，通过`z-index`控制层级顺序。借助CSS变量和循环为各层设置不同颜色与描边宽度。
- **浏览器差异**：Firefox渲染的轮廓比Chrome和Safari更平滑。
- **内联文本**：多个并排字符的轮廓会融合，形成连续效果。
- **字体实验**：效果取决于字体选择；作者使用`@google-font`快速加载字体，并展示了Matemasie、Pacifico、Cherry Bomb One等字体的示例。
- **性能表现**：该技术类似CSS滤镜，资源消耗较高，大字号时易出现闪烁。适合实验性项目或生成图像（如结合css-doodle），不适合生产环境。
- **补充示例**：文章附带CodePen链接，鼓励读者尝试不同颜色与字符的趣味组合。

---

## 20. 全职投入开源

**原文标题**: Going Full Time on Open Source

**原文链接**: [https://jdx.dev/posts/2026-04-17-going-full-time-on-open-source/](https://jdx.dev/posts/2026-04-17-going-full-time-on-open-source/)

**摘要：**本文作者宣布将辞去 Figma 的全职工作，转而全力投入其开源项目，主要是 **mise**——一个用 Rust 编写的本地开发者管理工具（GitHub 星标超过 2.7 万，位列 Homebrew 下载量前十）。其他项目包括 aube、hk、pitchfork、fnox 和 usage。

全职工作之余维护这些工具已难以为继，导致通知过载和 PR 审查停滞。为确保 mise 持续改进，他们成立了一家名为 **en.dev** 的公司，并计划在资金允许的情况下雇佣第二位维护者。

目前来自开源项目的收入仅约每月 600 美元（100 美元来自广告，500 美元来自 GitHub Sponsors），不足以维持生计。为填补缺口，他们推出了以下方案：

- **会员制**（从每月 5 美元的“支持者”到每月 50 美元以上的“赞助人”），提供 Discord 访问权限、问答和新闻通讯。
- **企业赞助**：每月 200 美元以上的“支持者”和每月 1000 美元以上的“维持者”，提供 Logo 展示，但不掌控路线图。
- **咨询服务**（每周最多两天），为采用 mise 的团队提供迁移、CI 和自定义插件支持。
- **未来的付费服务**，面向团队托管工具（欢迎提供想法）。

目标是实现可持续的开源开发，而非构建大型 SaaS。作者邀请各方通过 en.dev 会员、GitHub Sponsors 或企业赞助/咨询提供支持。

---

## 21. 比亚迪超越特斯拉和起亚，成为关键海外市场最畅销电动汽车品牌

**原文标题**: BYD overtakes Tesla and Kia as the best-selling EV brand in key overseas markets

**原文链接**: [https://electrek.co/2026/05/05/byd-overtakes-tesla-kia-best-selling-ev-brand-key-overseas-markets/](https://electrek.co/2026/05/05/byd-overtakes-tesla-kia-best-selling-ev-brand-key-overseas-markets/)

**概要：**

比亚迪已在英国、澳大利亚和巴西等关键海外市场成为最畅销的电动汽车品牌。在英国，比亚迪以超过7%的市场份额（截至2026年4月共售出12,754辆）领先电动汽车市场，超越特斯拉、起亚和大众。这一里程碑距离比亚迪进入英国市场仅三年多。

全球范围内，比亚迪4月共售出321,123辆新能源汽车，但新能源汽车总销量同比下滑26%。然而，4月海外出口量激增70%，达到创纪录的135,098辆。在澳大利亚，比亚迪海狮7成为4月最畅销的电动车型。在巴西，比亚迪以14,911辆的销量超越大众、通用和现代，成为首个领跑整体汽车销量的中国品牌。

比亚迪将其成功归功于价格实惠且技术先进的电动汽车，以及燃油价格上涨推动消费者对电动汽车的兴趣。该公司计划继续扩大海外生产，并推出包括5分钟闪充在内的新技术。

---

## 22. 覆盖面猫（YC S22）诚聘兼职工程师开发AI增长工具包

**原文标题**: Coverage Cat (YC S22) Seeks Fractional Engineer to Build AI Growth Toolkit

**原文链接**: [https://www.coveragecat.com/careers/engineering/fractional-growth-engineer](https://www.coveragecat.com/careers/engineering/fractional-growth-engineer)

**摘要：**

Coverage Cat（YC S22）是一家原生AI保险经纪公司，现以合同形式招聘一名兼职增长工程师。该初级职位时薪为15至25美元，面向具备成长型思维的自驱型人才。职责包括设计用于有机增长的AI工具、管理增长工程运营，以及通过Craigslist协调线下走访工作。该职位提供额外激励薪酬机会。

**关键信息：**

- **地区限制：** 目前不接收来自加利福尼亚州、马萨诸塞州、新泽西州、俄勒冈州、华盛顿州、康涅狄格州、伊利诺伊州、罗德岛州、马里兰州、密歇根州、新罕布什尔州或夏威夷州的申请者。
- **申请方式：** 仅通过Y Combinator“初创企业工作”按钮提交的申请会被考虑；邮件申请将不予处理。
- **发布日期：** 2026年5月5日。

该职位强调克服运营障碍以确保实验成功，将数字AI工具与实地推广相结合。

---

## 23. 这些智能家居传感器无需电池或无需内置电池

**原文标题**: Batteries Not Included, or Required, for These Smart Home Sensors

**原文链接**: [https://coe.gatech.edu/news/2026/04/batteries-not-included-or-required-these-smart-home-sensors](https://coe.gatech.edu/news/2026/04/batteries-not-included-or-required-these-smart-home-sensors)

**摘要：**

佐治亚理工学院研究人员开发出用于智能家居传感的电池供电、硬币大小的金属标签。这些无源标签成本仅几美分，利用独特的超声波指纹来检测开门、开抽屉或使用健身器材等动作。当附着在运动部件上的拉片撞击金属圆盘时，会发出20千赫兹以上的无声（超声波）脉冲。标签的形状决定其频率，使得附近的可穿戴设备能够唯一识别每个标签。

该系统由机器人学博士生傅一博与工程师和计算机科学家团队共同开发，使用简单算法（无需机器学习）读取信号，功耗极低。超声波因传播距离短而具有隐私优势。潜在应用包括监测老年人使用浴室、计数健身重复次数、追踪用水量或归档图书馆盒子。研究人员模拟了近1300种独特设计并测试了15种，发现该系统可扩展至数千个唯一可识别标签。该研究成果发表于《ACM交互、移动、可穿戴与泛在技术会议论文集》。

---

## 24. 245TB 美光6600 ION数据中心固态硬盘现已出货

**原文标题**: 245TB Micron 6600 ION Data Center SSD Now Shipping

**原文链接**: [https://investors.micron.com/news-releases/news-release-details/industry-leading-245tb-micron-6600-ion-data-center-ssd-now](https://investors.micron.com/news-releases/news-release-details/industry-leading-245tb-micron-6600-ion-data-center-ssd-now)

本文宣布美光现已出货其6600 ION数据中心固态硬盘，提供高达245TB的巨大容量。该固态硬盘专为超大规模数据中心设计，专注于高密度和能效，适用于存储密集型工作负载。其关键特性包括PCIe 4.0接口和美光先进的NAND技术，为人工智能、机器学习和大数据分析等应用提供卓越性能。245TB型号是市场上容量最高的固态硬盘之一，旨在通过最大化每机架单元的存储容量并降低功耗，相比传统HDD减少总拥有成本。文章强调，该硬盘在满足现代数据中心对可扩展、高能效存储解决方案日益增长的需求方面发挥着重要作用。

---

## 25. 质子会议

**原文标题**: Proton Meet

**原文链接**: [https://proton.me/business/blog/introducing-proton-meet](https://proton.me/business/blog/introducing-proton-meet)

Proton Meet是一款端到端加密的视频会议服务，旨在保护用户隐私，与Zoom或谷歌等可能出于广告、监控或人工智能训练目的而访问通话数据的主流平台形成对比。它解决了数据拦截、泄露以及美国《云法案》等法律强制要求（可迫使美国公司交出存储数据）等风险，给受GDPR和CCPA约束的组织带来了合规挑战。

主要功能包括：
- **端到端加密**，采用开源且经过审计的消息层安全（MLS）协议，保护音频、视频、屏幕共享和聊天内容。
- **即时会议**，无需Proton账户；用户可一键创建链接并邀请任何人加入。
- **协作工具**：屏幕共享、实时聊天，以及桌面端或移动端的高清音视频。
- **日历集成**，支持Proton、谷歌或微软日历，并配备私密日程安排页面。

Proton Meet免费提供最多50名参会者、时长一小时的会议。付费套餐起价为每位用户每月7.99美元（Meet Professional版），或通过Proton Workspace套餐获取。凭借超过1亿用户对Proton套件（Mail、VPN、Pass、Drive）的信赖，Proton Meet将这种毫不妥协的隐私保护扩展到视频通话，确保高安全性的关键对话。

---

## 26. SoundOff：低成本被动式超声波标签

**原文标题**: SoundOff: Low-Cost Passive Ultrasound Tags

**原文链接**: [https://yibo-fu.com/SoundOff-Low-cost-Passive-Ultrasound-Tags-for-Non-invasive-and-Non](https://yibo-fu.com/SoundOff-Low-cost-Passive-Ultrasound-Tags-for-Non-invasive-and-Non)

**《SoundOff：低成本无源超声标签》摘要**

该项目介绍了SoundOff，一种创新系统，使用低成本、无电池的无源超声标签，旨在识别和追踪在传统RFID或视觉标签无法工作的环境中的物体（例如水下、黑暗环境中或透过不透明容器）。这些标签是简单的、可打印的塑料或金属圆盘，当被超声发射器（如医学成像换能器或定制扬声器阵列）发出声波探测时，能反射独特的声学特征。

关键点包括：
- **设计**：标签具有薄型图案化结构（类似于声音的二维码），可调制入射的超声波，产生独特的回声。
- **操作**：设备发送超声波脉冲；标签反射经过修改的信号。接收器（通常是同一个换能器）解码反射波形以识别标签的ID（类似于条形码）。
- **低成本与无源**：每个标签生产成本极低，无需内部电源，适合大规模追踪的一次性使用或嵌入。
- **应用**：潜在用途包括浑浊液体中的库存管理、体内手术工具定位、黑暗仓库中的物品追踪或水下设备标记。
- **局限性**：目前在空气中的有效范围仅几米，且标签必须在声波波束内，需要视线或合适的介质进行声音传输。

该项目突出了针对挑战性传感场景的一种巧妙、低功耗替代方案，以牺牲范围和复杂性为代价，实现了极低的成本和环境适应性。

---

## 27. 麦当劳现在是高端产品了

**原文标题**: McDonald's is a premium product now

**原文链接**: [https://greyenlightenment.com/2024/07/31/mcdonalds-is-a-premium-product-now/](https://greyenlightenment.com/2024/07/31/mcdonalds-is-a-premium-product-now/)

本文认为，麦当劳虽未达到第二季度预期，但其地位依然稳固——因为它已转型为面向中上阶层的"高端产品"，而不仅仅是穷人的选择。作者指出，消费者（尤其是富裕阶层）愿意为口感浓郁、热量密集的快餐一掷千金，并举出Chipotle、Wing Stop以及单价超过40美元的日间套餐等案例。这一趋势得益于可支配收入的增长，以及文化观念转变——昂贵而放纵的餐饮（例如两人消费100美元）已成为常态。

文章着重揭示了社交媒体上的一种认知失调：用户一边追捧天价不健康食品的爆款视频（如60美元的手工汉堡或含4000卡路里的牛排早餐），一边谴责肥胖问题和食品通胀。这些视频能获得数百万播放与好评，而同一批观众却常常发出健康危机的警告。作者认为，现实行为与网络上的道德标榜背道而驰——即便明知风险，人们仍将口感与便利置于健康与成本之上。

因此，麦当劳股价的飙升表明，消费者的习惯并未受价格抱怨或健康担忧的影响。这家快餐巨头无需忧虑，因为对纵欲式高端快餐的需求在富裕顾客群体中依然坚挺，在他们眼中这类消费不过是零花钱而已。

---

## 28. 《Wolfenstein 3D》Game Boy Color定制卡带版（2016）

**原文标题**: Wolfenstein 3D for Gameboy Color on custom cartridge (2016)

**原文链接**: [https://www.happydaze.se/wolf/](https://www.happydaze.se/wolf/)

本文详细介绍了一个于2016年完成的定制《**德军总部3D**》**Gameboy Color**卡带项目。作为软件开发者的创作者，旨在学习硬件设计、PCB制作与表面贴装焊接技术。

**核心硬件：**
- 卡带采用**双处理器系统**：主Gameboy CPU与一颗用于图形渲染的**NXP KE04 ARM Cortex-M0**协处理器（48MHz）。
- 使用**ATF1502 CPLD**替代被拆解的任天堂MBC1芯片实现内存组切换，从而能够采用现成部件。
- 配备双端口SRAM，实现双CPU间的共享内存访问。

**技术成就：**
- 协处理器可在约2毫秒内将帧缓冲转换为Gameboy图块，实现**160×96像素**分辨率下30fps的流畅画面。
- KE04上的**位带**操作高效处理了仅16KB RAM中每像素1比特的帧缓冲、可见性与碰撞贴图。
- 游戏通过压缩技术将第一章节（10个关卡）装入128KB ROM，代码分别存储于KE04（近乎满载）与Z80 ROM中。

**游戏特性：**
- 实现光线投射渲染、精灵化敌人、音乐、音效、HUD界面、密码存档及作弊菜单。
- 经多次修订（Rev.D版）后项目被视为**已完成**，源代码与电路图已上传至GitHub。

---

## 29. YouTube，你的RSS订阅源出问题了

**原文标题**: YouTube, your RSS feeds are broken

**原文链接**: [https://openrss.org/blog/youtube-your-feeds-are-broken](https://openrss.org/blog/youtube-your-feeds-are-broken)

**摘要：**  
本文批评YouTube忽视RSS订阅源——这项功能允许用户通过阅读器关注频道，而不受平台算法驱动的首页影响。主要问题包括：  

1. **订阅源不稳定**——订阅源经常无故消失或停止更新，长期无法正常使用。  
2. **入口隐蔽**——YouTube未提供任何可见的链接或按钮来订阅频道的RSS，用户只能手动拼凑混乱且不直观的网址（例如`channel/UC4a-...`）。  
3. **混杂Shorts**——短视频如今混入RSS订阅源，与用户依赖阅读器获取长视频、有目的性内容的初衷相冲突。  
4. **普遍趋势**——YouTube是平台削弱订阅源功能以降低用户控制权、保护广告收入、避免与自身算法竞争的缩影。  

尽管如此，作者承认YouTube仍提供RSS（不同于许多平台），并呼吁公司修复可靠性问题而非彻底放弃。文章最后指出，RSS技术已比试图扼杀它的平台更持久，用户将继续依赖开放订阅系统。  

*本文由Open RSS（依靠捐赠运营的非营利组织）发布。*

---

## 30. 智能体现在可以创建Cloudflare账户、购买域名并进行部署。

**原文标题**: Agents can now create Cloudflare accounts, buy domains, and deploy

**原文链接**: [https://blog.cloudflare.com/agents-stripe-projects/](https://blog.cloudflare.com/agents-stripe-projects/)

**摘要**

Cloudflare现已支持AI编程代理自主创建账户、购买域名并部署应用程序——无需手动注册或输入信用卡信息。这项功能通过Cloudflare与Stripe联合设计的新协议实现，该协议作为Stripe Projects的一部分推出。

**运作方式：**用户登录Stripe后，指示其代理程序进行构建和部署。代理通过REST API目录发现可用的Cloudflare服务，请求账户预配，并接收API令牌。Stripe负责身份验证和支付处理，发放支付令牌（而非原始卡号），默认月度消费限额为100美元。仅在初始审批和条款接受环节需要人工介入。

**核心组件：**
- **发现：**代理查询服务目录以确定可预配的服务。
- **授权：**Stripe验证用户身份；Cloudflare自动为新用户创建账户，老用户则通过OAuth授权。
- **支付：**Stripe提供令牌化支付方式，防止代理获取信用卡号。

**广泛影响：**任何拥有登录用户的平台均可与Cloudflare进行类似集成，不仅限于Stripe。编程代理市场等平台可通过此功能实现一键生产部署。Cloudflare还将向使用Stripe Atlas的新创企业提供10万美元信用额度。

**可用性：**Stripe Projects处于公开测试阶段。用户需安装Stripe CLI，登录后启动项目——随后指示代理在Cloudflare上构建和部署。

---

