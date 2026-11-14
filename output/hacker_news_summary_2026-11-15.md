# Hacker News 热门文章摘要 (2026-11-15)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. Show HN：一款用 Rust 与 ratatui 编写的终端原生放置类工厂游戏

**原文标题**: Show HN: A terminal-native idle factory game, written in Rust with ratatui

**原文链接**: [https://gitlab.com/snipedbywifi/terminactory](https://gitlab.com/snipedbywifi/terminactory)

摘要：无法访问该文章链接。

---

## 12. 生成式AI处理非英文文本时能耗更高

**原文标题**: Generative AI uses more energy on non-English text

**原文链接**: [https://news.umich.edu/generative-ai-uses-more-energy-on-non-english-text/](https://news.umich.edu/generative-ai-uses-more-energy-on-non-english-text/)

无法访问该文章链接

---

## 13. 我们会真的把数据中心送入太空吗？

**原文标题**: Will we put data centers in space?

**原文链接**: [https://www.forethought.org/research/will-we-really-put-data-centers-in-space](https://www.forethought.org/research/will-we-really-put-data-centers-in-space)

摘要：多家科技巨头近期纷纷宣布轨道部署AI数据中心的计划，包括Google的"日冕计划"、SpaceX向FCC申请百万颗数据中心卫星、英伟达发布太空专用GPU等。本文对轨道数据中心（ODC）的技术与经济可行性进行了冷静评估。核心经济逻辑在于能源：晨昏轨道太阳能板可获近乎连续日照，产能为地面同面板的3至5倍；当发射成本降至约250美元/公斤时，太空太阳能与地面离网供电达到成本平价，降至50美元/公斤则优于一切现有地面能源。热管理并非致命瓶颈——新型碳纤辐射器性能可达ISS时代的13至28倍，总成本占比仅2%至5%。然而，在轨无法维修构成重大代价：芯片年损耗约9%，需多发射约38%配套硬件进行补偿；星间带宽限制也使ODC短期内仅适合推理任务。作者判断，Starship是实现大规模轨道算力的唯一近期路径；若开发按计划推进，ODC有望在3至5年内与地面数据中心成本竞争，但2030年前难占有意义份额，2030年代则可能成为太空算力大规模部署的窗口期。

---

## 14. Monkey Island: all 13 versions side by side

**原文标题**: Monkey Island: all 13 versions side by side

**原文链接**: [https://monkeyisland.pages.dev/](https://monkeyisland.pages.dev/)

文章之前已经处理过

---

## 15. 揭秘手机解锁工具：技术概览

**原文标题**: Demystifying phone unlocking tools: A technical overview

**原文链接**: [https://osservatorionessuno.org/blog/2026/05/demystifying-phone-unlocking-tools-a-technical-overview/](https://osservatorionessuno.org/blog/2026/05/demystifying-phone-unlocking-tools-a-technical-overview/)

摘要：本文是一篇技术研究类文章，发表于2026年9月3日，旨在从技术层面向读者全面解析手机解锁工具的工作原理与实现方式，帮助公众理解这一领域背后的技术逻辑，消除信息壁垒。文章同时宣布，名为Bugbane的手机解锁工具正式进入公开测试（Open Beta）阶段，意味着用户可抢先体验其功能并参与反馈。总体而言，该内容聚焦于手机解锁技术的科普与产品动态，兼具技术综述与研发进展发布双重属性。

---

## 16. Show HN：Fursoy——SystemVerilog实现的乱序RV64IMAFDV处理器核心（已启动Linux 6.6）

**原文标题**: Show HN: Fursoy – Out-of-order RV64IMAFDV core in SystemVerilog (Linux 6.6)

**原文链接**: [https://github.com/FURSOY/fursoy-cpu](https://github.com/FURSOY/fursoy-cpu)

Fursoy Slice-1是一款从零设计的64位乱序超标量RISC-V处理器，以SystemVerilog编写，支持RV64IMAFDV及Zba/Zbb等扩展，成功在Sv39虚拟内存下启动主线Linux 6.6.50与BusyBox。核心采用2宽超标量乱序架构，含128条目重排序缓冲、160条目物理寄存器文件、8个分支检查点，以及独立的整数、访存、浮点、向量发射队列。内存子系统配备Sv39双端口DTLB（64条基TLB加8条超大页CAM）、共享页表遍历器、16KiB八bank非阻塞L1数据缓存及4 MSHR。SoC集成五主仲裁交叉开关、CLINT、PLIC与16550 UART，搭载自研SBI v2.0固件。物理综合基于Nangate 45nm标准单元，8个核心模块在500MHz下全部通过时序（TNS=0），总标准单元面积约175mm²。Linux验证覆盖约9000万周期、7600万条指令提交，IPC达0.85，零内核panic，CPI守恒误差为零。项目以Apache 2.0协议开源，提供完整Verilator回归测试与Yosys综合脚本。

---

## 17. "灰岩法"：以极致无聊改善人生（2021）

**原文标题**: 'Grey Rocking': The Life-Improving Power of Being Really, Really Boring (2021)

**原文链接**: [https://www.esquire.com/uk/life/a38473153/grey-rock-technique-being-boring/](https://www.esquire.com/uk/life/a38473153/grey-rock-technique-being-boring/)

摘要：2012年，美国博主Skylar在结束一段25年病态关系后，于寿司吧听到一位陌生人建议"无聊一点"，由此提出"灰岩法"——让自己如灰石般平淡无奇、不引人注意，以切断对方从互动中获取的情绪供给。该方法适用于应对病态自恋者、跟踪者及各类"情绪吸血鬼"，核心在于以"也许""不知道"等敷衍回应替代以往的情绪化反击，使对方逐渐失去兴趣而自行离开。作者将此策略应用于多代同堂的家庭WhatsApp群，以沉默化解长辈对自身糗事的调侃，比喻为1998年英澳板球赛中Mike Atherton面对Allan Donald怒吼时那抹淡然微笑。灰岩法成效显著，能快速化解积怨，但亦有局限：对家人使用犹如"用电锯剪指甲"，长期扮演无趣角色可能使人质疑自身是否仍具备表达与社交能力，故作者最终选择策略性而非全时段使用。文章既肯定该法对脱离有毒关系的生活改善价值，也提醒读者权衡其代价。

---

## 18. 科技公司再次试图重塑隐私概念

**原文标题**: Tech Companies Are Trying to Shift the Concept of Privacy (Again)

**原文链接**: [https://www.eff.org/deeplinks/2026/11/tech-companies-are-trying-shift-entire-concept-privacy-again](https://www.eff.org/deeplinks/2026/11/tech-companies-are-trying-shift-entire-concept-privacy-again)

科技公司正通过新一代"环境监控"设备改写隐私定义。Meta和Google的智能眼镜可拍摄并用AI描述所见，Apple的Audio Intelligence将Apple Watch变为全天转录工具，Amazon的Bee设备则全天候录制并总结对话。这些产品将隐私从个人选择变为影响所有旁观者的议题——旁人无法对他人佩戴的设备"退出"。

各公司强调技术层面的隐私保护，如数据隔离和面部模糊，但仅惠及设备使用者，对被动被录制的旁人毫无保障。法律层面，各州录音规定不一，公司条款虽要求"经许可方可录制"却难以执行，且数据一旦存在，政府终将设法获取。

更深层的是社会问题。与手机录音等主动、可见的方式不同，这类设备以隐蔽、被动的方式鼓励持续监控，侵蚀"不记录他人"的社交默契。连Google高管也坦言，仅通知旁观者"正在被录制"并不能解决问题。

文章呼吁公众积极行动：向公司提交反馈、与不当使用者沟通、在社交平台举报滥用；若自身使用此类产品，应事先告知他人并征得同意。

---

## 19. 意大利因安卓用户数据访问问题对Meta处以8.87亿美元罚款

**原文标题**: Italy fines Meta $887M over Android users' data access

**原文链接**: [https://www.reuters.com/world/italy-fines-meta-887-million-over-android-users-data-access-2026-11-14/](https://www.reuters.com/world/italy-fines-meta-887-million-over-android-users-data-access-2026-11-14/)

无法访问该文章链接

---

## 20. 测试垃圾桶法拉第笼

**原文标题**: Testing a Trash Can Faraday Cage

**原文链接**: [https://www.jefftk.com/p/testing-a-trash-can-faraday-cage](https://www.jefftk.com/p/testing-a-trash-can-faraday-cage)

文章从AI时代的个人防灾准备切入，聚焦电磁脉冲（EMP）防护。作者指出EMP最可能源于高空核爆，会严重破坏电网及带电设备，但断电且未插电的设备通常安全。为验证法拉第笼的实际效果，作者以镀锌垃圾桶为屏蔽容器，用宽带射频噪声发生器作信号源、软件定义无线电接收器作探测器，测试了无桶、桶内无盖、有盖、有盖加导电胶带四种配置，覆盖24MHz至1.7GHz频段。结果显示：无盖时屏蔽极差；加盖后多数频段衰减超30dB；但盖体与桶身有四处约1厘米缝隙，导致339MHz及1.2–1.7GHz等频段泄漏明显，衰减降至约20–29dB。用导电胶带封住接缝后，全频段均无法检出信号，屏蔽效果极佳。作者承认低频段测试受天线长度、背景噪声及接收器下限制约，但物理原理表明低频屏蔽应更优。结论：若需法拉第笼，一个胶带密封的垃圾桶即可提供出色的EMP防护。

---

## 21. 美国国税局Direct File免费报税开源项目（2025）

**原文标题**: US IRS free online tax filing open source repo (2025)

**原文链接**: [https://github.com/IRS-Public/direct-file](https://github.com/IRS-Public/direct-file)

Direct File是美国国税局（IRS）推出的免费联邦所得税电子申报服务，采用访谈式问卷设计，适配手机、平板及电脑等多端，支持英西双语。系统将美国《国内税收法典》转化为通俗问答，用户作答后自动生成标准税表，经IRS现代电子申报（MeF）API提交。核心组件Fact Graph以Scala语言开发，为声明式XML知识图谱，可处理不完整信息，具通用性，可供其他税务机构参考。此外，Direct File通过State API将联邦申报数据以MeF XML及增强JSON格式传输至第三方工具，方便州及地方税申报，无需重复录入。该项目由IRS内部团队联合美国数字服务局（USDS）、总务管理局（GSA）及TrussWorks等厂商共同开发。该仓库现已归档停止维护，代码仅供历史参考，可能存在未修补漏洞，不建议用于生产环境。涉及个人身份信息、联邦税务信息等敏感内容的代码已按法规豁免。项目依据包括2024年《信息技术源码协调与复用法案》、OMB M-16-21备忘录及多项联邦法规。

---

## 22. Let's Write a PostScript Interpreter

**原文标题**: Let's Write a PostScript Interpreter

**原文链接**: [https://beyondloom.com/blog/postscript.html](https://beyondloom.com/blog/postscript.html)

文章之前已经处理过

---

## 23. 图解强化学习

**原文标题**: A visual explanation of reinforcement learning

**原文链接**: [https://aatishb.com/myriad/how-brains-learn/](https://aatishb.com/myriad/how-brains-learn/)

本文是科普系列"万物生智"（Myriad）第二章，通过极简数字生物"火花"直观阐释强化学习原理。火花的"大脑"仅含四个神经元（两只眼、两只鳍），行为由三个参数决定：直连强度、交叉连接强度与驱动速度。文章先让读者手动调参体验趋光试错，再将三参数映射为三维坐标，把学习过程可视化为立方体中的路径。核心算法基于1992年Williams的REINFORCE方法：每次试验前对参数施加小幅随机扰动，表现优于近期均值则获奖励、参数沿扰动方向调整，反之则反向调整，幅度与改善程度成正比。经数千次迭代，火花从随机打转逐步学会趋光并追随光源。文章进一步展示不同奖励信号如何塑造迥异行为——趋光、逃离、静止、攻击，类比人类学走路时的奖惩机制。最后与生物大脑对照：雏鸟凭多巴胺反馈学唱歌，人类大脑拥有860亿神经元，搜索空间虽不可想象地庞大，但"以反馈为指南针、在参数空间中导航"的学习本质相通。

---

## 24. 如何构建你自己的去中心化即时通讯协议

**原文标题**: How to Create Your Own Decentralized Messenger Protocol

**原文链接**: [https://karboosx.net/post/5j7jdDM3/how-to-create-your-own-decentralized-messenger-protocol](https://karboosx.net/post/5j7jdDM3/how-to-create-your-own-decentralized-messenger-protocol)

本文介绍如何基于联邦架构构建去中心化即时通讯协议"lnchat"。联邦模式以SMTP邮件为蓝本，各服务器通过.well-known目录实现点对点发现与通信，无需任何中央调度。协议核心设计包括：用户身份采用nick@domain格式，域名指向归属服务器以支持跨域寻址；通过GET /.well-known/lnchat.json暴露协议版本及各端点URL，实现服务发现；端到端加密采用HPKE方案（X25519密钥封装+AES-256-GCM），客户端本地生成密钥对，私钥以不可提取方式存于IndexedDB，公钥经resolve_users接口在服务器间批量共享，密钥附带key_id以支持轮换与泄露告警；消息由客户端加密后交由发送方服务器投递至接收方服务器，负载携带UUIDv7格式的message_id保证幂等性，sender由服务端强制写入以防伪造；服务器间所有联邦请求须用独立的ED25519签名密钥进行签名，与用户加密密钥严格分离。文章强调协议须版本化以约束契约，初期聚焦单设备纯文本加密传输，再逐步演进扩展。

---

## 25. 基于Lean证明验证器的美国税法形式化与漏洞搜索

**原文标题**: Formalizing US Tax Code (Using Lean)

**原文链接**: [https://lexifina.com/blog/formalizing-the-us-tax-code](https://lexifina.com/blog/formalizing-the-us-tax-code)

摘要：本文报告了使用Lean证明验证器形式化美国《国内收入法》（Title 26）并自动搜索税法漏洞的研究。团队解析官方结构化文本，通过Lean交叉引用检查发现138处起草错误，涵盖失效引用、拼写错误、重复编号及括号未闭合等，每项均附有Lean证书可在数分钟内复验。随后，将2025年个人所得税完整建模为Lean代码，分收入、扣除、税额（含AMT）、抵免四部分，由AI辅助翻译，以IRS官方表格及5000个样本家庭校验。与PolicyEngine-US、Tax-Calculator、UsTaxes三款独立软件对比，发现对方共14处逻辑缺陷（如漏附Schedule C致自雇收入消失、分拆报税未校验分居条件等）及自身2处错误。搜索器在5000户及34至47年家庭规划中自动复现了分拆报税、Roth转换、 kiddie tax等已知税筹策略，并发现三个未见于文献的新漏洞：特定条件下分拆报税可降低社保税约1482美元；工资与投资分属不同申报表可规避3.8%净投资收入税；Schedule 8812表单在相抵范围内退款超出法定上限。研究指出，单年税制因各项阈值有界，不含大额漏洞；重大收益源自跨年度或多实体间价值转移。文本检查与模型验证已具备自动化条件，可随每次立法发布例行运行。

---

## 26. 创建自启动ZIP归档文件

**原文标题**: Creating a self booting ZIP archive

**原文链接**: [https://goliath32.com/blog/ziphead.html](https://goliath32.com/blog/ziphead.html)

摘要：本文介绍了一个精妙的多态文件工程——一个同时满足合法ZIP归档、Multiboot内核与BIOS可启动映像三重身份的自启动文件boot.zip。ZIP格式因从尾部定位中央目录的设计，天然支持多态（如经典自解压EXE/ZIP），但现代压缩工具普遍采用前向线性扫描，要求文件严格以本地文件头起始，限制了传统手法。作者的核心突破在于：ZIP本地文件头魔数PK（0x504B0304）恰好是合法x86指令序列，modtime字段中的0xEB 0x44可解读为相对跳转，从而在满足ZIP约束的同时实现BIOS启动跳转；Multiboot魔数0x1BADB002亦被嵌入文件头，使Qemu可直接以-kernel参数加载。该文件可写入软盘或硬盘由BIOS引导，作者已在Pentium MMX、486DX2及386DX-40等真实硬件上验证通过。归档内含完整构建源码，解压后运行mk.sh即可重新生成整个bootable ZIP。

---

## 27. C3 0.8.6：库获取功能革新、安全模式二进制体积缩减30%及更严格的类型规则

**原文标题**: C3 0.8.6:Library fetching,30% smaller safe-mode binaries,and stricter type rules

**原文链接**: [https://c3-lang.org/blog/c3_0_8_6_fetching_libraries/](https://c3-lang.org/blog/c3_0_8_6_fetching_libraries/)

C3 0.8.6版本发布，核心更新涵盖三大方面：一是全新的库分发与获取系统，新增source-lib目标类型可将C3源码打包为.c3l文件，支持自定义仓库协议、版本控制与SHA256校验和，取代了此前仅依赖单一vendor仓库的临时方案；二是安全模式二进制文件体积缩减30%以上，通过优化检查代码生成和按需复用panic函数实现，PanicFn签名也更新为含摘要与格式化详情的新形式；三是更严格的类型规则，包括禁止无符号溢出赋值、数组/切片/向量有符号与无符号转换须显式cast、else if强制使用大括号、重复指定初始化器报错等。此外，编译器新增泛型实例化错误定位、--stats编译统计、项目级目标依赖与环境变量支持；实验性C后端性能提升约3倍；标准库方面，压缩与哈希模块大幅提速，正则表达式修复整数溢出漏洞，窗口模块修复多项跨平台问题。

---

## 28. Project Zero 漏洞披露政策调整为报告后 90 天公开

**原文标题**: Project Zero will disclose vulnerabilities 90 days after reporting

**原文链接**: [https://projectzero.google/2026/11/disclosure-policy.html](https://projectzero.google/2026/11/disclosure-policy.html)

Project Zero 宣布修订漏洞披露政策，从原"90+30"（90 天修复期+30 天补丁滚动期）改为全新的"Full X"模式。变更主因是 AI 和大语言模型大幅加速了漏洞发现与利用，使传统披露时间线不再充分——攻击者可近乎即时从补丁中逆向出漏洞细节，补丁滚动期已失去意义。新政策规定漏洞在报告后 X 天公开披露，当前为"Full 90"，2027 年 2 月缩短至 60 天，2028 年 1 月缩短至 30 天，并取消宽限期和变体政策等特殊条款。仅保留三类例外：野外活跃利用、已被公开的信息、供应商主动请求公开。政策分阶段收紧，旨在给供应商改进修复流程与基础设施的合理时间，避免骤变反而伤害用户。Project Zero 同时明确，漏洞严重性不作为披露决策依据，因严重性只影响用户损失程度，不影响攻击者发现漏洞的概率。对于硬件漏洞（如 Spectre、Meltdown），仍可能获得个案豁免。此外，Project Zero 不再以"漏洞是否已修复"作为披露的决策节点，但仍会跟踪修复进展并向供应商反馈。

---

## 29. Show HN：Agweb——一款为编码代理打造、绝不抢占焦点的浏览器

**原文标题**: Show HN: Agweb – a browser for agents that stays out of your way

**原文链接**: [https://github.com/paul-nameless/agweb](https://github.com/paul-nameless/agweb)

Agweb 是一款基于 WebKit 引擎的 macOS 浏览器，专为同时运行多个编码 AI 代理而设计，解决 Playwright Chrome 频繁抢占焦点及无头浏览器被网站屏蔽、难以排查的痛点。核心优势：代理经 agweb 命令行驱动，浏览器始终不抢占焦点；空闲标签页自动挂起，五页 CPU 占用为 0%，内存仅 590MB（Playwright Chrome 需 1.6GB）；仪表盘实时展示所有代理的标签页与最近命令；各代理拥有独立工作区，支持命名配置共享登录；操作模拟真人，指针与点击为原生 macOS 事件；快照为元素分配持久引用，配合 diff/find 大幅减少 token 消耗；密码经外部命令注入，不进入代理对话；内置 uBlock 广告拦截。命令风格兼容 playwright-cli，支持 Claude Code 与 Codex。局限：仅 WebKit 引擎，无 CDP 支持，广告拦截能力弱于完整版 uBlock。

---

## 30. vLLM跨双DGX站部署GLM-5.3：实现607.8 tok/s推理吞吐

**原文标题**: Serving GLM-5.3 at 607.8 tok/s across two Nvidia DGX stations with vLLM

**原文链接**: [https://developer.nvidia.com/blog/when-one-gpu-isnt-enough-serving-glm-5-3-across-two-nvidia-dgx-stations-with-vllm/](https://developer.nvidia.com/blog/when-one-gpu-isnt-enough-serving-glm-5-3-across-two-nvidia-dgx-stations-with-vllm/)

GLM-5.3 NVFP4是7530亿参数的混合专家（MoE）量化模型，每token激活400亿参数，权重约464GB，超出单张GB300 GPU 252GB HBM3e容量。本文介绍通过vLLM将模型部署于两台NVIDIA DGX Station，经ConnectX-8 RDMA互联，以张量并行（TP=2）将权重与计算均分至两张GPU，对外暴露单一OpenAI兼容端点。服务启用多token预测（MTP推测解码，每步起草4个token）、FP8 KV缓存（内存减半）及前缀缓存以优化吞吐。AIPerf在SPEED-Bench Coding数据集上的基准测试显示：并发16时输出吞吐峰值达607.8 tok/s；并发32时降至385.0 tok/s，平均请求延迟453.5秒。教程涵盖RDMA链路与SSH免密配置、464GB检查点的下载与跨机校验、以及含NCCL RoCE参数和CUDA图捕获的分布式服务启动，最终提供可复现的本地大模型推理基准。

---

