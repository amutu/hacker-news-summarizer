# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-11-15.md)

*最后自动更新时间: 2026-11-15 04:56:28*
## 1. Lovable应用暴露护照信息及逾20万条私人消息

**原文标题**: Lovable apps expose passport details and more than 200K private messages

**原文链接**: [https://www.crissyfield.de/research/lovable-en/](https://www.crissyfield.de/research/lovable-en/)

AI应用开发平台Lovable允许非技术人员通过自然语言快速构建网页应用，但数据安全隐患频发。研究者与德国《商报》合作，分析了15.9万个Lovable项目，发现大量敏感数据无需登录即可访问。在3.45万个使用Supabase数据库的项目中，2.47万个网站在页面加载时即向客户端传输数据库记录，其中30%暴露了含邮箱地址的数据。严重案例包括：某德国论坛泄露超8万条用户完整个人信息（姓名、邮箱、出生日期、性别）及逾20万条聊天消息；某服务商暴露超1000条含护照号码、有效期及国籍的身份证件信息；此外还有数万条合同、发票、支付记录及内部通讯被公开，暴露数据可被用于钓鱼、票务欺诈或身份盗窃。该平台宣传无需技术知识即可开发应用，但用户协议将数据安全责任完全转嫁客户，形成承诺与责任间的鸿沟。研究者指出，AI生成的数据库集成遵循重复模式，攻击者发现一处漏洞即可批量复制利用，非技术用户更难识别和防范此类缺陷。建议企业在应用处理真实客户数据前，必须由安全专业人士审查访问权限与接口配置，并在重大变更后重复检查。

---

## 2. PyPI's redesigned project pages with clearer security signals are now live

**原文标题**: PyPI's redesigned project pages with clearer security signals are now live

**原文链接**: [https://blog.pypi.org/posts/2026-11-06-ui-updates-complete/](https://blog.pypi.org/posts/2026-11-06-ui-updates-complete/)

文章之前已经处理过

---

## 3. 软件职业头衔家谱

**原文标题**: A Family Tree of Software Job Titles

**原文链接**: [https://zwischenzugs.com/2026/11/03/a-family-tree-of-software-job-titles/](https://zwischenzugs.com/2026/11/03/a-family-tree-of-software-job-titles/)

摘要：本文介绍作者Ian Miell借助Claude制作的软件职业头衔家谱，涵盖1940年代至今104个职位，按开发、运维、数据与AI等七个家族分列，以五年为行呈现演变脉络。文章归纳出六个关键发现：其一，1947年编程被视为低级文书工作，多由女性承担，后渐成核心创意岗位；其二，职位常经历拆分与再合并，如"网络管理员"消亡后职能四散，前后端又合为"全栈"；其三，部分头衔寿命极短，"提示词工程师"迅速被AI工程师吸收；其四，同一名称可指代不同岗位，"系统工程师"在IBM与MCSE语境下含义迥异；其五，新职位常是旧角色重现，2025年热门的"前沿部署工程师"与1960年代IBM系统工程师如出一辙；其六，DevOps之争从未终结，SRE、DevOps、平台工程不断更名但本质未变。技术实现上，整张图谱仅由一个Graphviz文件和一个JSON描述文件构成，新增职位只需三处编辑。文章以编码地位的轮回作结：八十年前编码是文书活，如今AI时代又有人如此断言，但历史表明，编码者往往最终占据了核心位置。

---

## 4. KDE纪录片

**原文标题**: KDE: The documentary [video]

**原文链接**: [https://tube.kockatoo.org/w/fFinNHfanLT7aBEb2B8y4c](https://tube.kockatoo.org/w/fFinNHfanLT7aBEb2B8y4c)

本片《KDE纪录片——自由软件"弱势者"的故事》是一部讲述KDE桌面环境发展历程的视频，托管于Kockatoo Tube（PeerTube去中心化视频平台实例）。页面当前内容主要为技术提示：提醒用户需启用JavaScript方可正常播放视频，并建议若存在隐私顾虑可审查该实例的开源代码（GitHub或Framasoft GitLab）；同时提示若浏览器不兼容，请使用最新版Firefox，或借助第三方客户端访问该实例。该片以KDE社区——自由软件领域中常被边缘化的力量——为主角，展现其奋斗历程与开放精神。

---

## 5. 有旧手机，何必再买昂贵的树莓派？

**原文标题**: Why get an expensive Pi when I have an old phone?

**原文链接**: [https://so.long.thanks.fish/why-pi-when-i-have-an-old-phone/](https://so.long.thanks.fish/why-pi-when-i-have-an-old-phone/)

作者正在做一个需要高分辨率相机、GPS、存储和灯光控制的项目，在树莓派4方案之外，发现旧手机是更经济的替代。一台淘宝二手Redmi 13C 5G或华为Mate 30 5G仅约300–500元，却已集成50MP/40MP相机、GPS、存储、电池、5G移动网络及触摸屏，仅需通过USB-C连接自制灯光控制PCB即可满足需求；而等价的树莓派4方案（含Arducam 64MP相机、GPS、RTC、UPS、触摸屏、4G HAT等）总价约1500–2300元，高出数倍。作者已解锁并Root Redmi，完成相机测试与定时唤醒，还搭建了并排支架，计划与Arducam 64MP同拍以验证实际画质差异。主要顾虑在于批量部署：找几台手机容易，但数百台电池健康、相机表现一致的机器仍需大量筛选。此外，该方案对数字艺术装置也有前景——可替代树莓派或Mac mini作为现场设备，凭借内置移动数据实现远程维护，无需依赖场馆Wi-Fi或开放端口。作者感慨，给海量量产设备赋予第二生命，发现所需硬件几乎已在其中，本身就是一种乐趣。

---

## 6. 希捷新款混合硬盘问世，旧疑问再度浮现

**原文标题**: Seagate's new hybrid drive raises some old questions

**原文链接**: [https://arstechnica.com/gadgets/2026/11/seagate-resurrects-the-ssd-hdd-hybrid-drive/](https://arstechnica.com/gadgets/2026/11/seagate-resurrects-the-ssd-hdd-hybrid-drive/)

摘要：希捷近日推出FireCuda Forge系列混合硬盘，搭载全新Alkemi智能存储平台，将大容量机械硬盘与用户自备的M.2 NVMe固态硬盘（上限1TB）整合为单一存储池，提供8TB（699美元）和20TB（899美元）两种配置，支持USB4，兼容Windows 11与macOS 26+。受AI热潮推动，存储市场供需失衡，SSD与机械硬盘价格均较历史低点大幅攀升，混合方案重新具备经济合理性。混合硬盘曾在2010年代初期风靡，苹果2012年的Fusion Drive即为代表，后因SSD降价而被淘汰；如今价格逆转，旧方案再度回归。然而文章提出与14年前相同的疑问：Alkemi虽宣称"智能数据分层"，却未公开技术文档，未说明数据在两级存储间的分配策略、首次启动的写入逻辑，以及最关键的——若其中一块硬盘故障，另一块能否独立恢复数据。苹果Fusion Drive因数据跨盘分布，单盘故障即导致整个存储卷无法重建。希捷目前同样未提供故障恢复方案，在技术细节公布之前，FireCuda Forge面临的核心风险与当年Fusion Drive如出一辙。

---

## 7. 借助Antigravity /teamwork推进科学与工程前沿研究

**原文标题**: Advancing science and engineering with Antigravity's /teamwork

**原文链接**: [https://research.google/blog/advancing-science-engineering-with-antigravitys-teamwork-feature/](https://research.google/blog/advancing-science-engineering-with-antigravitys-teamwork-feature/)

2026年11月，Google发布Antigravity平台/teamwork多智能体协作系统的最新成果。该系统结合Gemini 4系列模型与多智能体工作流，在人类专家协作下攻克了多个长期开放问题。数学方面，团队证明了信息论中的Courtade-Kumar猜想（5000万行Lean 4代码），解决了自适应数据分析、量子查询、矩阵乘法、动态图等数十个开放问题；通过LEAP框架完成Weil猜想（180万行Lean）、Hilbert第十问题、Navier-Stokes方程有限时间爆破等里程碑式形式化验证，并首次形式化Birkhoff猜想等经典难题。化学方面，30个专业化智能体配合物理仿真器实现95%的NMR分子结构解析精度，近乎翻倍单智能体表现。系统工程方面，构建FarArray低延迟分布式系统，实现60–90倍吞吐提升及185倍HBM减少，并从零训练9×9围棋引擎。此外，多智能体审核工作流构建了因果推断基准数据集，Deep Review工具已服务STOC 2027超578篇投稿，90%作者评价其反馈准确。上述agentic工具已通过Antigravity向外部用户开放。

---

## 8. CBC调查后，LinkedIn与Monster下架逾千条虚假招聘广告

**原文标题**: LinkedIn, Monster take down over 1000 fake job postings after CBC investigation

**原文链接**: [https://www.cbc.ca/news/canada/linkedin-monster-take-down-over-1-000-fake-job-postings-after-cbc-investigation-9.7415379](https://www.cbc.ca/news/canada/linkedin-monster-take-down-over-1-000-fake-job-postings-after-cbc-investigation-9.7415379)

CBC新闻视觉调查组发现，LinkedIn和Monster平台上逾1500条伪装成远程旅行职位的招聘广告实为美国多层次营销公司"Evolution Travel"的招募陷阱。这些帖子以"远程旅行规划师""虚拟客服"等名义，宣称无需经验、年薪高达7.5万美元，实则并无真实岗位。申请者投递简历后被引导参加线上信息会，须支付数百美元入门费及月度订阅费，公司主要靠发展下线赚取佣金。调查发现，相关方使用Wanderwell Collective等虚假名称，一名代理人关联了多个关联品牌。在CBC举报后，LinkedIn下架约900条、Monster下架600条相关帖子，并称此类行为违反平台政策。该公司曾于2021年被美国联邦贸易委员会（FTC）列入警示名单，目前在全球拥有2.7万名独立承包商，但其负责人拒绝回应采访。前FTC主席科瓦契奇指出，隐瞒费用、误导求职者涉嫌"欺骗性商业行为"，应受执法部门调查。专家批评两大平台缺乏有效审核机制，虚假广告严重损害求职者对就业市场的信心。

---

## 9. Show HN：约200行纯 JAX 实现 DeepSeek V3

**原文标题**: Show HN: DeepSeek V3 in ~200 lines of pure Jax

**原文链接**: [https://github.com/Vaibhaav-Tiwari/deepseek-v3-jax](https://github.com/Vaibhaav-Tiwari/deepseek-v3-jax)

本项目以约190行纯 JAX 代码复现 DeepSeek V3 技术报告的核心架构，不依赖 Flax、Equinox 或 PyTorch，参数以纯字典管理，全部组件可逐行阅读。实现涵盖多头潜注意力（MLA）、解耦 RoPE、含1个共享专家与16个路由专家的 DeepSeekMoE、无辅助损失专家均衡、序列平衡损失及多 token 预测（MTP）等模块。模型在 MacBook Air M5（24GB）上从零预训练，数据为207本美国公有领域侦探小说（约2170万 token），共3620万参数、每 token 激活1360万，12000步训练耗时约2.6小时，验证损失从5.02降至3.51。实验证实，无辅助损失的偏置均衡可将专家负载从不均的9%–18%收敛至6%–7%，且验证损失几乎不变（3.921 vs 3.923），印证原论文结论。项目提供完整可复现流程，含数据准备、训练、推理、可视化及39项单元测试，并附训练好的检查点供直接体验。作者明确定位为架构演示而非强语言模型，简化了稀疏专家调度、MLA 权重吸收、FP8 训练等工程细节，规模（36M vs 671B）与上下文（256 vs 128K）远小于原版。代码采用 MIT 许可，训练数据为美国公有领域作品。

---

## 10. 逆向解析一枚老式二极管-晶体管逻辑芯片

**原文标题**: Reverse engineering a vintage diode-transistor logic chip

**原文链接**: [https://www.righto.com/2026/11/signetics-st680a-dtl-nand.html](https://www.righto.com/2026/11/signetics-st680a-dtl-nand.html)

摘要：作者对一枚无法识别的老式集成电路进行逆向工程，揭开其内部结构后确认其为Signetics 600系列的ST680A芯片，即1965年推出的四路二极管-晶体管逻辑（DTL）NAND门。该芯片采用Signetics首创的塑料双列直插封装（DIP），是此类封装的早期代表。作者通过显微镜观察硅片，识别出NPN双极性晶体管、二极管及16个蛇形电阻，并还原了缺失的金属布线层。DTL电路利用输入二极管和两级晶体管实现NAND功能，但功耗和输出驱动能力不如后来的TTL。有趣的是，同一硅片布局通过更换金属层可制成三种芯片：四路二输入（680A）、三路三输入（670A）和双路五输入（616A），体现了早期半定制IC的掩模复用策略。文章还回顾了Signetics的兴衰：1961年从Fairchild独立而出，曾短暂领跑IC市场，后遭Fairchild 930系列压制；以1970年推出的555定时器闻名于世，1975年被飞利浦收购，其血脉延续至今日的NXP半导体。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-11-15](output/hacker_news_summary_2026-11-15.md) |
| 2 | [2026-11-14](output/hacker_news_summary_2026-11-14.md) |
| 3 | [2026-11-13](output/hacker_news_summary_2026-11-13.md) |
| 4 | [2026-11-12](output/hacker_news_summary_2026-11-12.md) |
| 5 | [2026-11-11](output/hacker_news_summary_2026-11-11.md) |
| 6 | [2026-11-10](output/hacker_news_summary_2026-11-10.md) |
| 7 | [2026-11-09](output/hacker_news_summary_2026-11-09.md) |
| 8 | [2026-11-08](output/hacker_news_summary_2026-11-08.md) |
| 9 | [2026-11-07](output/hacker_news_summary_2026-11-07.md) |
| 10 | [2026-11-06](output/hacker_news_summary_2026-11-06.md) |
| 11 | [2026-11-05](output/hacker_news_summary_2026-11-05.md) |
| 12 | [2026-11-04](output/hacker_news_summary_2026-11-04.md) |
| 13 | [2026-11-03](output/hacker_news_summary_2026-11-03.md) |
| 14 | [2026-11-02](output/hacker_news_summary_2026-11-02.md) |
| 15 | [2026-11-01](output/hacker_news_summary_2026-11-01.md) |
| 16 | [2026-10-31](output/hacker_news_summary_2026-10-31.md) |
| 17 | [2026-10-30](output/hacker_news_summary_2026-10-30.md) |
| 18 | [2026-10-29](output/hacker_news_summary_2026-10-29.md) |
| 19 | [2026-10-28](output/hacker_news_summary_2026-10-28.md) |
| 20 | [2026-10-27](output/hacker_news_summary_2026-10-27.md) |
| 21 | [2026-10-26](output/hacker_news_summary_2026-10-26.md) |
| 22 | [2026-10-25](output/hacker_news_summary_2026-10-25.md) |
| 23 | [2026-10-24](output/hacker_news_summary_2026-10-24.md) |
| 24 | [2026-10-23](output/hacker_news_summary_2026-10-23.md) |
| 25 | [2026-10-22](output/hacker_news_summary_2026-10-22.md) |
| 26 | [2026-10-21](output/hacker_news_summary_2026-10-21.md) |
| 27 | [2026-10-20](output/hacker_news_summary_2026-10-20.md) |
| 28 | [2026-10-19](output/hacker_news_summary_2026-10-19.md) |
| 29 | [2026-10-18](output/hacker_news_summary_2026-10-18.md) |
| 30 | [2026-10-17](output/hacker_news_summary_2026-10-17.md) |
| 31 | [2026-10-16](output/hacker_news_summary_2026-10-16.md) |
| 32 | [2026-10-15](output/hacker_news_summary_2026-10-15.md) |
| 33 | [2026-10-14](output/hacker_news_summary_2026-10-14.md) |
| 34 | [2026-10-13](output/hacker_news_summary_2026-10-13.md) |
| 35 | [2026-10-12](output/hacker_news_summary_2026-10-12.md) |
| 36 | [2026-10-11](output/hacker_news_summary_2026-10-11.md) |
| 37 | [2026-10-10](output/hacker_news_summary_2026-10-10.md) |
| 38 | [2026-10-09](output/hacker_news_summary_2026-10-09.md) |
| 39 | [2026-10-08](output/hacker_news_summary_2026-10-08.md) |
| 40 | [2026-10-07](output/hacker_news_summary_2026-10-07.md) |
| 41 | [2026-10-06](output/hacker_news_summary_2026-10-06.md) |
| 42 | [2026-10-05](output/hacker_news_summary_2026-10-05.md) |
| 43 | [2026-10-04](output/hacker_news_summary_2026-10-04.md) |
| 44 | [2026-10-03](output/hacker_news_summary_2026-10-03.md) |
| 45 | [2026-10-02](output/hacker_news_summary_2026-10-02.md) |
| 46 | [2026-10-01](output/hacker_news_summary_2026-10-01.md) |
| 47 | [2026-09-30](output/hacker_news_summary_2026-09-30.md) |
| 48 | [2026-09-29](output/hacker_news_summary_2026-09-29.md) |
| 49 | [2026-09-28](output/hacker_news_summary_2026-09-28.md) |
| 50 | [2026-09-27](output/hacker_news_summary_2026-09-27.md) |
| 51 | [2026-09-26](output/hacker_news_summary_2026-09-26.md) |
| 52 | [2026-09-25](output/hacker_news_summary_2026-09-25.md) |
| 53 | [2026-09-24](output/hacker_news_summary_2026-09-24.md) |
| 54 | [2026-09-23](output/hacker_news_summary_2026-09-23.md) |
| 55 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 56 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 57 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 58 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 59 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 60 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 61 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 62 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 63 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 64 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 65 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 66 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 67 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 68 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 69 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 70 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 71 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 72 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 73 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 74 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 75 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 76 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 77 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 78 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 79 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 80 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 81 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 82 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 83 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 84 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 85 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 86 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 87 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 88 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 89 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 90 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 91 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 92 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 93 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 94 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 95 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 96 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 97 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 98 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 99 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 100 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 101 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 102 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 103 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 104 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 105 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 106 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 107 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 108 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 109 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 110 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 111 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 112 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 113 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 114 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 115 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 116 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 117 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 118 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 119 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 120 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 121 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 122 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 123 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 124 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 125 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 126 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 127 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 128 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 129 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 130 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 131 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 132 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 133 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 134 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 135 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 136 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 137 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 138 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 139 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 140 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 141 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 142 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 143 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 144 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 145 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 146 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 147 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 148 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 149 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 150 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 151 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 152 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 153 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 154 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 155 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 156 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 157 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 158 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 159 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 160 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 161 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 162 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 163 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 164 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 165 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 166 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 167 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 168 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 169 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 170 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 171 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 172 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 173 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 174 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 175 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 176 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 177 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 178 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 179 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 180 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 181 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 182 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 183 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 184 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 185 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 186 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 187 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 188 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 189 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 190 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 191 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 192 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 193 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 194 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 195 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 196 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 197 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 198 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 199 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 200 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 201 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 202 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 203 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 204 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 205 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 206 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 207 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 208 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 209 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 210 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 211 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 212 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 213 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 214 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 215 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 216 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 217 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 218 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 219 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 220 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 221 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 222 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 223 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 224 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 225 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 226 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 227 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 228 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 229 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 230 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 231 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 232 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 233 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 234 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 235 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 236 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 237 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 238 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 239 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 240 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 241 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 242 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 243 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 244 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 245 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 246 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 247 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 248 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 249 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 250 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 251 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 252 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 253 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 254 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 255 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 256 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 257 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 258 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 259 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 260 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 261 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 262 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 263 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 264 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 265 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 266 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 267 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 268 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 269 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 270 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 271 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 272 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 273 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 274 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 275 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 276 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 277 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 278 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 279 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 280 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 281 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 282 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 283 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 284 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 285 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 286 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 287 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 288 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 289 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 290 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 291 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 292 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 293 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 294 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 295 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 296 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 297 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 298 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 299 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 300 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 301 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 302 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 303 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 304 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 305 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 306 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 307 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 308 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 309 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 310 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 311 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 312 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 313 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 314 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 315 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 316 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 317 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 318 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 319 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 320 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 321 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 322 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 323 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 324 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 325 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 326 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 327 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 328 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 329 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 330 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 331 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 332 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 333 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 334 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 335 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 336 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 337 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 338 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 339 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 340 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 341 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 342 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 343 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 344 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 345 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 346 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 347 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 348 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 349 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 350 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 351 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 352 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 353 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 354 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 355 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 356 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 357 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 358 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 359 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 360 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 361 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 362 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 363 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 364 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 365 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 366 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 367 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 368 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 369 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 370 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 371 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 372 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 373 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 374 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 375 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 376 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 377 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 378 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 379 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 380 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 381 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 382 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 383 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 384 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 385 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 386 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 387 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 388 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 389 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 390 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 391 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 392 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 393 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 394 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 395 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 396 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 397 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 398 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 399 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 400 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 401 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 402 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 403 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 404 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 405 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 406 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 407 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 408 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 409 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 410 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 411 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 412 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 413 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 414 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 415 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 416 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 417 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 418 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 419 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 420 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 421 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 422 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 423 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 424 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 425 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 426 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 427 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 428 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 429 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 430 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 431 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 432 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 433 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 434 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 435 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 436 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 437 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 438 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 439 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 440 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 441 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 442 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 443 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 444 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 445 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 446 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 447 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 448 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 449 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 450 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 451 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 452 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 453 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 454 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 455 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 456 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 457 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 458 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 459 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 460 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 461 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 462 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 463 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 464 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 465 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 466 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 467 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 468 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 469 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 470 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 471 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 472 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 473 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 474 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 475 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 476 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 477 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 478 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 479 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 480 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 481 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 482 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 483 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 484 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 485 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 486 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 487 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 488 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 489 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 490 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 491 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 492 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 493 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 494 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 495 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 496 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 497 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 498 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 499 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 500 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 501 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 502 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 503 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 504 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 505 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 506 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 507 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 508 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 509 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 510 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 511 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 512 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 513 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 514 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 515 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 516 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 517 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 518 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 519 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 520 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 521 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 522 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 523 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 524 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 525 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 526 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 527 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 528 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 529 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 530 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 531 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 532 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 533 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 534 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 535 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 536 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 537 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 538 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 539 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 540 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 541 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 542 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 543 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 544 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 545 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 546 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 547 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 548 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 549 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 550 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 551 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 552 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 553 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 554 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 555 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 556 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 557 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 558 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 559 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 560 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 561 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 562 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 563 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 564 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 565 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 566 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 567 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 568 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 569 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 570 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 571 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 572 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 573 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 574 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 575 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 576 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 577 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 578 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 579 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 580 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 581 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 582 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 583 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 584 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 585 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 586 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 587 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 588 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 589 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 590 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 591 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 592 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 593 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 594 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 595 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 596 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 597 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 598 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 599 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 600 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 601 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
