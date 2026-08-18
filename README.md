# Hacker News 每日摘要
    
这是 Top 10 的每日摘要，更多请点击 [Top 100](output/hacker_news_summary_2026-08-18.md)

*最后自动更新时间: 2026-08-18 20:43:30*
## 1. 警惕管理顾问

**原文标题**: Beware Management Consultants

**原文链接**: [https://about.iceland.co.uk/our-story/the-dark-ages/beware-management-consultants/](https://about.iceland.co.uk/our-story/the-dark-ages/beware-management-consultants/)

在一个讽刺故事中，绿队与红队进行划船比赛，绿队以一英里优势获胜。红队调查后发现一个关键差异：绿队有7名桨手和1名船长，而红队有7名船长和1名桨手。

管理层聘请了顾问，顾问们得出结论：问题在于船长与桨手的比例。他们将红队重组为4名船长、2名经理和1名高级总监，与桨手之间建立虚线汇报关系，并增设非金钱激励方案。第二年，绿队以两英里优势获胜。

红队管理层以表现不佳为由解雇了桨手，向领导层发放奖金以表彰其“强有力的激励”，并再次聘请顾问。顾问们将责任归咎于船（“工具”）不达标，尽管原始数据中并未包含这一因素。红队随后设计了一艘新船，并将划船业务外包给印度。

这篇文章讽刺了企业过度管理、咨询术语、将责任归咎于个人或工具而非结构性问题，以及误导性的重组行为。

---

## 2. Turbovec——谷歌的TurboQuant，用于Rust中的向量搜索

**原文标题**: Turbovec – Google's TurboQuant for vector search in Rust

**原文链接**: [https://github.com/RyanCodrai/turbovec](https://github.com/RyanCodrai/turbovec)

Turbovec 是一个 Rust 向量索引，带有 Python 绑定，构建于 Google Research 的 TurboQuant 算法之上；这是一种数据无关的量化器，无需训练阶段或参数调优。它能大幅压缩向量——一个包含 1000 万文档的 float32 语料库从 31 GB 降至约 4 GB——同时在基准测试配置中检索速度超过 FAISS。

主要特性：
- 在线摄入：向量即时建立索引；语料库增长时无需重建。
- 快速 SIMD 内核：手写 NEON、AVX-512 VNNI、AVX2 及标量回退。在 ARM 和 x86 上，所有测得配置中均优于 FAISS IndexPQFastScan，4 位平均快 3.4 倍，2 位约快 20–26%。
- 增量同步：一次 fsync 仅保存变更字节，崩溃安全；也支持完整快照。
- 过滤检索：允许列表或位掩码过滤在内核内完成，避免过度抓取。
- 通过 IdMapIndex 支持外部稳定 ID，包括按 ID 的 O(1) 删除。
- 集成 LangChain、LlamaIndex、Haystack 和 Agno 等框架。

工作原理：
1. 向量被归一化为单位方向。
2. 共享随机旋转使每个坐标服从已知的 Beta/类高斯分布，与数据无关。
3. 可选校准（TQ+）为每个坐标拟合两个标量，以提高有限维度下的精度。
4. Lloyd-Max 标量量化对每个坐标进行最优分桶（2 位分 4 桶，4 位分 16 桶）。
5. 数值按位打包；1536 维向量在 2 位下从 6,144 字节压缩至 384 字节（16 倍压缩）。
6. 长度重归一化消除标量量化带来的内积偏差。

召回率与 FAISS PQ 相当，校准可弥补低维度下的不足。该项目开源，可通过 pip 和 cargo 获取。

---

## 3. 亚马逊税

**原文标题**: The Amazon tax

**原文链接**: [https://seths.blog/2026/08/the-amazon-tax/](https://seths.blog/2026/08/the-amazon-tax/)

亚马逊的搜索广告被作者称为“税”，但它们实际上是“合法盗窃”。亚马逊每周从购买搜索干扰型广告的商家和出版商那里赚取近十亿美元。作者的出版商开始为他的新书购买广告，这揭示出这些广告并不能帮助顾客找到更好的产品。相反，它们让亚马逊的搜索结果变得更糟：亚马逊早就知道哪些商品评价最好、退货最少、价格最优，因此广告只会把顾客推向更差的选择。即使是最好的产品，也必须购买广告来保护自己本应属于它的销量。这些是零和广告——它们不会增加整体需求，而且研究表明，有搜索广告的电商网站比没有搜索广告的电商网站卖出的商品更少。有一个例子是，他的出版商为一个顾客已经在搜索的同一本书展示广告，每次点击支付了大约一美元。

每年花费在这些广告上的超过500亿美元，最终由消费者以更高的价格或减少的创新来买单。随之而来的是两种反常效应：生产商为了省出钱来点击广告而在质量上偷工减料，而亚马逊则有动机让自然搜索结果变得更差，迫使更多商家购买广告。作者得出结论，亚马逊曾经真正以客户为中心、专注于降低价格，如今再也无法这样宣称了。它的广告系统并不违法，但它显然是在为亚马逊服务，而不是为顾客服务。文章最后将这一行为称为“从他们口口声声说要服务的顾客那里偷窃”。

---

## 4. 将铁路网用作平板扫描仪

**原文标题**: Using the railway network as a flatbed scanner

**原文链接**: [https://philo.gay/linecam/](https://philo.gay/linecam/)

文章描述了作者的一个项目：利用工业线性扫描相机将火车和渡轮变成“平板扫描仪”。线性相机每秒捕获数千次单条垂直像素线；当相机移动时，这些线条可以拼接成宽幅全景图像。

作者起初用智能手机拍摄沙发视频，从每一帧中截取一条狭缝，但由于速度不一致，结果出现畸变。随后他们在eBay上以原价700美元的十分之一购入了一台Basler ruL2048-19gm工业线阵扫描相机。该相机每秒可捕获19,000行，但需要明亮的日光和精确的运动。他们设计了一个带三脚架的机箱，采用3D打印部件，并安装了加速度计/全球定位系统（GPS）模块用于运动追踪，还编写了自定义软件来捕获和预览图像。

在波士顿MBTA橙线上的早期测试在曝光和对焦方面遇到了困难，但后来的尝试（包括朗费罗桥）获得了成功。作者使用Dear ImGui改进了软件，加入了实时图形用户界面（GUI），并解决了加速度计读数串行数据处理的问题——这一问题曾偶尔导致图像出现接缝。他们还描述了携带可疑设备上火车所面临的社会挑战，提到了在蒙特利尔被警方拦下，以及波士顿相对宽松的态度。

最困难的部分是后期处理：决定使用哪些捕获到的线条。加速度计的速度数据有所帮助，但微小的变化仍会导致拉伸或压缩。文章包含早期失败案例的示例，以及一张从旧金山渡轮上拍摄的成功图像——尺寸为56,894×2,048像素，并在交互式画廊中展示。该项目被呈现为一种低成本、DIY的传统扫描后背替代方案，并提供了关于工业相机SDK、运动补偿以及将移动交通工具转变为精确成像平台的难点的经验教训。

---

## 5. 修复变砖的Framework笔记本电脑

**原文标题**: Fixing a bricked Framework laptop

**原文链接**: [https://quantum5.ca/2026/08/16/fixing-bricked-amd-7040-series-framework-13-laptop-with-20-tools/](https://quantum5.ca/2026/08/16/fixing-bricked-amd-7040-series-framework-13-laptop-with-20-tools/)

一位Framework Laptop 13（AMD Ryzen 7040）用户描述了常规BIOS更新如何导致其设备变砖。在可靠使用三年后，他们尝试通过Linux上的`fwupd`安装BIOS 3.20版本，但系统卡住并显示损坏的屏幕，表明刷写失败。Framework支持部门因笔记本已过一年保修期而未提供保修内维修方案，仅建议放空电池；最终他们表示更换主板至少需要500加元。

作者发现论坛帖子显示许多其他用户在此次更新中遇到同样故障，而Framework从未承认或修复该问题。他们决定自行维修，而不是冒险再买一块昂贵的主板。文章详细描述了技术过程：BIOS芯片是位于M.2插槽附近的Winbond 25R256JWEQ SPI闪存芯片（1.8V，32 MiB）。由于其采用WSON封装，标准夹具无法适配。解决方案是使用连接到USB闪存编程器的弹簧针探针，避免焊接。文章强调，Framework尽管打着“可维修”的营销旗号，却缺乏任何BIOS恢复功能——不像老款华硕主板，甚至不如戴尔和惠普等竞争对手。作者总结称，该问题是重大的设计和支持失败，并记录了其通过外部重新刷写芯片作为变通方案的整个过程。

---

## 6. 宜家是如何为其产品命名的？

**原文标题**: How does IKEA come up with names for its products?

**原文链接**: [https://www.ikea.com/se/en/customer-service/knowledge/articles/6f564c4d-2ccc-46de-b643-545a3948dc79.html](https://www.ikea.com/se/en/customer-service/knowledge/articles/6f564c4d-2ccc-46de-b643-545a3948dc79.html)

宜家采用一种植根于瑞典身份的结构化方法为其产品命名。创始人英格瓦·坎普拉德对数字有阅读障碍，出于实用考虑开始为产品命名。这逐渐演变为品牌的核心组成部分。

适用两条简单规则：

1. **产品名称使用瑞典语词汇。** 它们是真实存在的词语，通常灵感来自瑞典地名、自然、情感或日常表达，反映斯莫兰传统和宜家价值观。名称遵循分类体系——例如，沙发使用瑞典地名，书架使用男性名字，儿童产品使用动物和自然名称。

2. **其他一切使用描述性的本地语言名称。** 服务、功能和传播内容使用各市场本地语言命名，以确保清晰易懂。

产品名称要获得批准，必须满足以下条件：必须是真实词语，包含4至12个字母，最好包含Å、Ä或Ö，读起来朗朗上口，且绝不能是商标或姓氏。每个名称都会经过检查，以避免在其他语言中出现不良含义以及任何政治或宗教关联。

唯一的例外是少数精心挑选的瑞典语词汇——如“你好”“再见”“欢迎”和“咖啡”——用于表达宜家文化和传统。

宜家每年为约2000至3000种新产品命名。

---

## 7. 挪威应该收购OpenAI

**原文标题**: Norway Should Buy OpenAI

**原文链接**: [https://www.onethousandmeans.com/p/norway-should-buy-openai](https://www.onethousandmeans.com/p/norway-should-buy-openai)

本文认为，挪威政府全球养老基金（GPFG）应收购OpenAI，并将其置于公共、国际化的控制之下。

要点如下：

- 人工智能的发展速度快于机构的应对能力，对民主、自主权和人类生存构成风险。如果任由其掌握在私人手中，收益将集中于少数股东阶层，而风险则由全社会承担。
- 人工智能系统建立在集体人类劳动和公共基础设施之上——互联网、大学、政府资助的研究以及公共数据集。作者将此描述为对公共资源的“圈占”。
- OpenAI最初是一家非营利组织，设有利润上限，并承诺造福人类，但如今已转型为营利性公司，背弃了这一使命。
- GPFG的规模超过2万亿美元，而OpenAI的估值约为8000亿美元。收购OpenAI将需要变现该基金约40%的资产，并突破其授权范围，但作者认为，紧急情况 justifies 灵活性。
- 挪威被视为合适的托管者：它是一个稳定的民主国家，致力于国际机构、对外援助、冲突调解，以及斯瓦尔巴全球种子库等全球公共产品。
- 收购完成后，管理权应移交至某个国际多边机构。
- 该计划很可能会遭到美国政府的阻挠，但作者将其视为扩大“奥弗顿之窗”的一种方式，并为未来做好准备——在那个未来，对人工智能的民主引领至关重要。

---

## 8. Cursor 推出 GitHub 替代品 Origin

**原文标题**: Cursor launches Origin, GitHub alternative

**原文链接**: [https://cursor.com/changelog/origin-code-hosting](https://cursor.com/changelog/origin-code-hosting)

Cursor 推出名为 **Origin** 的 GitHub 替代方案，自 2026 年 8 月 17 日起向所有付费方案逐步开放早期 Beta 版（管理员选择退出的企业组织除外）。

核心功能包括：

- **代码仓库托管**：新增“代码库”标签页，用户可创建命名仓库，名称会出现在 URL 中（如 `cursor.com/codebase/acme-corp`）。提供 CLI 安装及克隆/推送命令，代码托管在 Cursor 上。
- **GitHub 同步**：GitHub 仓库可与 Origin 仓库并存。连接 GitHub、选择组织后即可同步仓库，支持实时更新、浏览、搜索和拉取；推送仍发往 GitHub。对 GitHub 发起的操作，GitHub 始终是权威来源。仓库旁图标标明托管方。
- **PR 功能**：可查看时间线、提交、检查项和文件变更，支持评论、审查 diff 与合并。已同步仓库的 PR 双向同步，评论和表情回应可双向显示；GitHub 分配的代码审查可直接在 Cursor 中完成。
- **智能体集成**：每仓库都有智能体，可询问代码、修改代码、更新 PR、推送分支。
- **应用生态**：现提供 Vercel、Depot、Buildkite 集成。连接 Vercel 后，PR 可获得预览部署，合并后部署到生产；Depot/Buildkite 可运行现有 GitHub Actions 工作流。
- **设置**：每个仓库可查看 GitHub 同步状态、管理访问权限、查看已连接应用。

用户可阅读文档或创建第一个代码仓库开始使用。

---

## 9. 数据中心使凤凰城附近气温升高达4度

**原文标题**: Data centers raise nearby temperatures by up to 4 degrees in Phoenix

**原文链接**: [https://asmedigitalcollection.asme.org/sustainablebuildings/article/7/2/024501/1233035/Data-Center-Waste-Heat-as-an-Emerging-Urban](https://asmedigitalcollection.asme.org/sustainablebuildings/article/7/2/024501/1233035/Data-Center-Waste-Heat-as-an-Emerging-Urban)

无法访问文章链接。

---

## 10. Linux 7.3 在显存不足时提升了性能

**原文标题**: Linux 7.3 improves performance when running out of vRAM

**原文链接**: [https://pixelcluster.dev/VRAM-Overcommit/](https://pixelcluster.dev/VRAM-Overcommit/)

本文讨论了Linux内核在图形（尤其是游戏）方面针对VRAM超量分配（overcommitment）的改进。

当游戏使用的VRAM超过物理可用量时，部分数据必须被移动到系统内存，并通过PCIe访问。这本质上比VRAM更慢，在30 FPS的帧率下，GPU每帧最多只能获取约1 GiB被驱逐的数据。不过，性能影响取决于访问模式和缓存行为；对缓存友好或很少被访问的内存可以容忍被驱逐，而不会遭受灾难性的性能下降。

尽管理论如此，实际中VRAM耗尽却会导致稳定性问题。RADV有时会返回“Not enough memory for command submission”（命令提交内存不足），即使所有内存分配都已成功。根本原因在于内核锁定：在命令提交期间，amdgpu必须确保所有被引用的内存均可访问。某些分配必须留在VRAM中，而驱逐与之竞争的内存可能导致并发提交之间发生ABBA死锁。内核的死锁检测使用wound-abort-retry（抢占-中止-重试）机制，但TTM内存管理器并未完全实现`drm_exec`辅助功能——这是在返回`-EDEADLCK`错误后重试驱逐所必需的。作者对补丁集做了变基和修复，不过在合入之前仍需进一步完善。

稳定性问题解决后，性能仍然不理想。`gpuvis`跟踪记录显示缓冲区在VRAM和系统内存之间不断移动——出现了“乒乓”效应。相互竞争的应用（如gamescope和游戏本身）会反复驱逐并恢复同一块内存。这是因为某些缓冲区（尤其是显示扫描输出图像）必须驻留在VRAM中，因此即使VRAM保护机制本可阻止驱逐，内核也会将其移回。这种持续移动严重损害了性能。

文章总结道，虽然VRAM超量分配带来的某些开销不可避免，但修复内核锁定问题并采用更智能的内存管理，可以减少崩溃并降低性能损失。

---

## 历史记录

| 序号 | 文件 |
| --- | --- |
| 1 | [2026-08-18](output/hacker_news_summary_2026-08-18.md) |
| 2 | [2026-08-17](output/hacker_news_summary_2026-08-17.md) |
| 3 | [2026-08-16](output/hacker_news_summary_2026-08-16.md) |
| 4 | [2026-08-15](output/hacker_news_summary_2026-08-15.md) |
| 5 | [2026-08-14](output/hacker_news_summary_2026-08-14.md) |
| 6 | [2026-08-13](output/hacker_news_summary_2026-08-13.md) |
| 7 | [2026-08-12](output/hacker_news_summary_2026-08-12.md) |
| 8 | [2026-08-11](output/hacker_news_summary_2026-08-11.md) |
| 9 | [2026-08-10](output/hacker_news_summary_2026-08-10.md) |
| 10 | [2026-08-09](output/hacker_news_summary_2026-08-09.md) |
| 11 | [2026-08-08](output/hacker_news_summary_2026-08-08.md) |
| 12 | [2026-08-07](output/hacker_news_summary_2026-08-07.md) |
| 13 | [2026-08-06](output/hacker_news_summary_2026-08-06.md) |
| 14 | [2026-08-05](output/hacker_news_summary_2026-08-05.md) |
| 15 | [2026-08-04](output/hacker_news_summary_2026-08-04.md) |
| 16 | [2026-08-03](output/hacker_news_summary_2026-08-03.md) |
| 17 | [2026-08-02](output/hacker_news_summary_2026-08-02.md) |
| 18 | [2026-08-01](output/hacker_news_summary_2026-08-01.md) |
| 19 | [2026-07-31](output/hacker_news_summary_2026-07-31.md) |
| 20 | [2026-07-30](output/hacker_news_summary_2026-07-30.md) |
| 21 | [2026-07-29](output/hacker_news_summary_2026-07-29.md) |
| 22 | [2026-07-28](output/hacker_news_summary_2026-07-28.md) |
| 23 | [2026-07-27](output/hacker_news_summary_2026-07-27.md) |
| 24 | [2026-07-26](output/hacker_news_summary_2026-07-26.md) |
| 25 | [2026-07-25](output/hacker_news_summary_2026-07-25.md) |
| 26 | [2026-07-24](output/hacker_news_summary_2026-07-24.md) |
| 27 | [2026-07-23](output/hacker_news_summary_2026-07-23.md) |
| 28 | [2026-07-22](output/hacker_news_summary_2026-07-22.md) |
| 29 | [2026-07-21](output/hacker_news_summary_2026-07-21.md) |
| 30 | [2026-07-20](output/hacker_news_summary_2026-07-20.md) |
| 31 | [2026-07-19](output/hacker_news_summary_2026-07-19.md) |
| 32 | [2026-07-18](output/hacker_news_summary_2026-07-18.md) |
| 33 | [2026-07-17](output/hacker_news_summary_2026-07-17.md) |
| 34 | [2026-07-16](output/hacker_news_summary_2026-07-16.md) |
| 35 | [2026-07-15](output/hacker_news_summary_2026-07-15.md) |
| 36 | [2026-07-14](output/hacker_news_summary_2026-07-14.md) |
| 37 | [2026-07-11](output/hacker_news_summary_2026-07-11.md) |
| 38 | [2026-07-10](output/hacker_news_summary_2026-07-10.md) |
| 39 | [2026-07-09](output/hacker_news_summary_2026-07-09.md) |
| 40 | [2026-07-08](output/hacker_news_summary_2026-07-08.md) |
| 41 | [2026-07-07](output/hacker_news_summary_2026-07-07.md) |
| 42 | [2026-07-06](output/hacker_news_summary_2026-07-06.md) |
| 43 | [2026-07-05](output/hacker_news_summary_2026-07-05.md) |
| 44 | [2026-07-04](output/hacker_news_summary_2026-07-04.md) |
| 45 | [2026-07-03](output/hacker_news_summary_2026-07-03.md) |
| 46 | [2026-07-02](output/hacker_news_summary_2026-07-02.md) |
| 47 | [2026-07-01](output/hacker_news_summary_2026-07-01.md) |
| 48 | [2026-06-30](output/hacker_news_summary_2026-06-30.md) |
| 49 | [2026-06-29](output/hacker_news_summary_2026-06-29.md) |
| 50 | [2026-06-28](output/hacker_news_summary_2026-06-28.md) |
| 51 | [2026-06-27](output/hacker_news_summary_2026-06-27.md) |
| 52 | [2026-06-26](output/hacker_news_summary_2026-06-26.md) |
| 53 | [2026-06-25](output/hacker_news_summary_2026-06-25.md) |
| 54 | [2026-06-24](output/hacker_news_summary_2026-06-24.md) |
| 55 | [2026-06-23](output/hacker_news_summary_2026-06-23.md) |
| 56 | [2026-06-22](output/hacker_news_summary_2026-06-22.md) |
| 57 | [2026-06-21](output/hacker_news_summary_2026-06-21.md) |
| 58 | [2026-06-20](output/hacker_news_summary_2026-06-20.md) |
| 59 | [2026-06-19](output/hacker_news_summary_2026-06-19.md) |
| 60 | [2026-06-18](output/hacker_news_summary_2026-06-18.md) |
| 61 | [2026-06-17](output/hacker_news_summary_2026-06-17.md) |
| 62 | [2026-06-16](output/hacker_news_summary_2026-06-16.md) |
| 63 | [2026-06-15](output/hacker_news_summary_2026-06-15.md) |
| 64 | [2026-06-14](output/hacker_news_summary_2026-06-14.md) |
| 65 | [2026-06-13](output/hacker_news_summary_2026-06-13.md) |
| 66 | [2026-06-12](output/hacker_news_summary_2026-06-12.md) |
| 67 | [2026-06-11](output/hacker_news_summary_2026-06-11.md) |
| 68 | [2026-06-10](output/hacker_news_summary_2026-06-10.md) |
| 69 | [2026-06-09](output/hacker_news_summary_2026-06-09.md) |
| 70 | [2026-06-08](output/hacker_news_summary_2026-06-08.md) |
| 71 | [2026-06-07](output/hacker_news_summary_2026-06-07.md) |
| 72 | [2026-06-06](output/hacker_news_summary_2026-06-06.md) |
| 73 | [2026-06-05](output/hacker_news_summary_2026-06-05.md) |
| 74 | [2026-06-04](output/hacker_news_summary_2026-06-04.md) |
| 75 | [2026-06-03](output/hacker_news_summary_2026-06-03.md) |
| 76 | [2026-06-02](output/hacker_news_summary_2026-06-02.md) |
| 77 | [2026-06-01](output/hacker_news_summary_2026-06-01.md) |
| 78 | [2026-05-31](output/hacker_news_summary_2026-05-31.md) |
| 79 | [2026-05-30](output/hacker_news_summary_2026-05-30.md) |
| 80 | [2026-05-29](output/hacker_news_summary_2026-05-29.md) |
| 81 | [2026-05-28](output/hacker_news_summary_2026-05-28.md) |
| 82 | [2026-05-27](output/hacker_news_summary_2026-05-27.md) |
| 83 | [2026-05-26](output/hacker_news_summary_2026-05-26.md) |
| 84 | [2026-05-25](output/hacker_news_summary_2026-05-25.md) |
| 85 | [2026-05-24](output/hacker_news_summary_2026-05-24.md) |
| 86 | [2026-05-23](output/hacker_news_summary_2026-05-23.md) |
| 87 | [2026-05-22](output/hacker_news_summary_2026-05-22.md) |
| 88 | [2026-05-21](output/hacker_news_summary_2026-05-21.md) |
| 89 | [2026-05-20](output/hacker_news_summary_2026-05-20.md) |
| 90 | [2026-05-19](output/hacker_news_summary_2026-05-19.md) |
| 91 | [2026-05-18](output/hacker_news_summary_2026-05-18.md) |
| 92 | [2026-05-17](output/hacker_news_summary_2026-05-17.md) |
| 93 | [2026-05-16](output/hacker_news_summary_2026-05-16.md) |
| 94 | [2026-05-15](output/hacker_news_summary_2026-05-15.md) |
| 95 | [2026-05-14](output/hacker_news_summary_2026-05-14.md) |
| 96 | [2026-05-13](output/hacker_news_summary_2026-05-13.md) |
| 97 | [2026-05-12](output/hacker_news_summary_2026-05-12.md) |
| 98 | [2026-05-11](output/hacker_news_summary_2026-05-11.md) |
| 99 | [2026-05-10](output/hacker_news_summary_2026-05-10.md) |
| 100 | [2026-05-09](output/hacker_news_summary_2026-05-09.md) |
| 101 | [2026-05-08](output/hacker_news_summary_2026-05-08.md) |
| 102 | [2026-05-07](output/hacker_news_summary_2026-05-07.md) |
| 103 | [2026-05-06](output/hacker_news_summary_2026-05-06.md) |
| 104 | [2026-05-05](output/hacker_news_summary_2026-05-05.md) |
| 105 | [2026-05-04](output/hacker_news_summary_2026-05-04.md) |
| 106 | [2026-05-03](output/hacker_news_summary_2026-05-03.md) |
| 107 | [2026-05-02](output/hacker_news_summary_2026-05-02.md) |
| 108 | [2026-05-01](output/hacker_news_summary_2026-05-01.md) |
| 109 | [2026-04-30](output/hacker_news_summary_2026-04-30.md) |
| 110 | [2026-04-29](output/hacker_news_summary_2026-04-29.md) |
| 111 | [2026-04-28](output/hacker_news_summary_2026-04-28.md) |
| 112 | [2026-04-27](output/hacker_news_summary_2026-04-27.md) |
| 113 | [2026-04-26](output/hacker_news_summary_2026-04-26.md) |
| 114 | [2026-04-25](output/hacker_news_summary_2026-04-25.md) |
| 115 | [2026-04-24](output/hacker_news_summary_2026-04-24.md) |
| 116 | [2026-04-23](output/hacker_news_summary_2026-04-23.md) |
| 117 | [2026-04-22](output/hacker_news_summary_2026-04-22.md) |
| 118 | [2026-04-21](output/hacker_news_summary_2026-04-21.md) |
| 119 | [2026-04-20](output/hacker_news_summary_2026-04-20.md) |
| 120 | [2026-04-19](output/hacker_news_summary_2026-04-19.md) |
| 121 | [2026-04-18](output/hacker_news_summary_2026-04-18.md) |
| 122 | [2026-04-17](output/hacker_news_summary_2026-04-17.md) |
| 123 | [2026-04-16](output/hacker_news_summary_2026-04-16.md) |
| 124 | [2026-04-15](output/hacker_news_summary_2026-04-15.md) |
| 125 | [2026-04-14](output/hacker_news_summary_2026-04-14.md) |
| 126 | [2026-04-13](output/hacker_news_summary_2026-04-13.md) |
| 127 | [2026-04-12](output/hacker_news_summary_2026-04-12.md) |
| 128 | [2026-04-11](output/hacker_news_summary_2026-04-11.md) |
| 129 | [2026-04-10](output/hacker_news_summary_2026-04-10.md) |
| 130 | [2026-04-09](output/hacker_news_summary_2026-04-09.md) |
| 131 | [2026-04-08](output/hacker_news_summary_2026-04-08.md) |
| 132 | [2026-04-07](output/hacker_news_summary_2026-04-07.md) |
| 133 | [2026-04-06](output/hacker_news_summary_2026-04-06.md) |
| 134 | [2026-04-05](output/hacker_news_summary_2026-04-05.md) |
| 135 | [2026-04-04](output/hacker_news_summary_2026-04-04.md) |
| 136 | [2026-04-03](output/hacker_news_summary_2026-04-03.md) |
| 137 | [2026-04-02](output/hacker_news_summary_2026-04-02.md) |
| 138 | [2026-04-01](output/hacker_news_summary_2026-04-01.md) |
| 139 | [2026-03-31](output/hacker_news_summary_2026-03-31.md) |
| 140 | [2026-03-30](output/hacker_news_summary_2026-03-30.md) |
| 141 | [2026-03-29](output/hacker_news_summary_2026-03-29.md) |
| 142 | [2026-03-28](output/hacker_news_summary_2026-03-28.md) |
| 143 | [2026-03-27](output/hacker_news_summary_2026-03-27.md) |
| 144 | [2026-03-26](output/hacker_news_summary_2026-03-26.md) |
| 145 | [2026-03-25](output/hacker_news_summary_2026-03-25.md) |
| 146 | [2026-03-24](output/hacker_news_summary_2026-03-24.md) |
| 147 | [2026-03-23](output/hacker_news_summary_2026-03-23.md) |
| 148 | [2026-03-22](output/hacker_news_summary_2026-03-22.md) |
| 149 | [2026-03-21](output/hacker_news_summary_2026-03-21.md) |
| 150 | [2026-03-20](output/hacker_news_summary_2026-03-20.md) |
| 151 | [2026-03-19](output/hacker_news_summary_2026-03-19.md) |
| 152 | [2026-03-18](output/hacker_news_summary_2026-03-18.md) |
| 153 | [2026-03-17](output/hacker_news_summary_2026-03-17.md) |
| 154 | [2026-03-16](output/hacker_news_summary_2026-03-16.md) |
| 155 | [2026-03-15](output/hacker_news_summary_2026-03-15.md) |
| 156 | [2026-03-14](output/hacker_news_summary_2026-03-14.md) |
| 157 | [2026-03-13](output/hacker_news_summary_2026-03-13.md) |
| 158 | [2026-03-12](output/hacker_news_summary_2026-03-12.md) |
| 159 | [2026-03-11](output/hacker_news_summary_2026-03-11.md) |
| 160 | [2026-03-10](output/hacker_news_summary_2026-03-10.md) |
| 161 | [2026-03-09](output/hacker_news_summary_2026-03-09.md) |
| 162 | [2026-03-08](output/hacker_news_summary_2026-03-08.md) |
| 163 | [2026-03-07](output/hacker_news_summary_2026-03-07.md) |
| 164 | [2026-03-06](output/hacker_news_summary_2026-03-06.md) |
| 165 | [2026-03-05](output/hacker_news_summary_2026-03-05.md) |
| 166 | [2026-03-04](output/hacker_news_summary_2026-03-04.md) |
| 167 | [2026-03-03](output/hacker_news_summary_2026-03-03.md) |
| 168 | [2026-03-02](output/hacker_news_summary_2026-03-02.md) |
| 169 | [2026-03-01](output/hacker_news_summary_2026-03-01.md) |
| 170 | [2026-02-28](output/hacker_news_summary_2026-02-28.md) |
| 171 | [2026-02-27](output/hacker_news_summary_2026-02-27.md) |
| 172 | [2026-02-26](output/hacker_news_summary_2026-02-26.md) |
| 173 | [2026-02-25](output/hacker_news_summary_2026-02-25.md) |
| 174 | [2026-02-24](output/hacker_news_summary_2026-02-24.md) |
| 175 | [2026-02-23](output/hacker_news_summary_2026-02-23.md) |
| 176 | [2026-02-22](output/hacker_news_summary_2026-02-22.md) |
| 177 | [2026-02-21](output/hacker_news_summary_2026-02-21.md) |
| 178 | [2026-02-20](output/hacker_news_summary_2026-02-20.md) |
| 179 | [2026-02-19](output/hacker_news_summary_2026-02-19.md) |
| 180 | [2026-02-18](output/hacker_news_summary_2026-02-18.md) |
| 181 | [2026-02-17](output/hacker_news_summary_2026-02-17.md) |
| 182 | [2026-02-16](output/hacker_news_summary_2026-02-16.md) |
| 183 | [2026-02-15](output/hacker_news_summary_2026-02-15.md) |
| 184 | [2026-02-14](output/hacker_news_summary_2026-02-14.md) |
| 185 | [2026-02-13](output/hacker_news_summary_2026-02-13.md) |
| 186 | [2026-02-12](output/hacker_news_summary_2026-02-12.md) |
| 187 | [2026-02-11](output/hacker_news_summary_2026-02-11.md) |
| 188 | [2026-02-10](output/hacker_news_summary_2026-02-10.md) |
| 189 | [2026-02-09](output/hacker_news_summary_2026-02-09.md) |
| 190 | [2026-02-08](output/hacker_news_summary_2026-02-08.md) |
| 191 | [2026-02-07](output/hacker_news_summary_2026-02-07.md) |
| 192 | [2026-02-06](output/hacker_news_summary_2026-02-06.md) |
| 193 | [2026-02-05](output/hacker_news_summary_2026-02-05.md) |
| 194 | [2026-02-04](output/hacker_news_summary_2026-02-04.md) |
| 195 | [2026-02-03](output/hacker_news_summary_2026-02-03.md) |
| 196 | [2026-02-02](output/hacker_news_summary_2026-02-02.md) |
| 197 | [2026-02-01](output/hacker_news_summary_2026-02-01.md) |
| 198 | [2026-01-31](output/hacker_news_summary_2026-01-31.md) |
| 199 | [2026-01-30](output/hacker_news_summary_2026-01-30.md) |
| 200 | [2026-01-29](output/hacker_news_summary_2026-01-29.md) |
| 201 | [2026-01-28](output/hacker_news_summary_2026-01-28.md) |
| 202 | [2026-01-27](output/hacker_news_summary_2026-01-27.md) |
| 203 | [2026-01-26](output/hacker_news_summary_2026-01-26.md) |
| 204 | [2026-01-25](output/hacker_news_summary_2026-01-25.md) |
| 205 | [2026-01-24](output/hacker_news_summary_2026-01-24.md) |
| 206 | [2026-01-23](output/hacker_news_summary_2026-01-23.md) |
| 207 | [2026-01-22](output/hacker_news_summary_2026-01-22.md) |
| 208 | [2026-01-21](output/hacker_news_summary_2026-01-21.md) |
| 209 | [2026-01-20](output/hacker_news_summary_2026-01-20.md) |
| 210 | [2026-01-19](output/hacker_news_summary_2026-01-19.md) |
| 211 | [2026-01-18](output/hacker_news_summary_2026-01-18.md) |
| 212 | [2026-01-17](output/hacker_news_summary_2026-01-17.md) |
| 213 | [2026-01-16](output/hacker_news_summary_2026-01-16.md) |
| 214 | [2026-01-15](output/hacker_news_summary_2026-01-15.md) |
| 215 | [2026-01-14](output/hacker_news_summary_2026-01-14.md) |
| 216 | [2026-01-13](output/hacker_news_summary_2026-01-13.md) |
| 217 | [2026-01-12](output/hacker_news_summary_2026-01-12.md) |
| 218 | [2026-01-11](output/hacker_news_summary_2026-01-11.md) |
| 219 | [2026-01-10](output/hacker_news_summary_2026-01-10.md) |
| 220 | [2026-01-09](output/hacker_news_summary_2026-01-09.md) |
| 221 | [2026-01-08](output/hacker_news_summary_2026-01-08.md) |
| 222 | [2026-01-07](output/hacker_news_summary_2026-01-07.md) |
| 223 | [2026-01-06](output/hacker_news_summary_2026-01-06.md) |
| 224 | [2026-01-05](output/hacker_news_summary_2026-01-05.md) |
| 225 | [2026-01-04](output/hacker_news_summary_2026-01-04.md) |
| 226 | [2026-01-03](output/hacker_news_summary_2026-01-03.md) |
| 227 | [2026-01-02](output/hacker_news_summary_2026-01-02.md) |
| 228 | [2026-01-01](output/hacker_news_summary_2026-01-01.md) |
| 229 | [2025-12-31](output/hacker_news_summary_2025-12-31.md) |
| 230 | [2025-12-30](output/hacker_news_summary_2025-12-30.md) |
| 231 | [2025-12-29](output/hacker_news_summary_2025-12-29.md) |
| 232 | [2025-12-27](output/hacker_news_summary_2025-12-27.md) |
| 233 | [2025-12-26](output/hacker_news_summary_2025-12-26.md) |
| 234 | [2025-12-25](output/hacker_news_summary_2025-12-25.md) |
| 235 | [2025-12-24](output/hacker_news_summary_2025-12-24.md) |
| 236 | [2025-12-23](output/hacker_news_summary_2025-12-23.md) |
| 237 | [2025-12-22](output/hacker_news_summary_2025-12-22.md) |
| 238 | [2025-12-21](output/hacker_news_summary_2025-12-21.md) |
| 239 | [2025-12-20](output/hacker_news_summary_2025-12-20.md) |
| 240 | [2025-12-19](output/hacker_news_summary_2025-12-19.md) |
| 241 | [2025-12-18](output/hacker_news_summary_2025-12-18.md) |
| 242 | [2025-12-17](output/hacker_news_summary_2025-12-17.md) |
| 243 | [2025-12-16](output/hacker_news_summary_2025-12-16.md) |
| 244 | [2025-12-15](output/hacker_news_summary_2025-12-15.md) |
| 245 | [2025-12-14](output/hacker_news_summary_2025-12-14.md) |
| 246 | [2025-12-13](output/hacker_news_summary_2025-12-13.md) |
| 247 | [2025-12-11](output/hacker_news_summary_2025-12-11.md) |
| 248 | [2025-12-10](output/hacker_news_summary_2025-12-10.md) |
| 249 | [2025-12-09](output/hacker_news_summary_2025-12-09.md) |
| 250 | [2025-12-08](output/hacker_news_summary_2025-12-08.md) |
| 251 | [2025-12-07](output/hacker_news_summary_2025-12-07.md) |
| 252 | [2025-12-06](output/hacker_news_summary_2025-12-06.md) |
| 253 | [2025-12-05](output/hacker_news_summary_2025-12-05.md) |
| 254 | [2025-12-04](output/hacker_news_summary_2025-12-04.md) |
| 255 | [2025-12-03](output/hacker_news_summary_2025-12-03.md) |
| 256 | [2025-12-02](output/hacker_news_summary_2025-12-02.md) |
| 257 | [2025-12-01](output/hacker_news_summary_2025-12-01.md) |
| 258 | [2025-11-30](output/hacker_news_summary_2025-11-30.md) |
| 259 | [2025-11-29](output/hacker_news_summary_2025-11-29.md) |
| 260 | [2025-11-28](output/hacker_news_summary_2025-11-28.md) |
| 261 | [2025-11-27](output/hacker_news_summary_2025-11-27.md) |
| 262 | [2025-11-26](output/hacker_news_summary_2025-11-26.md) |
| 263 | [2025-11-25](output/hacker_news_summary_2025-11-25.md) |
| 264 | [2025-11-24](output/hacker_news_summary_2025-11-24.md) |
| 265 | [2025-11-23](output/hacker_news_summary_2025-11-23.md) |
| 266 | [2025-11-22](output/hacker_news_summary_2025-11-22.md) |
| 267 | [2025-11-21](output/hacker_news_summary_2025-11-21.md) |
| 268 | [2025-11-20](output/hacker_news_summary_2025-11-20.md) |
| 269 | [2025-11-19](output/hacker_news_summary_2025-11-19.md) |
| 270 | [2025-11-18](output/hacker_news_summary_2025-11-18.md) |
| 271 | [2025-11-17](output/hacker_news_summary_2025-11-17.md) |
| 272 | [2025-11-16](output/hacker_news_summary_2025-11-16.md) |
| 273 | [2025-11-15](output/hacker_news_summary_2025-11-15.md) |
| 274 | [2025-11-14](output/hacker_news_summary_2025-11-14.md) |
| 275 | [2025-11-13](output/hacker_news_summary_2025-11-13.md) |
| 276 | [2025-11-12](output/hacker_news_summary_2025-11-12.md) |
| 277 | [2025-11-11](output/hacker_news_summary_2025-11-11.md) |
| 278 | [2025-11-10](output/hacker_news_summary_2025-11-10.md) |
| 279 | [2025-11-09](output/hacker_news_summary_2025-11-09.md) |
| 280 | [2025-11-08](output/hacker_news_summary_2025-11-08.md) |
| 281 | [2025-11-07](output/hacker_news_summary_2025-11-07.md) |
| 282 | [2025-11-06](output/hacker_news_summary_2025-11-06.md) |
| 283 | [2025-11-05](output/hacker_news_summary_2025-11-05.md) |
| 284 | [2025-11-04](output/hacker_news_summary_2025-11-04.md) |
| 285 | [2025-11-03](output/hacker_news_summary_2025-11-03.md) |
| 286 | [2025-11-02](output/hacker_news_summary_2025-11-02.md) |
| 287 | [2025-11-01](output/hacker_news_summary_2025-11-01.md) |
| 288 | [2025-10-31](output/hacker_news_summary_2025-10-31.md) |
| 289 | [2025-10-30](output/hacker_news_summary_2025-10-30.md) |
| 290 | [2025-10-29](output/hacker_news_summary_2025-10-29.md) |
| 291 | [2025-10-27](output/hacker_news_summary_2025-10-27.md) |
| 292 | [2025-10-26](output/hacker_news_summary_2025-10-26.md) |
| 293 | [2025-10-25](output/hacker_news_summary_2025-10-25.md) |
| 294 | [2025-10-24](output/hacker_news_summary_2025-10-24.md) |
| 295 | [2025-10-23](output/hacker_news_summary_2025-10-23.md) |
| 296 | [2025-10-22](output/hacker_news_summary_2025-10-22.md) |
| 297 | [2025-10-21](output/hacker_news_summary_2025-10-21.md) |
| 298 | [2025-10-20](output/hacker_news_summary_2025-10-20.md) |
| 299 | [2025-10-19](output/hacker_news_summary_2025-10-19.md) |
| 300 | [2025-10-18](output/hacker_news_summary_2025-10-18.md) |
| 301 | [2025-10-17](output/hacker_news_summary_2025-10-17.md) |
| 302 | [2025-10-16](output/hacker_news_summary_2025-10-16.md) |
| 303 | [2025-10-15](output/hacker_news_summary_2025-10-15.md) |
| 304 | [2025-10-14](output/hacker_news_summary_2025-10-14.md) |
| 305 | [2025-10-13](output/hacker_news_summary_2025-10-13.md) |
| 306 | [2025-10-12](output/hacker_news_summary_2025-10-12.md) |
| 307 | [2025-10-11](output/hacker_news_summary_2025-10-11.md) |
| 308 | [2025-10-10](output/hacker_news_summary_2025-10-10.md) |
| 309 | [2025-10-09](output/hacker_news_summary_2025-10-09.md) |
| 310 | [2025-10-08](output/hacker_news_summary_2025-10-08.md) |
| 311 | [2025-10-07](output/hacker_news_summary_2025-10-07.md) |
| 312 | [2025-10-06](output/hacker_news_summary_2025-10-06.md) |
| 313 | [2025-10-05](output/hacker_news_summary_2025-10-05.md) |
| 314 | [2025-10-04](output/hacker_news_summary_2025-10-04.md) |
| 315 | [2025-10-03](output/hacker_news_summary_2025-10-03.md) |
| 316 | [2025-10-02](output/hacker_news_summary_2025-10-02.md) |
| 317 | [2025-10-01](output/hacker_news_summary_2025-10-01.md) |
| 318 | [2025-09-30](output/hacker_news_summary_2025-09-30.md) |
| 319 | [2025-09-29](output/hacker_news_summary_2025-09-29.md) |
| 320 | [2025-09-28](output/hacker_news_summary_2025-09-28.md) |
| 321 | [2025-09-27](output/hacker_news_summary_2025-09-27.md) |
| 322 | [2025-09-26](output/hacker_news_summary_2025-09-26.md) |
| 323 | [2025-09-25](output/hacker_news_summary_2025-09-25.md) |
| 324 | [2025-09-24](output/hacker_news_summary_2025-09-24.md) |
| 325 | [2025-09-23](output/hacker_news_summary_2025-09-23.md) |
| 326 | [2025-09-22](output/hacker_news_summary_2025-09-22.md) |
| 327 | [2025-09-21](output/hacker_news_summary_2025-09-21.md) |
| 328 | [2025-09-20](output/hacker_news_summary_2025-09-20.md) |
| 329 | [2025-09-19](output/hacker_news_summary_2025-09-19.md) |
| 330 | [2025-09-18](output/hacker_news_summary_2025-09-18.md) |
| 331 | [2025-09-17](output/hacker_news_summary_2025-09-17.md) |
| 332 | [2025-09-16](output/hacker_news_summary_2025-09-16.md) |
| 333 | [2025-09-15](output/hacker_news_summary_2025-09-15.md) |
| 334 | [2025-09-14](output/hacker_news_summary_2025-09-14.md) |
| 335 | [2025-09-13](output/hacker_news_summary_2025-09-13.md) |
| 336 | [2025-09-12](output/hacker_news_summary_2025-09-12.md) |
| 337 | [2025-09-11](output/hacker_news_summary_2025-09-11.md) |
| 338 | [2025-09-10](output/hacker_news_summary_2025-09-10.md) |
| 339 | [2025-09-09](output/hacker_news_summary_2025-09-09.md) |
| 340 | [2025-09-08](output/hacker_news_summary_2025-09-08.md) |
| 341 | [2025-09-07](output/hacker_news_summary_2025-09-07.md) |
| 342 | [2025-09-06](output/hacker_news_summary_2025-09-06.md) |
| 343 | [2025-09-05](output/hacker_news_summary_2025-09-05.md) |
| 344 | [2025-09-04](output/hacker_news_summary_2025-09-04.md) |
| 345 | [2025-09-03](output/hacker_news_summary_2025-09-03.md) |
| 346 | [2025-09-02](output/hacker_news_summary_2025-09-02.md) |
| 347 | [2025-09-01](output/hacker_news_summary_2025-09-01.md) |
| 348 | [2025-08-31](output/hacker_news_summary_2025-08-31.md) |
| 349 | [2025-08-30](output/hacker_news_summary_2025-08-30.md) |
| 350 | [2025-08-29](output/hacker_news_summary_2025-08-29.md) |
| 351 | [2025-08-28](output/hacker_news_summary_2025-08-28.md) |
| 352 | [2025-08-27](output/hacker_news_summary_2025-08-27.md) |
| 353 | [2025-08-26](output/hacker_news_summary_2025-08-26.md) |
| 354 | [2025-08-25](output/hacker_news_summary_2025-08-25.md) |
| 355 | [2025-08-24](output/hacker_news_summary_2025-08-24.md) |
| 356 | [2025-08-23](output/hacker_news_summary_2025-08-23.md) |
| 357 | [2025-08-22](output/hacker_news_summary_2025-08-22.md) |
| 358 | [2025-08-21](output/hacker_news_summary_2025-08-21.md) |
| 359 | [2025-08-20](output/hacker_news_summary_2025-08-20.md) |
| 360 | [2025-08-19](output/hacker_news_summary_2025-08-19.md) |
| 361 | [2025-08-18](output/hacker_news_summary_2025-08-18.md) |
| 362 | [2025-08-17](output/hacker_news_summary_2025-08-17.md) |
| 363 | [2025-08-16](output/hacker_news_summary_2025-08-16.md) |
| 364 | [2025-08-15](output/hacker_news_summary_2025-08-15.md) |
| 365 | [2025-08-14](output/hacker_news_summary_2025-08-14.md) |
| 366 | [2025-08-13](output/hacker_news_summary_2025-08-13.md) |
| 367 | [2025-08-12](output/hacker_news_summary_2025-08-12.md) |
| 368 | [2025-08-11](output/hacker_news_summary_2025-08-11.md) |
| 369 | [2025-08-10](output/hacker_news_summary_2025-08-10.md) |
| 370 | [2025-08-09](output/hacker_news_summary_2025-08-09.md) |
| 371 | [2025-08-08](output/hacker_news_summary_2025-08-08.md) |
| 372 | [2025-08-07](output/hacker_news_summary_2025-08-07.md) |
| 373 | [2025-08-06](output/hacker_news_summary_2025-08-06.md) |
| 374 | [2025-08-05](output/hacker_news_summary_2025-08-05.md) |
| 375 | [2025-08-04](output/hacker_news_summary_2025-08-04.md) |
| 376 | [2025-08-03](output/hacker_news_summary_2025-08-03.md) |
| 377 | [2025-08-02](output/hacker_news_summary_2025-08-02.md) |
| 378 | [2025-08-01](output/hacker_news_summary_2025-08-01.md) |
| 379 | [2025-07-31](output/hacker_news_summary_2025-07-31.md) |
| 380 | [2025-07-30](output/hacker_news_summary_2025-07-30.md) |
| 381 | [2025-07-29](output/hacker_news_summary_2025-07-29.md) |
| 382 | [2025-07-28](output/hacker_news_summary_2025-07-28.md) |
| 383 | [2025-07-27](output/hacker_news_summary_2025-07-27.md) |
| 384 | [2025-07-26](output/hacker_news_summary_2025-07-26.md) |
| 385 | [2025-07-25](output/hacker_news_summary_2025-07-25.md) |
| 386 | [2025-07-24](output/hacker_news_summary_2025-07-24.md) |
| 387 | [2025-07-23](output/hacker_news_summary_2025-07-23.md) |
| 388 | [2025-07-22](output/hacker_news_summary_2025-07-22.md) |
| 389 | [2025-07-21](output/hacker_news_summary_2025-07-21.md) |
| 390 | [2025-07-20](output/hacker_news_summary_2025-07-20.md) |
| 391 | [2025-07-19](output/hacker_news_summary_2025-07-19.md) |
| 392 | [2025-07-18](output/hacker_news_summary_2025-07-18.md) |
| 393 | [2025-07-17](output/hacker_news_summary_2025-07-17.md) |
| 394 | [2025-07-16](output/hacker_news_summary_2025-07-16.md) |
| 395 | [2025-07-15](output/hacker_news_summary_2025-07-15.md) |
| 396 | [2025-07-14](output/hacker_news_summary_2025-07-14.md) |
| 397 | [2025-07-13](output/hacker_news_summary_2025-07-13.md) |
| 398 | [2025-07-12](output/hacker_news_summary_2025-07-12.md) |
| 399 | [2025-07-11](output/hacker_news_summary_2025-07-11.md) |
| 400 | [2025-07-10](output/hacker_news_summary_2025-07-10.md) |
| 401 | [2025-07-09](output/hacker_news_summary_2025-07-09.md) |
| 402 | [2025-07-08](output/hacker_news_summary_2025-07-08.md) |
| 403 | [2025-07-07](output/hacker_news_summary_2025-07-07.md) |
| 404 | [2025-07-06](output/hacker_news_summary_2025-07-06.md) |
| 405 | [2025-07-05](output/hacker_news_summary_2025-07-05.md) |
| 406 | [2025-07-04](output/hacker_news_summary_2025-07-04.md) |
| 407 | [2025-07-03](output/hacker_news_summary_2025-07-03.md) |
| 408 | [2025-07-02](output/hacker_news_summary_2025-07-02.md) |
| 409 | [2025-07-01](output/hacker_news_summary_2025-07-01.md) |
| 410 | [2025-06-30](output/hacker_news_summary_2025-06-30.md) |
| 411 | [2025-06-29](output/hacker_news_summary_2025-06-29.md) |
| 412 | [2025-06-28](output/hacker_news_summary_2025-06-28.md) |
| 413 | [2025-06-27](output/hacker_news_summary_2025-06-27.md) |
| 414 | [2025-06-26](output/hacker_news_summary_2025-06-26.md) |
| 415 | [2025-06-25](output/hacker_news_summary_2025-06-25.md) |
| 416 | [2025-06-24](output/hacker_news_summary_2025-06-24.md) |
| 417 | [2025-06-23](output/hacker_news_summary_2025-06-23.md) |
| 418 | [2025-06-22](output/hacker_news_summary_2025-06-22.md) |
| 419 | [2025-06-21](output/hacker_news_summary_2025-06-21.md) |
| 420 | [2025-06-20](output/hacker_news_summary_2025-06-20.md) |
| 421 | [2025-06-19](output/hacker_news_summary_2025-06-19.md) |
| 422 | [2025-06-18](output/hacker_news_summary_2025-06-18.md) |
| 423 | [2025-06-17](output/hacker_news_summary_2025-06-17.md) |
| 424 | [2025-06-16](output/hacker_news_summary_2025-06-16.md) |
| 425 | [2025-06-15](output/hacker_news_summary_2025-06-15.md) |
| 426 | [2025-06-14](output/hacker_news_summary_2025-06-14.md) |
| 427 | [2025-06-13](output/hacker_news_summary_2025-06-13.md) |
| 428 | [2025-06-12](output/hacker_news_summary_2025-06-12.md) |
| 429 | [2025-06-11](output/hacker_news_summary_2025-06-11.md) |
| 430 | [2025-06-10](output/hacker_news_summary_2025-06-10.md) |
| 431 | [2025-06-09](output/hacker_news_summary_2025-06-09.md) |
| 432 | [2025-06-08](output/hacker_news_summary_2025-06-08.md) |
| 433 | [2025-06-07](output/hacker_news_summary_2025-06-07.md) |
| 434 | [2025-06-06](output/hacker_news_summary_2025-06-06.md) |
| 435 | [2025-06-05](output/hacker_news_summary_2025-06-05.md) |
| 436 | [2025-06-04](output/hacker_news_summary_2025-06-04.md) |
| 437 | [2025-06-03](output/hacker_news_summary_2025-06-03.md) |
| 438 | [2025-06-02](output/hacker_news_summary_2025-06-02.md) |
| 439 | [2025-06-01](output/hacker_news_summary_2025-06-01.md) |
| 440 | [2025-05-31](output/hacker_news_summary_2025-05-31.md) |
| 441 | [2025-05-30](output/hacker_news_summary_2025-05-30.md) |
| 442 | [2025-05-29](output/hacker_news_summary_2025-05-29.md) |
| 443 | [2025-05-28](output/hacker_news_summary_2025-05-28.md) |
| 444 | [2025-05-27](output/hacker_news_summary_2025-05-27.md) |
| 445 | [2025-05-26](output/hacker_news_summary_2025-05-26.md) |
| 446 | [2025-05-25](output/hacker_news_summary_2025-05-25.md) |
| 447 | [2025-05-24](output/hacker_news_summary_2025-05-24.md) |
| 448 | [2025-05-23](output/hacker_news_summary_2025-05-23.md) |
| 449 | [2025-05-22](output/hacker_news_summary_2025-05-22.md) |
| 450 | [2025-05-21](output/hacker_news_summary_2025-05-21.md) |
| 451 | [2025-05-20](output/hacker_news_summary_2025-05-20.md) |
| 452 | [2025-05-19](output/hacker_news_summary_2025-05-19.md) |
| 453 | [2025-05-18](output/hacker_news_summary_2025-05-18.md) |
| 454 | [2025-05-17](output/hacker_news_summary_2025-05-17.md) |
| 455 | [2025-05-16](output/hacker_news_summary_2025-05-16.md) |
| 456 | [2025-05-15](output/hacker_news_summary_2025-05-15.md) |
| 457 | [2025-05-14](output/hacker_news_summary_2025-05-14.md) |
| 458 | [2025-05-13](output/hacker_news_summary_2025-05-13.md) |
| 459 | [2025-05-12](output/hacker_news_summary_2025-05-12.md) |
| 460 | [2025-05-11](output/hacker_news_summary_2025-05-11.md) |
| 461 | [2025-05-10](output/hacker_news_summary_2025-05-10.md) |
| 462 | [2025-05-09](output/hacker_news_summary_2025-05-09.md) |
| 463 | [2025-05-08](output/hacker_news_summary_2025-05-08.md) |
| 464 | [2025-05-07](output/hacker_news_summary_2025-05-07.md) |
| 465 | [2025-05-06](output/hacker_news_summary_2025-05-06.md) |
| 466 | [2025-05-05](output/hacker_news_summary_2025-05-05.md) |
| 467 | [2025-05-04](output/hacker_news_summary_2025-05-04.md) |
| 468 | [2025-05-03](output/hacker_news_summary_2025-05-03.md) |
| 469 | [2025-05-02](output/hacker_news_summary_2025-05-02.md) |
| 470 | [2025-05-01](output/hacker_news_summary_2025-05-01.md) |
| 471 | [2025-04-30](output/hacker_news_summary_2025-04-30.md) |
| 472 | [2025-04-29](output/hacker_news_summary_2025-04-29.md) |
| 473 | [2025-04-28](output/hacker_news_summary_2025-04-28.md) |
| 474 | [2025-04-27](output/hacker_news_summary_2025-04-27.md) |
| 475 | [2025-04-26](output/hacker_news_summary_2025-04-26.md) |
| 476 | [2025-04-25](output/hacker_news_summary_2025-04-25.md) |
| 477 | [2025-04-24](output/hacker_news_summary_2025-04-24.md) |
| 478 | [2025-04-23](output/hacker_news_summary_2025-04-23.md) |
| 479 | [2025-04-22](output/hacker_news_summary_2025-04-22.md) |
| 480 | [2025-04-21](output/hacker_news_summary_2025-04-21.md) |
| 481 | [2025-04-20](output/hacker_news_summary_2025-04-20.md) |
| 482 | [2025-04-19](output/hacker_news_summary_2025-04-19.md) |
| 483 | [2025-04-18](output/hacker_news_summary_2025-04-18.md) |
| 484 | [2025-04-17](output/hacker_news_summary_2025-04-17.md) |
| 485 | [2025-04-16](output/hacker_news_summary_2025-04-16.md) |
| 486 | [2025-04-15](output/hacker_news_summary_2025-04-15.md) |
| 487 | [2025-04-14](output/hacker_news_summary_2025-04-14.md) |
| 488 | [2025-04-13](output/hacker_news_summary_2025-04-13.md) |
| 489 | [2025-04-12](output/hacker_news_summary_2025-04-12.md) |
| 490 | [2025-04-11](output/hacker_news_summary_2025-04-11.md) |
| 491 | [2025-04-09](output/hacker_news_summary_2025-04-09.md) |
| 492 | [2025-04-08](output/hacker_news_summary_2025-04-08.md) |
| 493 | [2025-04-07](output/hacker_news_summary_2025-04-07.md) |
| 494 | [2025-04-06](output/hacker_news_summary_2025-04-06.md) |
| 495 | [2025-04-05](output/hacker_news_summary_2025-04-05.md) |
| 496 | [2025-04-04](output/hacker_news_summary_2025-04-04.md) |
| 497 | [2025-04-03](output/hacker_news_summary_2025-04-03.md) |
| 498 | [2025-04-02](output/hacker_news_summary_2025-04-02.md) |
| 499 | [2025-04-01](output/hacker_news_summary_2025-04-01.md) |
| 500 | [2025-03-31](output/hacker_news_summary_2025-03-31.md) |
| 501 | [2025-03-30](output/hacker_news_summary_2025-03-30.md) |
| 502 | [2025-03-29](output/hacker_news_summary_2025-03-29.md) |
| 503 | [2025-03-28](output/hacker_news_summary_2025-03-28.md) |
| 504 | [2025-03-27](output/hacker_news_summary_2025-03-27.md) |
| 505 | [2025-03-26](output/hacker_news_summary_2025-03-26.md) |
| 506 | [2025-03-25](output/hacker_news_summary_2025-03-25.md) |
| 507 | [2025-03-24](output/hacker_news_summary_2025-03-24.md) |
| 508 | [2025-03-23](output/hacker_news_summary_2025-03-23.md) |
| 509 | [2025-03-22](output/hacker_news_summary_2025-03-22.md) |
| 510 | [2025-03-21](output/hacker_news_summary_2025-03-21.md) |
| 511 | [2025-03-20](output/hacker_news_summary_2025-03-20.md) |
| 512 | [2025-03-19](output/hacker_news_summary_2025-03-19.md) |
