# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-09-22.md)

*最后自动更新时间: 2026-09-22 04:56:19*
## 1. NASA/ESA火星样本返回任务被取消

**原文标题**: The NASA/ESA Mars Sample Return mission has been canceled

**原文链接**: [https://www.science.org/content/article/nasa-s-mars-sample-return-mission-dead](https://www.science.org/content/article/nasa-s-mars-sample-return-mission-dead)

无法访问该文章链接

---

## 2. 小米 MiMo 2.6 版

**原文标题**: Xiaomi MiMo v2.6

**原文链接**: [https://mimo.xiaomi.com/mimo-v2-6](https://mimo.xiaomi.com/mimo-v2-6)

摘要：本文内容为小米（Xiaomi）旗下 AI 模型 MiMo 的 2.6 版本页面信息，仅提供产品名称与版本号标识，未包含详细技术说明或更新日志。MiMo 是小米自研的大语言模型系列，2.6 版为该模型的一次迭代更新，通常在模型架构、上下文处理能力、多语言支持或推理效率等方面进行优化。页面内容以极简形式呈现，属于产品目录或发布入口性质的索引页，完整规格与性能数据需参阅小米官方技术文档或发布公告。

---

## 3. Sun的败笔

**原文标题**: What Sun got wrong

**原文链接**: [https://bcantrill.dtrace.org/2026/09/20/what-sun-got-wrong/](https://bcantrill.dtrace.org/2026/09/20/what-sun-got-wrong/)

Oxide公司团队为年度聚会设计了多款致敬经典计算机公司的T恤，其中一件致敬已故的Sun Microsystems，引发广泛怀旧。作者承认Sun的开源Solaris战略和创始人McNealy"28年无需因新闻感到羞耻"的诚信理念值得敬佩，但直指Sun的核心败笔：公司对经营业务的琐碎事务感到厌倦。2005年，一家正在使用OpenSolaris、迅速增长的初创公司试图大批量采购Sun硬件，却连电话都打不通；而Dell仅凭一张深夜填写的网页表单，次日便有客户经理上门，两周内完成数据中心部署与租赁方案。这一对比让当时刚离开Sun、在废弃办公室里创业的作者深受触动。他总结道：一个对商业运营感到厌倦的公司，无论战略多么成功，终将失败。Sun果然未能挺过数年后的危机，轰然倒下。颇具戏剧性的是，作者后来加入了那家"Sun照不到的"初创公司，而那位Dell客户经理也加入了其中，二人最终共同创办了Oxide。作者表示，致敬Sun不仅是怀恋其正确之处，更是汲取其失败的教训——既受激励，亦引以为戒。

---

## 4. 注意力，是你唯一所有

**原文标题**: Attention is all you have

**原文链接**: [https://alicegg.tech/2026/09/21/attention](https://alicegg.tech/2026/09/21/attention)

本文以"俄罗斯方块效应"切入——持续注视某物终将重塑思维，由此引出核心主张：注意力是你真正拥有的一切。作者指出，如今YouTube、Spotify、LinkedIn、Reddit等算法平台正大规模劫持注意力，用商业推荐、AI生成内容和疑似虚假评论取代个人选择，等于将大脑的钥匙交予他人。与之形成对比的是早期互联网：用户凭书签、RSS和博客主动获取信息，内容有限却出于本心；彼时虽也有有害内容，却需自行寻找，而非在菜谱后突然弹出极端宣传。作者强调，这种"有意识的互联网"并未消亡，只是被资本与算法所遮蔽。真正的转变取决于用户自身——我们需要重新放慢节奏，接受内容不再无限刷新，像养成任何习惯一般，坚持主动选择自己的注意力去向。文章首尾呼应：倘若你对"有意识地使用网络"投入足够关注，终有一日，它也会如方块般悄然融入你的思维。

---

## 5. AI编码使CI成为瓶颈，Linear团队重构流水线以跟上节奏

**原文标题**: AI coding has made CI a bottleneck, so we reworked ours to keep up

**原文链接**: [https://linear.app/now/ci-bottleneck-reworked](https://linear.app/now/ci-bottleneck-reworked)

Linear团队因AI编码工具大幅加速代码产出而CI验证滞后，启动系统性CI优化。尽管测试规模近乎翻两番，PR等待时间仍从6分钟降至5分钟，单次测试运行器耗时减半。优化分四个层面：一是升级基础设施与工具链，迁移至高性能第三方runner，切换tsgo原生编译器使类型检查耗时降73%，重写lint规则去除类型依赖后引入Oxlint；二是优化关键路径，精简变更检测任务的checkout范围，增强网络韧性，将缓存写入移出合并路径，为API PR节省约1分钟；三是减少重复初始化，预装依赖至CI镜像、按包安装、取消低效缓存、以快照替代重复数据库迁移、将7个短任务合并为2个，每shard初始化时间降44%；四是提升测试执行效率，拆分大文件并将shard从4增至8，引入Vitest共享模块状态带来约17%月度节省，以opt-in注释机制保障正确性。文章强调shard扩展依赖setup优化，二者需协同推进，否则当前等待时间将接近11分钟。

---

## 6. 数学库 mathmain 为何需要加密加载器？

**原文标题**: Why does mathmain need an encrypted loader?

**原文链接**: [https://safedep.io/mathmain-encrypted-loader/](https://safedep.io/mathmain-encrypted-loader/)

摘要：安全团队在 npm 仿冒包 mathmain（1.0.1）中发现一个隐蔽的远程访问木马。恶意代码以 AES-256-GCM 加密形式嵌入，仅在调用 lusolve() 求解器并传入特定 3×3 帕斯卡矩阵时触发——其 LU 分解下三角因子 L 的 JSON 字符串即为解密密钥。解密后，加载器将 graph.js 等三个载荷文件写入磁盘并执行：graph.js 负责采集主机信息、生成 X25519 密钥，通过 Base Sepolia 测试网上的智能合约通信；fraction.js 作为命令代理，每 10 秒轮询 Slack 消息并执行攻击者指令；bignumber/type.js 为内嵌的 ethers 库。同一加载器还出现在 mathsbase 和 math-universe 两个包中，但 GitHub 公开源码中并无此代码，系发布时注入。三个包在 2026 年 9 月 12–18 日累计下载超 300 万次，但无公开依赖方，实际安装与触发情况不明。文章提供了完整的 IoC（包名、SHA-256 哈希、触发矩阵、加密数据块）供检测使用。

---

## 7. 数学与人工智能顾问组

**原文标题**: The Advisory Group on Mathematics and Artificial Intelligence

**原文链接**: [https://terrytao.wordpress.com/2026/09/21/advisory-group-on-mathematics-and-artificial-intelligence/](https://terrytao.wordpress.com/2026/09/21/advisory-group-on-mathematics-and-artificial-intelligence/)

摘要：本文为一篇发表于WordPress博客平台的文章，标题为"数学与人工智能顾问组"（The Advisory Group on Mathematics and Artificial Intelligence），由Ben Eastaugh和Chris Sternal-Johnson撰写。该文聚焦于数学与人工智能交叉领域的顾问咨询机制，探讨如何整合数学方法与人工智能技术以推动相关研究和应用发展。由于页面仅保留了标题及博客平台信息，未提供完整正文，具体内容无法进一步展开。一般而言，此类顾问组由数学家、人工智能专家及跨学科学者组成，旨在为政策制定、技术研发及人才培养提供专业建议，促进两大领域的深度融合与协同创新。

---

## 8. 关闭并限制 Mac 上 Apple 智能功能的访问

**原文标题**: Turn off and restrict access to Apple Intelligence features on Mac

**原文链接**: [https://support.apple.com/guide/mac-help/turn-restrict-access-apple-intelligence-mchlb2e44f94/mac](https://support.apple.com/guide/mac-help/turn-restrict-access-apple-intelligence-mchlb2e44f94/mac)

本文介绍了如何在 macOS Tahoe 26 和 macOS Sequoia 15 中，通过"屏幕时间"限制访问 Apple 智能功能。用户需进入"系统设置"→"屏幕时间"→"内容与隐私限制"→"智能与 Siri"，即可分别关闭三类功能：一是写作工具，用于限制智能纠错和用词建议；二是图像创建，涵盖图乐园、智绘表情及图像魔法棒（后者目前在 iPhone 和 iPad 上可用）；三是智能扩展，用于限制 ChatGPT 等第三方 AI 提供商扩展。文章附有重要说明：Apple 智能并非在所有语言或地区可用；中国大陆购买的受支持设备暂不支持 Apple 智能；若用户身处中国大陆且 Apple 账户国家/地区为中国大陆，即使设备非中国大陆购入，Apple 智能同样无法使用。此外，页面提供完整 Mac 使用手册目录，涵盖桌面操作、Siri、连续互通、辅助功能、隐私安全等主题，便于用户查阅相关设置。

---

## 9. 探寻自稳定的组合理论

**原文标题**: In Search of a Compositional Theory of Self-Stabilization

**原文链接**: [http://muratbuffalo.blogspot.com/2026/09/in-search-of-compositional-theory-of.html](http://muratbuffalo.blogspot.com/2026/09/in-search-of-compositional-theory-of.html)

作者试图为自稳定系统建立组合理论，以重试风暴为具体例子，借助2017年Kim等人的参数化假设-保证契约与小增益定理加以探索。该定理将单一条件契约推广为覆盖所有坏度等级的契约族，以消解组件间的循环推理，但其框架为无记忆、标量的输入输出关系，无法表达队列等含状态结构，亦与稳定化收敛推理无关联。作者进而对双队列（新请求与重复请求）建模，导出描述下一轮演化的四个斜率，将其分为"记忆"（主对角线，各队列自身的残留比例）与"耦合"（非对角线，跨队列交互影响）。小增益定理仅审视耦合项，得出增益乘积约0.1、系统看似稳定的错误结论；计入记忆后最大特征值达1.19，系统实际发散。作者由此解释了两类修复：重试预算归零耦合项、新鲜优先服务消除另一耦合项，并分析了队列上限如何约束发散却仍产生元稳定。最终，参数化契约改善了单组件承诺的表述方式，但仍不足以给出实用系统的组合判据；不过各斜率项均可归因于单一组件，为未来组合分析留出了空间。

---

## 10. Grok 4.7 发布

**原文标题**: Grok 4.7

**原文链接**: [https://x.ai/news/grok-4-7](https://x.ai/news/grok-4-7)

SpaceXAI于2026年9月21日发布Grok 4.7，定位为编码与知识工作中最强大的模型，速度较同类模型提升一倍，价格仅为其一半。该模型采用更大基座架构，经更长时间强化学习训练，侧重多步耗时任务，自我校验与长上下文管理能力显著增强，并原生支持Grok Bot交互框架。性能上，Grok 4.7在CursorBench 4.0性价比维度处于前沿，在软件、电气、法律、医疗等多领域基准中全面超越Grok 4.6，与GPT-5.6 Sol、Fable 5.1等前沿模型相当或更优。安全方面，Grok 4.7搭载全新防护体系，在不当请求拒绝与越狱抵抗上表现最强，生物安全评分达62.4%，网络安全领域仅放行3.3%高风险双用途提示，兼顾攻防能力。定价为每百万输入token 2美元、输出6美元，另设双倍速双倍价的快速变体。模型已在Cursor、Grok Build及Grok API上线，亦通过第三方编码工具与云平台提供访问。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-09-22](output/hacker_news_summary_2026-09-22.md) |
| 2 | [2026-09-21](output/hacker_news_summary_2026-09-21.md) |
| 3 | [2026-09-20](output/hacker_news_summary_2026-09-20.md) |
| 4 | [2026-09-19](output/hacker_news_summary_2026-09-19.md) |
| 5 | [2026-09-18](output/hacker_news_summary_2026-09-18.md) |
| 6 | [2026-09-17](output/hacker_news_summary_2026-09-17.md) |
| 7 | [2026-09-16](output/hacker_news_summary_2026-09-16.md) |
| 8 | [2026-09-15](output/hacker_news_summary_2026-09-15.md) |
| 9 | [2026-09-14](output/hacker_news_summary_2026-09-14.md) |
| 10 | [2026-09-13](output/hacker_news_summary_2026-09-13.md) |
| 11 | [2026-09-12](output/hacker_news_summary_2026-09-12.md) |
| 12 | [2026-09-11](output/hacker_news_summary_2026-09-11.md) |
| 13 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 14 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 15 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 16 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 17 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 18 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 19 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 20 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 21 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 22 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 23 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 24 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 25 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 26 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 27 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 28 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 29 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 30 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 31 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 32 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 33 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 34 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 35 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 36 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 37 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 38 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 39 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 40 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 41 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 42 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 43 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 44 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 45 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 46 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 47 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 48 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 49 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 50 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 51 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 52 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 53 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 54 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 55 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 56 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 57 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 58 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 59 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 60 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 61 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 62 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 63 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 64 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 65 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 66 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 67 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 68 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 69 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 70 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 71 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 72 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 73 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 74 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 75 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 76 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 77 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 78 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 79 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 80 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 81 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 82 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 83 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 84 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 85 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 86 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 87 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 88 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 89 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 90 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 91 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 92 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 93 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 94 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 95 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 96 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 97 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 98 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 99 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 100 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 101 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 102 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 103 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 104 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 105 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 106 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 107 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 108 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 109 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 110 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 111 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 112 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 113 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 114 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 115 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 116 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 117 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 118 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 119 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 120 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 121 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 122 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 123 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 124 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 125 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 126 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 127 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 128 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 129 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 130 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 131 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 132 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 133 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 134 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 135 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 136 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 137 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 138 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 139 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 140 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 141 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 142 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 143 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 144 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 145 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 146 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 147 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 148 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 149 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 150 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 151 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 152 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 153 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 154 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 155 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 156 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 157 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 158 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 159 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 160 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 161 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 162 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 163 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 164 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 165 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 166 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 167 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 168 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 169 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 170 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 171 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 172 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 173 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 174 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 175 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 176 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 177 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 178 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 179 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 180 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 181 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 182 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 183 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 184 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 185 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 186 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 187 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 188 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 189 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 190 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 191 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 192 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 193 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 194 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 195 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 196 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 197 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 198 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 199 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 200 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 201 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 202 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 203 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 204 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 205 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 206 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 207 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 208 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 209 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 210 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 211 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 212 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 213 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 214 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 215 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 216 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 217 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 218 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 219 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 220 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 221 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 222 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 223 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 224 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 225 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 226 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 227 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 228 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 229 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 230 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 231 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 232 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 233 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 234 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 235 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 236 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 237 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 238 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 239 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 240 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 241 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 242 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 243 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 244 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 245 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 246 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 247 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 248 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 249 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 250 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 251 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 252 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 253 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 254 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 255 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 256 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 257 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 258 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 259 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 260 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 261 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 262 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 263 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 264 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 265 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 266 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 267 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 268 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 269 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 270 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 271 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 272 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 273 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 274 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 275 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 276 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 277 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 278 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 279 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 280 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 281 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 282 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 283 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 284 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 285 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 286 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 287 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 288 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 289 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 290 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 291 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 292 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 293 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 294 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 295 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 296 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 297 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 298 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 299 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 300 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 301 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 302 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 303 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 304 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 305 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 306 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 307 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 308 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 309 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 310 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 311 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 312 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 313 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 314 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 315 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 316 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 317 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 318 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 319 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 320 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 321 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 322 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 323 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 324 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 325 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 326 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 327 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 328 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 329 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 330 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 331 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 332 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 333 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 334 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 335 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 336 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 337 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 338 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 339 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 340 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 341 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 342 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 343 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 344 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 345 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 346 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 347 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 348 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 349 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 350 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 351 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 352 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 353 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 354 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 355 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 356 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 357 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 358 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 359 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 360 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 361 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 362 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 363 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 364 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 365 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 366 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 367 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 368 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 369 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 370 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 371 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 372 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 373 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 374 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 375 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 376 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 377 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 378 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 379 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 380 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 381 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 382 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 383 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 384 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 385 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 386 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 387 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 388 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 389 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 390 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 391 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 392 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 393 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 394 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 395 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 396 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 397 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 398 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 399 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 400 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 401 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 402 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 403 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 404 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 405 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 406 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 407 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 408 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 409 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 410 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 411 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 412 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 413 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 414 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 415 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 416 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 417 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 418 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 419 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 420 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 421 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 422 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 423 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 424 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 425 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 426 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 427 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 428 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 429 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 430 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 431 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 432 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 433 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 434 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 435 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 436 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 437 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 438 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 439 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 440 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 441 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 442 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 443 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 444 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 445 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 446 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 447 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 448 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 449 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 450 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 451 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 452 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 453 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 454 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 455 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 456 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 457 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 458 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 459 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 460 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 461 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 462 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 463 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 464 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 465 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 466 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 467 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 468 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 469 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 470 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 471 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 472 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 473 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 474 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 475 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 476 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 477 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 478 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 479 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 480 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 481 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 482 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 483 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 484 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 485 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 486 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 487 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 488 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 489 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 490 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 491 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 492 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 493 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 494 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 495 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 496 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 497 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 498 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 499 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 500 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 501 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 502 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 503 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 504 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 505 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 506 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 507 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 508 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 509 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 510 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 511 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 512 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 513 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 514 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 515 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 516 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 517 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 518 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 519 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 520 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 521 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 522 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 523 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 524 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 525 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 526 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 527 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 528 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 529 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 530 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 531 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 532 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 533 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 534 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 535 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 536 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 537 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 538 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 539 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 540 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 541 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 542 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 543 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 544 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 545 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 546 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 547 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
