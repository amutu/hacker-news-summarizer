# Hacker News 热门文章摘要 (2026-09-10)

这是今日 [Hacker News](https://news.ycombinator.com/) 上最热门的文章摘要。

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

## 11. 从零打造一盏壁灯

**原文标题**: Building a Wall Lamp from Scratch

**原文链接**: [https://mbugert.de/posts/2026-09-09-bedroom-lamp-build/](https://mbugert.de/posts/2026-09-09-bedroom-lamp-build/)

作者无木工与LED经验，历时八个月从零完成一盏卧室壁灯。项目初衷是为客厅设计制作大型背光艺术灯，因经验不足先以卧室壁灯积累经验。设计采用榉木面板搭配铝型材框架，内藏SK6812 LED灯带与Plexiglas透光板，通过QuinLED Dig-Uno控制器与WLED软件实现每颗LED独立控制，支持阅读灯、氛围灯等模式，并可集成Home Assistant。过程中克服了多项难题：铝型材内角连接强度不足，改用外置连接板；壁挂方案兼顾美观与稳定，最终设计定制镀锌钢挂板嵌入木面开槽，以钢珠配重解决不对称重心问题；木材因温湿度变化收缩产生缝隙，以胶条修补。全程依赖OpenSCAD建模、3D打印定位夹具、makerspace加工及PCBWay定制零件，历经铝型材试装、木面开槽、LED焊接、散热烧机测试等环节，于2026年1月22日完工，成品效果与初始预期高度吻合。

---

## 12. 开源3D人体解剖浏览器：2,234个可选BodyParts3D网格模型

**原文标题**: Open-source 3D anatomy explorer: 2,234 selectable BodyParts3D meshes

**原文链接**: [https://github.com/ashemag/human-atlas](https://github.com/ashemag/human-atlas)

本项目是基于React、Three.js与shadcn/ui构建的开源交互式3D人体解剖浏览器，采用BodyParts3D 4.0成人男性参考模型（CC BY 4.0许可），涵盖2,234个可独立选择的网格、15个解剖系统及3,432个命名概念。用户可旋转、缩放、选取结构，切换系统预设或骨架/器官模式，在组装视图与爆炸视图间转换，搜索解剖名称，隔离查看并阅读结构详情，界面全面适配移动端。技术上，几何体经合批处理，由GPU纹理控制位移、可见性与拾取，渲染按需更新，避免海量独立绘制调用；模型经0.2%相对误差简化，共228万三角形，压缩后约33MB，并支持WebMCP工具扩展。开发需Node.js 22.13及以上版本，内置校验脚本覆盖网格缓冲、命名一致性、多端布局不重叠及交互契约等检查。部署支持Vercel一键导入或任意静态托管。应用代码采用MIT许可，解剖数据遵循CC BY 4.0，重分发时需保留署名。本项目仅供教育使用，非诊断或手术工具。

---

## 13. Show HN: Geiger——一览机器上所有AI代理及其权限范围

**原文标题**: Show HN: Geiger – See every AI agent on your machine and what it can touch

**原文链接**: [https://github.com/Atomburstofficial/geiger](https://github.com/Atomburstofficial/geiger)

Geiger 是一款零依赖命令行工具，一条 npx geiger-scan 即可只读盘点机器上所有AI代理、MCP服务器、插件及AI扩展配置，并以白话标注每项能否执行代码、访问文件系统或持有凭据。背景是2026年AI代理生态爆发，数万插件涌入而用户常不知本机运行了什么。Geiger 覆盖 Claude Code、Cursor、VS Code、JetBrains、Codex CLI、Gemini CLI、Aider 等主流生态，检测全局与项目级配置，并识别策略包装层。三大承诺：完全只读、无任何遥测上报、凭据仅报告键名与类型绝不泄露值。支持终端/HTML/JSON三种报告，--strict 模式可接入CI/CD检测新增风险，--diff 实现基线漂移告警，适合个人审计与MSP fleets管理。局限：仅扫描已知配置路径，不分析运行时行为，无法判定包是否恶意。项目MIT协议，源码即运行代码，npm发布附带GitHub provenance签名。

---

## 14. Show HN：Rdltr——阅读列表"零积压"管理工具

**原文标题**: Show HN: Rdltr – Inbox zero for your reading list

**原文链接**: [https://rdltr.app/](https://rdltr.app/)

摘要：该帖在 Hacker News 社区展示了一款名为 Rdltr 的工具，核心理念是将邮件领域广受欢迎的"零积压"（Inbox Zero）方法论引入个人阅读清单管理。许多用户习惯随手收藏文章、视频等资源，导致阅读列表不断膨胀、久未处理，最终沦为"先收藏再说"的信息坟场。Rdltr 旨在帮助用户系统性地清理已保存的待读内容，无论是快速浏览、标记已读、重新归档还是果断放弃，让每一条收藏都被主动"处理"而非被动堆积。项目面向有"收藏焦虑"、希望提升信息消化效率的读者群体。（注：原帖正文内容未能完整获取，以上要点基于标题语义与同类工具常见功能进行合理概述。）

---

## 15. 张力木：既能弯曲又能拉直植物的"肌肉"

**原文标题**: Tension wood: A 'muscle' that can both bend and straighten plants

**原文链接**: [https://phys.org/news/2026-09-trees-muscle-posture-newly-role.html](https://phys.org/news/2026-09-trees-muscle-posture-newly-role.html)

无法访问该文章链接

---

## 16. 2026年Rust自定义分配器现状——半年回顾

**原文标题**: The State of Allocators in 2026 – 6 Months Later

**原文链接**: [https://cetra3.github.io/blog/state-of-allocators-2026-part-2/](https://cetra3.github.io/blog/state-of-allocators-2026-part-2/)

摘要：Rust自定义分配器正接近稳定化，主要由Nia及libs团队推动，作者本人亦积极参与但未主导。当前设计定位为MVP，API极精简：Allocator trait仅含allocate与deallocate两个核心方法，通过Box::new_in、Vec::new_in等集成使用。关键进展有二：一是Allocator将直接支持dyn分发（如Arc<dyn Allocator>），预计成为库设计的事实标准；二是禁止分配器内unwind，防止Vec扩容时panic引发状态错乱与双重释放。因触及语言根基，多项功能被排除：Clone与Drop交互可能导致双重释放或内存丢失，方案改为引入unsafe标记trait AllocatorClone以将保证推入unsafe层；Pin结合类型协变与Box Clone可绕过"drop先于内存失效"的安全不变量。整体而言，该版本足以启动生态建设，但容器扩展、Pin安全及克隆语义等领域仍有大量待解决问题。

---

## 17. 意大利提议10欧元以下数字欧元支付免收商户费用

**原文标题**: Italy proposes no fees for digital euro payments under €10

**原文链接**: [https://www.euronews.com/business/2026/09/08/exclusive-italy-proposes-no-fees-for-digital-euro-payments-under-10](https://www.euronews.com/business/2026/09/08/exclusive-italy-proposes-no-fees-for-digital-euro-payments-under-10)

摘要：意大利在数字欧元最终谈判中提议，对10欧元以下的小额交易免除商户手续费，以保护小型商户利益。该方案获得欧洲央行等央行界支持。意大利具体建议将小额交易的商户服务费上限设为0.02欧元，但表示可接受净零方案，因实际效果相当且框架更简洁。数字欧元预计2029年首次发行，将具备法定货币地位，商户原则上必须接受。目前欧盟高度依赖Visa、万事达卡等美国支付机构，数字欧元被视为实现支付领域战略自主的重要工具。费用分配（即"补偿模式"）及钱包持有上限是布鲁塞尔谈判的核心议题。欧洲央行分析显示，小商户因议价能力弱，付费可能高出大商户三至四倍。欧洲审计院2025年报告亦指出，欧盟委员会缺乏有效的商户服务费数据来监管支付市场。据内部文件，该费用方案为临时性安排，以便央行积累数据后再决定是否调整。成员国、欧洲议会及欧盟委员会将在9月10日布鲁塞尔新一轮谈判中进一步讨论该议题，届时最终法规预计于今年内通过。

---

## 18. 科学家利用地球磁场鉴别古陶真伪

**原文标题**: Researchers Spot Fake Ancient Pottery Using the Earth's Magnetic Field

**原文链接**: [https://www.smithsonianmag.com/smart-news/researchers-determine-how-to-spot-fake-ancient-pottery-using-the-earths-magnetic-field-180989441/](https://www.smithsonianmag.com/smart-news/researchers-determine-how-to-spot-fake-ancient-pottery-using-the-earths-magnetic-field-180989441/)

加州大学圣地亚哥分校斯克里普斯海洋研究所的研究团队在《美国国家科学院院刊》上发表研究，提出一种通过地球磁场信号鉴别陶器真伪的新方法。原理是：陶器在窑中烧制时，其中的磁性矿物会朝向地球磁北极定向，形成"热剩磁"；冷却后还获得更微弱的"类磁性剩磁"。由于磁极位置不断变化，古代与现代陶器的磁信号存在差异。研究团队对45件陶器样本进行加热测试，发现千年以上古陶需加热至约234华氏度以上才能消除类磁性剩磁，而现代陶器在更低温度下即可清除该信号，由此确立了区分古今的磁性阈值。该方法可为博物馆藏品鉴定、考古研究及打击非法文物交易提供科学依据。团队已用此方法检测了以色列文物局没收的三件可疑陶器，结果均证实为古代真品，表明该方法同样适用于识别被掠夺和非法交易的真品文物。然而，研究者也坦言，造假者可阅读论文后设法规避鉴定手段，鉴伪工作面临持续挑战。

---

## 19. OpenAI是否在欺骗所有人？

**原文标题**: Is OpenAI Taking Everyone for Fools?

**原文链接**: [https://read.misalignedmag.com/is-openai-taking-everyone-for-fools-2481fa851544](https://read.misalignedmag.com/is-openai-taking-everyone-for-fools-2481fa851544)

无法访问该文章链接。

---

## 20. 论真正的努力

**原文标题**: On Really Trying (2009)

**原文链接**: [https://gwern.net/on-really-trying](https://gwern.net/on-really-trying)

摘要：本文探讨动力的真正极限，核心论点是：决定问题能否被解决的，往往不是能力，而是"确信问题有解且当下必须解决"的心理状态。作者以铃木大拙之语开篇——信念生决心，决心生意志；若心存"也许我不行"之念，再多的功夫也无济于事。文中援引尤多克索夫斯基"老科学的失败"寓言：老一代科学家明知量子力学有误，却因缺乏紧迫性，将三十年视为可接受的周期，终未能突破。随后列举多则实例佐证：香农幼时一句"我可以告诉你一件事"便解开了难题；默克尔早已掌握非对称加密方案却因无人理解而沉寂五年；丹齐格将两道未解问题误当作业解出；阿特金森因不知重叠窗口不可实现而成功编码；Ms. Pac-Man玩家因误信他人已通关，反而攻克了"不可能"的关卡。作者由此得出结论：范式转换的瓶颈并非智力或训练，而是能否接受"问题此刻有解、且必须由我来做"这一认知。一句"有解"的提示，往往比任何具体知识都更具驱动力——而这句话，每个人都可以对自己说。

---

## 21. 微软/TracerAI撤回对Luanti的版权下架通知

**原文标题**: Microsoft/TracerAI withdraws copyright takedown against Luanti

**原文链接**: [https://blog.luanti.org/2026/09/08/dmca-rescinded/](https://blog.luanti.org/2026/09/08/dmca-rescinded/)

此前，微软通过TracerAI向Google Play提交DMCA通知，指控开源体素游戏平台Luanti侵犯《我的世界》版权。如今该通知已正式撤回，应用已恢复上架。撤回意味着Luanti无需等待异议期即可更快恢复上线，也表明微软已放弃此案，无意发起诉讼。颇具讽刺意味的是，社区随后发现微软自身的研究项目正积极选用Luanti作为实验平台，包括与XBOX合作的Project VEGA，以及与爱丁堡大学合作的"超越像素历史"世界模型研究——后者明确表示因Luanti的开源特性和Lua API优势而弃用Minecraft。这一矛盾令人深思。尽管事态已迅速解决，作者坦言维权过程耗费了大量精力，衷心感谢用户与社区的支持。原文亦提及这已是类似法律纷争的第三次发生，作者希望此事不再重演，期待未来Luanti的相关更新能回归新功能开发，而非版权纠纷。

---

## 22. 苹果发布折叠屏手机"iPhone Duo"

**原文标题**: Apple Announces Foldable 'iPhone Duo'

**原文链接**: [https://www.macrumors.com/2026/09/09/apple-announces-foldable-iphone-duo/](https://www.macrumors.com/2026/09/09/apple-announces-foldable-iphone-duo/)

苹果于2026年9月发布折叠屏手机"iPhone Duo"，采用双屏折叠设计，内屏7.6英寸、外屏5.4英寸。机身以抛光钛金属搭配陶瓷盾材质，支持IP68防水，提供星白和夜蓝两种配色，侧边集成Touch ID。铰链由超百个精密部件构成，屏幕采用微激光微透镜纹理技术，大幅降低折痕可视度。软件层面，系统随开合角度自动适配布局，支持双应用分屏、新待机时钟模式及跨屏内容缩放。影像配备4800万主摄、4800万超广角及1200万前置摄像头，内外屏均支持FaceTime，并可前后同拍。核心搭载A20 Pro芯片与全新C2基带，支持5G毫米波，全球均为eSIM，双电池协同下内屏续航达31小时、外屏44小时。新品起售价1999美元（256GB），最高2TB，10月16日开启预售，10月23日正式开售。

---

## 23. OpenAI失控AI代理至少访问了另外10个未经授权网站

**原文标题**: OpenAI's rogue agents used at least 10 more sites

**原文链接**: [https://www.reuters.com/world/openais-rogue-agents-used-least-10-more-sites-unauthorized-comms-researchers-say-2026-09-09/](https://www.reuters.com/world/openais-rogue-agents-used-least-10-more-sites-unauthorized-comms-researchers-say-2026-09-09/)

无法访问该文章链接

---

## 24. 消逝的天才：Cloudflare技术架构师Lee Holloway传（上）

**原文标题**: A Biography of Lee Holloway, the Architect of Cloudflare's Technology (Part 1)

**原文链接**: [https://note.com/masakazu_urabe/n/n7815f5b64fab?hl=en](https://note.com/masakazu_urabe/n/n7815f5b64fab?hl=en)

Lee Holloway（1981年生）是Cloudflare联合创始人兼首席技术官，被誉为"天才工程师"。他出身硅谷，父在苹果工作，少年即展露超凡逻辑思维。大学期间结识Matthew Prince，共同投身反垃圾邮件项目并参与开源计划Project Honey Pot。2009年，他与Prince及Michelle Zatlyn联合创立Cloudflare，主导设计Anycast网络与Cell架构，奠定服务全球超10%互联网请求的技术基石，并推动免费SSL/TLS加密全面落地。2011年起他性情突变、行为异常，被误读为成功后的冷漠，先后经历离婚与再婚。2015年心脏手术后状况急剧恶化，2016年被迫离开公司。2017年他终被确诊为行为变异型额颞叶痴呆（bvFTD）——一种36岁即发病的早期神经退行性疾病，无药可治，终将丧失语言与自主生活能力。至2019年，他已无法进行有意义的交流。2020年《连线》杂志专题报道令事件广为人知，也提升了公众对额颞叶痴呆的认知。Cloudflare于2019年上市，招股书中特别致敬其贡献，上市筹备代号亦命名为"Project Holloway"。全文记录了这位天才从巅峰走向消逝的悲剧历程，及其留给互联网世界的深远印记。

---

## 25. 炸弹直觉（2021）

**原文标题**: Bomb Sense (2021)

**原文链接**: [https://danboland.net/2021/07/15/bomb-sense.html](https://danboland.net/2021/07/15/bomb-sense.html)

文章探讨了弹幕射击游戏中"炸弹直觉"这一核心概念。智能炸弹是shmup最标志性的机制——限时清屏、造成伤害并赋予短暂无敌，且经济规则极严苛：中途受击即重置炸弹数，浪费等于全损。玩家须在恐惧感浮现的刹那按下炸弹键，这种"炸弹直觉"是操作精度、视觉追踪、类型素养、经验积累与心理自信交汇而成的复合能力。炸弹赋予策略纵深：玩家可预先规划投入点，再经练习逐步减少依赖，将资源留给更棘手的段落；三命三弹加额外奖励，容错实则可达三十次，远比看似冷酷的一命制宽容。然而，炸弹直觉恰是新手入坑的头号障碍——每位新玩家都曾"有弹而亡"。作者指出，难度菜单、自动炸弹等常规无障碍设计虽非无用，却教不会玩家体会那个按下按钮的瞬间，甚至可能消解炸弹直觉本身。真正需要攻克的是学习过程的可及性，而非一味降低难度。作者期望制作一款游戏，将"千钧一发间按下炸弹"的悸动与掌控感传递给更多人。

---

## 26. 我们为LAN派对而建的这栋房子（2024）

**原文标题**: We built our house for LAN parties (2024)

**原文链接**: [https://lanparty.house/](https://lanparty.house/)

软件工程师Kenton Varda与妻子Jade Wang于2023年底在德克萨斯州奥斯汀建成一栋以局域网派对（LAN Party）为主题的住宅，由Kenton的父亲、知名建筑师Richard Varda主导设计，2019年购地、2021年动工。地下室设12个嵌入式游戏站及舞力全开（DDR）踏板，不用时可折叠收纳以腾出活动空间；楼上办公室会议桌可展开为6个游戏站，另配两台升降工作台。机房内20台统一配置的PC（i5-13600/32GB/RTX 4070）通过服务器网络引导启动，全屋采用UniFi系统，含140个网口、7个PoE无线AP及2个2Gbps光纤。除游戏区外，房屋还为猫咪设计了爬架、猫门和猫厕所，两个儿童阁楼卧室带独立锁门，另设两间客房及可远眺30英里的屋顶露台。22台游戏设备总成本约7.5万美元，整屋造价为七位数。Kenton早在2011年便于帕洛阿尔托建过LAN房，因当地房价暴涨获利百万，后携妻迁至奥斯汀扩建。文章还探讨了LAN派对的社交意义：对内向者而言，游戏是破冰的催化剂；内置免组装设备大幅降低了参与门槛，让派对可随时开始、频次倍增。

---

## 27. 教AI我的品味

**原文标题**: Teaching an AI My Taste

**原文链接**: [https://lonriesberg.com/posts/teaching-an-ai-my-taste/](https://lonriesberg.com/posts/teaching-an-ai-my-taste/)

作者运营Data Elixir newsletter，每周需从约200个RSS源、800个社媒账号及Hacker News中初筛后仍面对100-200篇候选。他构建了一套LLM辅助筛选系统：Python脚本每日抓取新链接，LLM依据一份111行的taste.md（Markdown定义的品味标准）逐篇打分，达标者排名后送入邮箱，作者只需扫读15条一句话摘要再精读3至4篇。

taste.md的打磨是全文核心，历经三个阶段：先凭直觉写下偏好，结果看似合理却无法验证；再用35条历史标注（20条入选、15条淘汰）做盲测回测，初始准确率仅51%，中位得分毫无区分度，经反复调整升至71%；最后引入beehiiv平台真实读者点击数据校验，发现LLM有时比作者自身判断更准——一篇作者看中的帖子点击率极低，一篇被LLM埋没的博客文却是当期点击之王。

关键洞见：负样本（"我为什么不要"）比正样本携带更多品味信号；校准路径是"直觉→个人标注→真实行为数据"，每一步修正前一步。该系统可复用，更换信息源和taste.md即可迁移至求职、学术检索等场景。

---

## 28. Navier-Stokes – Tristan Buckmaster [pdf]

**原文标题**: Navier-Stokes – Tristan Buckmaster [pdf]

**原文链接**: [https://cims.nyu.edu/~tristanb/statement.pdf](https://cims.nyu.edu/~tristanb/statement.pdf)

文章之前已经处理过

---

## 29. 陶哲轩：AI正不可再生地开采未解数学问题

**原文标题**: Tao: Open math problems being non-renewably mined by AI

**原文链接**: [https://mathstodon.xyz/@tao/117237320796901560](https://mathstodon.xyz/@tao/117237320796901560)

数学家陶哲轩在Mastodon数学版块（Mathstodon）上发文指出，人工智能正以"不可再生"的方式开采未解决的数学问题。他将开放数学难题比作矿产资源——AI正以极高效率批量攻克此前悬而未决的题目，使人类数学家手中可供钻研的"好问题"不断减少。这一比喻揭示深层忧虑：未解问题的存量有限，若AI持续高速求解，优质课题将加速枯竭，未来人类研究者可能面临"无题可攻"的困境。作为菲尔兹奖得主，陶哲轩的警示超越了"AI能否解数学题"的技术层面，直指学术生态的根本危机——"问题本身"作为一种稀缺资源正面临不可逆消耗，数学研究的动力源泉或将发生结构性改变。

---

## 30. Show HN：Whetuu——一款有主见、零配置的状态栏与历史选择器

**原文标题**: Show HN: Whetuu – An opinionated, zero-config status line and history picker

**原文链接**: [https://github.com/yamafaktory/whetuu](https://github.com/yamafaktory/whetuu)

Whetuu 是一款用 Zig 编写的终端状态栏与命令历史选择器，支持 fish、bash 和 zsh，单个静态二进制文件，安装即用无需配置。状态栏渲染于光标上方，展示用户/主机、目录、Git 分支及操作状态、39 种语言工具链版本、命令耗时等模块；按上箭头打开历史选择器，默认加载当前目录记录，Ctrl+G 切换全局。失败命令不入库，且历史存储独立，绝不读写用户原有 shell 历史。性能上各探测模块并行执行，总耗时约等于最慢一项：空目录约 1ms，万文件 monorepo 约 11ms；Git 与版本探测分别设 250ms、200ms 超时，版本结果按 mtime 缓存。安全方面，网络仅限对 GitHub 的 TLS GET 请求，历史文件权限 0600，前导空格可跳过敏感行，但明文存储不脱敏。安装方式包括下载预编译二进制（Linux musl 静态链接/macOS）并校验 SHA256，或运行一行 curl 脚本，脚本仅向 $SHELL 对应配置追加初始化行。名称取自毛利语"星"，对应 Nerd Font 星形光标，发音 feu-TOO。

---

