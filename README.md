# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-09-11.md)

*最后自动更新时间: 2026-09-11 04:56:17*
## 1. 我有个理论：软件正在逼人发疯

**原文标题**: I have a theory that software drives people insane

**原文链接**: [https://graybeard.ing/software-drives-people-insane/](https://graybeard.ing/software-drives-people-insane/)

作者认为，软件行业的环境极易让正常人丧失比例感，变得近乎发疯。软件集速度、金钱、复杂性与近乎无限的变更自由度于一体，叠加后产生荒谬的副作用。大多数软件本质上是份高级电子表格，但生产流程却常把普通人逼成"小反派"。与建筑不同，软件改动代价是隐形的——没有碎屑可见，每个"好主意"都容易被轻描淡写地塞进路线图，"能做"迅速滑向"该做"，再变成"为何还没上线"。行业缺乏"完成"的定义，永远有下一个可拉的旋钮；金钱让一次按钮争论承载了公司命运的重量；复杂性则让人误以为自己在造指挥中心，实则只是维护一张表格。更深层地，代码赋予人一种对现实的虚幻掌控感，让人习惯性地"调试"一切：增长慢就改漏斗，流程卡就换工具，公司难做就重组。软件文化对耐心充满敌意，不动即被视为可疑。作者主张解药不是刻意放缓，而是恢复"比例感"：并非所有问题都需紧急干预，并非每个产品都该成为平台。"不碰"本身是一项被低估的工程技能。最终，软件的价值不过在于让生活更简单，而非在虚无中反复折腾一个本已够用的东西。

---

## 2. 真正的创造力，是你新的护城河

**原文标题**: Genuine Creativity Is Your New Moat (2026)

**原文链接**: [https://www.inventbuild.studio/blog/genuine-creativity-is-your-new-moat](https://www.inventbuild.studio/blog/genuine-creativity-is-your-new-moat)

作者以Flash时代为引，回顾上世纪末网络创意的爆发期——虽粗糙笨拙，却催生了无数前所未有的交互形式。当下AI可在数分钟内生成"体面"的网站，约35%的新站已由AI产出，产品趋于高度同质化。作者指出，当执行变得廉价且 abundance，护城河不再是功能或价格，而是持续发明原创解法的能力。他呼吁从业者"后退一百步"，重新审视底层假设：产品是否必须如此运作？用户真正的问题是什么？能否用完全不同的路径解决？AI应作为加速实验的工具，而非替你做关键决策的主体。创造力是一种习惯，需容忍大量失败，让"奇怪的想法"存活到被验证的那一刻。商业上，竞争对手可以复制你的一次创意，却无法复制你不断推倒重来、持续探索的思维方式。文章最终鼓励人们重拾Flash时代对"能造什么新东西"的兴奋感，善用AI的速度尝试更多实验，而非批量生产副本。

---

## 3. Rust 成为微软一级开发语言

**原文标题**: Rust is tier-1 language at Microsoft

**原文链接**: [https://rustfoundation.org/media/guest-post-rust-is-tier-1-language-at-microsoft/](https://rustfoundation.org/media/guest-post-rust-is-tier-1-language-at-microsoft/)

Rust 现已与 C++、C# 和 TypeScript 并列为微软内部开发的一级语言，获得从本地开发到生产部署的全链路支持，包括安全工具链、开发者工具、质量工作流及平台合规。文章重点介绍了微软 DevDiv 团队开发的核心项目 rustc_codegen_utc——一个将 rustc 编译器对接 MSVC（UTC）后端的替代品，与 LLVM、GCC、CraneLift 后端同属一个架构族。该后端使 Rust 在 Windows 上获得与 C++ 完全一致的 ABI 兼容、二进制加固、热补丁、跨语言内联、SPGO 优化及调试诊断能力，为混合 Rust/C++ 项目提供统一的代码生成基础。rustc_codegen_utc 于 2026 年初达到生产就绪，自 Rust 1.90 起实现自托管，目前已有超 100 个微软内部仓库投入使用，且持续扩展。此举是微软"Rust Paved Path"工程战略的关键环节，确保 Windows 平台的新能力可同时惠及两种语言，降低维护成本，支撑微软未来长期构建的混合原生系统。

---

## 4. Cognition发布SWE-2新模型，性能比肩Fable 5.1与GPT-Astra

**原文标题**: Cognition launches new SWE-2 model, Rivaling Fable 5.1 and GPT-Astra

**原文链接**: [https://cognition.com/blog/swe-2](https://cognition.com/blog/swe-2)

Cognition最新编码模型SWE-2在FrontierCode 1.1 Main上取得50.0%成绩，距Fable 5.1仅一步之遥，且成本低64%。该模型首次将强化学习扩展至万亿参数规模，基于2.8T参数的Kimi K3进行后训练，在多个基准上超越SWE-1.7与Grok 4.6，以GPT-6 Astra四分之一的成本逼近其表现。核心技术贡献包括：（1）Pareto前沿驱动的成本惩罚机制，通过单次RL训练同时优化所有推理努力等级，将成本惩罚系数设为Pareto曲线局部斜率，以等式形式推进整体性价比前沿；（2）长度加权奖励基线，利用梯度范数与序列长度的相关性降低梯度方差，显著提升训练稳定性；（3）RL推理服务优化，采用DSpark推测解码配合在线草稿模型训练及NVFP4/FP8低精度内核，在参数量近三倍的情况下维持与SWE-1.7相近的吞吐与更低推理-训练偏差；（4）数据层面将RL环境数量扩大三倍并构建迭代验证器飞轮。行为层面，SWE-2中等级别较SWE-1.7减少58%步数、降低81%成本，首次编辑时间从48步降至18步，在测试覆盖、资源灵活调配及验证纪律方面均有明显提升。SWE-2已在Devin Desktop、CLI等平台上线。

---

## 5. 学者能否将未发表数学成果放心交给 OpenAI？质疑仍在

**原文标题**: More questions about whether researchers can trust OpenAI with unpublished math

**原文链接**: [https://mathstodon.xyz/@andreasthom/117240535270608201](https://mathstodon.xyz/@andreasthom/117240535270608201)

摘要：数学社交平台 Mathstodon 上，研究者 Andreas Thom 发起系列帖（共三条），围绕"研究者是否应信任 OpenAI 处理尚未发表的数学研究"这一议题展开讨论。随着大语言模型在数学推理与证明辅助方面能力迅速提升，越来越多学者尝试将正在构思或尚未公开的数学问题输入 AI 工具，以获取思路启发或验证推导。然而，此举引发了关于学术诚信与知识产权的深层忧虑：未发表成果一旦被输入 OpenAI 等平台，可能面临数据被训练模型吸收、内容被泄露或提前曝光的风险，进而影响优先权的认定。Thom 在帖中延续此前的相关讨论，指出学界对此仍存在诸多未决疑问，包括平台的数据使用政策是否透明、用户协议是否足以保障研究者权益、以及 AI 生成内容对数学原创性的潜在冲击等。该话题折射出当前数学界在拥抱 AI 工具与守护学术规范之间的张力，也反映了研究者对科技巨头数据治理能力的普遍不信任。

---

## 6. NASA为火星开发的色彩增强技术如今正揭示地球古老岩画

**原文标题**: NASA Color Trick Was Meant for Mars. Now It's Unveiling Rock Art on Earth

**原文链接**: [https://gizmodo.com/this-nasa-color-trick-was-meant-for-mars-now-its-unveiling-rock-art-on-earth-2000809844](https://gizmodo.com/this-nasa-color-trick-was-meant-for-mars-now-its-unveiling-rock-art-on-earth-2000809844)

摘要：2005年，考古学家乔恩·哈曼在一场岩画学术会议上看到NASA经"去相关拉伸"处理的火星图像，从中获得灵感，将这项原用于解读火星遥感图像的技术引入岩画研究。该技术由NASA喷气推进实验室于1978年提出，核心基于Karhunen-Loève变换，通过映射到更宽的色彩空间来增强图像对比；1996年罗纳德·阿利进一步优化了算法。哈曼凭借医学影像与伯克利数学博士背景，据此开发出Dstretch插件，在墨西哥巴哈加州洞穴中发现了一幅此前隐不可见的黄色图案，由此确立其价值。此后该技术在全球多地取得突破：在柬埔寨吴哥窟附近发现逾200幅褪色壁画；在埃及贝尼哈桑墓地揭示了罕见的蝙蝠与猪图案；在加拿大"书写之石"遗址发现一幅疑似克劳族战士向黑脚族挑衅的早期"涂鸦"图腾；在挪威厄尔斯安德遗址新识别出约15幅图像。哈曼坦言，这些史前符号含义至今仍成谜，而NASA技术正持续改写人类对古代岩画艺术的认知。

---

## 7. Shopify 从 React Native 回归原生开发

**原文标题**: Shopify moves back to Native from React Native

**原文链接**: [https://shopify.engineering/back-to-native](https://shopify.engineering/back-to-native)

2020年，Shopify全面转向React Native，成功实现跨平台代码共享与开发者提效。然而随着AI编码代理能力飞跃，"同一功能写两遍"的成本已大幅降低，Shopify于2026年决定回归Swift与Kotlin原生开发。核心逻辑是：AI代理能高效在双平台间翻译实现、生成测试与审查代码，使共享实现的优势不再突出，而原生在平台能力利用和减少依赖层方面优势更显著。开源生态方面，Shopify承诺平稳过渡：React Native Skia由William Candillon维护至2026年底后以新名独立发布；FlashList持续修复关键问题并寻求长期维护方；Restyle将于年底停维。迁移采用greenfield全新重建策略，借助AI，Shop应用仅12周即完成重建并上架。为控制生成代码质量，团队构建Helix系统，将工作拆为细小检查点，每步须通过测试、视觉对比、双重对抗审查及人工确认方可推进；同时通过业务逻辑与UI解耦及CLI工具实现代理毫秒级迭代，突破模拟器交互瓶颈。Shopify强调，此举并非技术倒退——React Native在2020年是正确选择，原生在今天是正确选择。

---

## 8. 面向21世纪课堂的音乐理论

**原文标题**: Music Theory for the 21st-Century Classroom

**原文链接**: [https://musictheory.pugetsound.edu/mt21c/MusicTheory.html](https://musictheory.pugetsound.edu/mt21c/MusicTheory.html)

本文探讨在21世纪教育语境下革新音乐理论教学的路径与策略。传统课程多以西方古典音乐体系为根基，而当代课堂亟需更具包容性与时代感的教学范式。文章核心议题包括：将流行音乐、电子音乐、世界音乐等多元风格纳入理论分析框架；借助数字音频工具与多媒体技术增强课堂互动与可视化教学效果；注重培养学生音乐分析、即兴创作与跨媒介表达的综合能力；依据不同代际学习者的认知特征设计差异化教学方案；在全球化与数字化背景下尊重并融合多元音乐文化传统。此外，文章还可能涉及课程标准的更新、师资培训体系的重构以及形成性评估方式的变革，为音乐教育工作者提供面向未来的实践框架与可操作建议，助力音乐教育在新时代焕发活力。

---

## 9. 别让任何人收走你的那盒线材

**原文标题**: Don't Let Anyone Take Away Your Big Box of Cables

**原文链接**: [https://blog.jim-nielsen.com/2026/hands-off-my-cables/](https://blog.jim-nielsen.com/2026/hands-off-my-cables/)

作者刷到Tyler Gaw分享的一句话：整理线缆盒时竟挖出埋了十多年的两根线，恰好派上用场，因此劝人"永远别让别人收走你的线缆盒"。这句话让作者又笑又哭，深受触动，当即决定把它变成自己的行动：截图、黑白打印、裁剪，用透明胶带郑重地贴在自己那只为妻子亲昵地标记为"家庭科技盒"的线缆收纳盒正面。从此每次往盒里塞进"又一根线"时，这句话都会替他回答"还留这个干嘛"的疑问，带来一丝快乐与目标感，也顺带警告家里任何想"扔了吧"的人。全文以幽默温厚的笔调，将一只不起眼的线材盒升华为一种生活哲学——留存并非吝啬，而是对未知需求的善意准备。作者更寄望有朝一日，孩子在阁楼整理旧物时翻到这只盒子，能读懂胶带下那句跨越时光的忠告。

---

## 10. Forgejo ≤16.0.3 严重远程代码执行漏洞修复（16.0.4 版本）

**原文标题**: Forgejo <=16.0.3 Critical RCE

**原文链接**: [https://codeberg.org/forgejo/forgejo/src/branch/forgejo/release-notes-published/16.0.4.md](https://codeberg.org/forgejo/forgejo/src/branch/forgejo/release-notes-published/16.0.4.md)

摘要：Forgejo 16.0.4 为安全紧急更新，修复了影响 16.0.3 及更早版本的严重远程代码执行（RCE）漏洞。该漏洞允许攻击者在目标服务器上执行任意代码，可能导致服务器完全被控制、数据泄露或站点被篡改，危害等级为"严重"。Forgejo 作为 Gitea 的社区分支项目，托管于 Codeberg，此次 16.0.4 版本的核心变更即为该安全补丁，建议所有运行 16.0.3 及以下版本的 Forgejo 实例尽快升级至 16.0.4 或更高版本以消除该风险。在升级前，受影响的服务器应限制网络访问、启用必要的输入校验与沙箱机制以降低被利用风险。

（注：以上内容依据标题及版本发布惯例概括，未能直接访问原文，部分细节可能有出入。）

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 2 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 3 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 4 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 5 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 6 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 7 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 8 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 9 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 10 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 11 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 12 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 13 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 14 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 15 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 16 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 17 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 18 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 19 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 20 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 21 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 22 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 23 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 24 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 25 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 26 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 27 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 28 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 29 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 30 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 31 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 32 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 33 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 34 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 35 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 36 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 37 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 38 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 39 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 40 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 41 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 42 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 43 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 44 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 45 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 46 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 47 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 48 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 49 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 50 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 51 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 52 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 53 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 54 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 55 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 56 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 57 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 58 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 59 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 60 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 61 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 62 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 63 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 64 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 65 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 66 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 67 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 68 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 69 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 70 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 71 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 72 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 73 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 74 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 75 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 76 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 77 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 78 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 79 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 80 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 81 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 82 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 83 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 84 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 85 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 86 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 87 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 88 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 89 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 90 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 91 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 92 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 93 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 94 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 95 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 96 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 97 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 98 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 99 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 100 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 101 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 102 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 103 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 104 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 105 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 106 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 107 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 108 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 109 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 110 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 111 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 112 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 113 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 114 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 115 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 116 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 117 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 118 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 119 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 120 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 121 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 122 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 123 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 124 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 125 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 126 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 127 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 128 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 129 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 130 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 131 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 132 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 133 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 134 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 135 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 136 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 137 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 138 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 139 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 140 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 141 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 142 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 143 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 144 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 145 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 146 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 147 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 148 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 149 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 150 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 151 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 152 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 153 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 154 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 155 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 156 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 157 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 158 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 159 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 160 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 161 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 162 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 163 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 164 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 165 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 166 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 167 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 168 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 169 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 170 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 171 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 172 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 173 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 174 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 175 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 176 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 177 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 178 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 179 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 180 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 181 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 182 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 183 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 184 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 185 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 186 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 187 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 188 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 189 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 190 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 191 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 192 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 193 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 194 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 195 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 196 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 197 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 198 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 199 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 200 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 201 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 202 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 203 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 204 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 205 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 206 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 207 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 208 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 209 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 210 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 211 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 212 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 213 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 214 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 215 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 216 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 217 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 218 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 219 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 220 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 221 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 222 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 223 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 224 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 225 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 226 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 227 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 228 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 229 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 230 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 231 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 232 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 233 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 234 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 235 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 236 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 237 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 238 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 239 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 240 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 241 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 242 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 243 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 244 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 245 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 246 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 247 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 248 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 249 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 250 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 251 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 252 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 253 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 254 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 255 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 256 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 257 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 258 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 259 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 260 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 261 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 262 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 263 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 264 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 265 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 266 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 267 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 268 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 269 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 270 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 271 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 272 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 273 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 274 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 275 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 276 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 277 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 278 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 279 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 280 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 281 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 282 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 283 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 284 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 285 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 286 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 287 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 288 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 289 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 290 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 291 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 292 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 293 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 294 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 295 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 296 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 297 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 298 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 299 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 300 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 301 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 302 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 303 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 304 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 305 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 306 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 307 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 308 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 309 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 310 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 311 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 312 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 313 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 314 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 315 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 316 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 317 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 318 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 319 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 320 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 321 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 322 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 323 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 324 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 325 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 326 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 327 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 328 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 329 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 330 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 331 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 332 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 333 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 334 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 335 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 336 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 337 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 338 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 339 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 340 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 341 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 342 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 343 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 344 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 345 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 346 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 347 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 348 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 349 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 350 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 351 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 352 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 353 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 354 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 355 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 356 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 357 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 358 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 359 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 360 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 361 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 362 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 363 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 364 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 365 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 366 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 367 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 368 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 369 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 370 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 371 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 372 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 373 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 374 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 375 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 376 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 377 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 378 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 379 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 380 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 381 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 382 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 383 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 384 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 385 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 386 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 387 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 388 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 389 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 390 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 391 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 392 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 393 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 394 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 395 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 396 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 397 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 398 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 399 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 400 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 401 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 402 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 403 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 404 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 405 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 406 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 407 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 408 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 409 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 410 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 411 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 412 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 413 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 414 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 415 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 416 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 417 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 418 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 419 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 420 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 421 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 422 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 423 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 424 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 425 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 426 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 427 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 428 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 429 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 430 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 431 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 432 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 433 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 434 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 435 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 436 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 437 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 438 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 439 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 440 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 441 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 442 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 443 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 444 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 445 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 446 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 447 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 448 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 449 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 450 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 451 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 452 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 453 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 454 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 455 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 456 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 457 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 458 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 459 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 460 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 461 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 462 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 463 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 464 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 465 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 466 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 467 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 468 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 469 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 470 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 471 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 472 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 473 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 474 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 475 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 476 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 477 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 478 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 479 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 480 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 481 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 482 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 483 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 484 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 485 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 486 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 487 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 488 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 489 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 490 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 491 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 492 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 493 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 494 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 495 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 496 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 497 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 498 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 499 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 500 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 501 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 502 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 503 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 504 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 505 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 506 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 507 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 508 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 509 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 510 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 511 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 512 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 513 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 514 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 515 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 516 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 517 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 518 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 519 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 520 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 521 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 522 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 523 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 524 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 525 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 526 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 527 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 528 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 529 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 530 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 531 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 532 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 533 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 534 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 535 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 536 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
