# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-09-10.md)

*最后自动更新时间: 2026-09-10 04:58:16*
## 1. 改进版AI代码注释检测器

**原文标题**: Better AI code comment detector

**原文链接**: [https://entropicthoughts.com/better-ai-comment-classifier](https://entropicthoughts.com/better-ai-comment-classifier)

作者以公开数据重建了AI代码注释检测器，提供浏览器端在线体验，用户输入不离开本地。检测器平衡准确率为77%，输出经校准的概率预测；在真实非合成数据上表现更佳，准确率达88%，但仅适用于代码注释领域。数据构建采用从2021年开源仓库提取人类注释、再由大语言模型为同一代码生成机器注释的方式，并平衡各类别词元数以避免主题泄漏。因数据质量问题多次推翻重做，实际成本远超预期。特征设计涵盖词长分布、词频排名、功能词n-gram、字符频率等多类指标，通过跨类别对比（人类vs.机器、不同模型互比）评估各特征区分力，并以有向图可视化特征强弱关系。文章还以特朗普演讲与《经济学人》片段为例，逐一阐释各特征的运作机制。

---

## 2. MMO游戏的诞生

**原文标题**: The Invention of the MMO

**原文链接**: [https://www.worksinprogress.news/p/the-invention-of-the-mmo](https://www.worksinprogress.news/p/the-invention-of-the-mmo)

1982年，康懋达64（Commodore 64）以64KB内存和595美元低价成为史上最畅销台式机，其出色的游戏性能却常被轻视。1986年，Q-Link为C64用户提供每小时仅3美元的在线接入服务，凭借客户-服务器架构将成本压至竞争对手之下。1989年，卢卡斯影业游戏部门开发的Habitat经Q-Link面向公众推出，成为史上首个大型多人在线虚拟世界。Habitat开创了诸多先河：首次引入"虚拟化身"概念、游戏内货币与玩家间交易、角色外观定制及房屋装饰，催生了如今价值数十亿美元的虚拟商品产业。在仅64KB内存、100KB磁盘、300波特调制解调器的极限条件下，其将大部分逻辑置于服务端的架构极具创新性。开放设计也带来意外：玩家利用物价差异一夜将货币供应量膨胀五倍，成为史上首例"复制漏洞"；同时，玩家自发组建表演团体、创办报纸、建立社区，展现出强烈的创造力与社交需求。Habitat后更名为"Club Caribe"以面向更广泛受众。文章指出，Habitat揭示了早期在线社会的复杂性——人性善恶并存，两位设计师坦言"我们做到了不可能的事"，这一虚拟世界也为当今超连接时代埋下了深远伏笔。

---

## 3. 打地鼠式安全注定落败

**原文标题**: Playing whack-a-mole is losing

**原文链接**: [https://dadrian.io/blog/posts/whack-a-mole-is-losing/](https://dadrian.io/blog/posts/whack-a-mole-is-losing/)

文章对比了安全领域"安全即身份"与"安全即健壮性"两种理念。前者承袭黑客文化，以发现意想不到的漏洞为身份认同，将安全视为侦探式智力游戏；后者追求构建在任何异常条件下均保持正确性的系统。作者以漏洞赏金计划为例，指出其核心价值不在于捕获更多漏洞，而应作为战略输入，驱动产品走向"漏洞归零"的未来。文章类比SRE实践：真正目标是系统健壮性，快速修复只是手段。然而"打地鼠"模式——不断发现并修补——虽使KPI曲线好看，却掩盖了系统频繁出错的事实，每一次修复都是攻击者的机会。AI时代矛盾更尖锐：AI压低漏洞发现成本，但代码量指数增长（Jevons悖论）使穷举式防御永远无法收敛。唯一出路是转变范式：不再搜索"坏"，而是定义系统不变量，借助安全语言、架构约束与持续集成让整类漏洞不再复发。若身份认同绑定于"发现漏洞"，任何系统性改进都可能被视为对自身的否定，这才是防守方最大的认知陷阱。

---

## 4. 寻找最优质的硅胶USB数据线

**原文标题**: Searching for the best silicone USB cable

**原文链接**: [https://www.frankchiarulli.com/blog/best-silicone-usb-cable/](https://www.frankchiarulli.com/blog/best-silicone-usb-cable/)

作者因openterface设备附带的类硅胶线缆手感极佳却存在电磁干扰且不耐高温（被USB-C焊铁轻轻一刮即熔化），遂着手寻找真正耐高温的优质硅胶USB-C线缆。文中实测了四款产品：Grtoed——支持USB 3 SuperSpeed+且耐高温，但手感偏硬似塑料，缺乏把玩乐趣；Thzzhnno——接口更精致、EMI屏蔽更好、同为USB 3+，但遇热即熔，不耐高温；LISEN——10英尺仅11.99美元，手感柔软、耐高温、提供9种配色，可惜仅支持USB 2.0；toocki——13.99美元买两条，轻薄易收纳、通过耐热测试，但同样仅为USB 2.0。最终结论：目前尚无一款产品能同时满足真正耐高温硅胶、出色手感、6至10英尺长度及USB 3.1以上速度这四项要求。作者给出折中建议：重速度与耐热选Grtoed；重手感与供电选LISEN或更便携的toocki。作者仍开放征集，欢迎读者推荐符合全部条件的线缆以更新推荐。

---

## 5. 从第一性原理实现代码片段的 Magic Move

**原文标题**: Magic Move for Code Snippets from first principles

**原文链接**: [https://rahulrav.com/blog/magic_move.html](https://rahulrav.com/blog/magic_move.html)

作者全面转入Linux后失去Keynote的Magic Move过渡效果，遂从零构建代码片段的动画变形能力。Magic Move的根本缺陷在于将代码当作纯文本做字形级匹配，导致变量重命名或移动时字符乱飞，体验极差。作者调研了Myers和Patience diff后指出，最小编辑距离并不等于最佳视觉效果，转而采用Heckel 1978年发表的O(n)差异算法，以视觉连续性而非操作最少性为优化目标。实现上，作者选用TextMate语法而非AST进行分词，兼顾多语言支持与对不完整代码片段的容错性；Token的结构相似度由内容、主作用域和嵌套深度三要素判定，刻意忽略行号与字符偏移。Heckel算法分四步执行：先锁定两端唯一出现的锚点Token，再分别前向、后向遍历匹配相邻Token，最后将剩余未匹配项标记为插入或删除。动画层面，连续删除或插入的Token被批量处理以统一淡出淡入，锚点Token则平滑滑动至新坐标，整体效果连贯流畅。项目已开源（warp），代码片段变形功能也已合入Bento 1.0.19。

---

## 6. 科克森辞职事件疑为AI监管舆论造势

**原文标题**: Jacob Coxon resignation appears to be a PR stunt for AI regulation

**原文链接**: [https://twitter.com/ParkerThayer/status/2097759699626328575](https://twitter.com/ParkerThayer/status/2097759699626328575)

博主Parker Thayer发文指控，Anthropic研究员Jacob Coxon的辞职事件是一场精心策划的公关行动，意在为极端AI监管立法铺路。核心论据有四：其一，Coxon在几乎无粉丝的新账号发帖前18分钟，华尔街日报已刊发其辞职独家报道，显示时间经过预设；其二，帖子发布后15分钟内，首批三条引用推文分别来自Encode AI、AI Policy Network和AI Futures Project三位负责人，而这些机构均由同一基金资助，该基金与Anthropic大股东Jaan Tallinn存在密切关联；其三，Coxon本人曾获AI"末日"倡导者Dustin Moskovitz旗下Good Ventures项目奖学金，第14名引用者亦为Moskovitz另一基金的项目官员，反应异常迅速；其四，事件时间恰好与桑德斯参议员即将推出的极端AI法案高度吻合——该法案拟设立联邦级AI监管机构及专家顾问委员会。作者质疑，AI巨头及其投资者通过资助政策倡导团体、制造"内部吹哨人"叙事，推动立法封锁竞争对手，同时谋求在监管机构中安插代表，构建"既监管又获益"的闭环。

---

## 7. GPT‑5.6 Sol 如何辅助运行量子计算实验

**原文标题**: How GPT‑5.6 Sol helps run quantum computing experiments

**原文链接**: [https://openai.com/index/codex-quantum-computing-experiments/](https://openai.com/index/codex-quantum-computing-experiments/)

无法访问该文章链接。

---

## 8. Smolts: A pedagogical IDE for a teaching language

**原文标题**: Smolts: A pedagogical IDE for a teaching language

**原文链接**: [https://eighty-twenty.org/2026/09/04/smolts](https://eighty-twenty.org/2026/09/04/smolts)

文章之前已经处理过

---

## 9. 新应用「Yesterday」：以昨日天气为参照的 iPhone 应用

**原文标题**: New app: Yesterday, an iPhone app for yesterday's weather

**原文链接**: [https://interconnected.org/home/2026/08/26/yesterday](https://interconnected.org/home/2026/08/26/yesterday)

作者发布了一款名为 Yesterday 的 iPhone 天气应用，核心理念是：人难以凭精确温度数字做决策，却清楚记得昨天穿了什么。应用以昨日天气为基准，用实线表示今日、虚线表示昨日、箭头标注差异，辅以 AI 生成的简短描述、深色模式及桌面小组件等极简功能，帮助用户以"迭代微调"取代"绝对值解读"来决定当日着装。应用基于 Apple 免费的 WeatherKit 开发，作者坦言仅有两位日常用户。发布后朋友们却纷纷表示自己刚用 AI 编程工具做了类似的私人天气 App。作者将此视为标志信号：AI 辅助编程已彻底降低软件开发门槛，人人可为家人打造"专属应用"。由此延伸出行业思考——未来操作系统须内置更多开放 API 与高层数据接口，并需要全新的应用发现与共享协议；末尾还提出一个颇具哲学意味的设计理念：好的系统应"始终发散、拒绝收敛"，例如每月自动在昨日储蓄额上叠加增量，而非允许用户维持不变。

---

## 10. 毫秒必争

**原文标题**: Every Millisecond Counts

**原文链接**: [https://jordivillar.com/blog/every-millisecond-counts](https://jordivillar.com/blog/every-millisecond-counts)

本文记录了团队四个月内将ClickHouse核心查询从85.7秒优化至亚秒级的完整历程，每一步改动简单但层层叠加。起因是应用首屏12条并行查询中，最耗时的一条因ReplacingMergeTree频繁使用FINAL而极慢。优化路径包括：将分区键从按月改为client_customer_id取模36，大幅提升FINAL并行度；调整排序键中event_type位置，减少约16%无效行读取；将FINAL JOIN所需字段改由应用层预计算并入事件流，内存降13倍、耗时降5倍；将9列（约38字节/行）压缩为单列8字节预计算值，再提速约2倍；用dbt编译的扁平查询模板取代三级嵌套参数化视图，彻底消除每次请求的解析与计划构建开销，平均延迟从2.21秒降至527毫秒；调大合并参数并设24小时强制合并，将2.12TiB表压缩至1.55TiB，最大客户查询从14秒降至5.5秒。文章末尾指出，上述优化虽累计带来约20倍提速，但数据读取量仍随客户规模增长，团队正进一步探索通过物化视图预聚合实现读取量与客户规模解耦。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-09-10](output/hacker_news_summary_2026-09-10.md) |
| 2 | [2026-09-09](output/hacker_news_summary_2026-09-09.md) |
| 3 | [2026-09-08](output/hacker_news_summary_2026-09-08.md) |
| 4 | [2026-09-07](output/hacker_news_summary_2026-09-07.md) |
| 5 | [2026-09-06](output/hacker_news_summary_2026-09-06.md) |
| 6 | [2026-09-05](output/hacker_news_summary_2026-09-05.md) |
| 7 | [2026-09-04](output/hacker_news_summary_2026-09-04.md) |
| 8 | [2026-09-03](output/hacker_news_summary_2026-09-03.md) |
| 9 | [2026-09-02](output/hacker_news_summary_2026-09-02.md) |
| 10 | [2026-09-01](output/hacker_news_summary_2026-09-01.md) |
| 11 | [2026-08-31](output/hacker_news_summary_2026-08-31.md) |
| 12 | [2026-08-30](output/hacker_news_summary_2026-08-30.md) |
| 13 | [2026-08-29](output/hacker_news_summary_2026-08-29.md) |
| 14 | [2026-08-28](output/hacker_news_summary_2026-08-28.md) |
| 15 | [2026-08-27](output/hacker_news_summary_2026-08-27.md) |
| 16 | [2026-08-26](output/hacker_news_summary_2026-08-26.md) |
| 17 | [2026-08-25](output/hacker_news_summary_2026-08-25.md) |
| 18 | [2026-08-24](output/hacker_news_summary_2026-08-24.md) |
| 19 | [2026-08-23](output/hacker_news_summary_2026-08-23.md) |
| 20 | [2026-08-22](output/hacker_news_summary_2026-08-22.md) |
| 21 | [2026-08-21](output/hacker_news_summary_2026-08-21.md) |
| 22 | [2026-08-20](output/hacker_news_summary_2026-08-20.md) |
| 23 | [2026-08-19](output/hacker_news_summary_2026-08-19.md) |
| 24 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 25 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 26 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 27 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 28 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 29 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 30 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 31 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 32 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 33 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 34 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 35 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 36 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 37 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 38 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 39 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 40 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 41 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 42 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 43 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 44 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 45 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 46 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 47 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 48 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 49 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 50 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 51 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 52 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 53 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 54 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 55 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 56 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 57 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 58 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 59 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 60 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 61 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 62 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 63 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 64 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 65 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 66 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 67 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 68 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 69 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 70 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 71 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 72 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 73 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 74 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 75 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 76 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 77 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 78 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 79 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 80 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 81 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 82 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 83 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 84 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 85 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 86 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 87 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 88 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 89 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 90 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 91 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 92 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 93 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 94 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 95 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 96 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 97 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 98 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 99 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 100 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 101 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 102 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 103 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 104 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 105 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 106 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 107 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 108 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 109 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 110 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 111 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 112 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 113 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 114 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 115 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 116 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 117 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 118 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 119 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 120 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 121 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 122 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 123 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 124 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 125 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 126 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 127 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 128 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 129 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 130 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 131 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 132 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 133 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 134 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 135 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 136 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 137 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 138 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 139 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 140 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 141 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 142 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 143 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 144 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 145 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 146 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 147 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 148 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 149 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 150 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 151 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 152 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 153 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 154 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 155 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 156 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 157 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 158 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 159 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 160 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 161 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 162 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 163 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 164 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 165 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 166 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 167 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 168 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 169 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 170 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 171 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 172 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 173 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 174 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 175 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 176 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 177 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 178 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 179 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 180 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 181 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 182 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 183 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 184 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 185 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 186 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 187 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 188 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 189 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 190 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 191 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 192 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 193 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 194 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 195 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 196 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 197 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 198 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 199 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 200 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 201 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 202 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 203 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 204 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 205 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 206 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 207 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 208 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 209 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 210 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 211 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 212 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 213 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 214 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 215 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 216 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 217 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 218 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 219 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 220 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 221 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 222 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 223 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 224 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 225 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 226 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 227 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 228 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 229 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 230 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 231 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 232 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 233 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 234 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 235 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 236 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 237 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 238 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 239 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 240 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 241 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 242 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 243 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 244 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 245 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 246 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 247 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 248 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 249 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 250 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 251 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 252 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 253 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 254 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 255 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 256 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 257 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 258 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 259 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 260 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 261 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 262 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 263 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 264 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 265 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 266 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 267 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 268 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 269 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 270 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 271 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 272 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 273 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 274 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 275 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 276 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 277 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 278 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 279 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 280 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 281 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 282 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 283 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 284 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 285 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 286 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 287 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 288 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 289 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 290 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 291 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 292 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 293 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 294 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 295 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 296 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 297 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 298 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 299 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 300 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 301 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 302 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 303 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 304 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 305 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 306 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 307 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 308 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 309 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 310 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 311 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 312 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 313 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 314 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 315 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 316 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 317 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 318 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 319 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 320 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 321 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 322 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 323 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 324 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 325 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 326 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 327 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 328 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 329 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 330 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 331 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 332 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 333 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 334 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 335 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 336 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 337 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 338 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 339 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 340 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 341 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 342 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 343 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 344 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 345 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 346 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 347 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 348 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 349 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 350 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 351 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 352 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 353 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 354 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 355 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 356 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 357 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 358 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 359 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 360 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 361 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 362 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 363 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 364 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 365 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 366 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 367 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 368 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 369 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 370 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 371 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 372 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 373 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 374 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 375 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 376 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 377 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 378 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 379 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 380 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 381 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 382 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 383 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 384 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 385 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 386 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 387 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 388 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 389 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 390 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 391 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 392 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 393 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 394 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 395 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 396 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 397 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 398 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 399 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 400 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 401 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 402 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 403 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 404 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 405 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 406 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 407 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 408 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 409 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 410 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 411 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 412 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 413 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 414 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 415 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 416 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 417 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 418 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 419 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 420 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 421 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 422 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 423 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 424 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 425 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 426 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 427 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 428 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 429 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 430 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 431 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 432 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 433 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 434 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 435 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 436 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 437 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 438 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 439 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 440 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 441 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 442 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 443 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 444 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 445 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 446 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 447 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 448 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 449 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 450 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 451 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 452 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 453 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 454 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 455 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 456 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 457 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 458 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 459 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 460 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 461 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 462 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 463 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 464 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 465 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 466 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 467 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 468 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 469 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 470 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 471 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 472 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 473 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 474 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 475 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 476 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 477 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 478 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 479 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 480 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 481 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 482 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 483 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 484 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 485 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 486 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 487 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 488 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 489 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 490 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 491 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 492 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 493 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 494 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 495 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 496 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 497 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 498 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 499 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 500 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 501 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 502 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 503 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 504 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 505 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 506 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 507 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 508 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 509 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 510 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 511 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 512 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 513 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 514 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 515 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 516 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 517 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 518 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 519 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 520 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 521 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 522 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 523 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 524 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 525 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 526 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 527 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 528 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 529 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 530 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 531 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 532 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 533 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 534 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 535 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
